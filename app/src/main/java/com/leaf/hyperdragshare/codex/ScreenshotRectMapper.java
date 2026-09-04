package com.leaf.hyperdragshare.codex;

import android.graphics.Rect;

final class ScreenshotRectMapper {
    private ScreenshotRectMapper() {}

    static Rect mapAndExpand(
            Rect source,
            int displayWidth,
            int displayHeight,
            int bitmapWidth,
            int bitmapHeight,
            int expansionPixels) {
        if (source == null || displayWidth <= 0 || displayHeight <= 0
                || bitmapWidth <= 0 || bitmapHeight <= 0) {
            return null;
        }
        boolean displayLandscape = displayWidth > displayHeight;
        boolean bitmapLandscape = bitmapWidth > bitmapHeight;
        if (displayLandscape != bitmapLandscape && displayWidth != displayHeight
                && bitmapWidth != bitmapHeight) {
            return null;
        }
        float scaleX = bitmapWidth / (float) displayWidth;
        float scaleY = bitmapHeight / (float) displayHeight;
        if (Math.abs(scaleX - scaleY) > Math.max(0.03f, Math.min(scaleX, scaleY) * 0.03f)) {
            return null;
        }
        Rect expanded = new Rect(source);
        int edge = Math.max(0, expansionPixels);
        expanded.inset(-edge, -edge);
        Rect result = new Rect(
                (int) Math.floor(expanded.left * scaleX),
                (int) Math.floor(expanded.top * scaleY),
                (int) Math.ceil(expanded.right * scaleX),
                (int) Math.ceil(expanded.bottom * scaleY));
        if (!result.intersect(0, 0, bitmapWidth, bitmapHeight)
                || result.width() < 1 || result.height() < 1) {
            return null;
        }
        return result;
    }
}
