package com.hyper.onestep.lsp;
import android.content.ClipData;
import android.content.ClipDescription;
import android.content.ContentUris;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.MediaStore;
import android.text.TextUtils;
import android.view.View;
import com.hyper.onestep.util.Utils;
import java.io.File;
// OneStep 文本与图片拖拽启动工具
public final class DragHelper {
    private static final String TAG = "DragHelper";
    private DragHelper() {}
    // 启动文本拖拽并在开始后恢复侧边栏
    public static boolean dragText(View v, Context context, CharSequence text) {
        return dragTextInternal(v, context, text, true);
    }
    // 从模块进程启动文本拖拽，不恢复侧边栏
    public static boolean dragTextFromModuleProcess(
            View v, Context context, CharSequence text) {
        return dragTextInternal(v, context, text, false);
    }
    private static boolean dragTextInternal(View v, Context context, CharSequence text,
            boolean resumeSidebar) {
        LSPLogger.i("DragHelper.dragText: view=" + v + " textLen="
                + (text == null ? 0 : text.length()));
        try {
            if (TextUtils.isEmpty(text)) return false;
            ClipData clip = ClipData.newPlainText("OneStepText", text);
            return startDrag(v, context, clip, text, View.DRAG_FLAG_GLOBAL, resumeSidebar);
        } catch (Throwable t) {
            LSPLogger.e("DragHelper.dragText: failed", t);
            return false;
        }
    }
    // 启动图片文件拖拽
    public static boolean dragImage(View v, Context context, File file, String mimeType) {
        LSPLogger.i("DragHelper.dragImage: view=" + v + " file=" + file
                + " mimeType=" + mimeType);
        return dragFile(v, context, file, mimeType);
    }
    // 启动图片Uri拖拽
    public static boolean dragImage(View v, Context context, Uri uri, String mimeType) {
        LSPLogger.i("DragHelper.dragImage: view=" + v + " uri=" + uri
                + " mimeType=" + mimeType);
        return dragUri(v, context, uri, mimeType, uri, true);
    }
    /** See {@link #dragTextFromModuleProcess(View, Context, CharSequence)}. */
    public static boolean dragImageFromModuleProcess(
            View v, Context context, Uri uri, String mimeType) {
        LSPLogger.i("DragHelper.dragImageFromModuleProcess: view=" + v + " uri=" + uri
                + " mimeType=" + mimeType);
        return dragUri(v, context, uri, mimeType, uri, false);
    }
    // 启动文件拖拽，优先解析为MediaStore的content Uri
    public static boolean dragFile(View v, Context context, File file, String mimeType) {
        LSPLogger.i("DragHelper.dragFile: view=" + v + " file=" + file
                + " mimeType=" + mimeType);
        try {
            if (file == null || !file.exists()) {
                LSPLogger.w("DragHelper.dragFile: file not exists, abort");
                return false;
            }
            LSPLogger.d("DragHelper.dragFile: file length=" + file.length()
                    + " readable=" + file.canRead());
            Uri uri = resolveContentUri(context, file);
            if (uri == null) {
                uri = Uri.fromFile(file);
                LSPLogger.w("DragHelper.dragFile: no MediaStore row, using file URI fallback");
            }
            LSPLogger.d("DragHelper.dragFile: uri=" + uri);
            return dragUri(v, context, uri, mimeType, file.getAbsolutePath(), true);
        } catch (Throwable t) {
            LSPLogger.e("DragHelper.dragFile: failed", t);
            return false;
        }
    }
    private static boolean dragUri(View v, Context context, Uri uri, String mimeType,
            Object localState, boolean resumeSidebar) {
        if (uri == null) return false;
        String resolvedType = mimeType;
        if (TextUtils.isEmpty(resolvedType)) {
            try {
                resolvedType = context.getContentResolver().getType(uri);
            } catch (Throwable ignored) {
            }
        }
        if (TextUtils.isEmpty(resolvedType)) resolvedType = "application/octet-stream";
        ClipDescription description = new ClipDescription(
                "OneStepFile", new String[] { resolvedType });
        ClipData clip = new ClipData(description, new ClipData.Item(uri));
        return startDrag(v, context, clip, localState,
                View.DRAG_FLAG_GLOBAL | View.DRAG_FLAG_GLOBAL_URI_READ, resumeSidebar);
    }
    private static boolean startDrag(final View v, final Context context, ClipData clip,
            Object localState, int flags, boolean resumeSidebar) {
        if (v == null || context == null) return false;
        View.DragShadowBuilder shadow = new View.DragShadowBuilder(v);
        boolean started = v.startDragAndDrop(clip, shadow, localState, flags);
        LSPLogger.i("DragHelper.startDrag: started=" + started
                + " flags=0x" + Integer.toHexString(flags)
                + " mime=" + clip.getDescription());
        if (started && resumeSidebar) {
            v.post(new Runnable() {
                @Override
                public void run() {
                    Utils.resumeSidebar(context);
                }
            });
        }
        return started;
    }
    // 通过MediaStore查询文件路径对应的content Uri
    public static Uri resolveContentUri(Context context, File file) {
        if (context == null || file == null) return null;
        Cursor cursor = null;
        try {
            Uri files = MediaStore.Files.getContentUri("external");
            cursor = context.getContentResolver().query(files,
                    new String[] { MediaStore.Files.FileColumns._ID },
                    MediaStore.Files.FileColumns.DATA + "=?",
                    new String[] { file.getAbsolutePath() }, null);
            if (cursor != null && cursor.moveToFirst()) {
                return ContentUris.withAppendedId(files, cursor.getLong(0));
            }
        } catch (Throwable t) {
            LSPLogger.w("DragHelper.resolveContentUri: query failed for " + file, t);
        } finally {
            if (cursor != null) cursor.close();
        }
        return null;
    }
}
