package com.hyper.onestep.util;

import android.content.ComponentName;
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
        Drawable icon = app.resolveAvatar();
        if (icon != null || attempt >= MAX_ATTEMPTS) {
            if (icon == null) {
                LSPLogger.w("AppIconLoader: unresolved after retries "
                        + component.flattenToShortString());
            } else {
                LSPLogger.i("AppIconLoader: resolved " + component.flattenToShortString()
                        + " attempt=" + attempt);
            }
            deliverAll(app, component, icon);
            return;
        }
        LSPLogger.d("AppIconLoader: retry=" + attempt + " component="
                + component.flattenToShortString());
        Handler worker = mWorkers[Math.floorMod(component.hashCode(), WORKER_COUNT)];
        worker.postDelayed(new Runnable() {
            @Override
            public void run() {
                resolve(app, component, attempt + 1);
            }
        }, RETRY_DELAY_MS * attempt);
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
