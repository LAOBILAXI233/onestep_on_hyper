package com.hyper.onestep.feature.embedding;

public final class VirtualNavigationInputPolicy {
    private VirtualNavigationInputPolicy() {
    }

    public static boolean startsInReservedBottomRegion(
            float y, int displayHeight, int reservedHeight) {
        if (displayHeight <= 0 || reservedHeight <= 0 || y < 0f) {
            return false;
        }
        int clampedHeight = Math.min(displayHeight, reservedHeight);
        return y >= displayHeight - clampedHeight;
    }
}
