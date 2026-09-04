package com.leaf.hyperdragshare.codex;

import android.graphics.Bitmap;

final class ModernPreviewSizer {
    private static final float MIN_SIDE_DP = 76f;
    private static final float TEXT_BASE_SIDE_DP = 76f;
    private static final float IMAGE_BASE_SIDE_DP = 80f;
    private static final float MAX_TEXT_GROWTH_DP = 120f;
    private static final float MAX_IMAGE_GROWTH_DP = 140f;

    private ModernPreviewSizer() {
    }

    static int squareSidePx(CapturedContent content, int screenWidthPx, float density) {
        int maxSidePx = Math.max(1, screenWidthPx / 3);
        float safeDensity = Math.max(0.1f, density);
        float minSidePx = Math.min(maxSidePx, dp(MIN_SIDE_DP, safeDensity));
        float desiredSidePx = content != null && content.isImage()
                ? imageSidePx(content.bitmap, safeDensity)
                : textSidePx(content == null ? null : content.text, safeDensity);
        return Math.round(Math.max(minSidePx, Math.min(maxSidePx, desiredSidePx)));
    }

    private static float textSidePx(String text, float density) {
        int codePoints = text == null ? 0 : text.codePointCount(0, text.length());
        float growthDp = Math.min(
                MAX_TEXT_GROWTH_DP,
                (float) Math.sqrt(Math.min(240, Math.max(0, codePoints))) * 5f);
        return dp(TEXT_BASE_SIDE_DP + growthDp, density);
    }

    private static float imageSidePx(Bitmap bitmap, float density) {
        if (bitmap == null || bitmap.isRecycled()) {
            return dp(IMAGE_BASE_SIDE_DP, density);
        }
        float geometricMeanPx = (float) Math.sqrt(
                Math.max(1L, (long) bitmap.getWidth() * bitmap.getHeight()));
        float growthDp = Math.min(
                MAX_IMAGE_GROWTH_DP,
                geometricMeanPx * 0.18f / density);
        return dp(IMAGE_BASE_SIDE_DP + growthDp, density);
    }

    private static float dp(float value, float density) {
        return value * density;
    }
}
