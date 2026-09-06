package com.hyper.onestep.ui.settings

import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.LazyListState
import androidx.compose.foundation.lazy.rememberLazyListState
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
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.graphicsLayer
import androidx.compose.ui.input.nestedscroll.nestedScroll
import androidx.compose.ui.layout.onSizeChanged
import androidx.compose.ui.platform.LocalDensity
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import android.graphics.ImageDecoder
import android.graphics.drawable.Animatable
import android.widget.ImageView
import androidx.compose.ui.viewinterop.AndroidView
import com.hyper.onestep.BuildConfig
import com.hyper.onestep.R
import com.leaf.hyperdragshare.codex.DragShareBlurredTopBar
import com.leaf.hyperdragshare.codex.DragShareLinkAction
import com.leaf.hyperdragshare.codex.DragShareOs3Background
import com.leaf.hyperdragshare.codex.dragShareGlass
import com.leaf.hyperdragshare.codex.rememberDragShareBarBackdrop
import com.leaf.hyperdragshare.codex.rememberDragShareCardBackdrop
import com.leaf.hyperdragshare.codex.rememberDragShareGlassColors
import com.leaf.hyperdragshare.codex.BackNavigationIcon
import top.yukonga.miuix.kmp.basic.Card
import top.yukonga.miuix.kmp.basic.CardDefaults
import top.yukonga.miuix.kmp.basic.MiuixScrollBehavior
import top.yukonga.miuix.kmp.basic.Scaffold
import top.yukonga.miuix.kmp.basic.ScrollBehavior
import top.yukonga.miuix.kmp.basic.SmallTitle
import top.yukonga.miuix.kmp.basic.SmallTopAppBar
import top.yukonga.miuix.kmp.basic.Text
import top.yukonga.miuix.kmp.preference.ArrowPreference
import top.yukonga.miuix.kmp.theme.MiuixTheme
import top.yukonga.miuix.kmp.blur.layerBackdrop

private data class VanStepRepoLink(
    val name: String,
    val summary: String,
    val url: String,
)

private data class VanStepRepoSection(
    val title: String,
    val links: List<VanStepRepoLink>,
)

private val VAN_STEP_REPO_SECTIONS = listOf(
    VanStepRepoSection(
        title = "项目",
        links = listOf(
            VanStepRepoLink(
                "Van Step",
                "当前项目 · onestep_on_hyper",
                "https://github.com/LAOBILAXI233/onestep_on_hyper",
            ),
        ),
    ),
    VanStepRepoSection(
        title = "上游与实现",
        links = listOf(
            VanStepRepoLink(
                "OneStep4",
                "基础建设与思路提供",
                "https://github.com/SangLuoCN/OneStep4",
            ),
            VanStepRepoLink(
                "Smartisan OneStep",
                "上游 · packages_apps_OneStep",
                "https://github.com/SmartisanTech/packages_apps_OneStep",
            ),
            VanStepRepoLink(
                "smartisan-launcher-maintained",
                "锤子桌面实现",
                "https://github.com/rianlu/smartisan-launcher-maintained",
            ),
            VanStepRepoLink(
                "HyperDragShare",
                "拖拽能力实现",
                "https://github.com/Leaf-lsgtky/HyperDragShare/tree/main",
            ),
        ),
    ),
    VanStepRepoSection(
        title = "组件与运行环境",
        links = listOf(
            VanStepRepoLink(
                "Miuix",
                "Compose UI 框架",
                "https://github.com/compose-miuix-ui/miuix",
            ),
            VanStepRepoLink(
                "Lucide",
                "图标集",
                "https://lucide.dev/",
            ),
            VanStepRepoLink(
                "LSPosed",
                "可选增强框架",
                "https://github.com/LSPosed/LSPosed",
            ),
            VanStepRepoLink(
                "SukiSU-Ultra",
                "KernelSU 参考与基础建设",
                "https://github.com/SukiSU-Ultra/SukiSU-Ultra",
            ),
        ),
    ),
)

@Composable
internal fun VanStepAboutPage(
    page: OneStepSettingsPage,
    onBack: () -> Unit,
    onOpenLicenses: () -> Unit,
) {
    val dark = androidx.compose.foundation.isSystemInDarkTheme()
    val listState = rememberLazyListState()
    val scrollBehavior = MiuixScrollBehavior()
    var heroHeightPx by remember { mutableIntStateOf(0) }
    val scrollProgress by remember {
        derivedStateOf {
            when {
                heroHeightPx <= 0 -> 0f
                listState.firstVisibleItemIndex > 0 -> 1f
                else -> {
                    (listState.firstVisibleItemScrollOffset.toFloat() / heroHeightPx)
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
            VanStepAboutContent(
                page = page,
                dark = dark,
                paddingValues = paddingValues,
                listState = listState,
                scrollBehavior = scrollBehavior,
                scrollProgress = scrollProgress,
                onHeroSpacerHeightChanged = { heroHeightPx = it },
                onOpenLicenses = onOpenLicenses,
            )
        }
    }
}

@Composable
private fun VanStepAboutContent(
    page: OneStepSettingsPage,
    dark: Boolean,
    paddingValues: PaddingValues,
    listState: LazyListState,
    scrollBehavior: ScrollBehavior,
    scrollProgress: Float,
    onHeroSpacerHeightChanged: (Int) -> Unit,
    onOpenLicenses: () -> Unit,
) {
    val density = LocalDensity.current
    var heroHeight by remember { mutableStateOf(220.dp) }
    val cardBackdrop = rememberDragShareCardBackdrop()
    val glassColors = if (cardBackdrop != null) rememberDragShareGlassColors(dark) else null
    val cardColor = if (cardBackdrop != null) {
        Color.Transparent
    } else {
        MiuixTheme.colorScheme.surfaceContainer
    }
    val scrollTop = paddingValues.calculateTopPadding()
    val heroTop = scrollTop + 32.dp

    DragShareOs3Background(
        dark = dark,
        modifier = Modifier.fillMaxSize(),
        backgroundModifier = if (cardBackdrop != null) {
            Modifier.layerBackdrop(cardBackdrop)
        } else {
            Modifier
        },
        alpha = { 1f - scrollProgress },
    ) {
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .padding(top = heroTop + 32.dp, start = 32.dp, end = 32.dp)
                .onSizeChanged { size ->
                    with(density) { heroHeight = size.height.toDp() }
                },
            horizontalAlignment = Alignment.CenterHorizontally,
        ) {
            val iconProgress = aboutFadeProgress(scrollProgress, 0.35f, 0.50f)
            AndroidView(
                factory = { ctx ->
                    ImageView(ctx).apply {
                        scaleType = ImageView.ScaleType.CENTER_CROP
                        val drawable = ImageDecoder.decodeDrawable(
                            ImageDecoder.createSource(ctx.resources, R.drawable.van_step_about),
                        )
                        setImageDrawable(drawable)
                        (drawable as? Animatable)?.start()
                    }
                },
                modifier = Modifier
                    .size(100.dp)
                    .clipToBounds()
                    .graphicsLayer {
                        alpha = 1f - iconProgress
                        scaleX = 1f - iconProgress * 0.05f
                        scaleY = 1f - iconProgress * 0.05f
                    },
                onRelease = { imageView ->
                    (imageView.drawable as? Animatable)?.stop()
                },
            )
            val nameProgress = aboutFadeProgress(scrollProgress, 0.20f, 0.35f)
            Text(
                text = "Van Step",
                modifier = Modifier
                    .padding(top = 12.dp, bottom = 5.dp)
                    .graphicsLayer {
                        alpha = 1f - nameProgress
                        scaleX = 1f - nameProgress * 0.05f
                        scaleY = 1f - nameProgress * 0.05f
                    },
                color = MiuixTheme.colorScheme.onBackground,
                fontSize = 35.sp,
                fontWeight = FontWeight.Bold,
            )
            val versionProgress = aboutFadeProgress(scrollProgress, 0.05f, 0.20f)
            Text(
                text = "v${BuildConfig.VERSION_NAME} (${BuildConfig.VERSION_CODE})",
                modifier = Modifier
                    .fillMaxWidth()
                    .graphicsLayer {
                        alpha = 1f - versionProgress
                        scaleX = 1f - versionProgress * 0.05f
                        scaleY = 1f - versionProgress * 0.05f
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
            item(key = "van-step-about-hero-spacer") {
                Spacer(
                    modifier = Modifier
                        .fillMaxWidth()
                        .height(heroHeight + heroTop - scrollTop + 96.dp)
                        .onSizeChanged { onHeroSpacerHeightChanged(it.height) },
                )
            }
            VAN_STEP_REPO_SECTIONS.forEach { section ->
                item(key = "van-step-about-${section.title}") {
                    SmallTitle(text = section.title)
                    Card(
                        modifier = Modifier
                            .fillMaxWidth()
                            .padding(horizontal = 12.dp)
                            .dragShareGlass(cardBackdrop, glassColors),
                        colors = CardDefaults.defaultColors(color = cardColor),
                    ) {
                        section.links.forEach { repo ->
                            ArrowPreference(
                                title = repo.name,
                                summary = repo.summary,
                                endActions = { DragShareLinkAction("GitHub") },
                                onClick = { page.openUrl(repo.url) },
                            )
                        }
                    }
                    Spacer(Modifier.height(12.dp))
                }
            }
            item(key = "van-step-about-licenses") {
                Card(
                    modifier = Modifier
                        .fillMaxWidth()
                        .padding(horizontal = 12.dp)
                        .dragShareGlass(cardBackdrop, glassColors),
                    colors = CardDefaults.defaultColors(color = cardColor),
                ) {
                    ArrowPreference(
                        title = "开源许可与第三方声明",
                        endActions = { DragShareLinkAction("查看") },
                        onClick = onOpenLicenses,
                    )
                }
                Spacer(Modifier.height(12.dp))
            }
            item(key = "van-step-about-footer") {
                Text(
                    text = "© 2026 · Van Step · GPL-3.0",
                    modifier = Modifier
                        .fillMaxWidth()
                        .padding(bottom = paddingValues.calculateBottomPadding() + 24.dp),
                    fontSize = 11.sp,
                    color = MiuixTheme.colorScheme.onSurfaceVariantSummary,
                    textAlign = TextAlign.Center,
                )
            }
        }
    }
}

private fun aboutFadeProgress(progress: Float, start: Float, end: Float): Float =
    ((progress - start) / (end - start)).coerceIn(0f, 1f)
