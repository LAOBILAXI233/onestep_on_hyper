package com.leaf.hyperdragshare.codex

import android.app.SearchManager
import android.content.ComponentName
import android.content.Intent
import android.graphics.Color as AndroidColor
import android.net.Uri
import android.os.Bundle
import android.view.View
import android.widget.Toast
import androidx.activity.ComponentActivity
import androidx.activity.compose.BackHandler
import androidx.activity.compose.setContent
import androidx.compose.animation.core.FastOutSlowInEasing
import androidx.compose.animation.core.animateFloatAsState
import androidx.compose.animation.core.tween
import androidx.compose.foundation.isSystemInDarkTheme
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.outlined.DocumentScanner
import androidx.compose.material.icons.outlined.Edit
import androidx.compose.material.icons.outlined.Language
import androidx.compose.material.icons.outlined.MoreHoriz
import androidx.compose.material.icons.outlined.SelectAll
import androidx.compose.material.icons.outlined.Share
import androidx.compose.runtime.Composable
import androidx.compose.runtime.DisposableEffect
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableIntStateOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.TransformOrigin
import androidx.compose.ui.graphics.graphicsLayer
import androidx.compose.ui.layout.boundsInWindow
import androidx.compose.ui.layout.onGloballyPositioned
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.compose.ui.viewinterop.AndroidView
import androidx.core.view.WindowCompat

class TextSegmentationActivity : ComponentActivity() {
    private var boomChipPage: BoomChipPage? = null
    private lateinit var legacyContentView: View
    private var launchTouchX by mutableIntStateOf(-1)
    private var launchTouchY by mutableIntStateOf(-1)
    private var currentText = ""
    private var currentSegment: IntArray? = null
    private var animatedDismissRequester: (() -> Unit)? = null
    private var forceDismissRequester: (() -> Unit)? = null

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        WindowCompat.setDecorFitsSystemWindows(window, false)
        window.statusBarColor = AndroidColor.TRANSPARENT
        window.navigationBarColor = AndroidColor.TRANSPARENT
        updateLaunchPosition()

        legacyContentView = layoutInflater.inflate(com.hyper.onestep.R.layout.boom_activity_layout, null, false)
        legacyContentView.findViewById<View>(com.hyper.onestep.R.id.boom_page).apply {
            setLayerType(View.LAYER_TYPE_HARDWARE, null)
            BoomAnimator.makeFadeIn(this, BoomAnimator.BOOM_DURATION)
        }
        boomChipPage = BoomChipPage(this, legacyContentView, false).also { page ->
            page.restoreSelectedState(savedInstanceState?.getSerializable(SELECTED_STATE))
        }

        setContent {
            BigBangOverlayContent(
                contentView = legacyContentView,
                touchX = launchTouchX,
                touchY = launchTouchY,
                onDismissRequesterChanged = { animatedDismissRequester = it },
                onForceDismissRequesterChanged = { forceDismissRequester = it },
                onDismissRequest = { shouldDismissPage() },
                onDismissFinished = { finish() },
                onEditMode = { showUnsupportedAction() },
                onSelectAll = { selectAll() },
                onShareAll = { shareAll() },
                onMore = { showUnsupportedAction() },
            )
        }

        val savedText = savedInstanceState?.getString(SAVED_TEXT)
        val savedSegment = savedInstanceState?.getIntArray(SAVED_SEGMENT)
        if (savedText != null && savedSegment != null) {
            handleSegmentResult(savedText, savedSegment, fromSavedState = true)
        } else {
            reinitializeFromIntent()
        }
    }

    override fun onNewIntent(intent: Intent) {
        super.onNewIntent(intent)
        setIntent(intent)
        reinitializeFromIntent()
    }

    override fun finish() {
        super.finish()
        overridePendingTransition(0, 0)
    }

    fun requestAnimatedDismissFromLegacy() {
        
        
        
        forceDismissRequester?.invoke() ?: finish()
    }

    fun openSearch(text: String, type: Int) {
        if (text.isBlank()) {
            return
        }
        val query = if (type == BoomActionHandler.SEARCH_DICTIONARY) "$text 词典" else text
        try {
            startActivity(
                Intent(Intent.ACTION_WEB_SEARCH)
                    .putExtra(SearchManager.QUERY, query),
            )
        } catch (_: Throwable) {
            try {
                val uri = Uri.Builder()
                    .scheme("https")
                    .authority("www.google.com")
                    .appendPath("search")
                    .appendQueryParameter("q", query)
                    .build()
                startActivity(Intent(Intent.ACTION_VIEW, uri))
            } catch (_: Throwable) {
                Toast.makeText(this, "无法打开搜索", Toast.LENGTH_SHORT).show()
            }
        }
    }

    private fun updateLaunchPosition() {
        launchTouchX = intent.getIntExtra(EXTRA_TOUCH_X, -1)
        launchTouchY = intent.getIntExtra(EXTRA_TOUCH_Y, -1)
    }

    private fun reinitializeFromIntent() {
        val inputText = intent.getCharSequenceExtra(Intent.EXTRA_PROCESS_TEXT)?.toString()
            ?: intent.getCharSequenceExtra(Intent.EXTRA_TEXT)?.toString()
        if (inputText.isNullOrBlank()) {
            finish()
            return
        }
        updateLaunchPosition()
        currentText = ""
        currentSegment = null
        boomChipPage?.prepareForReinit()
        segmentLocally(inputText)
    }

    private fun segmentLocally(text: String) {
        Thread({
            try {
                val result = TextSegmenter.get(this).segment(text)
                runOnUiThread {
                    if (!isFinishing) {
                        handleSegmentResult(text, result)
                    }
                }
            } catch (error: Throwable) {
                DragShareLog.w(TAG, "local text segmentation failed", error)
                runOnUiThread {
                    if (!isFinishing) {
                        Toast.makeText(this, com.hyper.onestep.R.string.a_msg_no_words, Toast.LENGTH_SHORT).show()
                        finish()
                    }
                }
            }
        }, "drag-share-segmenter").start()
    }

    private fun handleSegmentResult(
        text: String,
        result: IntArray?,
        fromSavedState: Boolean = false,
    ) {
        if (result == null || result.isEmpty()) {
            Toast.makeText(this, com.hyper.onestep.R.string.a_msg_no_words, Toast.LENGTH_SHORT).show()
            finish()
            return
        }
        if (boomChipPage?.initWords(result, text, -1, launchTouchX, launchTouchY) != true) {
            Toast.makeText(this, com.hyper.onestep.R.string.a_msg_no_words, Toast.LENGTH_SHORT).show()
            finish()
            return
        }
        currentText = text
        currentSegment = result
        if (fromSavedState) {
            
        }
    }

    private fun shouldDismissPage(): Boolean = boomChipPage?.handleClick() != true

    private fun selectAll() {
        boomChipPage?.selectAll()
    }

    private fun shareAll() {
        val shareText = boomChipPage?.originalText ?: return
        val send = Intent(Intent.ACTION_SEND).apply {
            type = "text/plain"
            putExtra(Intent.EXTRA_TEXT, shareText)
        }
        startActivity(Intent.createChooser(send, null).apply {
            addFlags(Intent.FLAG_ACTIVITY_NO_HISTORY)
        })
    }

    private fun showUnsupportedAction() {
        Toast.makeText(this, com.hyper.onestep.R.string.bigbang_action_placeholder, Toast.LENGTH_SHORT).show()
    }

    override fun onSaveInstanceState(outState: Bundle) {
        boomChipPage?.captureSelectedState()?.let { outState.putSerializable(SELECTED_STATE, it) }
        currentSegment?.let {
            outState.putString(SAVED_TEXT, currentText)
            outState.putIntArray(SAVED_SEGMENT, it)
        }
        super.onSaveInstanceState(outState)
    }

    companion object {
        @JvmField
        val DBG = true

        private const val TAG = "DragShare/BigBang"
        private const val EXTRA_TOUCH_X = "dragshare_boom_touch_x"
        private const val EXTRA_TOUCH_Y = "dragshare_boom_touch_y"
        private const val SELECTED_STATE = "selected_state"
        private const val SAVED_TEXT = "saved_text"
        private const val SAVED_SEGMENT = "saved_segment"

        @JvmStatic
        fun createIntent(text: String): Intent = createIntent(text, -1, -1)

        @JvmStatic
        fun createIntent(text: String, touchX: Int, touchY: Int): Intent {
            return Intent(Intent.ACTION_SEND).apply {
                component = ComponentName(
                   com.hyper.onestep.BuildConfig.APPLICATION_ID,
                    TextSegmentationActivity::class.java.name,
                )
                type = "text/plain"
                putExtra(Intent.EXTRA_TEXT, text)
                putExtra(EXTRA_TOUCH_X, touchX)
                putExtra(EXTRA_TOUCH_Y, touchY)
                addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
                addFlags(Intent.FLAG_ACTIVITY_NO_ANIMATION)
                
                
                
            }
        }
    }
}

@Composable
private fun BigBangOverlayContent(
    contentView: View,
    touchX: Int,
    touchY: Int,
    onDismissRequesterChanged: ((() -> Unit)?) -> Unit,
    onForceDismissRequesterChanged: ((() -> Unit)?) -> Unit,
    onDismissRequest: () -> Boolean,
    onDismissFinished: () -> Unit,
    onEditMode: () -> Unit,
    onSelectAll: () -> Unit,
    onShareAll: () -> Unit,
    onMore: () -> Unit,
) {
    val dark = isSystemInDarkTheme()
    val panelMetrics = rememberOverlayPanelMetrics()
    val panelBackground = if (dark) Color(0xFF171B20) else Color(0xFFF3F3F4)
    val panelBorder = if (dark) Color(0xFF2E353E) else Color(0xFFD7D7DA)
    val topBarColor = if (dark) Color(0xFF1D2126) else Color.White
    val bottomBarColor = if (dark) Color(0xFF1D2126) else Color.White
    val scrimColor = if (dark) Color.Black.copy(alpha = 0.62f) else Color.Black.copy(alpha = 0.48f)
    val shadowColor = Color.Black.copy(alpha = 0.5f)
    val panelShape = androidx.compose.foundation.shape.RoundedCornerShape(panelMetrics.cornerRadius)
    var panelVisible by remember { mutableStateOf(false) }
    var dismissing by remember { mutableStateOf(false) }
    var panelBounds by remember { mutableStateOf<androidx.compose.ui.geometry.Rect?>(null) }
    val enterProgress by animateFloatAsState(
        targetValue = if (panelVisible) 1f else 0f,
        animationSpec = tween(durationMillis = 260, easing = FastOutSlowInEasing),
        label = "bigbang_panel_enter",
        finishedListener = {
            if (dismissing && it == 0f) {
                onDismissFinished()
            }
        },
    )
    val scrimProgress by animateFloatAsState(
        targetValue = if (panelVisible) 1f else 0f,
        animationSpec = tween(durationMillis = 220, easing = FastOutSlowInEasing),
        label = "bigbang_scrim_enter",
    )
    val transformOrigin = remember(panelBounds, touchX, touchY) {
        val bounds = panelBounds
        if (bounds == null || touchX < 0 || touchY < 0) {
            TransformOrigin.Center
        } else {
            TransformOrigin(
                pivotFractionX = ((touchX - bounds.left) / bounds.width).coerceIn(0f, 1f),
                pivotFractionY = ((touchY - bounds.top) / bounds.height).coerceIn(0f, 1f),
            )
        }
    }
    val panelScale = 0.84f + (0.16f * enterProgress)
    val requestDismiss = {
        if (!dismissing && onDismissRequest()) {
            dismissing = true
            panelVisible = false
        }
    }
    
    val forceDismiss = {
        if (!dismissing) {
            dismissing = true
            panelVisible = false
        }
    }

    DisposableEffect(requestDismiss, forceDismiss) {
        onDismissRequesterChanged(requestDismiss)
        onForceDismissRequesterChanged(forceDismiss)
        onDispose {
            onDismissRequesterChanged(null)
            onForceDismissRequesterChanged(null)
        }
    }
    LaunchedEffect(Unit) { panelVisible = true }

    BackHandler(onBack = requestDismiss)
    ApplyOverlaySystemBars(
        statusBarColor = if (panelMetrics.fullScreen) topBarColor else Color.Transparent,
        navigationBarColor = if (panelMetrics.fullScreen) bottomBarColor else Color.Transparent,
        darkIcons = !dark,
    )
    OverlayScene(
        scrimColor = scrimColor.copy(alpha = scrimColor.alpha * scrimProgress),
        onDismiss = requestDismiss,
    ) {
        FloatingPanel(
            width = panelMetrics.width,
            height = panelMetrics.height,
            fillMax = panelMetrics.fullScreen,
            modifier = overlayPanelPlacement(panelMetrics)
                .onGloballyPositioned { coordinates -> panelBounds = coordinates.boundsInWindow() }
                .graphicsLayer {
                    alpha = enterProgress
                    scaleX = panelScale
                    scaleY = panelScale
                    this.transformOrigin = transformOrigin
                },
            shape = panelShape,
            backgroundColor = panelBackground,
            borderColor = panelBorder,
            shadowColor = if (panelMetrics.multiWindow) null else shadowColor,
        ) {
            OverlayPanelScaffold(
                topBar = {
                    OverlayHeaderBar(
                        backgroundColor = topBarColor,
                        topInset = panelMetrics.topSystemInset,
                        leftInset = panelMetrics.leftSystemInset,
                        rightInset = panelMetrics.rightSystemInset,
                        leading = {
                            OverlayIconAction(
                                imageVector = Icons.Outlined.Edit,
                                tint = if (dark) Color(0xFFD7DEE7) else Color(0xFF6F6962),
                                onClick = onEditMode,
                                contentDescription = stringResource(com.hyper.onestep.R.string.bigbang_action_edit),
                            )
                            OverlayIconAction(
                                imageVector = Icons.Outlined.SelectAll,
                                tint = if (dark) Color(0xFFF2F5F8) else Color(0xFF6C6760),
                                onClick = onSelectAll,
                                contentDescription = stringResource(com.hyper.onestep.R.string.bigbang_action_select_all),
                            )
                        },
                        center = {
                            androidx.compose.material3.Text(
                                text = stringResource(com.hyper.onestep.R.string.bigbang_overlay_title),
                                color = if (dark) Color(0xFFF2F5F8) else Color(0xFFD1CCC6),
                                fontSize = 20.sp,
                                fontWeight = FontWeight.SemiBold,
                            )
                        },
                        trailing = {
                            OverlayIconAction(
                                imageVector = Icons.Outlined.Share,
                                tint = if (dark) Color(0xFFF2F5F8) else Color(0xFF6C6760),
                                onClick = onShareAll,
                                contentDescription = stringResource(com.hyper.onestep.R.string.bigbang_action_share_all),
                            )
                            OverlayIconAction(
                                imageVector = Icons.Outlined.MoreHoriz,
                                tint = if (dark) Color(0xFFD7DEE7) else Color(0xFF6F6962),
                                onClick = onMore,
                                contentDescription = stringResource(com.hyper.onestep.R.string.bigbang_action_more),
                            )
                        },
                    )
                },
                bottomBar = {
                    OverlayBottomBar(
                        backgroundColor = bottomBarColor,
                        bottomInset = panelMetrics.bottomSystemInset,
                        leftInset = panelMetrics.leftSystemInset,
                        rightInset = panelMetrics.rightSystemInset,
                        leading = {
                            OverlayIconAction(
                                imageVector = Icons.Outlined.DocumentScanner,
                                tint = if (dark) Color(0x66F2F5F8) else Color(0x668D8983),
                                enabled = false,
                                onClick = {},
                                contentDescription = stringResource(com.hyper.onestep.R.string.bigbang_action_ocr),
                            )
                        },
                        center = {
                            OverlayIconAction(
                                iconRes = com.hyper.onestep.R.drawable.boom_cancel,
                                tint = if (dark) Color(0xFFF2F5F8) else Color(0xFF8D8983),
                                onClick = requestDismiss,
                                contentDescription = stringResource(com.hyper.onestep.R.string.search_overlay_close),
                            )
                        },
                        trailing = {
                            OverlayIconAction(
                                imageVector = Icons.Outlined.Language,
                                tint = if (dark) Color(0x66F2F5F8) else Color(0x668D8983),
                                enabled = false,
                                onClick = {},
                                contentDescription = stringResource(com.hyper.onestep.R.string.bigbang_action_language),
                            )
                        },
                    )
                },
            ) { bodyModifier ->
                Column(modifier = bodyModifier.fillMaxSize()) {
                    Spacer(modifier = Modifier.height(4.dp))
                    AndroidView(
                        modifier = Modifier
                            .fillMaxWidth()
                            .weight(1f)
                            .padding(bottom = 4.dp),
                        factory = { contentView },
                    )
                }
            }
        }
    }
}
