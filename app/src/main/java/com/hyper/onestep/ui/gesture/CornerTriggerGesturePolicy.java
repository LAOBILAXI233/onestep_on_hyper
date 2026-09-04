package com.hyper.onestep.ui.gesture;

public final class CornerTriggerGesturePolicy {
    private static final float MIN_DOWNWARD_DISTANCE_RATIO = 0.35f;
    private static final float MIN_INWARD_TO_DOWNWARD_RATIO = 0.25f;

    private CornerTriggerGesturePolicy() {
    }

    public static boolean matches(boolean left, float dx, float dy, int triggerDistance) {
        float distance = Math.max(1, triggerDistance);
        float inwardDistance = left ? dx : -dx;
        return inwardDistance > distance
                && dy > distance * MIN_DOWNWARD_DISTANCE_RATIO
                && inwardDistance > Math.abs(dy) * MIN_INWARD_TO_DOWNWARD_RATIO;
    }
}
