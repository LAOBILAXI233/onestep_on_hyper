package android.app;

import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;

/**
 * Stub for hidden android.app.IProcessObserver AIDL.
 */
public interface IProcessObserver extends IInterface {

    void onProcessStateChanged(int pid, int uid, int procState) throws RemoteException;

    void onProcessDied(int pid, int uid) throws RemoteException;

    void onForegroundActivitiesChanged(int pid, int uid, boolean foregroundActivities) throws RemoteException;

    // Android 14+ 新增方法。不实现的话，运行时 framework 的 Stub.onTransact
    // 调用此方法会触发 AbstractMethodError 导致 SystemUI 崩溃。
    void onForegroundServicesChanged(int pid, int uid, int serviceTypes) throws RemoteException;

    abstract class Stub extends android.os.Binder implements IProcessObserver {
        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        private static final String DESCRIPTOR = "android.app.IProcessObserver";

        @Override
        public IBinder asBinder() {
            return this;
        }
    }
}
