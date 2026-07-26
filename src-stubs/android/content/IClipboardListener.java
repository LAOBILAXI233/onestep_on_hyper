package android.content;

import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;

/**
 * Stub for SmartisanOS IClipboardListener AIDL.
 * Provides a Stub base class for callers to subclass.
 */
public interface IClipboardListener extends IInterface {

    void onCopyHistoryChanged() throws RemoteException;

    abstract class Stub extends android.os.Binder implements IClipboardListener {
        public Stub() {
            this.attachInterface(this, DESCRIPTOR);
        }

        private static final String DESCRIPTOR = "android.content.IClipboardListener";

        @Override
        public IBinder asBinder() {
            return this;
        }
    }
}
