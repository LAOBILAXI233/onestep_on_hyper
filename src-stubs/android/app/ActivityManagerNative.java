package android.app;

import android.os.IBinder;
import android.os.RemoteException;

import java.lang.reflect.Method;

/**
 * Stub for hidden android.app.ActivityManagerNative.
 * Reflectively calls the real ActivityManagerNative / ActivityManagerService at runtime.
 */
public class ActivityManagerNative {

    public static boolean isSystemReady() {
        try {
            Class<?> clazz = Class.forName("android.app.ActivityManagerNative");
            Method m = clazz.getMethod("isSystemReady");
            return (Boolean) m.invoke(null);
        } catch (Throwable t) {
            // fallback: ActivityManager.isRunning ? Use our best guess
            return true;
        }
    }

    public static IActivityManager getDefault() {
        return new IActivityManager();
    }

    /**
     * Stub IActivityManager - methods are no-ops / reflective calls.
     */
    public static class IActivityManager {
        public void closeSystemDialogs(String reason) throws RemoteException {
            // no-op
        }

        public void registerProcessObserver(android.app.IProcessObserver observer) throws RemoteException {
            // no-op
        }

        public void unregisterProcessObserver(android.app.IProcessObserver observer) throws RemoteException {
            // no-op
        }
    }
}
