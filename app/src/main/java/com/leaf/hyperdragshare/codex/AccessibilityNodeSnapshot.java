package com.leaf.hyperdragshare.codex;

import android.graphics.Rect;

final class AccessibilityNodeSnapshot {
    final Rect bounds;
    final String packageName;
    final String className;
    final String viewId;
    final String text;
    final String contentDescription;
    final boolean visible;
    final boolean editable;
    final boolean password;
    final boolean clickable;
    final boolean longClickable;
    final boolean important;
    final boolean leaf;
    final boolean insideWebView;
    final int depth;
    final int windowLayer;
    final int traversalOrder;

    private AccessibilityNodeSnapshot(Builder builder) {
        this.bounds = builder.bounds == null ? new Rect() : new Rect(builder.bounds);
        this.packageName = builder.packageName;
        this.className = builder.className;
        this.viewId = builder.viewId;
        this.text = builder.text;
        this.contentDescription = builder.contentDescription;
        this.visible = builder.visible;
        this.editable = builder.editable;
        this.password = builder.password;
        this.clickable = builder.clickable;
        this.longClickable = builder.longClickable;
        this.important = builder.important;
        this.leaf = builder.leaf;
        this.insideWebView = builder.insideWebView;
        this.depth = builder.depth;
        this.windowLayer = builder.windowLayer;
        this.traversalOrder = builder.traversalOrder;
    }

    static final class Builder {
        private Rect bounds;
        private String packageName;
        private String className;
        private String viewId;
        private String text;
        private String contentDescription;
        private boolean visible = true;
        private boolean editable;
        private boolean password;
        private boolean clickable;
        private boolean longClickable;
        private boolean important = true;
        private boolean leaf = true;
        private boolean insideWebView;
        private int depth;
        private int windowLayer;
        private int traversalOrder;

        Builder bounds(Rect value) { bounds = value; return this; }
        Builder packageName(String value) { packageName = value; return this; }
        Builder className(String value) { className = value; return this; }
        Builder viewId(String value) { viewId = value; return this; }
        Builder text(String value) { text = value; return this; }
        Builder contentDescription(String value) { contentDescription = value; return this; }
        Builder visible(boolean value) { visible = value; return this; }
        Builder editable(boolean value) { editable = value; return this; }
        Builder password(boolean value) { password = value; return this; }
        Builder clickable(boolean value) { clickable = value; return this; }
        Builder longClickable(boolean value) { longClickable = value; return this; }
        Builder important(boolean value) { important = value; return this; }
        Builder leaf(boolean value) { leaf = value; return this; }
        Builder insideWebView(boolean value) { insideWebView = value; return this; }
        Builder depth(int value) { depth = value; return this; }
        Builder windowLayer(int value) { windowLayer = value; return this; }
        Builder traversalOrder(int value) { traversalOrder = value; return this; }
        AccessibilityNodeSnapshot build() { return new AccessibilityNodeSnapshot(this); }
    }
}
