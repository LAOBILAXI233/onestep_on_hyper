package com.hyper.onestep.util;

import android.content.Context;
import android.graphics.drawable.Drawable;

/** Supplies the same generic icon Android uses before an app's resources are available. */
public final class AppIconPlaceholder {
    private AppIconPlaceholder() {
    }

    public static Drawable get(Context context) {
        if (context == null) return null;
        try {
            return context.getPackageManager().getDefaultActivityIcon();
        } catch (Throwable ignored) {
            return null;
        }
    }
}
