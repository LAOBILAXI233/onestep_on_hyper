package com.leaf.hyperdragshare.codex;

import android.content.Context;

final class AccessibilityTrace {
    private AccessibilityTrace() {}

    static void reset(Context context) {
        DragShareLog.d("DragShare/Accessibility", "accessibility trace reset");
    }

    static void record(Context context, String message) {
        if (message != null) {
            DragShareLog.i("DragShare/Accessibility", message);
        }
    }
}
