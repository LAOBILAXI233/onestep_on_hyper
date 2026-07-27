package com.hyper.sidebar.util;

import java.util.ArrayList;
import java.io.File;
import java.util.List;

import android.graphics.Bitmap;
import android.graphics.ImageDecoder;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;

public final class ImageLoader {
    private static final LOG log = LOG.getInstance(ImageLoader.class);

    private static final int THREAD_NUM = 2;
    private static final int MSG_IMAGE_LOAD = 1;
    private BitmapCache mCache;
    private List<Handler> mHandlers;
    public ImageLoader(int photoSize) {
        mCache = new BitmapCache(photoSize);
        mHandlers = new ArrayList<Handler>();
        for(int i = 0; i < THREAD_NUM; ++ i){
            HandlerThread handlerthread = new HandlerThread("imageloader" + i,
                    android.os.Process.THREAD_PRIORITY_BACKGROUND);
            handlerthread.start();
            mHandlers.add(new ImageHandler(handlerthread.getLooper()));
        }
    }

    public void loadImage(String filepath, String mimeType, Callback callback) {
        if (filepath == null || callback == null) {
            return;
        }
        /**
        Bitmap cur = mCache.getBitmapDirectly(filepath);
        if(cur != null){
            callback.onLoadComplete(filepath, cur);
            return;
        }
        **/
        ThreadVerify.verify(true);
        LoadItem item = new LoadItem();
        item.filePath = filepath;
        item.mimeType = mimeType;
        item.callback = callback;
        Handler handler = mHandlers.get(((filepath.hashCode() % mHandlers.size()) + mHandlers.size()) % mHandlers.size());
        Message msg = handler.obtainMessage(MSG_IMAGE_LOAD, item);
        handler.sendMessage(msg);
    }

    private final class ImageHandler extends Handler {
        public ImageHandler(Looper looper) {
            super(looper);
        }

        @Override
        public void handleMessage(Message msg) {
            switch (msg.what) {
            case MSG_IMAGE_LOAD:
                LoadItem item = (LoadItem) msg.obj;
                ImageLoader.Callback callback = item.callback;
                if (callback != null && callback.valid()) {
                    if (isAnimatedImage(item.filePath, item.mimeType)) {
                        callback.onLoadDrawableComplete(item.filePath,
                                decodeAnimatedImage(item.filePath));
                    } else {
                        Bitmap bm = mCache.getBitmap(item.filePath, item.mimeType);
                        callback.onLoadComplete(item.filePath, bm);
                    }
                }
            }
        }
    }

    private Drawable decodeAnimatedImage(String filePath) {
        try {
            ImageDecoder.Source source = ImageDecoder.createSource(new File(filePath));
            return ImageDecoder.decodeDrawable(source, (decoder, info, source1) -> {
                int largestSide = Math.max(info.getSize().getWidth(), info.getSize().getHeight());
                int sampleSize = Math.max(1, largestSide / Math.max(1, mCache.getTargetSize()));
                decoder.setTargetSampleSize(sampleSize);
            });
        } catch (Throwable t) {
            log.error("decodeAnimatedImage failed [" + filePath + "]: " + t);
            return null;
        }
    }

    private static boolean isAnimatedImage(String filePath, String mimeType) {
        return "image/gif".equalsIgnoreCase(mimeType)
                || (filePath != null && filePath.toLowerCase().endsWith(".gif"));
    }

    private final class LoadItem {
        String filePath;
        String mimeType;
        Callback callback;
    }

    public interface Callback {
        boolean valid();
        void onLoadComplete(String filePath, Bitmap bitmap);
        void onLoadDrawableComplete(String filePath, Drawable drawable);
    }

    public void clearCache() {
        mCache.clearCache();
    }
}
