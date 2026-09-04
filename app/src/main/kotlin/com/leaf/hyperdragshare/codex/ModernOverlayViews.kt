package com.leaf.hyperdragshare.codex

import android.content.Context
import android.graphics.Bitmap
import android.graphics.Canvas
import android.graphics.Outline
import android.graphics.drawable.Drawable
import android.os.Build
import android.view.View
import android.view.ViewGroup
import android.view.ViewOutlineProvider
import android.view.animation.PathInterpolator
import android.widget.FrameLayout
import androidx.compose.animation.AnimatedVisibility
import androidx.compose.animation.animateColorAsState
import androidx.compose.animation.core.FastOutLinearInEasing
import androidx.compose.animation.core.FastOutSlowInEasing
import androidx.compose.animation.core.Spring
import androidx.compose.animation.core.animateFloatAsState
import androidx.compose.animation.core.spring
import androidx.compose.animation.core.tween
import androidx.compose.animation.fadeIn
import androidx.compose.animation.fadeOut
import androidx.compose.animation.scaleIn
import androidx.compose.animation.scaleOut
import androidx.compose.foundation.Image
import androidx.compose.foundation.horizontalScroll
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.verticalScroll
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.ScrollState
import androidx.compose.runtime.Composable
import androidx.compose.runtime.DisposableEffect
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.SideEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.alpha
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.ImageBitmap
import androidx.compose.ui.graphics.asImageBitmap
import androidx.compose.ui.graphics.graphicsLayer
import androidx.compose.ui.layout.boundsInRoot
import androidx.compose.ui.layout.onGloballyPositioned
import androidx.compose.ui.platform.ComposeView
import androidx.compose.ui.platform.LocalDensity
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.lifecycle.Lifecycle
import androidx.lifecycle.LifecycleOwner
import androidx.lifecycle.LifecycleRegistry
import androidx.lifecycle.ViewModelStore
import androidx.lifecycle.ViewModelStoreOwner
import androidx.lifecycle.setViewTreeLifecycleOwner
import androidx.lifecycle.setViewTreeViewModelStoreOwner
import androidx.savedstate.SavedStateRegistry
import androidx.savedstate.SavedStateRegistryController
import androidx.savedstate.SavedStateRegistryOwner
import androidx.savedstate.setViewTreeSavedStateRegistryOwner
import top.yukonga.miuix.kmp.basic.Card
import top.yukonga.miuix.kmp.basic.CardDefaults
import top.yukonga.miuix.kmp.squircle.squircleBackground
import top.yukonga.miuix.kmp.theme.ColorSchemeMode
import top.yukonga.miuix.kmp.theme.MiuixTheme
import top.yukonga.miuix.kmp.theme.ThemeController
import kotlin.math.max

private const val MODERN_MENU_ICON_SIZE_DP = 44
private const val MODERN_MENU_ITEM_WIDTH_DP = 76
private const val MODERN_MENU_ITEM_HEIGHT_DP = 84
private const val MODERN_MENU_ITEM_STAGGER_MS = 38L
private const val MODERN_CARD_CORNER_RADIUS_DP = 16f
private const val MODERN_OVERLAY_ENTER_DURATION_MS = 220L
private const val MODERN_OVERLAY_EXIT_DURATION_MS = 150L
private val ModernOverlayEnterInterpolator = PathInterpolator(0.2f, 0f, 0f, 1f)
private val ModernOverlayExitInterpolator = PathInterpolator(0.4f, 0f, 1f, 1f)

private class ModernOverlayLifecycleOwner :
    LifecycleOwner,
    SavedStateRegistryOwner,
    ViewModelStoreOwner {
    private val registry = LifecycleRegistry(this).apply {
        currentState = Lifecycle.State.INITIALIZED
    }
    private val savedStateController = SavedStateRegistryController.create(this)
    private val overlayViewModelStore = ViewModelStore()

    init {
        savedStateController.performAttach()
        savedStateController.performRestore(null)
        registry.currentState = Lifecycle.State.CREATED
    }

    override val lifecycle: Lifecycle
        get() = registry

    override val savedStateRegistry: SavedStateRegistry
        get() = savedStateController.savedStateRegistry

    override val viewModelStore: ViewModelStore
        get() = overlayViewModelStore

    fun resume() {
        if (registry.currentState != Lifecycle.State.DESTROYED) {
            registry.currentState = Lifecycle.State.RESUMED
        }
    }

    fun destroy() {
        registry.currentState = Lifecycle.State.DESTROYED
        overlayViewModelStore.clear()
    }
}

internal abstract class ModernOverlayComposeView(context: Context) : FrameLayout(context) {
    protected var contentVisible by mutableStateOf(false)
    protected var nativeBackdropBlurEnabled by mutableStateOf(false)
    private val lifecycleOwner = ModernOverlayLifecycleOwner()
    private val composeView = ComposeView(context)
    private var animationGeneration = 0

    init {
        setViewTreeLifecycleOwner(lifecycleOwner)
        setViewTreeSavedStateRegistryOwner(lifecycleOwner)
        setViewTreeViewModelStoreOwner(lifecycleOwner)
        composeView.setViewTreeLifecycleOwner(lifecycleOwner)
        composeView.setViewTreeSavedStateRegistryOwner(lifecycleOwner)
        composeView.setViewTreeViewModelStoreOwner(lifecycleOwner)
        addView(
            composeView,
            LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT,
                ViewGroup.LayoutParams.MATCH_PARENT,
            ),
        )
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.Q) {
            setForceDarkAllowed(false)
        }
        setBackgroundColor(android.graphics.Color.TRANSPARENT)
        outlineProvider = ModernRoundedOutlineProvider(context)
        clipToOutline = true
        isClickable = false
        isFocusable = false
    }

    protected fun setOverlayContent(content: @Composable () -> Unit) {
        composeView.setContent(content)
    }

    override fun onAttachedToWindow() {
        super.onAttachedToWindow()
        lifecycleOwner.resume()
    }

    override fun onDetachedFromWindow() {
        lifecycleOwner.destroy()
        super.onDetachedFromWindow()
    }

    fun showAnimated() {
        post {
            animationGeneration++
            animate().cancel()
            if (!contentVisible) {
                alpha = 0f
                scaleX = 0.9f
                scaleY = 0.9f
                contentVisible = true
            }
            animate()
                .alpha(1f)
                .scaleX(1f)
                .scaleY(1f)
                .setDuration(MODERN_OVERLAY_ENTER_DURATION_MS)
                .setInterpolator(ModernOverlayEnterInterpolator)
                .start()
        }
    }

    fun hideAnimated() {
        val generation = ++animationGeneration
        animate().cancel()
        animate()
            .alpha(0f)
            .scaleX(0.96f)
            .scaleY(0.96f)
            .setDuration(MODERN_OVERLAY_EXIT_DURATION_MS)
            .setInterpolator(ModernOverlayExitInterpolator)
            .withEndAction {
                if (animationGeneration == generation) {
                    contentVisible = false
                }
            }
            .start()
    }

    fun updateNativeBackdropBlurAvailability(enabled: Boolean) {
        nativeBackdropBlurEnabled = enabled
    }

    fun setContentVisibleForWindowAnimation(visible: Boolean) {
        animationGeneration++
        animate().cancel()
        alpha = 1f
        scaleX = 1f
        scaleY = 1f
        contentVisible = visible
    }

    fun disposeOverlay() {
        animationGeneration++
        animate().cancel()
        nativeBackdropBlurEnabled = false
        contentVisible = false
        composeView.disposeComposition()
    }
}

internal class ModernPreviewOverlayView(
    context: Context,
    private val payload: CapturedContent,
    private val settings: DragShareSettings,
) : ModernOverlayComposeView(context) {
    init {
        setOverlayContent {
            ModernOverlayTheme(settings) {
                val image = remember(payload.bitmap) {
                    payload.bitmap?.takeIf { !it.isRecycled }?.asImageBitmap()
                }
                ModernFrostedSurface(
                    settings = settings,
                    visible = contentVisible,
                    nativeBackdropBlur = nativeBackdropBlurEnabled,
                    modifier = Modifier.fillMaxSize(),
                ) {
                    Box(
                        modifier = Modifier
                            .fillMaxSize()
                            .padding(10.dp),
                        contentAlignment = Alignment.Center,
                    ) {
                        if (payload.isImage() && image != null) {
                            Image(
                                bitmap = image,
                                contentDescription = null,
                                modifier = Modifier.fillMaxSize(),
                            )
                        } else {
                            androidx.compose.material3.Text(
                                text = payload.text.orEmpty(),
                                color = MiuixTheme.colorScheme.onSurfaceContainer,
                                fontSize = 14.sp,
                                lineHeight = 19.sp,
                                textAlign = TextAlign.Center,
                                maxLines = 8,
                                overflow = TextOverflow.Ellipsis,
                            )
                        }
                    }
                }
            }
        }
    }
}

internal class ModernMenuOverlayView(
    context: Context,
    private val targets: List<ShareTarget>,
    private val icons: Map<ShareTarget, Drawable>,
    private val settings: DragShareSettings,
    private val vertical: Boolean,
) : ModernOverlayComposeView(context) {
    private val itemBounds = LinkedHashMap<ShareTarget, androidx.compose.ui.geometry.Rect>()
    private var selectedTargetState by mutableStateOf<ShareTarget?>(null)
    private var scrollState: ScrollState? = null

    init {
        setOverlayContent {
            ModernOverlayTheme(settings) {
                val state = rememberScrollState()
                SideEffect { scrollState = state }
                DisposableEffect(Unit) {
                    onDispose {
                        scrollState = null
                        itemBounds.clear()
                    }
                }
                ModernFrostedSurface(
                    settings = settings,
                    visible = contentVisible,
                    nativeBackdropBlur = nativeBackdropBlurEnabled,
                    modifier = Modifier.fillMaxSize(),
                ) {
                    if (targets.isEmpty()) {
                        Box(
                            modifier = Modifier.fillMaxSize(),
                            contentAlignment = Alignment.Center,
                        ) {
                            androidx.compose.material3.Text(
                                text = "没有可用的分享应用",
                                color = MiuixTheme.colorScheme.onSurfaceContainer,
                                fontSize = 13.sp,
                            )
                        }
                    } else if (vertical) {
                        Column(
                            modifier = Modifier
                                .fillMaxSize()
                                .verticalScroll(state)
                                .padding(vertical = 6.dp),
                            horizontalAlignment = Alignment.CenterHorizontally,
                        ) {
                            targets.forEachIndexed { index, target ->
                                ModernShareTarget(
                                    target = target,
                                    icon = icons[target],
                                    selected = target === selectedTargetState,
                                    visible = contentVisible,
                                    index = index,
                                    iconOpacity = settings.iconOpacityPercent / 100f,
                                    modifier = Modifier.size(
                                        MODERN_MENU_ITEM_WIDTH_DP.dp,
                                        MODERN_MENU_ITEM_HEIGHT_DP.dp,
                                    ),
                                    onBoundsChanged = { itemBounds[target] = it },
                                    onDisposed = { itemBounds.remove(target) },
                                )
                            }
                        }
                    } else {
                        Row(
                            modifier = Modifier
                                .fillMaxSize()
                                .horizontalScroll(state)
                                .padding(horizontal = 6.dp),
                            verticalAlignment = Alignment.CenterVertically,
                        ) {
                            targets.forEachIndexed { index, target ->
                                ModernShareTarget(
                                    target = target,
                                    icon = icons[target],
                                    selected = target === selectedTargetState,
                                    visible = contentVisible,
                                    index = index,
                                    iconOpacity = settings.iconOpacityPercent / 100f,
                                    modifier = Modifier.size(
                                        MODERN_MENU_ITEM_WIDTH_DP.dp,
                                        MODERN_MENU_ITEM_HEIGHT_DP.dp,
                                    ),
                                    onBoundsChanged = { itemBounds[target] = it },
                                    onDisposed = { itemBounds.remove(target) },
                                )
                            }
                        }
                    }
                }
            }
        }
    }

    fun hitTest(screenX: Float, screenY: Float): ShareTarget? {
        val location = IntArray(2)
        getLocationOnScreen(location)
        val localX = screenX - location[0]
        val localY = screenY - location[1]
        return itemBounds.entries.firstOrNull { (_, bounds) ->
            localX >= bounds.left && localX < bounds.right
                    && localY >= bounds.top && localY < bounds.bottom
        }?.key
    }

    fun setSelectedTarget(target: ShareTarget?) {
        selectedTargetState = target
    }

    fun scrollByPixels(distance: Int) {
        val state = scrollState ?: return
        val next = (state.value + distance).coerceIn(0, state.maxValue)
        val delta = next - state.value
        if (delta != 0) {
            state.dispatchRawDelta(delta.toFloat())
        }
    }
}

@Composable
private fun ModernOverlayTheme(
    settings: DragShareSettings,
    content: @Composable () -> Unit,
) {
    val dark = settings.colorMode == DragShareSettings.COLOR_DARK
    val themeController = remember(dark) {
        ThemeController(if (dark) ColorSchemeMode.Dark else ColorSchemeMode.Light)
    }
    MiuixTheme(controller = themeController) {
        content()
    }
}

@Composable
private fun ModernFrostedSurface(
    settings: DragShareSettings,
    visible: Boolean,
    nativeBackdropBlur: Boolean,
    modifier: Modifier = Modifier,
    content: @Composable () -> Unit,
) {
    Box(modifier = modifier) {
        if (visible) {
            ModernCardSurface(
                settings = settings,
                nativeBackdropBlur = nativeBackdropBlur,
                modifier = Modifier.fillMaxSize(),
                content = content,
            )
        }
    }
}

@Composable
private fun ModernCardSurface(
    settings: DragShareSettings,
    nativeBackdropBlur: Boolean,
    modifier: Modifier = Modifier,
    content: @Composable () -> Unit,
) {
    val cardColor = MiuixTheme.colorScheme.surfaceContainer.let { surfaceColor ->
        if (nativeBackdropBlur) {
            surfaceColor.copy(alpha = settings.modernGlassOpacityPercent / 100f)
        } else {
            surfaceColor
        }
    }
    Card(
        modifier = modifier,
        insideMargin = PaddingValues(0.dp),
        colors = CardDefaults.defaultColors(
            color = cardColor,
            contentColor = MiuixTheme.colorScheme.onSurfaceContainer,
        ),
    ) {
        Box(modifier = Modifier.fillMaxSize()) {
            content()
        }
    }
}

private class ModernRoundedOutlineProvider(context: Context) : ViewOutlineProvider() {
    private val radiusPx = context.resources.displayMetrics.density * MODERN_CARD_CORNER_RADIUS_DP

    override fun getOutline(view: View, outline: Outline) {
        if (view.width <= 0 || view.height <= 0) {
            outline.setEmpty()
            return
        }
        outline.setRoundRect(0, 0, view.width, view.height, radiusPx)
    }
}

@Composable
private fun ModernShareTarget(
    target: ShareTarget,
    icon: Drawable?,
    selected: Boolean,
    visible: Boolean,
    index: Int,
    iconOpacity: Float,
    modifier: Modifier = Modifier,
    onBoundsChanged: (androidx.compose.ui.geometry.Rect) -> Unit,
    onDisposed: () -> Unit,
) {
    var itemVisible by remember { mutableStateOf(false) }
    LaunchedEffect(visible) {
        if (visible) {
            kotlinx.coroutines.delay(index * MODERN_MENU_ITEM_STAGGER_MS)
            itemVisible = true
        } else {
            itemVisible = false
        }
    }
    DisposableEffect(target) {
        onDispose(onDisposed)
    }
    
    
    Box(modifier = modifier) {
        AnimatedVisibility(
            visible = itemVisible,
            enter = fadeIn(tween(180, easing = FastOutSlowInEasing)) + scaleIn(
                initialScale = 0.72f,
                animationSpec = spring(
                    dampingRatio = Spring.DampingRatioMediumBouncy,
                    stiffness = Spring.StiffnessMediumLow,
                ),
            ),
            exit = fadeOut(tween(120, easing = FastOutLinearInEasing)) + scaleOut(
                targetScale = 0.86f,
                animationSpec = tween(120, easing = FastOutLinearInEasing),
            ),
            modifier = Modifier.matchParentSize(),
        ) {
            val selectedScale by animateFloatAsState(
                targetValue = if (selected) 1.08f else 1f,
                animationSpec = spring(
                    dampingRatio = Spring.DampingRatioMediumBouncy,
                    stiffness = Spring.StiffnessMedium,
                ),
                label = "modern-target-scale",
            )
            val background by animateColorAsState(
                targetValue = if (selected) {
                    MiuixTheme.colorScheme.onSurfaceContainer.copy(alpha = 0.12f)
                } else {
                    Color.Transparent
                },
                animationSpec = tween(140, easing = FastOutSlowInEasing),
                label = "modern-target-selection",
            )
            Column(
                modifier = Modifier
                    .fillMaxSize()
                    .onGloballyPositioned { onBoundsChanged(it.boundsInRoot()) }
                    .then(
                        if (selected) {
                            Modifier.squircleBackground(
                                color = background,
                                cornerRadius = 12.dp,
                            )
                        } else {
                            Modifier
                        },
                    )
                    .padding(vertical = 4.dp),
                horizontalAlignment = Alignment.CenterHorizontally,
                verticalArrangement = Arrangement.Center,
            ) {
                ModernTargetIcon(
                    target = target,
                    icon = icon,
                    opacity = iconOpacity,
                    modifier = Modifier
                        .size(MODERN_MENU_ICON_SIZE_DP.dp)
                        .graphicsLayer {
                            scaleX = selectedScale
                            scaleY = selectedScale
                        },
                )
                androidx.compose.material3.Text(
                    text = target.label?.toString().orEmpty(),
                    modifier = Modifier
                        .fillMaxWidth()
                        .padding(horizontal = 2.dp)
                        .alpha(iconOpacity),
                    color = MiuixTheme.colorScheme.onSurfaceContainer,
                    fontSize = 11.sp,
                    fontWeight = FontWeight.Medium,
                    maxLines = 1,
                    overflow = TextOverflow.Ellipsis,
                    textAlign = TextAlign.Center,
                )
            }
        }
    }
}

@Composable
private fun ModernTargetIcon(
    target: ShareTarget,
    icon: Drawable?,
    opacity: Float,
    modifier: Modifier = Modifier,
) {
    val fallbackSizePx = with(LocalDensity.current) {
        MODERN_MENU_ICON_SIZE_DP.dp.roundToPx()
    }
    val bitmap = remember(icon, fallbackSizePx) { drawableToBitmap(icon, fallbackSizePx) }
    if (bitmap != null) {
        Image(
            bitmap = bitmap.asImageBitmap(),
            contentDescription = null,
            modifier = modifier.alpha(opacity),
        )
    } else {
        Box(
            modifier = modifier,
            contentAlignment = Alignment.Center,
        ) {
            androidx.compose.material3.Text(
                text = target.label?.firstOrNull()?.toString() ?: "?",
                color = MiuixTheme.colorScheme.onSurfaceContainer.copy(alpha = opacity),
                fontSize = 18.sp,
            )
        }
    }
}

private fun drawableToBitmap(drawable: Drawable?, fallbackSizePx: Int): Bitmap? {
    if (drawable == null) return null
    val fallbackSize = max(1, fallbackSizePx)
    val drawableForSnapshot = try {
        drawable.constantState?.newDrawable()?.mutate() ?: drawable.mutate()
    } catch (_: Throwable) {
        drawable
    }
    val width = if (drawableForSnapshot.intrinsicWidth > 1) {
        drawableForSnapshot.intrinsicWidth
    } else {
        fallbackSize
    }
    val height = if (drawableForSnapshot.intrinsicHeight > 1) {
        drawableForSnapshot.intrinsicHeight
    } else {
        fallbackSize
    }
    return try {
        Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888).also { bitmap ->
            val canvas = Canvas(bitmap)
            drawableForSnapshot.setBounds(0, 0, width, height)
            drawableForSnapshot.setVisible(true, false)
            drawableForSnapshot.alpha = 255
            drawableForSnapshot.draw(canvas)
        }
    } catch (_: Throwable) {
        null
    }
}
