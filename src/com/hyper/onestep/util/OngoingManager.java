package com.hyper.onestep.util;
import java.util.ArrayList;
import java.util.List;
import android.app.ActivityManager;
import android.app.IProcessObserver;
import android.content.ComponentName;
import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.util.Log;
import com.hyper.onestep.lsp.LSPLogger;
// 进行中任务管理器，监听进程状态并维护任务列表
public class OngoingManager extends DataManager {
    private volatile static OngoingManager sInstance;
    public synchronized static OngoingManager getInstance(Context context){
        if(sInstance == null){
            synchronized(RecentFileManager.class){
                if(sInstance == null){
                    sInstance = new OngoingManager(context);
                }
            }
        }
        return sInstance;
    }
    private Context mContext;
    private Handler mHandler;
    private List<OngoingItem> mList = new ArrayList<OngoingItem>();
    private OngoingManager(Context context){
        mContext = context;
        HandlerThread thread = new HandlerThread(OngoingManager.class.getName());
        thread.start();
        mHandler = new OngoingManagerHandler(thread.getLooper());
        try {
            Object iam = getIActivityManager();
            if (iam != null) {
                java.lang.reflect.Method m = iam.getClass()
                        .getMethod("registerProcessObserver", IProcessObserver.class);
                m.invoke(iam, mProcessObserver);
                LSPLogger.i("OngoingManager.<init>: registerProcessObserver ok");
            } else {
                LSPLogger.w("OngoingManager.<init>: IActivityManager null, skip register");
            }
        } catch (Throwable t) {
            LSPLogger.w("OngoingManager.<init>: registerProcessObserver failed", t);
        }
    }
    private static Object getIActivityManager() {
        try {
            java.lang.reflect.Method m = ActivityManager.class
                    .getDeclaredMethod("getIActivityManager");
            m.setAccessible(true);
            return m.invoke(null);
        } catch (Throwable t) {
            LSPLogger.d("getIActivityManager: getIActivityManager() failed: " + t.getMessage());
        }
        try {
            Class<?> clz = Class.forName("android.app.ActivityManagerNative");
            java.lang.reflect.Method m = clz.getDeclaredMethod("getDefault");
            m.setAccessible(true);
            return m.invoke(null);
        } catch (Throwable t) {
            LSPLogger.d("getIActivityManager: ActivityManagerNative.getDefault() failed: "
                    + t.getMessage());
        }
        return null;
    }
    private IProcessObserver mProcessObserver = new IProcessObserver.Stub() {
        @Override
        public void onProcessStateChanged(int pid, int uid, int procState)
                throws RemoteException {
        }
        @Override
        public void onProcessDied(int pid, int uid) throws RemoteException {
            mHandler.obtainMessage(MSG_REMOVE_PID, pid, uid).sendToTarget();
        }
        @Override
        public void onForegroundActivitiesChanged(int pid, int uid,
                boolean foregroundActivities) throws RemoteException {
        }
        @Override
        public void onForegroundServicesChanged(int pid, int uid, int serviceTypes)
                throws RemoteException {
        }
    };
    public void updateOngoing(ComponentName name, int token, int pendingNumbers, CharSequence title, int pid) {
        if (name == null) {
            return;
        }
        synchronized(mList){
            boolean handle = false;
            for(int i = 0; !handle && i < mList.size(); ++ i){
                if(mList.get(i).isSameItem(name, token)){
                    if (pendingNumbers < 0) {
                        mList.remove(i);
                        handle = true;
                    } else {
                        if (mList.get(i).getPid() != pid) {
                            Log.e("OngoingManager", "the pid of component (" + name + ") change !!!");
                        }
                        mList.get(i).setPendingNumbers(pendingNumbers);
                        mList.get(i).setTitle(title);
                        handle = true;
                    }
                }
            }
            if (!handle) {
                mList.add(0, new OngoingItem(name, token, pendingNumbers, title, pid));
            }
        }
        this.notifyListener();
    }
    public List<OngoingItem> getList() {
        List<OngoingItem> list = new ArrayList<OngoingItem>();
        synchronized (mList) {
            list.addAll(mList);
        }
        return list;
    }
    public void onPackageRemoved(String packageName) {
    }
    public void onPackageAdded(String packageName) {
    }
    private void onProcessDied(int pid, int uid) {
        boolean remove = false;
        synchronized (mList) {
            for (int i = 0; i < mList.size(); ++i) {
                if (mList.get(i).getPid() == pid) {
                    mList.remove(i);
                    remove = true;
                }
            }
        }
        if (remove) {
            notifyListener();
        }
    }
    private static final int MSG_REMOVE_PID = 0;
    private class OngoingManagerHandler extends Handler {
        public OngoingManagerHandler(Looper looper) {
            super(looper);
        }
        @Override
        public void handleMessage(Message msg) {
            switch (msg.what) {
                case MSG_REMOVE_PID:
                    onProcessDied(msg.arg1, msg.arg2);
                    break;
            }
        }
    }
}
