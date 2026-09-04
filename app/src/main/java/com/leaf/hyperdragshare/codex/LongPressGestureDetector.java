package com.leaf.hyperdragshare.codex;

import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.view.MotionEvent;

final class LongPressGestureDetector {
    enum State {
        IDLE,
        PENDING_LONG_PRESS,
        CAPTURING_CONTENT,
        DRAGGING,
        IGNORED_UNTIL_UP
    }

    interface Callback {
        boolean isLongPressAllowed();

        long longPressTimeoutMillis(float downX, float downY);

        float gestureTouchSlopPx(float downX, float downY);

        void onLongPress(long gestureId, float stableX, float stableY);

        void onDrag(int action, float x, float y, long eventTime);

        void onGestureCancelled(long gestureId);
    }

    interface Clock {
        long now();
    }

    interface Scheduler {
        void postDelayed(Runnable runnable, long delayMillis);

        void removeCallbacks(Runnable runnable);
    }

    private final Callback callback;
    private final Clock clock;
    private final Scheduler scheduler;
    private final long timeoutMillis;
    private final float touchSlop;
    private final Runnable timeoutRunnable = this::onTimeout;

    private State state = State.IDLE;
    private long gestureId;
    private float downX;
    private float downY;
    private float latestX;
    private float latestY;
    private float effectiveSlop;

    LongPressGestureDetector(
            long timeoutMillis,
            float touchSlop,
            Callback callback) {
        this(
                timeoutMillis,
                touchSlop,
                callback,
                SystemClock::uptimeMillis,
                new HandlerScheduler(new Handler(Looper.getMainLooper())));
    }

    LongPressGestureDetector(
            long timeoutMillis,
            float touchSlop,
            Callback callback,
            Clock clock,
            Scheduler scheduler) {
        this.timeoutMillis = Math.max(1L, timeoutMillis);
        this.touchSlop = Math.max(0f, touchSlop);
        this.callback = callback;
        this.clock = clock == null ? SystemClock::uptimeMillis : clock;
        this.scheduler = scheduler == null
                ? new HandlerScheduler(new Handler(Looper.getMainLooper()))
                : scheduler;
    }

    synchronized void onPointerEvent(int action, float x, float y, long eventTime) {
        if (!Float.isFinite(x) || !Float.isFinite(y)) {
            return;
        }
        switch (action) {
            case MotionEvent.ACTION_DOWN:
                cancelCurrentLocked();
                gestureId++;
                downX = x;
                downY = y;
                latestX = x;
                latestY = y;
                if (callback != null && callback.isLongPressAllowed()) {
                    long effectiveTimeout = callback.longPressTimeoutMillis(downX, downY);
                    if (effectiveTimeout <= 0) {
                        effectiveTimeout = timeoutMillis;
                    }
                    effectiveSlop = callback.gestureTouchSlopPx(downX, downY);
                    if (effectiveSlop <= 0f) {
                        effectiveSlop = touchSlop;
                    }
                    state = State.PENDING_LONG_PRESS;
                    scheduler.postDelayed(timeoutRunnable, effectiveTimeout);
                } else {
                    state = State.IGNORED_UNTIL_UP;
                }
                return;
            case MotionEvent.ACTION_MOVE:
                latestX = x;
                latestY = y;
                if (state == State.PENDING_LONG_PRESS
                        && distanceSquared(x, y, downX, downY) > effectiveSlop * effectiveSlop) {
                    scheduler.removeCallbacks(timeoutRunnable);
                    state = State.IGNORED_UNTIL_UP;
                } else if (state == State.DRAGGING && callback != null) {
                    callback.onDrag(action, x, y, eventTime);
                }
                return;
            case MotionEvent.ACTION_UP:
                latestX = x;
                latestY = y;
                if (state == State.DRAGGING && callback != null) {
                    callback.onDrag(action, x, y, eventTime);
                } else if (state == State.PENDING_LONG_PRESS || state == State.CAPTURING_CONTENT) {
                    notifyCancelledLocked();
                }
                scheduler.removeCallbacks(timeoutRunnable);
                state = State.IDLE;
                return;
            case MotionEvent.ACTION_CANCEL:
                latestX = x;
                latestY = y;
                if (state != State.IDLE) {
                    notifyCancelledLocked();
                }
                scheduler.removeCallbacks(timeoutRunnable);
                state = State.IDLE;
                return;
            default:
                return;
        }
    }

    synchronized boolean beginDragging(long completedGestureId) {
        if (state != State.CAPTURING_CONTENT || completedGestureId != gestureId) {
            return false;
        }
        state = State.DRAGGING;
        return true;
    }

    synchronized void captureFailed(long completedGestureId) {
        if (state == State.CAPTURING_CONTENT && completedGestureId == gestureId) {
            state = State.IGNORED_UNTIL_UP;
        }
    }

    synchronized void cancel() {
        if (state != State.IDLE) {
            notifyCancelledLocked();
        }
        scheduler.removeCallbacks(timeoutRunnable);
        state = State.IDLE;
    }

    synchronized State state() {
        return state;
    }

    synchronized long currentGestureId() {
        return gestureId;
    }

    synchronized boolean isCapturing(long expectedGestureId) {
        return state == State.CAPTURING_CONTENT && gestureId == expectedGestureId;
    }

    synchronized float latestX() {
        return latestX;
    }

    synchronized float latestY() {
        return latestY;
    }

    private synchronized void onTimeout() {
        if (state != State.PENDING_LONG_PRESS) {
            return;
        }
        if (callback == null || !callback.isLongPressAllowed()) {
            state = State.IGNORED_UNTIL_UP;
            return;
        }
        state = State.CAPTURING_CONTENT;
        callback.onLongPress(gestureId, latestX, latestY);
    }

    private void cancelCurrentLocked() {
        if (state != State.IDLE) {
            notifyCancelledLocked();
        }
        scheduler.removeCallbacks(timeoutRunnable);
        state = State.IDLE;
    }

    private void notifyCancelledLocked() {
        if (callback != null) {
            callback.onGestureCancelled(gestureId);
        }
    }

    private static float distanceSquared(float x1, float y1, float x2, float y2) {
        float dx = x1 - x2;
        float dy = y1 - y2;
        return dx * dx + dy * dy;
    }

    private static final class HandlerScheduler implements Scheduler {
        private final Handler handler;

        HandlerScheduler(Handler handler) {
            this.handler = handler;
        }

        @Override
        public void postDelayed(Runnable runnable, long delayMillis) {
            handler.postDelayed(runnable, delayMillis);
        }

        @Override
        public void removeCallbacks(Runnable runnable) {
            handler.removeCallbacks(runnable);
        }
    }
}
