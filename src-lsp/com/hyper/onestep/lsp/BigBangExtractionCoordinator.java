package com.hyper.onestep.lsp;
import android.app.ActivityOptions;
import android.app.KeyguardManager;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.view.Display;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
/** Coordinates one page-tree, screenshot, and OCR extraction session at a time. */
final class BigBangExtractionCoordinator {
    private static final long CONTENT_TIMEOUT_MS = 1800L;
    private static final long OCR_TIMEOUT_MS = 5000L;
    private static final long SESSION_TIMEOUT_MS = 5500L;
    private static final int MAX_OCR_PIXELS = 2_000_000;
    private static final int MAX_OCR_EDGE_PX = 2048;
    private static final AtomicLong NEXT_SESSION_ID = new AtomicLong();
    private static final AtomicReference<Session> ACTIVE_SESSION = new AtomicReference<>();
    private static final Object SESSION_HANDOFF_LOCK = new Object();
    private static final ScheduledThreadPoolExecutor EXECUTOR = createExecutor();
    private BigBangExtractionCoordinator() {}
    // 提交一次页面树抓取、截屏与OCR提取的会话并取消前序会话
    static boolean submit(Context context, ClassLoader systemServerClassLoader,
            String foregroundPackage, int touchX, int touchY) {
        if (context == null || systemServerClassLoader == null
                || foregroundPackage == null || foregroundPackage.trim().isEmpty()) {
            return false;
        }
        Context applicationContext = context.getApplicationContext();
        Session session = new Session(applicationContext == null ? context : applicationContext,
                systemServerClassLoader, foregroundPackage.trim(), touchX, touchY,
                NEXT_SESSION_ID.incrementAndGet());
        Session previous;
        synchronized (SESSION_HANDOFF_LOCK) {
            previous = ACTIVE_SESSION.getAndSet(session);
        }
        if (previous != null) previous.cancel("superseded");
        try {
            session.start();
            return true;
        } catch (Throwable error) {
            session.cancel("start-failed");
            ACTIVE_SESSION.compareAndSet(session, null);
            LSPLogger.e("BigBangExtractionCoordinator: session start failed", error);
            return false;
        }
    }
    private static ScheduledThreadPoolExecutor createExecutor() {
        ScheduledThreadPoolExecutor executor = new ScheduledThreadPoolExecutor(3,
                new ThreadFactory() {
                    private int mThreadNumber;
                    @Override
                    public synchronized Thread newThread(Runnable runnable) {
                        Thread thread = new Thread(runnable,
                                "OneStep-BigBang-" + (++mThreadNumber));
                        thread.setDaemon(true);
                        return thread;
                    }
                });
        executor.setRemoveOnCancelPolicy(true);
        executor.setExecuteExistingDelayedTasksAfterShutdownPolicy(false);
        return executor;
    }
    private static final class Session {
        private final Object mLock = new Object();
        private final Context mContext;
        private final ClassLoader mSystemServerClassLoader;
        private final String mForegroundPackage;
        private final int mTouchX;
        private final int mTouchY;
        private final long mSessionId;
        private boolean mFinished;
        private volatile boolean mCancelled;
        private boolean mXmlDone;
        private boolean mScreenshotDone;
        private boolean mOcrDone;
        private ContentTreeParser.Result mTree = ContentTreeParser.Result.empty();
        private String mOcrText = "";
        private Bitmap mScreenshot;
        private Bitmap mOcrBitmap;
        private ContentCatcherClient.Request mContentRequest;
        private AicrOcrClient.Request mOcrRequest;
        private ScheduledFuture<?> mDeadline;
        private Future<?> mScreenshotFuture;
        Session(Context context, ClassLoader systemServerClassLoader, String foregroundPackage,
                int touchX, int touchY, long sessionId) {
            mContext = context;
            mSystemServerClassLoader = systemServerClassLoader;
            mForegroundPackage = foregroundPackage;
            mTouchX = touchX;
            mTouchY = touchY;
            mSessionId = sessionId;
        }
        void start() {
            mDeadline = EXECUTOR.schedule(new Runnable() {
                @Override
                public void run() {
                    LSPLogger.w("BigBangExtractionCoordinator: session=" + mSessionId
                            + " reached deadline");
                    maybeComplete(true);
                }
            }, SESSION_TIMEOUT_MS, TimeUnit.MILLISECONDS);
            startContentCapture();
            try {
                Future<?> future = EXECUTOR.submit(new Runnable() {
                    @Override
                    public void run() {
                        synchronized (mLock) {
                            if (mFinished) return;
                        }
                        captureScreenshot();
                    }
                });
                boolean cancel;
                synchronized (mLock) {
                    mScreenshotFuture = future;
                    cancel = mFinished;
                }
                if (cancel) future.cancel(false);
            } catch (RejectedExecutionException error) {
                onScreenshotReady(null);
                LSPLogger.w("BigBangExtractionCoordinator: screenshot dispatch rejected", error);
            }
            LSPLogger.i("BigBangExtractionCoordinator: submitted session=" + mSessionId
                    + " package=" + mForegroundPackage + " touch=" + mTouchX + "," + mTouchY);
        }
        private void startContentCapture() {
            ContentCatcherClient.Request request = ContentCatcherClient.capture(
                    mContext, mForegroundPackage, CONTENT_TIMEOUT_MS, EXECUTOR,
                    new ContentCatcherClient.Callback() {
                        @Override
                        public void onSuccess(String xml) {
                            ContentTreeParser.Result parsed = ContentTreeParser.parse(
                                    xml, mTouchX, mTouchY);
                            synchronized (mLock) {
                                if (mFinished) return;
                                mTree = parsed;
                                mXmlDone = true;
                            }
                            LSPLogger.i("BigBangExtractionCoordinator: session=" + mSessionId
                                    + " tree textChars=" + parsed.text.length()
                                    + " touchIndex=" + parsed.touchIndex
                                    + " image=" + (parsed.imageBounds != null));
                            maybeComplete(false);
                        }
                        @Override
                        public void onError(String stage, Throwable error) {
                            synchronized (mLock) {
                                if (mFinished) return;
                                mXmlDone = true;
                            }
                            LSPLogger.w("BigBangExtractionCoordinator: session=" + mSessionId
                                    + " tree failed stage=" + stage, error);
                            maybeComplete(false);
                        }
                    });
            boolean cancel;
            synchronized (mLock) {
                mContentRequest = request;
                cancel = mFinished;
            }
            if (cancel) request.cancel();
        }
        private void captureScreenshot() {
            Bitmap screenshot = ScreenCaptureCompat.captureDefaultDisplay(
                    mSystemServerClassLoader);
            onScreenshotReady(screenshot);
        }
        private void onScreenshotReady(Bitmap screenshot) {
            boolean shouldStartOcr;
            synchronized (mLock) {
                if (mFinished) {
                    recycle(screenshot);
                    return;
                }
                mScreenshot = screenshot;
                mScreenshotDone = true;
                shouldStartOcr = screenshot != null && (!mXmlDone || !mTree.hasText());
                if (screenshot == null || !shouldStartOcr) mOcrDone = true;
            }
            if (shouldStartOcr) {
                Bitmap ocrBitmap = createOcrBitmap(screenshot);
                if (ocrBitmap == null) {
                    synchronized (mLock) {
                        if (!mFinished) mOcrDone = true;
                    }
                    LSPLogger.w("BigBangExtractionCoordinator: OCR bitmap unavailable");
                } else {
                    startOcr(ocrBitmap);
                }
            }
            maybeComplete(false);
        }
        private void startOcr(final Bitmap ocrBitmap) {
            synchronized (mLock) {
                if (mFinished || (mXmlDone && mTree.hasText())) {
                    recycle(ocrBitmap);
                    mOcrDone = true;
                    return;
                }
                mOcrBitmap = ocrBitmap;
            }
            final AicrOcrClient.Request request;
            try {
                request = AicrOcrClient.recognize(mContext, ocrBitmap, OCR_TIMEOUT_MS, EXECUTOR,
                        new AicrOcrClient.Callback() {
                            @Override
                            public void onSuccess(String text) {
                                onOcrTerminal(text, null, null);
                            }
                            @Override
                            public void onError(String stage, Throwable error) {
                                onOcrTerminal("", stage, error);
                            }
                        });
            } catch (Throwable error) {
                onOcrTerminal("", "start", error);
                return;
            }
            boolean cancel;
            synchronized (mLock) {
                mOcrRequest = request;
                cancel = mFinished || (mXmlDone && mTree.hasText());
            }
            if (cancel) request.cancel();
        }
        private void onOcrTerminal(String text, String errorStage, Throwable error) {
            Bitmap ownedBitmap;
            synchronized (mLock) {
                ownedBitmap = mOcrBitmap;
                mOcrBitmap = null;
                mOcrRequest = null;
                if (!mFinished) {
                    mOcrText = sanitizeText(text);
                    mOcrDone = true;
                }
            }
            recycle(ownedBitmap);
            if (errorStage != null && !(error instanceof java.util.concurrent.CancellationException)) {
                LSPLogger.w("BigBangExtractionCoordinator: session=" + mSessionId
                        + " OCR failed stage=" + errorStage, error);
            }
            maybeComplete(false);
        }
        private void maybeComplete(boolean deadlineReached) {
            Completion completion = null;
            synchronized (mLock) {
                if (mFinished) return;
                boolean structuredTextReady = mXmlDone && mTree.hasText();
                if (!deadlineReached) {
                    if (!mXmlDone) return;
                    if (structuredTextReady) {
                        if ((mTree.imageBounds != null || mTree.touchIndex < 0)
                                && !mScreenshotDone) {
                            return;
                        }
                    } else if (!mScreenshotDone || !mOcrDone) {
                        return;
                    }
                }
                String text = structuredTextReady ? mTree.text : mOcrText;
                int touchIndex = structuredTextReady ? mTree.touchIndex : -1;
                boolean touchedImage = mTree.imageBounds != null;
                boolean fallbackImage = !touchedImage && mTree.touchIndex < 0;
                boolean includeImage = mScreenshot != null
                        && (touchedImage || fallbackImage);
                mFinished = true;
                completion = new Completion(text, touchIndex,
                        touchedImage ? mTree.imageBounds : null,
                        includeImage ? mScreenshot : null);
                if (completion.screenshot == mScreenshot) mScreenshot = null;
            }
            processCompletion(completion);
        }
        private void processCompletion(Completion completion) {
            cancelOutstandingRequests();
            Uri imageUri = null;
            if (completion.screenshot != null) {
                try {
                    imageUri = BigBangImageStore.write(mContext, completion.screenshot,
                            completion.imageBounds, mTouchX, mTouchY);
                } finally {
                    recycle(completion.screenshot);
                }
            }
            boolean hasText = !completion.text.trim().isEmpty();
            if (hasText || imageUri != null) {
                synchronized (SESSION_HANDOFF_LOCK) {
                    if (!mCancelled && !isKeyguardLocked(mContext)
                            && ACTIVE_SESSION.compareAndSet(this, null)) {
                        Intent intent = TextBoomContract.createIntent(completion.text, imageUri,
                                completion.touchIndex, mTouchX, mTouchY);
                        ActivityOptions options = ActivityOptions.makeBasic();
                        options.setLaunchDisplayId(Display.DEFAULT_DISPLAY);
                        try {
                            mContext.startActivity(intent, options.toBundle());
                            LSPLogger.i("BigBangExtractionCoordinator: launched session="
                                    + mSessionId + " textChars=" + completion.text.length()
                                    + " image=" + (imageUri != null));
                        } catch (Throwable error) {
                            LSPLogger.e("BigBangExtractionCoordinator: Activity launch failed",
                                    error);
                        }
                    }
                }
            } else {
                LSPLogger.w("BigBangExtractionCoordinator: session=" + mSessionId
                        + " produced no content");
            }
            recycleDetachedScreenshot();
            ACTIVE_SESSION.compareAndSet(this, null);
        }
        void cancel(String reason) {
            Bitmap screenshot;
            synchronized (mLock) {
                if (mCancelled) return;
                mCancelled = true;
                mFinished = true;
                screenshot = mScreenshot;
                mScreenshot = null;
            }
            recycle(screenshot);
            cancelOutstandingRequests();
            ACTIVE_SESSION.compareAndSet(this, null);
            LSPLogger.i("BigBangExtractionCoordinator: cancelled session=" + mSessionId
                    + " reason=" + reason);
        }
        private void cancelOutstandingRequests() {
            ScheduledFuture<?> deadline;
            Future<?> screenshotFuture;
            ContentCatcherClient.Request contentRequest;
            AicrOcrClient.Request ocrRequest;
            synchronized (mLock) {
                deadline = mDeadline;
                mDeadline = null;
                screenshotFuture = mScreenshotFuture;
                mScreenshotFuture = null;
                contentRequest = mContentRequest;
                mContentRequest = null;
                ocrRequest = mOcrRequest;
                mOcrRequest = null;
            }
            if (deadline != null) deadline.cancel(false);
            if (screenshotFuture != null) screenshotFuture.cancel(false);
            if (contentRequest != null && !contentRequest.isDone()) contentRequest.cancel();
            if (ocrRequest != null && !ocrRequest.isDone()) ocrRequest.cancel();
        }
        private void recycleDetachedScreenshot() {
            Bitmap screenshot;
            synchronized (mLock) {
                screenshot = mScreenshot;
                mScreenshot = null;
            }
            recycle(screenshot);
        }
    }
    private static Bitmap createOcrBitmap(Bitmap screenshot) {
        if (screenshot == null || screenshot.isRecycled()) return null;
        int width = screenshot.getWidth();
        int height = screenshot.getHeight();
        long pixels = (long) width * height;
        float scale = Math.min(1f, Math.min(
                (float) MAX_OCR_EDGE_PX / Math.max(width, height),
                (float) Math.sqrt(MAX_OCR_PIXELS / (double) Math.max(1L, pixels))));
        try {
            if (scale < 0.999f) {
                return Bitmap.createScaledBitmap(screenshot,
                        Math.max(1, Math.round(width * scale)),
                        Math.max(1, Math.round(height * scale)), true);
            }
            return screenshot.copy(Bitmap.Config.ARGB_8888, false);
        } catch (Throwable error) {
            LSPLogger.e("BigBangExtractionCoordinator: OCR bitmap scaling failed", error);
            return null;
        }
    }
    private static String sanitizeText(String text) {
        if (text == null) return "";
        String trimmed = text.trim();
        if (trimmed.length() <= 40_000) return trimmed;
        int end = 40_000;
        if (Character.isHighSurrogate(trimmed.charAt(end - 1))) end--;
        return trimmed.substring(0, end);
    }
    private static boolean isKeyguardLocked(Context context) {
        try {
            KeyguardManager keyguardManager = (KeyguardManager) context.getSystemService(
                    Context.KEYGUARD_SERVICE);
            return keyguardManager != null && keyguardManager.isKeyguardLocked();
        } catch (Throwable error) {
            LSPLogger.w("BigBangExtractionCoordinator: keyguard check failed", error);
            return true;
        }
    }
    private static void recycle(Bitmap bitmap) {
        if (bitmap == null || bitmap.isRecycled()) return;
        try {
            bitmap.recycle();
        } catch (Throwable ignored) {
        }
    }
    private static final class Completion {
        final String text;
        final int touchIndex;
        final ContentTreeParser.Bounds imageBounds;
        final Bitmap screenshot;
        Completion(String text, int touchIndex, ContentTreeParser.Bounds imageBounds,
                Bitmap screenshot) {
            this.text = text == null ? "" : text;
            this.touchIndex = touchIndex;
            this.imageBounds = imageBounds;
            this.screenshot = screenshot;
        }
    }
}
