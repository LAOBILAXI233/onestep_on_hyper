package com.hyper.onestep.lsp;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.graphics.Bitmap;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Process;
import android.os.RemoteException;
import java.lang.reflect.Field;
import java.util.Objects;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
// 小米 AICR OCR 服务的异步调用封装
public final class AicrOcrClient {
    private static final String AICR_PACKAGE = "com.xiaomi.aicr";
    private static final String AICR_SERVICE =
            "com.xiaomi.aicr.access.AiCrCoreService";
    private static final String AICR_ACTION = "com.xiaomi.aicr.access.AICR_ENGINE";
    private static final String CORE_DESCRIPTOR = "com.xiaomi.aicr.IAiCrCoreService";
    private static final String CORE_CALLBACK_DESCRIPTOR =
            "com.xiaomi.aicr.ICoreServiceCallback";
    private static final String VISION_DESCRIPTOR =
            "com.xiaomi.aicr.plugin.IVisionService";
    private static final String OCR_RESULT_CLASS =
            "com.xiaomi.aicr.vision.ocr.OCRRes$OCRResult";
    private static final int CORE_GET_PLUGIN_BINDER = 1;
    private static final int CORE_RELEASE_CONNECT = 2;
    private static final int CALLBACK_ON_DOWNLOAD = 1;
    private static final int CALLBACK_SPEED = 2;
    private static final int VISION_SET_IMAGE = 1;
    private static final int VISION_DO_OCR_DETECT = 3;
    private static final int VISION_DO_OCR_RECOGNIZE = 4;
    private static final int VISION_GET_OCR_VERSION = 5;
    private static final String PLUGIN_STATUS_KEY = "Status";
    private static final int PLUGIN_STATUS_OK = 0;
    private static final int PLUGIN_STATUS_DOWNLOADING_FIRST_USE = 1;
    private static final int PLUGIN_STATUS_UNKNOWN = Integer.MIN_VALUE;
    private static final String OCR_VERSION_V2 = "V2";
    private static final AtomicLong NEXT_REQUEST_ID = new AtomicLong();
    private AicrOcrClient() {}
    /** Receives exactly one terminal result. An image with no recognized text returns {@code ""}. */
    public interface Callback {
        void onSuccess(String text);
        /** {@code stage} identifies the failed bind, Binder transaction, parse, or timeout step. */
        void onError(String stage, Throwable error);
    }
    public static Request recognize(Context context, Bitmap bitmap, long timeoutMs,
            Executor callbackExecutor, Callback callback) {
        Objects.requireNonNull(context, "context");
        Objects.requireNonNull(bitmap, "bitmap");
        Objects.requireNonNull(callbackExecutor, "callbackExecutor");
        Objects.requireNonNull(callback, "callback");
        if (timeoutMs <= 0L) {
            throw new IllegalArgumentException("timeoutMs must be greater than zero");
        }
        if (bitmap.isRecycled()) {
            throw new IllegalArgumentException("bitmap is already recycled");
        }
        Context appContext = context.getApplicationContext();
        Request request = new Request(appContext == null ? context : appContext, bitmap,
                timeoutMs, callbackExecutor, callback, NEXT_REQUEST_ID.incrementAndGet());
        request.start();
        return request;
    }
    /** Starts one OCR request and dispatches its callback on the context main executor. */
    public static Request recognize(Context context, Bitmap bitmap, long timeoutMs,
            Callback callback) {
        Objects.requireNonNull(context, "context");
        return recognize(context, bitmap, timeoutMs, context.getMainExecutor(), callback);
    }
    /** Handle for cancellation and terminal-state observation of a one-shot OCR request. */
    public static final class Request {
        private final Context mContext;
        private final long mTimeoutMs;
        private final Executor mCallbackExecutor;
        private final Callback mCallback;
        private final ScheduledThreadPoolExecutor mWorker;
        private final Executor mServiceExecutor;
        private final String mClientAddress;
        private final AtomicBoolean mFinished = new AtomicBoolean();
        private final AtomicBoolean mBound = new AtomicBoolean();
        private final AtomicBoolean mReleaseNeeded = new AtomicBoolean();
        private final AtomicBoolean mPluginClaimed = new AtomicBoolean();
        private volatile Bitmap mBitmap;
        private volatile ScheduledFuture<?> mTimeoutFuture;
        private volatile IBinder mCoreBinder;
        private volatile IBinder mPluginBinder;
        private final CoreCallbackBinder mCoreCallback = new CoreCallbackBinder();
        private final IBinder.DeathRecipient mCoreDeathRecipient =
                new IBinder.DeathRecipient() {
                    @Override
                    public void binderDied() {
                        postWorker("core-death", new Runnable() {
                            @Override
                            public void run() {
                                finishError("core-death",
                                        new RemoteException("AICR core Binder died"));
                            }
                        });
                    }
                };
        private final IBinder.DeathRecipient mPluginDeathRecipient =
                new IBinder.DeathRecipient() {
                    @Override
                    public void binderDied() {
                        postWorker("plugin-death", new Runnable() {
                            @Override
                            public void run() {
                                finishError("plugin-death",
                                        new RemoteException("AICR vision plugin Binder died"));
                            }
                        });
                    }
                };
        private final ServiceConnection mConnection = new ServiceConnection() {
            @Override
            public void onServiceConnected(ComponentName name, IBinder service) {
                handleCoreConnected(service);
            }
            @Override
            public void onServiceDisconnected(ComponentName name) {
                finishError("core-disconnected",
                        new RemoteException("AICR core service disconnected: " + name));
            }
            @Override
            public void onBindingDied(ComponentName name) {
                finishError("core-death",
                        new RemoteException("AICR core binding died: " + name));
            }
            @Override
            public void onNullBinding(ComponentName name) {
                finishError("bind-core",
                        new IllegalStateException("AICR returned a null binding: " + name));
            }
        };
        private Request(Context context, Bitmap bitmap, long timeoutMs, Executor callbackExecutor,
                Callback callback, long requestId) {
            mContext = context;
            mBitmap = bitmap;
            mTimeoutMs = timeoutMs;
            mCallbackExecutor = callbackExecutor;
            mCallback = callback;
            mClientAddress = "com.hyper.onestep:" + Process.myPid() + ":" + requestId;
            mWorker = new ScheduledThreadPoolExecutor(1,
                    new AicrThreadFactory(requestId));
            mWorker.setRemoveOnCancelPolicy(true);
            mWorker.setExecuteExistingDelayedTasksAfterShutdownPolicy(false);
            mServiceExecutor = new Executor() {
                @Override
                public void execute(Runnable command) {
                    postWorker("service-callback", command);
                }
            };
        }
        private void start() {
            mTimeoutFuture = mWorker.schedule(new Runnable() {
                @Override
                public void run() {
                    finishError("timeout", new TimeoutException(
                            "AICR OCR timed out after " + mTimeoutMs + " ms"));
                }
            }, mTimeoutMs, TimeUnit.MILLISECONDS);
            postWorker("bind-core", new Runnable() {
                @Override
                public void run() {
                    bindCoreService();
                }
            });
        }
        /** Cancels the request and reports a terminal {@code cancel} error to the callback. */
        public void cancel() {
            postWorker("cancel", new Runnable() {
                @Override
                public void run() {
                    finishError("cancel",
                            new CancellationException("AICR OCR request cancelled"));
                }
            });
        }
        public boolean isDone() {
            return mFinished.get();
        }
        private void bindCoreService() {
            if (mFinished.get()) return;
            Intent intent = new Intent(AICR_ACTION)
                    .setComponent(new ComponentName(AICR_PACKAGE, AICR_SERVICE));
            mBound.set(true);
            try {
                boolean accepted = mContext.bindService(intent, Context.BIND_AUTO_CREATE,
                        mServiceExecutor, mConnection);
                if (!accepted) {
                    mBound.set(false);
                    finishError("bind-core", new IllegalStateException(
                            "bindService rejected " + intent.getComponent()));
                }
            } catch (Throwable error) {
                mBound.set(false);
                finishError("bind-core", new IllegalStateException(
                        "Could not bind " + intent.getComponent(), error));
            }
        }
        private void handleCoreConnected(IBinder core) {
            if (mFinished.get()) return;
            if (core == null) {
                finishError("bind-core", new IllegalStateException(
                        "AICR service connected without a Binder"));
                return;
            }
            mCoreBinder = core;
            if (mFinished.get()) {
                mCoreBinder = null;
                return;
            }
            try {
                core.linkToDeath(mCoreDeathRecipient, 0);
            } catch (Throwable error) {
                finishError("core-death", new IllegalStateException(
                        "Could not watch AICR core Binder death", error));
                return;
            }
            if (mFinished.get()) {
                unlinkDeath(core, mCoreDeathRecipient);
                return;
            }
            try {
                handlePluginReply(requestVisionPlugin(core), "getPluginBinder");
            } catch (Throwable error) {
                finishError("request-plugin", new IllegalStateException(
                        "AICR getPluginBinder transaction failed", error));
            }
        }
        private PluginReply requestVisionPlugin(IBinder core) throws RemoteException {
            Parcel data = Parcel.obtain();
            Parcel reply = Parcel.obtain();
            try {
                data.writeInterfaceToken(CORE_DESCRIPTOR);
                data.writeStrongBinder(mCoreCallback);
                data.writeString(mClientAddress);
                data.writeString(VISION_DESCRIPTOR);
                data.writeString("");
                if (mFinished.get()) {
                    return new PluginReply(null, PLUGIN_STATUS_UNKNOWN);
                }
                mReleaseNeeded.set(true);
                if (!core.transact(CORE_GET_PLUGIN_BINDER, data, reply, 0)) {
                    throw new RemoteException("AICR core did not handle transaction "
                            + CORE_GET_PLUGIN_BINDER);
                }
                reply.readException();
                IBinder plugin = reply.readStrongBinder();
                int status = PLUGIN_STATUS_UNKNOWN;
                if (reply.readInt() != 0) {
                    Bundle statusBundle = new Bundle();
                    statusBundle.readFromParcel(reply);
                    if (statusBundle.containsKey(PLUGIN_STATUS_KEY)) {
                        status = statusBundle.getInt(PLUGIN_STATUS_KEY);
                    }
                }
                return new PluginReply(plugin, status);
            } finally {
                reply.recycle();
                data.recycle();
            }
        }
        private void handlePluginReply(PluginReply reply, String source) {
            if (reply.status == PLUGIN_STATUS_OK) {
                acceptPlugin(reply.binder, source);
                return;
            }
            if (reply.status == PLUGIN_STATUS_DOWNLOADING_FIRST_USE) {
                LSPLogger.i("AicrOcrClient: vision plugin is loading; waiting for onDownload");
                return;
            }
            finishError("request-plugin", new IllegalStateException(
                    "AICR " + source + " returned plugin status " + reply.status));
        }
        private void handlePluginDownloaded(IBinder callbackBinder) {
            if (mFinished.get() || mPluginClaimed.get()) return;
            IBinder core = mCoreBinder;
            if (core == null) {
                finishError("request-plugin", new IllegalStateException(
                        "AICR onDownload arrived without a live core Binder"));
                return;
            }
            if (callbackBinder != null) {
                LSPLogger.d("AicrOcrClient: onDownload notified; refreshing plugin Binder");
            }
            try {
                handlePluginReply(requestVisionPlugin(core), "onDownload/getPluginBinder");
            } catch (Throwable error) {
                finishError("request-plugin", new IllegalStateException(
                        "AICR getPluginBinder retry after onDownload failed", error));
            }
        }
        private static final class PluginReply {
            final IBinder binder;
            final int status;
            PluginReply(IBinder binder, int status) {
                this.binder = binder;
                this.status = status;
            }
        }
        private void acceptPlugin(IBinder plugin, String source) {
            if (plugin == null) {
                finishError("request-plugin", new IllegalStateException(
                        "AICR " + source + " returned a null vision Binder"));
                return;
            }
            if (mFinished.get() || !mPluginClaimed.compareAndSet(false, true)) return;
            mPluginBinder = plugin;
            if (mFinished.get()) {
                mPluginBinder = null;
                return;
            }
            try {
                plugin.linkToDeath(mPluginDeathRecipient, 0);
            } catch (Throwable error) {
                finishError("plugin-death", new IllegalStateException(
                        "Could not watch AICR vision Binder death", error));
                return;
            }
            if (mFinished.get()) {
                unlinkDeath(plugin, mPluginDeathRecipient);
                return;
            }
            performOcr(plugin);
        }
        private void performOcr(final IBinder plugin) {
            final String version;
            try {
                version = getOcrVersion(plugin);
            } catch (Throwable error) {
                finishError("ocr-version", new IllegalStateException(
                        "AICR getOCRVersion transaction failed", error));
                return;
            }
            if (!OCR_VERSION_V2.equals(version)) {
                finishError("ocr-version", new IllegalStateException(
                        "AICR dedicated OCR requires V2 but returned " + version));
                return;
            }
            postWorker("set-image", new Runnable() {
                @Override
                public void run() {
                    performSetImage(plugin);
                }
            });
        }
        private void performSetImage(final IBinder plugin) {
            Bitmap bitmap = mBitmap;
            if (bitmap == null || bitmap.isRecycled()) {
                finishError("set-image", new IllegalStateException(
                        "Bitmap was recycled before AICR consumed it"));
                return;
            }
            final int imageId;
            try {
                imageId = setImage(plugin, bitmap);
            } catch (Throwable error) {
                finishError("set-image", new IllegalStateException(
                        "AICR setImage transaction failed", error));
                return;
            }
            if (imageId < 0) {
                finishError("set-image", new IllegalStateException(
                        "AICR rejected the Bitmap with image id " + imageId));
                return;
            }
            mBitmap = null;
            postWorker("detect", new Runnable() {
                @Override
                public void run() {
                    performOcrDetect(plugin, imageId);
                }
            });
        }
        private void performOcrDetect(final IBinder plugin, final int imageId) {
            try {
                doOcrDetect(plugin, imageId);
            } catch (Throwable error) {
                finishError("detect", new IllegalStateException(
                        "AICR doOCRDetect transaction failed", error));
                return;
            }
            postWorker("recognize", new Runnable() {
                @Override
                public void run() {
                    performOcrRecognize(plugin, imageId);
                }
            });
        }
        private void performOcrRecognize(IBinder plugin, int imageId) {
            Parcel data = Parcel.obtain();
            Parcel reply = Parcel.obtain();
            try {
                data.writeInterfaceToken(VISION_DESCRIPTOR);
                data.writeInt(imageId);
                if (!plugin.transact(VISION_DO_OCR_RECOGNIZE, data, reply, 0)) {
                    throw new RemoteException("AICR vision service did not handle transaction "
                            + VISION_DO_OCR_RECOGNIZE);
                }
                reply.readException();
                if (reply.readInt() == 0) {
                    finishError("recognize", new IllegalStateException(
                            "AICR doOCRRecognize returned null"));
                    return;
                }
                final String text;
                try {
                    text = parseTotalText(reply);
                } catch (Throwable error) {
                    finishError("parse-result", new IllegalStateException(
                            "Could not decode AICR OCRResult through its package class loader",
                            error));
                    return;
                }
                finishSuccess(text);
            } catch (Throwable error) {
                finishError("recognize", new IllegalStateException(
                        "AICR doOCRRecognize transaction failed", error));
            } finally {
                reply.recycle();
                data.recycle();
            }
        }
        private String getOcrVersion(IBinder plugin) throws RemoteException {
            Parcel data = Parcel.obtain();
            Parcel reply = Parcel.obtain();
            try {
                data.writeInterfaceToken(VISION_DESCRIPTOR);
                if (!plugin.transact(VISION_GET_OCR_VERSION, data, reply, 0)) {
                    throw new RemoteException("AICR vision service did not handle transaction "
                            + VISION_GET_OCR_VERSION);
                }
                reply.readException();
                return reply.readString();
            } finally {
                reply.recycle();
                data.recycle();
            }
        }
        private void doOcrDetect(IBinder plugin, int imageId) throws RemoteException {
            Parcel data = Parcel.obtain();
            Parcel reply = Parcel.obtain();
            try {
                data.writeInterfaceToken(VISION_DESCRIPTOR);
                data.writeInt(imageId);
                if (!plugin.transact(VISION_DO_OCR_DETECT, data, reply, 0)) {
                    throw new RemoteException("AICR vision service did not handle transaction "
                            + VISION_DO_OCR_DETECT);
                }
                reply.readException();
            } finally {
                reply.recycle();
                data.recycle();
            }
        }
        private int setImage(IBinder plugin, Bitmap bitmap) throws RemoteException {
            Parcel data = Parcel.obtain();
            Parcel reply = Parcel.obtain();
            try {
                data.writeInterfaceToken(VISION_DESCRIPTOR);
                data.writeInt(1);
                bitmap.writeToParcel(data, 0);
                if (!plugin.transact(VISION_SET_IMAGE, data, reply, 0)) {
                    throw new RemoteException("AICR vision service did not handle transaction "
                            + VISION_SET_IMAGE);
                }
                reply.readException();
                return reply.readInt();
            } finally {
                reply.recycle();
                data.recycle();
            }
        }
        private String parseTotalText(Parcel reply) throws Exception {
            Context vendorContext = mContext.createPackageContext(AICR_PACKAGE,
                    Context.CONTEXT_INCLUDE_CODE | Context.CONTEXT_IGNORE_SECURITY);
            ClassLoader loader = vendorContext.getClassLoader();
            if (loader == null) {
                throw new IllegalStateException("AICR package Context has no ClassLoader");
            }
            Class<?> resultClass = Class.forName(OCR_RESULT_CLASS, true, loader);
            Field creatorField = resultClass.getField("CREATOR");
            Object creatorValue = creatorField.get(null);
            if (!(creatorValue instanceof Parcelable.Creator<?>)) {
                throw new IllegalStateException(OCR_RESULT_CLASS
                        + ".CREATOR is not a Parcelable.Creator");
            }
            Object result = ((Parcelable.Creator<?>) creatorValue).createFromParcel(reply);
            if (result == null) {
                throw new IllegalStateException(OCR_RESULT_CLASS + ".CREATOR returned null");
            }
            Field textField = resultClass.getField("total_text");
            Object value = textField.get(result);
            if (value == null) return "";
            if (!(value instanceof String)) {
                throw new IllegalStateException(OCR_RESULT_CLASS
                        + ".total_text is not a String: " + value.getClass().getName());
            }
            return (String) value;
        }
        private void finishSuccess(final String text) {
            if (!mFinished.compareAndSet(false, true)) return;
            cancelTimeout();
            mBitmap = null;
            dispatchCallback(new Runnable() {
                @Override
                public void run() {
                    mCallback.onSuccess(text);
                }
            });
            cleanupConnection();
            mWorker.shutdown();
            LSPLogger.i("AicrOcrClient: OCR completed, chars=" + text.length());
        }
        private void finishError(final String stage, final Throwable error) {
            if (!mFinished.compareAndSet(false, true)) return;
            cancelTimeout();
            mBitmap = null;
            dispatchCallback(new Runnable() {
                @Override
                public void run() {
                    mCallback.onError(stage, error);
                }
            });
            cleanupConnection();
            mWorker.shutdown();
            LSPLogger.w("AicrOcrClient: failed at stage=" + stage, error);
        }
        private void cancelTimeout() {
            ScheduledFuture<?> timeout = mTimeoutFuture;
            if (timeout != null) timeout.cancel(false);
        }
        private void cleanupConnection() {
            IBinder plugin = mPluginBinder;
            mPluginBinder = null;
            if (plugin != null) unlinkDeath(plugin, mPluginDeathRecipient);
            IBinder core = mCoreBinder;
            mCoreBinder = null;
            if (core != null) unlinkDeath(core, mCoreDeathRecipient);
            if (mBound.getAndSet(false)) {
                try {
                    mContext.unbindService(mConnection);
                } catch (Throwable error) {
                    LSPLogger.w("AicrOcrClient: unbind failed", error);
                }
            }
            if (core != null && mReleaseNeeded.getAndSet(false)) {
                releaseConnection(core);
            }
        }
        private void releaseConnection(IBinder core) {
            Parcel data = Parcel.obtain();
            Parcel reply = Parcel.obtain();
            try {
                data.writeInterfaceToken(CORE_DESCRIPTOR);
                data.writeString(mClientAddress);
                if (!core.transact(CORE_RELEASE_CONNECT, data, reply, 0)) {
                    throw new RemoteException("AICR core did not handle releaseConnect");
                }
                reply.readException();
            } catch (Throwable error) {
                LSPLogger.w("AicrOcrClient: releaseConnect failed", error);
            } finally {
                mReleaseNeeded.set(false);
                reply.recycle();
                data.recycle();
            }
        }
        private void dispatchCallback(final Runnable callback) {
            Runnable guarded = new Runnable() {
                @Override
                public void run() {
                    try {
                        callback.run();
                    } catch (Throwable error) {
                        LSPLogger.e("AicrOcrClient: client callback threw", error);
                    }
                }
            };
            try {
                mCallbackExecutor.execute(guarded);
            } catch (Throwable error) {
                LSPLogger.w("AicrOcrClient: callback executor rejected result", error);
                guarded.run();
            }
        }
        private void postWorker(String stage, final Runnable command) {
            if (mFinished.get()) return;
            try {
                mWorker.execute(new Runnable() {
                    @Override
                    public void run() {
                        if (!mFinished.get()) command.run();
                    }
                });
            } catch (RejectedExecutionException error) {
                if (!mFinished.get()) finishError(stage, error);
            }
        }
        private void unlinkDeath(IBinder binder, IBinder.DeathRecipient recipient) {
            try {
                binder.unlinkToDeath(recipient, 0);
            } catch (Throwable ignored) {
            }
        }
        private final class CoreCallbackBinder extends Binder {
            @Override
            protected boolean onTransact(int code, Parcel data, Parcel reply, int flags)
                    throws RemoteException {
                if (code == INTERFACE_TRANSACTION) {
                    if (reply != null) reply.writeString(CORE_CALLBACK_DESCRIPTOR);
                    return true;
                }
                if (code == CALLBACK_ON_DOWNLOAD) {
                    data.enforceInterface(CORE_CALLBACK_DESCRIPTOR);
                    final IBinder plugin = data.readStrongBinder();
                    postWorker("download-callback", new Runnable() {
                        @Override
                        public void run() {
                            handlePluginDownloaded(plugin);
                        }
                    });
                    return true;
                }
                if (code == CALLBACK_SPEED) {
                    data.enforceInterface(CORE_CALLBACK_DESCRIPTOR);
                    data.readString();
                    data.readLong();
                    return true;
                }
                return super.onTransact(code, data, reply, flags);
            }
        }
    }
    private static final class AicrThreadFactory implements ThreadFactory {
        private final long mRequestId;
        private int mThreadNumber;
        AicrThreadFactory(long requestId) {
            mRequestId = requestId;
        }
        @Override
        public synchronized Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable, "OneStep-AICR-" + mRequestId + "-"
                    + (++mThreadNumber));
            thread.setDaemon(true);
            return thread;
        }
    }
}
