package com.hyper.sidebar.util;

import java.io.File;
import java.lang.ref.SoftReference;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.media.ThumbnailUtils;
import android.text.TextUtils;
import android.util.LruCache;
import android.util.Size;

public class BitmapCache {
    private static final LOG log = LOG.getInstance(BitmapCache.class);

    private int mSize = 0;
    private LruCache<String, SoftReference<Bitmap>> mImageCache = new LruCache<String, SoftReference<Bitmap>>(100) {
        @Override
        protected void entryRemoved(boolean evicted, String key, SoftReference<Bitmap> oldValue, SoftReference<Bitmap> newValue) {
            super.entryRemoved(evicted, key, oldValue, newValue);
        }
    };

    public BitmapCache(int size) {
        if (size <= 0) {
            size = 1;
        }
        mSize = size;
    }

    public int getTargetSize() {
        return mSize;
    }

    public Bitmap getBitmapDirectly(String filepath){
        synchronized (mImageCache) {
            SoftReference<Bitmap> softBp = mImageCache.get(filepath);
            if(softBp != null){
                return softBp.get();
            }
        }
        return null;
    }

    public Bitmap getBitmap(String filepath, String mimeType) {
        Bitmap ret = getBitmapDirectly(filepath);
        if (ret != null) {
            return ret;
        }
        Bitmap bitmap = isVideo(mimeType)
                ? createVideoThumbnail(filepath) : decodeImage(filepath);
        if(bitmap == null){
            return null;
        }
        if (bitmap.getWidth() != bitmap.getHeight()) {
            int size = bitmap.getWidth() < bitmap.getHeight() ? bitmap.getWidth() : bitmap.getHeight();
            Bitmap newBp = Bitmap.createBitmap(bitmap, (bitmap.getWidth() - size) / 2, (bitmap.getHeight() - size) / 2, size, size);
            bitmap.recycle();
            bitmap = newBp;
        }
        addBitmapToMemoryCache(filepath, bitmap);
        return bitmap;
    }

    private Bitmap decodeImage(String filepath) {
        BitmapFactory.Options boundOptions = new BitmapFactory.Options();
        boundOptions.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(filepath, boundOptions);
        int largestSide = Math.max(boundOptions.outHeight, boundOptions.outWidth);
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inSampleSize = Math.max(1, largestSide / mSize);
        options.inPreferredConfig = Bitmap.Config.RGB_565;
        return BitmapFactory.decodeFile(filepath, options);
    }

    private Bitmap createVideoThumbnail(String filepath) {
        try {
            return ThumbnailUtils.createVideoThumbnail(
                    new File(filepath), new Size(mSize, mSize), null);
        } catch (Throwable t) {
            log.error("createVideoThumbnail failed [" + filepath + "]: " + t);
            return null;
        }
    }

    private static boolean isVideo(String mimeType) {
        return !TextUtils.isEmpty(mimeType)
                && mimeType.toLowerCase().startsWith("video/");
    }

    public void clearCache() {
        synchronized (mImageCache) {
            if (mImageCache != null) {
                if (mImageCache.size() > 0) {
                    mImageCache.evictAll();
                }
            }
        }
    }

    public void addBitmapToMemoryCache(String key, Bitmap bitmap) {
        if (key != null && bitmap != null) {
            synchronized (mImageCache) {
                if (mImageCache.get(key) == null) {
                    mImageCache.put(key, new SoftReference<Bitmap>(bitmap));
                }
            }
        }
    }
}
