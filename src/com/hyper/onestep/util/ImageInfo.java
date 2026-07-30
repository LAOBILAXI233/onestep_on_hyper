package com.hyper.onestep.util;
import java.io.File;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.net.Uri;
import android.provider.MediaStore;
import android.text.TextUtils;
// 图片元信息封装，含路径/MIME/时间/id
public class ImageInfo implements Comparable<ImageInfo> {
    private static final LOG log = LOG.getInstance(ImageInfo.class);
    public String filePath;
    public String mimeType;
    public int id;
    public long time;
    public boolean isVideo() {
        return mimeType != null && mimeType.toLowerCase().startsWith("video/");
    }
    public boolean isAnimatedImage() {
        return "image/gif".equalsIgnoreCase(mimeType)
                || (!TextUtils.isEmpty(filePath) && filePath.toLowerCase().endsWith(".gif"));
    }
    public Uri getContentUri(Context context) {
        if (id != 0) {
            Uri collection = MediaStore.Files.getContentUri(MediaStore.VOLUME_EXTERNAL);
            return ContentUris.withAppendedId(collection, id);
        } else {
            File file = new File(filePath);
            if (file.isFile()) {
                ContentValues values = new ContentValues();
                values.put(MediaStore.MediaColumns.DATA, filePath);
                Uri collection = isVideo()
                        ? MediaStore.Video.Media.EXTERNAL_CONTENT_URI
                        : MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
                return context.getContentResolver().insert(collection, values);
            }
        }
        return null;
    }
    public void debug() {
        log.error("id ["+id+"], time ["+time+"], mimeType ["+mimeType+"], path ["+filePath+"]");
    }
    @Override
    public int compareTo(ImageInfo info) {
        if (info == null) {
            return -1;
        }
        if (time == info.time) {
            return 0;
        }
        if (info.time > time) {
            return 1;
        } else {
            return -1;
        }
    }
}
