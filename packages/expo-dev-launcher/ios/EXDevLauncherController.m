#import <React/RCTBundleURLProvider.h>
#import <React/RCTRootView.h>
#import <React/RCTDevLoadingViewSetEnabled.h>
#import <React/RCTDevMenu.h>
#import <React/RCTDevSettings.h>
#import <React/RCTRootContentView.h>
#import <React/RCTAppearance.h>
#import <React/RCTConstants.h>
#import <React/RCTKeyCommands.h>

#import <EXDevLauncher/EXDevLauncherController.h>
#import <EXDevLauncher/EXDevLauncherRCTBridge.h>
#import <EXDevLauncher/EXDevLauncherManifestParser.h>
#import <EXDevLauncher/EXDevLauncherRCTDevSettings.h>
#import <EXDevLauncher/EXDevLauncherUpdatesHelper.h>
#import <EXDevLauncher/RCTPackagerConnection+EXDevLauncherPackagerConnectionInterceptor.h>

#import <EXDevLauncher/EXDevLauncherReactNativeFactory.h>
#import <EXDevMenu/DevClientNoOpLoadingView.h>
#import <ReactAppDependencyProvider/RCTAppDependencyProvider.h>

#if __has_include(<EXDevLauncher/EXDevLauncher-Swift.h>)
// For cocoapods framework, the generated swift header will be inside EXDevLauncher module
#import <EXDevLauncher/EXDevLauncher-Swift.h>
#else
#import <EXDevLauncher-Swift.h>
#endif

#ifdef RCT_NEW_ARCH_ENABLED
#import <React/RCTSurfaceView.h>
#endif

@import EXManifests;
@import EXDevMenu;

#ifdef EX_DEV_LAUNCHER_VERSION
#define STRINGIZE(x) #x
#define STRINGIZE2(x) STRINGIZE(x)

#define VERSION @ STRINGIZE2(EX_DEV_LAUNCHER_VERSION)
#endif

#define EX_DEV_LAUNCHER_PACKAGER_PATH @"packages/expo-dev-launcher/index.bundle?platform=ios&dev=true&minify=false"


@interface EXDevLauncherController ()

@property (nonatomic, weak) UIWindow *window;
@property (nonatomic, weak) ExpoDevLauncherReactDelegateHandler * delegate;
@property (nonatomic, strong) NSDictionary *launchOptions;
@property (nonatomic, strong) NSURL *sourceUrl;
@property (nonatomic, assign) BOOL shouldPreferUpdatesInterfaceSourceUrl;
@property (nonatomic, strong) EXManifestsManifest *manifest;
@property (nonatomic, strong) NSURL *manifestURL;
@property (nonatomic, strong) NSURL *possibleManifestURL;
@property (nonatomic, strong) EXDevLauncherErrorManager *errorManager;
@property (nonatomic, strong) EXDevLauncherInstallationIDHelper *installationIDHelper;
@property (nonatomic, strong, nullable) EXDevLauncherNetworkInterceptor *networkInterceptor;
@property (nonatomic, assign) BOOL isStarted;
@property (nonatomic, strong) EXDevLauncherReactNativeFactory *reactNativeFactory;
@property (nonatomic, strong) NSURL *lastOpenedAppUrl;

@end


@implementation EXDevLauncherController

+ (instancetype)sharedInstance
{
  static EXDevLauncherController *theController;
  static dispatch_once_t once;
  dispatch_once(&once, ^{
    if (!theController) {
      theController = [[EXDevLauncherController alloc] init];
    }
  });
  return theController;
}

- (instancetype)init {
  if (self = [super init]) {
    self.recentlyOpenedAppsRegistry = [EXDevLauncherRecentlyOpenedAppsRegistry new];
    self.pendingDeepLinkRegistry = [EXDevLauncherPendingDeepLinkRegistry new];
    self.errorManager = [[EXDevLauncherErrorManager alloc] initWithController:self];
    self.installationIDHelper = [EXDevLauncherInstallationIDHelper new];
    self.shouldPreferUpdatesInterfaceSourceUrl = NO;

    self.dependencyProvider = [RCTAppDependencyProvider new];
    self.reactNativeFactory = [[EXDevLauncherReactNativeFactory alloc] initWithDelegate:self];
  }
  return self;
}

- (NSArray<id<RCTBridgeModule>> *)extraModulesForBridge:(RCTBridge *)bridge
{
  NSMutableArray<id<RCTBridgeModule>> *modules = [NSMutableArray new];

  [modules addObject:[RCTDevMenu new]];
#ifndef EX_DEV_LAUNCHER_URL
  [modules addObject:[EXDevLauncherRCTDevSettings new]];
#endif
  [modules addObject:[DevClientNoOpLoadingView new]];

  return modules;
}

+ (NSString * _Nullable)version {
#ifdef VERSION
  return VERSION;
#endif
  return nil;
}

// Expo developers: Enable the below code by running
//     export EX_DEV_LAUNCHER_URL=http://localhost:8090
// in your shell before doing pod install. This will cause the controller to see if
// the expo-launcher packager is running, and if so, use that instead of
// the prebuilt bundle.
// See the pod_target_xcconfig definition in expo-dev-launcher.podspec

- (nullable NSURL *)devLauncherBaseURL
{
#ifdef EX_DEV_LAUNCHER_URL
  return [NSURL URLWithString:@EX_DEV_LAUNCHER_URL];
#endif
  return nil;
}
- (nullable NSURL *)devLauncherURL
{
#ifdef EX_DEV_LAUNCHER_URL
  return [NSURL URLWithString:EX_DEV_LAUNCHER_PACKAGER_PATH
                relativeToURL:[self devLauncherBaseURL]];
#endif
  return nil;
}

- (nullable NSURL *)devLauncherStatusURL
{
#ifdef EX_DEV_LAUNCHER_URL
  return [NSURL URLWithString:@"status"
                relativeToURL:[self devLauncherBaseURL]];
#endif
  return nil;
}

- (BOOL)isLauncherPackagerRunning
{
  // Shamelessly copied from RN core (RCTBundleURLProvider)

  // If we are not running in the main thread, run away
  if (![NSThread isMainThread]) {
    return NO;
  }

  NSURL *url = [self devLauncherStatusURL];
  NSURLSession *session = [NSURLSession sharedSession];
  NSURLRequest *request = [NSURLRequest requestWithURL:url
                                           cachePolicy:NSURLRequestUseProtocolCachePolicy
                                       timeoutInterval:1];
  __block NSURLResponse *response;
  __block NSData *data;

  dispatch_semaphore_t semaphore = dispatch_semaphore_create(0);
  [[session dataTaskWithRequest:request
              completionHandler:^(NSData *d, NSURLResponse *res, __unused NSError *err) {
                data = d;
                response = res;
                dispatch_semaphore_signal(semaphore);
              }] resume];
  dispatch_semaphore_wait(semaphore, DISPATCH_TIME_FOREVER);

  NSString *status = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
  return [status isEqualToString:@"packager-status:running"];
}

- (NSURL *)sourceURLForBridge:(RCTBridge *)bridge
{
  return [self getSourceURL];
}

- (NSURL *)bundleURL
{
  return [self getSourceURL];
}

- (NSURL *)getSourceURL
{
  NSURL *launcherURL = [self devLauncherURL];
  if (launcherURL != nil && [self isLauncherPackagerRunning]) {
    return launcherURL;
  }
  NSURL *bundleURL = [[NSBundle mainBundle] URLForResource:@"EXDevLauncher" withExtension:@"bundle"];
  return [[NSBundle bundleWithURL:bundleURL] URLForResource:@"main" withExtension:@"jsbundle"];
}

- (void)clearRecentlyOpenedApps
{
  return [_recentlyOpenedAppsRegistry clearRegistry];
}

- (NSDictionary<UIApplicationLaunchOptionsKey, NSObject*> *)getLaunchOptions;
{
  NSMutableDictionary *launchOptions = [self.launchOptions ?: @{} mutableCopy];
  NSURL *deepLink = [self.pendingDeepLinkRegistry consumePendingDeepLink];

  if (deepLink) {
    // Passes pending deep link to initialURL if any
    launchOptions[UIApplicationLaunchOptionsURLKey] = deepLink;
  } else if (launchOptions[UIApplicationLaunchOptionsURLKey] && [EXDevLauncherURLHelper isDevLauncherURL:launchOptions[UIApplicationLaunchOptionsURLKey]]) {
    // Strips initialURL if it is from myapp://expo-development-client/?url=...
    // That would make dev-launcher acts like a normal app.
    launchOptions[UIApplicationLaunchOptionsURLKey] = nil;
  }

  if ([launchOptions[UIApplicationLaunchOptionsUserActivityDictionaryKey][UIApplicationLaunchOptionsUserActivityTypeKey] isEqualToString:NSUserActivityTypeBrowsingWeb]) {
    // Strips universal launch link if it is from https://expo-development-client/?url=...
    // That would make dev-launcher acts like a normal app, though this case should rarely happen.
    NSUserActivity *userActivity = launchOptions[UIApplicationLaunchOptionsUserActivityDictionaryKey][@"UIApplicationLaunchOptionsUserActivityKey"];
    if (userActivity.webpageURL && [EXDevLauncherURLHelper isDevLauncherURL:userActivity.webpageURL]) {
      userActivity.webpageURL = nil;
    }
  }

  return launchOptions;
}

- (EXManifestsManifest *)appManifest
{
  return self.manifest;
}

- (NSURL * _Nullable)appManifestURL
{
  return self.manifestURL;
}

- (nullable NSURL *)appManifestURLWithFallback
{
  if (_manifestURL) {
    return _manifestURL;
  }
  return _possibleManifestURL;
}

- (UIWindow *)currentWindow
{
  return _window;
}

- (EXDevLauncherErrorManager *)errorManage
{
  return _errorManager;
}

- (void)startWithWindow:(UIWindow *)window delegate:(id<EXDevLauncherControllerDelegate>)delegate launchOptions:(NSDictionary *)launchOptions
{
  _isStarted = YES;
  _delegate = delegate;
  _launchOptions = launchOptions;
  _window = window;
  EXDevLauncherUncaughtExceptionHandler.isInstalled = true;

  if (launchOptions[UIApplicationLaunchOptionsURLKey]) {
    // For deeplink launch, we need the keyWindow for expo-splash-screen to setup correctly.
    [_window makeKeyWindow];
    return;
  }

  void (^navigateToLauncher)(NSError *) = ^(NSError *error) {
    __weak typeof(self) weakSelf = self;
    dispatch_async(dispatch_get_main_queue(), ^{
      typeof(self) self = weakSelf;
      if (!self) {
        return;
      }

      [self navigateToLauncher];
    });
  };

  NSURL* initialUrl = [EXDevLauncherController initialUrlFromProcessInfo];
  if (initialUrl) {
    [self loadApp:initialUrl withProjectUrl:nil onSuccess:nil onError:navigateToLauncher];
    return;
  }

  NSNumber *devClientTryToLaunchLastBundleValue = [[NSBundle mainBundle] objectForInfoDictionaryKey:@"DEV_CLIENT_TRY_TO_LAUNCH_LAST_BUNDLE"];
  BOOL shouldTryToLaunchLastOpenedBundle = (devClientTryToLaunchLastBundleValue != nil) ? [devClientTryToLaunchLastBundleValue boolValue] : YES;
  if (_lastOpenedAppUrl != nil && shouldTryToLaunchLastOpenedBundle) {
    // When launch to the last opened url, the previous url could be unreachable because of LAN IP changed.
    // We use a shorter timeout to prevent black screen when loading for an unreachable server.
    NSTimeInterval requestTimeout = 10.0;
    [self loadApp:_lastOpenedAppUrl withProjectUrl:nil withTimeout:requestTimeout onSuccess:nil onError:navigateToLauncher];
    return;
  }
  [self navigateToLauncher];
}

- (void)autoSetupPrepare:(id<EXDevLauncherControllerDelegate>)delegate launchOptions:(NSDictionary * _Nullable)launchOptions
{
  _delegate = delegate;
  _launchOptions = launchOptions;
  NSDictionary *lastOpenedApp = [self.recentlyOpenedAppsRegistry mostRecentApp];
  if (lastOpenedApp != nil) {
    _lastOpenedAppUrl = [NSURL URLWithString:lastOpenedApp[@"url"]];
  }
  EXDevLauncherBundleURLProviderInterceptor.isInstalled = true;
}

- (void)autoSetupStart:(UIWindow *)window
{
  if (_delegate != nil) {
    [self startWithWindow:window delegate:_delegate launchOptions:_launchOptions];
  } else {
    @throw [NSException exceptionWithName:NSInternalInconsistencyException reason:@"[EXDevLauncherController autoSetupStart:] was called before autoSetupPrepare:. Make sure you've set up expo-modules correctly in AppDelegate and are using ReactDelegate to create a bridge before calling [super application:didFinishLaunchingWithOptions:]." userInfo:nil];
  }
}

- (void)navigateToLauncher
{
  NSAssert([NSThread isMainThread], @"This function must be called on main thread");

  [_appBridge invalidate];
  [self invalidateDevMenuApp];

  self.networkInterceptor = nil;

  [self _applyUserInterfaceStyle:UIUserInterfaceStyleUnspecified];

  [self _removeInitModuleObserver];
  // Reset app react host
  [self.delegate destroyReactInstance];

#if RCT_DEV
  NSURL *url = [self devLauncherURL];
  if (url != nil) {
    // Connect to the websocket
    [[RCTPackagerConnection sharedPackagerConnection] setSocketConnectionURL:url];
  }

  [self _addInitModuleObserver];
#endif
  
  DevLauncherViewController *swiftUIViewController = [[DevLauncherViewController alloc] init];
  
  _window.rootViewController = swiftUIViewController;
  [_window makeKeyAndVisible];
  
  dispatch_async(dispatch_get_main_queue(), ^{
    [self onAppContentDidAppear];
  });
}

- (BOOL)onDeepLink:(NSURL *)url options:(NSDictionary *)options
{
  if (![EXDevLauncherURLHelper isDevLauncherURL:url]) {
    return [self _handleExternalDeepLink:url options:options];
  }

  if (![EXDevLauncherURLHelper hasUrlQueryParam:url]) {
    // edgecase: this is a dev launcher url but it doesnt specify what url to open
    // fallback to navigating to the launcher home screen
    [self navigateToLauncher];
    return true;
  }

  [self loadApp:url onSuccess:nil onError:^(NSError *error) {
    __weak typeof(self) weakSelf = self;
    dispatch_async(dispatch_get_main_queue(), ^{
      typeof(self) self = weakSelf;
      if (!self) {
        return;
      }

      EXDevLauncherUrl *devLauncherUrl = [[EXDevLauncherUrl alloc] init:url];
      NSURL *appUrl = devLauncherUrl.url;
      NSString *errorMessage = [NSString stringWithFormat:@"Failed to load app from %@ with error: %@", appUrl.absoluteString, error.localizedDescription];
      EXDevLauncherAppError *appError = [[EXDevLauncherAppError alloc] initWithMessage:errorMessage stack:nil];
      [self.errorManager showError:appError];
    });
  }];

  return true;
}

- (BOOL)_handleExternalDeepLink:(NSURL *)url options:(NSDictionary *)options
{
  if ([self isAppRunning]) {
    return false;
  }

  self.pendingDeepLinkRegistry.pendingDeepLink = url;

  // cold boot -- need to initialize the dev launcher app RN app to handle the link
  if (_reactNativeFactory.rootViewFactory.reactHost == nil) {
    [self navigateToLauncher];
  }

  return true;
}

- (nullable NSURL *)sourceUrl
{
  if (_shouldPreferUpdatesInterfaceSourceUrl && _updatesInterface && ((id<EXUpdatesExternalInterface>)_updatesInterface).launchAssetURL) {
    return ((id<EXUpdatesExternalInterface>)_updatesInterface).launchAssetURL;
  }
  return _sourceUrl;
}

- (BOOL)isEASUpdateURL:(NSURL *)url
{
  return [url.host isEqualToString:@"u.expo.dev"];
}

-(void)loadApp:(NSURL *)url onSuccess:(void (^ _Nullable)(void))onSuccess onError:(void (^ _Nullable)(NSError *error))onError
{
  [self loadApp:url withProjectUrl:nil onSuccess:onSuccess onError:onError];
}

- (void)loadApp:(NSURL *)url
 withProjectUrl:(NSURL * _Nullable)projectUrl
      onSuccess:(void (^ _Nullable)(void))onSuccess
        onError:(void (^ _Nullable)(NSError *error))onError
{
  [self loadApp:url
 withProjectUrl:projectUrl
    withTimeout:NSURLSessionConfiguration.defaultSessionConfiguration.timeoutIntervalForRequest
      onSuccess:onSuccess
        onError:onError];
}

/**
 * This method is the external entry point into loading an app with the dev launcher (e.g. via the
 * dev launcher UI or a deep link). It takes a URL, determines what type of server it points to
 * (react-native-cli, expo-cli, or published project), downloads a manifest if there is one,
 * downloads all the project's assets (via expo-updates) in the case of a published project, and
 * then calls `_initAppWithUrl:bundleUrl:manifest:` if successful.
 */
- (void)loadApp:(NSURL *)url
 withProjectUrl:(NSURL * _Nullable)projectUrl
    withTimeout:(NSTimeInterval)requestTimeout
      onSuccess:(void (^ _Nullable)(void))onSuccess
        onError:(void (^ _Nullable)(NSError *error))onError
{
  EXDevLauncherUrl *devLauncherUrl = [[EXDevLauncherUrl alloc] init:url];
  NSURL *expoUrl = devLauncherUrl.url;
  _possibleManifestURL = expoUrl;
  BOOL isEASUpdate = [self isEASUpdateURL:expoUrl];

  // an update url requires a matching projectUrl
  // if one isn't provided, default to the configured project url in Expo.plist
  if (isEASUpdate && projectUrl == nil && _updatesInterface) {
    NSString *projectUrlString = [_updatesInterface.updateURL absoluteString] ?: @"";
    projectUrl = [NSURL URLWithString:projectUrlString];
  }

  // if there is no project url and its not an updates url, the project url can be the same as the app url
  if (!isEASUpdate && projectUrl == nil) {
    projectUrl = expoUrl;
  }

  // Disable onboarding popup if "&disableOnboarding=1" is a param
  [EXDevLauncherURLHelper disableOnboardingPopupIfNeeded:expoUrl];

  NSString *runtimeVersion = @"";
  if (_updatesInterface) {
    runtimeVersion = _updatesInterface.runtimeVersion ?: @"";
  }
  NSString *installationID = [_installationIDHelper getOrCreateInstallationID];

  NSDictionary *updatesConfiguration = [EXDevLauncherUpdatesHelper createUpdatesConfigurationWithURL:expoUrl
                                                                                          projectURL:projectUrl
                                                                                      runtimeVersion:runtimeVersion
                                                                                      installationID:installationID];

  void (^launchReactNativeApp)(void) = ^{
    self->_shouldPreferUpdatesInterfaceSourceUrl = NO;
    RCTDevLoadingViewSetEnabled(NO);
    [self.recentlyOpenedAppsRegistry appWasOpened:[expoUrl absoluteString] queryParams:devLauncherUrl.queryParams manifest:nil];
    if ([expoUrl.path isEqual:@"/"] || [expoUrl.path isEqual:@""]) {
      [self _initAppWithUrl:expoUrl bundleUrl:[NSURL URLWithString:@"index.bundle?platform=ios&dev=true&minify=false" relativeToURL:expoUrl] manifest:nil];
    } else {
      [self _initAppWithUrl:expoUrl bundleUrl:expoUrl manifest:nil];
    }
    if (onSuccess) {
      onSuccess();
    }
  };

  void (^launchExpoApp)(NSURL *, EXManifestsManifest *) = ^(NSURL *bundleURL, EXManifestsManifest *manifest) {
    self->_shouldPreferUpdatesInterfaceSourceUrl = !manifest.isUsingDeveloperTool;
    RCTDevLoadingViewSetEnabled(manifest.isUsingDeveloperTool);
    [self.recentlyOpenedAppsRegistry appWasOpened:[expoUrl absoluteString] queryParams:devLauncherUrl.queryParams manifest:manifest];
    [self _initAppWithUrl:expoUrl bundleUrl:bundleURL manifest:manifest];
    if (onSuccess) {
      onSuccess();
    }
  };

  if (_updatesInterface) {
    [_updatesInterface reset];
  }

  EXDevLauncherManifestParser *manifestParser = [[EXDevLauncherManifestParser alloc]
                                                 initWithURL:expoUrl
                                                 installationID:installationID
                                                 session:[NSURLSession sharedSession]
                                                 requestTimeout:requestTimeout];

  void (^onIsManifestURL)(BOOL) = ^(BOOL isManifestURL) {
    if (!isManifestURL) {
      // assume this is a direct URL to a bundle hosted by metro
      launchReactNativeApp();
      return;
    }

    if ([self->_updatesInterface isValidUpdatesConfiguration:updatesConfiguration] != YES) {
      [manifestParser tryToParseManifest:^(EXManifestsManifest *manifest) {
        if (!manifest.isUsingDeveloperTool) {
          onError([NSError errorWithDomain:@"DevelopmentClient" code:1 userInfo:@{NSLocalizedDescriptionKey: @"expo-updates is not properly installed or integrated. In order to load published projects with this development client, follow all installation and setup instructions for both the expo-dev-client and expo-updates packages."}]);
          return;
        }
        launchExpoApp([NSURL URLWithString:manifest.bundleUrl], manifest);
      } onError:onError];
      return;
    }

    [self->_updatesInterface fetchUpdateWithConfiguration:updatesConfiguration onManifest:^BOOL(NSDictionary *manifest) {
      EXManifestsManifest *devLauncherManifest = [EXManifestsManifestFactory manifestForManifestJSON:manifest];
      if (devLauncherManifest.isUsingDeveloperTool) {
        // launch right away rather than continuing to load through EXUpdates
        launchExpoApp([NSURL URLWithString:devLauncherManifest.bundleUrl], devLauncherManifest);
        return NO;
      }
      return YES;
    } progress:^(NSUInteger successfulAssetCount, NSUInteger failedAssetCount, NSUInteger totalAssetCount) {
      // do nothing for now
    } success:^(NSDictionary * _Nullable manifest) {
      if (manifest) {
        launchExpoApp(((id<EXUpdatesExternalInterface>)self->_updatesInterface).launchAssetURL, [EXManifestsManifestFactory manifestForManifestJSON:manifest]);
      }
    } error:onError];
  };

  [manifestParser isManifestURLWithCompletion:onIsManifestURL onError:^(NSError * _Nonnull error) {
    // Try to retry if the network connection was rejected because of the lack of the lan network permission.
    static BOOL shouldRetry = true;
    NSString *host = expoUrl.host;

    if (shouldRetry && ([host hasPrefix:@"192.168."] || [host hasPrefix:@"172."] || [host hasPrefix:@"10."])) {
      shouldRetry = false;
      [manifestParser isManifestURLWithCompletion:onIsManifestURL onError:onError];
      return;
    }

    onError(error);
  }];
}

/**
 * Internal helper method for this class, which takes a bundle URL and (optionally) a manifest and
 * launches the app in the bridge and UI.
 *
 * The bundle URL may point to a locally downloaded file (for published projects) or a remote
 * packager server (for locally hosted projects in development).
 */
- (void)_initAppWithUrl:(NSURL *)appUrl bundleUrl:(NSURL *)bundleUrl manifest:(EXManifestsManifest * _Nullable)manifest
{
  self.manifest = manifest;
  self.manifestURL = appUrl;
  _possibleManifestURL = nil;
  __block UIColor *backgroundColor = [EXDevLauncherManifestHelper hexStringToColor:manifest.iosOrRootBackgroundColor];

  __weak __typeof(self) weakSelf = self;
  dispatch_async(dispatch_get_main_queue(), ^{
    if (!weakSelf) {
      return;
    }
    __typeof(self) self = weakSelf;

    self.sourceUrl = bundleUrl;

#if RCT_DEV
    // Connect to the websocket, ignore downloaded update bundles
    if (![bundleUrl.scheme isEqualToString:@"file"]) {
      [[RCTPackagerConnection sharedPackagerConnection] setSocketConnectionURL:bundleUrl];
    }
    self.networkInterceptor = [[EXDevLauncherNetworkInterceptor alloc] initWithBundleUrl:bundleUrl];
#endif

    UIUserInterfaceStyle userInterfaceStyle = [EXDevLauncherManifestHelper exportManifestUserInterfaceStyle:manifest.userInterfaceStyle];
    [self _applyUserInterfaceStyle:userInterfaceStyle];

    // Fix for the community react-native-appearance.
    // RNC appearance checks the global trait collection and doesn't have another way to override the user interface.
    // So we swap `currentTraitCollection` with one from the root view controller.
    // Note that the root view controller will have the correct value of `userInterfaceStyle`.
    if (userInterfaceStyle != UIUserInterfaceStyleUnspecified) {
      UITraitCollection.currentTraitCollection = [self.window.rootViewController.traitCollection copy];
    }

    [self _addInitModuleObserver];

    [self.delegate devLauncherController:self didStartWithSuccess:YES];

    [self setDevMenuAppBridge];

    if (backgroundColor) {
      self.window.rootViewController.view.backgroundColor = backgroundColor;
      self.window.backgroundColor = backgroundColor;
    }
  });
}

- (BOOL)isAppRunning
{
  if([_appBridge isProxy]){
    return [self.delegate isReactInstanceValid];
  }

  return [_appBridge isValid];
}

/**
 * Temporary `expo-splash-screen` fix.
 *
 * The dev-launcher's bridge doesn't contain unimodules. So the module shows a splash screen but never hides.
 * For now, we just remove the splash screen view when the launcher is loaded.
 */
- (void)onAppContentDidAppear
{
  dispatch_async(dispatch_get_main_queue(), ^{
    NSArray<UIView *> *views = [[[self->_window rootViewController] view] subviews];
    for (UIView *view in views) {
      if ([NSStringFromClass([view class]) containsString:@"SplashScreen"]) {
        [view removeFromSuperview];
      }
    }
  });
}

- (void)_applyUserInterfaceStyle:(UIUserInterfaceStyle)userInterfaceStyle
{
  NSString *colorSchema = nil;
  if (userInterfaceStyle == UIUserInterfaceStyleDark) {
    colorSchema = @"dark";
  } else if (userInterfaceStyle == UIUserInterfaceStyleLight) {
    colorSchema = @"light";
  }

  // change RN appearance
  RCTOverrideAppearancePreference(colorSchema);
}

- (void)_addInitModuleObserver {
  [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(didInitializeModule:) name:RCTDidInitializeModuleNotification object:nil];
}

- (void)_removeInitModuleObserver {
  [[NSNotificationCenter defaultCenter] removeObserver:self name:RCTDidInitializeModuleNotification object:nil];
}

- (void)didInitializeModule:(NSNotification *)note {
  id<RCTBridgeModule> module = note.userInfo[@"module"];
  if ([module isKindOfClass:[RCTDevMenu class]]) {
    // RCTDevMenu registers its global keyboard commands at init.
    // To avoid clashes with keyboard commands registered by expo-dev-client, we unregister some of them
    // and this needs to happen after the module has been initialized.
    // RCTDevMenu registers its commands here: https://github.com/facebook/react-native/blob/f3e8ea9c2910b33db17001e98b96720b07dce0b3/React/CoreModules/RCTDevMenu.mm#L130-L135
    // expo-dev-menu registers its commands here: https://github.com/expo/expo/blob/6da15324ff0b4a9cb24055e9815b8aa11f0ac3af/packages/expo-dev-menu/ios/Interceptors/DevMenuKeyCommandsInterceptor.swift#L27-L29
    [[RCTKeyCommands sharedInstance] unregisterKeyCommandWithInput:@"d"
                                                     modifierFlags:UIKeyModifierCommand];
    [[RCTKeyCommands sharedInstance] unregisterKeyCommandWithInput:@"r"
                                                    modifierFlags:UIKeyModifierCommand];
  }
}

-(NSDictionary *)getBuildInfo
{
  NSMutableDictionary *buildInfo = [NSMutableDictionary new];

  NSString *appIcon = [self getAppIcon];
  NSString *runtimeVersion = @"";
  if (_updatesInterface) {
    runtimeVersion = _updatesInterface.runtimeVersion ?: @"";
  }

  NSString *appVersion = [self getFormattedAppVersion];
  NSString *appName = [[NSBundle mainBundle] objectForInfoDictionaryKey: @"CFBundleDisplayName"] ?: [[NSBundle mainBundle] objectForInfoDictionaryKey: @"CFBundleExecutable"];

  [buildInfo setObject:appName forKey:@"appName"];
  [buildInfo setObject:appIcon forKey:@"appIcon"];
  [buildInfo setObject:appVersion forKey:@"appVersion"];
  [buildInfo setObject:runtimeVersion forKey:@"runtimeVersion"];

  return buildInfo;
}

-(NSString *)getAppIcon
{
  NSString *appIcon = @"";
  NSString *appIconName = [[[[[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleIcons"] objectForKey:@"CFBundlePrimaryIcon"] objectForKey:@"CFBundleIconFiles"]  lastObject];

  if (appIconName != nil) {
    NSString *resourcePath = [[NSBundle mainBundle] resourcePath];
    NSString *appIconPath = [[resourcePath stringByAppendingPathComponent:appIconName] stringByAppendingString:@".png"];
    appIcon = [@"file://" stringByAppendingString:appIconPath];
  }

  return appIcon;
}

-(NSString *)getFormattedAppVersion
{
  NSString *shortVersion = [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleShortVersionString"];
  NSString *buildVersion = [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleVersion"];
  NSString *appVersion = [NSString stringWithFormat:@"%@ (%@)", shortVersion, buildVersion];
  return appVersion;
}

-(void)copyToClipboard:(NSString *)content {
#if !TARGET_OS_TV
  UIPasteboard *clipboard = [UIPasteboard generalPasteboard];
  clipboard.string = (content ?: @"");
#endif
}

- (void)setDevMenuAppBridge
{
  DevMenuManager *manager = [DevMenuManager shared];
  manager.currentBridge = self.appBridge.parentBridge;

  if (self.manifest != nil) {
    manager.currentManifest = self.manifest;
    manager.currentManifestURL = self.manifestURL;
  }
}

- (void)invalidateDevMenuApp
{
  DevMenuManager *manager = [DevMenuManager shared];
  manager.currentBridge = nil;
  manager.currentManifest = nil;
  manager.currentManifestURL = nil;
}

-(NSDictionary *)getUpdatesConfig: (nullable NSDictionary *) constants
{
  NSMutableDictionary *updatesConfig = [NSMutableDictionary new];

  NSString *runtimeVersion = @"";
  if (_updatesInterface) {
    runtimeVersion = _updatesInterface.runtimeVersion ?: @"";
  }

  // the project url field is added to app.json.updates when running `eas update:configure`
  // the `u.expo.dev` determines that it is the modern manifest protocol
  NSString *projectUrl = @"";
  if (_updatesInterface) {
    projectUrl = [[self.manifest updatesInfo] valueForKey:@"url"];
  }

  NSURL *url = [NSURL URLWithString:projectUrl];

  BOOL isModernManifestProtocol = [[url host] isEqualToString:@"u.expo.dev"] || [[url host] isEqualToString:@"staging-u.expo.dev"];
  BOOL expoUpdatesInstalled = EXDevLauncherController.sharedInstance.updatesInterface != nil;

  NSString *appId = [constants valueForKeyPath:@"manifest.extra.eas.projectId"] ?: [self.manifest easProjectId];
  BOOL hasAppId = appId.length > 0;

  BOOL usesEASUpdates = isModernManifestProtocol && expoUpdatesInstalled && hasAppId;

  [updatesConfig setObject:runtimeVersion forKey:@"runtimeVersion"];

  if (usesEASUpdates) {
    [updatesConfig setObject:appId forKey:@"appId"];
    [updatesConfig setObject:projectUrl forKey:@"projectUrl"];
  }

  [updatesConfig setObject:@(usesEASUpdates) forKey:@"usesEASUpdates"];

  return updatesConfig;
}

- (void)updatesExternalInterfaceDidRequestRelaunch:(id<EXUpdatesExternalInterface> _Nonnull)updatesExternalInterface {
  NSURL * _Nullable appUrl = self.appManifestURLWithFallback;
  if (!appUrl) {
    return;
  }
  [self loadApp:appUrl onSuccess:nil onError:nil];
}

+ (NSURL *)initialUrlFromProcessInfo
{
  NSProcessInfo *processInfo = [NSProcessInfo processInfo];
  NSArray *arguments = [processInfo arguments];
  BOOL nextIsUrl = NO;

  for (NSString *arg in arguments) {
    if (nextIsUrl) {
      NSURL *url = [NSURL URLWithString:arg];
      if (url) {
        return url;
      }
    }
    if ([arg isEqualToString:@"--initialUrl"]) {
      nextIsUrl = YES;
    }
  }
  return nil;
}

- (UIViewController *)createRootViewController
{
  return [[DevLauncherViewController alloc] init];
}

- (void)setRootView:(UIView *)rootView toRootViewController:(UIViewController *)rootViewController
{
  rootViewController.view = rootView;
}

@end
