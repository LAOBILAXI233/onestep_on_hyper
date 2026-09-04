package com.leaf.hyperdragshare.codex;

import android.view.MotionEvent;

final class EvdevTouchParser {
    interface Listener {
        void onFrame(int action, float rawX, float rawY);
    }

    static final int EV_SYN = 0;
    static final int EV_KEY = 1;
    static final int EV_ABS = 3;
    static final int SYN_REPORT = 0;
    static final int BTN_TOUCH = 330;
    static final int ABS_MT_SLOT = 47;
    static final int ABS_MT_POSITION_X = 53;
    static final int ABS_MT_POSITION_Y = 54;
    static final int ABS_MT_TRACKING_ID = 57;

    private static final int MAX_SLOTS = 16;

    private final Listener listener;
    private final float[] slotX = new float[MAX_SLOTS];
    private final float[] slotY = new float[MAX_SLOTS];
    private final int[] trackingId = new int[MAX_SLOTS];

    private int currentSlot;
    private int primarySlot = -1;
    private boolean gestureActive;
    private boolean buttonTouchSeen;
    private boolean buttonTouchDown;
    private boolean buttonDownEdge;
    private boolean sawTrackingStart;
    private boolean primaryLifted;
    private boolean multiTouchDetected;
    private boolean frameChanged;
    private boolean ignoreUntilAllPointersUp;
    private float lastX = Float.NaN;
    private float lastY = Float.NaN;

    EvdevTouchParser(Listener listener) {
        this.listener = listener;
        resetSlots();
    }

    void consume(int type, int code, int value) {
        if (type == EV_ABS) {
            consumeAbsolute(code, value);
        } else if (type == EV_KEY && code == BTN_TOUCH) {
            buttonTouchSeen = true;
            if (value != 0 && !buttonTouchDown) {
                buttonDownEdge = true;
                clearCoordinates();
            }
            buttonTouchDown = value != 0;
            frameChanged = true;
        } else if (type == EV_SYN && code == SYN_REPORT) {
            emitFrame();
        }
    }

    void cancel() {
        if (gestureActive && Float.isFinite(lastX) && Float.isFinite(lastY)) {
            listener.onFrame(MotionEvent.ACTION_CANCEL, lastX, lastY);
        }
        resetGesture();
        ignoreUntilAllPointersUp = false;
        resetSlots();
    }

    private void consumeAbsolute(int code, int value) {
        if (code == ABS_MT_SLOT) {
            currentSlot = Math.max(0, Math.min(MAX_SLOTS - 1, value));
            return;
        }
        if (code == ABS_MT_TRACKING_ID) {
            if (value < 0) {
                if (currentSlot == primarySlot) {
                    primaryLifted = true;
                }
                trackingId[currentSlot] = -1;
            } else {
                if (gestureActive && currentSlot != primarySlot) {
                    multiTouchDetected = true;
                }
                trackingId[currentSlot] = value;
                slotX[currentSlot] = Float.NaN;
                slotY[currentSlot] = Float.NaN;
                sawTrackingStart = true;
            }
            frameChanged = true;
            return;
        }
        if (code == ABS_MT_POSITION_X) {
            slotX[currentSlot] = value;
            frameChanged = true;
        } else if (code == ABS_MT_POSITION_Y) {
            slotY[currentSlot] = value;
            frameChanged = true;
        }
    }

    private void emitFrame() {
        if (!frameChanged) {
            return;
        }
        int trackedCount = trackedPointerCount();
        if (ignoreUntilAllPointersUp) {
            if (trackedCount == 0 && (!buttonTouchSeen || !buttonTouchDown)) {
                ignoreUntilAllPointersUp = false;
                clearGestureSignals();
            }
            finishFrame();
            return;
        }

        int candidate = firstTrackedSlotWithCoordinates();
        if (candidate < 0 && buttonTouchSeen && buttonTouchDown) {
            candidate = firstSlotWithCoordinates();
        }

        if (!gestureActive) {
            if (trackedCount > 1) {
                ignoreUntilAllPointersUp = true;
            } else if (candidate >= 0 && (sawTrackingStart || buttonDownEdge)) {
                primarySlot = candidate;
                gestureActive = true;
                setLast(candidate);
                listener.onFrame(MotionEvent.ACTION_DOWN, lastX, lastY);
            }
            finishFrame();
            return;
        }

        if (trackedCount > 1 || multiTouchDetected) {
            
            
            
            boolean primaryTrackedNow = primarySlot >= 0 && trackingId[primarySlot] >= 0;
            boolean buttonReleased = buttonTouchSeen && !buttonTouchDown;
            if (!primaryTrackedNow || primaryLifted || buttonReleased) {
                emitUp();
                if (trackedCount > 0 || (buttonTouchSeen && buttonTouchDown)) {
                    ignoreUntilAllPointersUp = true;
                }
                finishFrame();
                return;
            }
            if (hasCoordinates(primarySlot)) {
                float nextX = slotX[primarySlot];
                float nextY = slotY[primarySlot];
                if (nextX != lastX || nextY != lastY) {
                    lastX = nextX;
                    lastY = nextY;
                    listener.onFrame(MotionEvent.ACTION_MOVE, lastX, lastY);
                }
            }
            finishFrame();
            return;
        }

        boolean primaryTracked = primarySlot >= 0 && trackingId[primarySlot] >= 0;
        boolean buttonReleased = buttonTouchSeen && !buttonTouchDown;
        if (!primaryTracked || primaryLifted || buttonReleased) {
            emitUp();
            if (trackedCount > 0 || (buttonTouchSeen && buttonTouchDown)) {
                ignoreUntilAllPointersUp = true;
            }
            finishFrame();
            return;
        }

        if (hasCoordinates(primarySlot)) {
            float nextX = slotX[primarySlot];
            float nextY = slotY[primarySlot];
            if (nextX != lastX || nextY != lastY) {
                lastX = nextX;
                lastY = nextY;
                listener.onFrame(MotionEvent.ACTION_MOVE, lastX, lastY);
            }
        }
        finishFrame();
    }

    private void emitUp() {
        if (gestureActive && Float.isFinite(lastX) && Float.isFinite(lastY)) {
            listener.onFrame(MotionEvent.ACTION_UP, lastX, lastY);
        }
        resetGesture();
    }

    private void setLast(int slot) {
        lastX = slotX[slot];
        lastY = slotY[slot];
    }

    private int trackedPointerCount() {
        int count = 0;
        for (int id : trackingId) {
            if (id >= 0) {
                count++;
            }
        }
        return count;
    }

    private int firstTrackedSlotWithCoordinates() {
        for (int index = 0; index < MAX_SLOTS; index++) {
            if (trackingId[index] >= 0 && hasCoordinates(index)) {
                return index;
            }
        }
        return -1;
    }

    private int firstSlotWithCoordinates() {
        for (int index = 0; index < MAX_SLOTS; index++) {
            if (hasCoordinates(index)) {
                return index;
            }
        }
        return -1;
    }

    private boolean hasCoordinates(int slot) {
        return slot >= 0 && slot < MAX_SLOTS
                && Float.isFinite(slotX[slot]) && Float.isFinite(slotY[slot]);
    }

    private void finishFrame() {
        frameChanged = false;
        primaryLifted = false;
        multiTouchDetected = false;
        buttonDownEdge = false;
        if (!gestureActive && !ignoreUntilAllPointersUp) {
            sawTrackingStart = false;
        }
    }

    private void clearGestureSignals() {
        sawTrackingStart = false;
        buttonDownEdge = false;
        primaryLifted = false;
        multiTouchDetected = false;
    }

    private void resetGesture() {
        gestureActive = false;
        primarySlot = -1;
        primaryLifted = false;
        lastX = Float.NaN;
        lastY = Float.NaN;
    }

    private void clearCoordinates() {
        for (int index = 0; index < MAX_SLOTS; index++) {
            slotX[index] = Float.NaN;
            slotY[index] = Float.NaN;
        }
    }

    private void resetSlots() {
        for (int index = 0; index < MAX_SLOTS; index++) {
            trackingId[index] = -1;
            slotX[index] = Float.NaN;
            slotY[index] = Float.NaN;
        }
        currentSlot = 0;
        buttonTouchSeen = false;
        buttonTouchDown = false;
        frameChanged = false;
        clearGestureSignals();
    }
}
