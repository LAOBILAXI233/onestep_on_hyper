package com.leaf.hyperdragshare.codex;

import android.graphics.Bitmap;
import android.graphics.Rect;

final class CapturedContent {
    enum Kind {
        TEXT,
        IMAGE
    }

    final Kind kind;
    final String text;
    final Bitmap bitmap;
    final String sourcePackage;
    final Rect sourceBounds;
    final boolean bitmapOwnedByDragShare;

    private CapturedContent(
            Kind kind,
            String text,
            Bitmap bitmap,
            String sourcePackage,
            Rect sourceBounds,
            boolean bitmapOwnedByDragShare) {
        this.kind = kind;
        this.text = text;
        this.bitmap = bitmap;
        this.sourcePackage = sourcePackage;
        this.sourceBounds = sourceBounds == null ? null : new Rect(sourceBounds);
        this.bitmapOwnedByDragShare = bitmapOwnedByDragShare;
    }

    static CapturedContent text(String value, String sourcePackage, Rect sourceBounds) {
        if (value == null || value.trim().isEmpty()) {
            return null;
        }
        return new CapturedContent(Kind.TEXT, value, null, sourcePackage, sourceBounds, false);
    }

    static CapturedContent image(
            Bitmap value,
            String sourcePackage,
            Rect sourceBounds,
            boolean bitmapOwnedByDragShare) {
        if (value == null || value.isRecycled()) {
            return null;
        }
        return new CapturedContent(
                Kind.IMAGE,
                null,
                value,
                sourcePackage,
                sourceBounds,
                bitmapOwnedByDragShare);
    }

    boolean isImage() {
        return kind == Kind.IMAGE;
    }

    String mimeType() {
        return isImage() ? "image/png" : "text/plain";
    }
}
