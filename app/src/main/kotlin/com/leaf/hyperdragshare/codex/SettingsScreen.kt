package com.leaf.hyperdragshare.codex

import android.app.Activity
import android.content.Context
import android.content.Intent
import android.graphics.Bitmap
import android.graphics.Canvas
import android.graphics.drawable.Drawable
import android.os.Build
import android.provider.Settings
import android.view.ViewConfiguration
import android.widget.Toast
import androidx.activity.compose.rememberLauncherForActivityResult
import androidx.activity.result.contract.ActivityResultContracts
import androidx.compose.animation.AnimatedVisibility
import androidx.compose.animation.expandVertically
import androidx.compose.animation.fadeIn
import androidx.compose.animation.fadeOut
import androidx.compose.animation.shrinkVertically
import androidx.compose.foundation.Image
import androidx.compose.foundation.basicMarquee
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.offset
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.lazy.LazyListState
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.lazy.itemsIndexed
import androidx.compose.foundation.lazy.rememberLazyListState
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.rounded.CheckCircleOutline
import androidx.compose.material.icons.rounded.ErrorOutline
import androidx.compose.runtime.Composable
import androidx.compose.runtime.DisposableEffect
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.SideEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableFloatStateOf
import androidx.compose.runtime.mutableIntStateOf
import androidx.compose.runtime.mutableStateListOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.runtime.rememberUpdatedState
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.asImageBitmap
import androidx.compose.ui.input.nestedscroll.nestedScroll
import androidx.compose.ui.platform.LocalDensity
import androidx.compose.ui.platform.LocalView
import androidx.compose.ui.state.ToggleableState
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.core.graphics.createBitmap
import androidx.core.view.WindowCompat
import androidx.lifecycle.Lifecycle
import androidx.lifecycle.LifecycleEventObserver
import androidx.lifecycle.LifecycleOwner
import androidx.navigation3.runtime.NavKey
import androidx.navigation3.runtime.entryProvider
import androidx.navigation3.runtime.rememberDecoratedNavEntries
import androidx.navigation3.ui.NavDisplay
import top.yukonga.miuix.kmp.basic.BasicComponent
import top.yukonga.miuix.kmp.basic.ButtonDefaults
import top.yukonga.miuix.kmp.basic.Card
import top.yukonga.miuix.kmp.basic.CardDefaults
import top.yukonga.miuix.kmp.basic.Checkbox
import top.yukonga.miuix.kmp.basic.CircularProgressIndicator
import top.yukonga.miuix.kmp.basic.DropdownArrowEndAction
import top.yukonga.miuix.kmp.basic.DropdownEntry
import top.yukonga.miuix.kmp.basic.DropdownItem
import top.yukonga.miuix.kmp.basic.Icon
import top.yukonga.miuix.kmp.basic.IconButton
import top.yukonga.miuix.kmp.basic.InputField
import top.yukonga.miuix.kmp.basic.MiuixScrollBehavior
import top.yukonga.miuix.kmp.basic.Scaffold
import top.yukonga.miuix.kmp.basic.SearchBar
import top.yukonga.miuix.kmp.basic.SmallTitle
import top.yukonga.miuix.kmp.basic.Switch
import top.yukonga.miuix.kmp.basic.Text
import top.yukonga.miuix.kmp.basic.TextButton
import top.yukonga.miuix.kmp.basic.TopAppBar
import top.yukonga.miuix.kmp.basic.TopAppBarState
import top.yukonga.miuix.kmp.basic.rememberTopAppBarState
import top.yukonga.miuix.kmp.icon.MiuixIcons
import top.yukonga.miuix.kmp.icon.extended.Back
import top.yukonga.miuix.kmp.icon.extended.SelectAll
import top.yukonga.miuix.kmp.menu.OverlayIconDropdownMenu
import top.yukonga.miuix.kmp.preference.ArrowPreference
import top.yukonga.miuix.kmp.preference.OverlayDropdownPreference
import top.yukonga.miuix.kmp.preference.SliderPreference
import top.yukonga.miuix.kmp.preference.SwitchPreference
import top.yukonga.miuix.kmp.overlay.OverlayDialog
import top.yukonga.miuix.kmp.squircle.squircleBackground
import top.yukonga.miuix.kmp.theme.ColorSchemeMode
import top.yukonga.miuix.kmp.theme.MiuixTheme
import top.yukonga.miuix.kmp.theme.ThemeController
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.delay
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext
import me.zhanghai.android.appiconloader.AppIconLoader
import java.util.LinkedHashSet
import java.util.Locale
import kotlin.math.roundToInt

private const val ORDER_LIST_INDEX_OFFSET = 1
private const val PORTAL_ACTIVATION_CHECK_ATTEMPTS = 45
private const val PORTAL_ACTIVATION_CHECK_INTERVAL_MS = 100L

private sealed interface SettingsRoute : NavKey {
    data object Main : SettingsRoute
    data object Visibility : SettingsRoute
    data object Order : SettingsRoute
    data object Blacklist : SettingsRoute
    data object About : SettingsRoute
    data object Licenses : SettingsRoute
}

@Composable
fun DragShareSettingsApp(context: Context, onExitRoot: (() -> Unit)? = null) {
    var settings by remember { mutableStateOf(DragShareSettings.readLocal(context)) }
    val backStack = remember { mutableStateListOf<NavKey>(SettingsRoute.Main) }
    val mainListState = rememberLazyListState()
    val mainTopAppBarState = rememberTopAppBarState()
    val dark = settings.colorMode == DragShareSettings.COLOR_DARK
    val themeController = remember(dark) {
        ThemeController(if (dark) ColorSchemeMode.Dark else ColorSchemeMode.Light)
    }

    val persist: (DragShareSettings) -> Unit = { next ->
        next.saveLocal(context)
        if (next.preloadTextSegmenter && !settings.preloadTextSegmenter) {
            TextSegmenter.preload(context)
        }
        settings = next
    }
    val currentSettings = rememberUpdatedState(settings)
    val currentPersist = rememberUpdatedState(persist)
    val currentDark = rememberUpdatedState(dark)
    val settingsEntryProvider = remember(backStack) {
        entryProvider<NavKey> {
            entry(SettingsRoute.Main) {
                MainPage(
                    context = context,
                    settings = currentSettings.value,
                    listState = mainListState,
                    topAppBarState = mainTopAppBarState,
                    onExitRoot = onExitRoot,
                    onOpenVisibility = { backStack.add(SettingsRoute.Visibility) },
                    onOpenOrder = { backStack.add(SettingsRoute.Order) },
                    onOpenBlacklist = { backStack.add(SettingsRoute.Blacklist) },
                    onOpenAbout = { backStack.add(SettingsRoute.About) },
                    persist = currentPersist.value,
                )
            }
            entry(SettingsRoute.Visibility) {
                VisibilityPage(
                    context = context,
                    settings = currentSettings.value,
                    onBack = { if (backStack.size > 1) backStack.removeAt(backStack.lastIndex) },
                    persist = currentPersist.value,
                )
            }
            entry(SettingsRoute.Order) {
                OrderPage(
                    context = context,
                    settings = currentSettings.value,
                    onBack = { if (backStack.size > 1) backStack.removeAt(backStack.lastIndex) },
                    persist = currentPersist.value,
                )
            }
            entry(SettingsRoute.Blacklist) {
                AccessibilityBlacklistPage(
                    context = context,
                    settings = currentSettings.value,
                    onBack = { if (backStack.size > 1) backStack.removeAt(backStack.lastIndex) },
                    persist = currentPersist.value,
                )
            }
            entry(SettingsRoute.About) {
                DragShareAboutPage(
                    context = context,
                    dark = currentDark.value,
                    onBack = { if (backStack.size > 1) backStack.removeAt(backStack.lastIndex) },
                    onOpenLicenses = { backStack.add(SettingsRoute.Licenses) },
                )
            }
            entry(SettingsRoute.Licenses) {
                DragShareOpenSourceLicensePage(
                    dark = currentDark.value,
                    onBack = { if (backStack.size > 1) backStack.removeAt(backStack.lastIndex) },
                )
            }
        }
    }
    val entries = rememberDecoratedNavEntries(
        backStack = backStack,
        entryProvider = settingsEntryProvider,
    )

    MiuixTheme(controller = themeController) {
        SyncSystemBars(dark)
        NavDisplay(
            entries = entries,
            modifier = Modifier.fillMaxSize(),
            onBack = { if (backStack.size > 1) backStack.removeAt(backStack.lastIndex) },
        )
    }
}

@Composable
private fun MainPage(
    context: Context,
    settings: DragShareSettings,
    listState: LazyListState,
    topAppBarState: TopAppBarState,
    onExitRoot: (() -> Unit)? = null,
    onOpenVisibility: () -> Unit,
    onOpenOrder: () -> Unit,
    onOpenBlacklist: () -> Unit,
    onOpenAbout: () -> Unit,
    persist: (DragShareSettings) -> Unit,
) {
    var showAccessibilityDialog by remember { mutableStateOf(false) }
    val coroutineScope = rememberCoroutineScope()
    val exportLogLauncher = rememberLauncherForActivityResult(
        contract = ActivityResultContracts.CreateDocument("text/plain"),
    ) { destination ->
        if (destination != null) {
            coroutineScope.launch {
                val failure = withContext(Dispatchers.IO) {
                    try {
                        DragShareLog.exportTo(context, destination)
                        null
                    } catch (error: Throwable) {
                        error.message ?: error.javaClass.simpleName
                    }
                }
                Toast.makeText(
                    context,
                    if (failure == null) "日志已导出" else "导出日志失败：$failure",
                    Toast.LENGTH_SHORT,
                ).show()
            }
        }
    }
    var edgeTriggerDp by remember(settings.edgeTriggerDp) {
        mutableFloatStateOf(settings.edgeTriggerDp.toFloat())
    }
    var scrollSpeed by remember(settings.scrollSpeedDpPerSecond) {
        mutableFloatStateOf(settings.scrollSpeedDpPerSecond.toFloat())
    }
    var simpleOpacity by remember(settings.simpleMenuOpacityPercent) {
        mutableFloatStateOf(settings.simpleMenuOpacityPercent.toFloat())
    }
    var simpleCornerRadius by remember(settings.simpleMenuCornerRadiusDp) {
        mutableFloatStateOf(settings.simpleMenuCornerRadiusDp.toFloat())
    }
    var simpleEdgeDistance by remember(settings.simpleMenuEdgeDistanceDp) {
        mutableFloatStateOf(settings.simpleMenuEdgeDistanceDp.toFloat())
    }
    var iconOpacity by remember(settings.iconOpacityPercent) {
        mutableFloatStateOf(settings.iconOpacityPercent.toFloat())
    }
    var modernBlurRadius by remember(settings.modernBlurRadiusDp) {
        mutableFloatStateOf(settings.modernBlurRadiusDp.toFloat())
    }
    var modernGlassOpacity by remember(settings.modernGlassOpacityPercent) {
        mutableFloatStateOf(settings.modernGlassOpacityPercent.toFloat())
    }
    var accessibilityLongPressTimeout by remember(settings.accessibilityLongPressTimeoutMillis) {
        mutableFloatStateOf(
            settings.resolveAccessibilityLongPressTimeoutMillis(
                ViewConfiguration.getLongPressTimeout(),
            ).toFloat(),
        )
    }
    var accessibilitySensitivity by remember(settings.accessibilityRecognitionSensitivityPercent) {
        mutableFloatStateOf(settings.accessibilityRecognitionSensitivityPercent.toFloat())
    }
    val scrollBehavior = MiuixScrollBehavior(state = topAppBarState)

    Scaffold(
        topBar = {
            TopAppBar(
                title = "HyperDragShare",
                largeTitle = "HyperDragShare",
                scrollBehavior = scrollBehavior,
                navigationIcon = if (onExitRoot != null) {
                    {
                        IconButton(
                            onClick = onExitRoot,
                            modifier = Modifier.size(40.dp),
                        ) {
                            Icon(
                                imageVector = MiuixIcons.Back,
                                contentDescription = "返回 VanStep 设置",
                            )
                        }
                    }
                } else {
                    {}
                },
            )
        },
    ) { paddingValues ->
        LazyColumn(
            state = listState,
            modifier = Modifier
                .fillMaxSize()
                .nestedScroll(scrollBehavior.nestedScrollConnection),
            contentPadding = paddingValues,
        ) {
            item(key = "activation-status") {
                ActivationStatusCard(
                    context = context,
                    dark = settings.colorMode == DragShareSettings.COLOR_DARK,
                    contentCaptureMode = settings.contentCaptureMode,
                    onOpenAccessibilitySettings = if (settings.isAccessibilityCaptureMode) {
                        { openAccessibilitySettings(context) }
                    } else {
                        null
                    },
                )
            }
            item(key = "content-title") {
                SmallTitle(text = "分享内容")
            }
            item(key = "content-preferences") {
                Card(modifier = Modifier.padding(horizontal = 12.dp).padding(bottom = 12.dp)) {
                    OverlayDropdownPreference(
                        title = "内容获取方式",
                        summary = if (settings.isPortalCaptureMode) {
                            "由传送门识别长按内容"
                        } else {
                            "由无障碍读取文字并截取图片区域"
                        },
                        items = listOf("传送门", "无障碍"),
                        selectedIndex = settings.contentCaptureMode.coerceIn(0, 1),
                        onSelectedIndexChange = { selected ->
                            val mode = if (selected == DragShareSettings.CONTENT_CAPTURE_ACCESSIBILITY) {
                                DragShareSettings.CONTENT_CAPTURE_ACCESSIBILITY
                            } else {
                                DragShareSettings.CONTENT_CAPTURE_PORTAL
                            }
                            persist(copySettings(settings, contentCaptureMode = mode))
                            if (mode == DragShareSettings.CONTENT_CAPTURE_ACCESSIBILITY
                                && !AccessibilityRuntimeStatus.isServiceEnabled(context)
                            ) {
                                showAccessibilityDialog = true
                            }
                        },
                    )
                    ArrowPreference(
                        title = "应用黑名单",
                        summary = if (settings.isPortalCaptureMode) {
                            "使用传送门的系统黑名单设置"
                        } else {
                            "无障碍识别时跳过指定应用"
                        },
                        onClick = {
                            if (settings.isPortalCaptureMode) {
                                coroutineScope.launch {
                                    val started = withContext(Dispatchers.IO) {
                                        ModuleActivation.openPortalBlacklistSettings()
                                    }
                                    if (!started) {
                                        Toast.makeText(
                                            context,
                                            "无法打开传送门应用黑名单",
                                            Toast.LENGTH_SHORT,
                                        ).show()
                                    }
                                }
                            } else {
                                onOpenBlacklist()
                            }
                        },
                    )
                    if (settings.isAccessibilityCaptureMode) {
                        SwitchPreference(
                            title = "横屏启用识别",
                            summary = "横屏时也允许无障碍读取长按内容",
                            checked = settings.accessibilityLandscapeRecognitionEnabled,
                            onCheckedChange = { checked ->
                                persist(
                                    copySettings(
                                        settings,
                                        accessibilityLandscapeRecognitionEnabled = checked,
                                    ),
                                )
                            },
                        )
                        SliderPreference(
                            title = "长按时间",
                            summary = "按住超过设定时间后开始识别",
                            value = accessibilityLongPressTimeout,
                            valueText = "${accessibilityLongPressTimeout.roundToInt()} ms",
                            valueRange = DragShareSettings.MIN_ACCESSIBILITY_LONG_PRESS_TIMEOUT_MILLIS.toFloat()
                                ..DragShareSettings.MAX_ACCESSIBILITY_LONG_PRESS_TIMEOUT_MILLIS.toFloat(),
                            steps = 18,
                            showKeyPoints = true,
                            keyPoints = listOf(250f, 400f, 500f, 600f, 800f, 1000f, 1200f),
                            onValueChange = { accessibilityLongPressTimeout = it },
                            onValueChangeFinished = {
                                persist(
                                    copySettings(
                                        settings,
                                        accessibilityLongPressTimeoutMillis =
                                            accessibilityLongPressTimeout.roundToInt(),
                                    ),
                                )
                            },
                        )
                        SliderPreference(
                            title = "识别灵敏度",
                            summary = "提高后允许长按期间有更大的手指位移",
                            value = accessibilitySensitivity,
                            valueText = "${accessibilitySensitivity.roundToInt()}%",
                            valueRange = DragShareSettings
                                .MIN_ACCESSIBILITY_RECOGNITION_SENSITIVITY_PERCENT.toFloat()
                                ..DragShareSettings
                                    .MAX_ACCESSIBILITY_RECOGNITION_SENSITIVITY_PERCENT.toFloat(),
                            steps = 5,
                            showKeyPoints = true,
                            keyPoints = listOf(50f, 75f, 100f, 125f, 150f, 175f, 200f),
                            onValueChange = { accessibilitySensitivity = it },
                            onValueChangeFinished = {
                                persist(
                                    copySettings(
                                        settings,
                                        accessibilityRecognitionSensitivityPercent =
                                            accessibilitySensitivity.roundToInt(),
                                    ),
                                )
                            },
                        )
                    }
                    SwitchPreference(
                        title = "启用文字分享",
                        summary = "长按文字时显示分享菜单",
                        checked = settings.textSharingEnabled,
                        onCheckedChange = { checked ->
                            persist(copySettings(settings, textSharingEnabled = checked))
                        },
                    )
                    SwitchPreference(
                        title = "预加载分词库",
                        summary = "启动时在后台加载词典，缩短首次打开文本分词的等待",
                        checked = settings.preloadTextSegmenter,
                        onCheckedChange = { checked ->
                            persist(copySettings(settings, preloadTextSegmenter = checked))
                        },
                    )
                    SwitchPreference(
                        title = "启用图片分享",
                        summary = "长按图片时显示分享菜单",
                        checked = settings.imageSharingEnabled,
                        onCheckedChange = { checked ->
                            persist(copySettings(settings, imageSharingEnabled = checked))
                        },
                    )
                }
            }

            item(key = "appearance-title") {
                SmallTitle(text = "拖拽菜单")
            }
            item(key = "appearance-preferences") {
                Card(modifier = Modifier.padding(horizontal = 12.dp).padding(bottom = 12.dp)) {
                    OverlayDropdownPreference(
                        title = "颜色",
                        items = listOf("浅色", "深色"),
                        selectedIndex = if (settings.colorMode == DragShareSettings.COLOR_DARK) 1 else 0,
                        onSelectedIndexChange = { selected ->
                            persist(
                                copySettings(
                                    settings,
                                    colorMode = if (selected == 1) {
                                        DragShareSettings.COLOR_DARK
                                    } else {
                                        DragShareSettings.COLOR_LIGHT
                                    },
                                ),
                            )
                        },
                    )
                    OverlayDropdownPreference(
                        title = "拖拽样式",
                        summary = "仅影响拖拽时的悬浮菜单",
                        items = listOf("简洁", "流光", "环形", "现代"),
                        selectedIndex = settings.uiStyle.coerceIn(0, 3),
                        onSelectedIndexChange = { selected ->
                            persist(copySettings(settings, uiStyle = selected.coerceIn(0, 3)))
                        },
                    )
                }
            }

            if (settings.uiStyle == DragShareSettings.STYLE_SIMPLE
                || settings.uiStyle == DragShareSettings.STYLE_MODERN
            ) {
                item(key = "simple-appearance-title") {
                    SmallTitle(
                        text = if (settings.uiStyle == DragShareSettings.STYLE_MODERN) {
                            "现代样式"
                        } else {
                            "简洁样式"
                        },
                    )
                }
                item(key = "simple-appearance-preferences") {
                    Card(modifier = Modifier.padding(horizontal = 12.dp).padding(bottom = 12.dp)) {
                        OverlayDropdownPreference(
                            title = "菜单位置",
                            summary = "选择分享菜单出现的屏幕边缘",
                            items = listOf("上", "下", "左", "右", "近手方向"),
                            selectedIndex = settings.simpleMenuPosition.coerceIn(0, 4),
                            onSelectedIndexChange = { selected ->
                                persist(
                                    copySettings(
                                        settings,
                                        simpleMenuPosition = selected.coerceIn(0, 4),
                                    ),
                                )
                            },
                        )
                        if (settings.uiStyle == DragShareSettings.STYLE_SIMPLE) {
                            SliderPreference(
                                title = "背景不透明度",
                                value = simpleOpacity,
                                valueText = "${simpleOpacity.roundToInt()}%",
                                valueRange = DragShareSettings.MIN_SIMPLE_MENU_OPACITY_PERCENT.toFloat()
                                    ..DragShareSettings.MAX_SIMPLE_MENU_OPACITY_PERCENT.toFloat(),
                                steps = 15,
                                showKeyPoints = true,
                                keyPoints = listOf(20f, 40f, 60f, 80f, 100f),
                                onValueChange = { simpleOpacity = it },
                                onValueChangeFinished = {
                                    persist(
                                        copySettings(
                                            settings,
                                            simpleMenuOpacityPercent = simpleOpacity.roundToInt(),
                                        ),
                                    )
                                },
                            )
                            SliderPreference(
                                title = "背景圆角",
                                value = simpleCornerRadius,
                                valueText = "${simpleCornerRadius.roundToInt()} dp",
                                valueRange = DragShareSettings.MIN_SIMPLE_MENU_CORNER_RADIUS_DP.toFloat()
                                    ..DragShareSettings.MAX_SIMPLE_MENU_CORNER_RADIUS_DP.toFloat(),
                                steps = 16,
                                showKeyPoints = true,
                                keyPoints = listOf(0f, 8f, 16f, 24f, 32f),
                                onValueChange = { simpleCornerRadius = it },
                                onValueChangeFinished = {
                                    persist(
                                        copySettings(
                                            settings,
                                            simpleMenuCornerRadiusDp = simpleCornerRadius.roundToInt(),
                                        ),
                                    )
                                },
                            )
                            SliderPreference(
                                title = "菜单到边缘距离",
                                value = simpleEdgeDistance,
                                valueText = "${simpleEdgeDistance.roundToInt()} dp",
                                valueRange = DragShareSettings.MIN_SIMPLE_MENU_EDGE_DISTANCE_DP.toFloat()
                                    ..DragShareSettings.MAX_SIMPLE_MENU_EDGE_DISTANCE_DP.toFloat(),
                                steps = 16,
                                showKeyPoints = true,
                                keyPoints = listOf(0f, 8f, 16f, 32f, 64f),
                                onValueChange = { simpleEdgeDistance = it },
                                onValueChangeFinished = {
                                    persist(
                                        copySettings(
                                            settings,
                                            simpleMenuEdgeDistanceDp = simpleEdgeDistance.roundToInt(),
                                        ),
                                    )
                                },
                            )
                        } else {
                            SliderPreference(
                                title = "模糊半径",
                                summary = "HyperOS 局部背景模糊强度",
                                value = modernBlurRadius,
                                valueText = "${modernBlurRadius.roundToInt()} dp",
                                valueRange = DragShareSettings.MIN_MODERN_BLUR_RADIUS_DP.toFloat()
                                    ..DragShareSettings.MAX_MODERN_BLUR_RADIUS_DP.toFloat(),
                                steps = 30,
                                showKeyPoints = true,
                                keyPoints = listOf(0f, 20f, 40f, 60f, 100f, 150f),
                                onValueChange = { modernBlurRadius = it },
                                onValueChangeFinished = {
                                    persist(
                                        copySettings(
                                            settings,
                                            modernBlurRadiusDp = modernBlurRadius.roundToInt(),
                                        ),
                                    )
                                },
                            )
                            SliderPreference(
                                title = "模糊不透明度",
                                value = modernGlassOpacity,
                                valueText = "${modernGlassOpacity.roundToInt()}%",
                                valueRange = DragShareSettings.MIN_MODERN_GLASS_OPACITY_PERCENT.toFloat()
                                    ..DragShareSettings.MAX_MODERN_GLASS_OPACITY_PERCENT.toFloat(),
                                steps = 18,
                                showKeyPoints = true,
                                keyPoints = listOf(0f, 25f, 50f, 75f, 90f),
                                onValueChange = { modernGlassOpacity = it },
                                onValueChangeFinished = {
                                    persist(
                                        copySettings(
                                            settings,
                                            modernGlassOpacityPercent = modernGlassOpacity.roundToInt(),
                                        ),
                                    )
                                },
                            )
                        }
                    }
                }
            }

            item(key = "common-appearance-title") {
                SmallTitle(text = "公共外观")
            }
            item(key = "common-appearance-preferences") {
                Card(modifier = Modifier.padding(horizontal = 12.dp).padding(bottom = 12.dp)) {
                    SliderPreference(
                        title = "图标不透明度",
                        summary = "同时影响应用图标和名称",
                        value = iconOpacity,
                        valueText = "${iconOpacity.roundToInt()}%",
                        valueRange = DragShareSettings.MIN_ICON_OPACITY_PERCENT.toFloat()
                            ..DragShareSettings.MAX_ICON_OPACITY_PERCENT.toFloat(),
                        steps = 20,
                        showKeyPoints = true,
                        keyPoints = listOf(0f, 25f, 50f, 75f, 100f),
                        onValueChange = { iconOpacity = it },
                        onValueChangeFinished = {
                            persist(
                                copySettings(
                                    settings,
                                    iconOpacityPercent = iconOpacity.roundToInt(),
                                ),
                            )
                        },
                    )
                }
            }

            item(key = "menu-title") {
                SmallTitle(text = "菜单管理")
            }
            item(key = "menu-preferences") {
                Card(modifier = Modifier.padding(horizontal = 12.dp).padding(bottom = 12.dp)) {
                    ArrowPreference(
                        title = "菜单可见性",
                        summary = "按应用分别控制每个分享入口",
                        onClick = onOpenVisibility,
                    )
                    ArrowPreference(
                        title = "菜单排序",
                        summary = "拖动应用条目调整显示顺序",
                        onClick = onOpenOrder,
                    )
                }
            }

            item(key = "touch-title") {
                SmallTitle(text = "触摸行为")
            }
            item(key = "touch-preferences") {
                Card(modifier = Modifier.padding(horizontal = 12.dp).padding(bottom = 12.dp)) {
                    SwitchPreference(
                        title = "阻止背景滑动",
                        summary = "HyperDragShare 开始后尝试取消原页面触摸",
                        checked = settings.blockBackgroundScroll,
                        onCheckedChange = { checked ->
                            persist(copySettings(settings, blockBackgroundScroll = checked))
                        },
                    )
                    SwitchPreference(
                        title = "手指移开时关闭分享菜单",
                        summary = "适用于简洁、流光和环形样式，可重新移入触发",
                        checked = settings.closeMenuWhenPointerLeaves,
                        onCheckedChange = { checked ->
                            persist(
                                copySettings(
                                    settings,
                                    closeMenuWhenPointerLeaves = checked,
                                ),
                            )
                        },
                    )
                }
            }

            item(key = "threshold-title") {
                SmallTitle(text = "滚动参数")
            }
            item(key = "threshold-preferences") {
                Card(modifier = Modifier.padding(horizontal = 12.dp).padding(bottom = 12.dp)) {
                    SliderPreference(
                        title = "边缘触发距离",
                        summary = "手指靠近屏幕左右边缘时开始滚动",
                        value = edgeTriggerDp,
                        valueText = "${edgeTriggerDp.roundToInt()} dp",
                        valueRange = DragShareSettings.MIN_EDGE_TRIGGER_DP.toFloat()
                            ..DragShareSettings.MAX_EDGE_TRIGGER_DP.toFloat(),
                        steps = 21,
                        showKeyPoints = true,
                        keyPoints = listOf(24f, 56f, 100f, 150f, 200f),
                        onValueChange = { edgeTriggerDp = it },
                        onValueChangeFinished = {
                            persist(copySettings(settings, edgeTriggerDp = edgeTriggerDp.roundToInt()))
                        },
                    )
                    SliderPreference(
                        title = "滚动速度",
                        summary = "设置分享菜单横向滚动速度",
                        value = scrollSpeed,
                        valueText = "${scrollSpeed.roundToInt()} dp/s",
                        valueRange = DragShareSettings.MIN_SCROLL_SPEED_DP_PER_SECOND.toFloat()
                            ..DragShareSettings.MAX_SCROLL_SPEED_DP_PER_SECOND.toFloat(),
                        steps = 26,
                        showKeyPoints = true,
                        keyPoints = listOf(120f, 320f, 560f, 800f, 1200f),
                        onValueChange = { scrollSpeed = it },
                        onValueChangeFinished = {
                            persist(
                                copySettings(
                                    settings,
                                    scrollSpeedDp = scrollSpeed.roundToInt(),
                                ),
                            )
                        },
                    )
                }
            }

            item(key = "logging-title") {
                SmallTitle(text = "日志")
            }
            item(key = "logging-preferences") {
                Card(modifier = Modifier.padding(horizontal = 12.dp).padding(bottom = 12.dp)) {
                    OverlayDropdownPreference(
                        title = "日志输出等级",
                        summary = when (settings.logLevel) {
                            DragShareSettings.LOG_LEVEL_DISABLED -> "不输出模块日志"
                            DragShareSettings.LOG_LEVEL_DEBUG -> "记录运行环境与输入诊断步骤"
                            else -> "记录当前常规运行信息"
                        },
                        items = listOf("禁用", "信息（当前）", "调试"),
                        selectedIndex = settings.logLevel.coerceIn(
                            DragShareSettings.LOG_LEVEL_DISABLED,
                            DragShareSettings.LOG_LEVEL_DEBUG,
                        ),
                        onSelectedIndexChange = { selected ->
                            val next = copySettings(settings, logLevel = selected)
                            persist(next)
                            DragShareDiagnostics.captureRuntimeOnce(
                                context,
                                "logging level changed",
                                null,
                            )
                            DragShareDiagnostics.captureInputInventory(
                                context,
                                "logging level changed",
                                null,
                                null,
                            )
                        },
                    )
                    OverlayDropdownPreference(
                        title = "日志保存位置",
                        summary = if (settings.logDestination
                            == DragShareSettings.LOG_DESTINATION_FILE
                        ) {
                            "存储到 ${DragShareLog.LOG_DIRECTORY}"
                        } else {
                            "写入系统日志（Logcat）"
                        },
                        items = listOf("系统日志（当前）", "文件"),
                        selectedIndex = settings.logDestination.coerceIn(
                            DragShareSettings.LOG_DESTINATION_SYSTEM,
                            DragShareSettings.LOG_DESTINATION_FILE,
                        ),
                        onSelectedIndexChange = { selected ->
                            val next = copySettings(settings, logDestination = selected)
                            persist(next)
                            DragShareDiagnostics.captureRuntimeOnce(
                                context,
                                "logging destination changed",
                                null,
                            )
                            DragShareDiagnostics.captureInputInventory(
                                context,
                                "logging destination changed",
                                null,
                                null,
                            )
                        },
                    )
                    AnimatedVisibility(
                        visible = settings.logDestination == DragShareSettings.LOG_DESTINATION_FILE,
                    ) {
                        ArrowPreference(
                            title = "导出日志",
                            summary = "将当前日志保存到所选位置",
                            onClick = {
                                exportLogLauncher.launch(DragShareLog.exportFileName())
                            },
                        )
                    }
                }
            }

            item(key = "about-title") {
                SmallTitle(text = "关于")
            }
            item(key = "about-preferences") {
                Card(modifier = Modifier.padding(horizontal = 12.dp).padding(bottom = 12.dp)) {
                    ArrowPreference(
                        title = "关于 HyperDragShare",
                        summary = "版本 ${com.hyper.onestep.BuildConfig.VERSION_NAME}",
                        onClick = onOpenAbout,
                    )
                }
            }

            item(key = "footer") {
                Text(
                    text = "作用域：传送门 · 版本 ${com.hyper.onestep.BuildConfig.VERSION_NAME}",
                    modifier = Modifier.padding(horizontal = 28.dp, vertical = 20.dp),
                    color = MiuixTheme.colorScheme.onSurfaceVariantSummary,
                    fontSize = 13.sp,
                )
            }
        }
        OverlayDialog(
            show = showAccessibilityDialog,
            title = "开启无障碍服务",
            summary = "无障碍内容获取需要开启“HyperDragShare”服务。",
            onDismissRequest = { showAccessibilityDialog = false },
        ) {
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.spacedBy(12.dp),
            ) {
                TextButton(
                    text = "暂不",
                    onClick = { showAccessibilityDialog = false },
                    modifier = Modifier.weight(1f),
                )
                TextButton(
                    text = "打开设置",
                    onClick = {
                        showAccessibilityDialog = false
                        openAccessibilitySettings(context)
                    },
                    modifier = Modifier.weight(1f),
                    colors = ButtonDefaults.textButtonColorsPrimary(),
                )
            }
        }
    }
}

private enum class ActivationUiState {
    Checking,
    NoRoot,
    NotInjected,
    PortalRootUnavailable,
    AccessibilityDisabled,
    AccessibilityConnecting,
    Active,
}

private fun openAccessibilitySettings(context: Context) {
    context.startActivity(
        Intent(Settings.ACTION_ACCESSIBILITY_SETTINGS)
            .addFlags(Intent.FLAG_ACTIVITY_NEW_TASK),
    )
}

@Composable
private fun ActivationStatusCard(
    context: Context,
    dark: Boolean,
    contentCaptureMode: Int,
    onOpenAccessibilitySettings: (() -> Unit)?,
) {
    var refreshGeneration by remember { mutableIntStateOf(0) }
    var state by remember { mutableStateOf(ActivationUiState.Checking) }
    val lifecycleOwner = LocalView.current.context as? LifecycleOwner

    DisposableEffect(lifecycleOwner) {
        if (lifecycleOwner == null) {
            onDispose { }
        } else {
            val observer = LifecycleEventObserver { _, event ->
                if (event == Lifecycle.Event.ON_RESUME) {
                    refreshGeneration++
                }
            }
            lifecycleOwner.lifecycle.addObserver(observer)
            onDispose { lifecycleOwner.lifecycle.removeObserver(observer) }
        }
    }

    LaunchedEffect(refreshGeneration, contentCaptureMode) {
        state = ActivationUiState.Checking
        val rootAvailable = withContext(Dispatchers.IO) {
            ModuleActivation.hasRootAccess()
        }
        if (!rootAvailable) {
            state = ActivationUiState.NoRoot
            return@LaunchedEffect
        }
        if (contentCaptureMode == DragShareSettings.CONTENT_CAPTURE_ACCESSIBILITY) {
            state = when {
                !AccessibilityRuntimeStatus.isServiceEnabled(context) -> {
                    ActivationUiState.AccessibilityDisabled
                }
                !AccessibilityRuntimeStatus.isConnected()
                        || !AccessibilityRuntimeStatus.isRootInputReady() -> {
                    ActivationUiState.AccessibilityConnecting
                }
                else -> ActivationUiState.Active
            }
            return@LaunchedEffect
        }
        var injected = ModuleActivation.isCurrentBuildInjected(context)
        var portalRootGranted = ModuleActivation.isCurrentBuildPortalRootGranted(context)
        if (!injected || !portalRootGranted) {
            withContext(Dispatchers.IO) {
                ModuleActivation.requestPortalInjectionHandshake()
            }
            repeat(PORTAL_ACTIVATION_CHECK_ATTEMPTS) {
                injected = ModuleActivation.isCurrentBuildInjected(context)
                portalRootGranted = ModuleActivation.isCurrentBuildPortalRootGranted(context)
                if (injected && portalRootGranted) {
                    state = ActivationUiState.Active
                    return@LaunchedEffect
                }
                delay(PORTAL_ACTIVATION_CHECK_INTERVAL_MS)
            }
        }
        state = when {
            !injected -> ActivationUiState.NotInjected
            !portalRootGranted -> ActivationUiState.PortalRootUnavailable
            else -> ActivationUiState.Active
        }
    }

    val active = state == ActivationUiState.Active
    val containerColor = when {
        active && dark -> Color(0xFF1A3825)
        active -> Color(0xFFDFFAE4)
        state == ActivationUiState.Checking -> MiuixTheme.colorScheme.surfaceContainer
        dark -> Color(0xFF381A1A)
        else -> Color(0xFFFAEEEE)
    }
    val title = when (state) {
        ActivationUiState.Checking -> "正在检测"
        ActivationUiState.NoRoot -> "未获取 Root 权限"
        ActivationUiState.NotInjected -> "未注入到传送门"
        ActivationUiState.PortalRootUnavailable -> "传送门未获取 Root 权限"
        ActivationUiState.AccessibilityDisabled -> "无障碍服务未启用"
        ActivationUiState.AccessibilityConnecting -> "无障碍服务正在连接"
        ActivationUiState.Active -> "已激活"
    }
    val summary = when (state) {
        ActivationUiState.Checking -> "正在检查运行环境"
        ActivationUiState.NoRoot -> "Root 输入通道当前不可用"
        ActivationUiState.NotInjected -> "当前版本尚未在传送门进程中加载\n如果传送门未启动，该提示为正常现象"
        ActivationUiState.PortalRootUnavailable -> "传送门进程未通过 Root 权限检测\n如果传送门未启动，该提示为正常现象"
        ActivationUiState.AccessibilityDisabled -> "请在系统设置中手动开启“HyperDragShare”服务"
        ActivationUiState.AccessibilityConnecting -> "正在等待无障碍服务和 Root 输入就绪"
        ActivationUiState.Active -> if (contentCaptureMode == DragShareSettings.CONTENT_CAPTURE_ACCESSIBILITY) {
            "无障碍服务与 Root 输入均已就绪"
        } else {
            "传送门 4.2.1 已加载当前模块"
        }
    }
    val activationMethod = when (state) {
        ActivationUiState.Checking -> "正在检测"
        ActivationUiState.NoRoot -> "ROOT"
        ActivationUiState.NotInjected -> "LSPosed"
        ActivationUiState.PortalRootUnavailable -> "传送门 ROOT"
        ActivationUiState.AccessibilityDisabled -> "无障碍"
        ActivationUiState.AccessibilityConnecting -> "ROOT · 无障碍"
        ActivationUiState.Active -> if (contentCaptureMode == DragShareSettings.CONTENT_CAPTURE_ACCESSIBILITY) {
            "ROOT · 无障碍"
        } else {
            "ROOT · LSPosed"
        }
    }
    val textContentColor = MiuixTheme.colorScheme.onSurface
    val descTextColor = textContentColor.copy(alpha = 0.8f)

    Card(
        modifier = Modifier
            .fillMaxWidth()
            .padding(horizontal = 12.dp, vertical = 12.dp),
        colors = CardDefaults.defaultColors(color = containerColor),
        onClick = onOpenAccessibilitySettings,
    ) {
        Box(modifier = Modifier.fillMaxWidth()) {
            Box(
                modifier = Modifier
                    .matchParentSize()
                    .offset(x = 50.dp, y = 38.dp),
                contentAlignment = Alignment.BottomEnd,
            ) {
                Icon(
                    imageVector = if (active) {
                        Icons.Rounded.CheckCircleOutline
                    } else {
                        Icons.Rounded.ErrorOutline
                    },
                    contentDescription = null,
                    modifier = Modifier.size(170.dp),
                    tint = when (state) {
                        ActivationUiState.Active -> Color(0xFF36D167)
                        ActivationUiState.Checking -> {
                            MiuixTheme.colorScheme.onSurfaceVariantActions.copy(alpha = 0.35f)
                        }
                        else -> Color(0xFFD13636)
                    },
                )
            }
            Column(
                modifier = Modifier
                    .fillMaxWidth()
                    .padding(16.dp),
            ) {
                Text(
                    modifier = Modifier.fillMaxWidth(),
                    text = title,
                    fontSize = 20.sp,
                    fontWeight = FontWeight.SemiBold,
                    color = textContentColor,
                )
                Spacer(modifier = Modifier.height(2.dp))
                Text(
                    modifier = Modifier.fillMaxWidth(),
                    text = summary,
                    fontSize = 14.sp,
                    fontWeight = FontWeight.Medium,
                    color = descTextColor,
                )
                Spacer(modifier = Modifier.height(36.dp))
                Text(
                    modifier = Modifier.fillMaxWidth(),
                    text = activationMethod,
                    fontSize = 14.sp,
                    fontWeight = FontWeight.Medium,
                    color = descTextColor,
                )
            }
        }
    }
}

@Composable
private fun VisibilityPage(
    context: Context,
    settings: DragShareSettings,
    onBack: () -> Unit,
    persist: (DragShareSettings) -> Unit,
) {
    var pageData by remember(context) { mutableStateOf<VisibilityPageData?>(null) }
    var expandedGroupKeys by remember { mutableStateOf(emptySet<String>()) }
    val scrollBehavior = MiuixScrollBehavior()
    val groups = pageData?.groups.orEmpty()
    val allKeys = pageData?.targets?.mapNotNull { it.key() }.orEmpty()
    val bulkEntry = DropdownEntry(
        items = listOf(
            DropdownItem(
                text = "全选",
                onClick = { persist(copySettings(settings, hiddenTargetKeys = emptySet())) },
            ),
            DropdownItem(
                text = "全不选",
                onClick = {
                    persist(copySettings(settings, hiddenTargetKeys = LinkedHashSet(allKeys)))
                },
            ),
            DropdownItem(
                text = "全展开",
                onClick = { expandedGroupKeys = groups.map { it.key }.toSet() },
            ),
            DropdownItem(
                text = "全折叠",
                onClick = { expandedGroupKeys = emptySet() },
            ),
        ),
    )

    LaunchedEffect(context) {
        pageData = null
        pageData = withContext(Dispatchers.IO) {
            val targets = querySettingsTargets(context)
            VisibilityPageData(
                targets = targets,
                groups = buildGroups(context, targets),
                iconBitmaps = loadSettingsIcons(context, targets),
            )
        }
    }

    Scaffold(
        topBar = {
            TopAppBar(
                title = "菜单可见性",
                largeTitle = "菜单可见性",
                scrollBehavior = scrollBehavior,
                navigationIcon = { BackNavigationIcon(onClick = onBack) },
                actions = {
                    if (pageData != null) {
                        OverlayIconDropdownMenu(entry = bulkEntry) {
                            Icon(
                                imageVector = MiuixIcons.SelectAll,
                                contentDescription = "批量设置可见性",
                                tint = MiuixTheme.colorScheme.onBackground,
                            )
                        }
                    }
                },
            )
        },
    ) { paddingValues ->
        if (pageData == null) {
            LoadingContent(paddingValues)
        } else {
            LazyColumn(
                modifier = Modifier
                    .fillMaxSize()
                    .nestedScroll(scrollBehavior.nestedScrollConnection),
                contentPadding = paddingValues,
            ) {
                if (groups.isEmpty()) {
                    item(key = "visibility-empty") {
                        Text(
                            text = "没有找到可用的分享应用",
                            modifier = Modifier.padding(28.dp),
                            color = MiuixTheme.colorScheme.onSurfaceVariantSummary,
                        )
                    }
                } else {
                    groups.forEach { group ->
                        item(key = "visibility-group:${group.key}") {
                            val expanded = expandedGroupKeys.contains(group.key)
                            VisibilityGroup(
                                group = group,
                                settings = settings,
                                expanded = expanded,
                                appIconBitmap = pageData?.iconBitmaps?.get(group.key),
                                onToggleExpanded = {
                                    expandedGroupKeys = if (expanded) {
                                        expandedGroupKeys - group.key
                                    } else {
                                        expandedGroupKeys + group.key
                                    }
                                },
                                onGroupCheckedChange = { checked ->
                                    val hidden = LinkedHashSet(settings.hiddenTargetKeys)
                                    group.targets.forEach { target ->
                                        if (checked) hidden.remove(target.key()) else hidden.add(target.key())
                                    }
                                    persist(copySettings(settings, hiddenTargetKeys = hidden))
                                },
                                onTargetCheckedChange = { target, checked ->
                                    val hidden = LinkedHashSet(settings.hiddenTargetKeys)
                                    if (checked) hidden.remove(target.key()) else hidden.add(target.key())
                                    persist(copySettings(settings, hiddenTargetKeys = hidden))
                                },
                            )
                        }
                    }
                }
                item(key = "visibility-spacer") {
                    Spacer(modifier = Modifier.height(16.dp))
                }
            }
        }
    }
}

@Composable
private fun VisibilityGroup(
    group: TargetGroup,
    settings: DragShareSettings,
    expanded: Boolean,
    appIconBitmap: Bitmap?,
    onToggleExpanded: () -> Unit,
    onGroupCheckedChange: (Boolean) -> Unit,
    onTargetCheckedChange: (ShareTarget, Boolean) -> Unit,
) {
    val visibleCount = group.targets.count { settings.isTargetVisible(it.key()) }
    val groupState = when (visibleCount) {
        0 -> ToggleableState.Off
        group.targets.size -> ToggleableState.On
        else -> ToggleableState.Indeterminate
    }

    Column {
        Card(
            modifier = Modifier
                .padding(horizontal = 12.dp)
                .padding(bottom = 12.dp),
            onClick = onToggleExpanded,
            showIndication = true,
            insideMargin = PaddingValues(start = 10.dp, end = 16.dp, top = 8.dp, bottom = 8.dp),
        ) {
            Row(
                verticalAlignment = Alignment.CenterVertically,
            ) {
                TargetIcon(
                    target = group.targets.first(),
                    modifier = Modifier.padding(end = 10.dp),
                    size = 48.dp,
                    normalizedBitmap = appIconBitmap,
                )
                Column(modifier = Modifier.weight(1f)) {
                    Text(
                        text = group.title,
                        modifier = Modifier.basicMarquee(),
                        fontWeight = FontWeight(550),
                        color = MiuixTheme.colorScheme.onSurface,
                        maxLines = 1,
                        softWrap = false,
                    )
                    Text(
                        text = "已显示${visibleCount}个",
                        modifier = Modifier.basicMarquee(),
                        fontSize = 12.sp,
                        fontWeight = FontWeight(550),
                        color = MiuixTheme.colorScheme.onSurfaceVariantSummary,
                        maxLines = 1,
                        softWrap = false,
                    )
                }
                Checkbox(
                    state = groupState,
                    onClick = {
                        onGroupCheckedChange(groupState != ToggleableState.On)
                    },
                )
            }
        }

        AnimatedVisibility(
            visible = expanded,
            enter = expandVertically() + fadeIn(),
            exit = shrinkVertically() + fadeOut(),
        ) {
            Column {
                group.targets.forEach { target ->
                    val checked = settings.isTargetVisible(target.key())
                    Row(
                        modifier = Modifier.fillMaxWidth(),
                        verticalAlignment = Alignment.CenterVertically,
                    ) {
                        Box(
                            modifier = Modifier
                                .padding(start = 12.dp)
                                .width(6.dp)
                                .height(24.dp)
                                .squircleBackground(
                                    color = if (checked) {
                                        MiuixTheme.colorScheme.primary
                                    } else {
                                        MiuixTheme.colorScheme.primaryContainer
                                    },
                                    cornerRadius = 16.dp,
                                ),
                        )
                        Card(
                            modifier = Modifier
                                .weight(1f)
                                .padding(start = 6.dp, end = 12.dp, bottom = 6.dp),
                        ) {
                            BasicComponent(
                                startAction = {
                                    TargetIcon(
                                        target = target,
                                        modifier = Modifier.padding(end = 2.dp),
                                        size = 40.dp,
                                        normalizedBitmap = appIconBitmap,
                                    )
                                },
                                endActions = {
                                    Checkbox(
                                        state = ToggleableState(checked),
                                        onClick = { onTargetCheckedChange(target, !checked) },
                                    )
                                },
                                insideMargin = PaddingValues(horizontal = 9.dp),
                                onClick = { onTargetCheckedChange(target, !checked) },
                            ) {
                                Text(
                                    text = target.label?.toString() ?: target.key(),
                                    fontSize = 15.sp,
                                    fontWeight = FontWeight.Medium,
                                    color = MiuixTheme.colorScheme.onSurface,
                                    maxLines = 1,
                                    overflow = TextOverflow.Ellipsis,
                                )
                                Text(
                                    text = targetSummary(target),
                                    fontSize = 12.sp,
                                    color = MiuixTheme.colorScheme.onSurfaceVariantSummary,
                                    maxLines = 1,
                                    overflow = TextOverflow.Ellipsis,
                                )
                            }
                        }
                    }
                }
                Spacer(modifier = Modifier.height(2.dp))
            }
        }
    }
}

private data class AccessibilityBlacklistApp(
    val packageName: String,
    val label: String,
    val iconBitmap: Bitmap?,
    val builtInReason: String?,
)

@Composable
private fun AccessibilityBlacklistPage(
    context: Context,
    settings: DragShareSettings,
    onBack: () -> Unit,
    persist: (DragShareSettings) -> Unit,
) {
    var apps by remember(context) { mutableStateOf<List<AccessibilityBlacklistApp>?>(null) }
    var searchQuery by remember { mutableStateOf("") }
    var searchExpanded by remember { mutableStateOf(false) }
    val scrollBehavior = MiuixScrollBehavior()

    LaunchedEffect(context) {
        apps = null
        apps = withContext(Dispatchers.IO) {
            queryAccessibilityBlacklistApps(context)
        }
    }

    Scaffold(
        topBar = {
            TopAppBar(
                title = "应用黑名单",
                largeTitle = "应用黑名单",
                scrollBehavior = scrollBehavior,
                navigationIcon = { BackNavigationIcon(onClick = onBack) },
            )
        },
    ) { paddingValues ->
        val allApps = apps
        if (allApps == null) {
            LoadingContent(paddingValues)
        } else {
            val query = searchQuery.trim()
            val filteredApps = allApps.filter { app ->
                query.isEmpty()
                        || app.label.contains(query, ignoreCase = true)
                        || app.packageName.contains(query, ignoreCase = true)
            }
            val blacklistedApps = filteredApps.filter { app ->
                app.builtInReason != null
                        || settings.isAccessibilityPackageBlacklisted(app.packageName)
            }
            val availableApps = filteredApps.filter { app ->
                app.builtInReason == null
                        && !settings.isAccessibilityPackageBlacklisted(app.packageName)
            }
            LazyColumn(
                modifier = Modifier
                    .fillMaxSize()
                    .nestedScroll(scrollBehavior.nestedScrollConnection),
                contentPadding = paddingValues,
            ) {
                item(key = "blacklist-search") {
                    SearchBar(
                        modifier = Modifier.padding(horizontal = 12.dp, vertical = 4.dp),
                        inputField = {
                            InputField(
                                query = searchQuery,
                                onQueryChange = { searchQuery = it },
                                onSearch = { searchExpanded = false },
                                expanded = searchExpanded,
                                onExpandedChange = { searchExpanded = it },
                                label = "搜索 ${allApps.size} 个应用",
                            )
                        },
                        expanded = searchExpanded,
                        onExpandedChange = { searchExpanded = it },
                    ) {}
                }
                if (filteredApps.isEmpty()) {
                    item(key = "blacklist-empty") {
                        Text(
                            text = "没有匹配的应用",
                            modifier = Modifier.padding(28.dp),
                            color = MiuixTheme.colorScheme.onSurfaceVariantSummary,
                        )
                    }
                } else {
                    if (blacklistedApps.isNotEmpty()) {
                        item(key = "blacklist-enabled-title") {
                            SmallTitle(text = "${blacklistedApps.size} 个应用已加入黑名单")
                        }
                        items(
                            items = blacklistedApps,
                            key = { app -> "blacklist:${app.packageName}" },
                        ) { app ->
                            AccessibilityBlacklistAppRow(
                                app = app,
                                blacklisted = true,
                                onCheckedChange = { checked ->
                                    if (app.builtInReason == null) {
                                        val packages = LinkedHashSet(
                                            settings.accessibilityBlacklistedPackages,
                                        )
                                        if (checked) {
                                            packages.add(app.packageName)
                                        } else {
                                            packages.remove(app.packageName)
                                        }
                                        persist(
                                            copySettings(
                                                settings,
                                                accessibilityBlacklistedPackages = packages,
                                            ),
                                        )
                                    }
                                },
                            )
                        }
                    }
                    if (availableApps.isNotEmpty()) {
                        item(key = "blacklist-available-title") {
                            SmallTitle(text = "${availableApps.size} 个应用未加入黑名单")
                        }
                        items(
                            items = availableApps,
                            key = { app -> "blacklist:${app.packageName}" },
                        ) { app ->
                            AccessibilityBlacklistAppRow(
                                app = app,
                                blacklisted = false,
                                onCheckedChange = { checked ->
                                    val packages = LinkedHashSet(
                                        settings.accessibilityBlacklistedPackages,
                                    )
                                    if (checked) {
                                        packages.add(app.packageName)
                                    } else {
                                        packages.remove(app.packageName)
                                    }
                                    persist(
                                        copySettings(
                                            settings,
                                            accessibilityBlacklistedPackages = packages,
                                        ),
                                    )
                                },
                            )
                        }
                    }
                }
                item(key = "blacklist-spacer") {
                    Spacer(modifier = Modifier.height(16.dp))
                }
            }
        }
    }
}

@Composable
private fun AccessibilityBlacklistAppRow(
    app: AccessibilityBlacklistApp,
    blacklisted: Boolean,
    onCheckedChange: (Boolean) -> Unit,
) {
    val editable = app.builtInReason == null
    Card(
        modifier = Modifier
            .fillMaxWidth()
            .padding(horizontal = 12.dp, vertical = 3.dp),
    ) {
        BasicComponent(
            startAction = {
                AccessibilityBlacklistAppIcon(
                    app = app,
                    modifier = Modifier.padding(end = 10.dp),
                )
            },
            endActions = {
                Switch(
                    checked = blacklisted,
                    onCheckedChange = if (editable) onCheckedChange else null,
                    enabled = editable,
                )
            },
            insideMargin = PaddingValues(horizontal = 12.dp, vertical = 8.dp),
            onClick = if (editable) {
                { onCheckedChange(!blacklisted) }
            } else {
                null
            },
        ) {
            Text(
                text = app.label,
                fontSize = 16.sp,
                fontWeight = FontWeight.Medium,
                color = MiuixTheme.colorScheme.onSurface,
                maxLines = 1,
                overflow = TextOverflow.Ellipsis,
            )
            Text(
                text = app.builtInReason ?: app.packageName,
                fontSize = 12.sp,
                color = MiuixTheme.colorScheme.onSurfaceVariantSummary,
                maxLines = 1,
                overflow = TextOverflow.Ellipsis,
            )
        }
    }
}

@Composable
private fun AccessibilityBlacklistAppIcon(
    app: AccessibilityBlacklistApp,
    modifier: Modifier = Modifier,
) {
    if (app.iconBitmap != null) {
        Image(
            bitmap = app.iconBitmap.asImageBitmap(),
            contentDescription = null,
            modifier = modifier.size(40.dp),
        )
    } else {
        Box(
            modifier = modifier.size(40.dp),
            contentAlignment = Alignment.Center,
        ) {
            Text(text = app.label.firstOrNull()?.toString() ?: "?")
        }
    }
}

@Composable
private fun OrderPage(
    context: Context,
    settings: DragShareSettings,
    onBack: () -> Unit,
    persist: (DragShareSettings) -> Unit,
) {
    val items = remember { mutableStateListOf<ShareTarget>() }
    var loading by remember { mutableStateOf(true) }
    var iconBitmaps by remember { mutableStateOf<Map<String, Bitmap>>(emptyMap()) }
    val listState = rememberLazyListState()
    val currentSettings = rememberUpdatedState(settings)
    val currentPersist = rememberUpdatedState(persist)
    val dragDropState = rememberDragDropState(
        lazyListState = listState,
        onMove = { fromIndex, toIndex ->
            val from = fromIndex - ORDER_LIST_INDEX_OFFSET
            val to = (toIndex - ORDER_LIST_INDEX_OFFSET).coerceAtLeast(0)
            if (from in items.indices && to in items.indices && from != to) {
                items.add(to, items.removeAt(from))
            }
        },
        onDragFinished = {
            currentPersist.value(
                copySettings(
                    currentSettings.value,
                    targetOrder = items.map { it.key() },
                ),
            )
        },
    )
    val scrollBehavior = MiuixScrollBehavior()

    LaunchedEffect(context, settings.hiddenTargetKeys) {
        loading = true
        val loadedSettings = settings
        val (queried, loadedIcons) = withContext(Dispatchers.IO) {
            val targets = querySettingsTargets(context)
                .filterNot { it.isBuiltIn() }
                .filter { loadedSettings.isTargetVisible(it.key()) }
            targets to loadSettingsIcons(context, targets)
        }
        items.clear()
        items.addAll(ShareTargetRepository.orderForSettings(queried, loadedSettings))
        iconBitmaps = loadedIcons
        loading = false
    }

    Scaffold(
        topBar = {
            TopAppBar(
                title = "菜单排序",
                largeTitle = "菜单排序",
                scrollBehavior = scrollBehavior,
                navigationIcon = { BackNavigationIcon(onClick = onBack) },
            )
        },
    ) { paddingValues ->
        if (loading) {
            LoadingContent(paddingValues)
        } else {
            LazyColumn(
                state = listState,
                modifier = Modifier
                    .fillMaxSize()
                    .nestedScroll(scrollBehavior.nestedScrollConnection)
                    .dragContainer(dragDropState),
                contentPadding = paddingValues,
            ) {
                item(key = "order-title") {
                    SmallTitle(text = "分享应用顺序")
                }
                if (items.isEmpty()) {
                    item(key = "order-empty") {
                        Text(
                            text = "没有找到可排序的分享应用",
                            modifier = Modifier.padding(28.dp),
                            color = MiuixTheme.colorScheme.onSurfaceVariantSummary,
                        )
                    }
                } else {
                    itemsIndexed(
                        items = items,
                        key = { _, target -> target.key() ?: target.hashCode().toString() },
                    ) { index, target ->
                        DraggableItem(
                            dragDropState = dragDropState,
                            index = index + ORDER_LIST_INDEX_OFFSET,
                        ) { isDragging ->
                            Card(
                                modifier = Modifier
                                    .padding(horizontal = 12.dp, vertical = 3.dp),
                                cornerRadius = if (isDragging) 16.dp else 12.dp,
                                holdDownState = isDragging,
                            ) {
                                BasicComponent(
                                    title = target.label?.toString() ?: target.key(),
                                    summary = target.packageName(),
                                    insideMargin = PaddingValues(horizontal = 16.dp, vertical = 16.dp),
                                    startAction = {
                                        TargetIcon(
                                            target = target,
                                            normalizedBitmap = iconBitmaps[target.packageName()],
                                        )
                                    },
                                    endActions = {
                                        DropdownArrowEndAction(
                                            actionColor = MiuixTheme.colorScheme.onSurfaceVariantActions,
                                        )
                                    },
                                )
                            }
                        }
                    }
                }
                item(key = "order-spacer") {
                    Spacer(modifier = Modifier.height(16.dp))
                }
            }
        }
    }
}

@Composable
private fun LoadingContent(paddingValues: PaddingValues) {
    Box(
        modifier = Modifier
            .fillMaxSize()
            .padding(paddingValues),
        contentAlignment = Alignment.Center,
    ) {
        CircularProgressIndicator()
    }
}

@Composable
internal fun BackNavigationIcon(onClick: () -> Unit) {
    IconButton(onClick = onClick) {
        Icon(
            imageVector = MiuixIcons.Back,
            contentDescription = "返回",
            tint = MiuixTheme.colorScheme.onBackground,
        )
    }
}

private data class TargetGroup(
    val key: String,
    val title: String,
    val targets: List<ShareTarget>,
)

private data class VisibilityPageData(
    val targets: List<ShareTarget>,
    val groups: List<TargetGroup>,
    val iconBitmaps: Map<String, Bitmap>,
)

@Suppress("DEPRECATION")
private fun queryAccessibilityBlacklistApps(context: Context): List<AccessibilityBlacklistApp> {
    val packageManager = context.packageManager
    val builtInReasons = AccessibilityBlacklist.builtInReasons(context)
    val packageNames = LinkedHashSet<String>()
    try {
        packageManager.getInstalledApplications(0).forEach { applicationInfo ->
            applicationInfo.packageName
                ?.takeIf { it.isNotBlank() }
                ?.let(packageNames::add)
        }
    } catch (_: Throwable) {
        
    }
    packageNames.addAll(builtInReasons.keys)
    if (packageNames.isEmpty()) return emptyList()

    val targetSizePx = (48f * context.resources.displayMetrics.density)
        .roundToInt()
        .coerceAtLeast(1)
    val loader = AppIconLoader(targetSizePx, false, context.applicationContext)
    val apps = mutableListOf<AccessibilityBlacklistApp>()
    packageNames.forEach { packageName ->
        val builtInReason = builtInReasons[packageName]
        val info = try {
            packageManager.getApplicationInfo(packageName, 0)
        } catch (_: Throwable) {
            null
        }
        if (info == null) {
            if (builtInReason != null) {
                apps += AccessibilityBlacklistApp(
                    packageName = packageName,
                    label = packageName,
                    iconBitmap = null,
                    builtInReason = builtInReason,
                )
            }
            return@forEach
        }
        val icon = try {
            loader.loadIcon(info).also { it.prepareToDraw() }
        } catch (_: Throwable) {
            null
        }
        apps += AccessibilityBlacklistApp(
            packageName = packageName,
            label = info.loadLabel(packageManager).toString().ifBlank { packageName },
            iconBitmap = icon,
            builtInReason = builtInReason,
        )
    }
    return apps.sortedWith(
        compareBy<AccessibilityBlacklistApp> {
            it.label.lowercase(Locale.getDefault())
        }.thenBy { it.packageName },
    )
}

private fun querySettingsTargets(context: Context): List<ShareTarget> {
    val targets = try {
        ShareTargetRepository.queryAll(context)
    } catch (_: Throwable) {
        emptyList()
    }
    return targets + listOf(
        ShareTarget.copyTextToClipboard(ShareTargetRepository.loadCopyIcon(context)),
        ShareTarget.copyImageToClipboard(ShareTargetRepository.loadCopyIcon(context)),
        ShareTarget.saveToLocal(ShareTargetRepository.loadSaveIcon(context)),
        ShareTarget.textSegmentation(ShareTargetRepository.loadTextSegmentationIcon(context)),
    )
}

private fun buildGroups(context: Context, targets: List<ShareTarget>): List<TargetGroup> {
    return targets
        .groupBy { it.packageName() }
        .map { (packageName, values) ->
            TargetGroup(
                key = packageName,
                title = if (values.firstOrNull()?.isBuiltIn() == true) {
                    "内置功能"
                } else {
                    applicationLabel(context, packageName, packageName)
                },
                targets = values.sortedWith(
                    compareBy<ShareTarget>({ !it.isBuiltIn() }, { it.label?.toString() ?: it.key() }),
                ),
            )
        }
        .sortedWith(compareBy<TargetGroup>({ it.key != "builtin" }, { it.title }))
}

private fun applicationLabel(context: Context, packageName: String, fallback: String): String {
    return try {
        val info = context.packageManager.getApplicationInfo(packageName, 0)
        info.loadLabel(context.packageManager).toString()
    } catch (_: Throwable) {
        fallback
    }
}

private fun loadSettingsIcons(
    context: Context,
    targets: List<ShareTarget>,
): Map<String, Bitmap> {
    val packageNames = targets
        .asSequence()
        .filterNot { it.isBuiltIn() }
        .map { it.packageName() }
        .filter { it.isNotBlank() }
        .distinct()
        .toList()
    if (packageNames.isEmpty()) return emptyMap()

    val targetSizePx = (48f * context.resources.displayMetrics.density)
        .roundToInt()
        .coerceAtLeast(1)
    val loader = AppIconLoader(targetSizePx, false, context.applicationContext)
    val packageManager = context.packageManager
    val result = LinkedHashMap<String, Bitmap>()
    packageNames.forEach { packageName ->
        try {
            val applicationInfo = packageManager.getApplicationInfo(packageName, 0)
            result[packageName] = loader.loadIcon(applicationInfo).also { it.prepareToDraw() }
        } catch (_: Throwable) {
            
        }
    }
    return result
}

private fun targetSummary(target: ShareTarget): String {
    return when {
        target.isCopyTextToClipboard() -> "将文字复制到剪贴板"
        target.isCopyImageToClipboard() -> "将图片复制到剪贴板"
        target.isSaveToLocal() -> "仅在图片分享菜单中显示"
        target.isTextSegmentation() -> "仅在文字分享菜单中显示"
        else -> {
        target.component?.let { component ->
            component.className
                .removePrefix("${component.packageName}.")
        } ?: target.key()
        }
    }
}

@Composable
private fun TargetIcon(
    target: ShareTarget,
    modifier: Modifier = Modifier,
    size: Dp = 40.dp,
    normalizedBitmap: Bitmap? = null,
) {
    val builtInAction = target.isCopyToClipboard()
        || target.isSaveToLocal()
        || target.isTextSegmentation()
    val targetSizePx = with(LocalDensity.current) {
        size.roundToPx().coerceAtLeast(1)
    }
    val bitmap = remember(target, normalizedBitmap, targetSizePx, builtInAction) {
        if (builtInAction) {
            drawableBitmap(ShareTargetRepository.iconForDisplay(target), targetSizePx)
        } else {
            normalizedBitmap ?: drawableBitmap(target.icon)
        }
    }
    if (bitmap != null) {
        Image(
            bitmap = bitmap.asImageBitmap(),
            contentDescription = null,
            modifier = modifier.size(size),
        )
    } else {
        Box(
            modifier = modifier.size(size),
            contentAlignment = Alignment.Center,
        ) {
            Text(text = target.label?.firstOrNull()?.toString() ?: "?")
        }
    }
}

private fun drawableBitmap(drawable: Drawable?, squareSizePx: Int? = null): Bitmap? {
    if (drawable == null) return null
    val snapshot = try {
        drawable.constantState?.newDrawable()?.mutate() ?: drawable.mutate()
    } catch (_: Throwable) {
        drawable
    }
    val width = squareSizePx ?: snapshot.intrinsicWidth.coerceAtLeast(1)
    val height = squareSizePx ?: snapshot.intrinsicHeight.coerceAtLeast(1)
    return try {
        createBitmap(width, height, Bitmap.Config.ARGB_8888).also { bitmap ->
            val canvas = Canvas(bitmap)
            snapshot.setBounds(0, 0, width, height)
            snapshot.draw(canvas)
        }
    } catch (_: Throwable) {
        null
    }
}

private fun copySettings(
    current: DragShareSettings,
    colorMode: Int = current.colorMode,
    uiStyle: Int = current.uiStyle,
    edgeTriggerDp: Int = current.edgeTriggerDp,
    scrollSpeedDp: Int = current.scrollSpeedDpPerSecond,
    blockBackgroundScroll: Boolean = current.blockBackgroundScroll,
    contentCaptureMode: Int = current.contentCaptureMode,
    textSharingEnabled: Boolean = current.textSharingEnabled,
    imageSharingEnabled: Boolean = current.imageSharingEnabled,
    preloadTextSegmenter: Boolean = current.preloadTextSegmenter,
    simpleMenuPosition: Int = current.simpleMenuPosition,
    simpleMenuOpacityPercent: Int = current.simpleMenuOpacityPercent,
    simpleMenuCornerRadiusDp: Int = current.simpleMenuCornerRadiusDp,
    simpleMenuEdgeDistanceDp: Int = current.simpleMenuEdgeDistanceDp,
    iconOpacityPercent: Int = current.iconOpacityPercent,
    modernBlurRadiusDp: Int = current.modernBlurRadiusDp,
    modernGlassOpacityPercent: Int = current.modernGlassOpacityPercent,
    closeMenuWhenPointerLeaves: Boolean = current.closeMenuWhenPointerLeaves,
    hiddenTargetKeys: Set<String> = current.hiddenTargetKeys,
    targetOrder: List<String> = current.targetOrder,
    accessibilityLandscapeRecognitionEnabled: Boolean =
        current.accessibilityLandscapeRecognitionEnabled,
    accessibilityBlacklistedPackages: Set<String> = current.accessibilityBlacklistedPackages,
    accessibilityLongPressTimeoutMillis: Int = current.accessibilityLongPressTimeoutMillis,
    accessibilityRecognitionSensitivityPercent: Int =
        current.accessibilityRecognitionSensitivityPercent,
    logLevel: Int = current.logLevel,
    logDestination: Int = current.logDestination,
    masterEnabled: Boolean = current.masterEnabled,
): DragShareSettings = DragShareSettings(
    colorMode,
    uiStyle,
    edgeTriggerDp,
    scrollSpeedDp,
    blockBackgroundScroll,
    textSharingEnabled,
    imageSharingEnabled,
    simpleMenuPosition,
    simpleMenuOpacityPercent,
    simpleMenuCornerRadiusDp,
    simpleMenuEdgeDistanceDp,
    iconOpacityPercent,
    closeMenuWhenPointerLeaves,
    hiddenTargetKeys,
    targetOrder,
    contentCaptureMode,
    accessibilityLandscapeRecognitionEnabled,
    accessibilityBlacklistedPackages,
    accessibilityLongPressTimeoutMillis,
    accessibilityRecognitionSensitivityPercent,
    preloadTextSegmenter,
    modernBlurRadiusDp,
    modernGlassOpacityPercent,
    logLevel,
    logDestination,
    masterEnabled,
)

@Suppress("DEPRECATION")
@Composable
private fun SyncSystemBars(dark: Boolean) {
    val view = LocalView.current
    SideEffect {
        val activity = view.context as? Activity ?: return@SideEffect
        val window = activity.window
        window.statusBarColor = android.graphics.Color.TRANSPARENT
        window.navigationBarColor = android.graphics.Color.TRANSPARENT
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.Q) {
            window.isStatusBarContrastEnforced = false
            window.isNavigationBarContrastEnforced = false
        }
        val insetsController = WindowCompat.getInsetsController(window, view)
        insetsController.isAppearanceLightStatusBars = !dark
        insetsController.isAppearanceLightNavigationBars = !dark
    }
}
