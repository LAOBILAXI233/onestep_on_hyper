package com.leaf.hyperdragshare.codex;

import android.content.ComponentName;
import android.graphics.drawable.Drawable;

final class ShareTarget {
    final ComponentName component;
    final CharSequence label;
    final Drawable icon;
    private final String key;
    private final String packageName;
    private final boolean builtIn;

    ShareTarget(ComponentName component, CharSequence label, Drawable icon) {
        this(
                component,
                label,
                icon,
                component == null ? null : component.flattenToString(),
                component == null ? "" : component.getPackageName(),
                false);
    }

    private ShareTarget(
            ComponentName component,
            CharSequence label,
            Drawable icon,
            String key,
            String packageName,
            boolean builtIn) {
        this.component = component;
        this.label = label;
        this.icon = icon;
        this.key = key;
        this.packageName = packageName;
        this.builtIn = builtIn;
    }

    static ShareTarget saveToLocal(Drawable icon) {
        return new ShareTarget(
                null,
                "保存到本地",
                icon,
                DragShareSettings.TARGET_SAVE_LOCAL,
                "builtin",
                true);
    }

    static ShareTarget copyTextToClipboard(Drawable icon) {
        return new ShareTarget(
                null,
                "复制文本",
                icon,
                DragShareSettings.TARGET_COPY_TEXT,
                "builtin",
                true);
    }

    static ShareTarget copyImageToClipboard(Drawable icon) {
        return new ShareTarget(
                null,
                "复制图片",
                icon,
                DragShareSettings.TARGET_COPY_IMAGE,
                "builtin",
                true);
    }

    static ShareTarget textSegmentation(Drawable icon) {
        return new ShareTarget(
                null,
                "文本分词",
                icon,
                DragShareSettings.TARGET_TEXT_SEGMENTATION,
                "builtin",
                true);
    }

    static ShareTarget sendToOneStep(Drawable icon) {
        return new ShareTarget(
                null,
                "发送到 OneStep",
                icon,
                DragShareSettings.TARGET_ONESTEP,
                "builtin",
                true);
    }

    String key() {
        return key;
    }

    String packageName() {
        return packageName;
    }

    boolean isBuiltIn() {
        return builtIn;
    }

    boolean isSaveToLocal() {
        return builtIn && DragShareSettings.TARGET_SAVE_LOCAL.equals(key);
    }

    boolean isCopyTextToClipboard() {
        return builtIn && DragShareSettings.TARGET_COPY_TEXT.equals(key);
    }

    boolean isCopyImageToClipboard() {
        return builtIn && DragShareSettings.TARGET_COPY_IMAGE.equals(key);
    }

    boolean isCopyToClipboard() {
        return isCopyTextToClipboard() || isCopyImageToClipboard();
    }

    boolean isTextSegmentation() {
        return builtIn && DragShareSettings.TARGET_TEXT_SEGMENTATION.equals(key);
    }

    boolean isSendToOneStep() {
        return builtIn && DragShareSettings.TARGET_ONESTEP.equals(key);
    }
}
