package com.hyper.onestep.dragshare;

import android.net.Uri;

import androidx.annotation.Nullable;

import java.io.File;

public final class HyperDragDropBridge {

    public enum Outcome {

        NONE,

        CONSUMED,

        BUILTIN_TEXT_SEGMENTATION,
        BUILTIN_SAVE_LOCAL,
        BUILTIN_COPY
    }

    public interface Host {
        boolean isWorkspacePoint(float x, float y);

        void onHyperDragStarted(String mimeType, boolean image, boolean textDirectToSlot);

        void onHyperDragMoved(float x, float y);

        void onHyperDragEnded();

        Outcome onHyperDragDropped(float x, float y, @Nullable String text,
                @Nullable Uri stagedImageUri, @Nullable File stagedImageFile,
                @Nullable String imageMime, boolean textDirectToSlot);
    }

    private static volatile Host host;

    private HyperDragDropBridge() {
    }

    public static void register(Host h) {
        host = h;
    }

    public static void unregister(Host h) {
        if (host == h) {
            host = null;
        }
    }

    public static boolean insideWorkspace(float x, float y) {
        Host h = host;
        return h != null && h.isWorkspacePoint(x, y);
    }

    public static void dragStarted(String mimeType, boolean image, boolean textDirectToSlot) {
        Host h = host;
        if (h != null) {
            h.onHyperDragStarted(mimeType, image, textDirectToSlot);
        }
    }

    public static void dragMoved(float x, float y) {
        Host h = host;
        if (h != null) {
            h.onHyperDragMoved(x, y);
        }
    }

    public static void dragEnded() {
        Host h = host;
        if (h != null) {
            h.onHyperDragEnded();
        }
    }

    public static Outcome dispatchDrop(float x, float y, @Nullable String text,
            @Nullable Uri stagedImageUri, @Nullable File stagedImageFile,
            @Nullable String imageMime, boolean textDirectToSlot) {
        Host h = host;
        return h == null ? Outcome.NONE
                : h.onHyperDragDropped(x, y, text, stagedImageUri, stagedImageFile,
                        imageMime, textDirectToSlot);
    }
}
