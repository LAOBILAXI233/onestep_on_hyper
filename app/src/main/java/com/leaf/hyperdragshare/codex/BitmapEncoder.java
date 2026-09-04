package com.leaf.hyperdragshare.codex;

import android.graphics.Bitmap;

import java.io.IOException;
import java.io.OutputStream;

final class BitmapEncoder {
    private BitmapEncoder() {}

    static void writePng(Bitmap source, OutputStream output) throws IOException {
        if (source == null || source.isRecycled() || output == null) {
            throw new IOException("Bitmap is unavailable");
        }
        Bitmap work = source;
        boolean ownsWork = false;
        try {
            if (isHardwareBitmap(source)) {
                work = source.copy(Bitmap.Config.ARGB_8888, false);
                ownsWork = true;
            }
            if (work == null || work.isRecycled()
                    || !work.compress(Bitmap.CompressFormat.PNG, 100, output)) {
                throw new IOException("Unable to encode image as PNG");
            }
        } finally {
            if (ownsWork && work != null && !work.isRecycled()) {
                work.recycle();
            }
        }
    }

    private static boolean isHardwareBitmap(Bitmap bitmap) {
        
        return bitmap != null && "HARDWARE".equals(String.valueOf(bitmap.getConfig()));
    }
}
