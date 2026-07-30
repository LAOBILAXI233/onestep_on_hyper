package com.hyper.onestep.util;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.CopyHistoryItem;
import android.content.IClipboardListener;
import android.content.SharedPreferences;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Process;
import android.os.RemoteException;
import android.text.TextUtils;

import com.hyper.onestep.SidebarController;
import com.hyper.onestep.lsp.LSPLogger;

import org.json.JSONArray;
import org.json.JSONObject;

/**
 * Clipboard history backed by SystemUI-owned preferences.
 *
 * AOSP exposes only the current primary clip. OneStep therefore records text
 * clips observed by SystemUI and persists a bounded local history itself.
 */
public class RecentClipManager extends DataManager implements IClear {
    private static final String PREFS_NAME = "onestep_clipboard_history";
    private static final String PREFS_KEY_HISTORY = "history";
    private static final String JSON_KEY_CONTENT = "content";
    private static final String JSON_KEY_TIME = "time";
    private static final int MAX_HISTORY_SIZE = 50;

    private volatile static RecentClipManager sInstance;

    public synchronized static RecentClipManager getInstance(Context context) {
        if (sInstance == null) {
            synchronized (RecentClipManager.class) {
                if (sInstance == null) {
                    sInstance = new RecentClipManager(context);
                }
            }
        }
        return sInstance;
    }

    private final Context mContext;
    private final ClipboardManager mClipboard;
    private final SharedPreferences mPreferences;
    private final List<CopyHistoryItem> mHistory = new ArrayList<CopyHistoryItem>();
    private final Handler mMainHandler = new Handler(Looper.getMainLooper());
    private final HandlerThread mStoreThread;
    private final Handler mStoreHandler;

    private RecentClipManager(Context context) {
        mContext = resolveOperationContext(context);
        mClipboard = mContext == null ? null
                : (ClipboardManager) mContext.getSystemService(Context.CLIPBOARD_SERVICE);

        SharedPreferences preferences = null;
        if (mContext != null) {
            try {
                preferences = openPreferences(mContext);
            } catch (Throwable t) {
                LSPLogger.e("RecentClipManager: open history preferences failed", t);
            }
        }
        mPreferences = preferences;

        mStoreThread = new HandlerThread(
                RecentClipManager.class.getName() + ".Store",
                Process.THREAD_PRIORITY_BACKGROUND);
        mStoreThread.start();
        mStoreHandler = new Handler(mStoreThread.getLooper());

        restoreHistory();
        recordPrimaryClip(false);
        registerPrimaryClipListener();
    }

    private static SharedPreferences openPreferences(Context context) {
        Context storageContext = context;
        if (!context.isDeviceProtectedStorage()) {
            Context deviceContext = context.createDeviceProtectedStorageContext();
            if (deviceContext != null) {
                storageContext = deviceContext;
            }
        }
        return storageContext.getSharedPreferences(PREFS_NAME, Context.MODE_PRIVATE);
    }

    private static Context resolveOperationContext(Context fallback) {
        try {
            SidebarController controller = SidebarController.peekInstance();
            if (controller != null && controller.getHostContext() != null) {
                Context hostContext = controller.getHostContext();
                Context applicationContext = hostContext.getApplicationContext();
                LSPLogger.i("RecentClipManager: using SystemUI host context");
                return applicationContext == null ? hostContext : applicationContext;
            }
        } catch (Throwable t) {
            LSPLogger.e("RecentClipManager: resolve SystemUI host context failed", t);
        }

        if (fallback == null) {
            LSPLogger.e("RecentClipManager: no operation context available");
            return null;
        }
        Context applicationContext = fallback.getApplicationContext();
        LSPLogger.w("RecentClipManager: SystemUI host context unavailable; using fallback");
        return applicationContext == null ? fallback : applicationContext;
    }

    private void registerPrimaryClipListener() {
        if (mClipboard == null) {
            LSPLogger.w("RecentClipManager: ClipboardManager unavailable");
            return;
        }
        try {
            mClipboard.addPrimaryClipChangedListener(
                    new ClipboardManager.OnPrimaryClipChangedListener() {
                @Override
                public void onPrimaryClipChanged() {
                    LSPLogger.d("RecentClipManager: primary clip changed");
                    try {
                        mListener.onCopyHistoryChanged();
                    } catch (RemoteException e) {
                        LSPLogger.e("RecentClipManager: history callback failed", e);
                    }
                }
            });
            LSPLogger.i("RecentClipManager: registered primary clip listener");
        } catch (Throwable t) {
            LSPLogger.e("RecentClipManager: register primary clip listener failed", t);
        }
    }

    public List<CopyHistoryItem> getCopyList() {
        synchronized (mHistory) {
            List<CopyHistoryItem> copy = new ArrayList<CopyHistoryItem>(mHistory.size());
            for (CopyHistoryItem item : mHistory) {
                copy.add(new CopyHistoryItem(item.mContent, item.mTimeStamp));
            }
            return copy;
        }
    }

    public boolean remove(CopyHistoryItem item) {
        if (item == null || TextUtils.isEmpty(item.mContent)) {
            return false;
        }

        boolean removed = false;
        synchronized (mHistory) {
            for (int i = 0; i < mHistory.size(); i++) {
                CopyHistoryItem candidate = mHistory.get(i);
                if (TextUtils.equals(candidate.mContent, item.mContent)
                        && candidate.mTimeStamp == item.mTimeStamp) {
                    mHistory.remove(i);
                    removed = true;
                    persistHistoryLocked();
                    break;
                }
            }
        }
        if (!removed) {
            notifyListenersOnMainThread();
            return false;
        }

        CharSequence currentText = getPrimaryText();
        if (currentText != null && TextUtils.equals(currentText, item.mContent)) {
            clearSystemPrimaryClip("remove");
        }
        notifyListenersOnMainThread();
        return true;
    }

    private boolean recordPrimaryClip(boolean updateTimestamp) {
        CharSequence currentText = getPrimaryText();
        if (TextUtils.isEmpty(currentText)) {
            return false;
        }

        String content = currentText.toString();
        synchronized (mHistory) {
            long timestamp = System.currentTimeMillis();
            for (int i = mHistory.size() - 1; i >= 0; i--) {
                if (TextUtils.equals(mHistory.get(i).mContent, content)) {
                    if (!updateTimestamp && mHistory.get(i).mTimeStamp > 0L) {
                        timestamp = mHistory.get(i).mTimeStamp;
                    }
                    mHistory.remove(i);
                }
            }
            mHistory.add(0, new CopyHistoryItem(content, timestamp));
            while (mHistory.size() > MAX_HISTORY_SIZE) {
                mHistory.remove(mHistory.size() - 1);
            }
            persistHistoryLocked();
        }
        return true;
    }

    private CharSequence getPrimaryText() {
        if (mClipboard == null) {
            return null;
        }
        try {
            if (!mClipboard.hasPrimaryClip()) {
                return null;
            }
            ClipData clipData = mClipboard.getPrimaryClip();
            if (clipData == null || clipData.getItemCount() == 0) {
                return null;
            }
            ClipData.Item item = clipData.getItemAt(0);
            return item == null ? null : item.getText();
        } catch (Throwable t) {
            LSPLogger.e("RecentClipManager: read primary clip failed", t);
            return null;
        }
    }

    private boolean clearSystemPrimaryClip(String source) {
        if (mClipboard == null) {
            return false;
        }
        try {
            mClipboard.clearPrimaryClip();
            return true;
        } catch (Throwable t) {
            LSPLogger.e("RecentClipManager." + source + ": clear primary clip failed", t);
            return false;
        }
    }

    private void restoreHistory() {
        if (mPreferences == null) {
            return;
        }
        String encoded;
        try {
            encoded = mPreferences.getString(PREFS_KEY_HISTORY, null);
        } catch (Throwable t) {
            LSPLogger.e("RecentClipManager: read history preferences failed", t);
            return;
        }
        if (TextUtils.isEmpty(encoded)) {
            return;
        }

        List<CopyHistoryItem> restored = new ArrayList<CopyHistoryItem>();
        Set<String> seen = new HashSet<String>();
        try {
            JSONArray array = new JSONArray(encoded);
            int count = Math.min(array.length(), MAX_HISTORY_SIZE);
            for (int i = 0; i < count; i++) {
                JSONObject object = array.optJSONObject(i);
                if (object == null || object.isNull(JSON_KEY_CONTENT)) {
                    continue;
                }
                String content = object.optString(JSON_KEY_CONTENT, null);
                if (TextUtils.isEmpty(content) || !seen.add(content)) {
                    continue;
                }
                long time = object.optLong(JSON_KEY_TIME, 0L);
                if (time <= 0L) {
                    time = System.currentTimeMillis();
                }
                restored.add(new CopyHistoryItem(content, time));
            }
        } catch (Throwable t) {
            // JSONException may include the source string, so do not log its message.
            LSPLogger.e("RecentClipManager: stored history is invalid ("
                    + t.getClass().getSimpleName() + ")");
            return;
        }

        synchronized (mHistory) {
            mHistory.clear();
            mHistory.addAll(restored);
        }
        LSPLogger.i("RecentClipManager: restored history count=" + restored.size());
    }

    private void persistHistoryLocked() {
        if (mPreferences == null) {
            return;
        }

        final String encoded;
        try {
            JSONArray array = new JSONArray();
            for (CopyHistoryItem item : mHistory) {
                JSONObject object = new JSONObject();
                object.put(JSON_KEY_CONTENT, item.mContent);
                object.put(JSON_KEY_TIME, item.mTimeStamp);
                array.put(object);
            }
            encoded = array.toString();
        } catch (Throwable t) {
            LSPLogger.e("RecentClipManager: encode history failed ("
                    + t.getClass().getSimpleName() + ")");
            return;
        }

        mStoreHandler.post(new Runnable() {
            @Override
            public void run() {
                try {
                    boolean committed = mPreferences.edit()
                            .putString(PREFS_KEY_HISTORY, encoded)
                            .commit();
                    if (!committed) {
                        LSPLogger.e("RecentClipManager: persist history commit failed");
                    }
                } catch (Throwable t) {
                    LSPLogger.e("RecentClipManager: persist history failed", t);
                }
            }
        });
    }

    private void notifyListenersOnMainThread() {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            notifyListener();
        } else {
            mMainHandler.post(new Runnable() {
                @Override
                public void run() {
                    notifyListener();
                }
            });
        }
    }

    @Override
    public void clear() {
        synchronized (mHistory) {
            mHistory.clear();
            persistHistoryLocked();
        }
        clearSystemPrimaryClip("clear");
        notifyListenersOnMainThread();
    }

    private final IClipboardListener mListener = new IClipboardListener.Stub() {
        @Override
        public void onCopyHistoryChanged() throws RemoteException {
            recordPrimaryClip(true);
            notifyListenersOnMainThread();
        }
    };

    public void refresh() {
        recordPrimaryClip(false);
        notifyListenersOnMainThread();
    }
}
