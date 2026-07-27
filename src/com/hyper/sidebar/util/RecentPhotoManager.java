package com.hyper.sidebar.util;

import java.io.File;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import android.content.Context;
import android.content.ContentResolver;
import android.content.SharedPreferences;
import android.database.ContentObserver;
import android.database.Cursor;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.Bundle;
import android.os.Environment;
import android.os.SystemClock;
import android.os.UserManager;
import android.provider.MediaStore;
import android.text.TextUtils;

import com.hyper.sidebar.SidebarController;
import com.hyper.sidebar.lsp.LSPLogger;

import org.json.JSONArray;
import org.json.JSONObject;

public class RecentPhotoManager extends DataManager implements IClear{
    private static final LOG log = LOG.getInstance(RecentPhotoManager.class);

    private static final String PREFS_NAME = "onestep_recent_photo_cache";
    private static final String PREFS_KEY_ITEMS = "items";
    private static final String JSON_KEY_PATH = "path";
    private static final String JSON_KEY_MIME = "mime";
    private static final String JSON_KEY_TIME = "time";
    private static final String JSON_KEY_ID = "id";
    private static final int MAX_PERSISTED_ITEMS = 200;
    private static final int MAX_QUERY_ITEMS = 600;
    private static final long REFRESH_TTL_MS = 30_000L;
    private static final long RETRY_DELAY_MS = 2000L;

    public static boolean isSupportedType(String path) {
        return !TextUtils.isEmpty(path);
    }

    private volatile static RecentPhotoManager sInstance;
    public synchronized static RecentPhotoManager getInstance(Context context){
        if(sInstance == null){
            synchronized(RecentPhotoManager.class){
                if(sInstance == null){
                    sInstance = new RecentPhotoManager(context);
                }
            }
        }
        return sInstance;
    }

    private static final String[] MEDIA_COLUMNS = new String[] {
        MediaStore.Files.FileColumns.DATA,
        MediaStore.Files.FileColumns.MIME_TYPE,
        MediaStore.MediaColumns.DATE_TAKEN,
        MediaStore.Files.FileColumns.DATE_ADDED,
        MediaStore.Files.FileColumns._ID,
        MediaStore.Files.FileColumns.MEDIA_TYPE,
    };

    private static final String DATABASE_NAME = "UselessPhoto";

    private final Context mContext;
    private List<ImageInfo> mList = new ArrayList<ImageInfo>();
    private final ClearDatabaseHelper mDatabaseHelper;
    private final Handler mHandler;
    private final ImageObserver mImageObserver;
    private final SharedPreferences mPreferences;
    private boolean mRegistered;
    private int mObserverClients;
    private int mClearGeneration;
    private long mLastRefreshElapsed;
    private RecentPhotoManager(Context context) {
        mContext = resolveOperationContext(context);
        HandlerThread thread = new HandlerThread(RecentPhotoManager.class.getName());
        thread.start();
        mHandler = new PhotoManagerHandler(thread.getLooper());
        mPreferences = openPreferences(mContext);
        restoreSnapshot();
        mImageObserver = new ImageObserver(mHandler);
        mDatabaseHelper = new ClearDatabaseHelper(mContext, DATABASE_NAME, mCallback);
        LSPLogger.i("RecentPhotoManager: operation context=" + mContext.getPackageName());
    }

    private static Context resolveOperationContext(Context context) {
        Context resolved = context;
        try {
            SidebarController controller = SidebarController.peekInstance();
            if (controller != null && controller.getHostContext() != null) {
                resolved = controller.getHostContext();
            }
        } catch (Throwable t) {
            LSPLogger.w("RecentPhotoManager: host context unavailable: " + t);
        }
        Context application = resolved == null ? null : resolved.getApplicationContext();
        return application == null ? resolved : application;
    }

    private static SharedPreferences openPreferences(Context context) {
        if (context == null) {
            return null;
        }
        try {
            Context storageContext = context;
            if (!context.isDeviceProtectedStorage()) {
                Context deviceContext = context.createDeviceProtectedStorageContext();
                if (deviceContext != null) {
                    storageContext = deviceContext;
                }
            }
            return storageContext.getSharedPreferences(PREFS_NAME, Context.MODE_PRIVATE);
        } catch (Throwable t) {
            LSPLogger.e("RecentPhotoManager: open snapshot preferences failed", t);
            return null;
        }
    }

    public void startObserver() {
        synchronized (mImageObserver) {
            mObserverClients++;
            if (mObserverClients != 1) {
                return;
            }
            try {
                mContext.getContentResolver().registerContentObserver(
                        MediaStore.Files.getContentUri(MediaStore.VOLUME_EXTERNAL),
                        true, mImageObserver);
                mRegistered = true;
            } catch (Throwable t) {
                LSPLogger.e("RecentPhotoManager.startObserver failed", t);
            }
        }
        if (isRefreshStale()) {
            sendMessageIfNotExist(MSG_UPDATE_IMAGE_LIST);
        }
    }

    public void stopObserver() {
        synchronized (mImageObserver) {
            if (mObserverClients == 0) {
                LSPLogger.w("RecentPhotoManager.stopObserver without matching start");
                return;
            }
            mObserverClients--;
            if (mObserverClients != 0) {
                return;
            }
            if (mRegistered) {
                try {
                    mContext.getContentResolver().unregisterContentObserver(mImageObserver);
                } catch (Throwable t) {
                    LSPLogger.w("RecentPhotoManager.stopObserver failed: " + t);
                }
                mRegistered = false;
                mHandler.removeMessages(MSG_UPDATE_IMAGE_LIST);
            }
        }
    }

    private ClearDatabaseHelper.Callback mCallback = new ClearDatabaseHelper.Callback(){
        @Override
        public void onInitComplete() {
            sendMessageIfNotExist(MSG_UPDATE_IMAGE_LIST);
        }
    };

    public List<ImageInfo> getImageList(){
        List<ImageInfo> list =new ArrayList<ImageInfo>();
        synchronized(RecentPhotoManager.class){
            list.addAll(mList);
        }
        return list;
    }

    private void updateImageList() {
        ThreadVerify.verify(false);
        if (!mDatabaseHelper.isDataSetOk()) {
            return;
        }
        if (!isExternalStorageReady()) {
            LSPLogger.w("RecentPhotoManager.updateImageList: storage not ready; keeping snapshot");
            scheduleRetry();
            return;
        }
        final int clearGeneration = getClearGeneration();
        List<ImageInfo> imageList = new ArrayList<ImageInfo>();
        Set<Integer> useless = mDatabaseHelper.getSet();
        Cursor cursor = null;
        int queriedCount = 0;
        boolean querySucceeded = false;
        try {
            String mediaTypeColumn = MediaStore.Files.FileColumns.MEDIA_TYPE;
            String selection = mediaTypeColumn + "=? OR " + mediaTypeColumn + "=?";
            String[] selectionArgs = new String[] {
                    Integer.toString(MediaStore.Files.FileColumns.MEDIA_TYPE_IMAGE),
                    Integer.toString(MediaStore.Files.FileColumns.MEDIA_TYPE_VIDEO),
            };
            String sortOrder = MediaStore.Files.FileColumns.DATE_ADDED + " DESC, "
                    + MediaStore.Files.FileColumns._ID + " DESC";
            Bundle queryArgs = new Bundle();
            queryArgs.putString(ContentResolver.QUERY_ARG_SQL_SELECTION, selection);
            queryArgs.putStringArray(ContentResolver.QUERY_ARG_SQL_SELECTION_ARGS,
                    selectionArgs);
            queryArgs.putString(ContentResolver.QUERY_ARG_SQL_SORT_ORDER, sortOrder);
            queryArgs.putInt(ContentResolver.QUERY_ARG_LIMIT, MAX_QUERY_ITEMS);
            cursor = mContext.getContentResolver().query(
                    MediaStore.Files.getContentUri(MediaStore.VOLUME_EXTERNAL),
                    MEDIA_COLUMNS, queryArgs, null);
            if (cursor == null) {
                LSPLogger.w("RecentPhotoManager.updateImageList: MediaStore returned null cursor");
            } else if (cursor.moveToFirst()) {
                querySucceeded = true;
                do {
                    queriedCount++;
                    ImageInfo info = new ImageInfo();
                    info.filePath = cursor.getString(cursor.getColumnIndexOrThrow(
                            MediaStore.Files.FileColumns.DATA));
                    info.mimeType = cursor.getString(cursor.getColumnIndexOrThrow(
                            MediaStore.Files.FileColumns.MIME_TYPE));
                    info.time = cursor.getLong(cursor.getColumnIndexOrThrow(
                            MediaStore.MediaColumns.DATE_TAKEN));
                    if (info.time <= 0L) {
                        info.time = cursor.getLong(cursor.getColumnIndexOrThrow(
                                MediaStore.Files.FileColumns.DATE_ADDED)) * 1000L;
                    }
                    info.id = cursor.getInt(cursor.getColumnIndexOrThrow(
                            MediaStore.Files.FileColumns._ID));
                    if (!TextUtils.isEmpty(info.filePath)&& !TextUtils.isEmpty(info.mimeType)) {
                        if (!useless.contains(info.id) && isSupportedType(info.filePath)) {
                            imageList.add(info);
                        }
                    }
                } while (cursor.moveToNext());
            } else {
                querySucceeded = true;
            }
        } catch (Throwable t) {
            LSPLogger.e("RecentPhotoManager.updateImageList query failed", t);
        } finally {
            if (cursor != null) {
                cursor.close();
            }
        }
        if (!querySucceeded) {
            scheduleRetry();
            return;
        }
        if (queriedCount == 0 && hasExistingCurrentItem()) {
            LSPLogger.w("RecentPhotoManager.updateImageList: empty MediaStore result; "
                    + "keeping existing snapshot");
            scheduleRetry();
            return;
        }

        boolean staleResult = false;
        synchronized (RecentPhotoManager.class) {
            if (clearGeneration != mClearGeneration) {
                staleResult = true;
            } else {
                mList = imageList;
            }
        }
        if (staleResult) {
            LSPLogger.w("RecentPhotoManager.updateImageList: discarded result after clear");
            sendMessageIfNotExist(MSG_UPDATE_IMAGE_LIST);
            return;
        }
        persistSnapshot();
        mLastRefreshElapsed = SystemClock.elapsedRealtime();
        LSPLogger.i("RecentPhotoManager.updateImageList: queried=" + queriedCount
                + " visible=" + imageList.size() + " cleared=" + useless.size());
        notifyListener();
    }

    private int getClearGeneration() {
        synchronized (RecentPhotoManager.class) {
            return mClearGeneration;
        }
    }

    private boolean hasExistingCurrentItem() {
        List<ImageInfo> current = new ArrayList<ImageInfo>();
        synchronized (RecentPhotoManager.class) {
            int count = Math.min(mList.size(), MAX_PERSISTED_ITEMS);
            for (int i = 0; i < count; i++) {
                current.add(mList.get(i));
            }
        }
        for (ImageInfo info : current) {
            if (info != null && !TextUtils.isEmpty(info.filePath)
                    && new File(info.filePath).exists()) {
                return true;
            }
        }
        return false;
    }

    private boolean isExternalStorageReady() {
        try {
            UserManager userManager = (UserManager) mContext.getSystemService(Context.USER_SERVICE);
            if (userManager != null && !userManager.isUserUnlocked()) {
                return false;
            }
            String state = Environment.getExternalStorageState();
            return Environment.MEDIA_MOUNTED.equals(state)
                    || Environment.MEDIA_MOUNTED_READ_ONLY.equals(state);
        } catch (Throwable t) {
            LSPLogger.w("RecentPhotoManager: storage readiness check failed: " + t);
            return false;
        }
    }

    private void scheduleRetry() {
        synchronized (mImageObserver) {
            if (mObserverClients <= 0 || mHandler.hasMessages(MSG_UPDATE_IMAGE_LIST)) {
                return;
            }
            mHandler.sendEmptyMessageDelayed(MSG_UPDATE_IMAGE_LIST, RETRY_DELAY_MS);
        }
    }

    private void restoreSnapshot() {
        if (mPreferences == null) {
            return;
        }
        String encoded;
        try {
            encoded = mPreferences.getString(PREFS_KEY_ITEMS, null);
        } catch (Throwable t) {
            LSPLogger.e("RecentPhotoManager: read snapshot failed", t);
            return;
        }
        if (TextUtils.isEmpty(encoded)) {
            return;
        }

        List<ImageInfo> restored = new ArrayList<ImageInfo>();
        Set<String> seen = new HashSet<String>();
        try {
            JSONArray array = new JSONArray(encoded);
            int count = Math.min(array.length(), MAX_PERSISTED_ITEMS);
            for (int i = 0; i < count; i++) {
                JSONObject object = array.optJSONObject(i);
                if (object == null) {
                    continue;
                }
                String path = object.optString(JSON_KEY_PATH, null);
                String mime = object.optString(JSON_KEY_MIME, null);
                if (TextUtils.isEmpty(path) || TextUtils.isEmpty(mime)
                        || !seen.add(path) || !isSupportedType(path)) {
                    continue;
                }
                ImageInfo info = new ImageInfo();
                info.filePath = path;
                info.mimeType = mime;
                info.time = object.optLong(JSON_KEY_TIME, 0L);
                info.id = object.optInt(JSON_KEY_ID, 0);
                restored.add(info);
            }
        } catch (Throwable t) {
            LSPLogger.e("RecentPhotoManager: stored snapshot is invalid ("
                    + t.getClass().getSimpleName() + ")");
            return;
        }

        synchronized (RecentPhotoManager.class) {
            mList = restored;
        }
        LSPLogger.i("RecentPhotoManager: restored snapshot count=" + restored.size());
    }

    private void persistSnapshot() {
        if (mPreferences == null) {
            return;
        }

        final String encoded;
        try {
            JSONArray array = new JSONArray();
            synchronized (RecentPhotoManager.class) {
                int count = Math.min(mList.size(), MAX_PERSISTED_ITEMS);
                for (int i = 0; i < count; i++) {
                    ImageInfo info = mList.get(i);
                    if (info == null || TextUtils.isEmpty(info.filePath)
                            || TextUtils.isEmpty(info.mimeType)) {
                        continue;
                    }
                    JSONObject object = new JSONObject();
                    object.put(JSON_KEY_PATH, info.filePath);
                    object.put(JSON_KEY_MIME, info.mimeType);
                    object.put(JSON_KEY_TIME, info.time);
                    object.put(JSON_KEY_ID, info.id);
                    array.put(object);
                }
            }
            encoded = array.toString();
        } catch (Throwable t) {
            LSPLogger.e("RecentPhotoManager: encode snapshot failed ("
                    + t.getClass().getSimpleName() + ")");
            return;
        }

        mHandler.post(new Runnable() {
            @Override
            public void run() {
                try {
                    if (!mPreferences.edit().putString(PREFS_KEY_ITEMS, encoded).commit()) {
                        LSPLogger.e("RecentPhotoManager: persist snapshot commit failed");
                    }
                } catch (Throwable t) {
                    LSPLogger.e("RecentPhotoManager: persist snapshot failed", t);
                }
            }
        });
    }

    private class ImageObserver extends ContentObserver{
        public ImageObserver(Handler handler) {
            super(handler);
        }

        @Override
        public void onChange(boolean selfChange) {
            super.onChange(selfChange);
            sendMessageIfNotExist(MSG_UPDATE_IMAGE_LIST);
        }
    }

    @Override
    public void clear() {
        List<Integer> clearList = new ArrayList<Integer>();
        synchronized (RecentPhotoManager.class) {
            mClearGeneration++;
            for(ImageInfo fi : mList){
                clearList.add(fi.id);
            }
            mDatabaseHelper.addUselessId(clearList);
            mList.clear();
        }
        persistSnapshot();
        notifyListener();
    }

    public void refresh() {
        notifyListener();
        if (isRefreshStale()) {
            sendMessageIfNotExist(MSG_UPDATE_IMAGE_LIST);
        }
    }

    private boolean isRefreshStale() {
        return mLastRefreshElapsed == 0L
                || SystemClock.elapsedRealtime() - mLastRefreshElapsed >= REFRESH_TTL_MS;
    }

    private void sendMessageIfNotExist(int msgId) {
        if (!mHandler.hasMessages(msgId)) {
            mHandler.obtainMessage(msgId).sendToTarget();
        }
    }

    private static final int MSG_UPDATE_IMAGE_LIST = 0;
    private class PhotoManagerHandler extends Handler {
        public PhotoManagerHandler(Looper looper) {
            super(looper);
        }

        @Override
        public void handleMessage(Message msg) {
            switch (msg.what) {
            case MSG_UPDATE_IMAGE_LIST:
                updateImageList();
                break;
            }
        }
    }
}
