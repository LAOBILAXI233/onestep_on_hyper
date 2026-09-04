package com.leaf.hyperdragshare.codex;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.Insets;
import android.graphics.Outline;
import android.graphics.PixelFormat;
import android.graphics.Rect;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.Drawable;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.view.WindowMetrics;
import android.view.ViewOutlineProvider;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.OvershootInterpolator;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;

import com.hyper.onestep.dragshare.HyperDragDropBridge;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

final class DragShareController {
    private static final String TAG = "DragShare/UI";
    private static final int PREVIEW_TEXT_WIDTH_DP = 184;
    private static final int PREVIEW_TEXT_HEIGHT_DP = 112;
    private static final int PREVIEW_IMAGE_SIZE_DP = 148;
    private static final int PORTAL_PREVIEW_TEXT_SIZE_DP = 112;
    private static final int PORTAL_PREVIEW_IMAGE_SIZE_DP = 116;
    private static final int MENU_HEIGHT_DP = 96;
    private static final int SIMPLE_SIDE_MENU_WIDTH_DP = 112;
    private static final int PORTAL_MENU_HEIGHT_DP = 152;
    private static final int MENU_TRIGGER_DP = 72;
    private static final int SIMPLE_MENU_ACTIVATION_SLOP_DP = 16;
    private static final int EDGE_SCROLL_FULL_SPEED_INSET_DP = 8;
    private static final int PORTAL_TRIGGER_FROM_BOTTOM_DP = 96;
    private static final int PORTAL_ITEM_ENTER_OFFSET_DP = 168;
    private static final long MODERN_OVERLAY_EXIT_DURATION_MS = 220L;
    private static final long LINEAR_MENU_EXIT_DURATION_MS = 160L;
    private static final long PREVIEW_EXIT_DURATION_MS = 160L;
    private static final int MODERN_BOTTOM_MENU_SIDE_MARGIN_DP = 12;
    private static final int CIRCLE_EDGE_TRIGGER_DP = 76;
    private static final int CIRCLE_EDGE_SOFT_DISTANCE_DP = 180;
    private static final long CIRCLE_EDGE_OPEN_DELAY_MS = 200L;
    private static final long DUPLICATE_EVENT_WINDOW_MS = 2;
    private static final float NEAR_HAND_TILT_THRESHOLD = 0.14f;

    private final Context context;
    private final WindowManager windowManager;
    private final BackgroundTouchBlocker backgroundTouchBlocker;
    private final OverlayWindowPolicy windowPolicy;
    private final Handler mainHandler = new Handler(Looper.getMainLooper());
    private final DragShareToast dragShareToast;
    private final Runnable edgeScrollRunnable = new Runnable() {
        @Override
        public void run() {
            if (!active || !menuShown) {
                return;
            }
            if (isCircleStyle()) {
                if (circleMenuView == null || circleScrollDirection == 0) {
                    return;
                }
                circleMenuView.scrollWindow(circleScrollDirection);
                updateSelectedTarget(lastX, lastY);
                mainHandler.postDelayed(this, circleScrollIntervalMs());
                return;
            }
            if (edgeDirection == 0 || (menuScroll == null
                    && menuVerticalScroll == null
                    && modernMenuView == null)) {
                return;
            }
            long now = SystemClock.uptimeMillis();
            long elapsed = lastEdgeScrollUptime == 0
                    ? 16L
                    : Math.min(48L, Math.max(1L, now - lastEdgeScrollUptime));
            lastEdgeScrollUptime = now;
            float distanceWithRemainder = dpFloat(settings.scrollSpeedDpPerSecond)
                    * edgeScrollSpeedMultiplier() * elapsed / 1000f
                    + edgeScrollRemainderPx;
            int distance = (int) distanceWithRemainder;
            edgeScrollRemainderPx = distanceWithRemainder - distance;
            if (distance > 0) {
                if (modernMenuView != null) {
                    modernMenuView.scrollByPixels(edgeDirection * distance);
                } else if (menuScroll != null) {
                    menuScroll.scrollBy(edgeDirection * distance, 0);
                } else {
                    menuVerticalScroll.scrollBy(0, edgeDirection * distance);
                }
                updateSelectedTarget(lastX, lastY);
            }
            mainHandler.postDelayed(this, 16L);
        }
    };
    private final Runnable circleExpandRunnable = new Runnable() {
        @Override
        public void run() {
            if (!active || menuShown || circleMenuView == null
                    || circlePendingEdge == CircleMenuGeometry.EDGE_NONE) {
                return;
            }
            int edge = CircleMenuGeometry.nearestEdge(
                    lastX,
                    lastY,
                    screenWidth,
                    screenHeight,
                    circleTriggerPx());
            if (edge == circlePendingEdge) {
                circleEdge = edge;
                showMenuOnMain();
            }
        }
    };

    private volatile boolean active;
    private volatile boolean destroyed;
    
    private boolean workspaceMode;
    private Boolean workspaceModeOverride;
    
    private boolean panelDragSession;
    private Runnable sessionTeardownListener;
    
    
    private volatile boolean pendingPortalHostFloatWindowSuppression;
    private volatile float lastObservedX = -1;
    private volatile float lastObservedY = -1;
    private volatile long lastObservedEventTime;

    private float lastX;
    private float lastY;
    private float simpleMenuStartX;
    private float simpleMenuStartY;
    private boolean simpleMenuStartPointCaptured;
    private boolean simpleMenuActivationQualified;
    private long lastHandledEventTime = Long.MIN_VALUE;
    private int lastHandledAction = -1;
    private int edgeDirection;
    private boolean inputSourceLogged;
    private boolean duplicateStartLogged;
    private boolean backgroundBlockAttempted;
    private boolean portalGlowStartedLogged;
    private boolean portalGlowExpandedLogged;
    private long lastEdgeScrollUptime;
    private float edgeScrollRemainderPx;
    private int circleEdge = CircleMenuGeometry.EDGE_NONE;
    private int circlePendingEdge = CircleMenuGeometry.EDGE_NONE;
    private int circleScrollDirection;

    private int screenWidth;
    private int screenHeight;
    private int topInset;
    private int bottomInset;
    private int menuTop;
    private int menuHeight;
    private int menuTriggerTop;
    private int menuLeft;
    private int menuWidth;
    private int simpleMenuPosition = DragShareSettings.SIMPLE_MENU_POSITION_BOTTOM;
    private int configuredSimpleMenuPosition = DragShareSettings.SIMPLE_MENU_POSITION_BOTTOM;
    private int nearHandSide = DragShareSettings.SIMPLE_MENU_POSITION_RIGHT;
    private boolean nearHandSideLocked;

    private View previewView;
    private ModernPreviewOverlayView modernPreviewView;
    private ModernOverlayWindow modernPreviewWindow;
    private WindowManager.LayoutParams previewParams;
    private int previewWidth;
    private int previewHeight;
    private boolean modernPreviewEnterStarted;
    
    
    private int previewExitGeneration;
    private View exitingPreviewView;
    private ModernPreviewOverlayView exitingModernPreviewView;
    private ModernOverlayWindow exitingModernPreviewWindow;

    private PortalGlowView glowView;
    private WindowManager.LayoutParams glowParams;

    private View menuView;
    private ModernMenuOverlayView modernMenuView;
    private ModernOverlayWindow modernMenuWindow;
    private Runnable modernMenuDisposeRunnable;
    private int linearMenuFadeGeneration;
    private View fadingLinearMenuView;
    private WindowManager.LayoutParams menuParams;
    private HorizontalScrollView menuScroll;
    private ScrollView menuVerticalScroll;
    private LinearLayout menuRow;
    private final List<View> menuItems = new ArrayList<>();
    private CircleMenuOverlayView circleMenuView;
    private WindowManager.LayoutParams circleMenuParams;
    private List<ShareTarget> shareTargets = new ArrayList<>();
    private ShareTarget selectedTarget;
    private boolean menuShown;

    private SensorManager sensorManager;
    private Sensor nearHandSensor;
    private boolean nearHandSensorRegistered;
    private final SensorEventListener nearHandSensorListener = new SensorEventListener() {
        @Override
        public void onSensorChanged(SensorEvent event) {
            if (nearHandSideLocked || event == null
                    || event.values == null || event.values.length == 0) {
                return;
            }
            float tilt = event.sensor != null
                    && event.sensor.getType() == Sensor.TYPE_ROTATION_VECTOR
                    ? rotationVectorRoll(event.values)
                    : event.values[0] / SensorManager.GRAVITY_EARTH;
            if (!Float.isFinite(tilt) || Math.abs(tilt) < NEAR_HAND_TILT_THRESHOLD) {
                return;
            }
            int side = GestureMath.nearHandMenuOnRight(tilt)
                    ? DragShareSettings.SIMPLE_MENU_POSITION_RIGHT
                    : DragShareSettings.SIMPLE_MENU_POSITION_LEFT;
            if (side != nearHandSide) {
                nearHandSide = side;
                mainHandler.post(() -> updateNearHandMenuPosition());
            }
        }

        @Override
        public void onAccuracyChanged(Sensor sensor, int accuracy) {
            
        }
    };

    private Session session;
    private DragShareSettings settings = DragShareSettings.defaults();
    private OverlayColors palette = OverlayColors.light();

    DragShareController(Context context) {
        this(context, OverlayWindowPolicy.portal());
    }

    DragShareController(Context context, OverlayWindowPolicy windowPolicy) {
        this.context = context;
        this.windowManager = (WindowManager) context.getSystemService(Context.WINDOW_SERVICE);
        this.backgroundTouchBlocker = new BackgroundTouchBlocker(context);
        this.windowPolicy = windowPolicy == null ? OverlayWindowPolicy.portal() : windowPolicy;
        this.dragShareToast = new DragShareToast(context, this.windowPolicy);
    }

    boolean isActive() {
        return active;
    }

    void reservePortalHostFloatWindowSuppression() {
        pendingPortalHostFloatWindowSuppression = true;
    }

    boolean shouldSuppressPortalHostFloatWindow() {
        return active || pendingPortalHostFloatWindowSuppression;
    }

    void show(
            CapturedContent content,
            float initialX,
            float initialY,
            DragShareSettings loadedSettings) {
        if (content == null) {
            return;
        }
        runOnMain(() -> showOnMain(content, initialX, initialY, loadedSettings));
    }

    void showPanelTextDrag(
            String text,
            float initialX,
            float initialY,
            Runnable onFinished) {
        if (TextUtils.isEmpty(text)) {
            if (onFinished != null) {
                onFinished.run();
            }
            return;
        }
        runOnMain(() -> {
            if (destroyed || active) {
                if (onFinished != null) {
                    onFinished.run();
                }
                return;
            }
            DragShareSettings loaded = DragShareSettings.readLocal(context);
            if (!loaded.isSharingEnabled(false)) {
                if (onFinished != null) {
                    onFinished.run();
                }
                return;
            }
            sessionTeardownListener = onFinished;
            workspaceModeOverride = Boolean.TRUE;
            panelDragSession = true;
            CapturedContent content = CapturedContent.text(
                    text, context.getPackageName(), null);
            showOnMain(content, initialX, initialY, loaded);
            if (!active && sessionTeardownListener != null) {
                
                Runnable listener = sessionTeardownListener;
                sessionTeardownListener = null;
                listener.run();
                workspaceModeOverride = null;
            }
        });
    }

    void cancelActiveSession() {
        runOnMain(this::cancelGestureOnMain);
    }

    float latestPointerX() {
        return lastObservedX;
    }

    float latestPointerY() {
        return lastObservedY;
    }

    void acceptMotionEvent(MotionEvent event) {
        acceptMotionEvent(event, null);
    }

    void acceptMotionEvent(MotionEvent event, Runnable beforeFinish) {
        if (event == null) {
            return;
        }
        final int action = event.getActionMasked();
        final float x = event.getRawX();
        final float y = event.getRawY();
        final long eventTime = event.getEventTime();
        event.recycle();
        acceptPointerEvent(action, x, y, eventTime, "miui", beforeFinish);
    }

    void acceptPointerEvent(
            int action,
            float x,
            float y,
            long eventTime,
            String source) {
        acceptPointerEvent(action, x, y, eventTime, source, null);
    }

    void acceptPointerEvent(
            int action,
            float x,
            float y,
            long eventTime,
            String source,
            Runnable beforeFinish) {
        DragShareLog.d(TAG, "pointer received source=" + source
                + " action=" + MotionEvent.actionToString(action)
                + " point=" + Math.round(x) + "," + Math.round(y)
                + " active=" + active
                + " time=" + eventTime);
        lastObservedX = x;
        lastObservedY = y;
        lastObservedEventTime = eventTime;
        mainHandler.post(() -> {
            if (active && !inputSourceLogged) {
                inputSourceLogged = true;
                log("input source=" + source
                        + " action=" + MotionEvent.actionToString(action)
                        + " point=" + Math.round(x) + "," + Math.round(y));
            }
            handleMotionOnMain(action, x, y, eventTime, source, beforeFinish);
        });
    }

    void onRootDragSessionStarted() {
        runOnMain(() -> {
            if (active) {
                startBackgroundBlockerIfEnabled();
            }
        });
    }

    void finishFromControlEvent() {
        mainHandler.post(() -> {
            if (!active) {
                return;
            }
            handlePointerOnMain(lastObservedX, lastObservedY);
            
            finishGestureOnMain(true);
        });
    }

    void onHostTaskCancelled() {
        
        mainHandler.postDelayed(() -> {
            if (active) {
                cancelGestureOnMain();
            } else {
                backgroundTouchBlocker.stop();
                if (!isPreviewExitPending()) {
                    removeGestureViews();
                }
            }
        }, 32L);
    }

    void destroy() {
        destroyed = true;
        pendingPortalHostFloatWindowSuppression = false;
        runOnMain(() -> {
            active = false;
            if (session != null) {
                session.cancelled = true;
            }
            stopEdgeScroll();
            backgroundTouchBlocker.stop();
            removeGestureViews();
            dragShareToast.close();
        });
    }

    private void showOnMain(
            CapturedContent payload,
            float requestedInitialX,
            float requestedInitialY,
            DragShareSettings loadedSettings) {
        if (destroyed) {
            pendingPortalHostFloatWindowSuppression = false;
            return;
        }
        if (active) {
            pendingPortalHostFloatWindowSuppression = false;
            if (!duplicateStartLogged) {
                duplicateStartLogged = true;
                log("duplicate Taplus start ignored during active drag");
            }
            return;
        }
        active = false;
        inputSourceLogged = false;
        duplicateStartLogged = false;
        backgroundBlockAttempted = false;
        portalGlowStartedLogged = false;
        portalGlowExpandedLogged = false;
        simpleMenuStartPointCaptured = false;
        simpleMenuActivationQualified = false;
        workspaceMode = false;
        lastHandledEventTime = Long.MIN_VALUE;
        lastHandledAction = -1;
        settings = loadedSettings == null ? DragShareSettings.defaults() : loadedSettings;
        configuredSimpleMenuPosition = settings.simpleMenuPosition;
        nearHandSide = DragShareSettings.SIMPLE_MENU_POSITION_RIGHT;
        nearHandSideLocked = false;
        simpleMenuPosition = effectiveSimpleMenuPosition();
        palette = OverlayColors.from(settings);
        stopEdgeScroll();
        backgroundTouchBlocker.stop();
        removeGestureViews();

        if (!settings.isSharingEnabled(payload.isImage())) {
            pendingPortalHostFloatWindowSuppression = false;
            log("sharing disabled kind=" + payload.kind);
            return;
        }

        try {
            session = new Session(payload);
            refreshDisplayGeometry();
            createPreview(payload);
            createGlow();
            if (glowView != null && glowParams != null) {
                windowManager.addView(glowView, glowParams);
                glowView.start();
            }
            if (modernPreviewWindow != null) {
                modernPreviewWindow.show();
            } else {
                windowManager.addView(previewView, previewParams);
            }
            active = true;
            pendingPortalHostFloatWindowSuppression = false;
            registerNearHandSensorIfNeeded();
            traceAccessibility("overlay added kind=" + payload.kind);
        } catch (Throwable error) {
            pendingPortalHostFloatWindowSuppression = false;
            log("unable to add preview overlay", error);
            traceAccessibility("overlay add failed=" + error.getClass().getSimpleName()
                    + ":" + String.valueOf(error.getMessage()));
            removeGestureViews();
            return;
        }

        boolean hasRequestedInitialPoint = Float.isFinite(requestedInitialX)
                && requestedInitialX >= 0f
                && Float.isFinite(requestedInitialY)
                && requestedInitialY >= 0f;
        float initialX = Float.isFinite(requestedInitialX) && requestedInitialX >= 0f
                ? requestedInitialX
                : screenWidth / 2f;
        float initialY = Float.isFinite(requestedInitialY) && requestedInitialY >= 0f
                ? requestedInitialY
                : Math.max(topInset + dp(80), screenHeight * 0.32f);
        lastX = initialX;
        lastY = initialY;
        simpleMenuStartX = initialX;
        simpleMenuStartY = initialY;
        simpleMenuStartPointCaptured = hasRequestedInitialPoint;
        
        
        if (workspaceModeOverride != null) {
            workspaceMode = workspaceModeOverride;
            workspaceModeOverride = null;
        } else {
            workspaceMode = HyperDragDropBridge.insideWorkspace(initialX, initialY);
        }
        if (workspaceMode) {
            HyperDragDropBridge.dragStarted(
                    payload.mimeType(), payload.isImage(), panelDragSession);
        }
        updatePreviewPosition(initialX, initialY);
        updatePortalPullEffect(initialX, initialY);
        startPreviewEnterAnimation();

        
        
        shareTargets = safeQueryTargets(payload);
        if (!workspaceMode) {
            createMenu();
            if (isCircleStyle() && circleMenuView != null && circleMenuParams != null) {
                try {
                    circleMenuView.setVisibility(View.VISIBLE);
                    windowManager.addView(circleMenuView, circleMenuParams);
                    updateCirclePointer(initialX, initialY);
                } catch (Throwable error) {
                    log("unable to add circle menu overlay", error);
                    circleMenuView.collapse();
                    circleMenuView = null;
                    circleMenuParams = null;
                }
            }
        }
        log("preview shown kind=" + payload.kind
                + " targets=" + shareTargets.size()
                + " style=" + settings.uiStyle
                + " blockBackground=" + settings.blockBackgroundScroll
                + " at=" + Math.round(initialX) + "," + Math.round(initialY));

        if (payload.isImage()) {
            final Session stagedSession = session;
            ImageStagingClient.stage(context, payload.bitmap, new ImageStagingClient.Callback() {
                @Override
                public void onStaged(Uri uri) {
                    mainHandler.post(() -> {
                        if (destroyed || stagedSession.cancelled) {
                            return;
                        }
                        stagedSession.stagedUri = uri;
                        if (stagedSession.pendingTarget != null) {
                            launchPendingShare(stagedSession);
                        }
                    });
                }

                @Override
                public void onFailure(Throwable error) {
                    mainHandler.post(() -> {
                        if (!destroyed && !stagedSession.cancelled) {
                            log("image staging failed", error);
                            if (stagedSession.pendingTarget != null) {
                                showToast("图片准备失败");
                            }
                        }
                    });
                }
            });
        }
    }

    private List<ShareTarget> safeQueryTargets(CapturedContent payload) {
        try {
            List<ShareTarget> queried = ShareTargetRepository.query(context, payload);
            return ShareTargetRepository.applySettings(
                    context,
                    queried,
                    settings,
                    payload != null && payload.isImage());
        } catch (Throwable error) {
            log("share target query failed", error);
            return new ArrayList<>();
        }
    }

    private void createPreview(CapturedContent payload) {
        if (isModernStyle()) {
            int side = ModernPreviewSizer.squareSidePx(
                    payload,
                    screenWidth,
                    context.getResources().getDisplayMetrics().density);
            previewWidth = side;
            previewHeight = side;
            modernPreviewView = new ModernPreviewOverlayView(context, payload, settings);
            previewView = modernPreviewView;
            previewParams = overlayParams(previewWidth, previewHeight, "DragShare modern preview");
            try {
                modernPreviewWindow = new ModernOverlayWindow(
                        context,
                        windowManager,
                        modernPreviewView,
                        previewParams,
                        dp(settings.modernBlurRadiusDp));
            } catch (Throwable error) {
                modernPreviewWindow = null;
                log("unable to create native modern preview window", error);
            }
            return;
        }
        boolean portalStyle = isPortalStyle();
        boolean circleStyle = isCircleStyle();
        boolean compactStyle = portalStyle || circleStyle;
        FrameLayout standardPreviewView = new FrameLayout(context);
        previewView = standardPreviewView;
        previewView.setClipToOutline(true);
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.Q) {
            previewView.setForceDarkAllowed(false);
        }
        previewView.setElevation(dp(compactStyle ? 6 : 8));
        previewView.setBackground(roundDrawable(
                palette.previewBackground,
                compactStyle ? 12 : 8));

        if (compactStyle) {
            int sizeDp = !payload.isImage()
                    ? PORTAL_PREVIEW_TEXT_SIZE_DP
                    : PORTAL_PREVIEW_IMAGE_SIZE_DP;
            previewWidth = dp(sizeDp);
            previewHeight = dp(sizeDp);
            if (!payload.isImage()) {
                TextView text = new TextView(context);
                CharSequence previewText = payload.text;
                if (previewText != null && previewText.length() > 40) {
                    previewText = previewText.subSequence(0, 40);
                }
                text.setText(previewText);
                text.setTextColor(palette.primaryText);
                text.setTextSize(TypedValue.COMPLEX_UNIT_SP, 14);
                text.setGravity(Gravity.CENTER);
                text.setPadding(dp(7), dp(7), dp(7), dp(7));
                text.setMaxLines(4);
                text.setEllipsize(android.text.TextUtils.TruncateAt.END);
                standardPreviewView.addView(text, new FrameLayout.LayoutParams(
                        ViewGroup.LayoutParams.MATCH_PARENT,
                        ViewGroup.LayoutParams.MATCH_PARENT));
            } else {
                ImageView image = new ImageView(context);
                image.setImageBitmap(payload.bitmap);
                image.setScaleType(ImageView.ScaleType.CENTER_CROP);
                image.setPadding(dp(3), dp(3), dp(3), dp(3));
                standardPreviewView.addView(image, new FrameLayout.LayoutParams(
                        ViewGroup.LayoutParams.MATCH_PARENT,
                        ViewGroup.LayoutParams.MATCH_PARENT));
            }
        } else if (!payload.isImage()) {
            previewWidth = dp(PREVIEW_TEXT_WIDTH_DP);
            previewHeight = dp(PREVIEW_TEXT_HEIGHT_DP);
            TextView text = new TextView(context);
            text.setText(payload.text);
            text.setTextColor(palette.primaryText);
            text.setTextSize(TypedValue.COMPLEX_UNIT_SP, 14);
            text.setGravity(Gravity.CENTER_VERTICAL);
            text.setPadding(dp(12), dp(10), dp(12), dp(10));
            text.setMaxLines(4);
            text.setEllipsize(android.text.TextUtils.TruncateAt.END);
            standardPreviewView.addView(text, new FrameLayout.LayoutParams(
                    ViewGroup.LayoutParams.MATCH_PARENT,
                    ViewGroup.LayoutParams.MATCH_PARENT));
        } else {
            previewWidth = dp(PREVIEW_IMAGE_SIZE_DP);
            previewHeight = dp(PREVIEW_IMAGE_SIZE_DP);
            ImageView image = new ImageView(context);
            image.setImageBitmap(payload.bitmap);
            image.setScaleType(ImageView.ScaleType.FIT_CENTER);
            image.setPadding(dp(6), dp(6), dp(6), dp(6));
            standardPreviewView.addView(image, new FrameLayout.LayoutParams(
                    ViewGroup.LayoutParams.MATCH_PARENT,
                    ViewGroup.LayoutParams.MATCH_PARENT));
        }

        previewParams = overlayParams(previewWidth, previewHeight, "DragShare preview");
    }

    private void createGlow() {
        if (!isPortalStyle()) {
            glowView = null;
            glowParams = null;
            return;
        }
        glowView = new PortalGlowView(
                context,
                settings.colorMode == DragShareSettings.COLOR_DARK,
                bottomInset);
        glowParams = overlayParams(screenWidth, screenHeight, "DragShare portal glow");
    }

    private void startPreviewEnterAnimation() {
        if (isModernStyle()) {
            enableModernLocalBlurAndReveal();
            return;
        }
        if (previewView == null || !isPortalStyle()) {
            return;
        }
        previewView.animate().cancel();
        previewView.setAlpha(0f);
        previewView.setScaleX(0.88f);
        previewView.setScaleY(0.88f);
        previewView.animate()
                .alpha(0.94f)
                .scaleX(1f)
                .scaleY(1f)
                .setDuration(200L)
                .start();
    }

    private void enableModernLocalBlurAndReveal() {
        ModernPreviewOverlayView preview = modernPreviewView;
        if (preview == null) {
            return;
        }
        modernPreviewEnterStarted = false;
        int blurRadiusPx = dp(settings.modernBlurRadiusDp);
        boolean enabled = modernPreviewWindow != null
                && modernPreviewWindow.isNativeBackdropBlurEnabled();
        log("modern Android background blur " + (enabled ? "enabled" : "unavailable")
                + " radiusPx=" + blurRadiusPx);
        revealModernPreview(preview);
    }

    private void revealModernPreview(ModernPreviewOverlayView preview) {
        if (preview == null || modernPreviewEnterStarted) {
            return;
        }
        modernPreviewEnterStarted = true;
        if (modernPreviewWindow != null) {
            modernPreviewWindow.showAnimated();
        } else {
            preview.showAnimated();
        }
    }
    private void createMenu() {
        if (isModernStyle()) {
            Map<ShareTarget, Drawable> icons = new LinkedHashMap<>();
            for (ShareTarget target : shareTargets) {
                icons.put(target, iconForTarget(target));
            }
            modernMenuView = new ModernMenuOverlayView(
                    context,
                    new ArrayList<>(shareTargets),
                    icons,
                    settings,
                    isVerticalSimpleMenu());
            menuView = modernMenuView;
            menuParams = overlayParams(menuWidth, menuHeight, "DragShare modern targets");
            menuParams.x = menuLeft;
            menuParams.y = menuTop;
            try {
                modernMenuWindow = new ModernOverlayWindow(
                        context,
                        windowManager,
                        modernMenuView,
                        menuParams,
                        dp(settings.modernBlurRadiusDp));
            } catch (Throwable error) {
                modernMenuWindow = null;
                log("unable to create native modern menu window", error);
            }
            return;
        }
        if (isCircleStyle()) {
            circleMenuView = new CircleMenuOverlayView(
                    context,
                    screenWidth,
                    screenHeight,
                    topInset,
                    bottomInset,
                    settings.colorMode == DragShareSettings.COLOR_DARK,
                    palette.accent,
                    palette.primaryText,
                    palette.selectedItemBackground,
                    palette.selectedItemBorder,
                    settings.iconOpacityPercent);
            circleMenuView.setTargets(shareTargets);
            circleMenuParams = overlayParams(
                    screenWidth,
                    screenHeight,
                    "DragShare circle menu");
            return;
        }
        boolean portalStyle = isPortalStyle();
        boolean vertical = !portalStyle && isVerticalSimpleMenu();
        FrameLayout linearMenuView = new FrameLayout(context);
        menuView = linearMenuView;
        linearMenuView.setClipChildren(false);
        linearMenuView.setClipToPadding(false);
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.Q) {
            linearMenuView.setForceDarkAllowed(false);
        }
        int horizontalPadding = dp(portalStyle ? 10 : 4);
        int verticalPadding = dp(portalStyle ? 4 : 4);
        int bottomPadding = dp(portalStyle ? 2 : 4);
        if (portalStyle) {
            linearMenuView.setBackground(roundDrawable(Color.TRANSPARENT, 0));
        } else {
            addSimpleMenuBackground();
        }
        linearMenuView.setElevation(dp(portalStyle ? 0 : 10));

        FrameLayout menuContent = new FrameLayout(context);
        menuContent.setClipChildren(false);
        menuContent.setClipToPadding(false);
        menuContent.setPadding(
                horizontalPadding,
                verticalPadding,
                horizontalPadding,
                bottomPadding);
        linearMenuView.addView(menuContent, new FrameLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT,
                ViewGroup.LayoutParams.MATCH_PARENT));

        menuRow = new LinearLayout(context);
        menuRow.setOrientation(vertical ? LinearLayout.VERTICAL : LinearLayout.HORIZONTAL);
        menuRow.setGravity(vertical ? Gravity.CENTER_HORIZONTAL : Gravity.CENTER_VERTICAL);
        menuRow.setClipChildren(false);
        menuRow.setClipToPadding(false);
        if (vertical) {
            menuVerticalScroll = new ScrollView(context);
            menuVerticalScroll.setVerticalScrollBarEnabled(false);
            menuVerticalScroll.setOverScrollMode(View.OVER_SCROLL_NEVER);
            menuVerticalScroll.setClipToPadding(false);
            menuVerticalScroll.setClipChildren(false);
            menuVerticalScroll.addView(menuRow, new ViewGroup.LayoutParams(
                    ViewGroup.LayoutParams.MATCH_PARENT,
                    ViewGroup.LayoutParams.WRAP_CONTENT));
            menuContent.addView(menuVerticalScroll, new FrameLayout.LayoutParams(
                    ViewGroup.LayoutParams.MATCH_PARENT,
                    ViewGroup.LayoutParams.MATCH_PARENT));
        } else {
            menuScroll = new HorizontalScrollView(context);
            menuScroll.setHorizontalScrollBarEnabled(false);
            menuScroll.setOverScrollMode(View.OVER_SCROLL_NEVER);
            menuScroll.setClipToPadding(false);
            menuScroll.setClipChildren(false);
            menuScroll.setFillViewport(false);
            menuScroll.addView(menuRow, new ViewGroup.LayoutParams(
                    ViewGroup.LayoutParams.WRAP_CONTENT,
                    ViewGroup.LayoutParams.MATCH_PARENT));
            menuContent.addView(menuScroll, new FrameLayout.LayoutParams(
                    ViewGroup.LayoutParams.MATCH_PARENT,
                    ViewGroup.LayoutParams.MATCH_PARENT));
        }

        menuItems.clear();
        if (shareTargets.isEmpty()) {
            TextView empty = new TextView(context);
            empty.setText("没有可用的分享应用");
            empty.setTextColor(palette.secondaryText);
            empty.setTextSize(TypedValue.COMPLEX_UNIT_SP, 13);
            empty.setGravity(Gravity.CENTER);
            if (vertical) {
                menuRow.addView(empty, new LinearLayout.LayoutParams(
                        ViewGroup.LayoutParams.MATCH_PARENT,
                        ViewGroup.LayoutParams.WRAP_CONTENT));
            } else if (portalStyle) {
                menuRow.addView(empty, new LinearLayout.LayoutParams(
                        screenWidth,
                        ViewGroup.LayoutParams.MATCH_PARENT));
            } else {
                menuContent.addView(empty, new FrameLayout.LayoutParams(
                        ViewGroup.LayoutParams.MATCH_PARENT,
                        ViewGroup.LayoutParams.MATCH_PARENT));
            }
        } else {
            int itemWidth = dp(portalStyle ? 78 : 76);
            int itemHeight = dp(portalStyle ? 124 : 84);
            int iconSize = dp(portalStyle ? 50 : 44);
            for (ShareTarget target : shareTargets) {
                LinearLayout item = new LinearLayout(context);
                item.setOrientation(LinearLayout.VERTICAL);
                item.setGravity(Gravity.CENTER_HORIZONTAL);
                item.setPadding(dp(portalStyle ? 5 : 4), dp(portalStyle ? 8 : 3),
                        dp(portalStyle ? 5 : 4), dp(portalStyle ? 2 : 3));
                item.setTag(target);
                item.setBackground(itemBackground(target, false));

                ImageView icon = new ImageView(context);
                icon.setImageDrawable(iconForTarget(target));
                icon.setScaleType(ImageView.ScaleType.FIT_CENTER);
                icon.setAlpha(settings.iconOpacityPercent / 100f);
                item.addView(icon, new LinearLayout.LayoutParams(iconSize, iconSize));

                TextView label = new TextView(context);
                label.setText(target.label);
                label.setTextColor(palette.primaryText);
                label.setTextSize(TypedValue.COMPLEX_UNIT_SP, 11);
                label.setGravity(Gravity.CENTER);
                label.setMaxLines(1);
                label.setEllipsize(android.text.TextUtils.TruncateAt.END);
                label.setAlpha(settings.iconOpacityPercent / 100f);
                if (portalStyle) {
                    label.setShadowLayer(dpFloat(2), 0f, dpFloat(1),
                            settings.colorMode == DragShareSettings.COLOR_DARK
                                    ? 0xCC000000
                                    : 0x66000000);
                }
                item.addView(label, new LinearLayout.LayoutParams(
                        ViewGroup.LayoutParams.MATCH_PARENT, dp(portalStyle ? 38 : 28)));

                if (vertical) {
                    int width = Math.max(dp(72), menuWidth - dp(8));
                    menuRow.addView(item, new LinearLayout.LayoutParams(width, itemHeight));
                } else {
                    menuRow.addView(item, new LinearLayout.LayoutParams(itemWidth, itemHeight));
                }
                menuItems.add(item);
            }
        }

        menuParams = overlayParams(menuWidth, menuHeight, "DragShare targets");
        menuParams.x = menuLeft;
        menuParams.y = menuTop;
    }

    private void addSimpleMenuBackground() {
        if (!(menuView instanceof FrameLayout)) {
            return;
        }
        FrameLayout linearMenuView = (FrameLayout) menuView;
        int cornerRadiusDp = settings.simpleMenuCornerRadiusDp;
        View background = new View(context);
        background.setBackground(roundDrawable(
                applyAbsoluteOpacity(palette.menuBackground, 100),
                cornerRadiusDp));
        background.setAlpha(simpleMenuBackgroundOpacityFraction(
                settings.simpleMenuOpacityPercent));
        linearMenuView.addView(background, new FrameLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT,
                ViewGroup.LayoutParams.MATCH_PARENT));
        int cornerRadiusPx = dp(cornerRadiusDp);
        linearMenuView.setOutlineProvider(new ViewOutlineProvider() {
            @Override
            public void getOutline(View view, Outline outline) {
                outline.setRoundRect(0, 0, view.getWidth(), view.getHeight(), cornerRadiusPx);
            }
        });
        linearMenuView.setClipToOutline(true);
    }

    private void handleMotionOnMain(
            int action,
            float x,
            float y,
            long eventTime,
            String source,
            Runnable beforeFinish) {
        if (!active) {
            return;
        }
        
        
        if ("root".equals(source)
                && (action == MotionEvent.ACTION_DOWN || action == MotionEvent.ACTION_MOVE)) {
            startBackgroundBlockerIfEnabled();
        }
        if (eventTime == lastHandledEventTime && action == lastHandledAction
                && eventTime != 0 && eventTime > lastObservedEventTime - DUPLICATE_EVENT_WINDOW_MS) {
            return;
        }
        lastHandledEventTime = eventTime;
        lastHandledAction = action;
        lastX = x;
        lastY = y;

        if (action == MotionEvent.ACTION_CANCEL) {
            log("gesture cancelled source=" + source);
            cancelGestureOnMain();
            return;
        }
        handlePointerOnMain(x, y);
        if (action == MotionEvent.ACTION_UP) {
            log("gesture finished source=" + source
                    + " point=" + Math.round(x) + "," + Math.round(y)
                    + " menu=" + menuShown);
            finishGestureOnMain(true, beforeFinish);
        }
    }

    private void handlePointerOnMain(float x, float y) {
        if (!active || !Float.isFinite(x) || !Float.isFinite(y)) {
            return;
        }
        lastX = x;
        lastY = y;
        updatePreviewPosition(x, y);
        if (workspaceMode) {
            
            HyperDragDropBridge.dragMoved(x, y);
            return;
        }
        updatePortalPullEffect(x, y);
        if (isCircleStyle()) {
            updateCirclePointer(x, y);
            if (menuShown) {
                updateSelectedTarget(x, y);
            }
            return;
        }
        boolean menuOpenedNow = false;
        if (!menuShown && shouldShowSimpleMenu(x, y)
                && hasQualifiedSimpleMenuActivation(x, y)) {
            showMenuOnMain();
            menuOpenedNow = menuShown;
        }
        if (menuShown) {
            if (settings.closeMenuWhenPointerLeaves
                    && !menuOpenedNow
                    && !isPointerWithinSimpleMenuZone(x, y)) {
                hideLinearMenu();
                return;
            }
            updateSelectedTarget(x, y);
            boolean pointerInScrollableMenu = isPortalStyle()
                    || isPointerInsideSimpleMenu(x, y);
            int nextDirection = 0;
            if (pointerInScrollableMenu) {
                int edgeAxisSize = edgeScrollAxisSize();
                int edgeWidth = edgeScrollWidthPx();
                nextDirection = GestureMath.edgeScrollDirection(
                        isVerticalSimpleMenu() ? y : x,
                        edgeAxisSize,
                        edgeWidth);
            }
            if (nextDirection != edgeDirection) {
                edgeDirection = nextDirection;
                edgeScrollRemainderPx = 0f;
                log("edge scroll direction=" + nextDirection);
                if (nextDirection == 0) {
                    stopEdgeScroll();
                } else {
                    lastEdgeScrollUptime = 0L;
                    mainHandler.removeCallbacks(edgeScrollRunnable);
                    mainHandler.post(edgeScrollRunnable);
                }
            }
        }
    }

    private void updateCirclePointer(float x, float y) {
        if (circleMenuView == null) {
            return;
        }
        int trigger = circleTriggerPx();
        int nextEdge = CircleMenuGeometry.nearestEdge(
                x, y, screenWidth, screenHeight, trigger);
        float progress = CircleMenuGeometry.edgeProgress(
                x, y, screenWidth, screenHeight,
                Math.max(trigger, dp(CIRCLE_EDGE_SOFT_DISTANCE_DP)));
        if (menuShown) {
            circleMenuView.updatePointer(x, y);
            if (settings.closeMenuWhenPointerLeaves
                    && !circleMenuView.containsExpandedRegion(x, y)) {
                hideCircleMenu();
                circleMenuView.setEdgeProgress(nextEdge, progress, x, y);
                updateCirclePendingEdge(nextEdge);
                return;
            }
        } else {
            circleMenuView.setEdgeProgress(nextEdge, progress, x, y);
            updateCirclePendingEdge(nextEdge);
            return;
        }

        int nextScrollDirection = circleMenuView.scrollDirectionForPointer(x, y);
        if (nextScrollDirection != circleScrollDirection) {
            circleScrollDirection = nextScrollDirection;
            mainHandler.removeCallbacks(edgeScrollRunnable);
            if (nextScrollDirection != 0) {
                mainHandler.post(edgeScrollRunnable);
            }
        }
        
        
    }

    private void updateCirclePendingEdge(int nextEdge) {
        if (nextEdge == circlePendingEdge) {
            return;
        }
        mainHandler.removeCallbacks(circleExpandRunnable);
        circlePendingEdge = nextEdge;
        if (nextEdge != CircleMenuGeometry.EDGE_NONE) {
            mainHandler.postDelayed(circleExpandRunnable, CIRCLE_EDGE_OPEN_DELAY_MS);
        }
    }

    private int circleTriggerPx() {
        int maxTrigger = Math.max(1, Math.min(screenWidth, screenHeight) / 2);
        return Math.min(
                maxTrigger,
                Math.max(dp(CIRCLE_EDGE_TRIGGER_DP), dp(settings.edgeTriggerDp)));
    }

    private int effectiveSimpleMenuPosition() {
        if (configuredSimpleMenuPosition == DragShareSettings.SIMPLE_MENU_POSITION_NEAR_HAND) {
            return nearHandSide == DragShareSettings.SIMPLE_MENU_POSITION_LEFT
                    ? DragShareSettings.SIMPLE_MENU_POSITION_LEFT
                    : DragShareSettings.SIMPLE_MENU_POSITION_RIGHT;
        }
        return configuredSimpleMenuPosition >= DragShareSettings.SIMPLE_MENU_POSITION_TOP
                && configuredSimpleMenuPosition <= DragShareSettings.SIMPLE_MENU_POSITION_RIGHT
                ? configuredSimpleMenuPosition
                : DragShareSettings.DEFAULT_SIMPLE_MENU_POSITION;
    }

    private boolean isVerticalSimpleMenu() {
        return !isPortalStyle()
                && (simpleMenuPosition == DragShareSettings.SIMPLE_MENU_POSITION_LEFT
                || simpleMenuPosition == DragShareSettings.SIMPLE_MENU_POSITION_RIGHT);
    }

    private int edgeScrollAxisSize() {
        return isVerticalSimpleMenu() ? screenHeight : screenWidth;
    }

    private int edgeScrollWidthPx() {
        int edgeAxisSize = edgeScrollAxisSize();
        int maxEdgeWidth = Math.max(1, (edgeAxisSize - 1) / 2);
        return Math.min(dp(settings.edgeTriggerDp), maxEdgeWidth);
    }

    private float edgeScrollSpeedMultiplier() {
        boolean vertical = isVerticalSimpleMenu();
        return GestureMath.edgeScrollSpeedMultiplier(
                vertical ? lastY : lastX,
                edgeScrollAxisSize(),
                edgeScrollWidthPx(),
                dp(EDGE_SCROLL_FULL_SPEED_INSET_DP));
    }

    private boolean shouldShowSimpleMenu(float x, float y) {
        if (isPortalStyle()) {
            return GestureMath.shouldShowMenu(y, menuTriggerTop);
        }
        int trigger = Math.max(dp(settings.edgeTriggerDp), dp(MENU_TRIGGER_DP));
        switch (simpleMenuPosition) {
            case DragShareSettings.SIMPLE_MENU_POSITION_TOP:
                return y <= menuTop + trigger;
            case DragShareSettings.SIMPLE_MENU_POSITION_LEFT:
                return x <= trigger;
            case DragShareSettings.SIMPLE_MENU_POSITION_RIGHT:
                return x >= screenWidth - trigger;
            case DragShareSettings.SIMPLE_MENU_POSITION_BOTTOM:
            default:
                return y >= menuTriggerTop;
        }
    }

    private boolean hasQualifiedSimpleMenuActivation(float x, float y) {
        if (isPortalStyle() || isCircleStyle() || simpleMenuActivationQualified) {
            return true;
        }
        if (!simpleMenuStartPointCaptured) {
            simpleMenuStartX = x;
            simpleMenuStartY = y;
            simpleMenuStartPointCaptured = true;
            return false;
        }
        simpleMenuActivationQualified = GestureMath.hasMovedTowardMenu(
                simpleMenuPosition,
                simpleMenuStartX,
                simpleMenuStartY,
                x,
                y,
                dp(SIMPLE_MENU_ACTIVATION_SLOP_DP));
        return simpleMenuActivationQualified;
    }

    private boolean isPointerInsideSimpleMenu(float x, float y) {
        return menuShown
                && x >= menuLeft
                && x < menuLeft + menuWidth
                && y >= menuTop
                && y < menuTop + menuHeight;
    }

    private boolean isPointerWithinSimpleMenuZone(float x, float y) {
        return isPointerInsideSimpleMenu(x, y) || shouldShowSimpleMenu(x, y);
    }

    private void hideLinearMenu() {
        if (!menuShown || isCircleStyle()) {
            return;
        }
        stopEdgeScroll();
        menuShown = false;
        if (isModernStyle() && modernMenuView != null) {
            ModernMenuOverlayView menuToDispose = modernMenuView;
            scheduleModernMenuDispose(menuToDispose, modernMenuWindow);
        } else if (menuView != null) {
            fadeOutLinearMenu(menuView);
        }
        selectedTarget = null;
        if (modernMenuView != null) {
            modernMenuView.setSelectedTarget(null);
        }
        if (glowView != null && isPortalStyle()) {
            glowView.collapseMenu();
            updatePortalPullEffect(lastX, lastY);
        }
        updatePreviewPosition(lastX, lastY);
    }

    private void hideCircleMenu() {
        if (!menuShown || !isCircleStyle() || circleMenuView == null) {
            return;
        }
        stopEdgeScroll();
        mainHandler.removeCallbacks(circleExpandRunnable);
        circleMenuView.collapse();
        menuShown = false;
        selectedTarget = null;
        circleEdge = CircleMenuGeometry.EDGE_NONE;
        circlePendingEdge = CircleMenuGeometry.EDGE_NONE;
        updatePreviewPosition(lastX, lastY);
    }

    private void updateNearHandMenuPosition() {
        if (!active || isPortalStyle() || isCircleStyle()
                || nearHandSideLocked
                || configuredSimpleMenuPosition != DragShareSettings.SIMPLE_MENU_POSITION_NEAR_HAND) {
            return;
        }
        int nextPosition = effectiveSimpleMenuPosition();
        if (nextPosition == simpleMenuPosition) {
            return;
        }
        boolean wasShown = menuShown;
        View previousMenuView = menuView;
        if (wasShown) {
            hideLinearMenu();
            if (!isModernStyle()) {
                cancelLinearMenuFadeOut();
                removeLinearMenuImmediately(previousMenuView);
            }
        }
        if (!wasShown && modernMenuWindow != null) {
            modernMenuWindow.dispose();
        }
        menuView = null;
        modernMenuView = null;
        modernMenuWindow = null;
        menuParams = null;
        menuScroll = null;
        menuVerticalScroll = null;
        menuRow = null;
        simpleMenuPosition = nextPosition;
        refreshDisplayGeometry();
        createMenu();
        if (wasShown) {
            showMenuOnMain();
        }
        updatePreviewPosition(lastX, lastY);
    }

    private void registerNearHandSensorIfNeeded() {
        if (!active || isPortalStyle() || isCircleStyle()
                || configuredSimpleMenuPosition != DragShareSettings.SIMPLE_MENU_POSITION_NEAR_HAND
                || nearHandSensorRegistered) {
            return;
        }
        try {
            sensorManager = (SensorManager) context.getSystemService(Context.SENSOR_SERVICE);
            if (sensorManager == null) {
                return;
            }
            nearHandSensor = sensorManager.getDefaultSensor(Sensor.TYPE_ROTATION_VECTOR);
            if (nearHandSensor == null) {
                nearHandSensor = sensorManager.getDefaultSensor(Sensor.TYPE_ACCELEROMETER);
            }
            if (nearHandSensor != null
                    && sensorManager.registerListener(
                            nearHandSensorListener,
                    nearHandSensor,
                    SensorManager.SENSOR_DELAY_GAME)) {
                nearHandSensorRegistered = true;
                log("near-hand sensor registered type=" + nearHandSensor.getType());
            }
        } catch (Throwable error) {
            log("near-hand sensor unavailable", error);
            nearHandSensorRegistered = false;
        }
    }

    private void unregisterNearHandSensor() {
        if (sensorManager != null && nearHandSensorRegistered) {
            try {
                sensorManager.unregisterListener(nearHandSensorListener);
            } catch (Throwable ignored) {
                
            }
        }
        nearHandSensorRegistered = false;
        nearHandSensor = null;
        sensorManager = null;
    }

    private static float rotationVectorRoll(float[] values) {
        try {
            float[] rotationMatrix = new float[9];
            float[] orientation = new float[3];
            SensorManager.getRotationMatrixFromVector(rotationMatrix, values);
            SensorManager.getOrientation(rotationMatrix, orientation);
            return orientation[2];
        } catch (Throwable ignored) {
            return Float.NaN;
        }
    }

    private long circleScrollIntervalMs() {
        float speed = Math.max(1f, settings.scrollSpeedDpPerSecond);
        return Math.max(120L, Math.min(420L, Math.round(300f * 560f / speed)));
    }

    private void showMenuOnMain() {
        if (menuShown) {
            return;
        }
        if (isCircleStyle()) {
            if (circleMenuView == null || circlePendingEdge == CircleMenuGeometry.EDGE_NONE) {
                return;
            }
            menuShown = true;
            circleEdge = circlePendingEdge;
            circleScrollDirection = 0;
            circleMenuView.expand(circleEdge, lastX, lastY);
            updatePreviewPosition(lastX, lastY);
            startCirclePreviewAnimation();
            log("circle menu shown edge=" + circleEdge
                    + " pointer=" + Math.round(lastX) + "," + Math.round(lastY));
            mainHandler.post(() -> updateSelectedTarget(lastX, lastY));
            return;
        }
        if (isModernStyle()) {
            cancelModernMenuDispose();
            
            
            
            if (menuView == null || modernMenuView == null) {
                createMenu();
            }
        }
        if (menuView == null) {
            return;
        }
        lockNearHandMenuSide();
        if (!isModernStyle() && menuView.isAttachedToWindow()) {
            cancelLinearMenuFadeOut(menuView);
            menuView.animate().cancel();
            menuShown = true;
            menuView.animate()
                    .alpha(1f)
                    .translationX(0f)
                    .translationY(0f)
                    .setDuration(LINEAR_MENU_EXIT_DURATION_MS)
                    .setInterpolator(new DecelerateInterpolator(1.5f))
                    .start();
            updatePreviewPosition(lastX, lastY);
            log("linear menu restored pointerY=" + Math.round(lastY)
                    + " menuTop=" + menuTop);
            menuView.post(() -> updateSelectedTarget(lastX, lastY));
            return;
        }
        if (isModernStyle() && modernMenuView != null
                && ((modernMenuWindow != null && modernMenuWindow.isShowing())
                || menuView.isAttachedToWindow())) {
            menuShown = true;
            if (modernMenuWindow != null) {
                modernMenuWindow.showAnimated();
            } else {
                modernMenuView.showAnimated();
            }
            updatePreviewPosition(lastX, lastY);
            log("modern menu shown pointerY=" + Math.round(lastY) + " menuTop=" + menuTop);
            menuView.post(() -> updateSelectedTarget(lastX, lastY));
            return;
        }
        try {
            if (isModernStyle() && modernMenuWindow != null) {
                modernMenuWindow.showAnimated();
            } else {
                windowManager.addView(menuView, menuParams);
            }
            menuShown = true;
            updatePreviewPosition(lastX, lastY);
            log("menu shown pointerY=" + Math.round(lastY) + " menuTop=" + menuTop);
            if (isPortalStyle()) {
                if (glowView != null) {
                    glowView.setPullProgress(1f, lastX / Math.max(1f, screenWidth));
                    glowView.expandMenu();
                }
                if (!portalGlowExpandedLogged) {
                    portalGlowExpandedLogged = true;
                    log("portal glow expanded with share tray");
                }
                startPortalMenuEnterAnimation();
            } else if (isModernStyle() && modernMenuView != null) {
                if (modernMenuWindow == null) {
                    modernMenuView.showAnimated();
                }
            } else {
                menuView.setAlpha(0f);
                menuView.setTranslationX(isVerticalSimpleMenu()
                        ? (simpleMenuPosition == DragShareSettings.SIMPLE_MENU_POSITION_LEFT
                        ? -dp(12) : dp(12))
                        : 0f);
                menuView.setTranslationY(!isVerticalSimpleMenu()
                        ? (simpleMenuPosition == DragShareSettings.SIMPLE_MENU_POSITION_TOP
                        ? -dp(12) : dp(12))
                        : 0f);
                menuView.animate()
                        .alpha(1f)
                        .translationX(0f)
                        .translationY(0f)
                        .setDuration(120L)
                        .start();
            }
            menuView.post(() -> updateSelectedTarget(lastX, lastY));
        } catch (Throwable error) {
            log("unable to add share menu", error);
        }
    }

    private void lockNearHandMenuSide() {
        if (configuredSimpleMenuPosition != DragShareSettings.SIMPLE_MENU_POSITION_NEAR_HAND
                || nearHandSideLocked) {
            return;
        }
        nearHandSideLocked = true;
        unregisterNearHandSensor();
        log("near-hand menu side locked=" + simpleMenuPosition);
    }

    private void startPortalMenuEnterAnimation() {
        menuView.setAlpha(1f);
        menuView.setTranslationY(0f);
        OvershootInterpolator springLike = new OvershootInterpolator(0.78f);
        for (int index = 0; index < menuItems.size(); index++) {
            View item = menuItems.get(index);
            item.animate().cancel();
            item.setAlpha(0f);
            item.setTranslationY(dp(PORTAL_ITEM_ENTER_OFFSET_DP));
            item.animate()
                    .alpha(1f)
                    .translationY(0f)
                    .setStartDelay(Math.min(180L, index * 22L))
                    .setDuration(430L)
                    .setInterpolator(springLike)
                    .start();
        }
    }

    private void startCirclePreviewAnimation() {
        if (previewView == null) {
            return;
        }
        previewView.animate().cancel();
        previewView.animate()
                .alpha(0.92f)
                .scaleX(0.88f)
                .scaleY(0.88f)
                .setDuration(500L)
                .start();
    }

    private void updateSelectedTarget(float x, float y) {
        if (isCircleStyle()) {
            ShareTarget hit = circleMenuView == null ? null : circleMenuView.hitTest(x, y);
            selectedTarget = hit;
            if (circleMenuView != null) {
                circleMenuView.setSelectedTarget(hit);
            }
            return;
        }
        if (isModernStyle()) {
            ShareTarget hit = menuShown && isPointerInsideSimpleMenu(x, y)
                    && modernMenuView != null
                    ? modernMenuView.hitTest(x, y)
                    : null;
            selectedTarget = hit;
            if (modernMenuView != null) {
                modernMenuView.setSelectedTarget(hit);
            }
            return;
        }
        ShareTarget hit = null;
        if (menuShown && isPointerInsideSimpleMenu(x, y)) {
            for (int i = 0; i < menuItems.size(); i++) {
                View item = menuItems.get(i);
                int[] location = new int[2];
                item.getLocationOnScreen(location);
                boolean inside;
                if (isPortalStyle() && item.getWidth() > 0 && item.getHeight() > 0) {
                    float centerX = location[0] + item.getWidth() / 2f;
                    float centerY = location[1] + item.getHeight() / 2f;
                    float scale = GestureMath.portalItemScale(
                            x, centerX, item.getWidth());
                    inside = Math.abs(x - centerX) <= item.getWidth() * scale / 2f
                            && Math.abs(y - centerY) <= item.getHeight() * scale / 2f;
                } else {
                    inside = x >= location[0] && x < location[0] + item.getWidth()
                            && y >= location[1] && y < location[1] + item.getHeight();
                }
                if (inside) {
                    Object tag = item.getTag();
                    if (tag instanceof ShareTarget) {
                        hit = (ShareTarget) tag;
                    }
                    break;
                }
            }
        }
        boolean selectionChanged = hit != selectedTarget;
        selectedTarget = hit;
        if (isPortalStyle()) {
            boolean pointerInMenu = menuShown && isPointerInsideSimpleMenu(x, y);
            for (View item : menuItems) {
                int[] location = new int[2];
                item.getLocationOnScreen(location);
                float scale = pointerInMenu && item.getWidth() > 0
                        ? GestureMath.portalItemScale(
                                x,
                                location[0] + item.getWidth() / 2f,
                                item.getWidth())
                        : 1f;
                item.setScaleX(scale);
                item.setScaleY(scale);
                if (selectionChanged) {
                    item.setBackground(itemBackground(
                            (ShareTarget) item.getTag(),
                            item.getTag() == selectedTarget));
                }
            }
            return;
        }
        if (!selectionChanged) {
            return;
        }
        for (View item : menuItems) {
            boolean selected = item.getTag() == selectedTarget;
            item.setBackground(itemBackground((ShareTarget) item.getTag(), selected));
            item.animate().scaleX(selected ? 1.04f : 1f)
                    .scaleY(selected ? 1.04f : 1f).setDuration(80L).start();
        }
    }

    private void finishGestureOnMain(boolean allowShare) {
        finishGestureOnMain(allowShare, null);
    }

    private void finishGestureOnMain(boolean allowShare, Runnable afterDeactivate) {
        if (!active) {
            return;
        }
        Session finished = session;
        ShareTarget target = selectedTarget;
        if (allowShare && menuShown) {
            updateSelectedTarget(lastX, lastY);
            target = selectedTarget;
        }

        if (settings.blockBackgroundScroll && !backgroundBlockAttempted) {
            log("background scroll lock skipped because root input was not active");
        }
        active = false;
        stopEdgeScroll();
        backgroundTouchBlocker.stop();
        if (afterDeactivate != null) {
            afterDeactivate.run();
        }

        if (workspaceMode) {
            finishGestureInWorkspace(finished);
            return;
        }

        
        
        
        if (allowShare && target != null && finished != null) {
            if (!finished.payload.isImage()
                    || target.isSaveToLocal()
                    || finished.stagedUri != null) {
                launchShare(finished, target);
            } else {
                finished.pendingTarget = target;
                showToast("正在准备图片");
            }
        } else if (finished != null && finished.pendingTarget == null) {
            finished.cancelled = true;
        }
        removeGestureViews(true);
    }

    private void finishGestureInWorkspace(Session finished) {
        HyperDragDropBridge.Outcome outcome = HyperDragDropBridge.Outcome.NONE;
        if (finished != null) {
            outcome = HyperDragDropBridge.dispatchDrop(
                    lastX,
                    lastY,
                    finished.payload.text,
                    finished.stagedUri,
                    ShareImageProvider.stagedFileFor(context, finished.stagedUri),
                    finished.payload.isImage() ? finished.payload.mimeType() : null,
                    panelDragSession);
        }
        HyperDragDropBridge.dragEnded();
        ShareTarget builtinTarget = workspaceBuiltinTarget(outcome);
        if (builtinTarget != null && finished != null) {
            if (!finished.payload.isImage()
                    || builtinTarget.isSaveToLocal()
                    || finished.stagedUri != null) {
                launchShare(finished, builtinTarget);
            } else {
                
                finished.pendingTarget = builtinTarget;
                showToast("正在准备图片");
            }
        } else if (outcome == HyperDragDropBridge.Outcome.NONE && finished != null) {
            finished.cancelled = true;
            if (finished.payload.isImage() && finished.stagedUri == null) {
                
                showToast("图片正在准备，请稍候再松手");
            }
        }
        notifySessionTeardownListener();
        removeGestureViews(true);
    }

    private ShareTarget workspaceBuiltinTarget(HyperDragDropBridge.Outcome outcome) {
        if (outcome == HyperDragDropBridge.Outcome.BUILTIN_TEXT_SEGMENTATION) {
            return ShareTarget.textSegmentation(
                    ShareTargetRepository.loadTextSegmentationIcon(context));
        }
        if (outcome == HyperDragDropBridge.Outcome.BUILTIN_SAVE_LOCAL) {
            return ShareTarget.saveToLocal(ShareTargetRepository.loadSaveIcon(context));
        }
        if (outcome == HyperDragDropBridge.Outcome.BUILTIN_COPY) {
            return session != null && session.payload.isImage()
                    ? ShareTarget.copyImageToClipboard(ShareTargetRepository.loadCopyIcon(context))
                    : ShareTarget.copyTextToClipboard(ShareTargetRepository.loadCopyIcon(context));
        }
        return null;
    }

    private void notifySessionTeardownListener() {
        Runnable listener = sessionTeardownListener;
        sessionTeardownListener = null;
        workspaceMode = false;
        panelDragSession = false;
        if (listener != null) {
            listener.run();
        }
    }

    private void cancelGestureOnMain() {
        if (!active) {
            return;
        }
        active = false;
        stopEdgeScroll();
        backgroundTouchBlocker.stop();
        if (workspaceMode) {
            HyperDragDropBridge.dragEnded();
        }
        notifySessionTeardownListener();
        removeGestureViews(true);
        if (session != null && session.pendingTarget == null) {
            session.cancelled = true;
        }
    }

    private void launchPendingShare(Session pendingSession) {
        ShareTarget target = pendingSession.pendingTarget;
        if (target == null
                || (pendingSession.stagedUri == null && !target.isSaveToLocal())) {
            return;
        }
        pendingSession.pendingTarget = null;
        launchShare(pendingSession, target);
    }

    private void launchShare(Session shareSession, ShareTarget target) {
        if (target.isSaveToLocal()) {
            saveImageLocally(shareSession.payload.bitmap);
            shareSession.cancelled = true;
            return;
        }
        if (target.isCopyToClipboard()) {
            copyToClipboard(shareSession.payload, shareSession.stagedUri);
            shareSession.cancelled = true;
            return;
        }
        if (target.isTextSegmentation()) {
            openTextSegmentation(shareSession.payload.text);
            shareSession.cancelled = true;
            return;
        }
        if (target.isSendToOneStep()) {
            sendTextToOneStep(shareSession.payload);
            shareSession.cancelled = true;
            return;
        }
        try {
            log("drop target=" + target.component.flattenToShortString());
            ShareLauncher.launch(
                    context,
                    shareSession.payload,
                    target,
                    shareSession.stagedUri,
                    dragShareToast);
        } catch (Throwable error) {
            log("share launch failed", error);
        }
        shareSession.cancelled = true;
    }

    private void sendTextToOneStep(CapturedContent payload) {
        String text = payload == null ? null : payload.text;
        if (text == null || text.trim().isEmpty()) {
            showToast("没有可发送到 OneStep 的文字");
            return;
        }
        try {
            Intent intent = new Intent("com.hyper.onestep.action.HYPERDRAG_TEXT");
            intent.setPackage("com.hyper.onestep");
            intent.putExtra(Intent.EXTRA_TEXT, text);
            context.sendBroadcast(intent);
            log("sent captured text to onestep");
        } catch (Throwable error) {
            log("send to onestep failed", error);
            showToast("发送到 OneStep 失败");
        }
    }

    private void copyToClipboard(CapturedContent payload, Uri stagedImage) {
        boolean image = payload != null && payload.isImage();
        try {
            ClipboardManager clipboard = context.getSystemService(ClipboardManager.class);
            if (clipboard == null) {
                throw new IllegalStateException("Clipboard service is unavailable");
            }
            ClipData clip;
            if (image) {
                if (stagedImage == null) {
                    throw new IllegalArgumentException("Image URI is not ready");
                }
                clip = ClipData.newUri(
                        context.getContentResolver(),
                        "drag-share-image",
                        stagedImage);
            } else {
                String text = payload == null ? null : payload.text;
                if (text == null || text.trim().isEmpty()) {
                    throw new IllegalArgumentException("Text is empty");
                }
                clip = ClipData.newPlainText("drag-share-text", text);
            }
            clipboard.setPrimaryClip(clip);
            log("copied " + (image ? "image" : "text") + " to clipboard");
            showToast(image ? "图片已复制到剪贴板" : "文字已复制到剪贴板");
        } catch (Throwable error) {
            log("clipboard copy failed", error);
            showToast(image ? "复制图片失败" : "复制文字失败");
        }
    }

    private void openTextSegmentation(String text) {
        if (text == null || text.trim().isEmpty()) {
            showToast("没有可分词的文字");
            return;
        }
        try {
            
            
            if (com.hyper.onestep.MainActivity.launchTextSegmentationFromHost(
                    text, Math.round(lastX), Math.round(lastY))) {
                log("opened text segmentation in host task");
                return;
            }
            Intent intent = TextSegmentationActivity.createIntent(
                    text,
                    Math.round(lastX),
                    Math.round(lastY));
            intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
            context.startActivity(intent);
            log("opened text segmentation");
        } catch (Throwable error) {
            log("open text segmentation failed", error);
            showToast("无法打开文本分词");
        }
    }

    private void saveImageLocally(Bitmap bitmap) {
        if (bitmap == null || bitmap.isRecycled()) {
            showToast("保存图片失败");
            return;
        }
        Thread worker = new Thread(() -> {
            try {
                LocalImageSaver.save(context, bitmap);
                log("saved image as PNG");
                traceAccessibility("local save succeeded");
                mainHandler.post(() -> showToast("已保存到本地", android.widget.Toast.LENGTH_LONG));
            } catch (Throwable error) {
                log("local image save failed", error);
                traceAccessibility("local save failed=" + error.getClass().getSimpleName());
                mainHandler.post(() -> showToast("保存图片失败", android.widget.Toast.LENGTH_LONG));
            }
        }, "drag-share-local-save");
        worker.start();
    }

    private void updatePreviewPosition(float x, float y) {
        if (previewParams == null || previewView == null) {
            return;
        }
        if (isCircleStyle() && menuShown && circleMenuView != null) {
            Rect avoid = circleMenuView.getAvoidRect();
            int margin = dp(12);
            int left = GestureMath.previewLeft(x, previewWidth, screenWidth, dp(8));
            int top = GestureMath.previewTop(
                    y,
                    previewHeight,
                    dp(20),
                    topInset + dp(8),
                    screenHeight - bottomInset - previewHeight - dp(8));
            switch (circleEdge) {
                case CircleMenuGeometry.EDGE_LEFT:
                    left = avoid.right + margin;
                    break;
                case CircleMenuGeometry.EDGE_RIGHT:
                    left = avoid.left - previewWidth - margin;
                    break;
                default:
                    break;
            }
            previewParams.x = GestureMath.clamp(
                    left,
                    dp(8),
                    Math.max(dp(8), screenWidth - previewWidth - dp(8)));
            previewParams.y = GestureMath.clamp(
                    top,
                    topInset + dp(8),
                    Math.max(topInset + dp(8),
                            screenHeight - bottomInset - previewHeight - dp(8)));
            updateOverlayLayout(previewView, modernPreviewWindow, previewParams);
            return;
        }
        int margin = dp(settings.simpleMenuEdgeDistanceDp);
        int minLeft = dp(8);
        int maxLeft = Math.max(minLeft, screenWidth - previewWidth - dp(8));
        int minTop = topInset + dp(8);
        int maxTop = Math.max(minTop, screenHeight - bottomInset - previewHeight - dp(8));
        if (menuShown) {
            if (isVerticalSimpleMenu()) {
                if (simpleMenuPosition == DragShareSettings.SIMPLE_MENU_POSITION_LEFT) {
                    minLeft = Math.min(maxLeft, menuLeft + menuWidth + margin);
                } else if (simpleMenuPosition == DragShareSettings.SIMPLE_MENU_POSITION_RIGHT) {
                    maxLeft = Math.max(minLeft, menuLeft - previewWidth - margin);
                }
            } else if (simpleMenuPosition == DragShareSettings.SIMPLE_MENU_POSITION_TOP) {
                minTop = Math.min(maxTop, menuTop + menuHeight + margin);
            } else {
                maxTop = Math.max(minTop, menuTop - previewHeight - margin);
            }
        }
        previewParams.x = GestureMath.clamp(
                Math.round(x - previewWidth / 2f), minLeft, maxLeft);
        previewParams.y = GestureMath.clamp(
                Math.round(y - previewHeight - dp(20)), minTop, maxTop);
        updateOverlayLayout(previewView, modernPreviewWindow, previewParams);
    }

    private void updateOverlayLayout(
            View view,
            ModernOverlayWindow modernWindow,
            WindowManager.LayoutParams params) {
        if (view == null || params == null) {
            return;
        }
        try {
            if (modernWindow != null) {
                modernWindow.updateLayout();
            } else {
                windowManager.updateViewLayout(view, params);
            }
        } catch (Throwable ignored) {
            
        }
    }

    private void updatePortalPullEffect(float x, float y) {
        if (glowView == null || !isPortalStyle()) {
            return;
        }
        float progressStart = Math.max(topInset + dp(120), screenHeight * 0.45f);
        float progress = menuShown
                ? 1f
                : GestureMath.dragPullProgress(y, progressStart, menuTriggerTop);
        if (progress > 0.02f && !portalGlowStartedLogged) {
            portalGlowStartedLogged = true;
            log("portal glow progress started");
        }
        glowView.setPullProgress(progress, x / Math.max(1f, screenWidth));
    }

    private void refreshDisplayGeometry() {
        try {
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.R) {
                WindowMetrics metrics = windowManager.getCurrentWindowMetrics();
                screenWidth = metrics.getBounds().width();
                screenHeight = metrics.getBounds().height();
                Insets insets = metrics.getWindowInsets().getInsetsIgnoringVisibility(
                        WindowInsets.Type.systemBars() | WindowInsets.Type.displayCutout());
                topInset = insets.top;
                bottomInset = insets.bottom;
            } else {
                throw new UnsupportedOperationException("legacy display metrics");
            }
        } catch (Throwable ignored) {
            DisplayMetrics metrics = new DisplayMetrics();
            windowManager.getDefaultDisplay().getRealMetrics(metrics);
            screenWidth = metrics.widthPixels;
            screenHeight = metrics.heightPixels;
            topInset = 0;
            bottomInset = 0;
        }
        if (isCircleStyle()) {
            menuWidth = screenWidth;
            menuHeight = dp(CircleMenuOverlayView.CONTAINER_SIZE_DP);
            menuLeft = 0;
            menuTop = Math.max(topInset, screenHeight - bottomInset - menuHeight);
            menuTriggerTop = menuTop;
            return;
        }
        if (isPortalStyle()) {
            menuWidth = screenWidth;
            menuHeight = dp(PORTAL_MENU_HEIGHT_DP);
            menuLeft = 0;
            menuTop = Math.max(topInset, screenHeight - bottomInset - menuHeight);
            menuTriggerTop = Math.max(
                    menuTop,
                    screenHeight - bottomInset - dp(PORTAL_TRIGGER_FROM_BOTTOM_DP));
            return;
        }

        simpleMenuPosition = effectiveSimpleMenuPosition();
        int menuMargin = dp(settings.simpleMenuEdgeDistanceDp);
        if (isVerticalSimpleMenu()) {
            menuWidth = Math.min(dp(SIMPLE_SIDE_MENU_WIDTH_DP), Math.max(1, screenWidth / 2));
            menuHeight = Math.max(1, screenHeight - topInset - bottomInset);
            menuTop = topInset;
            menuLeft = simpleMenuPosition == DragShareSettings.SIMPLE_MENU_POSITION_LEFT
                    ? menuMargin
                    : Math.max(0, screenWidth - menuWidth - menuMargin);
            menuTriggerTop = menuTop;
        } else {
            int horizontalInset = isModernStyle()
                    && simpleMenuPosition == DragShareSettings.SIMPLE_MENU_POSITION_BOTTOM
                    ? Math.min(
                            dp(MODERN_BOTTOM_MENU_SIDE_MARGIN_DP),
                            Math.max(0, (screenWidth - 1) / 2))
                    : 0;
            menuWidth = Math.max(1, screenWidth - horizontalInset * 2);
            menuHeight = dp(MENU_HEIGHT_DP);
            menuLeft = horizontalInset;
            if (simpleMenuPosition == DragShareSettings.SIMPLE_MENU_POSITION_TOP) {
                menuTop = topInset + menuMargin;
                menuTriggerTop = menuTop + dp(MENU_TRIGGER_DP);
            } else {
                menuTop = Math.max(
                        topInset,
                        screenHeight - bottomInset - menuHeight - menuMargin);
                menuTriggerTop = menuTop - dp(MENU_TRIGGER_DP);
            }
        }
    }

    private WindowManager.LayoutParams overlayParams(int width, int height, String title) {
        WindowManager.LayoutParams params = new WindowManager.LayoutParams();
        params.type = windowPolicy.windowType;
        params.format = PixelFormat.TRANSLUCENT;
        params.flags = WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE
                | WindowManager.LayoutParams.FLAG_NOT_TOUCHABLE
                | WindowManager.LayoutParams.FLAG_LAYOUT_IN_SCREEN;
        params.gravity = Gravity.TOP | Gravity.START;
        params.width = width;
        params.height = height;
        params.x = 0;
        params.y = 0;
        params.setTitle(title);
        params.layoutInDisplayCutoutMode =
                WindowManager.LayoutParams.LAYOUT_IN_DISPLAY_CUTOUT_MODE_SHORT_EDGES;
        return params;
    }

    private void removeGestureViews() {
        removeGestureViews(false);
    }

    private void removeGestureViews(boolean animatePreviewExit) {
        unregisterNearHandSensor();
        cancelModernMenuDispose();
        cancelLinearMenuFadeOut();
        if (!animatePreviewExit) {
            removePendingPreviewExitImmediately();
        }
        if (previewView != null && !animatePreviewExit) {
            previewView.animate().cancel();
        }
        if (menuView != null) {
            menuView.animate().cancel();
        }
        for (View item : menuItems) {
            item.animate().cancel();
        }
        if (animatePreviewExit && previewView != null) {
            startPreviewExit(previewView, modernPreviewView, modernPreviewWindow);
        } else {
            removeOverlayView(previewView, modernPreviewView, modernPreviewWindow);
        }
        removeOverlayView(menuView, modernMenuView, modernMenuWindow);
        if (glowView != null) {
            glowView.stop();
            try {
                windowManager.removeViewImmediate(glowView);
            } catch (Throwable ignored) {
                
            }
        }
        mainHandler.removeCallbacks(circleExpandRunnable);
        if (circleMenuView != null) {
            circleMenuView.collapse();
            try {
                windowManager.removeViewImmediate(circleMenuView);
            } catch (Throwable ignored) {
                
            }
        }
        previewView = null;
        modernPreviewView = null;
        modernPreviewWindow = null;
        previewParams = null;
        glowView = null;
        glowParams = null;
        menuView = null;
        modernMenuView = null;
        modernMenuWindow = null;
        modernMenuDisposeRunnable = null;
        fadingLinearMenuView = null;
        modernPreviewEnterStarted = false;
        menuParams = null;
        menuScroll = null;
        menuVerticalScroll = null;
        menuRow = null;
        circleMenuView = null;
        circleMenuParams = null;
        menuItems.clear();
        selectedTarget = null;
        menuShown = false;
        edgeDirection = 0;
        edgeScrollRemainderPx = 0f;
        circleEdge = CircleMenuGeometry.EDGE_NONE;
        circlePendingEdge = CircleMenuGeometry.EDGE_NONE;
        circleScrollDirection = 0;
        menuLeft = 0;
        menuWidth = 0;
    }

    private void removeOverlayView(
            View view,
            ModernOverlayComposeView modernOverlay,
            ModernOverlayWindow modernWindow) {
        if (modernWindow != null) {
            modernWindow.dispose();
            return;
        }
        if (view != null) {
            try {
                windowManager.removeViewImmediate(view);
            } catch (Throwable ignored) {
                
            }
        }
        if (modernOverlay != null) {
            modernOverlay.disposeOverlay();
        }
    }

    private void startPreviewExit(
            View previewToFade,
            ModernPreviewOverlayView modernPreviewToFade,
            ModernOverlayWindow modernWindowToFade) {
        removePendingPreviewExitImmediately();
        final int generation = ++previewExitGeneration;
        exitingPreviewView = previewToFade;
        exitingModernPreviewView = modernPreviewToFade;
        exitingModernPreviewWindow = modernWindowToFade;

        if (modernWindowToFade != null) {
            modernWindowToFade.hideAnimated(
                    MODERN_OVERLAY_EXIT_DURATION_MS,
                    () -> finishPreviewExit(
                            generation,
                            previewToFade,
                            modernPreviewToFade,
                            modernWindowToFade));
            return;
        }
        if (modernPreviewToFade != null) {
            modernPreviewToFade.hideAnimated();
            mainHandler.postDelayed(
                    () -> finishPreviewExit(
                            generation,
                            previewToFade,
                            modernPreviewToFade,
                            null),
                    MODERN_OVERLAY_EXIT_DURATION_MS);
            return;
        }

        previewToFade.animate().cancel();
        previewToFade.animate()
                .alpha(0f)
                .scaleX(Math.max(0f, previewToFade.getScaleX() * 0.96f))
                .scaleY(Math.max(0f, previewToFade.getScaleY() * 0.96f))
                .setDuration(PREVIEW_EXIT_DURATION_MS)
                .setInterpolator(new DecelerateInterpolator(1.5f))
                .withEndAction(() -> finishPreviewExit(
                        generation,
                        previewToFade,
                        null,
                        null))
                .start();
    }

    private void finishPreviewExit(
            int generation,
            View previewToRemove,
            ModernPreviewOverlayView modernPreviewToRemove,
            ModernOverlayWindow modernWindowToRemove) {
        if (generation != previewExitGeneration
                || exitingPreviewView != previewToRemove
                || exitingModernPreviewView != modernPreviewToRemove
                || exitingModernPreviewWindow != modernWindowToRemove) {
            return;
        }
        exitingPreviewView = null;
        exitingModernPreviewView = null;
        exitingModernPreviewWindow = null;
        removeOverlayView(previewToRemove, modernPreviewToRemove, modernWindowToRemove);
    }

    private boolean isPreviewExitPending() {
        return exitingPreviewView != null;
    }

    private void removePendingPreviewExitImmediately() {
        previewExitGeneration++;
        View previewToRemove = exitingPreviewView;
        ModernPreviewOverlayView modernPreviewToRemove = exitingModernPreviewView;
        ModernOverlayWindow modernWindowToRemove = exitingModernPreviewWindow;
        exitingPreviewView = null;
        exitingModernPreviewView = null;
        exitingModernPreviewWindow = null;
        if (previewToRemove != null) {
            previewToRemove.animate().cancel();
        }
        removeOverlayView(previewToRemove, modernPreviewToRemove, modernWindowToRemove);
    }

    private void scheduleModernMenuDispose(
            ModernMenuOverlayView menuToDispose,
            ModernOverlayWindow windowToDispose) {
        cancelModernMenuDispose();
        Runnable disposeRunnable = () -> {
            if (menuShown || modernMenuView != menuToDispose) {
                return;
            }
            if (windowToDispose != null) {
                windowToDispose.dispose();
            } else {
                try {
                    windowManager.removeViewImmediate(menuToDispose);
                } catch (Throwable ignored) {
                    
                }
                menuToDispose.disposeOverlay();
            }
            if (menuView == menuToDispose) {
                menuView = null;
                modernMenuView = null;
                modernMenuWindow = null;
                menuParams = null;
            }
        };
        modernMenuDisposeRunnable = disposeRunnable;
        if (windowToDispose != null) {
            windowToDispose.hideAnimated(
                    MODERN_OVERLAY_EXIT_DURATION_MS,
                    () -> {
                        if (modernMenuDisposeRunnable == disposeRunnable) {
                            disposeRunnable.run();
                        }
                    });
        } else {
            menuToDispose.hideAnimated();
            mainHandler.postDelayed(disposeRunnable, MODERN_OVERLAY_EXIT_DURATION_MS);
        }
    }

    private void cancelModernMenuDispose() {
        if (modernMenuDisposeRunnable != null) {
            mainHandler.removeCallbacks(modernMenuDisposeRunnable);
            modernMenuDisposeRunnable = null;
        }
    }

    private void fadeOutLinearMenu(View menuToFade) {
        if (menuToFade == null) {
            return;
        }
        cancelLinearMenuFadeOut();
        final int generation = ++linearMenuFadeGeneration;
        fadingLinearMenuView = menuToFade;
        menuToFade.animate().cancel();
        menuToFade.animate()
                .alpha(0f)
                .setDuration(LINEAR_MENU_EXIT_DURATION_MS)
                .setInterpolator(new DecelerateInterpolator(1.5f))
                .withEndAction(() -> {
                    if (generation != linearMenuFadeGeneration
                            || fadingLinearMenuView != menuToFade) {
                        return;
                    }
                    fadingLinearMenuView = null;
                    if (menuView == menuToFade && menuShown) {
                        return;
                    }
                    removeLinearMenuImmediately(menuToFade);
                })
                .start();
    }

    private void cancelLinearMenuFadeOut(View menuToRestore) {
        if (fadingLinearMenuView == menuToRestore) {
            cancelLinearMenuFadeOut();
        }
    }

    private void cancelLinearMenuFadeOut() {
        linearMenuFadeGeneration++;
        View fading = fadingLinearMenuView;
        fadingLinearMenuView = null;
        if (fading != null) {
            fading.animate().cancel();
        }
    }

    private void removeLinearMenuImmediately(View menuToRemove) {
        if (menuToRemove == null) {
            return;
        }
        menuToRemove.animate().cancel();
        try {
            windowManager.removeViewImmediate(menuToRemove);
        } catch (Throwable ignored) {
            
        }
    }

    private void stopEdgeScroll() {
        edgeDirection = 0;
        circleScrollDirection = 0;
        lastEdgeScrollUptime = 0L;
        edgeScrollRemainderPx = 0f;
        mainHandler.removeCallbacks(edgeScrollRunnable);
    }

    private boolean isPortalStyle() {
        return settings != null && settings.uiStyle == DragShareSettings.STYLE_PORTAL;
    }

    private boolean isCircleStyle() {
        return settings != null && settings.uiStyle == DragShareSettings.STYLE_CIRCLE;
    }

    private boolean isModernStyle() {
        return settings != null && settings.uiStyle == DragShareSettings.STYLE_MODERN;
    }

    private void startBackgroundBlockerIfEnabled() {
        if (!settings.blockBackgroundScroll || backgroundBlockAttempted) {
            return;
        }
        backgroundBlockAttempted = true;
        if (!backgroundTouchBlocker.start()) {
            log("background scroll lock unavailable; continuing without it");
        }
    }

    private GradientDrawable itemBackground(ShareTarget target, boolean selected) {
        if (!selected) {
            return roundDrawable(Color.TRANSPARENT, isPortalStyle() ? 28 : 8);
        }
        GradientDrawable drawable = roundDrawable(
                palette.selectedItemBackground,
                isPortalStyle() ? 28 : 8);
        if (isPortalStyle()) {
            drawable.setStroke(dp(1), palette.selectedItemBorder);
        }
        return drawable;
    }

    private Drawable iconForTarget(ShareTarget target) {
        return ShareTargetRepository.iconForDisplay(target);
    }

    private static int applyAbsoluteOpacity(int color, int percent) {
        int alpha = Math.round(255f * (Math.max(0, Math.min(100, percent)) / 100f));
        return (color & 0x00FFFFFF) | (alpha << 24);
    }

    static float simpleMenuBackgroundOpacityFraction(int percent) {
        return Math.max(0, Math.min(100, percent)) / 100f;
    }

    private GradientDrawable roundDrawable(int color, int radiusDp) {
        GradientDrawable drawable = new GradientDrawable();
        drawable.setColor(color);
        drawable.setCornerRadius(dp(radiusDp));
        return drawable;
    }

    private int dp(int value) {
        return Math.round(TypedValue.applyDimension(
                TypedValue.COMPLEX_UNIT_DIP,
                value,
                context.getResources().getDisplayMetrics()));
    }

    private float dpFloat(float value) {
        return TypedValue.applyDimension(
                TypedValue.COMPLEX_UNIT_DIP,
                value,
                context.getResources().getDisplayMetrics());
    }

    private void showToast(String message) {
        dragShareToast.show(message);
    }

    private void showToast(String message, int duration) {
        dragShareToast.show(message, duration);
    }

    private void runOnMain(Runnable runnable) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            runnable.run();
        } else {
            mainHandler.post(runnable);
        }
    }

    private static void log(String message) {
        DragShareLog.i(TAG, message);
    }

    private static void log(String message, Throwable error) {
        DragShareLog.w(TAG, message, error);
    }

    private void traceAccessibility(String message) {
        if ("accessibility".equals(windowPolicy.sourceName)) {
            AccessibilityTrace.record(context, message);
        }
    }

    private static final class Session {
        final CapturedContent payload;
        Uri stagedUri;
        ShareTarget pendingTarget;
        boolean cancelled;

        Session(CapturedContent payload) {
            this.payload = payload;
        }
    }

    private static final class OverlayColors {
        final int previewBackground;
        final int menuBackground;
        final int primaryText;
        final int secondaryText;
        final int selectedItemBackground;
        final int selectedItemBorder;
        final int accent;

        private OverlayColors(
                int previewBackground,
                int menuBackground,
                int primaryText,
                int secondaryText,
                int selectedItemBackground,
                int selectedItemBorder,
                int accent) {
            this.previewBackground = previewBackground;
            this.menuBackground = menuBackground;
            this.primaryText = primaryText;
            this.secondaryText = secondaryText;
            this.selectedItemBackground = selectedItemBackground;
            this.selectedItemBorder = selectedItemBorder;
            this.accent = accent;
        }

        static OverlayColors light() {
            return new OverlayColors(
                    0xF7FFFFFF,
                    0xF4F8FAF9,
                    0xFF17201D,
                    0xFF55615C,
                    0x26137A5A,
                    0x00000000,
                    0xFF137A5A);
        }

        static OverlayColors from(DragShareSettings settings) {
            if (settings != null && settings.uiStyle == DragShareSettings.STYLE_CIRCLE) {
                if (settings.colorMode == DragShareSettings.COLOR_DARK) {
                    return new OverlayColors(
                            0xF72A2D32,
                            0xE91E242B,
                            0xFFF3F5F4,
                            0xFFB7BFBB,
                            0x4C4C9DFF,
                            0xAA7AC9FF,
                            0xFF65C6E8);
                }
                return new OverlayColors(
                        0xFCFFFFFF,
                        0xE9F7FAFC,
                        0xFF17201D,
                        0xFF65716B,
                        0x3A5DABE8,
                        0xAA438CB6,
                        0xFF2E9EB7);
            }
            if (settings != null && settings.uiStyle == DragShareSettings.STYLE_PORTAL) {
                if (settings.colorMode == DragShareSettings.COLOR_DARK) {
                    return new OverlayColors(
                            0xF72A2D32,
                            0x003A3E43,
                            0xFFF3F5F4,
                            0xFFB7BFBB,
                            0x384F8BFF,
                            0x887AC9FF,
                            0xFF71DDEB);
                }
                return new OverlayColors(
                        0xFCFFFFFF,
                        0x00FFFFFF,
                        0xFF17201D,
                        0xFF65716B,
                        0x306F9DFF,
                        0x8074B8FF,
                        0xFF2CA9BD);
            }
            if (settings != null && settings.colorMode == DragShareSettings.COLOR_DARK) {
                return new OverlayColors(
                        0xF725272A,
                        0xF42F3135,
                        0xFFF3F5F4,
                        0xFFB7BFBB,
                        0x3358B995,
                        0x6658B995,
                        0xFF58B995);
            }
            return light();
        }
    }
}
