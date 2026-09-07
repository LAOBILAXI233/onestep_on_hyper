package com.hyper.onestep.data.apps;

import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.PixelFormat;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.util.LruCache;

import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.function.Supplier;

public final class LauncherIconCache implements ComponentCallbacks2 {
    private static volatile LauncherIconCache instance;
    private static final int MAX_BYTES = 24 * 1024 * 1024;
    private final Handler mainHandler = new Handler(Looper.getMainLooper());
    private final ExecutorService executor = Executors.newSingleThreadExecutor(runnable -> {
        Thread thread = new Thread(runnable, "OneStep-visible-icons");
        thread.setPriority(Thread.NORM_PRIORITY - 1);
        return thread;
    });
    private final LruCache<String, Bitmap> bitmaps = new LruCache<String, Bitmap>(MAX_BYTES) {
        @Override
        protected int sizeOf(String key, Bitmap bitmap) {
            return bitmap.getAllocationByteCount();
        }
    };
    private final Map<String, List<WeakReference<IconDrawable>>> pending = new HashMap<>();
    private final Context context;
    private final Drawable.ConstantState placeholderState;
    private volatile long generation;

    private LauncherIconCache(Context context) {
        this.context = context.getApplicationContext();
        placeholderState = context.getPackageManager().getDefaultActivityIcon().getConstantState();
        this.context.registerComponentCallbacks(this);
    }

    public static LauncherIconCache get(Context context) {
        if (instance == null) {
            synchronized (LauncherIconCache.class) {
                if (instance == null) {
                    instance = new LauncherIconCache(context);
                }
            }
        }
        return instance;
    }

    Drawable create(String instanceKey, Supplier<Drawable> source) {
        Resources resources = context.getResources();
        Configuration configuration = resources.getConfiguration();
        String key = instanceKey + ":" + generation + ":" + configuration.densityDpi
                + ":" + configuration.uiMode + ":" + configuration.getLocales().toLanguageTags();
        int intrinsicSize = Math.max(1, Math.round(72f * resources.getDisplayMetrics().density));
        return new IconState(this, key, intrinsicSize, source).newDrawable(resources);
    }

    void invalidate() {
        generation++;
        bitmaps.evictAll();
    }

    int cachedBytes() {
        return bitmaps.size();
    }

    private void request(IconDrawable target, String key, int size) {
        synchronized (pending) {
            List<WeakReference<IconDrawable>> listeners = pending.get(key);
            if (listeners != null) {
                listeners.add(new WeakReference<>(target));
                return;
            }
            listeners = new ArrayList<>();
            listeners.add(new WeakReference<>(target));
            pending.put(key, listeners);
        }
        IconState state = target.state;
        executor.execute(() -> {
            Bitmap bitmap = null;
            if (hasVisibleListener(key)) {
                try {
                    Drawable icon = state.source.get();
                    if (icon == null) {
                        icon = context.getPackageManager().getDefaultActivityIcon();
                    }
                    Drawable.ConstantState constantState = icon.getConstantState();
                    if (constantState != null) {
                        icon = constantState.newDrawable(context.getResources()).mutate();
                    }
                    bitmap = Bitmap.createBitmap(size, size, Bitmap.Config.ARGB_8888);
                    android.graphics.Rect previousBounds = icon.copyBounds();
                    icon.setBounds(0, 0, size, size);
                    try {
                        icon.draw(new Canvas(bitmap));
                    } finally {
                        icon.setBounds(previousBounds);
                    }
                } catch (RuntimeException e) {
                    Log.w("OneStepIcons", "Unable to load visible icon", e);
                    bitmap = Bitmap.createBitmap(size, size, Bitmap.Config.ARGB_8888);
                    Drawable fallback = context.getPackageManager().getDefaultActivityIcon();
                    fallback.setBounds(0, 0, size, size);
                    fallback.draw(new Canvas(bitmap));
                }
            }
            Bitmap result = bitmap;
            mainHandler.post(() -> finish(key, result));
        });
    }

    private boolean hasVisibleListener(String key) {
        synchronized (pending) {
            List<WeakReference<IconDrawable>> listeners = pending.get(key);
            if (listeners != null) {
                for (WeakReference<IconDrawable> reference : listeners) {
                    IconDrawable drawable = reference.get();
                    if (drawable != null && drawable.getCallback() != null) {
                        return true;
                    }
                }
            }
            return false;
        }
    }

    private void finish(String key, Bitmap bitmap) {
        if (bitmap != null) {
            bitmaps.put(key, bitmap);
        }
        List<WeakReference<IconDrawable>> listeners;
        synchronized (pending) {
            listeners = pending.remove(key);
        }
        if (listeners != null) {
            for (WeakReference<IconDrawable> reference : listeners) {
                IconDrawable drawable = reference.get();
                if (drawable != null && key.equals(drawable.pendingKey)) {
                    drawable.pendingKey = null;
                    drawable.invalidateSelf();
                }
            }
        }
    }

    @Override
    public void onTrimMemory(int level) {
        if (level >= TRIM_MEMORY_UI_HIDDEN || level == TRIM_MEMORY_RUNNING_CRITICAL) {
            bitmaps.evictAll();
        } else if (level >= TRIM_MEMORY_RUNNING_LOW) {
            bitmaps.trimToSize(MAX_BYTES / 2);
        }
    }

    @Override
    public void onLowMemory() {
        bitmaps.evictAll();
    }

    @Override
    public void onConfigurationChanged(Configuration configuration) {
        invalidate();
    }

    private static final class IconState extends Drawable.ConstantState {
        final LauncherIconCache cache;
        final String key;
        final int intrinsicSize;
        final Supplier<Drawable> source;

        IconState(LauncherIconCache cache, String key, int intrinsicSize,
                  Supplier<Drawable> source) {
            this.cache = cache;
            this.key = key;
            this.intrinsicSize = intrinsicSize;
            this.source = source;
        }

        @Override
        public Drawable newDrawable() {
            return new IconDrawable(this);
        }

        @Override
        public int getChangingConfigurations() {
            return 0;
        }
    }

    private static final class IconDrawable extends Drawable {
        final IconState state;
        final Paint paint = new Paint(Paint.ANTI_ALIAS_FLAG | Paint.FILTER_BITMAP_FLAG);
        final Drawable placeholder;
        String pendingKey;

        IconDrawable(IconState state) {
            this.state = state;
            placeholder = state.cache.placeholderState == null ? null
                    : state.cache.placeholderState.newDrawable(state.cache.context.getResources()).mutate();
        }

        @Override
        public void draw(Canvas canvas) {
            if (getBounds().isEmpty()) {
                return;
            }
            int size = Math.min(512, Math.max(32,
                    (Math.max(getBounds().width(), getBounds().height()) + 31) / 32 * 32));
            String key = state.key + ":" + size;
            Bitmap bitmap = state.cache.bitmaps.get(key);
            if (bitmap != null) {
                canvas.drawBitmap(bitmap, null, getBounds(), paint);
                return;
            }
            if (!key.equals(pendingKey)) {
                pendingKey = key;
                state.cache.request(this, key, size);
            }
            if (placeholder != null) {
                placeholder.setBounds(getBounds());
                placeholder.setAlpha(paint.getAlpha());
                placeholder.setColorFilter(paint.getColorFilter());
                placeholder.draw(canvas);
            }
        }

        @Override
        public void setAlpha(int alpha) {
            if (paint.getAlpha() != alpha) {
                paint.setAlpha(alpha);
                invalidateSelf();
            }
        }

        @Override
        public int getAlpha() {
            return paint.getAlpha();
        }

        @Override
        public void setColorFilter(ColorFilter colorFilter) {
            paint.setColorFilter(colorFilter);
            invalidateSelf();
        }

        @Override
        public int getOpacity() {
            return PixelFormat.TRANSLUCENT;
        }

        @Override
        public int getIntrinsicWidth() {
            return state.intrinsicSize;
        }

        @Override
        public int getIntrinsicHeight() {
            return state.intrinsicSize;
        }

        @Override
        public Drawable.ConstantState getConstantState() {
            return state;
        }
    }
}
