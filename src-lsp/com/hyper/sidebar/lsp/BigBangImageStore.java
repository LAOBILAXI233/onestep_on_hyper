package com.hyper.sidebar.lsp;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.net.Uri;

import java.io.OutputStream;
import java.util.UUID;

/** Encodes a bounded screenshot crop through {@link BigBangImageProvider}. */
final class BigBangImageStore {
    private static final int FALLBACK_CROP_EDGE_PX = 960;
    private static final int MAX_STORED_PIXELS = 3_000_000;

    private BigBangImageStore() {}

    static Uri write(Context context, Bitmap screenshot, ContentTreeParser.Bounds requestedBounds,
            int touchX, int touchY) {
        if (context == null || screenshot == null || screenshot.isRecycled()) return null;

        Rect cropBounds = selectCropBounds(screenshot, requestedBounds, touchX, touchY);
        Bitmap crop = null;
        Bitmap scaled = null;
        Uri uri = null;
        try {
            crop = Bitmap.createBitmap(screenshot, cropBounds.left, cropBounds.top,
                    cropBounds.width(), cropBounds.height());
            Bitmap encoded = crop;
            long pixels = (long) crop.getWidth() * crop.getHeight();
            if (pixels > MAX_STORED_PIXELS) {
                float scale = (float) Math.sqrt(MAX_STORED_PIXELS / (double) pixels);
                scaled = Bitmap.createScaledBitmap(crop,
                        Math.max(1, Math.round(crop.getWidth() * scale)),
                        Math.max(1, Math.round(crop.getHeight() * scale)), true);
                encoded = scaled;
            }

            String fileName = UUID.randomUUID().toString() + ".png";
            uri = BigBangImageProvider.uriFor(fileName);
            try (OutputStream output = context.getContentResolver().openOutputStream(uri, "w")) {
                if (output == null || !encoded.compress(Bitmap.CompressFormat.PNG, 100, output)) {
                    throw new IllegalStateException("PNG encoder returned false");
                }
            }
            LSPLogger.i("BigBangImageStore: stored crop=" + cropBounds
                    + " uri=" + uri.getLastPathSegment());
            return uri;
        } catch (Throwable error) {
            LSPLogger.e("BigBangImageStore: write failed", error);
            if (uri != null) {
                try {
                    context.getContentResolver().delete(uri, null, null);
                } catch (Throwable ignored) {
                }
            }
            return null;
        } finally {
            if (scaled != null && scaled != crop && !scaled.isRecycled()) scaled.recycle();
            if (crop != null && crop != screenshot && !crop.isRecycled()) crop.recycle();
        }
    }

    private static Rect selectCropBounds(Bitmap screenshot,
            ContentTreeParser.Bounds requested, int touchX, int touchY) {
        int width = screenshot.getWidth();
        int height = screenshot.getHeight();
        if (requested != null) {
            Rect clipped = new Rect(
                    clamp(requested.left, 0, width),
                    clamp(requested.top, 0, height),
                    clamp(requested.right, 0, width),
                    clamp(requested.bottom, 0, height));
            if (clipped.width() > 0 && clipped.height() > 0) return clipped;
        }

        int cropWidth = Math.min(width, FALLBACK_CROP_EDGE_PX);
        int cropHeight = Math.min(height, FALLBACK_CROP_EDGE_PX);
        int centerX = clamp(touchX, 0, Math.max(0, width - 1));
        int centerY = clamp(touchY, 0, Math.max(0, height - 1));
        int left = clamp(centerX - cropWidth / 2, 0, width - cropWidth);
        int top = clamp(centerY - cropHeight / 2, 0, height - cropHeight);
        return new Rect(left, top, left + cropWidth, top + cropHeight);
    }

    private static int clamp(int value, int minimum, int maximum) {
        return Math.max(minimum, Math.min(maximum, value));
    }
}
