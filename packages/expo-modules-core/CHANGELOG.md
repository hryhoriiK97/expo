# Changelog

## Unpublished

### 🛠 Breaking changes

### 🎉 New features

- Added support for expo modules written using TurboModules ([#36996](https://github.com/expo/expo/pull/36996) by [@acoates-ms](https://github.com/acoates-ms))
- [Android] Add Array converter and handle nullable values. ([#37220](https://github.com/expo/expo/pull/37220) by [@jakex7](https://github.com/jakex7))
- [Android] Support object arrays in type converters. ([#37276](https://github.com/expo/expo/pull/37276) by [@jakex7](https://github.com/jakex7))
- [Android] Add `testID` support to `ExpoComposeView`. ([#38005](https://github.com/expo/expo/pull/38005) by [@mateoguzmana](https://github.com/mateoguzmana))
- [iOS] Return proper dynamic type for AnyEither. ([#38072](https://github.com/expo/expo/pull/38072) by [@jakex7](https://github.com/jakex7))
- [Android] Add VRUtilities for VR-related values and utils ([#37744](https://github.com/expo/expo/pull/37744) by [@behenate](https://github.com/behenate))

### 🐛 Bug fixes

- [iOS] Fix view functions for SwiftUI views. ([#38275](https://github.com/expo/expo/pull/38275) by [@aleqsio](https://github.com/aleqsio))
- [iOS] Fix missing CDP headers when using static frameworks. ([#37448](https://github.com/expo/expo/pull/37448) by [@alanjhughes](https://github.com/alanjhughes))
- [android] Fix android build without coreFeatures compose ([#38153](https://github.com/expo/expo/pull/38153) by [@Ubax](https://github.com/Ubax))
- [iOS] Fix `ExpoRequestInterceptorProtocol` to properly notify client about HTTP redirects. ([#38078](https://github.com/expo/expo/pull/38078) by [@kudo](https://github.com/kudo))
- [Android] Conditionally register `RuntimeHolder` bindings. ([#38345](https://github.com/expo/expo/pull/38345) by [@alanjhughes](https://github.com/alanjhughes))
- [iOS] Fix null string conversion. ([#38284](https://github.com/expo/expo/pull/38284) by [@jakex7](https://github.com/jakex7))

### 💡 Others

- [iOS] Cleaned up iOS header files for precompilation ([#38441](https://github.com/expo/expo/pull/38441) by [@chrfalch](https://github.com/chrfalch))
- [Android] RN 0.81.0: patched some reflection issues after kotlin upgrade ([#38451](https://github.com/expo/expo/pull/38451) by [@chrfalch](https://github.com/chrfalch))
- Restructure Jest polyfills to not import forbidden platform extension directly. ([#37588](https://github.com/expo/expo/pull/37588) by [@EvanBacon](https://github.com/EvanBacon))
- [Android] Improve time to retrieve the Expo module. ([#37082](https://github.com/expo/expo/pull/37082) by [@lukmccall](https://github.com/lukmccall))
- [Android] Reduce the memory footprint of calling function from the native module. ([#37080](https://github.com/expo/expo/pull/37080) by [@lukmccall](https://github.com/lukmccall))
- [Android] Changed how nullable types are converted. ([#37055](https://github.com/expo/expo/pull/37055) by [@lukmccall](https://github.com/lukmccall))
- [Android] Reduce the number of conversions needed to call a function from the native module. ([#37099](https://github.com/expo/expo/pull/37099) by [@lukmccall](https://github.com/lukmccall))
- Updated `ExpoComposeView` to support virtual view. ([#36255](https://github.com/expo/expo/pull/36255) by [@kudo](https://github.com/kudo))
- [iOS] Support throwing errors in shared object constructor. ([#37618](https://github.com/expo/expo/pull/37618) by [@alanjhughes](https://github.com/alanjhughes))
- [iOS] Remove boilerplate from function factories. ([#37884](https://github.com/expo/expo/pull/37884) by [@alanjhughes](https://github.com/alanjhughes))
- [Android] Remove react-native 0.74 support files ([#38216](https://github.com/expo/expo/pull/38216) by [@gabrieldonadel](https://github.com/gabrieldonadel))

## 2.5.0 - 2025-07-17

### 🎉 New features

- [iOS] Support cast from JavaScriptValue in DynamicArrayType. ([#37891](https://github.com/expo/expo/pull/37891) by [@jakex7](https://github.com/jakex7))

### 🐛 Bug fixes

- [Android] Mark either converters as non-trivial. ([#37836](https://github.com/expo/expo/pull/37836) by [@aleqsio](https://github.com/aleqsio))

## 2.4.2 - 2025-07-02

### 🐛 Bug fixes

- [Android] Fix `Value is undefined, expected an Object` in the `JNIUtils::emitEventOnJSIObject`. ([#37778](https://github.com/expo/expo/pull/37778) by [@lukmccall](https://github.com/lukmccall))

## 2.4.1 - 2025-07-01

### 🐛 Bug fixes

- Added Android 16KB page size support. ([#37446](https://github.com/expo/expo/pull/37446) by [@kudo](https://github.com/kudo))

## 2.4.0 - 2025-06-04

### 🎉 New features

- [iOS] Add module registry encoder for JSON. ([#36677](https://github.com/expo/expo/pull/36677) by [@aleqsio](https://github.com/aleqsio))
- [Android] New custom Type Converter API ([#36823](https://github.com/expo/expo/pull/36823) by [@jakex7](https://github.com/jakex7))
- [iOS] Natively support `rgb` color conversions. ([#36914](https://github.com/expo/expo/pull/36914) by [@alanjhughes](https://github.com/alanjhughes))
- Add default values to prop definition. ([#37011](https://github.com/expo/expo/pull/37011), [#37013](https://github.com/expo/expo/pull/37013) by [@jakex7](https://github.com/jakex7))

### 🐛 Bug fixes

- [iOS] Call `createRootViewController` from the `ExpoReactNativeFactoryDelegate`. ([#36787](https://github.com/expo/expo/pull/36787) by [@alanjhughes](https://github.com/alanjhughes))
- [iOS] Prevent crash on failed networked requests ([#36896](https://github.com/expo/expo/pull/36896) by [@adrum](https://github.com/adrum))

### 💡 Others

- Improved `@expo/ui/swift-ui-primitives` integrations. ([#36937](https://github.com/expo/expo/pull/36937) by [@kudo](https://github.com/kudo))
- [iOS] Use dynamic type for AsyncFunction result conversion ([#36986](https://github.com/expo/expo/pull/36986) by [@jakex7](https://github.com/jakex7))

## 2.3.13 — 2025-05-08

### 🐛 Bug fixes

- [Android] Fix `getSharedObjectId` for devices running android 7 and below. ([#36698](https://github.com/expo/expo/pull/36698) by [@lukmccall](https://github.com/lukmccall))
- [iOS] Fixed missing upload progress from `XMLHttpRequest` when network inspector is enabled. ([#36715](https://github.com/expo/expo/pull/36715) by [@kudo](https://github.com/kudo))

## 2.3.12 — 2025-04-30

### 🐛 Bug fixes

- Fixed `extraMavenRepos` not applied on Gradle subprojects. ([#36500](https://github.com/expo/expo/pull/36500) by [@lukmccall](https://github.com/lukmccall))

## 2.3.11 — 2025-04-28

_This version does not introduce any user-facing changes._

## 2.3.10 — 2025-04-28

### 🐛 Bug fixes

- [iOS] Fix concurrent functions on views. ([#36431](https://github.com/expo/expo/pull/36431) by [@alanjhughes](https://github.com/alanjhughes))

## 2.3.9 — 2025-04-25

### 💡 Others

- Removes `Jetpack Compose` integration if not needed. ([#36353](https://github.com/expo/expo/pull/36353) by [@lukmccall](https://github.com/lukmccall))
- Refined `Children` return type for SwiftUI integration. ([#36377](https://github.com/expo/expo/pull/36377) by [@kudo](https://github.com/kudo))

## 2.3.8 — 2025-04-23

### 💡 Others

- Droped support for Kotlin < `2.0.0`. ([#36323](https://github.com/expo/expo/pull/36323) by [@lukmccall](https://github.com/lukmccall))

## 2.3.7 — 2025-04-22

### 🐛 Bug fixes

- Fixed adding SwiftUI views to navigation header ([#36305](https://github.com/expo/expo/pull/36305) by [@jakex7](https://github.com/jakex7))

## 2.3.6 — 2025-04-21

### 🐛 Bug fixes

- Fixed build errors on Windows. ([#36211](https://github.com/expo/expo/pull/36211) by [@kudo](https://github.com/kudo))

## 2.3.5 — 2025-04-14

### 🐛 Bug fixes

- Fixed `UnwrappedChildren` not get the unwrapped content view for SwiftUI integration. ([#36112](https://github.com/expo/expo/pull/36112) by [@kudo](https://github.com/kudo))

### 💡 Others

- Removed the limitation to use `collapsable={false}` when hosting a UIView in SwiftUI views. ([#36153](https://github.com/expo/expo/pull/36153) by [@kudo](https://github.com/kudo))

## 2.3.4 — 2025-04-11

### 🐛 Bug fixes

- Change registerWebModule to work with minified classes. ([#35946](https://github.com/expo/expo/pull/35946) by [@aleqsio](https://github.com/aleqsio))

## 2.3.3 — 2025-04-11

_This version does not introduce any user-facing changes._

## 2.3.2 — 2025-04-09

### 💡 Others

- [Android] Migrate `AppLoaderProvider` to kotlin. ([#36035](https://github.com/expo/expo/pull/36035) by [@alanjhughes](https://github.com/alanjhughes))

## 2.3.1 — 2025-04-08

_This version does not introduce any user-facing changes._

## 2.3.0 — 2025-04-04

### 🛠 Breaking changes

- upgrade RN to 0.78 ([#35050](https://github.com/expo/expo/pull/35050) by [@vonovak](https://github.com/vonovak))
- Bump minimum macOS version to 11.0. ([#34980](https://github.com/expo/expo/pull/34980) by [@gabrieldonadel](https://github.com/gabrieldonadel))
- Fix support for react-native-macos 0.78 ([#35688](https://github.com/expo/expo/pull/35688) by [@gabrieldonadel](https://github.com/gabrieldonadel))

### 🎉 New features

- support Java `long` values in arrays and maps ([#35446](https://github.com/expo/expo/pull/35446) by [@vonovak](https://github.com/vonovak))
- [iOS] Add `UnwrappedChildren` for nested SwiftUI views. ([#34954](https://github.com/expo/expo/pull/34954) by [@andrew-levy](https://github.com/andrew-levy))
- support react-native 0.77 ([#33946](https://github.com/expo/expo/pull/33946) by [@vonovak](https://github.com/vonovak))
- Implemented dispatching events by SwiftUI views. ([#33860](https://github.com/expo/expo/pull/33860) by [@tsapeta](https://github.com/tsapeta))
- [iOS] Support returning `SharedObject`s from a `Promise`. ([#34655](https://github.com/expo/expo/pull/34655) by [@alanjhughes](https://github.com/alanjhughes))
- Add ExpoAppDelegate support for macOS. ([#35061](https://github.com/expo/expo/pull/35061) by [@gabrieldonadel](https://github.com/gabrieldonadel))
- Add support for macOS AppDelegate subscribers ([#35062](https://github.com/expo/expo/pull/35062) by [@gabrieldonadel](https://github.com/gabrieldonadel))
- Add SwiftUI views support for macOS ([#35078](https://github.com/expo/expo/pull/35078) by [@gabrieldonadel](https://github.com/gabrieldonadel))
- Add common constants to the CoreModule ([#35057](https://github.com/expo/expo/pull/35057) by [@jakex7](https://github.com/jakex7))
- [Android] Add Constant API ([#35157](https://github.com/expo/expo/pull/35157) by [@jakex7](https://github.com/jakex7))
- [iOS] Add Constant API ([#35199](https://github.com/expo/expo/pull/35199) by [@jakex7](https://github.com/jakex7))
- [Android] Added support for custom queues for async functions. ([#35838](https://github.com/expo/expo/pull/35838) by [@lukmccall](https://github.com/lukmccall))
- [iOS] Allow undefined props on ExpoSwiftUIView ([#35852](https://github.com/expo/expo/pull/35852) by [@jakex7](https://github.com/jakex7))

### 🐛 Bug fixes

- [Android] Fixes compose views disappearing on navigation. ([#34689](https://github.com/expo/expo/pull/34689) by [@aleqsio](https://github.com/aleqsio))
- [iOS] Fixes view managers not deallocating when reloading. ([#33760](https://github.com/expo/expo/pull/33760) by [@alanjhughes](https://github.com/alanjhughes))
- Fixed converting double to float. ([#34906](https://github.com/expo/expo/pull/34906) by [@janicduplessis](https://github.com/janicduplessis))
- [iOS] Fixed ViewModuleWrapper initializer on old arch to use the DEFAULT_MODULE_VIEW view from the module as the default view. ([#35007](https://github.com/expo/expo/pull/35007) by [@gabrieldonadel](https://github.com/gabrieldonadel))
- Fix UnimplementedExpoView on macOS. ([#35014](https://github.com/expo/expo/pull/35014) by [@gabrieldonadel](https://github.com/gabrieldonadel))
- [iOS] Fix tvOS breakage. ([#35146](https://github.com/expo/expo/pull/35146) by [@douglowder](https://github.com/douglowder))
- [iOS] Fix calls to `AsyncFunction` not working in the initial render of a `View`. ([#35176](https://github.com/expo/expo/pull/35176) by [@behenate](https://github.com/behenate))
- [Android] Fixed `ConcurrentModificationException` being thrown by `JNIDeallocator.deallocate` during the app reload. ([#35322](https://github.com/expo/expo/pull/35322) by [@lukmccall](https://github.com/lukmccall))

### 💡 Others

- [iOS] Updated UnwrappedChildren to return a ForEach type, allowing support for modifiers such as onDelete. ([#35222](https://github.com/expo/expo/pull/35222) by [@Pflaumenbaum](https://github.com/Pflaumenbaum))
- [Android] make ReactNativeFeatureFlags injectable by wrapping it in an interface to make some tests pass ([#34363](https://github.com/expo/expo/pull/34363) by [@chrfalch](https://github.com/chrfalch))
- [Android] Fixed failing unit tests after internal API change that adds support for named views. ([#34384](https://github.com/expo/expo/pull/34384) by [@chrfalch](https://github.com/chrfalch))
- [iOS] Enable named view exports. ([#34293](https://github.com/expo/expo/pull/34293) by [@aleqsio](https://github.com/aleqsio))
- [Android] Enable named view exports. ([#34161](https://github.com/expo/expo/pull/34161) by [@aleqsio](https://github.com/aleqsio))
- [Android] Introduced the option to disabled `overflow: hidden` applied to each view by default. ([#33261](https://github.com/expo/expo/pull/33261) by [@lukmccall](https://github.com/lukmccall))
- Fixed compatibility for React Native 0.78 nightlies. ([#33718](https://github.com/expo/expo/pull/33718) by [@kudo](https://github.com/kudo))
- Show `UnimplementedExpoView` in place of SwiftUI views when the New Architecture is not enabled. ([#33901](https://github.com/expo/expo/pull/33901) by [@tsapeta](https://github.com/tsapeta))
- [iOS] Use REACT_NATIVE_PATH to determine react-native version ([#34042](https://github.com/expo/expo/pull/34042) by [@gabrieldonadel](https://github.com/gabrieldonadel))
- [Android] Started using expo modules gradle plugin.
- [Android] Remove `BarCodeScannerInterface`. ([#34966](https://github.com/expo/expo/pull/34966) by [@alanjhughes](https://github.com/alanjhughes))
- [Android] Make ExpoComposeView builder function optional. ([#34907](https://github.com/expo/expo/pull/34907) by [@janicduplessis](https://github.com/janicduplessis))
- Refactored `RCTReactNativeFactory` integration. ([#35679](https://github.com/expo/expo/pull/35679) by [@kudo](https://github.com/kudo))
- [Android] Used `compileOnly` to depend on the `expo-modules-core` when applying default dependencies. ([#35822](https://github.com/expo/expo/pull/35822) by [@lukmccall](https://github.com/lukmccall))
- Removed extra `UIView` from SwiftUI integration. ([#35553](https://github.com/expo/expo/pull/35553) by [@kudo](https://github.com/kudo))

### ⚠️ Notices

- Deprecated `EXAppDelegateWrapper` in favor of `ExpoAppDelegate`. ([#33348](https://github.com/expo/expo/pull/33348) by [@tsapeta](https://github.com/tsapeta)))

## 2.2.3 - 2025-03-11

### 🐛 Bug fixes

- Fixed `kotlinx.coroutines.CancellableContinuationImpl.alreadyResumedError` error on Android. ([#35114](https://github.com/expo/expo/pull/35114) by [@kudo](https://github.com/kudo))

## 2.2.2 - 2025-02-14

### 🎉 New features

- [iOS] Support async functions by SwiftUI views ([#34853](https://github.com/expo/expo/pull/34853) by [@jakex7](https://github.com/jakex7))

## 2.2.1 - 2025-02-06

_This version does not introduce any user-facing changes._

## 2.2.0 - 2025-01-27

### 🎉 New features

- [Android] Added support for Jetpack Compose views. ([#33759](https://github.com/expo/expo/pull/33759) by [@aleqsio](https://github.com/aleqsio))

### 🐛 Bug fixes

- Fixed **AppDelegate.mm** methods not be called on iOS. ([#34464](https://github.com/expo/expo/pull/34464) by [@kudo](https://github.com/kudo))
- [Android] Fixes `AppContext` is lost in nested converters. ([#34373](https://github.com/expo/expo/pull/34373) by [@lukmccall](https://github.com/lukmccall))

### 💡 Others

- [Android]: Added callback to executeTask method signature after adding package expo-background-task ([#33438](https://github.com/expo/expo/pull/33438) by [@chrfalch](https://github.com/chrfalch))

## 2.1.4 - 2025-01-19

### 💡 Others

- Allowed extending `process.env` types. ([#34112](https://github.com/expo/expo/pull/34112) by [@kudo](https://github.com/kudo))

## 2.1.3 - 2025-01-10

_This version does not introduce any user-facing changes._

## 2.1.2 - 2024-12-16

### 🐛 Bug fixes

- Ensure `uuid.v4`and`uuid.v5` is available on old react native architecture. ([#33621](https://github.com/expo/expo/pull/33621) by [@andrejpavlovic](https://github.com/andrejpavlovic))
- Changed `import` to `import type` for TS type declarations. ([#33447](https://github.com/expo/expo/pull/33447) by [@j-piasecki](https://github.com/j-piasecki))
- [macOS] Allow SwiftUI views to work on macOS ([#33506](https://github.com/expo/expo/pull/33506) by [@hassankhan](https://github.com/hassankhan))

## 2.1.1 - 2024-12-02

_This version does not introduce any user-facing changes._

## 2.1.0 - 2024-11-29

### 🎉 New features

- Added support for rendering children components in SwiftUI views. ([#33271](https://github.com/expo/expo/pull/33271) by [@tsapeta](https://github.com/tsapeta))

### 🐛 Bug fixes

- Fixed backwards compatibility in the `EventEmitter` constructor. ([#33294](https://github.com/expo/expo/pull/33294) by [@tsapeta](https://github.com/tsapeta))

### 💡 Others

- Fixed compatibility for React Native 0.77. ([#33277](https://github.com/expo/expo/pull/33277) by [@kudo](https://github.com/kudo))
- [Android] Bump KSP version for Kotlin 2.0.21. ([#33306](https://github.com/expo/expo/pull/33306) by [@kudo](https://github.com/kudo))

## 2.0.6 — 2024-11-22

### 🐛 Bug fixes

- [Android] Fixed issue with RNHeadlessAppLoader destroying the reactHost instance in the new architecture. ([#33176](https://github.com/expo/expo/pull/33176) by [@chrfalch](https://github.com/chrfalch))

## 2.0.5 — 2024-11-22

### 🐛 Bug fixes

- [iOS] Fixed build error when using jsEngine=jsc. ([#33130](https://github.com/expo/expo/pull/33130) by [@kudo](https://github.com/kudo))
- Fixed TypeScript incompatible `process` type error when including `@types/node`. ([#33155](https://github.com/expo/expo/pull/33155) by [@kudo](https://github.com/kudo))

### 💡 Others

- [Android] Introduced `applyKspJvmToolchain()` gradle helper to enforce JVM Toolchain version for KSP. ([#33148](https://github.com/expo/expo/pull/33148) by [@kudo](https://github.com/kudo))

## 2.0.4 — 2024-11-19

### 🎉 New features

- [Android] Supported css properties (border, background and shadow) by default. ([#33074](https://github.com/expo/expo/pull/33074) by [@lukmccall](https://github.com/lukmccall))

### 🐛 Bug fixes

- Fixed type errors when using `ts-jest`. ([#32954](https://github.com/expo/expo/pull/32954) by [@kudo](https://github.com/kudo))
- [Android] Fixed `no non-static method "SharedObject.getSharedObjectId()" when proguard is enabled. ([#33011](https://github.com/expo/expo/pull/33011) by [@lukmccall](https://github.com/lukmccall))

### 💡 Others

- Use `findNodeHandle` with a native ref instead of a class component instance to avoid expensive calls to `findCurrentFiberUsingSlowPath`. ([#33016](https://github.com/expo/expo/pull/33016) by [@tsapeta](https://github.com/tsapeta))
- Introduced `ReactNativeFeatureFlags` compat to fix React Native 0.77 breaking changes. ([#33077](https://github.com/expo/expo/pull/33077) by [@kudo](https://github.com/kudo))
- Fixed compatibility for React Native 0.77. ([#33079](https://github.com/expo/expo/pull/33079) by [@kudo](https://github.com/kudo))

## 2.0.3 — 2024-11-14

### 🐛 Bug fixes

- Fixed requests from `expo/fetch` being stuck on iOS. ([#32894](https://github.com/expo/expo/pull/32894) by [@kudo](https://github.com/kudo))
- [Android] Fixed sending event containing `ByteArray` from the Kotlin module results in string ID instead of `Uint8Array`. ([#32945](https://github.com/expo/expo/pull/32945) by [@lukmccall](https://github.com/lukmccall))

## 2.0.2 — 2024-11-13

### 💡 Others

- [Android] Added `executeTask` method to `TaskManagerUtilsInterface` ([#32849](https://github.com/expo/expo/pull/32849) by [@chrfalch](https://github.com/chrfalch))

## 2.0.1 — 2024-11-12

### 🐛 Bug fixes

- [Android] Added `@DoNotStrip` annotation to new `Either` types. ([#32783](https://github.com/expo/expo/pull/32783) by [@alanjhughes](https://github.com/alanjhughes))

## 2.0.0 — 2024-11-10

### 🐛 Bug fixes

- [Android] Ensure that the headless app loader is started on the main thread. ([#32705](https://github.com/expo/expo/pull/32705) by [@chrfalch](https://github.com/chrfalch))

## 2.0.0-preview.10 — 2024-11-07

### 🐛 Bug fixes

- [iOS] Fixed broken self-signed connections from network inspector. ([#32670](https://github.com/expo/expo/pull/32670) by [@kudo](https://github.com/kudo))
- [macOS] Fix UIKit import ([#32727](https://github.com/expo/expo/pull/32727) by [@gabrieldonadel](https://github.com/gabrieldonadel))

## 2.0.0-preview.9 — 2024-10-31

### 💡 Others

- [Android] Fix `ClassCastException` in headless app loader under the old architecture. ([#32390](https://github.com/expo/expo/pull/32390) by [@robertying](https://github.com/robertying))

## 2.0.0-preview.8 — 2024-10-31

### 🛠 Breaking changes

- Remove expo barcode scanner interface. ([#32198](https://github.com/expo/expo/pull/32198) by [@aleqsio](https://github.com/aleqsio))

### 💡 Others

- [android] Added helper for looking up TaskService instance used by expo-task-manager ([#32300](https://github.com/expo/expo/pull/32300) by [@chrfalch](https://github.com/chrfalch))
- Made TypeScript declaration for `process` an interface. ([#32464](https://github.com/expo/expo/pull/32464) by [@tsapeta](https://github.com/tsapeta))

## 2.0.0-preview.7 — 2024-10-29

### 💡 Others

- [Android] Added `shouldUseAndroidLayout` flag to `ExpoView`. ([#32446](https://github.com/expo/expo/pull/32446) by [@lukmccall](https://github.com/lukmccall))

## 2.0.0-preview.6 — 2024-10-29

_This version does not introduce any user-facing changes._

## 2.0.0-preview.5 — 2024-10-28

### 🐛 Bug fixes

- Fixed updating props on SwiftUI views on the New Architecture. ([#32381](https://github.com/expo/expo/pull/32381) by [@tsapeta](https://github.com/tsapeta))
- Fixed build error when `use_frameworks!`. ([#32358](https://github.com/expo/expo/pull/32358) by [@kudo](https://github.com/kudo))

## 2.0.0-preview.4 — 2024-10-25

### 💡 Others

- Added a new dynamic type dedicated for Either types. ([#32328](https://github.com/expo/expo/pull/32328) by [@tsapeta](https://github.com/tsapeta))

## 2.0.0-preview.3 — 2024-10-24

_This version does not introduce any user-facing changes._

## 2.0.0-preview.2 — 2024-10-24

### 🐛 Bug fixes

- [iOS] Fix optionals conversion. ([#32239](https://github.com/expo/expo/pull/32239) by [@aleqsio](https://github.com/aleqsio))
- Fixed retain cycle for `ExpoRequestCdpInterceptor`. ([#32289](https://github.com/expo/expo/pull/32289) by [@kudo](https://github.com/kudo))

### 💡 Others

- [android] Add enum event support to OnStartObserving and OnStopObserving. ([#32251](https://github.com/expo/expo/pull/32251), [#32287](https://github.com/expo/expo/pull/32287) by [@wschurman](https://github.com/wschurman))

## 2.0.0-preview.1 — 2024-10-22

### 🐛 Bug fixes

- [iOS] Removed window synthesis in `EXAppDelegateWrapper` to fix crashes caused by deallocated `RCTFabricSurface`. ([#32233](https://github.com/expo/expo/pull/32233) by [@tsapeta](https://github.com/tsapeta))

## 2.0.0-preview.0 — 2024-10-22

### 🛠 Breaking changes

- Bumped iOS and tvOS deployment target to 15.1. ([#30840](https://github.com/expo/expo/pull/30840) by [@tsapeta](https://github.com/tsapeta))

### 🎉 New features

- [Android] Add support for `onUserLeaveHint`. ([#32033](https://github.com/expo/expo/pull/32033) by [@behenate](https://github.com/behenate))
- [Web] Modules are now registered in global. ([#29870](https://github.com/expo/expo/pull/29870) by [@aleqsio](https://github.com/aleqsio))
- [iOS] Add support for passing SharedObjects as a function parameter. ([#30314](https://github.com/expo/expo/pull/30314) by [@aleqsio](https://github.com/aleqsio))
- Added support for `startObserving` and `stopObserving` on the web. ([#28953](https://github.com/expo/expo/pull/28953) by [@aleqsio](https://github.com/aleqsio))
- Switched exported `EventEmitter` to the C++ implementation. ([#28946](https://github.com/expo/expo/pull/28946) by [@tsapeta](https://github.com/tsapeta))
- [Android] `OnStartObserving` and `OnStopObserving` can now be attached to a specific event. ([#29012](https://github.com/expo/expo/pull/29012) by [@lukmccall](https://github.com/lukmccall))
- [Android] Add the ability to change the name of the exported shared object. ([#30040](https://github.com/expo/expo/pull/30040) by [@lukmccall](https://github.com/lukmccall))
- [Android] Supported returning of the `SharedObject` from functions. ([#30426](https://github.com/expo/expo/pull/30426) by [@lukmccall](https://github.com/lukmccall))
- [iOS] Support implementing `customizeRootView` in `ExpoAppDelegateSubscriber`. ([#30550](https://github.com/expo/expo/pull/30550) by [@alanjhughes](https://github.com/alanjhughes))
- [Android] Added support for primitive arrays in functions. ([#30657](https://github.com/expo/expo/pull/30657) by [@lukmccall](https://github.com/lukmccall))
- Implemented `toJSON` function on shared objects that includes dynamic properties defined in their prototype chain. ([#30813](https://github.com/expo/expo/pull/30813) by [@tsapeta](https://github.com/tsapeta))
- [iOS] Added experimental support for rendering SwiftUI views. ([#19888](https://github.com/expo/expo/pull/19888) by [@tsapeta](https://github.com/tsapeta))
- [Android] Introduced experimental converter to support a broader range of types that can be passed to the JS. ([#30944](https://github.com/expo/expo/pull/30944) by [@lukmccall](https://github.com/lukmccall))
- [iOS] Add functions that are called before and after a shared object is removed from the registry. ([#30949](https://github.com/expo/expo/pull/30949) by [@alanjhughes](https://github.com/alanjhughes))
- [Android] Rewrite map converter to support a broader range of types that can be passed to the JS. ([#31016](https://github.com/expo/expo/pull/31016) by [@lukmccall](https://github.com/lukmccall))
- [Android] `EitherTypeConverter` now can work with the `Dynamic` class. ([#31074](https://github.com/expo/expo/pull/31074) by [@lukmccall](https://github.com/lukmccall))
- [iOS] Added a way to provide shared objects memory pressure to improve garbage collection of native objects retaining some heavy data. ([#31168](https://github.com/expo/expo/pull/31168) by [@tsapeta](https://github.com/tsapeta))
- [Android] The single parameter now can be auto-cast to the list. ([#31290](https://github.com/expo/expo/pull/31290) by [@lukmccall](https://github.com/lukmccall))
- [Android] `SharedRef` converter now checks the inner ref type. ([#31441](https://github.com/expo/expo/pull/31441) by [@lukmccall](https://github.com/lukmccall))
- [Android] Added support for changing if functions are enumerable. ([#31495](https://github.com/expo/expo/pull/31495) by [@lukmccall](https://github.com/lukmccall))
- Introduced a base class for all shared refs (`expo.SharedRef`). ([#31513](https://github.com/expo/expo/pull/31513) & [#31706](https://github.com/expo/expo/pull/31706) by [@lukmccall](https://github.com/lukmccall))
- [Android] Add support for react-native 0.76 ([#31580](https://github.com/expo/expo/pull/31580) by [@gabrieldonadel](https://github.com/gabrieldonadel))
- [Android] Added `onStartListeningToEvent` and `onStopListeningToEvent` to the `SharedObject`. ([#31385](https://github.com/expo/expo/pull/31385) by [@lukmccall](https://github.com/lukmccall))
- Added Apple shared app groups support. ([#31519](https://github.com/expo/expo/pull/31519) by [@kudo](https://github.com/kudo))
- [Android] Added a way to provide shared objects memory pressure to improve garbage collection of native objects retaining some heavy data. ([#31784](https://github.com/expo/expo/pull/31784) by [@lukmccall](https://github.com/lukmccall))
- Added `nativeRefType` to `SharedRef`. ([#31776](https://github.com/expo/expo/pull/31776) by [@lukmccall](https://github.com/lukmccall))
- [Android] Added `kotlin.time.Duration` support. ([#31858](https://github.com/expo/expo/pull/31858) by [@lukmccall](https://github.com/lukmccall))
- Return duration from logger timer block methods. ([#31805](https://github.com/expo/expo/pull/31805) by [@wschurman](https://github.com/wschurman))
- [iOS] Made `CMTime` from `CoreMedia` a convertible type. ([#31967](https://github.com/expo/expo/pull/31967) by [@tsapeta](https://github.com/tsapeta))

### 🐛 Bug fixes

- [Android] Fixed `RNHeadlessAppLoader` class for New Architecture support. ([#32146](https://github.com/expo/expo/pull/32146) by [@chrfalch](https://github.com/chrfalch))
- [iOS] Fix using enums as optional arguments. ([#32147](https://github.com/expo/expo/pull/32147) by [@aleqsio](https://github.com/aleqsio))
- [Android] Change JS return type for kotlin `null` to be `null` instead of `undefined`. ([#31301](https://github.com/expo/expo/pull/31301) by [@aleqsio](https://github.com/aleqsio))
- [iOS] Swift `Enumerable`s did not correctly convert to JS values. ([#30191](https://github.com/expo/expo/pull/30191) by [@vonovak](https://github.com/vonovak))
- [jest] Fix `uuid` mock in `jest-expo`. ([#29840](https://github.com/expo/expo/pull/29840) by [@EvanBacon](https://github.com/EvanBacon))
- [Android] Fix error: no viable constructor or deduction guide for deduction of template arguments of 'weak_ptr' ([#29075](https://github.com/expo/expo/pull/29075) by [@rafi16jan](https://github.com/rafi16jan))
- [Android] Fix `getContext().getNativeModule(UIManagerModule.class)` in Bridgeless. ([#29203](https://github.com/expo/expo/pull/29203) by [@arushikesarwani94](https://github.com/arushikesarwani94))
- [iOS] Fix data race in `PersistentFileLogSpec.swift`. ([#28924](https://github.com/expo/expo/pull/28924) by [@hakonk](https://github.com/hakonk))
- [Android] Fix the event emitter, which might crash during the reloads. ([#29176](https:/github.com/expo/expo/pull/29176) by [@lukmccall](https://github.com/lukmccall))
- [iOS] Fix random conversion errors when converting JavaScript floating point numbers to `Swift.Float`. ([#29053](https://github.com/expo/expo/pull/29053) by [@behenate](https://github.com/behenate))
- Fixed a crash when the event listener throws an error. ([#30065](https://github.com/expo/expo/pull/30065) by [@tsapeta](https://github.com/tsapeta))
- [Android] Fixed the record's constructor with default parameters were being ignored when converting from JavaScript to native. ([#30217](https://github.com/expo/expo/pull/30217) by [@lukmccall](https://github.com/lukmccall))
- [iOS] Fixed returning already registered shared objects. ([#30241](https://github.com/expo/expo/pull/30241) by [@tsapeta](https://github.com/tsapeta))
- [Android] Provide value in `getName` of `ModuleRegistryReadyNotifier.java` ([#30358](https://github.com/expo/expo/pull/30358) by [@WoLewicki](https://github.com/WoLewicki))
- [Android] When a `SharedObject` that was passed as an argument is returned, it no longer creates a new object. ([#30231](https://github.com/expo/expo/pull/30231) by [@lukmccall](https://github.com/lukmccall))
- [Android] Fixed some types weren't correctly converted when using coroutines. ([#30227](https://github.com/expo/expo/pull/30227) by [@lukmccall](https://github.com/lukmccall))
- [Android] Fixed not throwing when setting read-only properties. ([#30428](https://github.com/expo/expo/pull/30428) by [@lukmccall](https://github.com/lukmccall))
- [Android] Fixed `expo.modules.kotlin.jni.tests.RuntimeHolder` class not found crash when R8 is enabled. ([#30572](https://github.com/expo/expo/pull/30572) by [@kudo](https://github.com/kudo))
- [Android] Fixed `Class declares 0 type parameters, but X were provided` on Android when R8 is enabled. ([#30659](https://github.com/expo/expo/pull/30659) by [@lukmccall](https://github.com/lukmccall))
- [Android] Fixed SharedObject class names are obfuscated when R8 is enabled. ([#30948](https://github.com/expo/expo/pull/30948) by [@lukmccall](https://github.com/lukmccall))
- [Android] Fixed `CodedException.getCode()` crash when R8 is enabled. ([#31392](https://github.com/expo/expo/pull/31392) by [@kudo](https://github.com/kudo))
- [Android] Fixed getter for the third parameter of `Either`. ([#31443](https://github.com/expo/expo/pull/31443) by [@lukmccall](https://github.com/lukmccall))
- [Android] Fixed R8 build error `Missing class expo.modules.kotlin.types.ExperimentalJSTypeConverter$URIConverter`. on macOS host. ([#31452](https://github.com/expo/expo/pull/31452) by [@kudo](https://github.com/kudo))
- [iOS] Fixed `No space left on device` when saving persistent log. ([#31583](https://github.com/expo/expo/pull/31583) by [@RodolfoGS](https://github.com/RodolfoGS))
- Fixed iOS reload crash on New Architecture mode. ([#31789](https://github.com/expo/expo/pull/31789) by [@kudo](https://github.com/kudo))
- [iOS] Fixed views using the incorrect `AppContext` instance. ([#31897](https://github.com/expo/expo/pull/31897) by [@lukmccall](https://github.com/lukmccall))
- [iOS] Fixed crashes on the New Architecture when dispatching events during the props update. ([#31971](https://github.com/expo/expo/pull/31971) by [@tsapeta](https://github.com/tsapeta))
- Fixed `registerAdditionalModuleClasses` deadlock issue on old architecture mode. ([#32209](https://github.com/expo/expo/pull/32209) by [@kudo](https://github.com/kudo))

### 💡 Others

- Added documentation links to `Record` and `Field` implementations ([#31997](https://github.com/expo/expo/pull/31997) by [@vonovak](https://github.com/vonovak))
- Remove web hydration `process.env` type. ([#31267](https://github.com/expo/expo/pull/31267) by [@EvanBacon](https://github.com/EvanBacon))
- Added an `async` extension for OkHttp requests. ([#30841](https://github.com/expo/expo/pull/30841) by [@aleqsio](https://github.com/aleqsio))
- Change `sideEffects` to use `src` folder. ([#29964](https://github.com/expo/expo/pull/29964) by [@EvanBacon](https://github.com/EvanBacon))
- [web] Use global `crypto` object for UUID. ([#29828](https://github.com/expo/expo/pull/29828) by [@EvanBacon](https://github.com/EvanBacon))
- [iOS] Send open url event to all matching subscribers. ([#29645](https://github.com/expo/expo/pull/29645) by [@aleqsio](https://github.com/aleqsio))
- Use `process.env.EXPO_OS` for `Platform.OS` and `Platform.select`, when available. ([#29429](https://github.com/expo/expo/pull/29429) by [@EvanBacon](https://github.com/EvanBacon))
- [Android] Removed unneeded in-between function call when resolving promise without arguments. ([#28944](https://github.com/expo/expo/pull/28944) by [@lukmccall](https://github.com/lukmccall))
- Exported some TypeScript declarations (e.g. `EventEmitter`) from `expo-modules-core/types`. ([#28994](https://github.com/expo/expo/pull/28994) by [@tsapeta](https://github.com/tsapeta))
- [Android] Switch to the JS thread when sending an event. ([#29753](https://github.com/expo/expo/pull/29753) by [@lukmccall](https://github.com/lukmccall))
- Moved `process` object declaration to global declaration. ([#29745](https://github.com/expo/expo/pull/29745) by [@tsapeta](https://github.com/tsapeta))
- Use the `src` folder as the Metro target. ([#29702](https://github.com/expo/expo/pull/29702) by [@tsapeta](https://github.com/tsapeta))
- Make it possible for TypeScript to infer EventEmitter's events map. ([#29056](https://github.com/expo/expo/pull/29056) by [@tsapeta](https://github.com/tsapeta))
- [iOS] Stop throwing runtime errors when the promise is settled more than once. ([#30000](https://github.com/expo/expo/pull/30000) by [@tsapeta](https://github.com/tsapeta))
- [iOS] Renamed `pointer` property in the `SharedRef` class to `ref` for parity with Android. ([#30061](https://github.com/expo/expo/pull/30061) by [@tsapeta](https://github.com/tsapeta))
- [Android] Started using `noexcept`. ([#30128](https://github.com/expo/expo/pull/30128) by [@lukmccall](https://github.com/lukmccall))
- [Android] Decouple the modules state from the `AppContext` ([#30098](https://github.com/expo/expo/pull/30098) by [@lukmccall](https://github.com/lukmccall))
- Bumped Kotlin version to 1.9.24. ([#30199](https://github.com/expo/expo/pull/30199) by [@gabrieldonadel](https://github.com/gabrieldonadel))
- [Android] Bump Kotlin coroutines version to 1.7.3. ([#30226](https://github.com/expo/expo/pull/30226) by [@lukmccall](https://github.com/lukmccall))
- [Android] Limit the number of "Current Activity is of incorrect class" log entries. ([#30427](https://github.com/expo/expo/pull/30427) by [@lukmccall](https://github.com/lukmccall))
- [iOS] Refactor and expose `URLSessionSessionDelegateProxy` class. ([#30173](https://github.com/expo/expo/pull/30173) by [@kudo](https://github.com/kudo))
- [Android] Supports passing `Accept: text/event-stream` header to bypass streaming requests from `ExpoNetworkInspectOkHttpInterceptors`. ([#30219](https://github.com/expo/expo/pull/30219) by [@kudo](https://github.com/kudo))
- Replaced `@testing-library/react-hooks` with `@testing-library/react-native`. ([#30742](https://github.com/expo/expo/pull/30742) by [@byCedric](https://github.com/byCedric))
- Cleaned up the podspec and replaced `RN_FABRIC_ENABLED` flag with `RCT_NEW_ARCH_ENABLED`. ([#31044](https://github.com/expo/expo/pull/31044) by [@tsapeta](https://github.com/tsapeta))
- JS values are now used directly instead of using shared pointers to improve the overall performance. ([#31219](https://github.com/expo/expo/pull/31219) by [@tsapeta](https://github.com/tsapeta))
- [iOS] Use singletons for string and data dynamic types. ([#31220](https://github.com/expo/expo/pull/31220) by [@tsapeta](https://github.com/tsapeta))
- [iOS] Fixed a bottleneck in the performance-critical code by getting away from `enumerated` function. ([#31226](https://github.com/expo/expo/pull/31226) by [@tsapeta](https://github.com/tsapeta))
- [Android] Cached argument's type information to improve memory and startup time. ([#31297](https://github.com/expo/expo/pull/31297) by [@lukmccall](https://github.com/lukmccall))
- [iOS] Make `func application(_ application: UIApplication, supportedInterfaceOrientationsFor window: UIWindow?)` `open`. ([#31398](https://github.com/expo/expo/pull/31398) by [@abulenok](https://github.com/abulenok))
- [Android] Expose `RuntimeContext.eval()` as `JavaScriptRuntime.eval()` on iOS. ([#31445](https://github.com/expo/expo/pull/31445) by [@kudo](https://github.com/kudo))
- Removed all `NativeModulesProxy` occurrences. ([#31496](https://github.com/expo/expo/pull/31496) by [@reichhartd](https://github.com/reichhartd))
- Align web implementation exports as native to support DOM components when using `@expo/dom-webview`. ([#31662](https://github.com/expo/expo/pull/31662) by [@kudo](https://github.com/kudo))
- Removed `expo_patch_react_imports!` and align more stardard react-native project layout. ([#31700](https://github.com/expo/expo/pull/31700) by [@kudo](https://github.com/kudo))
- Removed deprecated code for react-native 0.74.0. ([#31740](https://github.com/expo/expo/pull/31740) by [@kudo](https://github.com/kudo))
- [Android] Improve error messages when converting the `Either` type. ([#31787](https://github.com/expo/expo/pull/31787) by [@lukmccall](https://github.com/lukmccall))
- [iOS] Improved converting function results. ([#31827](https://github.com/expo/expo/pull/31827) by [@tsapeta](https://github.com/tsapeta))
- [iOS] Disabled `ExpoView` recycling from the New Architecture. ([#31841](https://github.com/expo/expo/pull/31841) by [@tsapeta](https://github.com/tsapeta))
- [Android] Renamed `SharedObject.deallocate` to `SharedObject.sharedObjectDidRelease`. ([#31921](https://github.com/expo/expo/pull/31921) by [@lukmccall](https://github.com/lukmccall))
- [Android] Throws a descriptive error when trying to use a released `SharedObject`. ([#31922](https://github.com/expo/expo/pull/31922) by [@lukmccall](https://github.com/lukmccall))
- Include error cause message in logger ([#31929](https://github.com/expo/expo/pull/31929), [#31953](https://github.com/expo/expo/pull/31953) by [@wschurman](https://github.com/wschurman))
- [Android] Started using view's event dispatchers with the `surfaceId`. ([#32227](https://github.com/expo/expo/pull/32227) by [@lukmccall](https://github.com/lukmccall))

### ⚠️ Notices

- Added support for React Native 0.75.x. ([#30034](https://github.com/expo/expo/pull/30034) by [@gabrieldonadel](https://github.com/gabrieldonadel))
- Added support for React Native 0.76.x. ([#31552](https://github.com/expo/expo/pull/31552) by [@gabrieldonadel](https://github.com/gabrieldonadel))

## 1.12.24 - 2024-09-03

### 🐛 Bug fixes

- Fix support for macOS. ([#31307](https://github.com/expo/expo/pull/31307) by [@gabrieldonadel](https://github.com/gabrieldonadel))

## 1.12.23 - 2024-08-23

_This version does not introduce any user-facing changes._

## 1.12.22 - 2024-08-20

_This version does not introduce any user-facing changes._

## 1.12.21 - 2024-08-14

### 🐛 Bug fixes

- [iOS] Fix getExternalPathPermissions returns no read/write permissions. ([#30540](https://github.com/expo/expo/pull/30540) by [@dispelpowerone](https://github.com/dispelpowerone))

## 1.12.19 - 2024-07-11

### 💡 Others

- [iOS] Added `customizeRootView:` support to `EXAppDelegateWrapper.createRCTRootViewFactory`. ([#30245](https://github.com/expo/expo/pull/30245) by [@kudo](https://github.com/kudo))

## 1.12.18 - 2024-06-28

### 🐛 Bug fixes

- Fixed `RCTTriggerReloadCommandListeners` not found build error on iOS. ([#30014](https://github.com/expo/expo/pull/30014) by [@kudo](https://github.com/kudo))
- Fixed blocking SSE responses from network interceptor on Android. ([#30062](https://github.com/expo/expo/pull/30062) by [@kudo](https://github.com/kudo))

## 1.12.17 - 2024-06-27

### 🐛 Bug fixes

- [Android] Reduce the number of global references to JSIContext. ([#29936](https://github.com/expo/expo/pull/29936) by [@lukmccall](https://github.com/lukmccall))
- Fixed `getPathPermissions` permission error for local path with spaces on iOS 16 and older. ([#29958](https://github.com/expo/expo/pull/29958) by [@kudo](https://github.com/kudo))
- [iOS] Fixed broken `addUIBlock` and `executeUIBlock` on New Architecture mode. ([#30030](https://github.com/expo/expo/pull/30030) by [@kudo](https://github.com/kudo))

### 💡 Others

- [iOS] Exposed `Utilities` class for Expo Modules common tasks. ([#29945](https://github.com/expo/expo/pull/29945) by [@kudo](https://github.com/kudo))

## 1.12.16 - 2024-06-20

### 🐛 Bug fixes

- Fixed resource leakage from `ExpoRequestInterceptorProtocol`. ([#29798](https://github.com/expo/expo/pull/29798) by [@kudo](https://github.com/kudo))

## 1.12.15 - 2024-06-13

### 🐛 Bug fixes

- Fixed reload crash on Android. ([#29593](https://github.com/expo/expo/pull/29593) by [@kudo](https://github.com/kudo))
- [Android] Fixed converting from `null` to `Record` sometimes didn't work as expected. ([#29508](https://github.com/expo/expo/pull/29508) by [@lukmccall](https://github.com/lukmccall))

## 1.12.14 - 2024-06-06

### 🐛 Bug fixes

- [Android] Fixed `No implementation found for com.facebook.jni.HybridData expo.modules.kotlin.jni.JavaScriptModuleObject.initHybrid`. ([#29513](https://github.com/expo/expo/pull/29513) by [@lukmccall](https://github.com/lukmccall))

## 1.12.13 - 2024-06-05

### 💡 Others

- [iOS] Refactored `ExpoFabricView` and remove the view wrapper for each native component. ([#28829](https://github.com/expo/expo/pull/28829) by [@kudo](https://github.com/kudo))

## 1.12.12 - 2024-05-29

_This version does not introduce any user-facing changes._

## 1.12.11 — 2024-05-14

### 🐛 Bug fixes

- Fix expo-modules-core is broken on the server side. ([#28764](https://github.com/expo/expo/pull/28764) by [@alantoa](https://github.com/alantoa))

## 1.12.10 — 2024-05-09

### 🎉 New features

- Added `onKeyDown` and `onKeyLongPress` to `ReactActivityHandler` on Android. ([#28684](https://github.com/expo/expo/pull/28684) by [@lukmccall](https://github.com/lukmccall))

## 1.12.9 — 2024-05-06

_This version does not introduce any user-facing changes._

## 1.12.8 — 2024-05-03

### 🐛 Bug fixes

- Fixed building error when use_frameworks on new architecture. ([#28451](https://github.com/expo/expo/pull/28451) by [@kudo](https://github.com/kudo))

## 1.12.7 — 2024-05-02

### 🎉 New features

- Introduced the `reloadAppAsync` to reload the app. ([#28400](https://github.com/expo/expo/pull/28400) by [@kudo](https://github.com/kudo))

## 1.12.6 — 2024-05-01

### 🐛 Bug fixes

- [Android] Fix `field operation on NULL object` when reloading the app. ([#28555](https://github.com/expo/expo/pull/28555) by [@lukmccall](https://github.com/lukmccall))

## 1.12.5 — 2024-05-01

_This version does not introduce any user-facing changes._

## 1.12.4 — 2024-04-29

### 🐛 Bug fixes

- [Android] Fixed gziped payload does not correctly shown in network inspector. ([#28486](https://github.com/expo/expo/pull/28486) by [@kudo](https://github.com/kudo))
- [Android] Fixed crashes during the deallocation of shared objects. ([#28491](https://github.com/expo/expo/pull/28491) by [@lukmccall](https://github.com/lukmccall))
- [iOS] Fix accessing the view registry to avoid infinite loop crash. ([#28531](https://github.com/expo/expo/pull/28531) by [@tsapeta](https://github.com/tsapeta))

## 1.12.3 — 2024-04-26

### 🐛 Bug fixes

- [Android] Fixes SEGFAULTs caused by `std::shared_ptr<JavaCalllback::CallbackContext>::__on_zero_shared`. ([#28483](https://github.com/expo/expo/pull/28483) by [@lukmccall](https://github.com/lukmccall))

## 1.12.2 — 2024-04-23

_This version does not introduce any user-facing changes._

## 1.12.1 — 2024-04-22

### 🐛 Bug fixes

- Fixed `AppContext.onHostResume()` sometimes getting null `currentActivity` on Android. ([#28338](https://github.com/expo/expo/pull/28338) by [@kudo](https://github.com/kudo))
- Fixed backward compatibility in the **build.gradle** from third party Expo modules. ([#28359](https://github.com/expo/expo/pull/28359) by [@kudo](https://github.com/kudo))

## 1.12.0 — 2024-04-18

### 🛠 Breaking changes

- Removed `ReactNativeHostHandler.onRegisterJSIModules` interface. ([#26357](https://github.com/expo/expo/pull/26357) by [@kudo](https://github.com/kudo))
- Dropped supports for React Native 0.73 and lower. ([#27601](https://github.com/expo/expo/pull/27601), [#27689](https://github.com/expo/expo/pull/27689), [#27629](https://github.com/expo/expo/pull/27629) by [@kudo](https://github.com/kudo))

### 🎉 New features

- [Web] Add `createWebModule` function to wrap web functionality with the NativeModule class. ([#27739](https://github.com/expo/expo/pull/27739) by [@aleqsio](https://github.com/aleqsio))
- [Web] Add web implementations of event emitter and stubs of shared objects and native modules. ([#27595](https://github.com/expo/expo/pull/27595) by [@aleqsio](https://github.com/aleqsio))
- Mark React client components with "use client" directives. ([#27300](https://github.com/expo/expo/pull/27300) by [@EvanBacon](https://github.com/EvanBacon))
- [iOS] Added basic filesystem module to decouple expo-file-system from other packages. ([#27069](https://github.com/expo/expo/pull/27069) by [@aleqsio](https://github.com/aleqsio))
- [Android] Added syntactic sugar for defining a prop group. ([#27004](https://github.com/expo/expo/pull/27004) by [@lukmccall](https://github.com/lukmccall))
- Introduced a base class for all shared objects (`expo.SharedObject`) with a simple mechanism to release native pointer from JS. ([#27038](https://github.com/expo/expo/pull/27038) by [@tsapeta](https://github.com/tsapeta) & [#27331](https://github.com/expo/expo/pull/27331) by [@lukmccall](https://github.com/lukmccall))
- [iOS] Added native implementation of the JS EventEmitter. ([#27092](https://github.com/expo/expo/pull/27092) by [@tsapeta](https://github.com/tsapeta))
- [iOS] Allow for the export of views that conform to `AnyExpoView` ([#27284](https://github.com/expo/expo/pull/27284) by [@dominicstop](https://github.com/dominicstop))
- [iOS] Added support for bridgeless mode in React Native 0.74 ([#27242](https://github.com/expo/expo/pull/27242), [#27289](https://github.com/expo/expo/pull/27289), [#27531](https://github.com/expo/expo/pull/27531) by [@tsapeta](https://github.com/tsapeta))
- [iOS] Implemented sending events from native shared objects. ([#27333](https://github.com/expo/expo/pull/27333) by [@tsapeta](https://github.com/tsapeta))
- Added support for `startObserving` and `stopObserving` in the new `EventEmitter` class. ([#27393](https://github.com/expo/expo/pull/27393) by [@tsapeta](https://github.com/tsapeta))
- [Android] Implemented sending events from native shared objects. ([#27523](https://github.com/expo/expo/pull/27523) by [@lukmccall](https://github.com/lukmccall))
- JS object of the native module is now an instance of the `NativeModule` class that inherits from `EventEmitter`. ([#27510](https://github.com/expo/expo/pull/27510) by [@tsapeta](https://github.com/tsapeta))
- [iOS] Exposed a function on the runtime to schedule some work with synchronized access to JS. ([#27567](https://github.com/expo/expo/pull/27567) by [@tsapeta](https://github.com/tsapeta))
- [iOS] `OnStartObserving` and `OnStopObserving` can now be attached to a specific event. ([#27766](https://github.com/expo/expo/pull/27766) by [@tsapeta](https://github.com/tsapeta))
- [iOS] Provide Exception.code to JavaScript (as Error.code) for all types of functions. ([#27960](https://github.com/expo/expo/pull/27960) by [@cltnschlosser](https://github.com/cltnschlosser))

### 🐛 Bug fixes

- Fixed breaking changes from React-Native 0.74. ([#26357](https://github.com/expo/expo/pull/26357) by [@kudo](https://github.com/kudo))
- Fixed breaking changes from React-Native 0.74. ([#26357](https://github.com/expo/expo/pull/26357), [#26587](https://github.com/expo/expo/pull/26587) by [@kudo](https://github.com/kudo))
- [Android] Unit converter now ignores nullability. It will always return unit regardless of whether the input value is null or not. ([#27591](https://github.com/expo/expo/pull/27591) by [@lukmccall](https://github.com/lukmccall))
- Fixed `RCTHost` is not retained on iOS bridgeless mode. ([#27715](https://github.com/expo/expo/pull/27715) by [@kudo](https://github.com/kudo))
- Fixed errors on Android when running on bridgeless mode. ([#27725](https://github.com/expo/expo/pull/27725) by [@kudo](https://github.com/kudo))
- Fixed breaking changes from React Native 0.75. ([#27773](https://github.com/expo/expo/pull/27773) by [@kudo](https://github.com/kudo))
- Fixed crash from reloading on iOS and bridgeless mode. ([#27928](https://github.com/expo/expo/pull/27928) by [@kudo](https://github.com/kudo))
- Fixed SharedRef class names are obfuscated when R8 is enabled. ([#27965](https://github.com/expo/expo/pull/27965) by [@kudo](https://github.com/kudo))
- [iOS] Fix `recreateRootViewWithBundleURL` parameters. ([#27989](https://github.com/expo/expo/pull/27989) by [@gabrieldonadel](https://github.com/gabrieldonadel))
- Fixed `ExpoBridgeModule.installModules()` is broken on Android and bridgeless mode. ([#28065](https://github.com/expo/expo/pull/28065) by [@kudo](https://github.com/kudo))
- [Android] Fixed segfaults in `expo::MethodMetadata::convertJSIArgsToJNI`. ([#28163](https://github.com/expo/expo/pull/28163) by [@lukmccall](https://github.com/lukmccall))
- Fixed random `TypeError: Cannot read property 'NativeModule' of undefined` exceptions on Android. ([#28200](https://github.com/expo/expo/pull/28200) by [@kudo](https://github.com/kudo))
- Fixed white screen flickering when using expo-updates with longer `fallbackToCacheTimeout`. ([#28227](https://github.com/expo/expo/pull/28227) by [@kudo](https://github.com/kudo))
- [iOS] Fixed random crashes when reloads and `EXJavaScriptObject` accesses to dangling pointers. ([#28262](https://github.com/expo/expo/pull/28262) by [@kudo](https://github.com/kudo))

### 💡 Others

- Deprecated `expo.modules.core.Promise`. ([#27471](https://github.com/expo/expo/pull/27471) by [@aleqsio](https://github.com/aleqsio))
- Removed deprecated `global.ExpoModules`. ([#26027](https://github.com/expo/expo/pull/26027) by [@tsapeta](https://github.com/tsapeta))
- Remove most of Constants.appOwnership. ([#26313](https://github.com/expo/expo/pull/26313) by [@wschurman](https://github.com/wschurman))
- Added an alternative way of installing the JSI bindings. ([#26691](https://github.com/expo/expo/pull/26691) by [@lukmccall](https://github.com/lukmccall))
- `ObjectDeallocator` is now a native state instead of a host object. ([#26906](https://github.com/expo/expo/pull/26906) by [@tsapeta](https://github.com/tsapeta))
- Moved away from `SharedObjectRegistry` being a singleton. ([#27032](https://github.com/expo/expo/pull/27032) by [@tsapeta](https://github.com/tsapeta))
- Moved and added more JSI utils to the common C++ codebase. ([#27045](https://github.com/expo/expo/pull/27045) by [@tsapeta](https://github.com/tsapeta))
- Introduce `EXCreateReactBindingRootView` to create correct React Native setup for New Architecture mode. ([#27216](https://github.com/expo/expo/pull/27216) by [@kudo](https://github.com/kudo))
- Set bridge on `AppContext` in `ExpoBridgeModule`. ([#27378](https://github.com/expo/expo/pull/27378) by [@alanjhughes](https://github.com/alanjhughes))
- Added TypeScript declarations and documentation for global JSI bindings. ([#27465](https://github.com/expo/expo/pull/27465) by [@tsapeta](https://github.com/tsapeta))
- [iOS] Added bridgeless support on ExpoReactDelegate. ([#27601](https://github.com/expo/expo/pull/27601), [#27689](https://github.com/expo/expo/pull/27689) by [@kudo](https://github.com/kudo))
- [Android] Added bridgeless support on ReactNativeHostHandler. ([#27629](https://github.com/expo/expo/pull/27629) by [@kudo](https://github.com/kudo))
- Refactored out `EXReactRootViewFactory.createDefaultReactRootView:` to `RCTAppDelegate.recreateRootViewWithBundleURL:` category. ([#27945](https://github.com/expo/expo/pull/27945) by [@kudo](https://github.com/kudo))
- Added `ReactNativeHostHandler.onReactInstanceException()` for client to listen for exceptions on Android. ([#27815](https://github.com/expo/expo/pull/27815) by [@kudo](https://github.com/kudo))
- Removed the legacy interfaces for font processors as they are no longer used by `expo-font` and nothing else depends on them. ([#26380](https://github.com/expo/expo/pull/26380) by [@tsapeta](https://github.com/tsapeta))
- Removed deprecated backward compatible Gradle settings. ([#28083](https://github.com/expo/expo/pull/28083) by [@kudo](https://github.com/kudo))
- Bumped Kotlin version to 1.9.23. ([#28088](https://github.com/expo/expo/pull/28088) by [@kudo](https://github.com/kudo))
- Introduced `onDidCreateDevSupportManager` handler to support error recovery from expo-updates. ([#28177](https://github.com/expo/expo/pull/28177) by [@kudo](https://github.com/kudo))
- Dropped support for custom type converters on Android. ([#28252](https://github.com/expo/expo/pull/28252) by [@lukmccall](https://github.com/lukmccall))
- Introduced `ExpoReactDelegateHandler.bundleURL` for clients to override newer bundleURL. ([#28256](https://github.com/expo/expo/pull/28256) by [@kudo](https://github.com/kudo))

## 1.11.11 - 2024-03-11

### 🐛 Bug fixes

- [Android] Ensured that `onCreate` before `OnActivityEntersForeground` event. ([#26944](https://github.com/expo/expo/pull/26944) by [@lukmccall](https://github.com/lukmccall))
- [Android] Fixed activity contract registration after host destruction. ([#26881](https://github.com/expo/expo/pull/26881) by [@lukmccall](https://github.com/lukmccall))

## 1.11.10 - 2024-03-06

### 🐛 Bug fixes

- [Android] Thrown an exception when nested types can't be converted instead of crashing the app. ([#27449](https://github.com/expo/expo/pull/27449) by [@lukmccall](https://github.com/lukmccall))

## 1.11.9 - 2024-02-16

### 🎉 New features

- Add timer capability to Logger. ([#26454](https://github.com/expo/expo/pull/26454), [#26477](https://github.com/expo/expo/pull/26477) by [@wschurman](https://github.com/wschurman))
- Add iOS support for `PlatformColor` and `DynamicColorIOS` color props. ([#26724](https://github.com/expo/expo/pull/26724) by [@dlindenkreuz](https://github.com/dlindenkreuz))
- `BarCodeScannerResult` interface now declares an additional `raw` field corresponding to the barcode value as it was encoded in the barcode without parsing. Will always be undefined on iOS. ([#25391](https://github.com/expo/expo/pull/25391) by [@ajacquierbret](https://github.com/ajacquierbret))

## 1.11.8 - 2024-01-23

### 🐛 Bug fixes

- Fix proguard rules so `Serializable` types are not obfuscated. ([#26545](https://github.com/expo/expo/pull/26545) by [@alanjhughes](https://github.com/alanjhughes))

## 1.11.7 - 2024-01-18

_This version does not introduce any user-facing changes._

## 1.11.6 - 2024-01-12

_This version does not introduce any user-facing changes._

## 1.11.5 - 2024-01-10

### 🎉 New features

- Added support for returning shared refs from async functions. ([#26341](https://github.com/expo/expo/pull/26341) by [@aleqsio](https://github.com/aleqsio))
- Added support for macOS platform. ([#26186](https://github.com/expo/expo/pull/26186) by [@tsapeta](https://github.com/tsapeta))
- Add `Date` type converter. ([#26148](https://github.com/expo/expo/pull/26148) by [@alanjhughes](https://github.com/alanjhughes))

### 🐛 Bug fixes

- Adjust proguard rules to prevent issues with types implementing `Enumerable`. ([#26108](https://github.com/expo/expo/pull/26108) by [@alanjhughes](https://github.com/alanjhughes))

### 💡 Others

- Replace deprecated `com.facebook.react:react-native:+` Android dependency with `com.facebook.react:react-android`. ([#26237](https://github.com/expo/expo/pull/26237) by [@kudo](https://github.com/kudo))

## 1.11.4 - 2023-12-21

_This version does not introduce any user-facing changes._

## 1.11.3 - 2023-12-19

### 🐛 Bug fixes

- [iOS] Fixed `SharedObjectRegistry` crash for accessing internal data structures from multi-threads. ([#25997](https://github.com/expo/expo/pull/25997) by [@kudo](https://github.com/kudo))
- Fixed splash screen view flickering in dark mode on iOS. ([#26015](https://github.com/expo/expo/pull/26015), [#26029](https://github.com/expo/expo/pull/26029) by [@kudo](https://github.com/kudo))
- Fixed `SharedObject` leakage on Android. ([#25995](https://github.com/expo/expo/pull/25995) by [@kudo](https://github.com/kudo))

## 1.11.2 — 2023-12-15

### 💡 Others

- [Android] Bump Kotlin version from `1.8.10` to `1.8.22`. ([#25945](https://github.com/expo/expo/pull/25945) by [@lukmccall](https://github.com/lukmccall))

## 1.11.1 — 2023-12-12

### 🐛 Bug fixes

- [Android] Fixed `OnCreate` was called before the `React` instance was ready. ([#25866](https://github.com/expo/expo/pull/25866) by [@lukmccall](https://github.com/lukmccall))

## 1.11.0 — 2023-12-12

### 🎉 New features

- Added support for React Native 0.73.0. ([#24971](https://github.com/expo/expo/pull/24971), [#25453](https://github.com/expo/expo/pull/25453) by [@gabrieldonadel](https://github.com/gabrieldonadel))
- Added `Data <-> Uint8Array` convertible on iOS. ([#25726](https://github.com/expo/expo/pull/25726) by [@kudo](https://github.com/kudo))
- Added `ByteArray <-> Uint8Array` convertible on Android. ([#25727](https://github.com/expo/expo/pull/25727) by [@kudo](https://github.com/kudo))

### 🐛 Bug fixes

- [Android] Prevent the app from crashing during reloading when an unfinished promise tries to execute.
- [Android] Fix `JavaScriptFunction` not working when the return type wasn't provided. ([#25688](https://github.com/expo/expo/pull/25688) by [@lukmccall](https://github.com/lukmccall))
- [Android] Fix requesting only `WRITE_SETTINGS` rejecting promise even if the permission was granted. ([#25732](https://github.com/expo/expo/pull/25732) by [@lukmccall](https://github.com/lukmccall))
- [Android] Fix functions that are scheduled on the main thread weren't being called as soon as possible. ([#25757](https://github.com/expo/expo/pull/25757) by [@lukmccall](https://github.com/lukmccall))

### 💡 Others

- [iOS] Made dynamic types creation faster. ([#25390](https://github.com/expo/expo/pull/25390) by [@tsapeta](https://github.com/tsapeta))
- [iOS] Add `FileSystemUtilities` to replace legacy interfaces. ([#25495](https://github.com/expo/expo/pull/25495) by [@alanhughes](https://github.com/alanjhughes))
- Bump C++ compiler setting to C++20. ([#25548](https://github.com/expo/expo/pull/25548) by [@kudo](https://github.com/kudo))
- Marked `NativeModulesProxy` as deprecated in favor of `requireNativeModule` and `requireOptionalNativeModule`. ([#25666](https://github.com/expo/expo/pull/25666) by [@tsapeta](https://github.com/tsapeta))

## 1.10.0 — 2023-11-14

### 🛠 Breaking changes

- Bumped iOS deployment target to 13.4. ([#25063](https://github.com/expo/expo/pull/25063) by [@gabrieldonadel](https://github.com/gabrieldonadel))
- On `Android` bump `compileSdkVersion` and `targetSdkVersion` to `34`. ([#24708](https://github.com/expo/expo/pull/24708) by [@alanjhughes](https://github.com/alanjhughes))

### 🎉 New features

- Add `preventModuleOverriding` to `ModuleRegistry.register` method. ([#24860](https://github.com/expo/expo/pull/24860) by [@wschurman](https://github.com/wschurman))
- [iOS] `CGFloat` can now be used as an argument type. ([#25140](https://github.com/expo/expo/pull/25140) by [@tsapeta](https://github.com/tsapeta))

### 🐛 Bug fixes

- Mock native code on web platforms. ([#25264](https://github.com/expo/expo/pull/25264) by [@EvanBacon](https://github.com/EvanBacon))
- [iOS] Fixed the object identifier for shared object types. ([#25060](https://github.com/expo/expo/pull/25060) by [@tsapeta](https://github.com/tsapeta))
- [iOS] Fixed concurrent functions (async/await) not converting results such as records and shared objects. ([#25075](https://github.com/expo/expo/pull/25075) by [@tsapeta](https://github.com/tsapeta))
- [iOS] Fixed concurrent functions (async/await) not supporting an owner argument (view and class functions). ([#25141](https://github.com/expo/expo/pull/25141) by [@tsapeta](https://github.com/tsapeta))
- Fixed UIView arguments not being resolved correctly when passed in with findNodeHandle ([#24703](https://github.com/expo/expo/pull/24703) by [@javache](https://github.com/javache))
- [Android] Improve boot time on low-end devices. ([#25267](https://github.com/expo/expo/pull/25267) by [@lukmccall](https://github.com/lukmccall))
- [Android] Improve performance of enum and map converters. ([#25272](https://github.com/expo/expo/pull/25272) by [@lukmccall](https://github.com/lukmccall))
- [Android] Improve logic responsible for obtaining converters that slow down the startup time. ([#25273](https://github.com/expo/expo/pull/25273) by [@lukmccall](https://github.com/lukmccall))
- [Android] Improving the creation process of views for better performance. ([#25274](https://github.com/expo/expo/pull/25274) by [@lukmccall](https://github.com/lukmccall))

### 💡 Others

- Remove `unimodule.json` in favour of `expo-module.config.json`. ([#25100](https://github.com/expo/expo/pull/25100) by [@reichhartd](https://github.com/reichhartd))
- Remove deprecated `REACT_NATIVE_OVERRIDE_VERSION` for React Native nightly testing. ([#25151](https://github.com/expo/expo/pull/25151) by [@kudo](https://github.com/kudo))
- Removed backward compatible code for deprecated SDKs. ([#25154](https://github.com/expo/expo/pull/25154) by [@kudo](https://github.com/kudo))

## 1.9.0 — 2023-10-17

### 🛠 Breaking changes

- Dropped support for Android SDK 21 and 22. ([#24201](https://github.com/expo/expo/pull/24201) by [@behenate](https://github.com/behenate))

### 🎉 New features

- Add `CommonExceptions.ModuleNotFound`. ([#24898](https://github.com/expo/expo/pull/24898) by [@lukmccall](https://github.com/lukmccall))
- [Android] `Set<T>` can now be passed as an argument to a module method. ([#24897](https://github.com/expo/expo/pull/24897) by [@lukmccall](https://github.com/lukmccall))

### 🐛 Bug fixes

- Fixed typed arrays couldn't be returned from synchronous functions. ([#24744](https://github.com/expo/expo/pull/24744) by [@lukmccall](https://github.com/lukmccall))
- [iOS] Fixed exception when deallocating shared objects. ([#24836](https://github.com/expo/expo/pull/24836) by [@kudo](https://github.com/kudo))
- [Android] Fixed `null` or `undefined` wasn't converted to `JavaScriptValue`. ([#24899](https://github.com/expo/expo/pull/24899) by [@lukmccall](https://github.com/lukmccall))
- [Android] Fixed `Either` converter not working with types that have common representation in JavaScript. ([#24903](https://github.com/expo/expo/pull/24903) by [@lukmccall](https://github.com/lukmccall))
- [Android] `Any` converter doesn't use `ReadableMap` or `ReadableList` anymore. Objects and arrays are converted to Kotlin's primitives. ([#24963](https://github.com/expo/expo/pull/24963) by [@lukmccall](https://github.com/lukmccall))

### 💡 Others

- Improve tracking on Android. ([#24625](https://github.com/expo/expo/pull/24625) by [@lukmccall](https://github.com/lukmccall))
- Use native UUIDv5 generation on `Android` and `iOS`. ([#24200](https://github.com/expo/expo/pull/24200) by [@behenate](https://github.com/behenate))
- Ensure native modules are installed before required. ([#24746](https://github.com/expo/expo/pull/24746) by [@tsapeta](https://github.com/tsapeta))
- Clean up and restructure the modules core package directory. ([#24816](https://github.com/expo/expo/pull/24816) by [@tsapeta](https://github.com/tsapeta))

## 1.8.0 — 2023-09-15

### 🎉 New features

- Added support for Apple tvOS. ([#24329](https://github.com/expo/expo/pull/24329) by [@douglowder](https://github.com/douglowder))

### 💡 Others

- Remove deprecated `RCTDeviceEventEmitter`. ([#24298](https://github.com/expo/expo/pull/24298) by [@EvanBacon](https://github.com/EvanBacon))
- Remove `deprecate` utility function. ([#24298](https://github.com/expo/expo/pull/24298) by [@EvanBacon](https://github.com/EvanBacon))
- Deprecate `SyntheticPlatformEmitter` in favor of `DeviceEventEmitter`. ([#24298](https://github.com/expo/expo/pull/24298) by [@EvanBacon](https://github.com/EvanBacon))
- Introduced an AppContext config to provide things like documents and caches directories for the modules. ([#24292](https://github.com/expo/expo/pull/24292) by [@tsapeta](https://github.com/tsapeta))
- Fixed random `NullPointerExceptions` when calling `Updates.reloadAsync` on Android. ([#24442](https://github.com/expo/expo/pull/24442) by [@lukmccall](https://github.com/lukmccall))
- Converting shared object id passed as a prop to the associated native object. ([#24431](https://github.com/expo/expo/pull/24431) by [@tsapeta](https://github.com/tsapeta))
- Added a convenient method to get the app delegate subscriber of the given type. ([#23943](https://github.com/expo/expo/pull/23943) by [@tsapeta](https://github.com/tsapeta))

## 1.7.0 — 2023-09-04

### 🎉 New features

- [Android] Surfaced errorManager to allow throwing errors and warnings from modules. ([#23848](https://github.com/expo/expo/pull/23848) by [@aleqsio](https://github.com/aleqsio))
- [Android] Enums can now be used to define events. ([#23875](https://github.com/expo/expo/pull/23875) by [@lukmccall](https://github.com/lukmccall))
- [Android] Promises can now be resolved without arguments. ([#23907](https://github.com/expo/expo/pull/23907) by [@lukmccall](https://github.com/lukmccall))
- Added support for React Native 0.73. ([#24018](https://github.com/expo/expo/pull/24018), [#24019](https://github.com/expo/expo/pull/24019) by [@kudo](https://github.com/kudo))
- [Android] `Property` component can now take the native shared object instance as the first argument. ([#24206](https://github.com/expo/expo/pull/24206) by [@lukmccall](https://github.com/lukmccall))
- Introduced `requireOptionalNativeModule` that returns `null` when the module cannot be found instead of throwing an error. ([#24262](https://github.com/expo/expo/pull/24262) by [@tsapeta](https://github.com/tsapeta))
- [Android] Introduced shared refs – a way to pass native objects among different independent modules. ([#24446](https://github.com/expo/expo/pull/24446) by [@lukmccall](https://github.com/lukmccall))

### 🐛 Bug fixes

- [Android] Refresh NativeModulesProxy if app bundle is reloaded. ([#23824](https://github.com/expo/expo/pull/23824) by [@douglowder](https://github.com/douglowder))
- [Android] Fix nullability of parameter type in `List` and `Map` when converting from JS to native. ([#23942](https://github.com/expo/expo/pull/23942) by [@lukmccall](https://github.com/lukmccall))
- Fixed Fabric setup error on iOS. ([#24004](https://github.com/expo/expo/pull/24004) by [@kudo](https://github.com/kudo))
- Fixed uuid v4 generation. ([#24123](https://github.com/expo/expo/pull/24123) by [@tsapeta](https://github.com/tsapeta))
- [Android] Fixed owner type of view functions. ([#24135](https://github.com/expo/expo/pull/24135) by [@lukmccall](https://github.com/lukmccall))
- [Android] Fixed IOException `No space left on device` when saving persistent log. ([#24247](https://github.com/expo/expo/pull/24247) by [@RodolfoGS](https://github.com/RodolfoGS))

### 💡 Others

- Use native UUIDv4 generation on `Android` and `iOS`. ([#24199](https://github.com/expo/expo/pull/24199) by [@behenate](https://github.com/behenate))
- [Android] Add type converter for the `ReadableArguments` class to allow backward compatibility with older modules. ([#24137](https://github.com/expo/expo/pull/24137) by [@lukmccall](https://github.com/lukmccall))
- [Android] `SharedObjectTypeConverter` now can work with the `Dynamic` class. ([#24207](https://github.com/expo/expo/pull/24207) by [@lukmccall](https://github.com/lukmccall))
- [Android] Expose a conversion between id and shared objects. ([#24220](https://github.com/expo/expo/pull/24220) by [@lukmccall](https://github.com/lukmccall))

## 1.6.0 — 2023-07-28

### 🐛 Bug fixes

- [iOS] Fixed custom fonts support on Fabric. ([#23666](https://github.com/expo/expo/pull/23666) by [@aleqsio](https://github.com/aleqsio))
- [Android] Fixed splash screen is missing when using the `getDelayLoadAppHandler()` from expo-updates. ([#23747](https://github.com/expo/expo/pull/23747) by [@kudo](https://github.com/kudo))

### 💡 Others

- Fork `uuid@3.4.0` and move into `expo-modules-core`. Remove the original dependency. ([#23249](https://github.com/expo/expo/pull/23249) by [@alanhughes](https://github.com/alanjhughes))
- Improved error handling when working with native promises on Android. ([#23571](https://github.com/expo/expo/pull/23571) by [@lukmccall](https://github.com/lukmccall))
- Added tracing to avoid slow app startup on Android. ([#23653](https://github.com/expo/expo/pull/23653) by [@lukmccall](https://github.com/lukmccall))

## 1.5.8 - 2023-07-23

### 🐛 Bug fixes

- Fixed the `ErrorViewGroup` cannot be cast to module view class exception on Android. ([#23651](https://github.com/expo/expo/pull/23651) by [@lukmccall](https://github.com/lukmccall))
- [iOS] Fix allowed orientations set in `Info.plist` being ignored when no delegates requested a different orientation. ([#23593](https://github.com/expo/expo/pull/23593) by [@behenate](https://github.com/behenate))

## 1.5.7 — 2023-07-12

### 🐛 Bug fixes

- Fixed regressions and crashes in the dev client introduced by [#23405](https://github.com/expo/expo/pull/23405). ([#23491](https://github.com/expo/expo/pull/23491) by [@kudo](https://github.com/kudo))

## 1.5.6 - 2023-07-10

### 🐛 Bug fixes

- Fixed the Network Inspector cannot preview response body for response without the `Content-Length` header. ([#23405](https://github.com/expo/expo/pull/23405) by [@kudo](https://github.com/kudo))
- Fixed `SoLoader` does not work on Android. ([#23415](https://github.com/expo/expo/pull/23415) by [@kudo](https://github.com/kudo))
- Fixed slower boot time on Android. ([#23345](https://github.com/expo/expo/pull/23345) by [@lukmccall](https://github.com/lukmccall))

## 1.5.5 - 2023-07-07

### 🐛 Bug fixes

- Improved the OkHttp network inspector stability on Android. ([#23350](https://github.com/expo/expo/pull/23350) by [@kudo](https://github.com/kudo))
- [iOS] Fix conversion to `URL` type that failed despite receiving a string that contained a valid URL. ([#23331](https://github.com/expo/expo/pull/23331) by [@alanhughes](https://github.com/alanjhughes)) ([#23331](https://github.com/expo/expo/pull/23331) by [@alanjhughes](https://github.com/alanjhughes))

## 1.5.4 - 2023-07-04

### 🐛 Bug fixes

- Fix the `View cannot be cast to ViewGroup` exception on Android. ([#23264](https://github.com/expo/expo/pull/23264) by [@lukmccall](https://github.com/lukmccall))

### 💡 Others

- Changed Objective-C names for `ExpoReactDelegate` and `ExpoReactDelegateHandler` to fix issues with versioning in Expo Go. ([#23229](https://github.com/expo/expo/pull/23229) by [@tsapeta](https://github.com/tsapeta))

## 1.5.3 — 2023-06-24

### 🎉 New features

- Supported other network CDP types like `Image` and `Media` rather than `Fetch`. ([#23058](https://github.com/expo/expo/pull/23058) by [@kudo](https://github.com/kudo))

## 1.5.2 — 2023-06-24

_This version does not introduce any user-facing changes._

## 1.5.1 — 2023-06-22

_This version does not introduce any user-facing changes._

## 1.5.0 — 2023-06-21

### 💡 Others

- [iOS] Added Interface Geometry Management section to ExpoAppDelegate. ([#22599](https://github.com/expo/expo/pull/22599) by [@behenate](https://github.com/behenate))

## 1.4.0 — 2023-06-13

### 📚 3rd party library updates

- Updated `robolectric` to `4.10` and `junit` to `4.13.2`. ([#22395](https://github.com/expo/expo/pull/22395) by [@josephyanks](https://github.com/josephyanks))

### 🎉 New features

- Added `ReactActivityHandler.getDelayLoadAppHandler` interface on Android. ([#20273](https://github.com/expo/expo/pull/20273) by [@kudo](https://github.com/kudo))
- [iOS] Introduced shared refs – a way to pass native objects among different independent modules. ([#22583](https://github.com/expo/expo/pull/22583) by [@tsapeta](https://github.com/tsapeta))
- Added support for React Native 0.72. ([#22588](https://github.com/expo/expo/pull/22588) by [@kudo](https://github.com/kudo))

### 🐛 Bug fixes

- Fix failing instrumentation tests in JavaScriptViewModule. ([#22518](https://github.com/expo/expo/pull/22518) by [@aleqsio](https://github.com/aleqsio))
- Fixed Android build warnings for Gradle version 8. ([#22537](https://github.com/expo/expo/pull/22537), [#22609](https://github.com/expo/expo/pull/22609) by [@kudo](https://github.com/kudo))
- [Android] Fix the `Color` converter doesn't work on devices with SDK version below 26. ([#22191](https://github.com/expo/expo/pull/22191) by [@lukmccall](https://github.com/lukmccall))
- Refactored network inspector code and add unit tests. ([#22669](https://github.com/expo/expo/pull/22669), [#22693](https://github.com/expo/expo/pull/22693) by [@kudo](https://github.com/kudo))

### 💡 Others

- Updated `androidx.activity:activity-ktx` to `1.7.1` and `androidx.fragment:fragment-ktx` to `1.5.7` [#22658](https://github.com/expo/expo/pull/22658) by [@fobos531](https://github.com/fobos531)

## 1.3.2 — 2023-05-09

### 🐛 Bug fixes

- Fixed passing `JavaScriptObject` argument and view props. ([#22427](https://github.com/expo/expo/pull/22427) by [@lukmccall](https://github.com/lukmccall))

## 1.3.1 — 2023-05-08

### 💡 Others

- Made `JavaScriptValue.kind` public. ([#22386](https://github.com/expo/expo/pull/22386) by [@lukmccall](https://github.com/lukmccall))

## 1.3.0 — 2023-05-08

### 🎉 New features

- [iOS] Introduced native functions on the native component instances. ([#21746](https://github.com/expo/expo/pull/21746) by [@tsapeta](https://github.com/tsapeta))
- View tag and React component ref can now be converted to an instance of the native view when used as a function's argument. ([#21816](https://github.com/expo/expo/pull/21816) by [@lukmccall](https://github.com/lukmccall), [#21829](https://github.com/expo/expo/pull/21829) by [@tsapeta](https://github.com/tsapeta))
- JavaScript functions can now be passed as an argument to a module method. ([#21976](https://github.com/expo/expo/pull/21976) by [@lukmccall](https://github.com/lukmccall), [#22245](https://github.com/expo/expo/pull/22245) by [@tsapeta](https://github.com/tsapeta))
- [iOS] Initializing and returning shared objects from the native side. ([#22195](https://github.com/expo/expo/pull/22195) by [@tsapeta](https://github.com/tsapeta))

### 🐛 Bug fixes

- Fixed build errors on React Native 0.72.x. ([#22170](https://github.com/expo/expo/pull/22170), [#22189](https://github.com/expo/expo/pull/22189) by [@kudo](https://github.com/kudo))
- [Android] Fixed argument trailing not working correctly when all parameters are optional. ([#22293](https://github.com/expo/expo/pull/22293) by [@lukmccall](https://github.com/lukmccall))

### 💡 Others

- [Android] Made `fallbackCallback` optional in the `registerForActivityResult` method. ([#21661](https://github.com/expo/expo/pull/21661) by [@lukmccall](https://github.com/lukmccall))
- [iOS] Removed the legacy implementation of view managers. ([#21760](https://github.com/expo/expo/pull/21760) by [@tsapeta](https://github.com/tsapeta))
- [iOS] Passed the app context instance down to dynamic types, object builders and convertibles. ([#21819](https://github.com/expo/expo/pull/21819) by [@tsapeta](https://github.com/tsapeta))
- [iOS] Use `jsi::WeakObject` for weak objects on Hermes. ([#21986](https://github.com/expo/expo/pull/21986) by [@tsapeta](https://github.com/tsapeta))
- [iOS] Removed legacyViewManager references from ExpoFabricView. ([#22089](https://github.com/expo/expo/pull/22089) by [@gabrieldonadel](https://github.com/gabrieldonadel))
- [iOS] Dropped `proxiedProperties` prop. ([#22280](https://github.com/expo/expo/pull/22280) by [@tsapeta](https://github.com/tsapeta))

## 1.2.7 - 2023-05-03

### 🐛 Bug fixes

- [Android] Improve the initial loading speed of the native view. ([#22153](https://github.com/expo/expo/pull/22153) by [@lukmccall](https://github.com/lukmccall))

## 1.2.6 - 2023-03-20

### 🐛 Bug fixes

- [Android] Fixed `ReadableNativeMap` cannot be cast to the `Record`. ([#21773](https://github.com/expo/expo/pull/21773) by [@lukmccall](https://github.com/lukmccall))

## 1.2.5 - 2023-03-14

### 🐛 Bug fixes

- [Android] Fixed coroutine functions crashing when invoked with more than 1 argument. ([#21635](https://github.com/expo/expo/pull/21635) by [@lukmccall](https://github.com/lukmccall))
- [iOS] Fix automatic percent-encoding when converting to the `URL` object. ([#21569](https://github.com/expo/expo/pull/21569) by [@tsapeta](https://github.com/tsapeta))

## 1.2.4 - 2023-03-03

### 🐛 Bug fixes

- [iOS] Fixed jsc import when using use_frameworks ([#21479](https://github.com/expo/expo/pull/21479) by [@gabrieldonadel](https://github.com/gabrieldonadel))

## 1.2.3 - 2023-02-21

### 🐛 Bug fixes

- [iOS] Fixed URI with encoded `#` getting cut off. ([#21326](https://github.com/expo/expo/pull/21326) by [@lukmccall](https://github.com/lukmccall))
- [Android] Fail gracefully when the view cannot be constructed due to the missing activity. ([#21328](https://github.com/expo/expo/pull/21328) by [@lukmccall](https://github.com/lukmccall))

## 1.2.2 — 2023-02-14

### 🐛 Bug fixes

- [iOS] Fixed convertible implementation for `URL` type to support unencoded UTF8 urls and file paths. ([#21139](https://github.com/expo/expo/pull/21139) by [@tsapeta](https://github.com/tsapeta))
- Fixed AppDelegateSubscriber broken when running on iOS dynamic framework or static framework mode. ([#21206](https://github.com/expo/expo/pull/21206) by [@kudo](https://github.com/kudo))

## 1.2.1 — 2023-02-09

### 🐛 Bug fixes

- Fix crash when reloading app while expo-av video is playing. ([#21118](https://github.com/expo/expo/pull/21118) by [@janicduplessis](https://github.com/janicduplessis))

## 1.2.0 — 2023-02-03

### 🎉 New features

- View-related DSL functions do not require providing the view's type in function parameters on Android. ([#20751](https://github.com/expo/expo/pull/20751) by [@lukmccall](https://github.com/lukmccall))
- Add support for the `Long` type as function parameters on Android. ([#20787](https://github.com/expo/expo/pull/20787) by [@lukmccall](https://github.com/lukmccall))
- [Android] Added experimental support for building the function result from the object definition. ([#20864](https://github.com/expo/expo/pull/20864) by [@lukmccall](https://github.com/lukmccall))
- Removed boost dependency which needs extra downloading on Android. ([#21000](https://github.com/expo/expo/pull/21000) by [@kudo](https://github.com/kudo))

### 🐛 Bug fixes

- Fix view prop setter not being called when its new value is `null` or `undefined`. ([#20755](https://github.com/expo/expo/pull/20755) & [#20766](https://github.com/expo/expo/pull/20766) by [@tsapeta](https://github.com/tsapeta) & [@lukmccall](https://github.com/lukmccall))
- Fixed "Tried to register two views with the same name" error on fast refresh. ([#20788](https://github.com/expo/expo/pull/20788) by [@tsapeta](https://github.com/tsapeta))

### 💡 Others

- On Android bump `compileSdkVersion` and `targetSdkVersion` to `33`. ([#20721](https://github.com/expo/expo/pull/20721) by [@lukmccall](https://github.com/lukmccall))

## 1.1.1 — 2023-01-06

### 🎉 New features

- Added support for concurrent (async/await) functions in Swift. ([#20645](https://github.com/expo/expo/pull/20645) by [@tsapeta](https://github.com/tsapeta))
- [iOS] Added experimental support for building the function result from the object definition. ([#20623](https://github.com/expo/expo/pull/20623) by [@tsapeta](https://github.com/tsapeta))

### 🐛 Bug fixes

- Fixed boost build error on Android. ([#20719](https://github.com/expo/expo/pull/20719) by [@kudo](https://github.com/kudo))

## 1.1.0 — 2022-12-30

### 🎉 New features

- Added TS definitions for `TypedArray` and additional union types for Int, Uint and Float TypedArrays. ([#20257](https://github.com/expo/expo/pull/20257) by [@aleqsio](https://github.com/aleqsio))
- Added a new `executeOnJavaScriptThread` method to `appContext` to allow for running code blocks on the JS thread. ([#20161](https://github.com/expo/expo/pull/20161) by [@aleqsio](https://github.com/aleqsio))
- Added the `Exceptions.MissingActivity` on Android. ([#20174](https://github.com/expo/expo/pull/20174) by [@lukmccall](https://github.com/lukmccall))
- Trailing optional arguments can be skipped when calling native functions from JavaScript on iOS. ([#20234](https://github.com/expo/expo/pull/20234) by [@tsapeta](https://github.com/tsapeta))
- `Events` component can now be initialized with an array of event names (not only variadic arguments). ([#20590](https://github.com/expo/expo/pull/20590) by [@tsapeta](https://github.com/tsapeta))
- `Property` component can now take the native shared object instance as the first argument. ([#20608](https://github.com/expo/expo/pull/20608) by [@tsapeta](https://github.com/tsapeta))
- Added support for referencing to `Property`'s owner properties using Swift key paths. ([#20610](https://github.com/expo/expo/pull/20610) by [@tsapeta](https://github.com/tsapeta))

### 🐛 Bug fixes

- Fixed build errors when testing on React Native nightly builds. ([#19805](https://github.com/expo/expo/pull/19805) by [@kudo](https://github.com/kudo))
- Fixed failed resolution of 'java.nio.file.Path' on Android. ([#20037](https://github.com/expo/expo/pull/20037) by [@lukmccall](https://github.com/lukmccall))
- Fixed libraries using the `ViewDefinitionBuilder` crashes when ProGuard or R8 is enabled on Android. ([#20197](https://github.com/expo/expo/pull/20197) by [@lukmccall](https://github.com/lukmccall))
- Fixed Either types not supporting non-primitive types on iOS. ([#20247](https://github.com/expo/expo/pull/20247) by [@tsapeta](https://github.com/tsapeta))
- Fixed Function not supporting certain arities on Android. ([#20419](https://github.com/expo/expo/pull/20419) by [@motiz88](https://github.com/motiz88))
- Added React Native 0.71 support. ([#20470](https://github.com/expo/expo/pull/20470) by [@kudo](https://github.com/kudo))
- Fixed the `SharedObject` initializer being inaccessible due to `internal` protection level. ([#20588](https://github.com/expo/expo/pull/20588) by [@tsapeta](https://github.com/tsapeta))

### 💡 Others

- [iOS] Make `Enumerable` protocol implement `CaseIterable` to get rid of operating on unsafe pointers. ([#20640](https://github.com/expo/expo/pull/20640) by [@tsapeta](https://github.com/tsapeta))

## 1.0.4 - 2022-12-21

### 🐛 Bug fixes

- Fixed views are not correctly initialized after reloading on Android. ([#20063](https://github.com/expo/expo/pull/20063) by [@lukmccall](https://github.com/lukmccall))
- Fixed threading crash issue when running with Hermes on iOS. ([#20506](https://github.com/expo/expo/pull/20506) by [@kudo](https://github.com/kudo))

## 1.0.2 - 2022-11-08

### 💡 Others

- Rephrased the message of `ArgumentCastException` to use ordinal numbers. ([#19912](https://github.com/expo/expo/pull/19912) by [@tsapeta](https://github.com/tsapeta))

## 1.0.1 - 2022-11-07

### 🐛 Bug fixes

- Added a list of the acceptable enum values to the conversion error on Android. ([#19895](https://github.com/expo/expo/pull/19895) by [@lukmccall](https://github.com/lukmccall))
- Fixed `new NativeEventEmitter() was called with a non-null argument without the required addListener method.` warnings on Android with JSC. ([#19920](https://github.com/expo/expo/pull/19920) by [@kudo](https://github.com/kudo))

### 💡 Others

- Exposed coroutines related packages on Android. ([#19896](https://github.com/expo/expo/pull/19896) by [@lukmccall](https://github.com/lukmccall))

## 1.0.0 — 2022-11-03

_This version does not introduce any user-facing changes._

## 0.13.4 — 2022-11-02

### 🐛 Bug fixes

- Fixed build errors when testing on React Native nightly builds. ([#19369](https://github.com/expo/expo/pull/19369) by [@kudo](https://github.com/kudo))

## 0.13.3 — 2022-10-30

### 🎉 New features

- Added `AppContext.hasActiveReactInstance` on Android. ([#19723](https://github.com/expo/expo/pull/19723) by [@lukmccall](https://github.com/lukmccall))

## 0.13.2 — 2022-10-28

### 🐛 Bug fixes

- Fixed `new NativeEventEmitter() was called with a non-null argument without the required addListener method.` warnings on Android. ([#19704](https://github.com/expo/expo/pull/19704) by [@kudo](https://github.com/kudo), [@kudo](https://github.com/kudo))

## 0.13.1 — 2022-10-27

### 🐛 Bug fixes

- Fixed `~CallbackWrapper()` dangling pointer crashes when reloading the app on Android. ([#19699](https://github.com/expo/expo/pull/19699) by [@kudo](https://github.com/kudo), [@kudo](https://github.com/kudo))

## 0.13.0 — 2022-10-25

### 🛠 Breaking changes

- Convertible enums must inherit from `expo.modules.kotlin.types.Enumerable` on Android. ([#19551](https://github.com/expo/expo/pull/19551) by [@lukmccall](https://github.com/lukmccall))
- `AppContext.currentActivity` is not longer returning `AppCompatActivity`, but an instance of `android.app.Activity` class. ([#19573](https://github.com/expo/expo/pull/19573) by [@lukmccall](https://github.com/lukmccall))

### ⚠️ Notices

- Deprecated `ConvertibleArgument` in favor of `Convertible` and `EnumArgument` in favor of `Enumerable`. ([#19612](https://github.com/expo/expo/pull/19612) by [@tsapeta](https://github.com/tsapeta))

### 🎉 New features

- Implemented a mechanism for hooking into to the view lifecycle events (introduces new `OnViewDidUpdateProps` definition component). ([#19549](https://github.com/expo/expo/pull/19549) by [@tsapeta](https://github.com/tsapeta))

### 🐛 Bug fixes

- Fixed records aren't correctly converted to JS objects in the release builds on Android. ([#19551](https://github.com/expo/expo/pull/19551) by [@lukmccall](https://github.com/lukmccall))
- Reject promises with a `CodedError` instead of a plain object. ([#19605](https://github.com/expo/expo/pull/19605) by [@tsapeta](https://github.com/tsapeta))

### 💡 Others

- Simplified dispatching view events. ([#19537](https://github.com/expo/expo/pull/19537) by [@tsapeta](https://github.com/tsapeta))

## 0.12.0 — 2022-10-06

### 🛠 Breaking changes

- Bumped iOS deployment target to 13.0 and deprecated support for iOS 12. ([#18873](https://github.com/expo/expo/pull/18873) by [@tsapeta](https://github.com/tsapeta))

### ⚠️ Notices

- Removed deprecated module definition components that started with a lowercase letter. ([#18851](https://github.com/expo/expo/pull/18851) by [@tsapeta](https://github.com/tsapeta))
- Added support for React Native 0.70.x. ([#19261](https://github.com/expo/expo/pull/19261) by [@kudo](https://github.com/kudo))

### 🎉 New features

- Added the interface for the light sensor support on Android. ([#18225](https://github.com/expo/expo/pull/18225) by [bearkillerPT](https://github.com/bearkillerPT))
- Add better JSI error handling on Android. ([#18259](https://github.com/expo/expo/pull/18259) by [@lukmccall](https://github.com/lukmccall))
- Experimental support for typed arrays on Android. ([#18379](https://github.com/expo/expo/pull/18379) by [@lukmccall](https://github.com/lukmccall))
- Using JSI instead of the bridge to call native methods also on legacy modules on iOS. ([#18438](https://github.com/expo/expo/pull/18438) by [@tsapeta](https://github.com/tsapeta))
- Experimental support for Fabric on iOS. ([#18500](https://github.com/expo/expo/pull/18500), [#18678](https://github.com/expo/expo/pull/18678) by [@tsapeta](https://github.com/tsapeta))
- Added view prop callbacks support for old-style views written in Objective-C. ([#18636](https://github.com/expo/expo/pull/18636) by [@tsapeta](https://github.com/tsapeta))
- Add Logger support for writing logs to a file; add Logger and associated classes to Android. ([#18513](https://github.com/expo/expo/pull/18513) by [@douglowder](https://github.com/douglowder))
- Experimental support for Fabric on Android. ([#18541](https://github.com/expo/expo/pull/18541) by [@kudo](https://github.com/kudo))
- Add option to generate a `coalescingKey` in callback on Android. ([#18774](https://github.com/expo/expo/pull/18774) by [@lukmccall](https://github.com/lukmccall))
- Automatically convert records to dicts when returned by the function. ([#18824](https://github.com/expo/expo/pull/18824) by [@tsapeta](https://github.com/tsapeta))
- Closures passed to definition components are now implicitly capturing `self` on iOS. ([#18831](https://github.com/expo/expo/pull/18831) by [@tsapeta](https://github.com/tsapeta))
- Support for CSS named colors in `UIColor` and `CGColor` convertibles on iOS. ([#18845](https://github.com/expo/expo/pull/18845) by [@tsapeta](https://github.com/tsapeta))
- Lazy load building the module's JavaScript object from the definition on iOS (already implemented on Android). ([#18863](https://github.com/expo/expo/pull/18863) by [@tsapeta](https://github.com/tsapeta))
- Inferring the view type in `Prop` setter closure. ([#19004](https://github.com/expo/expo/pull/19004) by [@tsapeta](https://github.com/tsapeta))
- [core] Added `REACT_NATIVE_DOWNLOADS_DIR` environment variable to specify custom third party libraries download location. ([#19015](https://github.com/expo/expo/pull/19015) by [@kudo](https://github.com/kudo))
- Add support for the `android.graphics.Color` class as the function parameter. ([#19054](https://github.com/expo/expo/pull/19054) by [@lukmccall](https://github.com/lukmccall))
- Add support for `android.net.Uri`, `java.io.File`, `java.net.URI` and `java.nio.file.Path` classes as function parameters. ([#19169](https://github.com/expo/expo/pull/19169) by [@lukmccall](https://github.com/lukmccall))
- Add the `RegisterActivityContracts` component to register all of activity result contracts on Android. ([#19180](https://github.com/expo/expo/pull/19180) by [@lukmccall](https://github.com/lukmccall))
- Improves JSI/JNI type conversion to support complex function arguments on Android. ([#19120](https://github.com/expo/expo/pull/19120) & [#19094](https://github.com/expo/expo/pull/19094) by [@lukmccall](https://github.com/lukmccall))
- Using JSI instead of the bridge to call native methods also on legacy modules on iOS. ([#19209](https://github.com/expo/expo/pull/19209) by [@lukmccall](https://github.com/lukmccall))
- Added `cacheDirectory` and `persistentFilesDirectory` to `AppContext` on Android to fix cache directories being incorrect in new Sweet API modules. It uses a new `AppDirectoriesModule` to get correct scoped directories from old module API. ([#19205](https://github.com/expo/expo/pull/19205) by [@aleqsio](https://github.com/aleqsio))

### 🐛 Bug fixes

- Fixed the `2 files found with path 'lib/arm64-v8a/libfbjni.so'` error on Android. ([#18607](https://github.com/expo/expo/pull/18607) by [@lukmccall](https://github.com/lukmccall))
- Fixed event dispatching for Sweet API views when running in Fabric mode on Android. ([#18814](https://github.com/expo/expo/pull/18814) by [@kudo](https://github.com/kudo))
- Update gradle excludes to fix detox tests. ([#19254](https://github.com/expo/expo/pull/19254) by [@esamelson](https://github.com/esamelson))
- Fixed event listeners do not work when running with remote debugging mode on iOS. ([#19211](https://github.com/expo/expo/pull/19211) by [@kudo](https://github.com/kudo))
- Use shared C++ runtime to reduce library size on Android. ([#19372](https://github.com/expo/expo/pull/19372) by [@kudo](https://github.com/kudo))
- Fixed `JSCRuntime destroyed with a dangling API object` on Android. ([#19487](https://github.com/expo/expo/pull/19487) by [@lukmccall](https://github.com/lukmccall))

### 💡 Others

- Centralized Android emulator detection for native code and added checks to pick up additional emulator types in `EmulatorUtilities`. ([#16177](https://github.com/expo/expo/pull/16177)) by [@kbrandwijk](https://github.com/kbrandwijk), [@keith-kurak](https://github.com/keith-kurak))
- Created a separate high priority queue for all async function calls. ([#18734](https://github.com/expo/expo/pull/18734) by [@tsapeta](https://github.com/tsapeta))
- The host object for native modules is now installed as `global.expo.modules` instead of `global.ExpoModules`. ([#19273](https://github.com/expo/expo/pull/19273) & [#19281](https://github.com/expo/expo/pull/19281) by [@tsapeta](https://github.com/tsapeta), [@lukmccall](https://github.com/lukmccall))

## 0.11.7 — 2022-10-06

### 🐛 Bug fixes

- Fixed `ModuleRegistry` initialized twice when startup on Android. ([#19384](https://github.com/expo/expo/pull/19384) by [@kudo](https://github.com/kudo) and [@lukmccall](https://github.com/lukmccall))
- Ensure that AppDelegate callbacks are invoked. ([#19393](https://github.com/expo/expo/pull/19393) by [@ferologics](https://github.com/ferologics))
- Fixed Android crash when Activity is destroyed before `AppContext.onHostDestroy` call. ([#19406](https://github.com/expo/expo/pull/19406) by [@kudo](https://github.com/kudo))

## 0.11.6 — 2022-10-02

### 🐛 Bug fixes

- Give precedence to `UIBackgroundFetchResult.newData` over `.failed` in proxied `ExpoAppDelegate.swift` completion handlers. ([#19311](https://github.com/expo/expo/pull/19311) by [@ferologics](https://github.com/ferologics))

## 0.11.5 — 2022-09-01

### 🐛 Bug fixes

- Removed the hard dependency to Hermes or JSC in _libexpo-modules-core.so_ on Android and fixed the broken support for react-native-v8. ([#18899](https://github.com/expo/expo/pull/18899) by [@kudo](https://github.com/kudo))

## 0.11.4 — 2022-08-18

### 🐛 Bug fixes

- Fix issue with Android builds when gradle clean and build were called concurrently. ([#18518](https://github.com/expo/expo/pull/18518) by [EdwardDrapkin](https://github.com/EdwardDrapkin))
- Fixed `FabricUIManager` errors when turning on new architecture mode on Android. ([#18472](https://github.com/expo/expo/pull/18472) by [@kudo](https://github.com/kudo))

## 0.11.3 — 2022-07-18

### 💡 Others

- Changed access levels in the Logger and fixed the timer to log milliseconds instead of seconds. ([#18271](https://github.com/expo/expo/pull/18271) by [@douglowder](https://github.com/douglowder))

## 0.11.2 — 2022-07-16

### 🐛 Bug fixes

- Fix dangling pointer in the fbjni from the MethodMetadata::createPromiseBody on Android. ([#18206](https://github.com/expo/expo/pull/18206) by [@lukmccall](https://github.com/lukmccall))

## 0.11.1 — 2022-07-11

### 🐛 Bug fixes

- Fixed a crash when remote debugging is enabled on Android. ([#18165](https://github.com/expo/expo/pull/18165) by [@kudo](https://github.com/kudo))

## 0.11.0 — 2022-07-07

### 🎉 New features

- Create `AppContext.registerForActivityResult` mechanism similar to [`ComponentActivity.registerForActivityResult`](https://developer.android.com/training/basics/intents/result)). ([#17572](https://github.com/expo/expo/pull/17572), ([#17987](https://github.com/expo/expo/pull/17987) by [@bbarthec](https://github.com/bbarthec))

### 🐛 Bug fixes

- Added support for React Native 0.69.x ([#18006](https://github.com/expo/expo/pull/18006) by [@kudo](https://github.com/kudo))

## 0.10.0 — 2022-06-23

### 🎉 New features

- Add proxy methods for `Permissions` module accepting `expo.modules.kotlin.Promise` on Android. ([#17668](https://github.com/expo/expo/pull/17668) by [@bbarthec](https://github.com/bbarthec))
- Create `CurrentActivityProvider` on Android. ([#17571](https://github.com/expo/expo/pull/17571) by [@bbarthec](https://github.com/bbarthec))
- Create `AppContextProvider` on Android. ([#17546](https://github.com/expo/expo/pull/17546) by [@bbarthec](https://github.com/bbarthec))
- Introduce dynamic properties in the Sweet API on iOS. ([#17318](https://github.com/expo/expo/pull/17318) by [@tsapeta](https://github.com/tsapeta))
- Implemented classes in the Sweet API on iOS. ([#17514](https://github.com/expo/expo/pull/17514), [#17525](https://github.com/expo/expo/pull/17525) by [@tsapeta](https://github.com/tsapeta))
- Add basic support for sync functions in the Sweet API on Android. ([#16977](https://github.com/expo/expo/pull/16977) by [@lukmccall](https://github.com/lukmccall))
- Better error handling in the synchronous functions on iOS. ([#17628](https://github.com/expo/expo/pull/17628) by [@tsapeta](https://github.com/tsapeta))
- Experimental support for typed arrays on iOS. ([#17667](https://github.com/expo/expo/pull/17667) by [@tsapeta](https://github.com/tsapeta))

### 🐛 Bug fixes

- Fix modules have not been deallocated during the application reload on iOS. ([#17285](https://github.com/expo/expo/pull/17285) by [@lukmccall](https://github.com/lukmccall))
- Fix view props weren't recognized in the bare workflow on iOS. ([#17411](https://github.com/expo/expo/pull/17411) by [@lukmccall](https://github.com/lukmccall))
- Fix support for optional function arguments on iOS. ([#17950](https://github.com/expo/expo/pull/17950) by [@barthap](https://github.com/barthap))
- Added support for React Native 0.69.x ([#17629](https://github.com/expo/expo/pull/17629) by [@kudo](https://github.com/kudo))

### 💡 Others

- Migrated Expo modules definitions to the new naming convention. ([#17193](https://github.com/expo/expo/pull/17193) by [@tsapeta](https://github.com/tsapeta))
- Refactored Expo modules registration and the `AppContext` on iOS. ([#17225](https://github.com/expo/expo/pull/17225) by [@tsapeta](https://github.com/tsapeta))
- Split the implementation of async and sync functions on iOS. ([#17188](https://github.com/expo/expo/pull/17188) by [@tsapeta](https://github.com/tsapeta))

## 0.9.0 — 2022-04-21

### ⚠️ Notices

- Renamed all definition components to start with the uppercase letter. The old names will be removed in the next minor release. ([#17153](https://github.com/expo/expo/pull/17153) by [@lukmccall](https://github.com/lukmccall), [#17098](https://github.com/expo/expo/pull/17098) by [@tsapeta](https://github.com/tsapeta))

### 🎉 New features

- Add `ReactNativeHostHandler.getUseDeveloperSupport()` to allow `expo-dev-launcher` to override this value at runtime. ([#17069](https://github.com/expo/expo/pull/17069) by [@esamelson](https://github.com/esamelson))

## 0.8.0 — 2022-04-18

### 🛠 Breaking changes

- Remove backward compatible workaround and drop react-native 0.64 support. ([#16446](https://github.com/expo/expo/pull/16446) by [@kudo](https://github.com/kudo))

### ⚠️ Notices

- Deprecated current behavior of `function` module definition component in favor of `asyncFunction` to emphasize that it's being executed asynchronously in JavaScript. In the future release `function` will become synchronous. ([#16630](https://github.com/expo/expo/pull/16630) by [@tsapeta](https://github.com/tsapeta), [#16656](https://github.com/expo/expo/pull/16656) by [@lukmccall](https://github.com/lukmccall))
- On Android bump `compileSdkVersion` to `31`, `targetSdkVersion` to `31` and `Java` version to `11`. ([#16941](https://github.com/expo/expo/pull/16941) by [@bbarthec](https://github.com/bbarthec))

### 🎉 New features

- Add `getDevSupportManagerFactory` support to `ReactNativeHostHandler`. ([#16434](https://github.com/expo/expo/pull/16434) by [@lukmccall](https://github.com/lukmccall))
- Add support for automatic setup of `expo-dev-client` on Android. ([#16441](https://github.com/expo/expo/pull/16441) by [@esamelson](https://github.com/esamelson))
- Stopped relying on deprecated `ViewPropTypes` from React Native. ([#16207](https://github.com/expo/expo/pull/16207) by [@tsapeta](https://github.com/tsapeta))
- Added Android `ReactNativeHostHandler.getJavaScriptExecutorFactory()` for a module to override the `JavaScriptExecutorFactory`. ([#17005](https://github.com/expo/expo/pull/17005) by [@kudo](https://github.com/kudo))

### 🐛 Bug fixes

- Fix the `Fatal error: Expo modules provider must implement "ModulesProviderProtocol"` runtime error in XCTest targets and SwiftUI Preview. ([#16733](https://github.com/expo/expo/pull/16733) by [@kudo](https://github.com/kudo))

### 💡 Others

- Removed the opt-in feature to use the turbo module implementation of `NativeModulesProxy` in favor of another solution introduced in [#15847](https://github.com/expo/expo/pull/15847). ([#16825](https://github.com/expo/expo/pull/16825) by [@tsapeta](https://github.com/tsapeta))

## 0.7.0 — 2022-01-26

### 🎉 New features

- Allow accessing `RCTBridge` from the modules on iOS. ([#15816](https://github.com/expo/expo/pull/15816) by [@tsapeta](https://github.com/tsapeta))
- Added support for native callbacks through the view props in Sweet API on iOS. ([#15731](https://github.com/expo/expo/pull/15731) by [@tsapeta](https://github.com/tsapeta))
- Added support for native callbacks through the view props in Sweet API on Android. ([#15743](https://github.com/expo/expo/pull/15743) by [@lukmccall](https://github.com/lukmccall))
- The `ModuleDefinition` will use class name if the `name` component wasn't provided in Sweet API on Android. ([#15738](https://github.com/expo/expo/pull/15738) by [@lukmccall](https://github.com/lukmccall))
- Added `onViewDestroys` component to the `ViewManager` in Sweet API on Android. ([#15740](https://github.com/expo/expo/pull/15740) by [@lukmccall](https://github.com/lukmccall))
- Added shortened `constants` component that takes `vargs Pair<String, Any?>` as an argument in Sweet API on Android. ([#15742](https://github.com/expo/expo/pull/15742) by [@lukmccall](https://github.com/lukmccall))
- Introduced the concept of chainable exceptions in Sweet API on iOS. ([#15813](https://github.com/expo/expo/pull/15813) by [@tsapeta](https://github.com/tsapeta))
- Sweet function closures can throw errors on iOS. ([#15849](https://github.com/expo/expo/pull/15849) by [@tsapeta](https://github.com/tsapeta))
- Add `requireNativeModule` function to replace accessing native modules from `NativeModulesProxy`. ([#15848](https://github.com/expo/expo/pull/15848) by [@tsapeta](https://github.com/tsapeta))
- Implemented basic functionality of JSI host object to replace `NativeModulesProxy` on iOS. ([#15847](https://github.com/expo/expo/pull/15847) by [@tsapeta](https://github.com/tsapeta))

### 🐛 Bug fixes

- It's no longer possible to directly call methods from the `ModuleDefinition` in the `ViewManagers` on Android. ([#15741](https://github.com/expo/expo/pull/15741) by [@lukmccall](https://github.com/lukmccall))
- Fix compatibility with react-native 0.66. ([#15914](https://github.com/expo/expo/pull/15914) by [@kudo](https://github.com/kudo))
- Fix `Plugin with id 'maven' not found` build error from Android Gradle 7. ([#16080](https://github.com/expo/expo/pull/16080) by [@kudo](https://github.com/kudo))

## 0.6.5 — 2022-02-01

### 🐛 Bug fixes

- Fix `Plugin with id 'maven' not found` build error from Android Gradle 7. ([#16080](https://github.com/expo/expo/pull/16080) by [@kudo](https://github.com/kudo))

## 0.6.4 — 2022-01-05

### 🐛 Bug fixes

- Fix `ReactInstanceManager.onHostPause` exception from moving Android apps to background. ([#15748](https://github.com/expo/expo/pull/15748) by [@kudo](https://github.com/kudo))

## 0.6.3 — 2021-12-16

### 🐛 Bug fixes

- Fixed the deep link wasn't passed to the application if the application wasn't running when the deep link was sent. ([#15593](https://github.com/expo/expo/pull/15593) by [@lukmccall](https://github.com/lukmccall))

## 0.6.2 — 2021-12-15

### 🎉 New features

- Add `onNewIntent` and `onBackPressed` support to `ReactActivityLifecycleListener`. ([#15550](https://github.com/expo/expo/pull/15550) by [@Kudo](https://github.com/Kudo))

## 0.6.1 — 2021-12-08

_This version does not introduce any user-facing changes._

## 0.6.0 — 2021-12-03

### 🎉 New features

- Made `Foundation.URL` a convertible type to consistently normalize file paths to file URLs. ([#15278](https://github.com/expo/expo/pull/15278) by [@tsapeta](https://github.com/tsapeta))
- Improve external Android handlers or listeners backward compatibility by Java 8 interface default method. ([#15421](https://github.com/expo/expo/pull/15421) by [@kudo](https://github.com/kudo))

### 💡 Others

- Add parameter to `ReactNativeHostHandler.onDidCreateReactInstanceManager` on Android. ([#15221](https://github.com/expo/expo/pull/15221) by [@esamelson](https://github.com/esamelson))
- Make the no-argument module initializer unavailable — `onCreate` definition component should be used instead. ([#15262](https://github.com/expo/expo/pull/15262) by [@tsapeta](https://github.com/tsapeta))

## 0.5.0 — 2021-11-17

### 🎉 New features

- Method calls on iOS now can go through the JSI instead of the bridge (opt-in feature). ([#14626](https://github.com/expo/expo/pull/14626) by [@tsapeta](https://github.com/tsapeta))
- `AppDelegateWrapper` is now written in Swift and is independent of the singleton modules. ([#14867](https://github.com/expo/expo/pull/14867) by [@tsapeta](https://github.com/tsapeta))
- Implemented sending native events to JavaScript in Sweet API on iOS. ([#14958](https://github.com/expo/expo/pull/14958) by [@tsapeta](https://github.com/tsapeta))
- [Sweet API] Introduced Convertibles on iOS — a way to use custom types as method arguments if they can be converted from JavaScript values. Provided implementation for some common CoreGraphics types. ([#14988](https://github.com/expo/expo/pull/14988) by [@tsapeta](https://github.com/tsapeta))
- Introduce `ReactActivityHandler` and support `createReactRootView` hook. ([#14883](https://github.com/expo/expo/pull/14883) by [@kudo](https://github.com/kudo))
- [Sweet API] Added support for array types in method arguments on iOS. ([#15042](https://github.com/expo/expo/pull/15042) by [@tsapeta](https://github.com/tsapeta))
- [Sweet API] Added support for optional types in method arguments on iOS. ([#15068](https://github.com/expo/expo/pull/15068) by [@tsapeta](https://github.com/tsapeta))
- [Sweet API] Added support for enums in method arguments on iOS. ([#15129](https://github.com/expo/expo/pull/15129) by [@tsapeta](https://github.com/tsapeta))
- [Sweet API] Automatic conversion is now available for view props setters. ([#15132](https://github.com/expo/expo/pull/15132) by [@tsapeta](https://github.com/tsapeta))
- [Sweet API] Added experimental implementation of the new API in Kotlin. (by [@lukmccall](https://github.com/lukmccall))
- Introduce EXAppDefines to get app building configurations. ([#14428](https://github.com/expo/expo/pull/14428) by [@kudo](https://github.com/kudo))
- Introduce React Native bridge delegate handlers on iOS. ([#15138](https://github.com/expo/expo/pull/15138) by [@kudo](https://github.com/kudo))

### 🐛 Bug fixes

- Fix Gradle error when running Gradle from outside of the project directory. ([#15109](https://github.com/expo/expo/pull/15109) by [@kudo](https://github.com/kudo))

## 0.4.7 — 2021-10-28

### 🐛 Bug fixes

- Fix iOS app freezing in remote debugging mode. ([#14922](https://github.com/expo/expo/pull/14922) by [@kudo](https://github.com/kudo))

## 0.4.6 — 2021-10-27

_This version does not introduce any user-facing changes._

## 0.4.5 — 2021-10-25

_This version does not introduce any user-facing changes._

## 0.4.4 — 2021-10-15

### 🐛 Bug fixes

- Fix UIManager has not setter or ivar error when reloading app. ([#14741](https://github.com/expo/expo/pull/14741) by [@kudo](https://github.com/kudo))

## 0.4.3 — 2021-10-15

_This version does not introduce any user-facing changes._

## 0.4.2 — 2021-10-01

_This version does not introduce any user-facing changes._

## 0.4.1 — 2021-09-29

### 🐛 Bug fixes

- Removed accidentally published prebuilt binaries on iOS.

## 0.4.0 — 2021-09-28

### 🐛 Bug fixes

- Fix imports that affect versioned code inside of Expo Go. ([#14436](https://github.com/expo/expo/pull/14436) by [@cruzach](https://github.com/cruzach))
- Fixed event emitter being registered after module registry initialization. ([#14502](https://github.com/expo/expo/pull/14502) by [@tsapeta](https://github.com/tsapeta))
- Fix building errors from use_frameworks! in Podfile. ([#14523](https://github.com/expo/expo/pull/14523) by [@kudo](https://github.com/kudo))

## 0.3.2 — 2021-09-15

### 🛠 Breaking changes

- Dropped support for iOS 11.0 ([#14383](https://github.com/expo/expo/pull/14383) by [@cruzach](https://github.com/cruzach))

### 🎉 New features

- Added `Platform.isAsyncDebugging` to detect remote debugging ([#14396](https://github.com/expo/expo/pull/14396) by [@EvanBacon](https://github.com/EvanBacon))

### 🐛 Bug fixes

- Revert prebuilt binaries on iOS to fix build errors. ([#14418](https://github.com/expo/expo/pull/14418) by [@kudo](https://github.com/kudo))

## 0.3.1 — 2021-09-09

### ⚠️ Notices

- The package is now shipped with prebuilt binaries on iOS. You can read more about it on [expo.fyi/prebuilt-modules](https://expo.fyi/prebuilt-modules). ([#14350](https://github.com/expo/expo/pull/14350) by [@kudo](https://github.com/kudo))

## 0.3.0 — 2021-09-08

### 🎉 New features

- Expo modules are now being automatically registered on iOS which means less installation steps. Using `EXModuleRegistryProvider` and `EXModuleRegistryAdapter` becomes deprecated. ([#14132](https://github.com/expo/expo/pull/14132) by [@tsapeta](https://github.com/tsapeta))
- Pass `useDeveloperSupport` value to `ReactNativeHostHandler` for expo-updates. ([#14198](https://github.com/expo/expo/pull/14198) by [@kudo](https://github.com/kudo))

### 🐛 Bug fixes

- Fix `Cannot read property 'addProxiedListener' of null` on Android. ([#14343](https://github.com/expo/expo/pull/14343) by [@lukmccall](https://github.com/lukmccall))
- Fix `'-[RCTModuleRegistry getAllExportedModules]: unrecognized selector` crash while adding the event listener. ([#14130](https://github.com/expo/expo/pull/14130) by [@lukmccall](https://github.com/lukmccall))
- Fix redbox error for `Unable to find module for UMReactNativeEventEmitter` in debug build. ([#14276](https://github.com/expo/expo/pull/14276) by [@kudo](https://github.com/kudo))

## 0.3.0-alpha.0 — 2021-08-17

### 🎉 New features

- Use stable manifest ID where applicable. ([#12964](https://github.com/expo/expo/pull/12964) by [@wschurman](https://github.com/wschurman))
- Add permission hook factory. ([#13782](https://github.com/expo/expo/pull/13782) by [@byCedric](https://github.com/byCedric))
- Experimental API for creating native modules in Swift (by [@tsapeta](https://github.com/tsapeta))

### 🐛 Bug fixes

- Add generics to the permission hook factory to inherit right types. ([#13860](https://github.com/expo/expo/pull/13860) by [@bycedric](https://github.com/bycedric))

## 0.1.1 — 2021-06-16

_This version does not introduce any user-facing changes._

## 0.1.0 — 2021-06-16

_This version does not introduce any user-facing changes._

## 0.0.2 — 2021-05-25

### 💡 Others

- Added `Interface` suffix to sensors, barcode scanner and font interfaces names to get rid of name collisions. ([#12888](https://github.com/expo/expo/pull/12888), [#12912](https://github.com/expo/expo/pull/12912), [#12949](https://github.com/expo/expo/pull/12949) by [@tsapeta](https://github.com/tsapeta))

## 0.0.1 — 2021-05-07

_This version does not introduce any user-facing changes._
