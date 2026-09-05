package com.hyper.onestep.ui.gesture;

public final class SideSlotGesturePolicy {
    public enum Direction { PENDING, SHELVE, DISMISS, CANCELLED }

    private Direction direction = Direction.PENDING;

    public void reset() {
        direction = Direction.PENDING;
    }

    public void resumeShelving() {
        direction = Direction.SHELVE;
    }

    public void cancel() {
        direction = Direction.CANCELLED;
    }

    public Direction direction() {
        return direction;
    }

    public Direction move(float dx, float dy, float slop, boolean vertical, int outward) {
        if (direction != Direction.PENDING) {
            return direction;
        }
        float x = Math.abs(dx);
        float y = Math.abs(dy);
        if (Math.max(x, y) < slop) {
            return direction;
        }
        if (-dy >= slop && y > x * 1.35f) {
            direction = Direction.SHELVE;
        } else if (vertical ? dy >= slop && y > x * 1.35f
                : dx * outward >= slop && x > y * 1.35f) {
            direction = Direction.DISMISS;
        } else if (Math.max(x, y) >= slop * 3f) {
            direction = Direction.CANCELLED;
        }
        return direction;
    }

    public static boolean shouldShelve(float upwardDistance, float upwardVelocity,
                                      float distanceThreshold, float flingVelocity) {
        return upwardDistance >= distanceThreshold
                || upwardDistance >= distanceThreshold * 0.4f
                && upwardVelocity >= flingVelocity;
    }

    public static float dragScale(float upwardDistance, float height) {
        float progress = Math.max(0f, upwardDistance) / Math.max(1f, height);
        return 1f - 0.62f * (1f - (float) Math.exp(-progress * 2f));
    }
}
