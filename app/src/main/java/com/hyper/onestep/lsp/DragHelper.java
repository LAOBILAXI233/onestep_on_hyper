package com.hyper.onestep.lsp;

import android.content.ClipData;
import android.content.Context;
import android.net.Uri;
import android.view.View;

import androidx.core.content.FileProvider;

import com.hyper.onestep.lsp.LSPLogger;

import java.io.File;

public final class DragHelper {
    private static final String TAG = "DragHelper";

    private DragHelper() {
    }

    public static boolean dragText(View view, Context context, String text) {
        if (view == null || text == null || text.isEmpty()) {
            return false;
        }
        ClipData clipData = ClipData.newPlainText("onestep-text", text);
        
        
        return startDrag(view, clipData, View.DRAG_FLAG_GLOBAL);
    }

    public static boolean dragImage(View view, Context context, Uri contentUri, String mimeType) {
        if (view == null || context == null || contentUri == null) {
            return false;
        }
        ClipData clipData = new ClipData("onestep-image",
                new String[]{mimeOrDefault(mimeType)},
                new ClipData.Item(contentUri));
        return startDrag(view, clipData,
                View.DRAG_FLAG_GLOBAL | View.DRAG_FLAG_GLOBAL_URI_READ);
    }

    public static boolean dragImage(View view, Context context, File file, String mimeType) {
        return dragUri(view, context, fileToUri(context, file), mimeType);
    }

    public static boolean dragFile(View view, Context context, File file, String mimeType) {
        return dragUri(view, context, fileToUri(context, file), mimeType);
    }

    private static boolean dragUri(View view, Context context, Uri uri, String mimeType) {
        if (uri == null) {
            return false;
        }
        ClipData clipData = new ClipData("onestep-file",
                new String[]{mimeOrDefault(mimeType)},
                new ClipData.Item(uri));
        return startDrag(view, clipData,
                View.DRAG_FLAG_GLOBAL | View.DRAG_FLAG_GLOBAL_URI_READ);
    }

    private static Uri fileToUri(Context context, File file) {
        if (file == null) {
            return null;
        }
        
        String rawPath = file.getPath();
        if (rawPath != null && rawPath.startsWith("content:")) {
            try {
                return Uri.parse(rawPath);
            } catch (Throwable t) {
                LSPLogger.w(TAG, "parse content uri failed for " + rawPath, t);
                return null;
            }
        }
        return resolveContentUri(context, file);
    }

    public static Uri resolveContentUri(Context context, File file) {
        if (context == null || file == null || !file.exists()) {
            return null;
        }
        try {
            return FileProvider.getUriForFile(context,
                    context.getPackageName() + ".drag-files", file);
        } catch (Throwable t) {
            LSPLogger.w(TAG, "resolveContentUri failed for " + file, t);
            return null;
        }
    }

    private static String mimeOrDefault(String mimeType) {
        return mimeType == null || mimeType.isEmpty() ? "*/*" : mimeType;
    }

    private static boolean startDrag(View view, ClipData clipData) {
        return startDrag(view, clipData, 0);
    }

    private static boolean startDrag(View view, ClipData clipData, int flags) {
        try {
            return view.startDragAndDrop(clipData, new View.DragShadowBuilder(view), null, flags);
        } catch (Throwable t) {
            LSPLogger.e(TAG, "startDragAndDrop failed", t);
            return false;
        }
    }
}
