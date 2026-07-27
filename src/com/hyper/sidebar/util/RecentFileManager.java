package com.hyper.sidebar.util;

import android.content.Context;
import android.content.ContentResolver;
import android.content.SharedPreferences;
import android.database.ContentObserver;
import android.database.Cursor;
import android.net.Uri;
import android.os.Environment;
import android.os.FileObserver;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Bundle;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.os.UserManager;
import android.provider.MediaStore;
import android.provider.MediaStore.Files.FileColumns;
import android.text.TextUtils;
import android.util.Log;

import com.hyper.sidebar.SidebarController;
import com.hyper.sidebar.lsp.LSPLogger;

import org.json.JSONArray;
import org.json.JSONObject;

import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class RecentFileManager extends DataManager implements IClear{

    private static final String TAG = RecentFileManager.class.getName();
    private static final String DB_NAME = "UselessFile";
    private static final String PREFS_NAME = "onestep_recent_file_cache";
    private static final String PREFS_KEY_ITEMS = "items";
    private static final String JSON_KEY_PATH = "path";
    private static final String JSON_KEY_MIME = "mime";
    private static final String JSON_KEY_TIME = "time";
    private static final int MAX_PERSISTED_ITEMS = 200;
    private static final int MAX_QUERY_ITEMS = 1000;
    private static final long DATABASE_REFRESH_TTL_MS = 30_000L;
    private static final long FOLDER_REFRESH_TTL_MS = 5L * 60L * 1000L;
    private static final long RETRY_DELAY_MS = 2000L;

    private volatile static RecentFileManager sInstance;
    public synchronized static RecentFileManager getInstance(Context context){
        if(sInstance == null){
            synchronized(RecentFileManager.class){
                if(sInstance == null){
                    sInstance = new RecentFileManager(context);
                }
            }
        }
        return sInstance;
    }

    private static final String[] FILE_PROJECTION = new String[] {
        FileColumns._ID,
        FileColumns.TITLE,
        FileColumns.DATA,
        FileColumns.SIZE,
        FileColumns.DATE_MODIFIED,
        FileColumns.MIME_TYPE,
    };

    private final Context mContext;
    private final Handler mHandler;
    private final SharedPreferences mPreferences;

    private static final int MSG_UPDATE_DATABASE_LIST = 0;
    private static final int MSG_SEARCH_FILE = 1;

    private static final String VOLUME_EXTERNAL = "external";
    private static final Uri FILES_URI = MediaStore.Files.getContentUri(VOLUME_EXTERNAL);
    private static final String FILE_SORT_ORDER = FileColumns.DATE_MODIFIED + " DESC, "
            + FileColumns._ID + " DESC";

    private static final String[] TARGET_DIR = new String[]{
        Environment.getExternalStorageDirectory().getAbsolutePath()+"/tencent/QQfile_recv/",
        Environment.getExternalStorageDirectory().getAbsolutePath()+"/tencent/MicroMsg/Download/",
        Environment.getExternalStorageDirectory().getAbsolutePath()+"/DingTalk/",
        Environment.getExternalStorageDirectory().getAbsolutePath()+"/微盘/",
        Environment.getExternalStorageDirectory().getAbsolutePath()+"/yunpan/",
        Environment.getExternalStorageDirectory().getAbsolutePath()+"/BaiduNetdisk/",
        Environment.getExternalStorageDirectory().getAbsolutePath()+"/Download/",
    };

    private List<FileInfo> mList = new ArrayList<FileInfo>();
    private List<FileInfo> mCursorCacheList = new ArrayList<FileInfo>();
    private List<FileInfo> mSearchCacheList = new ArrayList<FileInfo>();
    private volatile boolean mPreservingRestoredSnapshot;
    private boolean mInitialDatabaseLoaded;
    private boolean mInitialSearchLoaded;
    private int mClearGeneration;
    private long mLastDatabaseRefreshElapsed;
    private long mLastFolderRefreshElapsed;

    private boolean mRegistered;
    private int mObserverClients;
    private DatabaseObserver mDatabaseObserver;
    private ClearDatabaseHelper mDatabaseHelper;

    private RecentFileManager(Context context) {
        mContext = resolveOperationContext(context);
        HandlerThread thread = new HandlerThread(RecentFileManager.class.getName());
        thread.start();
        mHandler = new FileManagerHandler(thread.getLooper());
        mPreferences = openPreferences(mContext);
        restoreSnapshot();
        mDatabaseObserver =  new DatabaseObserver(mHandler);
        mDatabaseHelper = new ClearDatabaseHelper(mContext,DB_NAME, mCallback);
        LSPLogger.i("RecentFileManager: operation context=" + mContext.getPackageName());
    }

    private static Context resolveOperationContext(Context context) {
        Context resolved = context;
        try {
            SidebarController controller = SidebarController.peekInstance();
            if (controller != null && controller.getHostContext() != null) {
                resolved = controller.getHostContext();
            }
        } catch (Throwable t) {
            LSPLogger.w("RecentFileManager: host context unavailable: " + t);
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
            LSPLogger.e("RecentFileManager: open snapshot preferences failed", t);
            return null;
        }
    }

    private ClearDatabaseHelper.Callback mCallback = new ClearDatabaseHelper.Callback() {
        @Override
        public void onInitComplete() {
            sendMessageIfNotExist(MSG_SEARCH_FILE);
            sendMessageIfNotExist(MSG_UPDATE_DATABASE_LIST);
        }
    };

    public List<FileInfo> getFileList(){
        synchronized (RecentFileManager.class) {
            List<FileInfo> recentList = new ArrayList<FileInfo>();
            recentList.addAll(mList);
            return recentList;
        }
    }

    public void startSearchFile() {
        if (isFolderRefreshStale()) {
            sendMessageIfNotExist(MSG_SEARCH_FILE);
        }
    }

    public void startFileObserver(){
        synchronized (mDatabaseObserver) {
            mObserverClients++;
            if (mObserverClients != 1) {
                return;
            }
            try {
                mContext.getContentResolver().registerContentObserver(
                        FILES_URI, true, mDatabaseObserver);
                mRegistered = true;
            } catch (Throwable t) {
                LSPLogger.e("RecentFileManager.startFileObserver: MediaStore failed", t);
            }
            try {
                mContext.getContentResolver().registerContentObserver(
                        RecorderInfo.RECORDER_URI, true, mDatabaseObserver);
            } catch (Throwable t) {
                LSPLogger.w("RecentFileManager.startFileObserver: recorder failed: " + t);
            }
        }
        if (isDatabaseRefreshStale()) {
            sendMessageIfNotExist(MSG_UPDATE_DATABASE_LIST);
        }
    }

    public void stopFileObserver() {
        synchronized (mDatabaseObserver) {
            if (mObserverClients == 0) {
                LSPLogger.w("RecentFileManager.stopFileObserver without matching start");
                return;
            }
            mObserverClients--;
            if (mObserverClients != 0) {
                return;
            }
            mHandler.removeMessages(MSG_SEARCH_FILE);
            mHandler.removeMessages(MSG_UPDATE_DATABASE_LIST);
            if (mRegistered) {
                try {
                    mContext.getContentResolver().unregisterContentObserver(mDatabaseObserver);
                } catch (Throwable t) {
                    LSPLogger.w("RecentFileManager.stopFileObserver failed: " + t);
                }
                mRegistered = false;
            }
        }
    }

    public void onClearSetChange(){
        sortRecentFileList(getClearGeneration());
    }

    private List<String> searchDestinationFolder(File dir) {
        List<String> filePathList = new ArrayList<String>();
        if (dir.exists()) {
            File[] files;
            try {
                files = dir.listFiles();
            } catch (Throwable t) {
                LSPLogger.w("RecentFileManager.searchDestinationFolder failed for "
                        + dir + ": " + t);
                return filePathList;
            }
            if (files == null) {
                LSPLogger.w("RecentFileManager.searchDestinationFolder inaccessible: " + dir);
                return filePathList;
            }
            for (File file : files) {
                if (file.isFile()) {
                    filePathList.add(file.getAbsolutePath());
                } else {
                    filePathList.addAll(searchDestinationFolder(file));
                }
            }
        }
        return filePathList;
    }

    private boolean searchFile(){
        if (!isExternalStorageReady()) {
            LSPLogger.w("RecentFileManager.searchFile: storage not ready; keeping snapshot");
            return false;
        }
        List<String> allFile = new ArrayList<String>();
        for(String path : TARGET_DIR){
            allFile.addAll(searchDestinationFolder(new File(path)));
        }
        List<FileInfo> searchCacheList = new ArrayList<FileInfo>();
        for(int i = 0 ; i < allFile.size() ; i++){
            String filePath = allFile.get(i);
            FileInfo info = new FileInfo(filePath);
            if(info.valid()){
                searchCacheList.add(info);
            }
        }
        mSearchCacheList.clear();
        mSearchCacheList.addAll(searchCacheList);
        LSPLogger.i("RecentFileManager.searchFile: discovered=" + allFile.size()
                + " accepted=" + mSearchCacheList.size());
        if (false) {
            Log.d(TAG, "dump search cache list !");
            for (FileInfo info : mSearchCacheList) {
                Log.d(TAG, "sdcard.fileinfo -> " + info.filePath);
            }
        }
        return true;
    }

    private boolean updateDatabaseContent() {
        ThreadVerify.verify(false);
        if (!isExternalStorageReady()) {
            LSPLogger.w("RecentFileManager.updateDatabaseContent: storage not ready; keeping snapshot");
            return false;
        }
        List<FileInfo> cursorCacheList = new ArrayList<FileInfo>();
        boolean querySucceeded = false;
        int queriedCount = 0;
        try {
            Bundle queryArgs = new Bundle();
            queryArgs.putString(ContentResolver.QUERY_ARG_SQL_SELECTION,
                    "(" + FileColumns.MIME_TYPE + " LIKE 'video/%' OR "
                            + FileColumns.MIME_TYPE + " LIKE 'audio/%' OR "
                            + FileColumns.MIME_TYPE + "='text/plain' OR "
                            + FileColumns.MIME_TYPE + " LIKE 'application/%')");
            queryArgs.putString(ContentResolver.QUERY_ARG_SQL_SORT_ORDER, FILE_SORT_ORDER);
            queryArgs.putInt(ContentResolver.QUERY_ARG_LIMIT, MAX_QUERY_ITEMS);
            Cursor cursor = mContext.getContentResolver().query(
                    FILES_URI, FILE_PROJECTION, queryArgs, null);
            if (cursor != null) {
                queriedCount = cursor.getCount();
                cursorCacheList.addAll(getFileInfoByCursor(cursor));
                querySucceeded = true;
            } else {
                LSPLogger.w("RecentFileManager.updateDatabaseContent: MediaStore returned null cursor");
            }
        } catch (Throwable t) {
            LSPLogger.e("RecentFileManager.updateDatabaseContent: MediaStore query failed", t);
        }
        if (!querySucceeded) {
            return false;
        }
        if (queriedCount == 0 && hasExistingCurrentItem()) {
            LSPLogger.w("RecentFileManager.updateDatabaseContent: empty MediaStore result; "
                    + "keeping existing snapshot");
            return false;
        }
        try {
            cursorCacheList.addAll(RecorderInfo.getFileInfoFromRecorder(mContext));
        } catch (Throwable t) {
            LSPLogger.w("RecentFileManager.updateDatabaseContent: recorder query failed: " + t);
        }
        mCursorCacheList.clear();
        mCursorCacheList.addAll(cursorCacheList);
        LSPLogger.i("RecentFileManager.updateDatabaseContent: accepted="
                + mCursorCacheList.size());
        if (false) {
            Log.d(TAG, "dump cursor cache list !");
            for (FileInfo info : mCursorCacheList) {
                Log.d(TAG, "database.fileinfo -> " + info.filePath);
            }
        }
        return true;
    }

    private void onScanComplete(boolean database, int clearGeneration) {
        if (database) {
            mInitialDatabaseLoaded = true;
        } else {
            mInitialSearchLoaded = true;
        }
        if (mPreservingRestoredSnapshot
                && !(mInitialDatabaseLoaded && mInitialSearchLoaded)) {
            LSPLogger.i("RecentFileManager: keeping restored snapshot until both scans finish"
                    + " database=" + mInitialDatabaseLoaded
                    + " folders=" + mInitialSearchLoaded);
            return;
        }
        if (sortRecentFileList(clearGeneration)) {
            mPreservingRestoredSnapshot = false;
        }
    }

    private boolean sortRecentFileList(int clearGeneration) {
        if(!mDatabaseHelper.isDataSetOk()){
            return false;
        }

        List<FileInfo> allInfo = new ArrayList<FileInfo>();
        Set<Integer> clearSet = mDatabaseHelper.getSet();
        Set<String> dataSet = new HashSet<String>();
        for (FileInfo info : mCursorCacheList) {
            info.refresh();
            if (!clearSet.contains(info.getHashKey())
                    && !dataSet.contains(info.filePath)) {
                dataSet.add(info.filePath);
                allInfo.add(info);
            }
        }

        for (FileInfo info : mSearchCacheList) {
            info.refresh();
            if (!clearSet.contains(info.getHashKey())
                    && !dataSet.contains(info.filePath)) {
                dataSet.add(info.filePath);
                allInfo.add(info);
            }
        }

        FileComparator comparator = new FileComparator();
        Collections.sort(allInfo, comparator);
        boolean staleResult = false;
        synchronized (RecentFileManager.class) {
            if (clearGeneration != mClearGeneration) {
                staleResult = true;
            } else {
                mList.clear();
                mList.addAll(allInfo);
            }
        }
        if (staleResult) {
            LSPLogger.w("RecentFileManager: discarded scan result after clear");
            sendMessageIfNotExist(MSG_UPDATE_DATABASE_LIST);
            sendMessageIfNotExist(MSG_SEARCH_FILE);
            return false;
        }
        persistSnapshot();
        notifyListener();
        return true;
    }

    private int getClearGeneration() {
        synchronized (RecentFileManager.class) {
            return mClearGeneration;
        }
    }

    private boolean hasExistingCurrentItem() {
        List<FileInfo> current = new ArrayList<FileInfo>();
        synchronized (RecentFileManager.class) {
            int count = Math.min(mList.size(), MAX_PERSISTED_ITEMS);
            for (int i = 0; i < count; i++) {
                current.add(mList.get(i));
            }
        }
        for (FileInfo info : current) {
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
            LSPLogger.w("RecentFileManager: storage readiness check failed: " + t);
            return false;
        }
    }

    private void scheduleRetry(int messageId) {
        synchronized (mDatabaseObserver) {
            if (mObserverClients <= 0 || mHandler.hasMessages(messageId)) {
                return;
            }
            mHandler.sendEmptyMessageDelayed(messageId, RETRY_DELAY_MS);
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
            LSPLogger.e("RecentFileManager: read snapshot failed", t);
            return;
        }
        if (TextUtils.isEmpty(encoded)) {
            return;
        }

        List<FileInfo> restored = new ArrayList<FileInfo>();
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
                if (TextUtils.isEmpty(path) || TextUtils.isEmpty(mime) || !seen.add(path)) {
                    continue;
                }
                FileInfo info = new FileInfo(path, mime);
                long persistedTime = object.optLong(JSON_KEY_TIME, info.lastTime);
                if (persistedTime > 0L) {
                    info.lastTime = persistedTime;
                }
                restored.add(info);
            }
        } catch (Throwable t) {
            LSPLogger.e("RecentFileManager: stored snapshot is invalid ("
                    + t.getClass().getSimpleName() + ")");
            return;
        }

        synchronized (RecentFileManager.class) {
            mList.clear();
            mList.addAll(restored);
        }
        mPreservingRestoredSnapshot = !restored.isEmpty();
        LSPLogger.i("RecentFileManager: restored snapshot count=" + restored.size());
    }

    private void persistSnapshot() {
        if (mPreferences == null) {
            return;
        }

        final String encoded;
        try {
            JSONArray array = new JSONArray();
            synchronized (RecentFileManager.class) {
                int count = Math.min(mList.size(), MAX_PERSISTED_ITEMS);
                for (int i = 0; i < count; i++) {
                    FileInfo info = mList.get(i);
                    if (info == null || TextUtils.isEmpty(info.filePath)
                            || TextUtils.isEmpty(info.mimeType)) {
                        continue;
                    }
                    JSONObject object = new JSONObject();
                    object.put(JSON_KEY_PATH, info.filePath);
                    object.put(JSON_KEY_MIME, info.mimeType);
                    object.put(JSON_KEY_TIME, info.lastTime);
                    array.put(object);
                }
            }
            encoded = array.toString();
        } catch (Throwable t) {
            LSPLogger.e("RecentFileManager: encode snapshot failed ("
                    + t.getClass().getSimpleName() + ")");
            return;
        }

        mHandler.post(new Runnable() {
            @Override
            public void run() {
                try {
                    if (!mPreferences.edit().putString(PREFS_KEY_ITEMS, encoded).commit()) {
                        LSPLogger.e("RecentFileManager: persist snapshot commit failed");
                    }
                } catch (Throwable t) {
                    LSPLogger.e("RecentFileManager: persist snapshot failed", t);
                }
            }
        });
    }

    private class FileComparator implements Comparator<FileInfo> {
        public int compare(FileInfo fileInfo1, FileInfo fileInfo2) {
            long time1 = fileInfo1.lastTime;
            long time2 = fileInfo2.lastTime;
            if (time1 == time2) {
                return 0;
            }
            if (time1 < time2) {
                return 1;
            } else {
                return -1;
            }
        }
    }

    private List<FileInfo> getFileInfoByCursor(Cursor cursor) {
        List<FileInfo> infos = new ArrayList<FileInfo>();
        if (cursor == null) {
            LSPLogger.w("RecentFileManager.getFileInfoByCursor: MediaStore returned null cursor");
            return infos;
        }
        try {
            Set<Integer> clearSet = mDatabaseHelper.getSet();
            if (cursor.moveToFirst()) {
                do {
                    int size = cursor.getInt(cursor.getColumnIndexOrThrow(FileColumns.SIZE));
                    if (size == 0) {
                        continue;
                    }
                    String filePath = cursor.getString(cursor.getColumnIndexOrThrow(FileColumns.DATA));
                    String mimeType = cursor.getString(cursor.getColumnIndexOrThrow(FileColumns.MIME_TYPE));
                    FileInfo info = new FileInfo(filePath, mimeType);
                    if (info.valid()) {
                        if (!clearSet.contains(info.getHashKey())) {
                            infos.add(info);
                        }
                    }
                } while (cursor.moveToNext());
            }
        } catch (Throwable t) {
            LSPLogger.e("RecentFileManager.getFileInfoByCursor failed", t);
        } finally {
            cursor.close();
        }
        return infos;
    }

    private class ReceiveFileOberver extends FileObserver{
        public ReceiveFileOberver(String path) {
            super(path);
        }

        @Override
        public void onEvent(int event, String path) {
            // NA
        }
    }

    private class DatabaseObserver extends ContentObserver{
        public DatabaseObserver(Handler handler) {
            super(handler);
        }

        @Override
        public void onChange(boolean selfChange) {
            super.onChange(selfChange);
            LSPLogger.d("RecentFileManager.DatabaseObserver: MediaStore changed");
            sendMessageIfNotExist(MSG_UPDATE_DATABASE_LIST);
        }
    }

    private void sendMessageIfNotExist(int msgId) {
        if (!mHandler.hasMessages(msgId)) {
            mHandler.obtainMessage(msgId).sendToTarget();
        }
    }

    private class FileManagerHandler extends Handler {

        public FileManagerHandler(Looper looper) {
            super(looper);
        }

        @Override
        public void handleMessage(Message msg) {
            switch (msg.what) {
                case MSG_UPDATE_DATABASE_LIST:
                    int databaseGeneration = getClearGeneration();
                    if (updateDatabaseContent()) {
                        mLastDatabaseRefreshElapsed = SystemClock.elapsedRealtime();
                        onScanComplete(true, databaseGeneration);
                    } else {
                        scheduleRetry(MSG_UPDATE_DATABASE_LIST);
                    }
                    break;
                case MSG_SEARCH_FILE:
                    int searchGeneration = getClearGeneration();
                    if (searchFile()) {
                        mLastFolderRefreshElapsed = SystemClock.elapsedRealtime();
                        onScanComplete(false, searchGeneration);
                    } else {
                        scheduleRetry(MSG_SEARCH_FILE);
                    }
                    break;
            }
        }
    }

    @Override
    public void clear() {
        synchronized (RecentFileManager.class) {
            mClearGeneration++;
            mPreservingRestoredSnapshot = false;
            List<Integer> clearList = new ArrayList<Integer>();
            for(FileInfo fi : mList){
                clearList.add(fi.getHashKey());
            }
            mDatabaseHelper.addUselessId(clearList);
            mList.clear();
        }
        persistSnapshot();
        notifyListener();
    }

    public void refresh() {
        notifyListener();
        if (isDatabaseRefreshStale()) {
            sendMessageIfNotExist(MSG_UPDATE_DATABASE_LIST);
        }
        if (isFolderRefreshStale()) {
            sendMessageIfNotExist(MSG_SEARCH_FILE);
        }
    }

    private boolean isDatabaseRefreshStale() {
        return mLastDatabaseRefreshElapsed == 0L
                || SystemClock.elapsedRealtime() - mLastDatabaseRefreshElapsed
                >= DATABASE_REFRESH_TTL_MS;
    }

    private boolean isFolderRefreshStale() {
        return mLastFolderRefreshElapsed == 0L
                || SystemClock.elapsedRealtime() - mLastFolderRefreshElapsed
                >= FOLDER_REFRESH_TTL_MS;
    }
}
