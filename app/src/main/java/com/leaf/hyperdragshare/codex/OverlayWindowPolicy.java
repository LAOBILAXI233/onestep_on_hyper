package com.leaf.hyperdragshare.codex;

import android.view.WindowManager;

final class OverlayWindowPolicy {
    final int windowType;
    final String sourceName;

    private OverlayWindowPolicy(int windowType, String sourceName) {
        this.windowType = windowType;
        this.sourceName = sourceName;
    }

    @SuppressWarnings("deprecation")
    static OverlayWindowPolicy portal() {
        
        
        return new OverlayWindowPolicy(
                WindowManager.LayoutParams.TYPE_SYSTEM_DIALOG,
                "portal");
    }

    static OverlayWindowPolicy accessibility() {
        return new OverlayWindowPolicy(
                WindowManager.LayoutParams.TYPE_ACCESSIBILITY_OVERLAY,
                "accessibility");
    }
}
