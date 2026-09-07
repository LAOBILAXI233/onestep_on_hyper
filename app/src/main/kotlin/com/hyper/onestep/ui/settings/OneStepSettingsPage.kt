
package com.hyper.onestep.ui.settings

import android.content.ActivityNotFoundException
import android.content.Context
import android.content.Intent
import android.content.pm.PackageManager
import android.graphics.drawable.Drawable
import android.net.Uri
import android.os.Bundle
import android.view.View
import android.view.ViewGroup
import android.widget.FrameLayout
import android.widget.ImageView
import android.widget.Toast
import androidx.activity.compose.LocalActivityResultRegistryOwner
import androidx.activity.result.ActivityResultRegistry
import androidx.activity.result.ActivityResultRegistryOwner
import androidx.activity.result.contract.ActivityResultContract
import androidx.core.app.ActivityOptionsCompat
import androidx.compose.foundation.clickable
import androidx.compose.foundation.isSystemInDarkTheme
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.heightIn
import androidx.compose.foundation.layout.offset
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.itemsIndexed
import androidx.compose.foundation.lazy.rememberLazyListState
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.verticalScroll
import androidx.compose.animation.AnimatedVisibility
import androidx.compose.animation.core.animateFloatAsState
import androidx.compose.animation.core.tween
import androidx.compose.animation.fadeIn
import androidx.compose.animation.fadeOut
import androidx.compose.animation.scaleIn
import androidx.compose.foundation.background
import androidx.compose.foundation.gestures.awaitEachGesture
import androidx.compose.foundation.gestures.awaitFirstDown
import androidx.compose.foundation.layout.ColumnScope
import androidx.compose.foundation.layout.IntrinsicSize
import androidx.compose.foundation.layout.RowScope
import androidx.compose.foundation.layout.fillMaxHeight
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.rounded.Close
import androidx.compose.material.icons.rounded.MoreVert
import androidx.compose.material.icons.rounded.Search
import androidx.compose.material.icons.rounded.Sort
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.ui.draw.alpha
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.graphicsLayer
import androidx.compose.ui.input.pointer.pointerInput
import androidx.compose.ui.text.input.TextFieldValue
import androidx.compose.ui.window.Popup
import androidx.compose.ui.window.PopupProperties
import java.text.Collator
import java.util.Locale
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Check
import androidx.compose.material.icons.filled.PushPin
import androidx.compose.material.icons.rounded.Cancel
import androidx.compose.material.icons.rounded.CheckCircle
import androidx.compose.material.icons.rounded.CheckCircleOutline
import androidx.compose.material.icons.rounded.ErrorOutline
import androidx.compose.runtime.Composable
import androidx.compose.runtime.CompositionLocalProvider
import androidx.compose.runtime.CompositionContext
import androidx.compose.runtime.DisposableEffect
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableIntStateOf
import androidx.compose.runtime.mutableStateListOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.geometry.CornerRadius
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.geometry.Size
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.platform.AndroidUiDispatcher
import androidx.compose.ui.platform.LocalLifecycleOwner
import androidx.compose.ui.platform.ComposeView
import androidx.compose.ui.platform.ViewCompositionStrategy
import androidx.compose.runtime.Recomposer
import androidx.compose.ui.state.ToggleableState
import androidx.compose.ui.text.font.FontFamily
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.compose.ui.viewinterop.AndroidView
import androidx.lifecycle.Lifecycle
import androidx.lifecycle.LifecycleEventObserver
import androidx.lifecycle.LifecycleOwner
import androidx.lifecycle.LifecycleRegistry
import androidx.lifecycle.ViewModelStore
import androidx.lifecycle.ViewModelStoreOwner
import androidx.lifecycle.findViewTreeLifecycleOwner
import androidx.lifecycle.setViewTreeLifecycleOwner
import androidx.lifecycle.setViewTreeViewModelStoreOwner
import androidx.savedstate.SavedStateRegistry
import androidx.savedstate.SavedStateRegistryController
import androidx.savedstate.SavedStateRegistryOwner
import androidx.savedstate.findViewTreeSavedStateRegistryOwner
import androidx.savedstate.setViewTreeSavedStateRegistryOwner
import com.hyper.onestep.BuildConfig
import com.hyper.onestep.MainActivity
import com.hyper.onestep.R
import com.hyper.onestep.data.settings.OneStepSettings.canUseSideWindowCount
import com.hyper.onestep.data.settings.OneStepSettings.TOP_COMPONENT_SCALE_DEFAULT
import com.hyper.onestep.data.settings.OneStepSettings.TOP_COMPONENT_SCALE_MIN
import com.hyper.onestep.data.settings.OneStepSettings.TOP_COMPONENT_SCALE_MAX
import com.hyper.onestep.model.LauncherApp
import com.hyper.onestep.system.root.ZygiskHookConfig
import com.hyper.onestep.ui.window.OneStepWindowView
import com.hyper.onestep.ui.widget.FixedViewportFrameLayout
import androidx.navigationevent.NavigationEventDispatcher
import androidx.navigationevent.NavigationEventDispatcherOwner
import androidx.navigationevent.compose.LocalNavigationEventDispatcherOwner
import com.leaf.hyperdragshare.codex.DragShareSettings
import com.leaf.hyperdragshare.codex.DragShareSettingsApp
import com.leaf.hyperdragshare.codex.DraggableItem
import com.leaf.hyperdragshare.codex.dragContainer
import com.leaf.hyperdragshare.codex.rememberDragDropState
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.Job
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext
import top.yukonga.miuix.kmp.basic.Card
import top.yukonga.miuix.kmp.basic.CardDefaults
import top.yukonga.miuix.kmp.basic.Checkbox
import top.yukonga.miuix.kmp.basic.Icon
import top.yukonga.miuix.kmp.basic.IconButton
import top.yukonga.miuix.kmp.basic.MiuixScrollBehavior
import top.yukonga.miuix.kmp.basic.Scaffold
import top.yukonga.miuix.kmp.basic.SmallTitle
import top.yukonga.miuix.kmp.basic.Text
import top.yukonga.miuix.kmp.basic.TextButton
import top.yukonga.miuix.kmp.basic.TextField
import top.yukonga.miuix.kmp.basic.TopAppBar
import top.yukonga.miuix.kmp.basic.rememberTopAppBarState
import top.yukonga.miuix.kmp.icon.MiuixIcons
import top.yukonga.miuix.kmp.icon.extended.Back
import top.yukonga.miuix.kmp.preference.ArrowPreference
import top.yukonga.miuix.kmp.preference.SliderPreference
import top.yukonga.miuix.kmp.preference.SwitchPreference
import top.yukonga.miuix.kmp.overlay.OverlayDialog
import top.yukonga.miuix.kmp.theme.ColorSchemeMode
import top.yukonga.miuix.kmp.theme.MiuixTheme
import top.yukonga.miuix.kmp.theme.ThemeController

private val RANGE_TRIGGER_AREA = 50f..120f
private val RANGE_CORNER_SENSITIVITY = 60f..160f
private val RANGE_NAV_MARGIN = 40f..120f
private val RANGE_ICON_SCALE = 60f..120f
private val RANGE_STRIP_SPACING = 50f..120f
private val RANGE_STRIP_PADDING = 40f..120f
private val RANGE_TOP_COMPONENT = TOP_COMPONENT_SCALE_MIN.toFloat()..TOP_COMPONENT_SCALE_MAX.toFloat()

class OneStepSettingsPage(
    private val activity: MainActivity,
    internal val callbacks: SettingsPanelController.Callbacks,
) {

    internal class UiState {
        var triggerAreaPct by mutableIntStateOf(80)
        var cornerSensitivityPct by mutableIntStateOf(100)
        var navMarginPct by mutableIntStateOf(80)
        var iconScalePct by mutableIntStateOf(100)
        var stripSpacingPct by mutableIntStateOf(100)
        var stripPaddingPct by mutableIntStateOf(100)
        var topComponentsVisible by mutableStateOf(true)
        var topComponentScalePct by mutableIntStateOf(TOP_COMPONENT_SCALE_DEFAULT)
        var statusBarSpacingEnabled by mutableStateOf(false)
        var logRecordingEnabled by mutableStateOf(false)
        var sideWindowCount by mutableIntStateOf(4)
        var topAppCandidates by mutableStateOf<List<LauncherApp>>(emptyList())
        var selectedTopAppKeys by mutableStateOf<List<String>>(emptyList())
        var desktopApps by mutableStateOf<List<LauncherApp>>(emptyList())
        var desktopComponentKey by mutableStateOf<String?>(null)
        var oneStepDesktopSelected by mutableStateOf(false)
        var rootGranted by mutableStateOf(false)
        var hookLoaded by mutableStateOf(false)
        var hookError by mutableStateOf<String?>(null)
        var secureWindowEnabled by mutableStateOf(true)
        var statusBarOverlayEnabled by mutableStateOf(false)
        var primaryHomeEnhancementEnabled by mutableStateOf(false)
        var imeGuardEnabled by mutableStateOf(true)
        var imageDragSharingEnabled by mutableStateOf(false)
        var moduleInstalled by mutableStateOf(false)
        var lsposedInstalled by mutableStateOf(false)
        var lsposedBackendActive by mutableStateOf(false)
        var defaultHomeCandidates by mutableStateOf<List<LauncherApp>>(emptyList())
        var defaultHomeComponentKey by mutableStateOf<String?>(null)
        var topAppSortMode by mutableIntStateOf(0)
        var topAppPinnedKeys by mutableStateOf<List<String>>(emptyList())
        var topAppLastUsed by mutableStateOf<Map<String, Long>>(emptyMap())
        var topAppLaunchCounts by mutableStateOf<Map<String, Int>>(emptyMap())

        var backgroundRefreshTick by mutableIntStateOf(0)
    }

    internal val state = UiState()
    private var pageView: FixedViewportFrameLayout? = null
    private var composeViewRef: ComposeView? = null
    private var lifecycleShim: OverlayLifecycleOwner? = null
    private var recomposerJob: Job? = null

    internal val overlayActivityResultRegistry: ActivityResultRegistry =
        OverlayActivityResultRegistry()

    fun show() {
        showInWindow(callbacks.activeMainWindowView())
    }

    fun showInWindow(targetWindowView: OneStepWindowView?) {
        syncFromCallbacks()
        if (targetWindowView == null) {
            return
        }
        val page = ensurePageView()
        val currentParent = page.parent
        if (currentParent !== targetWindowView) {
            if (currentParent is OneStepWindowView) {
                currentParent.hideInternalOverlay(page)
            } else if (currentParent is ViewGroup) {
                currentParent.removeView(page)
            }
            
            
            val compose = composeViewRef
            if (compose != null && compose.parent == null) {
                targetWindowView.showInternalOverlay(page)
                propagateOwnerUpToRoot(page)
                
                
                page.viewport.addView(
                    compose,
                    FrameLayout.LayoutParams(
                        ViewGroup.LayoutParams.MATCH_PARENT,
                        ViewGroup.LayoutParams.MATCH_PARENT),
                )
            } else {
                targetWindowView.showInternalOverlay(page)
            }
        }
        prepareZygiskHookSettings()
        page.bringToFront()
    }

    private fun propagateOwnerUpToRoot(start: View) {
        val shim = lifecycleShim ?: return
        var parent = start.parent
        while (parent is View) {
            if (parent.findViewTreeLifecycleOwner() == null) {
                parent.setViewTreeLifecycleOwner(shim)
            }
            if (parent.findViewTreeSavedStateRegistryOwner() == null) {
                parent.setViewTreeSavedStateRegistryOwner(shim)
            }
            parent = parent.parent
        }
    }

    fun hide() {
        pageView?.let { page ->
            when (val parent = page.parent) {
                is OneStepWindowView -> parent.hideInternalOverlay(page)
                is ViewGroup -> parent.removeView(page)
            }
        }
    }

    fun isVisible(): Boolean = pageView?.parent != null

    fun isShownInWindow(windowView: OneStepWindowView?): Boolean =
        windowView != null && pageView?.parent === windowView

    fun refresh() {
        syncFromCallbacks()
        state.backgroundRefreshTick++
    }

    fun prewarm() {
        ensurePageView()
        syncFromCallbacks()
    }

    fun dispatchActivityResult(requestCode: Int, resultCode: Int, data: Intent?) {
        overlayActivityResultRegistry.dispatchResult(requestCode, resultCode, data)
    }

    fun onRootAuthorizationGranted() {
        state.rootGranted = true
        loadZygiskHookSettings()
    }

    private fun ensurePageView(): FixedViewportFrameLayout {
        pageView?.let { return it }
        val page = FixedViewportFrameLayout(activity)
        page.isClickable = true
        val shim = OverlayLifecycleOwner()
        lifecycleShim = shim
        
        
        page.setViewTreeLifecycleOwner(shim)
        page.setViewTreeSavedStateRegistryOwner(shim)
        val composeView = ComposeView(activity)
        composeViewRef = composeView
        
        composeView.setViewCompositionStrategy(
            ViewCompositionStrategy.DisposeOnViewTreeLifecycleDestroyed)
        composeView.setViewTreeLifecycleOwner(shim)
        composeView.setViewTreeSavedStateRegistryOwner(shim)
        composeView.setViewTreeViewModelStoreOwner(shim)
        injectStandaloneRecomposer(composeView)
        composeView.setContent { VanStepSettingsApp(this@OneStepSettingsPage) }
        composeView.addOnAttachStateChangeListener(object : View.OnAttachStateChangeListener {
            override fun onViewAttachedToWindow(v: View) = shim.onHostAttached()
            override fun onViewDetachedFromWindow(v: View) = shim.onHostDetached()
        })
        
        
        pageView = page
        return page
    }

    private fun injectStandaloneRecomposer(composeView: ComposeView) {
        try {
            val dispatcher = AndroidUiDispatcher.CurrentThread
            val recomposer = Recomposer(dispatcher)
            recomposerJob = CoroutineScope(dispatcher).launch {
                recomposer.runRecomposeAndApplyChanges()
            }
            
            
            var clazz: Class<*>? = ComposeView::class.java
            var method: java.lang.reflect.Method? = null
            while (clazz != null && method == null) {
                method = clazz.declaredMethods.firstOrNull {
                    it.name.startsWith("setCompositionContext") &&
                        it.parameterTypes.size == 1 &&
                        CompositionContext::class.java.isAssignableFrom(it.parameterTypes[0])
                }
                clazz = clazz.superclass
            }
            method ?: throw NoSuchMethodException("setCompositionContext(CompositionContext)")
            method.isAccessible = true
            method.invoke(composeView, recomposer)
        } catch (t: Throwable) {
            android.util.Log.w("OneStepSettings", "inject standalone recomposer failed", t)
        }
    }

    internal fun context(): Context = activity

    internal fun postUi(block: () -> Unit) {
        activity.runOnUiThread(block)
    }

    internal fun toast(message: String) {
        Toast.makeText(activity, message, Toast.LENGTH_SHORT).show()
    }

    internal fun openUrl(url: String) {
        try {
            activity.startActivity(Intent(Intent.ACTION_VIEW, Uri.parse(url)))
        } catch (_: ActivityNotFoundException) {
        }
    }

    internal fun isVanStepAccessibilityEnabled(): Boolean {
        return try {
            val enabled = android.provider.Settings.Secure.getString(
                activity.contentResolver,
                android.provider.Settings.Secure.ENABLED_ACCESSIBILITY_SERVICES,
            ) ?: return false
            enabled.split(":").any { entry ->
                val component = android.content.ComponentName.unflattenFromString(entry)
                component != null &&
                    activity.packageName == component.packageName &&
                    component.className.endsWith(".DragShareAccessibilityService")
            }
        } catch (_: Throwable) {
            false
        }
    }

    internal fun openAccessibilitySettings() {
        try {
            activity.startActivity(Intent(android.provider.Settings.ACTION_ACCESSIBILITY_SETTINGS))
        } catch (_: Throwable) {
        }
    }

    internal fun syncFromCallbacks() {
        state.triggerAreaPct = callbacks.oneStepTriggerAreaScalePct()
        state.cornerSensitivityPct = callbacks.cornerTriggerSensitivityPct()
        state.navMarginPct = callbacks.topNavVerticalMarginScalePct()
        state.iconScalePct = callbacks.topAppIconScalePct()
        state.stripSpacingPct = callbacks.topAppStripSpacingScalePct()
        state.stripPaddingPct = callbacks.topAppStripVerticalPaddingScalePct()
        state.topComponentsVisible = callbacks.topComponentsVisible()
        state.topComponentScalePct = callbacks.topComponentScalePct()
        state.statusBarSpacingEnabled = callbacks.statusBarSpacingEnabled()
        state.logRecordingEnabled = callbacks.logRecordingEnabled()
        state.sideWindowCount = callbacks.sideWindowCount()
        state.topAppCandidates = callbacks.topAppCandidates()?.toList() ?: emptyList()
        state.selectedTopAppKeys =
            callbacks.selectedTopAppInstanceKeys()?.toList() ?: emptyList()
        state.desktopApps = callbacks.builtInDesktopApps()?.toList() ?: emptyList()
        state.desktopComponentKey = callbacks.builtInDesktopComponentKey()
        state.oneStepDesktopSelected = callbacks.oneStepDesktopSelected()
        state.defaultHomeCandidates = callbacks.defaultHomeCandidates()?.toList() ?: emptyList()
        state.defaultHomeComponentKey = callbacks.defaultHomeComponentKey()
        state.topAppSortMode = callbacks.topAppListSortMode()
        state.topAppPinnedKeys = callbacks.topAppPinnedKeys()?.toList() ?: emptyList()
        state.topAppLastUsed = callbacks.topAppLastUsedCached() ?: emptyMap()
        state.topAppLaunchCounts = callbacks.topAppLaunchCountsCached() ?: emptyMap()
        state.rootGranted = callbacks.rootAuthorizationGranted()
    }

    private fun prepareZygiskHookSettings() {
        if (state.rootGranted && !state.hookLoaded && state.hookError == null) {
            loadZygiskHookSettings()
        }
    }

    internal fun loadZygiskHookSettings() {
        callbacks.loadZygiskHookSettings { zygiskState, error ->
            postUi { applyZygiskState(zygiskState, error) }
        }
    }

    internal fun saveZygiskHookSettings(
        secureWindow: Boolean = state.secureWindowEnabled,
        statusBarOverlay: Boolean = state.statusBarOverlayEnabled,
        primaryHomeEnhancement: Boolean = state.primaryHomeEnhancementEnabled,
        imeGuard: Boolean = state.imeGuardEnabled,
        imageDragSharing: Boolean = state.imageDragSharingEnabled,
    ) {
        callbacks.saveZygiskHookSettings(
            secureWindow, statusBarOverlay, primaryHomeEnhancement, imeGuard,
            imageDragSharing
        ) { zygiskState, error ->
            postUi { applyZygiskState(zygiskState, error) }
        }
    }

    private fun applyZygiskState(zygiskState: ZygiskHookConfig.State?, error: String?) {
        if (zygiskState == null) {
            state.hookLoaded = false
            state.hookError = error ?: "读取失败"
            return
        }
        state.hookError = null
        state.hookLoaded = true
        state.secureWindowEnabled = zygiskState.secureWindowEnabled
        state.statusBarOverlayEnabled = zygiskState.statusBarOverlayEnabled
        state.primaryHomeEnhancementEnabled = zygiskState.primaryHomeEnhancementEnabled
        state.imeGuardEnabled = zygiskState.imeGuardEnabled
        state.imageDragSharingEnabled = zygiskState.imageDragSharingEnabled
        
        
        setDragShareMasterEnabled(zygiskState.imageDragSharingEnabled)
        state.moduleInstalled = zygiskState.moduleInstalled
        state.lsposedInstalled = zygiskState.lsposedInstalled
        state.lsposedBackendActive = zygiskState.lsposedBackendActive
    }

    
    
    internal fun setDragShareMasterEnabled(enabled: Boolean) {
        DragShareSettings.setMasterEnabled(activity.applicationContext, enabled)
    }

    internal fun requestRootAuthorization() {
        callbacks.requestRootAuthorization { result ->
            postUi {
                when (result) {
                    SettingsPanelController.RootAuthorizationResult.GRANTED ->
                        onRootAuthorizationGranted()
                    SettingsPanelController.RootAuthorizationResult.FAILED ->
                        toast("ROOT 授权失败")
                    else -> {}
                }
            }
        }
    }

    internal fun desktopDisplayName(app: LauncherApp): String {
        if ("com.smartisanos.home" != app.packageName) {
            return app.label
        }
        return try {
            val info = activity.packageManager.getPackageInfo("com.smartisanos.home", 0)
            val moduleManaged = info.longVersionCode >= 2026071501L ||
                info.applicationInfo?.sourceDir?.contains("VanStepSmartisanHome") == true
            if (moduleManaged) "内置-锤子桌面" else "锤子桌面(用户)"
        } catch (_: PackageManager.NameNotFoundException) {
            app.label
        }
    }

    internal fun builtInDesktopLabel(): String {
        for (app in state.desktopApps) {
            if (app.componentKey() == state.desktopComponentKey) {
                return desktopDisplayName(app)
            }
        }
        return if (state.desktopApps.isEmpty()) "未找到" else "未设置"
    }

    internal fun topAppListLabel(): String {
        if (state.topAppCandidates.isEmpty()) {
            return "无应用"
        }
        return "${state.selectedTopAppKeys.size}/${state.topAppCandidates.size}"
    }

    internal fun zygiskStatusLabel(): String {
        state.hookError?.let { return it }
        if (!state.rootGranted) {
            return "需要 ROOT 授权"
        }
        if (!state.hookLoaded) {
            return "读取中…"
        }
        return "已启用"
    }

    internal companion object {

        @JvmStatic
        fun isHyperOsDevice(): Boolean = try {
            val prop = Class.forName("android.os.SystemProperties")
                .getMethod("get", String::class.java)
                .invoke(null, "ro.mi.os.version.name") as? String ?: ""
            prop.startsWith("OS")
        } catch (_: Throwable) {
            false
        }
    }

    private inner class OverlayActivityResultRegistry : ActivityResultRegistry() {
        override fun <I, O> onLaunch(
            requestCode: Int,
            contract: ActivityResultContract<I, O>,
            input: I,
            options: ActivityOptionsCompat?,
        ) {
            val intent = contract.createIntent(activity, input)
            activity.startActivityForResult(intent, requestCode, options?.toBundle())
        }
    }

    private class OverlayLifecycleOwner : LifecycleOwner, SavedStateRegistryOwner,
        ViewModelStoreOwner {
        private val lifecycleRegistry = LifecycleRegistry(this)
        private val savedStateRegistryController =
            SavedStateRegistryController.create(this)
        private val viewModelStoreImpl = ViewModelStore()
        private var restored = false

        override val lifecycle: Lifecycle get() = lifecycleRegistry
        override val savedStateRegistry: SavedStateRegistry
            get() = savedStateRegistryController.savedStateRegistry
        override val viewModelStore: ViewModelStore get() = viewModelStoreImpl

        fun onHostAttached() {
            
            
            if (!restored) {
                savedStateRegistryController.performRestore(null)
                restored = true
                lifecycleRegistry.handleLifecycleEvent(Lifecycle.Event.ON_CREATE)
            }
            lifecycleRegistry.handleLifecycleEvent(Lifecycle.Event.ON_START)
            lifecycleRegistry.handleLifecycleEvent(Lifecycle.Event.ON_RESUME)
        }

        fun onHostDetached() {
            lifecycleRegistry.handleLifecycleEvent(Lifecycle.Event.ON_PAUSE)
            lifecycleRegistry.handleLifecycleEvent(Lifecycle.Event.ON_STOP)
        }
    }
}

private enum class VanRoute { Main, HyperDrag, AppList, ShareTargets, About, License }

@Composable
internal fun VanStepSettingsApp(page: OneStepSettingsPage) {
    val controller = remember { ThemeController(ColorSchemeMode.System) }
    
    
    
    val dispatcherOwner = remember {
        object : NavigationEventDispatcherOwner {
            override val navigationEventDispatcher: NavigationEventDispatcher =
                NavigationEventDispatcher()
        }
    }
    val registryOwner = remember {
        object : ActivityResultRegistryOwner {
            override val activityResultRegistry: ActivityResultRegistry =
                page.overlayActivityResultRegistry
        }
    }
    CompositionLocalProvider(
        LocalNavigationEventDispatcherOwner provides dispatcherOwner,
        LocalActivityResultRegistryOwner provides registryOwner,
    ) {
        MiuixTheme(controller = controller) {
            val backStack = remember { mutableStateListOf(VanRoute.Main) }
            when (backStack.last()) {
                VanRoute.Main -> MainPage(
                    page = page,
                    onOpenRoute = { backStack.add(it) },
                    onClose = { page.hide() },
                )
                VanRoute.HyperDrag -> HyperDragPage(
                    page = page,
                    onBack = { backStack.removeAt(backStack.lastIndex) },
                )
                VanRoute.AppList -> AppListPage(
                    page = page,
                    onBack = { backStack.removeAt(backStack.lastIndex) },
                )
                VanRoute.ShareTargets -> ShareTargetsPage(
                    page = page,
                    onBack = { backStack.removeAt(backStack.lastIndex) },
                )
                VanRoute.About -> VanStepAboutPage(
                    page = page,
                    onBack = { backStack.removeAt(backStack.lastIndex) },
                    onOpenLicenses = { backStack.add(VanRoute.License) },
                )
                VanRoute.License -> LicensePage(
                    page = page,
                    onBack = { backStack.removeAt(backStack.lastIndex) },
                )
            }
        }
    }
}

@Composable
private fun PageScaffold(
    title: String,
    onBack: (() -> Unit)?,
    actions: @Composable RowScope.() -> Unit = {},
    content: @Composable () -> Unit,
) {
    val topAppBarState = rememberTopAppBarState()
    val scrollBehavior = MiuixScrollBehavior(state = topAppBarState)
    Scaffold(topBar = {
        TopAppBar(
            title = title,
            largeTitle = title,
            scrollBehavior = scrollBehavior,
            navigationIcon = if (onBack != null) {
                {
                    IconButton(onClick = onBack, modifier = Modifier.size(40.dp)) {
                        Icon(imageVector = MiuixIcons.Back, contentDescription = "返回")
                    }
                }
            } else {
                {}
            },
            actions = actions,
        )
    }) { paddingValues ->
        Box(Modifier.fillMaxSize().padding(paddingValues)) {
            content()
        }
    }
}

@Composable
private fun MainPage(
    page: OneStepSettingsPage,
    onOpenRoute: (VanRoute) -> Unit,
    onClose: () -> Unit,
) {
    val callbacks = page.callbacks
    val state = page.state
    var showBuiltInDesktopDialog by remember { mutableStateOf(false) }
    var showDefaultHomeDialog by remember { mutableStateOf(false) }
    var showRebootDialog by remember { mutableStateOf(false) }
    var showTopAppSortDialog by remember { mutableStateOf(false) }
    val hyperOs = remember { OneStepSettingsPage.isHyperOsDevice() }
    
    
    var accessibilityEnabled by remember { mutableStateOf(page.isVanStepAccessibilityEnabled()) }
    var statusRefreshTick by remember { mutableIntStateOf(0) }
    val lifecycleOwner = LocalLifecycleOwner.current
    DisposableEffect(lifecycleOwner) {
        val observer = LifecycleEventObserver { _, event ->
            if (event == Lifecycle.Event.ON_RESUME) {
                statusRefreshTick++
            }
        }
        lifecycleOwner.lifecycle.addObserver(observer)
        onDispose { lifecycleOwner.lifecycle.removeObserver(observer) }
    }
    LaunchedEffect(statusRefreshTick) {
        accessibilityEnabled = page.isVanStepAccessibilityEnabled()
    }

    PageScaffold(title = "一步设置", onBack = onClose) {
        LazyColumn(modifier = Modifier.fillMaxSize()) {
            item(key = "enhance-card") {
                EnhancementStatusCard(
                    page = page,
                    accessibilityEnabled = accessibilityEnabled,
                )
            }
            item(key = "desktop-title") { SmallTitle(text = "桌面") }
            item(key = "desktop-card") {
                Card(modifier = Modifier.padding(horizontal = 12.dp).padding(bottom = 12.dp)) {
                    
                    
                    
                    val backgroundTick = state.backgroundRefreshTick
                    AndroidView(
                        factory = { context ->
                            ImageView(context).apply {
                                setBackgroundColor(android.graphics.Color.TRANSPARENT)
                                clipToOutline = true
                                setOnClickListener { callbacks.pickBackground() }
                            }
                        },
                        update = { view ->
                            view.tag = backgroundTick
                            callbacks.applyBackground(view)
                            
                            
                            view.scaleType = ImageView.ScaleType.FIT_CENTER
                        },
                        modifier = Modifier.fillMaxWidth().height(160.dp),
                    )
                    ArrowPreference(
                        title = "背景设置",
                        summary = "自定义工作区背景",
                        onClick = { callbacks.pickBackground() },
                    )
                    ArrowPreference(
                        title = "内置桌面",
                        summary = "选择工作区中显示的桌面",
                        endActions = {
                            DialogValueText(page.builtInDesktopLabel())
                        },
                        onClick = {
                            callbacks.refreshBuiltInDesktopApps()
                            page.syncFromCallbacks()
                            showBuiltInDesktopDialog = true
                        },
                    )
                    ArrowPreference(
                        title = "系统默认桌面",
                        summary = "设置系统默认桌面",
                        onClick = {
                            state.defaultHomeCandidates =
                                callbacks.defaultHomeCandidates()?.toList() ?: emptyList()
                            showDefaultHomeDialog = true
                        },
                    )
                    if (hyperOs) {
                        ArrowPreference(
                            title = "全面屏手势",
                            summary = "一键开启 HyperOS 全面屏手势",
                            onClick = {
                                if (!state.rootGranted) {
                                    page.toast("需要先授权 ROOT")
                                } else {
                                    callbacks.enableHyperOsGestureNavigation { _, message ->
                                        page.postUi { page.toast(message ?: "") }
                                    }
                                }
                            },
                        )
                    }
                    SwitchPreference(
                        title = "主屏桌面增强",
                        summary = "开启且 Hook 生效时增强主屏及壁纸，否则按普通应用打开桌面",
                        checked = state.primaryHomeEnhancementEnabled,
                        enabled = state.hookLoaded,
                        onCheckedChange = { checked ->
                            state.primaryHomeEnhancementEnabled = checked
                            page.saveZygiskHookSettings(primaryHomeEnhancement = checked)
                        },
                    )
                    SwitchPreference(
                        title = "输入法保护",
                        summary = "开启且 Hook 生效时阻止系统侧隐藏虚拟屏输入法，重启后生效",
                        checked = state.imeGuardEnabled,
                        enabled = state.hookLoaded,
                        onCheckedChange = { checked ->
                            state.imeGuardEnabled = checked
                            page.saveZygiskHookSettings(imeGuard = checked)
                        },
                    )
                }
            }

            item(key = "layout-title") { SmallTitle(text = "布局") }
            item(key = "layout-card") {
                Card(modifier = Modifier.padding(horizontal = 12.dp).padding(bottom = 12.dp)) {
                    ArrowPreference(
                        title = "应用列表显示",
                        summary = "选择顶部图标栏显示的应用并调整顺序",
                        endActions = { DialogValueText(page.topAppListLabel()) },
                        onClick = { onOpenRoute(VanRoute.AppList) },
                    )
                    ArrowPreference(
                        title = "应用列表排序",
                        summary = when (state.topAppSortMode) {
                            1 -> "按使用频率"
                            2 -> "按首字母"
                            else -> "默认（手动拖动顺序）"
                        },
                        onClick = { showTopAppSortDialog = true },
                    )
                    SliderPreference(
                        title = "小窗口数量",
                        value = state.sideWindowCount.toFloat(),
                        valueText = "${state.sideWindowCount}个",
                        valueRange = 3f..6f,
                        steps = 2,
                        onValueChange = { raw ->
                            state.sideWindowCount = raw.toInt().coerceIn(3, 6)
                        },
                        onValueChangeFinished = {
                            val count = state.sideWindowCount
                            if (!canUseSideWindowCount(count)) {
                                page.toast("不支持该小窗口数量")
                                page.syncFromCallbacks()
                            } else {
                                callbacks.saveSideWindowCount(count)
                            }
                        },
                    )
                    SwitchPreference(
                        title = "顶部组件显示",
                        checked = state.topComponentsVisible,
                        onCheckedChange = { checked ->
                            state.topComponentsVisible = checked
                            callbacks.saveTopComponentsVisible(checked)
                        },
                    )
                    SwitchPreference(
                        title = "状态栏显示",
                        checked = state.statusBarSpacingEnabled,
                        onCheckedChange = { checked ->
                            state.statusBarSpacingEnabled = checked
                            callbacks.saveStatusBarSpacingEnabled(checked)
                        },
                    )
                }
            }

            item(key = "sliders-card") {
                Card(modifier = Modifier.padding(horizontal = 12.dp).padding(bottom = 12.dp)) {
                    PercentSlider(
                        title = "一步触发区域",
                        value = state.triggerAreaPct,
                        range = RANGE_TRIGGER_AREA,
                        onFinished = { value ->
                            callbacks.saveOneStepTriggerAreaScale(value)
                            callbacks.previewCornerTrigger()
                        },
                    ) { state.triggerAreaPct = it }
                    PercentSlider(
                        title = "角落触发灵敏度",
                        value = state.cornerSensitivityPct,
                        range = RANGE_CORNER_SENSITIVITY,
                        onFinished = { value ->
                            callbacks.saveCornerTriggerSensitivity(value)
                        },
                    ) { state.cornerSensitivityPct = it }
                    PercentSlider(
                        title = "导航栏高度",
                        value = state.navMarginPct,
                        range = RANGE_NAV_MARGIN,
                        onFinished = { value ->
                            callbacks.saveTopNavVerticalMarginScale(value)
                        },
                    ) { state.navMarginPct = it }
                    PercentSlider(
                        title = "图标栏图标大小",
                        value = state.iconScalePct,
                        range = RANGE_ICON_SCALE,
                        onFinished = { value ->
                            callbacks.saveTopAppIconScale(value)
                        },
                    ) { state.iconScalePct = it }
                    PercentSlider(
                        title = "图标栏间距",
                        value = state.stripSpacingPct,
                        range = RANGE_STRIP_SPACING,
                        onFinished = { value ->
                            callbacks.saveTopAppStripSpacingScale(value)
                        },
                    ) { state.stripSpacingPct = it }
                    PercentSlider(
                        title = "图标栏高度",
                        value = state.stripPaddingPct,
                        range = RANGE_STRIP_PADDING,
                        onFinished = { value ->
                            callbacks.saveTopAppStripVerticalPaddingScale(value)
                        },
                    ) { state.stripPaddingPct = it }
                    PercentSlider(
                        title = "顶部组件高度",
                        value = state.topComponentScalePct,
                        range = RANGE_TOP_COMPONENT,
                        onFinished = { value ->
                            callbacks.saveTopComponentScale(value)
                        },
                    ) { state.topComponentScalePct = it }
                }
            }

            item(key = "hook-title") { SmallTitle(text = "增强功能（ROOT）") }
            item(key = "hook-card") {
                Card(modifier = Modifier.padding(horizontal = 12.dp).padding(bottom = 12.dp)) {
                    ArrowPreference(
                        title = "ROOT 权限",
                        summary = "必需授权才可正常使用",
                        endActions = {
                            DialogValueText(if (state.rootGranted) "已授权" else "未授权")
                        },
                        onClick = { if (!state.rootGranted) page.requestRootAuthorization() },
                    )
                    ArrowPreference(
                        title = "Zygisk状态",
                        summary = "开启后才可使用增强功能",
                        endActions = { DialogValueText(page.zygiskStatusLabel()) },
                        onClick = { if (state.rootGranted) page.loadZygiskHookSettings() },
                    )
                    SwitchPreference(
                        title = "拖拽分享",
                        summary = "开启后可使用拖拽提取（依赖无障碍权限）",
                        checked = state.imageDragSharingEnabled,
                        enabled = state.hookLoaded,
                        onCheckedChange = { checked ->
                            state.imageDragSharingEnabled = checked
                            page.setDragShareMasterEnabled(checked)
                            page.saveZygiskHookSettings(imageDragSharing = checked)
                        },
                    )
                    ArrowPreference(
                        title = "拖拽分享设置",
                        summary = "分享目标、排序、黑名单与关于",
                        enabled = state.imageDragSharingEnabled,
                        onClick = { onOpenRoute(VanRoute.HyperDrag) },
                    )
                    ArrowPreference(
                        title = "分享列表排序",
                        summary = "调整拖拽分享目标顺序与置顶",
                        enabled = state.imageDragSharingEnabled,
                        onClick = { onOpenRoute(VanRoute.ShareTargets) },
                    )
                    SwitchPreference(
                        title = "隐私窗口显示",
                        summary = "开启可正常显示隐私窗口（必需开启Zygisk）",
                        checked = state.secureWindowEnabled,
                        enabled = state.hookLoaded,
                        onCheckedChange = { checked ->
                            state.secureWindowEnabled = checked
                            page.saveZygiskHookSettings(secureWindow = checked)
                        },
                    )
                    SwitchPreference(
                        title = "顶部间距去除",
                        summary = "开启可去除应用界面顶部的间距（必需开启Zygisk），部分应用无效",
                        checked = state.statusBarOverlayEnabled,
                        enabled = state.hookLoaded,
                        onCheckedChange = { checked ->
                            state.statusBarOverlayEnabled = checked
                            page.saveZygiskHookSettings(statusBarOverlay = checked)
                        },
                    )
                    ArrowPreference(
                        title = "应用 Hook 设置",
                        summary = "重启后生效",
                        onClick = { showRebootDialog = true },
                    )
                    SwitchPreference(
                        title = "记录日志",
                        checked = state.logRecordingEnabled,
                        onCheckedChange = { checked ->
                            state.logRecordingEnabled = checked
                            callbacks.saveLogRecordingEnabled(checked)
                        },
                    )
                    ArrowPreference(
                        title = "导出日志",
                        endActions = { DialogValueText("导出") },
                        onClick = { callbacks.exportSessionLog() },
                    )
                    ArrowPreference(
                        title = "开源许可与第三方声明",
                        endActions = { DialogValueText("查看") },
                        onClick = { onOpenRoute(VanRoute.License) },
                    )
                }
            }

            item(key = "footer") {
                Card(modifier = Modifier.padding(horizontal = 12.dp).padding(bottom = 12.dp)) {
                    ArrowPreference(
                        title = "关于",
                        summary = "版本 v${BuildConfig.VERSION_NAME} · 项目仓库与开源许可",
                        onClick = { onOpenRoute(VanRoute.About) },
                    )
                }
            }
            item(key = "footer-space") { Spacer(Modifier.height(24.dp)) }
        }

        
        
        
        BuiltInDesktopDialog(page, showBuiltInDesktopDialog) { showBuiltInDesktopDialog = false }
        DefaultHomeDialog(page, showDefaultHomeDialog) { showDefaultHomeDialog = false }
        TopAppSortModeDialog(page, showTopAppSortDialog) { showTopAppSortDialog = false }
        RebootConfirmDialog(
            show = showRebootDialog,
            onDismiss = { showRebootDialog = false },
            onConfirm = {
                showRebootDialog = false
                callbacks.rebootDevice()
            },
        )
    }
}

@Composable
private fun EnhancementStatusCard(
    page: OneStepSettingsPage,
    accessibilityEnabled: Boolean,
) {
    val state = page.state
    val checks = listOf(
        "KSU 模块" to state.moduleInstalled,
        "ROOT 权限" to state.rootGranted,
        "LSPosed" to (state.lsposedInstalled || state.lsposedBackendActive),
        "无障碍" to accessibilityEnabled,
    )
    val missing = checks.filter { !it.second }.map { it.first }
    val allReady = missing.isEmpty()
    val dark = isSystemInDarkTheme()
    val containerColor = when {
        allReady && dark -> Color(0xFF1A3825)
        allReady -> Color(0xFFDFFAE4)
        dark -> Color(0xFF381A1A)
        else -> Color(0xFFFAEEEE)
    }
    val accentColor = if (allReady) Color(0xFF36D167) else Color(0xFFD13636)
    val title = if (allReady) "Van Step 增强" else "功能尚完全启用"
    val summary = if (allReady) {
        "KSU 模块、ROOT、LSPosed 与无障碍均已就绪"
    } else {
        "尚未就绪：${missing.joinToString("、")}"
    }
    Card(
        modifier = Modifier
            .fillMaxWidth()
            .padding(horizontal = 12.dp, vertical = 12.dp),
        colors = CardDefaults.defaultColors(color = containerColor),
        onClick = {
            when {
                !accessibilityEnabled -> page.openAccessibilitySettings()
                !state.rootGranted -> page.requestRootAuthorization()
                !state.moduleInstalled -> page.callbacks.openKernelSuManager()
            }
        },
    ) {
        Box(modifier = Modifier.fillMaxWidth()) {
            Box(
                modifier = Modifier
                    .matchParentSize()
                    .offset(x = 50.dp, y = 30.dp),
                contentAlignment = Alignment.BottomEnd,
            ) {
                Icon(
                    imageVector = if (allReady) {
                        Icons.Rounded.CheckCircleOutline
                    } else {
                        Icons.Rounded.ErrorOutline
                    },
                    contentDescription = null,
                    modifier = Modifier.size(150.dp),
                    tint = accentColor.copy(alpha = 0.85f),
                )
            }
            Column(
                modifier = Modifier
                    .fillMaxWidth()
                    .padding(16.dp),
            ) {
                Text(
                    text = title,
                    fontSize = 20.sp,
                    fontWeight = FontWeight.SemiBold,
                    color = MiuixTheme.colorScheme.onSurface,
                )
                Spacer(Modifier.height(2.dp))
                Text(
                    text = summary,
                    fontSize = 14.sp,
                    fontWeight = FontWeight.Medium,
                    color = MiuixTheme.colorScheme.onSurface.copy(alpha = 0.8f),
                )
                Spacer(Modifier.height(14.dp))
                Row {
                    StatusCheck(name = checks[0].first, ok = checks[0].second, Modifier.weight(1f))
                    StatusCheck(name = checks[1].first, ok = checks[1].second, Modifier.weight(1f))
                }
                Spacer(Modifier.height(6.dp))
                Row {
                    StatusCheck(name = checks[2].first, ok = checks[2].second, Modifier.weight(1f))
                    StatusCheck(name = checks[3].first, ok = checks[3].second, Modifier.weight(1f))
                }
                Spacer(Modifier.height(10.dp))
                Text(
                    text = "KSU · ROOT · LSPosed · 无障碍",
                    fontSize = 14.sp,
                    fontWeight = FontWeight.Medium,
                    color = MiuixTheme.colorScheme.onSurface.copy(alpha = 0.8f),
                )
            }
        }
    }
}

@Composable
private fun StatusCheck(name: String, ok: Boolean, modifier: Modifier = Modifier) {
    Row(modifier = modifier, verticalAlignment = Alignment.CenterVertically) {
        Icon(
            imageVector = if (ok) Icons.Rounded.CheckCircle else Icons.Rounded.Cancel,
            contentDescription = null,
            tint = if (ok) Color(0xFF36D167) else Color(0xFFD13636),
            modifier = Modifier.size(18.dp),
        )
        Spacer(Modifier.width(6.dp))
        Text(
            text = name,
            fontSize = 14.sp,
            color = MiuixTheme.colorScheme.onSurface,
        )
    }
}

@Composable
private fun DialogValueText(text: String) {
    Text(
        text = text,
        fontSize = 15.sp,
        color = MiuixTheme.colorScheme.onSurfaceVariantSummary,
    )
}

@Composable
private fun PercentSlider(
    title: String,
    value: Int,
    range: ClosedFloatingPointRange<Float>,
    onFinished: (Int) -> Unit,
    onLiveChange: (Int) -> Unit,
) {
    SliderPreference(
        title = title,
        value = value.toFloat(),
        valueText = "$value%",
        valueRange = range,
        onValueChange = { raw -> onLiveChange(raw.toInt()) },
        onValueChangeFinished = { onFinished(value) },
    )
}

@Composable
private fun AppIconView(icon: Drawable?) {
    AndroidView(
        factory = { context ->
            ImageView(context).apply { setImageDrawable(icon) }
        },
        update = { view -> view.setImageDrawable(icon) },
        modifier = Modifier.size(38.dp),
    )
}

@Composable
private fun ChoiceRow(
    text: String,
    selected: Boolean,
    enabled: Boolean = true,
    icon: Drawable? = null,
    subtitle: String? = null,
    radio: Boolean = false,
    onClick: () -> Unit,
) {
    Row(
        modifier = Modifier
            .fillMaxWidth()
            .heightIn(min = 52.dp)
            .then(if (enabled) Modifier.clickable(onClick = onClick) else Modifier)
            .padding(horizontal = 16.dp),
        verticalAlignment = Alignment.CenterVertically,
    ) {
        if (icon != null) {
            AppIconView(icon = icon)
            Spacer(Modifier.width(12.dp))
        }
        Column(Modifier.weight(1f)) {
            Text(
                text = text,
                fontSize = 16.sp,
                color = if (enabled) {
                    MiuixTheme.colorScheme.onSurface
                } else {
                    MiuixTheme.colorScheme.onSurfaceVariantSummary
                },
            )
            if (!subtitle.isNullOrEmpty()) {
                Text(
                    text = subtitle,
                    fontSize = 12.sp,
                    color = MiuixTheme.colorScheme.onSurfaceVariantSummary,
                )
            }
        }
        if (radio) {
            
            Box(
                modifier = Modifier
                    .size(22.dp)
                    .clip(CircleShape)
                    .background(
                        if (selected) MiuixTheme.colorScheme.primary
                        else MiuixTheme.colorScheme.onSurfaceVariantSummary.copy(alpha = 0.25f),
                    ),
                contentAlignment = Alignment.Center,
            ) {
                if (selected) {
                    Box(
                        modifier = Modifier
                            .size(9.dp)
                            .clip(CircleShape)
                            .background(Color.White),
                    )
                }
            }
        } else if (selected) {
            Icon(
                imageVector = Icons.Filled.Check,
                contentDescription = null,
                tint = MiuixTheme.colorScheme.primary,
                modifier = Modifier.size(22.dp),
            )
        }
    }
}

@Composable
private fun BuiltInDesktopDialog(
    page: OneStepSettingsPage,
    show: Boolean,
    onDismiss: () -> Unit,
) {
    val state = page.state
    OverlayDialog(
        show = show,
        title = "内置桌面",
        onDismissRequest = onDismiss,
        onDismissFinished = onDismiss,
    ) {
        
        Column(Modifier.verticalScroll(rememberScrollState()).heightIn(max = 420.dp)) {
            state.desktopApps.forEach { app ->
                ChoiceRow(
                    text = page.desktopDisplayName(app),
                    selected = app.componentKey() == state.desktopComponentKey,
                    icon = app.icon,
                ) {
                    page.callbacks.saveBuiltInDesktop(app)
                    onDismiss()
                }
            }
            if (state.desktopApps.isEmpty()) {
                Text(
                    text = "未找到可用的桌面应用",
                    fontSize = 14.sp,
                    color = MiuixTheme.colorScheme.onSurfaceVariantSummary,
                    textAlign = TextAlign.Center,
                    modifier = Modifier.fillMaxWidth().padding(16.dp),
                )
            }
        }
    }
}

@Composable
private fun DefaultHomeDialog(
    page: OneStepSettingsPage,
    show: Boolean,
    onDismiss: () -> Unit,
) {
    val candidates = page.state.defaultHomeCandidates
    OverlayDialog(
        show = show,
        title = "系统默认桌面",
        onDismissRequest = onDismiss,
        onDismissFinished = onDismiss,
    ) {
        if (candidates.isEmpty()) {
            Text(
                text = "未找到可用的桌面应用",
                fontSize = 14.sp,
                color = MiuixTheme.colorScheme.onSurfaceVariantSummary,
                textAlign = TextAlign.Center,
                modifier = Modifier.fillMaxWidth().padding(16.dp),
            )
        } else {
            Column(Modifier.verticalScroll(rememberScrollState()).heightIn(max = 420.dp)) {
                candidates.forEach { app ->
                    
                    
                    ChoiceRow(
                        text = app.label,
                        selected = app.componentKey() == page.state.defaultHomeComponentKey,
                        radio = true,
                    ) {
                        page.callbacks.setDefaultHome(app) { success, message ->
                            page.postUi {
                                page.toast(message ?: if (success) "已设置" else "设置失败")
                                page.syncFromCallbacks()
                            }
                        }
                        onDismiss()
                    }
                }
            }
        }
    }
}

@Composable
private fun TopAppSortModeDialog(
    page: OneStepSettingsPage,
    show: Boolean,
    onDismiss: () -> Unit,
) {
    OverlayDialog(
        show = show,
        title = "应用列表排序",
        onDismissRequest = onDismiss,
        onDismissFinished = onDismiss,
    ) {
        Column {
            listOf(
                0 to "默认（手动拖动顺序）",
                1 to "按使用频率",
                2 to "按应用首字母",
            ).forEach { (mode, label) ->
                ChoiceRow(
                    text = label,
                    selected = page.state.topAppSortMode == mode,
                    radio = true,
                ) {
                    page.state.topAppSortMode = mode
                    page.callbacks.applyTopAppListSortMode(mode)
                    page.syncFromCallbacks()
                    onDismiss()
                }
            }
        }
    }
}

@Composable
private fun RebootConfirmDialog(
    show: Boolean,
    onDismiss: () -> Unit,
    onConfirm: () -> Unit,
) {
    OverlayDialog(
        show = show,
        title = "重启设备",
        summary = "Hook 设置更改将在重启后生效",
        onDismissRequest = onDismiss,
        onDismissFinished = onDismiss,
    ) {
        Row(
            modifier = Modifier.fillMaxWidth(),
            horizontalArrangement = Arrangement.End,
        ) {
            TextButton(text = "取消", onClick = onDismiss)
            Spacer(Modifier.width(12.dp))
            TextButton(text = "重启", onClick = onConfirm)
        }
    }
}

@Composable
private fun HyperDragPage(page: OneStepSettingsPage, onBack: () -> Unit) {
    
    
    Box(Modifier.fillMaxSize()) {
        DragShareSettingsApp(context = page.context(), onExitRoot = onBack)
    }
}

private enum class AppListSortMode { NONE, FREQUENCY, ALPHABETICAL }

private sealed class AppRow(val key: String) {
    open val app: LauncherApp? get() = null

    object Hint : AppRow("hint")
    class Selected(override val app: LauncherApp, val selIndex: Int) : AppRow("sel-${app.instanceKey()}")
    object UnselectedTitle : AppRow("unselected-title")
    class Unselected(override val app: LauncherApp) : AppRow("unsel-${app.instanceKey()}")
    object EmptyHint : AppRow("empty-hint")
    object BottomSpace : AppRow("bottom-space")
}

@Composable
private fun AppListPage(page: OneStepSettingsPage, onBack: () -> Unit) {
    val candidates = page.state.topAppCandidates
    val context = page.context()
    val scope = rememberCoroutineScope()
    val listState = rememberLazyListState()
    var searchText by remember { mutableStateOf(TextFieldValue("")) }
    
    var sortMode by remember {
        mutableStateOf(
            when (page.state.topAppSortMode) {
                1 -> AppListSortMode.FREQUENCY
                2 -> AppListSortMode.ALPHABETICAL
                else -> AppListSortMode.NONE
            },
        )
    }
    
    
    val lastUsedByPackage = page.state.topAppLastUsed
    val launchCountsByPackage = page.state.topAppLaunchCounts
    var showMoreMenu by remember { mutableStateOf(false) }
    var indexPressed by remember { mutableStateOf(false) }
    var indexLetter by remember { mutableStateOf('A') }

    
    val selectedOrder = remember(candidates, page.state.selectedTopAppKeys) {
        mutableStateListOf<String>().apply {
            page.state.selectedTopAppKeys.forEach { key ->
                if (!contains(key) && candidates.any { it.instanceKey() == key }) add(key)
            }
        }
    }
    
    val pinnedKeys = remember(candidates, page.state.topAppPinnedKeys) {
        mutableStateListOf<String>().apply {
            page.state.topAppPinnedKeys.forEach { key -> if (!contains(key)) add(key) }
        }
    }
    fun persistPinned() {
        page.callbacks.saveTopAppPinnedKeys(LinkedHashSet(pinnedKeys))
    }
    fun togglePinned(key: String) {
        if (!pinnedKeys.remove(key)) {
            pinnedKeys.add(key)
        }
        persistPinned()
    }
    val keyToApp = remember(candidates) { candidates.associateBy { it.instanceKey() } }
    
    val initialByKey = remember(candidates) {
        HashMap<String, Char>().also { map ->
            candidates.forEach { map[it.instanceKey()] = appNameInitial(it.label) }
        }
    }

    fun persistSelection() {
        val fullOrder = ArrayList<String>(selectedOrder)
        candidates.forEach { app ->
            val key = app.instanceKey()
            if (!fullOrder.contains(key)) {
                fullOrder.add(key)
            }
        }
        page.callbacks.saveTopAppList(fullOrder, LinkedHashSet(selectedOrder))
    }

    fun selectAll() {
        selectedOrder.clear()
        selectedOrder.addAll(keyToApp.keys)
        persistSelection()
    }

    fun invertSelection() {
        val current = selectedOrder.toHashSet()
        selectedOrder.clear()
        keyToApp.keys.forEach { key -> if (key !in current) selectedOrder.add(key) }
        persistSelection()
    }
    val rows: List<AppRow> = remember(
        selectedOrder.toList(),
        candidates,
        searchText.text,
        sortMode,
        lastUsedByPackage,
        launchCountsByPackage,
    ) {
        val query = searchText.text.trim()
        fun matches(app: LauncherApp): Boolean =
            query.isEmpty() ||
                app.label.contains(query, ignoreCase = true) ||
                app.packageName.contains(query, ignoreCase = true)

        
        val lastUsed = lastUsedByPackage
        val launchCounts = launchCountsByPackage
        val comparator = when (sortMode) {
            AppListSortMode.FREQUENCY ->
                compareByDescending<LauncherApp> { launchCounts[it.packageName] ?: 0 }
                    .then(compareByDescending { lastUsed[it.packageName] ?: 0L })
                    .then(alphabeticalComparator(initialByKey))
            AppListSortMode.ALPHABETICAL -> alphabeticalComparator(initialByKey)
            AppListSortMode.NONE -> null
        }
        buildList {
            add(AppRow.Hint)
            
            
            data class SelectedEntry(val key: String, val selIndex: Int, val app: LauncherApp)
            val entries = selectedOrder.mapIndexedNotNull { selIdx, key ->
                keyToApp[key]?.let { SelectedEntry(key, selIdx, it) }
            }
            val pinnedEntries = entries.filter { it.key in pinnedKeys }
            val unpinnedEntries = entries.filter { it.key !in pinnedKeys }
            val sortedUnpinned = if (comparator != null) {
                unpinnedEntries.sortedWith(compareBy(comparator) { it.app })
            } else {
                unpinnedEntries
            }
            (pinnedEntries + sortedUnpinned).forEach { entry ->
                if (matches(entry.app)) {
                    add(AppRow.Selected(entry.app, entry.selIndex))
                }
            }
            val unselected = candidates.filter { candidate ->
                !selectedOrder.contains(candidate.instanceKey()) && matches(candidate)
            }
            if (unselected.isNotEmpty()) {
                add(AppRow.UnselectedTitle)
                (if (comparator != null) unselected.sortedWith(comparator) else unselected)
                    .forEach { add(AppRow.Unselected(it)) }
            }
            if (query.isNotEmpty() && none { it.app != null }) {
                add(AppRow.EmptyHint)
            }
            add(AppRow.BottomSpace)
        }
    }

    
    val firstRowIndexByLetter = remember(rows) {
        val map = HashMap<Char, Int>()
        rows.forEachIndexed { index, row ->
            val app = row.app ?: return@forEachIndexed
            map.putIfAbsent(initialByKey[app.instanceKey()] ?: '#', index)
        }
        map
    }

    fun scrollToLetter(letter: Char) {
        indexLetter = letter
        firstRowIndexByLetter[letter]?.let { target ->
            scope.launch { listState.animateScrollToItem(target) }
        }
    }

    val dragDropState = rememberDragDropState(
        lazyListState = listState,
        onMove = { from, to ->
            val fromRow = rows.getOrNull(from) as? AppRow.Selected ?: return@rememberDragDropState
            val toRow = rows.getOrNull(to) as? AppRow.Selected ?: return@rememberDragDropState
            if (from != to && fromRow.selIndex != toRow.selIndex) {
                selectedOrder.add(toRow.selIndex, selectedOrder.removeAt(fromRow.selIndex))
            }
        },
        onDragFinished = { persistSelection() },
    )

    PageScaffold(
        title = "应用列表显示",
        onBack = onBack,
        actions = {
            
            
            IconButton(
                onClick = {
                    showMoreMenu = !showMoreMenu
                },
                modifier = Modifier.size(40.dp),
            ) {
                Icon(imageVector = Icons.Rounded.MoreVert, contentDescription = "更多")
            }
        },
    ) {
        Column(Modifier.fillMaxSize()) {
            TextField(
                value = searchText,
                onValueChange = { searchText = it },
                modifier = Modifier.fillMaxWidth().padding(horizontal = 16.dp, vertical = 8.dp),
                label = "搜索应用名称或包名",
                useLabelAsPlaceholder = true,
                singleLine = true,
                leadingIcon = {
                    Icon(
                        imageVector = Icons.Rounded.Search,
                        contentDescription = null,
                        modifier = Modifier.size(20.dp),
                    )
                },
                trailingIcon = if (searchText.text.isNotEmpty()) {
                    {
                        IconButton(
                            onClick = { searchText = TextFieldValue("") },
                            modifier = Modifier.size(28.dp),
                        ) {
                            Icon(
                                imageVector = Icons.Rounded.Close,
                                contentDescription = "清空搜索",
                                modifier = Modifier.size(16.dp),
                            )
                        }
                    }
                } else {
                    null
                },
            )
            Box(Modifier.fillMaxSize()) {
                LazyColumn(
                    state = listState,
                    modifier = Modifier.fillMaxSize().dragContainer(dragDropState),
                ) {
                    itemsIndexed(rows, key = { _, row -> row.key }) { index, row ->
                        val rowModifier = Modifier.animateItem(
                            fadeInSpec = tween(durationMillis = 250),
                            fadeOutSpec = tween(durationMillis = 200),
                        )
                        when (row) {
                            is AppRow.Hint -> Text(
                                text = "勾选要显示的应用，长按拖动调整顺序",
                                fontSize = 13.sp,
                                color = MiuixTheme.colorScheme.onSurfaceVariantSummary,
                                modifier = rowModifier.padding(horizontal = 16.dp, vertical = 8.dp),
                            )
                            is AppRow.Selected -> DraggableItem(dragDropState, index = index, modifier = rowModifier) {
                                CandidateRow(
                                    app = row.app,
                                    selected = true,
                                    pinned = row.app.instanceKey() in pinnedKeys,
                                    onPinToggle = { togglePinned(row.app.instanceKey()) },
                                    onToggle = { checked ->
                                        if (!checked) {
                                            selectedOrder.removeAt(row.selIndex)
                                            persistSelection()
                                        }
                                    },
                                )
                            }
                            is AppRow.UnselectedTitle -> Box(rowModifier) { SmallTitle(text = "未选中") }
                            is AppRow.Unselected -> Box(rowModifier) {
                                CandidateRow(
                                    app = row.app,
                                    selected = false,
                                    onToggle = { checked ->
                                        if (checked) {
                                            selectedOrder.add(row.app.instanceKey())
                                            persistSelection()
                                        }
                                    },
                                )
                            }
                            is AppRow.EmptyHint -> Text(
                                text = "未找到匹配的应用",
                                fontSize = 14.sp,
                                color = MiuixTheme.colorScheme.onSurfaceVariantSummary,
                                textAlign = TextAlign.Center,
                                modifier = rowModifier.fillMaxWidth().padding(vertical = 32.dp),
                            )
                            is AppRow.BottomSpace -> Spacer(Modifier.height(24.dp))
                        }
                    }
                }
                if (searchText.text.isBlank()) {
                    AlphabetIndexBar(
                        availableLetters = firstRowIndexByLetter.keys,
                        pressed = indexPressed,
                        currentLetter = indexLetter,
                        modifier = Modifier
                            .align(Alignment.CenterEnd)
                            .fillMaxHeight(0.72f)
                            .padding(end = 2.dp),
                        onLetterChange = { letter -> scrollToLetter(letter) },
                        onPressedChange = { indexPressed = it },
                    )
                    
                    Box(modifier = Modifier.align(Alignment.CenterEnd).padding(end = 52.dp)) {
                        
                        androidx.compose.animation.AnimatedVisibility(
                            visible = indexPressed,
                            enter = fadeIn() + scaleIn(initialScale = 0.5f),
                            exit = fadeOut(),
                        ) {
                            Box(
                                modifier = Modifier
                                    .size(56.dp)
                                    .clip(CircleShape)
                                    .background(MiuixTheme.colorScheme.primary),
                                contentAlignment = Alignment.Center,
                            ) {
                                Text(
                                    text = indexLetter.toString(),
                                    color = MiuixTheme.colorScheme.onPrimary,
                                    fontSize = 26.sp,
                                    fontWeight = FontWeight.Bold,
                                )
                            }
                        }
                    }
                }
            }
        }
        if (showMoreMenu) {
            AppListMenuPopup(onDismiss = { showMoreMenu = false }) {
                AppListMenuItem(text = "全选", onClick = { showMoreMenu = false; selectAll() })
                AppListMenuItem(text = "反选", onClick = { showMoreMenu = false; invertSelection() })
            }
        }
    }
}

@Composable
private fun ShareTargetsPage(page: OneStepSettingsPage, onBack: () -> Unit) {
    val listState = rememberLazyListState()
    val initial = remember { page.callbacks.shareTargetEntries() }
    val order = remember {
        mutableStateListOf<String>().apply { initial.forEach { add(it.key) } }
    }
    val pinned = remember {
        mutableStateListOf<String>().apply { initial.forEach { if (it.pinned) add(it.key) } }
    }
    val keyToEntry = remember { initial.associateBy { it.key } }

    fun persist() {
        page.callbacks.saveShareTargetLayout(ArrayList(order), LinkedHashSet(pinned))
    }
    fun togglePinned(key: String) {
        if (!pinned.remove(key)) {
            pinned.add(key)
        }
        
        val pinnedOrdered = order.filter { it in pinned }
        val unpinnedOrdered = order.filter { it !in pinned }
        order.clear()
        order.addAll(pinnedOrdered + unpinnedOrdered)
        persist()
    }

    val dragDropState = rememberDragDropState(
        lazyListState = listState,
        onMove = { from, to ->
            if (from != to && from in order.indices && to in order.indices) {
                order.add(to, order.removeAt(from))
            }
        },
        onDragFinished = { persist() },
    )

    PageScaffold(
        title = "分享列表排序",
        onBack = onBack,
    ) {
        Column(Modifier.fillMaxSize()) {
            Text(
                text = "长按拖动调整顺序，点图钉置顶；" +
                    "内置动作不参与排序",
                fontSize = 13.sp,
                color = MiuixTheme.colorScheme.onSurfaceVariantSummary,
                modifier = Modifier.padding(horizontal = 16.dp, vertical = 8.dp),
            )
            LazyColumn(
                state = listState,
                modifier = Modifier.fillMaxSize().dragContainer(dragDropState),
            ) {
                itemsIndexed(order, key = { _, key -> key }) { index, key ->
                    val entry = keyToEntry[key] ?: return@itemsIndexed
                    val isPinned = key in pinned
                    DraggableItem(dragDropState, index = index) {
                        ShareTargetRow(entry, isPinned) { togglePinned(key) }
                    }
                }
                item(key = "bottom-space") { Spacer(Modifier.height(24.dp)) }
            }
        }
    }
}

@Composable
private fun ShareTargetRow(
    entry: SettingsPanelController.ShareTargetEntry,
    pinned: Boolean,
    onPinToggle: () -> Unit,
) {
    Row(
        modifier = Modifier
            .fillMaxWidth()
            .heightIn(min = 60.dp)
            .padding(horizontal = 12.dp),
        verticalAlignment = Alignment.CenterVertically,
    ) {
        
        DragHandleIcon()
        Spacer(Modifier.width(10.dp))
        AppIconView(icon = entry.icon)
        Spacer(Modifier.width(12.dp))
        Column(Modifier.weight(1f)) {
            Text(
                text = entry.label,
                fontSize = 16.sp,
                color = if (entry.available) MiuixTheme.colorScheme.onSurface
                else MiuixTheme.colorScheme.onSurfaceVariantSummary,
            )
            if (!entry.available) {
                Text(
                    text = "未安装或不可用",
                    fontSize = 11.sp,
                    color = MiuixTheme.colorScheme.onSurfaceVariantSummary,
                )
            }
        }
        IconButton(
            onClick = onPinToggle,
            modifier = Modifier.size(34.dp),
        ) {
            Icon(
                imageVector = Icons.Filled.PushPin,
                contentDescription = if (pinned) "取消置顶" else "置顶",
                tint = if (pinned) MiuixTheme.colorScheme.primary
                else MiuixTheme.colorScheme.onSurfaceVariantSummary,
                modifier = Modifier.size(18.dp),
            )
        }
    }
}

@Composable
private fun CandidateRow(
    app: LauncherApp,
    selected: Boolean,
    pinned: Boolean = false,
    onPinToggle: (() -> Unit)? = null,
    onToggle: (Boolean) -> Unit,
) {
    Row(
        modifier = Modifier
            .fillMaxWidth()
            .heightIn(min = 60.dp)
            .padding(horizontal = 12.dp),
        verticalAlignment = Alignment.CenterVertically,
    ) {
        if (selected) {
            DragHandleIcon()
            Spacer(Modifier.width(10.dp))
        }
        AppIconView(icon = app.icon)
        Spacer(Modifier.width(12.dp))
        Column(Modifier.weight(1f)) {
            Text(text = app.label, fontSize = 16.sp)
            Text(
                text = app.packageName,
                fontSize = 11.sp,
                color = MiuixTheme.colorScheme.onSurfaceVariantSummary,
            )
        }
        if (onPinToggle != null) {
            
            
            IconButton(
                onClick = onPinToggle,
                modifier = Modifier.size(34.dp),
            ) {
                Icon(
                    imageVector = Icons.Filled.PushPin,
                    contentDescription = if (pinned) "取消置顶" else "置顶",
                    tint = if (pinned) MiuixTheme.colorScheme.primary
                    else MiuixTheme.colorScheme.onSurfaceVariantSummary,
                    modifier = Modifier.size(18.dp),
                )
            }
            Spacer(Modifier.width(2.dp))
        }
        Checkbox(
            state = if (selected) ToggleableState.On else ToggleableState.Off,
            onClick = { onToggle(!selected) },
        )
    }
}

@Composable
private fun DragHandleIcon() {
    val handleColor = MiuixTheme.colorScheme.onSurfaceVariantSummary
    androidx.compose.foundation.Canvas(
        modifier = Modifier.size(width = 16.dp, height = 12.dp),
    ) {
        val stroke = 1.8.dp.toPx()
        val gap = 4.2.dp.toPx()
        val midY = size.height / 2f
        val radius = CornerRadius(stroke / 2f)
        listOf(midY - gap, midY, midY + gap).forEach { y ->
            drawRoundRect(
                color = handleColor,
                topLeft = Offset(0f, y - stroke / 2f),
                size = Size(size.width, stroke),
                cornerRadius = radius,
            )
        }
    }
}

@Composable
private fun AppListMenuPopup(
    onDismiss: () -> Unit,
    content: @Composable ColumnScope.() -> Unit,
) {
    Popup(
        alignment = Alignment.TopEnd,
        onDismissRequest = onDismiss,
        properties = PopupProperties(focusable = true),
    ) {
        Card(modifier = Modifier.padding(8.dp).width(IntrinsicSize.Max)) {
            Column(modifier = Modifier.padding(vertical = 6.dp), content = content)
        }
    }
}

@Composable
private fun AppListMenuItem(text: String, onClick: () -> Unit) {
    Row(
        modifier = Modifier
            .fillMaxWidth()
            .clickable(onClick = onClick)
            .padding(horizontal = 18.dp, vertical = 12.dp),
        verticalAlignment = Alignment.CenterVertically,
    ) {
        Text(text = text, fontSize = 15.sp)
    }
}

private val INDEX_LETTERS: List<Char> = ('A'..'Z') + '#'

@Composable
private fun AlphabetIndexBar(
    availableLetters: Set<Char>,
    pressed: Boolean,
    currentLetter: Char,
    onLetterChange: (Char) -> Unit,
    onPressedChange: (Boolean) -> Unit,
    modifier: Modifier = Modifier,
) {
    Column(
        modifier = modifier
            .width(24.dp)
            .clip(RoundedCornerShape(12.dp))
            .pointerInput(Unit) {
                awaitEachGesture {
                    awaitFirstDown(requireUnconsumed = false).consume()
                    onPressedChange(true)
                    while (true) {
                        val event = awaitPointerEvent()
                        val change = event.changes.firstOrNull() ?: break
                        if (!change.pressed) break
                        change.consume()
                        onLetterChange(letterAt(change.position.y, size.height.toFloat()))
                    }
                    onPressedChange(false)
                }
            },
        horizontalAlignment = Alignment.CenterHorizontally,
        verticalArrangement = Arrangement.SpaceEvenly,
    ) {
        INDEX_LETTERS.forEach { letter ->
            val active = pressed && letter == currentLetter
            
            val scale by animateFloatAsState(if (active) 1.6f else 1f)
            val color = when {
                active || letter == currentLetter -> MiuixTheme.colorScheme.primary
                availableLetters.contains(letter) -> MiuixTheme.colorScheme.onSurfaceVariantSummary
                else -> MiuixTheme.colorScheme.onSurfaceVariantSummary.copy(alpha = 0.35f)
            }
            Text(
                text = letter.toString(),
                fontSize = 10.sp,
                fontWeight = if (active) FontWeight.Bold else FontWeight.Normal,
                color = color,
                modifier = Modifier.graphicsLayer {
                    scaleX = scale
                    scaleY = scale
                },
            )
        }
    }
}

private fun letterAt(y: Float, barHeight: Float): Char {
    if (barHeight <= 0f) return 'A'
    val index = ((y / barHeight) * INDEX_LETTERS.size).toInt().coerceIn(0, INDEX_LETTERS.lastIndex)
    return INDEX_LETTERS[index]
}

private fun alphabeticalComparator(initialByKey: Map<String, Char>): Comparator<LauncherApp> {
    val collator = Collator.getInstance(Locale.CHINA)
    return Comparator { a, b ->
        val ia = initialByKey[a.instanceKey()] ?: '#'
        val ib = initialByKey[b.instanceKey()] ?: '#'
        if (ia != ib) ia.compareTo(ib) else collator.compare(a.label, b.label)
    }
}

private val pinyinTransliterator by lazy {
    try {
        android.icu.text.Transliterator.getInstance("Any-Latin; Latin-ASCII")
    } catch (t: Throwable) {
        null
    }
}

private fun appNameInitial(label: String): Char {
    val trimmed = label.trim()
    if (trimmed.isEmpty()) return '#'
    val latin = pinyinTransliterator?.transliterate(trimmed)?.trim().orEmpty().ifEmpty { trimmed }
    val upper = latin.firstOrNull { it.isLetter() }?.uppercaseChar() ?: return '#'
    return if (upper in 'A'..'Z') upper else '#'
}

@Composable
private fun LicensePage(page: OneStepSettingsPage, onBack: () -> Unit) {
    var notices by remember { mutableStateOf("正在加载…") }
    LaunchedEffect(Unit) {
        notices = withContext(Dispatchers.IO) {
            try {
                page.context().assets.open("legal/THIRD_PARTY_NOTICES.md")
                    .bufferedReader().use { it.readText() }
            } catch (t: Throwable) {
                "无法读取第三方声明：" + (t.message ?: t.javaClass.simpleName)
            }
        }
    }
    PageScaffold(title = "开源许可与第三方声明", onBack = onBack) {
        Column(Modifier.fillMaxSize().verticalScroll(rememberScrollState())) {
            Text(
                text = notices,
                fontSize = 12.sp,
                fontFamily = FontFamily.Monospace,
                modifier = Modifier.padding(16.dp),
            )
            Spacer(Modifier.height(24.dp))
        }
    }
}
