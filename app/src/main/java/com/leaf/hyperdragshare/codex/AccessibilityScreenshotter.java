package com.leaf.hyperdragshare.codex;

import android.accessibilityservice.AccessibilityService;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.hardware.HardwareBuffer;
import android.os.Build;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import android.view.WindowMetrics;

import androidx.annotation.RequiresApi;

import java.io.IOException;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

final class AccessibilityScreenshotter {
    interface Callback {
        void onSuccess(long gestureId, Bitmap bitmap);

        void onFailure(long gestureId, Throwable error);
    }

    private static final String TAG = "DragShare/Screenshot";
    private static final long TIMEOUT_MILLIS = 3_500L;

    private final AccessibilityService service;
    private final ExecutorService worker;
    private final ScheduledExecutorService timeoutExecutor;
    private final RootScreenshotter rootScreenshotter;
    private final Object lock = new Object();
    private long nextRequestId;
    private long activeRequestId;
    private boolean closed;

    AccessibilityScreenshotter(AccessibilityService service, ExecutorService worker) {
        this(service, worker, new RootScreenshotter());
    }

    AccessibilityScreenshotter(
            AccessibilityService service,
            ExecutorService worker,
            RootScreenshotter rootScreenshotter) {
        this.service = service;
        this.worker = worker == null ? Executors.newSingleThreadExecutor() : worker;
        this.rootScreenshotter = rootScreenshotter == null ? new RootScreenshotter() : rootScreenshotter;
        this.timeoutExecutor = Executors.newSingleThreadScheduledExecutor(runnable -> {
            Thread thread = new Thread(runnable, "drag-share-screenshot-timeout");
            thread.setDaemon(true);
            return thread;
        });
    }

    void capture(long gestureId, Rect sourceBounds, Callback callback) {
        if (sourceBounds == null || sourceBounds.width() <= 0 || sourceBounds.height() <= 0) {
            failImmediately(gestureId, callback, new IllegalArgumentException("Invalid capture bounds"));
            return;
        }
        final long requestId;
        synchronized (lock) {
            if (closed) {
                failImmediately(gestureId, callback, new IllegalStateException("Screenshotter is closed"));
                return;
            }
            if (activeRequestId != 0L) {
                failImmediately(gestureId, callback, new IllegalStateException("Screenshot already pending"));
                return;
            }
            requestId = ++nextRequestId;
            activeRequestId = requestId;
        }
        Rect requestedBounds = new Rect(sourceBounds);
        timeoutExecutor.schedule(
                () -> fail(requestId, gestureId, callback, new IOException("Screenshot timed out")),
                TIMEOUT_MILLIS,
                TimeUnit.MILLISECONDS);
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.R) {
            takeAccessibilityScreenshot(requestId, gestureId, requestedBounds, callback);
        } else {
            takeRootScreenshot(requestId, gestureId, requestedBounds, callback);
        }
    }

    void cancelAll() {
        synchronized (lock) {
            activeRequestId = 0L;
        }
    }

    void close() {
        synchronized (lock) {
            closed = true;
            activeRequestId = 0L;
        }
        timeoutExecutor.shutdownNow();
    }

    @RequiresApi(Build.VERSION_CODES.R)
    private void takeAccessibilityScreenshot(
            long requestId,
            long gestureId,
            Rect sourceBounds,
            Callback callback) {
        try {
            service.takeScreenshot(
                    Display.DEFAULT_DISPLAY,
                    worker,
                    new AccessibilityService.TakeScreenshotCallback() {
                        @Override
                        public void onSuccess(AccessibilityService.ScreenshotResult result) {
                            worker.execute(() -> handleAccessibilitySuccess(
                                    requestId,
                                    gestureId,
                                    sourceBounds,
                                    callback,
                                    result));
                        }

                        @Override
                        public void onFailure(int errorCode) {
                            if (errorCode
                                    == AccessibilityService.ERROR_TAKE_SCREENSHOT_INTERNAL_ERROR) {
                                takeRootScreenshot(requestId, gestureId, sourceBounds, callback);
                            } else {
                                fail(
                                        requestId,
                                        gestureId,
                                        callback,
                                        new IOException("Accessibility screenshot failed code="
                                                + errorCode));
                            }
                        }
                    });
        } catch (Throwable error) {
            fail(requestId, gestureId, callback, error);
        }
    }

    @RequiresApi(Build.VERSION_CODES.R)
    private void handleAccessibilitySuccess(
            long requestId,
            long gestureId,
            Rect sourceBounds,
            Callback callback,
            AccessibilityService.ScreenshotResult result) {
        HardwareBuffer buffer = result == null ? null : result.getHardwareBuffer();
        Bitmap full = null;
        try {
            if (buffer == null) {
                throw new IOException("Accessibility screenshot returned no buffer");
            }
            full = Bitmap.wrapHardwareBuffer(buffer, result.getColorSpace());
            if (full == null) {
                throw new IOException("Unable to wrap screenshot buffer");
            }
            Bitmap cropped = crop(full, sourceBounds);
            if (cropped == null) {
                throw new IOException("Screenshot region is outside the display");
            }
            deliver(requestId, gestureId, callback, cropped);
        } catch (Throwable error) {
            fail(requestId, gestureId, callback, error);
        } finally {
            if (full != null && !full.isRecycled()) {
                full.recycle();
            }
            if (buffer != null) {
                buffer.close();
            }
        }
    }

    private void takeRootScreenshot(
            long requestId,
            long gestureId,
            Rect sourceBounds,
            Callback callback) {
        worker.execute(() -> {
            Bitmap full = null;
            try {
                full = rootScreenshotter.capture();
                Bitmap cropped = crop(full, sourceBounds);
                if (cropped == null) {
                    throw new IOException("Screenshot region is outside the display");
                }
                deliver(requestId, gestureId, callback, cropped);
            } catch (Throwable error) {
                fail(requestId, gestureId, callback, error);
            } finally {
                if (full != null && !full.isRecycled()) {
                    full.recycle();
                }
            }
        });
    }

    private Bitmap crop(Bitmap full, Rect sourceBounds) {
        int[] displaySize = displaySize();
        int edge = Math.max(1, Math.round(service.getResources().getDisplayMetrics().density));
        Rect mapped = ScreenshotRectMapper.mapAndExpand(
                sourceBounds,
                displaySize[0],
                displaySize[1],
                full.getWidth(),
                full.getHeight(),
                edge);
        if (mapped == null) {
            return null;
        }
        Bitmap region = Bitmap.createBitmap(
                full,
                mapped.left,
                mapped.top,
                mapped.width(),
                mapped.height());
        Bitmap software = region.copy(Bitmap.Config.ARGB_8888, false);
        if (region != full && !region.isRecycled()) {
            region.recycle();
        }
        return software;
    }

    private int[] displaySize() {
        try {
            WindowManager windowManager = (WindowManager) service.getSystemService(
                    android.content.Context.WINDOW_SERVICE);
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.R && windowManager != null) {
                WindowMetrics metrics = windowManager.getMaximumWindowMetrics();
                return new int[]{metrics.getBounds().width(), metrics.getBounds().height()};
            }
        } catch (Throwable ignored) {
            
        }
        DisplayMetrics metrics = service.getResources().getDisplayMetrics();
        return new int[]{metrics.widthPixels, metrics.heightPixels};
    }

    private void deliver(long requestId, long gestureId, Callback callback, Bitmap bitmap) {
        if (!complete(requestId)) {
            if (bitmap != null && !bitmap.isRecycled()) {
                bitmap.recycle();
            }
            return;
        }
        if (callback != null) {
            callback.onSuccess(gestureId, bitmap);
        } else if (bitmap != null && !bitmap.isRecycled()) {
            bitmap.recycle();
        }
    }

    private void fail(long requestId, long gestureId, Callback callback, Throwable error) {
        if (!complete(requestId)) {
            return;
        }
        DragShareLog.w(TAG, "screenshot request failed", error);
        if (callback != null) {
            callback.onFailure(gestureId, error);
        }
    }

    private void failImmediately(long gestureId, Callback callback, Throwable error) {
        if (callback != null) {
            callback.onFailure(gestureId, error);
        }
    }

    private boolean complete(long requestId) {
        synchronized (lock) {
            if (closed || activeRequestId != requestId) {
                return false;
            }
            activeRequestId = 0L;
            return true;
        }
    }
}
