package com.leaf.hyperdragshare.codex;

final class GestureMath {
    private static final float EDGE_SCROLL_ENTRY_SPEED_MULTIPLIER = 0.2f;

    private GestureMath() {}

    static boolean shouldShowMenu(float pointerY, int triggerTop) {
        return pointerY >= triggerTop;
    }

    static boolean hasMovedTowardMenu(
            int menuPosition,
            float startX,
            float startY,
            float pointerX,
            float pointerY,
            float minimumDistance) {
        float distance = Math.max(0f, minimumDistance);
        switch (menuPosition) {
            case DragShareSettings.SIMPLE_MENU_POSITION_TOP:
                return startY - pointerY >= distance;
            case DragShareSettings.SIMPLE_MENU_POSITION_LEFT:
                return startX - pointerX >= distance;
            case DragShareSettings.SIMPLE_MENU_POSITION_RIGHT:
                return pointerX - startX >= distance;
            case DragShareSettings.SIMPLE_MENU_POSITION_BOTTOM:
            default:
                return pointerY - startY >= distance;
        }
    }

    static int edgeScrollDirection(float pointerX, int viewportWidth, int edgeWidth) {
        if (viewportWidth <= 0 || edgeWidth <= 0) {
            return 0;
        }
        if (pointerX <= edgeWidth) {
            return -1;
        }
        if (pointerX >= viewportWidth - edgeWidth) {
            return 1;
        }
        return 0;
    }

    static float edgeScrollSpeedMultiplier(
            float pointerCoordinate,
            int viewportSize,
            int edgeWidth,
            int fullSpeedInset) {
        int direction = edgeScrollDirection(pointerCoordinate, viewportSize, edgeWidth);
        if (direction == 0) {
            return 0f;
        }

        
        float maximumDistanceFromEdge = direction < 0
                ? edgeWidth
                : Math.max(0, edgeWidth - 1);
        if (maximumDistanceFromEdge == 0f) {
            return 1f;
        }
        float distanceFromEdge = direction < 0
                ? Math.max(0f, pointerCoordinate)
                : Math.max(0f, viewportSize - 1f - pointerCoordinate);
        float clampedFullSpeedInset = Math.min(
                maximumDistanceFromEdge,
                Math.max(0, fullSpeedInset));
        float accelerationDistance = maximumDistanceFromEdge - clampedFullSpeedInset;
        if (accelerationDistance == 0f) {
            return 1f;
        }
        float depth = clamp01(
                (maximumDistanceFromEdge - distanceFromEdge) / accelerationDistance);
        return EDGE_SCROLL_ENTRY_SPEED_MULTIPLIER
                + (1f - EDGE_SCROLL_ENTRY_SPEED_MULTIPLIER) * depth * depth;
    }

    static int clamp(int value, int minimum, int maximum) {
        if (maximum < minimum) {
            return minimum;
        }
        return Math.max(minimum, Math.min(maximum, value));
    }

    static int previewLeft(float pointerX, int previewWidth, int screenWidth, int margin) {
        return clamp(
                Math.round(pointerX - previewWidth / 2f),
                margin,
                Math.max(margin, screenWidth - previewWidth - margin));
    }

    static int previewTop(
            float pointerY,
            int previewHeight,
            int fingerOffset,
            int minimumTop,
            int maximumTop) {
        return clamp(
                Math.round(pointerY - previewHeight - fingerOffset),
                minimumTop,
                Math.max(minimumTop, maximumTop));
    }

    static float dragPullProgress(float pointerY, float startY, float endY) {
        if (endY <= startY) {
            return pointerY >= endY ? 1f : 0f;
        }
        return clamp01((pointerY - startY) / (endY - startY));
    }

    static float portalItemScale(float pointerX, float itemCenterX, float itemWidth) {
        float distanceInItems = Math.abs(pointerX - itemCenterX) / Math.max(1f, itemWidth);
        return Math.max(1f, 1.23f - distanceInItems * 0.13f);
    }

    static boolean nearHandMenuOnRight(float tilt) {
        return tilt > 0f;
    }

    static float[] mapRawPoint(
            float rawX,
            float rawY,
            int rawMaxX,
            int rawMaxY,
            int screenWidth,
            int screenHeight,
            int rotation) {
        float normalizedX = clamp01(rawX / Math.max(1, rawMaxX));
        float normalizedY = clamp01(rawY / Math.max(1, rawMaxY));
        float width = Math.max(1, screenWidth - 1);
        float height = Math.max(1, screenHeight - 1);
        switch (rotation) {
            case 1:
                return new float[]{normalizedY * width, (1f - normalizedX) * height};
            case 2:
                return new float[]{(1f - normalizedX) * width, (1f - normalizedY) * height};
            case 3:
                return new float[]{(1f - normalizedY) * width, normalizedX * height};
            case 0:
            default:
                return new float[]{normalizedX * width, normalizedY * height};
        }
    }

    static float clamp01(float value) {
        return Math.max(0f, Math.min(1f, value));
    }
}
