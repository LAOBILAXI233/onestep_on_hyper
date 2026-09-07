package com.hyper.onestep.data.apps;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotSame;
import static org.junit.Assert.assertTrue;

import android.content.ComponentCallbacks2;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;

import androidx.test.ext.junit.runners.AndroidJUnit4;
import androidx.test.platform.app.InstrumentationRegistry;

import org.junit.Test;
import org.junit.runner.RunWith;

import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

@RunWith(AndroidJUnit4.class)
public class LauncherIconCacheInstrumentedTest {
    @Test
    public void metadataDoesNotDecodeIcons() {
        AtomicInteger loads = new AtomicInteger();
        LauncherIconCache cache = cache();
        for (int i = 0; i < 600; i++) {
            Drawable icon = cache.create("metadata-" + i, () -> {
                loads.incrementAndGet();
                return new ColorDrawable(Color.RED);
            });
            icon.getConstantState().newDrawable();
        }
        assertEquals(0, loads.get());
    }

    @Test
    public void visibleCopiesShareDecodedPixelsWithoutSharingCallbacks() throws Exception {
        LauncherIconCache cache = cache();
        cache.invalidate();
        AtomicInteger loads = new AtomicInteger();
        Drawable first = cache.create("visible-copy", () -> {
            loads.incrementAndGet();
            return new ColorDrawable(Color.RED);
        });
        Drawable second = first.getConstantState().newDrawable();
        assertNotSame(first, second);
        CountDownLatch ready = new CountDownLatch(2);
        first.setCallback(callback(ready));
        second.setCallback(callback(ready));
        InstrumentationRegistry.getInstrumentation().runOnMainSync(() -> {
            Bitmap bitmap = Bitmap.createBitmap(64, 64, Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(bitmap);
            first.setBounds(0, 0, 64, 64);
            second.setBounds(0, 0, 64, 64);
            first.draw(canvas);
            second.draw(canvas);
            bitmap.recycle();
        });
        assertTrue(ready.await(5, TimeUnit.SECONDS));
        assertEquals(Color.RED, draw(first));
        assertEquals(Color.RED, draw(second));
        assertEquals(1, loads.get());
        first.setCallback(null);
        second.setCallback(null);
    }

    @Test
    public void invalidationDoesNotReuseOldThemePixels() throws Exception {
        LauncherIconCache cache = cache();
        cache.invalidate();
        Drawable oldIcon = cache.create("theme", () -> new ColorDrawable(Color.RED));
        awaitIcon(oldIcon);
        assertEquals(Color.RED, draw(oldIcon));
        cache.invalidate();
        Drawable newIcon = cache.create("theme", () -> new ColorDrawable(Color.BLUE));
        awaitIcon(newIcon);
        assertEquals(Color.BLUE, draw(newIcon));
        oldIcon.setCallback(null);
        newIcon.setCallback(null);
    }

    @Test
    public void memoryTrimDropsCachedPixelsEvenWhileMetadataExists() throws Exception {
        LauncherIconCache cache = cache();
        cache.invalidate();
        Drawable icon = cache.create("trim", () -> new ColorDrawable(Color.GREEN));
        awaitIcon(icon);
        assertTrue(cache.cachedBytes() > 0);
        cache.onTrimMemory(ComponentCallbacks2.TRIM_MEMORY_UI_HIDDEN);
        assertEquals(0, cache.cachedBytes());
        awaitIcon(icon);
        assertEquals(Color.GREEN, draw(icon));
        icon.setCallback(null);
    }

    private LauncherIconCache cache() {
        return LauncherIconCache.get(
                InstrumentationRegistry.getInstrumentation().getTargetContext());
    }

    private void awaitIcon(Drawable icon) throws Exception {
        CountDownLatch ready = new CountDownLatch(1);
        icon.setCallback(callback(ready));
        draw(icon);
        assertTrue(ready.await(5, TimeUnit.SECONDS));
    }

    private Drawable.Callback callback(CountDownLatch ready) {
        return new Drawable.Callback() {
            @Override
            public void invalidateDrawable(Drawable who) {
                ready.countDown();
            }

            @Override
            public void scheduleDrawable(Drawable who, Runnable action, long when) {
            }

            @Override
            public void unscheduleDrawable(Drawable who, Runnable action) {
            }
        };
    }

    private int draw(Drawable icon) {
        int[] color = new int[1];
        InstrumentationRegistry.getInstrumentation().runOnMainSync(() -> {
            Bitmap bitmap = Bitmap.createBitmap(64, 64, Bitmap.Config.ARGB_8888);
            icon.setBounds(0, 0, 64, 64);
            icon.draw(new Canvas(bitmap));
            color[0] = bitmap.getPixel(32, 32);
            bitmap.recycle();
        });
        return color[0];
    }
}
