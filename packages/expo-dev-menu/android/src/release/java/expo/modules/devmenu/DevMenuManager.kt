package expo.modules.devmenu

import android.app.Activity
import android.content.Context
import android.os.Bundle
import android.view.KeyEvent
import android.view.MotionEvent
import expo.interfaces.devmenu.DevMenuDelegateInterface
import expo.interfaces.devmenu.DevMenuManagerInterface
import expo.interfaces.devmenu.DevMenuPreferencesInterface
import expo.interfaces.devmenu.ReactHostWrapper
import expo.modules.devmenu.api.DevMenuMetroClient
import expo.modules.manifests.core.Manifest
import kotlinx.coroutines.CoroutineScope

const val DEV_MENU_TAG = "[disabled] ExpoDevMenu"

private const val DEV_MENU_IS_NOT_AVAILABLE = "DevMenu isn't available in release builds"

object DevMenuManager : DevMenuManagerInterface {
  internal var delegate: DevMenuDelegateInterface? = null

  var currentManifest: Manifest? = null
  var currentManifestURL: String? = null

  data class Callback(val name: String, val shouldCollapse: Boolean)

  var registeredCallbacks = arrayListOf<Callback>()

  fun getReactHost(): ReactHostWrapper? {
    return null
  }

  fun getAppInfo(): Bundle {
    throw IllegalStateException(DEV_MENU_IS_NOT_AVAILABLE)
  }

  fun getDevSettings(): DevToolsSettings {
    throw IllegalStateException(DEV_MENU_IS_NOT_AVAILABLE)
  }

  val metroClient: DevMenuMetroClient by lazy {
    throw IllegalStateException(DEV_MENU_IS_NOT_AVAILABLE)
  }

  override fun openMenu(activity: Activity, screen: String?) {
    throw IllegalStateException(DEV_MENU_IS_NOT_AVAILABLE)
  }

  override fun closeMenu() {
    throw IllegalStateException(DEV_MENU_IS_NOT_AVAILABLE)
  }

  override fun hideMenu() {
    throw IllegalStateException(DEV_MENU_IS_NOT_AVAILABLE)
  }

  override fun toggleMenu(activity: Activity) {
    throw IllegalStateException(DEV_MENU_IS_NOT_AVAILABLE)
  }

  override fun onKeyEvent(keyCode: Int, event: KeyEvent) = false

  override fun onTouchEvent(ev: MotionEvent?) = Unit

  override fun setDelegate(newDelegate: DevMenuDelegateInterface) = Unit

  override fun initializeWithReactHost(reactHost: ReactHostWrapper) = Unit

  override fun getSettings(): DevMenuPreferencesInterface? {
    throw IllegalStateException(DEV_MENU_IS_NOT_AVAILABLE)
  }

  fun getMenuPreferences(): Bundle {
    throw IllegalStateException(DEV_MENU_IS_NOT_AVAILABLE)
  }

  override fun synchronizeDelegate() = Unit

  override fun setCanLaunchDevMenuOnStart(canLaunchDevMenuOnStart: Boolean) {
    throw IllegalStateException(DEV_MENU_IS_NOT_AVAILABLE)
  }

  override fun sendEventToDelegateBridge(eventName: String, eventData: Any?) {
    throw IllegalStateException(DEV_MENU_IS_NOT_AVAILABLE)
  }

  override fun isInitialized(): Boolean {
    throw IllegalStateException(DEV_MENU_IS_NOT_AVAILABLE)
  }

  fun loadFonts(context: Context) {
    throw IllegalStateException(DEV_MENU_IS_NOT_AVAILABLE)
  }

  override val coroutineScope: CoroutineScope
    get() = throw IllegalStateException(DEV_MENU_IS_NOT_AVAILABLE)

  fun reload() {
    throw IllegalStateException(DEV_MENU_IS_NOT_AVAILABLE)
  }
  fun goToHome() {
    throw IllegalStateException(DEV_MENU_IS_NOT_AVAILABLE)
  }
  fun togglePerformanceMonitor() {
    throw IllegalStateException(DEV_MENU_IS_NOT_AVAILABLE)
  }
  fun toggleInspector() {
    throw IllegalStateException(DEV_MENU_IS_NOT_AVAILABLE)
  }
  fun openJSInspector() {
    throw IllegalStateException(DEV_MENU_IS_NOT_AVAILABLE)
  }
  fun toggleFastRefresh() {
    throw IllegalStateException(DEV_MENU_IS_NOT_AVAILABLE)
  }
  fun toggleFab() {
    throw IllegalStateException(DEV_MENU_IS_NOT_AVAILABLE)
  }
}
