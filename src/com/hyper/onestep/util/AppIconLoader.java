package com.hyper.onestep.util;

import android.content.ComponentName;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Process;

import com.hyper.onestep.lsp.LSPLogger;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/** Loads package icons away from the UI thread and coalesces duplicate component requests. */
public final class AppIconLoader {
    private static final int WORKER_COUNT = 2;
    private static final int MAX_ATTEMPTS = 8;
    private static final long RETRY_DELAY_MS = 500L;
    /** 冷启动时 PackageManager 可能几十秒后才就绪，快速重试耗尽后转入慢速自愈 */
    private static final int MAX_SLOW_ATTEMPTS = 5;
    private static final long SLOW_RETRY_DELAY_MS = 30L * 1000L;

    public interface Callback {
        boolean isValid();
        void onIconLoaded(AppItem app, Drawable icon);
    }

    private static volatile AppIconLoader sInstance;

    private final Handler mMainHandler = new Handler(Looper.getMainLooper());
    private final Handler[] mWorkers = new Handler[WORKER_COUNT];
    private final Map<ComponentName, List<Callback>> mCallbacks =
            new HashMap<ComponentName, List<Callback>>();

    public static AppIconLoader getInstance() {
        if (sInstance == null) {
            synchronized (AppIconLoader.class) {
                if (sInstance == null) sInstance = new AppIconLoader();
            }
        }
        return sInstance;
    }

    private AppIconLoader() {
        for (int i = 0; i < WORKER_COUNT; i++) {
            HandlerThread thread = new HandlerThread("OneStep-AppIcon-" + i,
                    Process.THREAD_PRIORITY_BACKGROUND);
            thread.start();
            mWorkers[i] = new Handler(thread.getLooper());
        }
    }

    public void load(final AppItem app, Callback callback) {
        if (app == null || callback == null) return;
        Drawable cached = app.getCachedAvatar();
        if (cached != null) {
            deliver(app, cached, callback);
            return;
        }
        final ComponentName component = app.mName;
        synchronized (mCallbacks) {
            List<Callback> callbacks = mCallbacks.get(component);
            if (callbacks != null) {
                callbacks.add(callback);
                return;
            }
            callbacks = new ArrayList<Callback>();
            callbacks.add(callback);
            mCallbacks.put(component, callbacks);
        }
        Handler worker = mWorkers[Math.floorMod(component.hashCode(), WORKER_COUNT)];
        worker.post(new Runnable() {
            @Override
            public void run() {
                resolve(app, component, 1);
            }
        });
    }

    private void resolve(final AppItem app, final ComponentName component, final int attempt) {
        Drawable icon;
        try {
            icon = app.resolveAvatar();
        } catch (Throwable t) {
            // 解析异常（PM 查询/图标加载）不放弃：进入重试，避免冷启动 PM 未就绪时占位符永久停留
            LSPLogger.w("AppIconLoader: resolve threw for "
                    + component.flattenToShortString() + ": " + t);
            icon = null;
        }
        if (icon != null) {
            LSPLogger.i("AppIconLoader: resolved " + component.flattenToShortString()
                    + " attempt=" + attempt);
            deliverAll(app, component, icon);
            return;
        }
        if (attempt >= MAX_ATTEMPTS + MAX_SLOW_ATTEMPTS) {
            LSPLogger.w("AppIconLoader: unresolved after all retries "
                    + component.flattenToShortString());
            deliverAll(app, component, null);
            return;
        }
        if (attempt >= MAX_ATTEMPTS) {
            LSPLogger.d("AppIconLoader: slow retry=" + (attempt - MAX_ATTEMPTS + 1) + "/"
                    + MAX_SLOW_ATTEMPTS + " component=" + component.flattenToShortString());
        } else {
            LSPLogger.d("AppIconLoader: retry=" + attempt + " component="
                    + component.flattenToShortString());
        }
        final long delay = attempt >= MAX_ATTEMPTS
                ? SLOW_RETRY_DELAY_MS : RETRY_DELAY_MS * attempt;
        Handler worker = mWorkers[Math.floorMod(component.hashCode(), WORKER_COUNT)];
        worker.postDelayed(new Runnable() {
            @Override
            public void run() {
                resolve(app, component, attempt + 1);
            }
        }, delay);
    }

    private void deliver(final AppItem app, final Drawable icon, final Callback callback) {
        mMainHandler.post(new Runnable() {
            @Override
            public void run() {
                if (callback.isValid()) callback.onIconLoaded(app, icon);
            }
        });
    }

    private void deliverAll(final AppItem app, ComponentName component, final Drawable icon) {
        final List<Callback> callbacks;
        synchronized (mCallbacks) {
            callbacks = mCallbacks.remove(component);
        }
        if (callbacks == null) return;
        mMainHandler.post(new Runnable() {
            @Override
            public void run() {
                for (Callback callback : callbacks) {
                    if (callback.isValid()) callback.onIconLoaded(app, icon);
                }
            }
        });
    }
}
