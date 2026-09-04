package com.hyper.onestep.root;

import android.content.Context;
import android.media.session.MediaSessionManager;
import android.media.session.MediaController;
import android.os.SystemClock;
import android.view.KeyEvent;

import com.hyper.onestep.lsp.LSPLogger;

import java.util.ArrayList;
import java.util.List;

public final class RootBridgeManager {
    private static final String TAG = "RootBridge";

    private static volatile RootBridgeManager sInstance;

    private final Context mContext;

    private RootBridgeManager(Context context) {
        mContext = context.getApplicationContext();
    }

    public static RootBridgeManager getInstance(Context context) {
        if (sInstance == null) {
            synchronized (RootBridgeManager.class) {
                if (sInstance == null) {
                    sInstance = new RootBridgeManager(context);
                }
            }
        }
        return sInstance;
    }

    public List<String> getMediaSessions() {
        List<String> packages = new ArrayList<>();
        try {
            MediaSessionManager msm = (MediaSessionManager)
                    mContext.getSystemService(Context.MEDIA_SESSION_SERVICE);
            List<MediaController> controllers = msm.getActiveSessions(null);
            for (MediaController controller : controllers) {
                String pkg = controller.getPackageName();
                if (pkg != null && !packages.contains(pkg)) {
                    packages.add(pkg);
                }
            }
        } catch (Throwable t) {
            LSPLogger.w(TAG, "getMediaSessions failed: " + t);
        }
        return packages;
    }

    public boolean sendMediaKey(String action) {
        int code;
        switch (action == null ? "" : action) {
            case "next":
                code = KeyEvent.KEYCODE_MEDIA_NEXT;
                break;
            case "previous":
                code = KeyEvent.KEYCODE_MEDIA_PREVIOUS;
                break;
            case "play_pause":
            default:
                code = KeyEvent.KEYCODE_MEDIA_PLAY_PAUSE;
                break;
        }
        try {
            android.media.AudioManager am = (android.media.AudioManager)
                    mContext.getSystemService(Context.AUDIO_SERVICE);
            long now = SystemClock.uptimeMillis();
            am.dispatchMediaKeyEvent(new KeyEvent(now, now, KeyEvent.ACTION_DOWN, code, 0));
            am.dispatchMediaKeyEvent(new KeyEvent(now, now, KeyEvent.ACTION_UP, code, 0));
            return true;
        } catch (Throwable t) {
            LSPLogger.w(TAG, "sendMediaKey " + action + " failed: " + t);
            return false;
        }
    }
}
