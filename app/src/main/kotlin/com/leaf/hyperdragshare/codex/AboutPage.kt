package com.leaf.hyperdragshare.codex

import android.content.ActivityNotFoundException
import android.content.Context
import android.content.Intent
import android.net.Uri
import android.widget.Toast
import androidx.compose.foundation.Image
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.requiredSize
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.LazyListState
import androidx.compose.foundation.lazy.rememberLazyListState
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.runtime.Composable
import androidx.compose.runtime.derivedStateOf
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableIntStateOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clipToBounds
import androidx.compose.ui.graphics.ColorFilter
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.RectangleShape
import androidx.compose.ui.graphics.Shape
import androidx.compose.ui.graphics.graphicsLayer
import androidx.compose.ui.input.nestedscroll.nestedScroll
import androidx.compose.ui.layout.onSizeChanged
import androidx.compose.ui.platform.LocalDensity
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import top.yukonga.miuix.kmp.basic.Card
import top.yukonga.miuix.kmp.basic.CardDefaults
import top.yukonga.miuix.kmp.basic.MiuixScrollBehavior
import top.yukonga.miuix.kmp.basic.Scaffold
import top.yukonga.miuix.kmp.basic.ScrollBehavior
import top.yukonga.miuix.kmp.basic.SmallTopAppBar
import top.yukonga.miuix.kmp.basic.Text
import top.yukonga.miuix.kmp.blur.BlendColorEntry
import top.yukonga.miuix.kmp.blur.BlurBlendMode
import top.yukonga.miuix.kmp.blur.BlurColors
import top.yukonga.miuix.kmp.blur.BlurDefaults
import top.yukonga.miuix.kmp.blur.LayerBackdrop
import top.yukonga.miuix.kmp.blur.isRuntimeShaderSupported
import top.yukonga.miuix.kmp.blur.layerBackdrop
import top.yukonga.miuix.kmp.blur.rememberLayerBackdrop
import top.yukonga.miuix.kmp.blur.textureBlur
import top.yukonga.miuix.kmp.preference.ArrowPreference
import top.yukonga.miuix.kmp.theme.MiuixTheme
import androidx.compose.ui.graphics.BlendMode as ComposeBlendMode

private const val PROJECT_URL = "https://github.com/Leaf-lsgtky/HyperDragShare"

@Composable
fun DragShareAboutPage(
    context: Context,
    dark: Boolean,
    onBack: () -> Unit,
    onOpenLicenses: () -> Unit,
) {
    val listState = rememberLazyListState()
    val scrollBehavior = MiuixScrollBehavior()
    var logoSpacerHeightPx by remember { mutableIntStateOf(0) }
    val scrollProgress by remember {
        derivedStateOf {
            when {
                logoSpacerHeightPx <= 0 -> 0f
                listState.firstVisibleItemIndex > 0 -> 1f
                else -> {
                    (listState.firstVisibleItemScrollOffset.toFloat() / logoSpacerHeightPx)
                        .coerceIn(0f, 1f)
                }
            }
        }
    }

    
    
    val barBackdrop = rememberDragShareBarBackdrop()
    val barBlurActive = barBackdrop != null && scrollProgress == 1f
    val barColor = when {
        barBlurActive -> Color.Transparent
        scrollProgress == 1f -> MiuixTheme.colorScheme.surface
        else -> Color.Transparent
    }

    Scaffold(
        topBar = {
            DragShareBlurredTopBar(
                backdrop = barBackdrop,
                blurActive = barBlurActive,
            ) {
                SmallTopAppBar(
                    title = "关于",
                    color = barColor,
                    titleColor = MiuixTheme.colorScheme.onSurface.copy(
                        alpha = ((scrollProgress - 0.35f) / 0.65f).coerceIn(0f, 1f),
                    ),
                    navigationIcon = { BackNavigationIcon(onClick = onBack) },
                    scrollBehavior = scrollBehavior,
                )
            }
        },
    ) { paddingValues ->
        Box(
            modifier = Modifier
                .fillMaxSize()
                .then(if (barBackdrop != null) Modifier.layerBackdrop(barBackdrop) else Modifier),
        ) {
            DragShareAboutContent(
                context = context,
                dark = dark,
                paddingValues = paddingValues,
                listState = listState,
                scrollBehavior = scrollBehavior,
                scrollProgress = scrollProgress,
                onLogoSpacerHeightChanged = { logoSpacerHeightPx = it },
                onOpenLicenses = onOpenLicenses,
            )
        }
    }
}

@Composable
private fun DragShareAboutContent(
    context: Context,
    dark: Boolean,
    paddingValues: PaddingValues,
    listState: LazyListState,
    scrollBehavior: ScrollBehavior,
    scrollProgress: Float,
    onLogoSpacerHeightChanged: (Int) -> Unit,
    onOpenLicenses: () -> Unit,
) {
    val density = LocalDensity.current
    var headerHeight by remember { mutableStateOf(240.dp) }
    val cardBackdrop = rememberDragShareCardBackdrop()
    val glassColors = if (cardBackdrop != null) rememberDragShareGlassColors(dark) else null
    val cardColor = if (cardBackdrop != null) Color.Transparent else MiuixTheme.colorScheme.surfaceContainer
    val scrollTop = paddingValues.calculateTopPadding()
    val headerTop = scrollTop + 40.dp
    val logoBlend = remember(dark) {
        if (dark) {
            listOf(
                BlendColorEntry(Color(0xE6A1A1A1), BlurBlendMode.ColorDodge),
                BlendColorEntry(Color(0x4DE6E6E6), BlurBlendMode.LinearLight),
                BlendColorEntry(Color(0xFF1AF500), BlurBlendMode.Lab),
            )
        } else {
            listOf(
                BlendColorEntry(Color(0xCC4A4A4A), BlurBlendMode.ColorBurn),
                BlendColorEntry(Color(0xFF4F4F4F), BlurBlendMode.LinearLight),
                BlendColorEntry(Color(0xFF1AF200), BlurBlendMode.Lab),
            )
        }
    }

    DragShareOs3Background(
        dark = dark,
        modifier = Modifier.fillMaxSize(),
        backgroundModifier = if (cardBackdrop != null) Modifier.layerBackdrop(cardBackdrop) else Modifier,
        alpha = { 1f - scrollProgress },
    ) {
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .padding(top = headerTop + 52.dp, start = 32.dp, end = 32.dp)
                .onSizeChanged { size ->
                    with(density) { headerHeight = size.height.toDp() }
                },
            horizontalAlignment = Alignment.CenterHorizontally,
        ) {
            val iconProgress = fadeProgress(scrollProgress, start = 0.35f, end = 0.50f)
            Box(
                modifier = Modifier
                    .size(100.dp)
                    .clipToBounds()
                    .graphicsLayer {
                        alpha = 1f - iconProgress
                        scaleX = 1f - (iconProgress * 0.05f)
                        scaleY = 1f - (iconProgress * 0.05f)
                    },
                contentAlignment = Alignment.Center,
            ) {
                
                Image(
                    painter = painterResource(com.hyper.onestep.R.drawable.ic_about_foreground),
                    contentDescription = null,
                    modifier = Modifier
                        .requiredSize(144.dp)
                        .then(
                            if (cardBackdrop != null) {
                                Modifier.textureBlur(
                                    backdrop = cardBackdrop,
                                    shape = RoundedCornerShape(0.dp),
                                    blurRadius = 150f,
                                    colors = BlurColors(blendColors = logoBlend),
                                    contentBlendMode = ComposeBlendMode.DstIn,
                                )
                            } else {
                                Modifier
                            },
                        ),
                    colorFilter = ColorFilter.tint(MiuixTheme.colorScheme.onBackground),
                )
            }
            val nameProgress = fadeProgress(scrollProgress, start = 0.20f, end = 0.35f)
            Text(
                text = "HyperDragShare",
                modifier = Modifier
                    .padding(top = 12.dp, bottom = 5.dp)
                    .graphicsLayer {
                        alpha = 1f - nameProgress
                        scaleX = 1f - (nameProgress * 0.05f)
                        scaleY = 1f - (nameProgress * 0.05f)
                    }
                    .then(
                        if (cardBackdrop != null) {
                            Modifier.textureBlur(
                                backdrop = cardBackdrop,
                                shape = RoundedCornerShape(0.dp),
                                blurRadius = 150f,
                                colors = BlurColors(blendColors = logoBlend),
                                contentBlendMode = ComposeBlendMode.DstIn,
                            )
                        } else {
                            Modifier
                        },
                    ),
                color = MiuixTheme.colorScheme.onBackground,
                fontSize = 35.sp,
                fontWeight = FontWeight.Bold,
            )
            val versionProgress = fadeProgress(scrollProgress, start = 0.05f, end = 0.20f)
            Text(
                text = "v${com.hyper.onestep.BuildConfig.VERSION_NAME} (${com.hyper.onestep.BuildConfig.VERSION_CODE})",
                modifier = Modifier
                    .fillMaxWidth()
                    .graphicsLayer {
                        alpha = 1f - versionProgress
                        scaleX = 1f - (versionProgress * 0.05f)
                        scaleY = 1f - (versionProgress * 0.05f)
                    },
                color = MiuixTheme.colorScheme.onSurfaceVariantSummary,
                fontSize = 14.sp,
                textAlign = TextAlign.Center,
            )
        }

        LazyColumn(
            state = listState,
            modifier = Modifier
                .fillMaxSize()
                .nestedScroll(scrollBehavior.nestedScrollConnection),
            contentPadding = PaddingValues(top = scrollTop),
        ) {
            
            item(key = "logo-spacer") {
                Spacer(
                    modifier = Modifier
                        .fillMaxWidth()
                        .height(headerHeight + 52.dp + headerTop - scrollTop + 126.dp)
                        .onSizeChanged { onLogoSpacerHeightChanged(it.height) },
                )
            }
            item(key = "about-links") {
                Column(
                    modifier = Modifier
                        .fillParentMaxHeight()
                        .padding(bottom = paddingValues.calculateBottomPadding()),
                ) {
                    Card(
                        modifier = Modifier
                            .padding(horizontal = 12.dp)
                            .dragShareGlass(cardBackdrop, glassColors),
                        colors = CardDefaults.defaultColors(color = cardColor),
                    ) {
                        ArrowPreference(
                            title = "查看源代码",
                            endActions = { DragShareLinkAction("GitHub") },
                            onClick = { openProjectUrl(context) },
                        )
                    }
                    Spacer(modifier = Modifier.height(12.dp))
                    Card(
                        modifier = Modifier
                            .padding(horizontal = 12.dp)
                            .dragShareGlass(cardBackdrop, glassColors),
                        colors = CardDefaults.defaultColors(color = cardColor),
                    ) {
                        ArrowPreference(
                            title = "开放源代码许可",
                            endActions = { DragShareLinkAction("许可证") },
                            onClick = onOpenLicenses,
                        )
                    }
                    
                    Spacer(modifier = Modifier.height(280.dp))
                }
            }
        }
    }
}

@Composable
internal fun DragShareLinkAction(text: String) {
    Text(
        text = text,
        fontSize = MiuixTheme.textStyles.body2.fontSize,
        color = MiuixTheme.colorScheme.onSurfaceVariantActions,
    )
}

private fun fadeProgress(progress: Float, start: Float, end: Float): Float =
    ((progress - start) / (end - start)).coerceIn(0f, 1f)

@Composable
internal fun rememberDragShareBarBackdrop(): LayerBackdrop? {
    if (!isRuntimeShaderSupported()) return null
    val surfaceColor = MiuixTheme.colorScheme.surface
    return rememberLayerBackdrop {
        drawRect(surfaceColor)
        drawContent()
    }
}

@Composable
internal fun rememberDragShareCardBackdrop(): LayerBackdrop? {
    if (!isRuntimeShaderSupported()) return null
    return rememberLayerBackdrop()
}

@Composable
internal fun rememberDragShareGlassColors(dark: Boolean): BlurColors =
    BlurDefaults.blurColors(
        blendColors = if (dark) {
            DragShareGlassBlendTokens.OverlayThinDark
        } else {
            DragShareGlassBlendTokens.PuredRegularLight
        },
    )

@Composable
internal fun DragShareBlurredTopBar(
    backdrop: LayerBackdrop?,
    blurActive: Boolean,
    content: @Composable () -> Unit,
) {
    Box(
        modifier = if (blurActive && backdrop != null) {
            Modifier.textureBlur(
                backdrop = backdrop,
                shape = RectangleShape,
                blurRadius = 25f,
                colors = BlurDefaults.blurColors(
                    blendColors = listOf(
                        BlendColorEntry(MiuixTheme.colorScheme.surface.copy(alpha = 0.8f)),
                    ),
                ),
            )
        } else {
            Modifier
        },
    ) {
        content()
    }
}

internal fun Modifier.dragShareGlass(
    backdrop: LayerBackdrop?,
    colors: BlurColors?,
    shape: Shape = RoundedCornerShape(16.dp),
    blurRadius: Float = 60f,
): Modifier {
    if (backdrop == null || colors == null) return this
    return textureBlur(
        backdrop = backdrop,
        shape = shape,
        blurRadius = blurRadius,
        noiseCoefficient = BlurDefaults.NoiseCoefficient,
        colors = colors,
    )
}

private fun openProjectUrl(context: Context) {
    try {
        context.startActivity(
            Intent(Intent.ACTION_VIEW, Uri.parse(PROJECT_URL))
                .addFlags(Intent.FLAG_ACTIVITY_NEW_TASK),
        )
    } catch (_: ActivityNotFoundException) {
        Toast.makeText(context, "未找到可打开项目地址的应用", Toast.LENGTH_SHORT).show()
    }
}
