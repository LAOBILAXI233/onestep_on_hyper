package com.leaf.hyperdragshare.codex;

import android.graphics.Rect;

final class AccessibilityCandidate {
    enum Kind {
        TEXT,
        IMAGE_REGION
    }

    final Kind kind;
    final Rect bounds;
    final String text;
    final String sourcePackage;
    final boolean editable;
    final boolean insideWebView;
    final boolean strongImage;
    final boolean leaf;
    final int depth;
    final int traversalOrder;

    AccessibilityCandidate(
            Kind kind,
            AccessibilityNodeSnapshot snapshot,
            String text,
            boolean strongImage) {
        this.kind = kind;
        this.bounds = new Rect(snapshot.bounds);
        this.text = text;
        this.sourcePackage = snapshot.packageName;
        this.editable = snapshot.editable;
        this.insideWebView = snapshot.insideWebView;
        this.strongImage = strongImage;
        this.leaf = snapshot.leaf;
        this.depth = snapshot.depth;
        this.traversalOrder = snapshot.traversalOrder;
    }

    boolean contains(float x, float y) {
        return x >= bounds.left && x <= bounds.right && y >= bounds.top && y <= bounds.bottom;
    }

    long area() {
        return Math.max(0L, (long) bounds.width() * (long) bounds.height());
    }

    boolean isInside(AccessibilityCandidate other) {
        return other != null && other.bounds.contains(bounds);
    }
}
