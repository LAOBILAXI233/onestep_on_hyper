package com.leaf.hyperdragshare.codex;

import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.view.MotionEvent;
import android.view.ViewConfiguration;

import com.hyper.onestep.VirtualDisplayRegionRegistry;

import java.util.concurrent.ExecutorService;

final class AccessibilityContentCaptureSource {
    private static final String TAG = "DragShare/Accessibility";

    private final DragShareAccessibilityService service;
    private final DragShareController controller;
    private final RootTouchSource rootTouchSource;
    private final ExecutorService classifierExecutor;
    private final AccessibilityScreenshotter screenshotter;
    private final long baseLongPressTimeoutMillis;
    private final float tolerantTouchSlop;
    private final float strictTouchSlop;
    private final Handler mainHandler = new Handler(Looper.getMainLooper());
    private final LongPressGestureDetector gestureDetector;

    AccessibilityContentCaptureSource(
            DragShareAccessibilityService service,
            DragShareController controller,
            RootTouchSource rootTouchSource,
            ExecutorService classifierExecutor,
            AccessibilityScreenshotter screenshotter) {
        this.service = service;
        this.controller = controller;
        this.rootTouchSource = rootTouchSource;
        this.classifierExecutor = classifierExecutor;
        this.screenshotter = screenshotter;
        ViewConfiguration configuration = ViewConfiguration.get(service);
        DragShareSettings settings = DragShareSettings.readLocal(service);
        this.baseLongPressTimeoutMillis = settings.resolveAccessibilityLongPressTimeoutMillis(
                ViewConfiguration.getLongPressTimeout());
        float tolerantTouchSlop = Math.max(
                configuration.getScaledTouchSlop() * 2f,
                service.getResources().getDisplayMetrics().density * 16f)
                * settings.accessibilityTouchSlopMultiplier();
        this.tolerantTouchSlop = tolerantTouchSlop;
        this.strictTouchSlop = configuration.getScaledTouchSlop();
        this.gestureDetector = new LongPressGestureDetector(
                baseLongPressTimeoutMillis,
                tolerantTouchSlop,
                new LongPressGestureDetector.Callback() {
                    @Override
                    public boolean isLongPressAllowed() {
                        return service.isAccessibilityCaptureEnabled()
                                && rootTouchSource != null
                                && rootTouchSource.isReady()
                                
                                && !DragShareSuppression.isActive();
                    }

                    @Override
                    public long longPressTimeoutMillis(float downX, float downY) {
                        
                        
                        
                        return 0L;
                    }

                    @Override
                    public float gestureTouchSlopPx(float downX, float downY) {
                        if (VirtualDisplayRegionRegistry.regionAt(downX, downY) == null) {
                            return 0f; 
                        }
                        
                        
                        
                        return strictTouchSlop;
                    }

                    @Override
                    public void onLongPress(long gestureId, float stableX, float stableY) {
                        service.trace("gesture=" + gestureId + " long press point="
                                + Math.round(stableX) + "," + Math.round(stableY));
                        captureAt(gestureId, stableX, stableY, false);
                    }

                    @Override
                    public void onDrag(int action, float x, float y, long eventTime) {
                        controller.acceptPointerEvent(action, x, y, eventTime, "root");
                    }

                    @Override
                    public void onGestureCancelled(long gestureId) {
                        service.trace("gesture=" + gestureId + " cancelled");
                        screenshotter.cancelAll();
                        controller.cancelActiveSession();
                    }
                });
    }

    void onPointerEvent(int action, float x, float y, long eventTime) {
        LongPressGestureDetector.State before = gestureDetector.state();
        gestureDetector.onPointerEvent(action, x, y, eventTime);
        LongPressGestureDetector.State after = gestureDetector.state();
        if (action == MotionEvent.ACTION_DOWN) {
            service.trace("gesture=" + gestureDetector.currentGestureId()
                    + " pending=" + (after == LongPressGestureDetector.State.PENDING_LONG_PRESS));
        } else if (before == LongPressGestureDetector.State.PENDING_LONG_PRESS
                && after == LongPressGestureDetector.State.IGNORED_UNTIL_UP) {
            service.trace("gesture=" + gestureDetector.currentGestureId()
                    + " rejected movement point=" + Math.round(x) + "," + Math.round(y));
        }
    }

    void cancel() {
        gestureDetector.cancel();
        screenshotter.cancelAll();
        controller.cancelActiveSession();
    }

    private void captureAt(long gestureId, float stableX, float stableY, boolean retried) {
        try {
            classifierExecutor.execute(() -> {
                if (!gestureDetector.isCapturing(gestureId)) {
                    return;
                }
                AccessibilityCandidateSelector.Selection selection = service.selectCandidateAt(
                        stableX,
                        stableY,
                        gestureId);
                if (selection == null || selection.candidate == null) {
                    service.trace("gesture=" + gestureId + " candidate missing retry=" + !retried);
                    if (!retried) {
                        mainHandler.postDelayed(
                                () -> captureAt(gestureId, stableX, stableY, true),
                                50L);
                    } else {
                        mainHandler.post(() -> gestureDetector.captureFailed(gestureId));
                    }
                    return;
                }
                DragShareSettings settings = DragShareSettings.readLocal(service);
                if (!settings.isAccessibilityRuntimeEnabled()
                        || !settings.isSharingEnabled(selection.isImage())) {
                    service.trace("gesture=" + gestureId + " sharing disabled");
                    mainHandler.post(() -> gestureDetector.captureFailed(gestureId));
                    return;
                }
                AccessibilityCandidate candidate = selection.candidate;
                if (!selection.isImage()) {
                    service.trace("gesture=" + gestureId + " text captured");
                    CapturedContent content = CapturedContent.text(
                            candidate.text,
                            candidate.sourcePackage,
                            candidate.bounds);
                    mainHandler.post(() -> showCapturedContent(gestureId, content));
                    return;
                }
                screenshotter.capture(gestureId, candidate.bounds, new AccessibilityScreenshotter.Callback() {
                    @Override
                    public void onSuccess(long completedGestureId, Bitmap bitmap) {
                        service.trace("gesture=" + completedGestureId + " screenshot captured size="
                                + bitmap.getWidth() + "x" + bitmap.getHeight());
                        CapturedContent content = CapturedContent.image(
                                bitmap,
                                candidate.sourcePackage,
                                candidate.bounds,
                                true);
                        mainHandler.post(() -> showCapturedContent(completedGestureId, content));
                    }

                    @Override
                    public void onFailure(long completedGestureId, Throwable error) {
                        mainHandler.post(() -> {
                            DragShareLog.w(TAG, "gesture=" + completedGestureId
                                    + " image capture failed", error);
                            service.trace("gesture=" + completedGestureId
                                    + " screenshot failed=" + error.getClass().getSimpleName());
                            gestureDetector.captureFailed(completedGestureId);
                        });
                    }
                });
            });
        } catch (RuntimeException error) {
            DragShareLog.w(TAG, "gesture=" + gestureId + " classifier unavailable", error);
            mainHandler.post(() -> gestureDetector.captureFailed(gestureId));
        }
    }

    private void showCapturedContent(long gestureId, CapturedContent content) {
        if (content == null || !service.isAccessibilityCaptureEnabled()
                || !gestureDetector.beginDragging(gestureId)) {
            recycleIfOwned(content);
            return;
        }
        DragShareSettings settings = DragShareSettings.readLocal(service);
        controller.show(
                content,
                gestureDetector.latestX(),
                gestureDetector.latestY(),
                settings);
        
        
        
        controller.onRootDragSessionStarted();
        service.trace("gesture=" + gestureId + " controller show requested kind=" + content.kind);
        DragShareLog.i(TAG, "gesture=" + gestureId + " controller shown kind=" + content.kind);
    }

    private static void recycleIfOwned(CapturedContent content) {
        if (content != null && content.bitmapOwnedByDragShare && content.bitmap != null
                && !content.bitmap.isRecycled()) {
            content.bitmap.recycle();
        }
    }
}
