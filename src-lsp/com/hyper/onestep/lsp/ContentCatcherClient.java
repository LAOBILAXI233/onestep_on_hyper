package com.hyper.onestep.lsp;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Method;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
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
import java.util.concurrent.atomic.AtomicReference;
/** One-shot asynchronous client for HyperOS page-XML extraction. */
public final class ContentCatcherClient {
    private static final String SECURITY_SERVICE = "security";
    private static final String SECURITY_DESCRIPTOR = "miui.security.ISecurityManager";
    private static final String CALLBACK_DESCRIPTOR = "miui.security.IUIAgentCallback";
    private static final int SECURITY_ON_UI_AGENT_EVENT = 129;
    private static final int CALLBACK_ON_RESULT = 1;
    private static final int UI_AGENT_CAPTURE_SCREEN_CONTENT = 0;
    private static final int RESULT_SUCCESS = 0;
    private static final int MAX_XML_BYTES = 16 * 1024 * 1024;
    private static final String KEY_UI_AGENT_TYPE = "uiAgentType";
    private static final String KEY_PACKAGE_NAMES = "packageNames";
    private static final String KEY_CODE = "code";
    private static final String KEY_REASON = "reason";
    private static final String KEY_TOKEN = "token";
    private static final String KEY_STATUS = "status";
    private static final String KEY_VERSION = "version";
    private static final String KEY_CALLBACK_COUNT = "callbackCount";
    private static final String KEY_CONTENT = "content";
    private static final AtomicLong NEXT_REQUEST_ID = new AtomicLong();
    private ContentCatcherClient() {}
    /** Receives exactly one terminal result. */
    public interface Callback {
        void onSuccess(String xml);
        /** {@code stage} identifies service lookup, request, result, read, or timeout failure. */
        void onError(String stage, Throwable error);
    }
    public static Request capture(Context context, String packageName, long timeoutMs,
            Executor callbackExecutor, Callback callback) {
        Objects.requireNonNull(packageName, "packageName");
        return capture(context, new String[] { packageName }, timeoutMs,
                callbackExecutor, callback);
    }
    public static Request capture(Context context, String[] packageNames, long timeoutMs,
            Executor callbackExecutor, Callback callback) {
        Objects.requireNonNull(context, "context");
        Objects.requireNonNull(packageNames, "packageNames");
        Objects.requireNonNull(callbackExecutor, "callbackExecutor");
        Objects.requireNonNull(callback, "callback");
        if (timeoutMs <= 0L) {
            throw new IllegalArgumentException("timeoutMs must be greater than zero");
        }
        if (packageNames.length == 0) {
            throw new IllegalArgumentException("packageNames must not be empty");
        }
        String[] packageNamesCopy = packageNames.clone();
        for (int i = 0; i < packageNamesCopy.length; i++) {
            String packageName = packageNamesCopy[i];
            if (packageName == null || packageName.trim().isEmpty()) {
                throw new IllegalArgumentException(
                        "packageNames[" + i + "] must not be blank");
            }
            packageNamesCopy[i] = packageName.trim();
        }
        Context appContext = context.getApplicationContext();
        Request request = new Request(appContext == null ? context : appContext,
                packageNamesCopy, timeoutMs, callbackExecutor, callback,
                NEXT_REQUEST_ID.incrementAndGet());
        request.start();
        return request;
    }
    public static Request capture(Context context, String packageName, long timeoutMs,
            Callback callback) {
        Objects.requireNonNull(context, "context");
        return capture(context, packageName, timeoutMs, context.getMainExecutor(), callback);
    }
    public static Request capture(Context context, String[] packageNames, long timeoutMs,
            Callback callback) {
        Objects.requireNonNull(context, "context");
        return capture(context, packageNames, timeoutMs, context.getMainExecutor(), callback);
    }
    /** Handle for cancellation and terminal-state observation of a one-shot capture request. */
    public static final class Request {
        private final Context mContext;
        private final String[] mRequestedPackageNames;
        private final long mTimeoutMs;
        private final Executor mCallbackExecutor;
        private final Callback mCallback;
        private final ScheduledThreadPoolExecutor mWorker;
        private final AtomicBoolean mFinished = new AtomicBoolean();
        private final AtomicBoolean mResultClaimed = new AtomicBoolean();
        private final AtomicReference<ParcelFileDescriptor> mPendingContent =
                new AtomicReference<>();
        private final Object mServiceLock = new Object();
        private final ResultCallbackBinder mResultCallback = new ResultCallbackBinder();
        private volatile ScheduledFuture<?> mTimeoutFuture;
        private IBinder mSecurityBinder;
        private boolean mDeathLinked;
        private final IBinder.DeathRecipient mDeathRecipient = new IBinder.DeathRecipient() {
            @Override
            public void binderDied() {
                finishError("service-death",
                        new RemoteException("HyperOS security service Binder died"));
            }
        };
        private Request(Context context, String[] packageNames, long timeoutMs,
                Executor callbackExecutor, Callback callback, long requestId) {
            mContext = context;
            mRequestedPackageNames = packageNames;
            mTimeoutMs = timeoutMs;
            mCallbackExecutor = callbackExecutor;
            mCallback = callback;
            mWorker = new ScheduledThreadPoolExecutor(2,
                    new ContentCatcherThreadFactory(requestId));
            mWorker.setRemoveOnCancelPolicy(true);
            mWorker.setExecuteExistingDelayedTasksAfterShutdownPolicy(false);
        }
        private void start() {
            mTimeoutFuture = mWorker.schedule(new Runnable() {
                @Override
                public void run() {
                    finishError("timeout", new TimeoutException(
                            "ContentCatcher timed out after " + mTimeoutMs + " ms"));
                }
            }, mTimeoutMs, TimeUnit.MILLISECONDS);
            postWorker("request", new Runnable() {
                @Override
                public void run() {
                    sendRequest();
                }
            });
        }
        /** Cancels the request and reports a terminal {@code cancel} error to the callback. */
        public void cancel() {
            finishError("cancel",
                    new CancellationException("ContentCatcher request cancelled"));
        }
        public boolean isDone() {
            return mFinished.get();
        }
        private void sendRequest() {
            if (mFinished.get()) return;
            final IBinder security;
            try {
                security = getSecurityService();
            } catch (Throwable error) {
                finishError("get-service", new IllegalStateException(
                        "Could not resolve HyperOS security service", error));
                return;
            }
            if (security == null) {
                finishError("get-service", new IllegalStateException(
                        "HyperOS security service is unavailable"));
                return;
            }
            synchronized (mServiceLock) {
                if (mFinished.get()) return;
                try {
                    security.linkToDeath(mDeathRecipient, 0);
                    mSecurityBinder = security;
                    mDeathLinked = true;
                } catch (Throwable error) {
                    finishError("service-death", new IllegalStateException(
                            "Could not watch HyperOS security service death", error));
                    return;
                }
            }
            final String[] listenerTokens;
            try {
                listenerTokens = resolveListenerTokens();
            } catch (Throwable error) {
                finishError("resolve-package", new IllegalStateException(
                        "Could not resolve ContentCatcher listener token", error));
                return;
            }
            Bundle request = new Bundle();
            request.putInt(KEY_UI_AGENT_TYPE, UI_AGENT_CAPTURE_SCREEN_CONTENT);
            request.putStringArray(KEY_PACKAGE_NAMES, listenerTokens);
            Parcel data = Parcel.obtain();
            Parcel reply = Parcel.obtain();
            try {
                data.writeInterfaceToken(SECURITY_DESCRIPTOR);
                data.writeTypedObject(request, 0);
                data.writeStrongBinder(mResultCallback);
                if (!security.transact(SECURITY_ON_UI_AGENT_EVENT, data, reply, 0)) {
                    throw new RemoteException("Security service did not handle transaction "
                            + SECURITY_ON_UI_AGENT_EVENT);
                }
                reply.readException();
                LSPLogger.d("ContentCatcherClient: request accepted for "
                        + Arrays.toString(listenerTokens));
            } catch (Throwable error) {
                finishError("request", new IllegalStateException(
                        "ContentCatcher request failed", error));
            } finally {
                reply.recycle();
                data.recycle();
            }
        }
        private void acceptResult(Bundle result) {
            if (result == null) {
                finishError("result", new IllegalStateException(
                        "ContentCatcher returned a null result Bundle"));
                return;
            }
            final ResultEnvelope envelope;
            try {
                result.setClassLoader(ParcelFileDescriptor.class.getClassLoader());
                envelope = new ResultEnvelope(
                        result.getInt(KEY_CODE, -1),
                        result.getString(KEY_REASON, ""),
                        result.getString(KEY_TOKEN, ""),
                        result.getInt(KEY_STATUS, -1),
                        result.getInt(KEY_VERSION, -1),
                        result.getInt(KEY_CALLBACK_COUNT, -1),
                        result.getParcelable(KEY_CONTENT, ParcelFileDescriptor.class));
            } catch (Throwable error) {
                finishError("result", new IllegalStateException(
                        "Could not decode ContentCatcher result Bundle", error));
                return;
            }
            if (mFinished.get() || !mResultClaimed.compareAndSet(false, true)) {
                closeQuietly(envelope.content);
                return;
            }
            mPendingContent.set(envelope.content);
            if (mFinished.get()) {
                closePendingContent();
                return;
            }
            try {
                mWorker.execute(new Runnable() {
                    @Override
                    public void run() {
                        handleResult(envelope);
                    }
                });
            } catch (RejectedExecutionException error) {
                closePendingContent();
                finishError("result-dispatch", error);
            }
        }
        private void handleResult(ResultEnvelope result) {
            if (result.content != null
                    && mPendingContent.get() != result.content) {
                closeQuietly(result.content);
                return;
            }
            try {
                if (mFinished.get()) return;
                if (result.code != RESULT_SUCCESS) {
                    finishError("vendor-result", new IllegalStateException(
                            "ContentCatcher returned code=" + result.code
                                    + ", reason=" + result.reason
                                    + ", token=" + result.token
                                    + ", callbackCount=" + result.callbackCount));
                    return;
                }
                if (result.content == null) {
                    finishError("content", new IllegalStateException(
                            "ContentCatcher success result did not include content"
                                    + ", status=" + result.status
                                    + ", version=" + result.version));
                    return;
                }
                final String xml;
                try {
                    xml = readXml(result.content);
                } catch (Throwable error) {
                    finishError("read-content", new IllegalStateException(
                            "Could not read ContentCatcher XML", error));
                    return;
                }
                finishSuccess(xml);
            } finally {
                mPendingContent.compareAndSet(result.content, null);
                closeQuietly(result.content);
            }
        }
        private void finishSuccess(final String xml) {
            if (!mFinished.compareAndSet(false, true)) return;
            cancelTimeout();
            closePendingContent();
            cleanupService();
            dispatchCallback(new Runnable() {
                @Override
                public void run() {
                    mCallback.onSuccess(xml);
                }
            });
            mWorker.shutdownNow();
            LSPLogger.i("ContentCatcherClient: capture completed, chars=" + xml.length());
        }
        private void finishError(final String stage, final Throwable error) {
            if (!mFinished.compareAndSet(false, true)) return;
            cancelTimeout();
            closePendingContent();
            cleanupService();
            dispatchCallback(new Runnable() {
                @Override
                public void run() {
                    mCallback.onError(stage, error);
                }
            });
            mWorker.shutdownNow();
            LSPLogger.w("ContentCatcherClient: failed at stage=" + stage, error);
        }
        private void cancelTimeout() {
            ScheduledFuture<?> timeout = mTimeoutFuture;
            if (timeout != null) timeout.cancel(false);
        }
        private void cleanupService() {
            synchronized (mServiceLock) {
                if (mSecurityBinder != null && mDeathLinked) {
                    try {
                        mSecurityBinder.unlinkToDeath(mDeathRecipient, 0);
                    } catch (Throwable ignored) {
                    }
                }
                mSecurityBinder = null;
                mDeathLinked = false;
            }
        }
        private void closePendingContent() {
            closeQuietly(mPendingContent.getAndSet(null));
        }
        private void dispatchCallback(Runnable callback) {
            try {
                mCallbackExecutor.execute(callback);
            } catch (Throwable error) {
                LSPLogger.w("ContentCatcherClient: callback executor rejected terminal result",
                        error);
            }
        }
        private void postWorker(final String stage, final Runnable action) {
            try {
                mWorker.execute(new Runnable() {
                    @Override
                    public void run() {
                        if (mFinished.get()) return;
                        try {
                            action.run();
                        } catch (Throwable error) {
                            finishError(stage, error);
                        }
                    }
                });
            } catch (RejectedExecutionException error) {
                finishError(stage + "-dispatch", error);
            }
        }
        private String[] resolveListenerTokens() throws PackageManager.NameNotFoundException {
            String[] listenerTokens = new String[mRequestedPackageNames.length];
            for (int i = 0; i < mRequestedPackageNames.length; i++) {
                String packageName = mRequestedPackageNames[i];
                if (isListenerToken(packageName)) {
                    listenerTokens[i] = packageName;
                    continue;
                }
                int uid = mContext.getPackageManager().getPackageUid(packageName, 0);
                listenerTokens[i] = packageName + "~" + uid;
            }
            return listenerTokens;
        }
        private final class ResultCallbackBinder extends Binder {
            ResultCallbackBinder() {
                attachInterface(null, CALLBACK_DESCRIPTOR);
            }
            @Override
            protected boolean onTransact(int code, Parcel data, Parcel reply, int flags)
                    throws RemoteException {
                if (code == INTERFACE_TRANSACTION) {
                    if (reply != null) reply.writeString(CALLBACK_DESCRIPTOR);
                    return true;
                }
                if (code != CALLBACK_ON_RESULT) {
                    return super.onTransact(code, data, reply, flags);
                }
                data.enforceInterface(CALLBACK_DESCRIPTOR);
                Bundle result = data.readTypedObject(Bundle.CREATOR);
                data.enforceNoDataAvail();
                acceptResult(result);
                return true;
            }
        }
    }
    private static boolean isListenerToken(String value) {
        int separator = value.lastIndexOf('~');
        if (separator <= 0 || separator == value.length() - 1) return false;
        try {
            Integer.parseInt(value.substring(separator + 1));
            return true;
        } catch (NumberFormatException ignored) {
            return false;
        }
    }
    private static IBinder getSecurityService() throws Exception {
        Class<?> serviceManager = Class.forName("android.os.ServiceManager");
        Method getService = serviceManager.getDeclaredMethod("getService", String.class);
        getService.setAccessible(true);
        Object service = getService.invoke(null, SECURITY_SERVICE);
        if (service == null) return null;
        if (!(service instanceof IBinder)) {
            throw new IllegalStateException("ServiceManager returned "
                    + service.getClass().getName() + " for " + SECURITY_SERVICE);
        }
        return (IBinder) service;
    }
    private static String readXml(ParcelFileDescriptor descriptor) throws IOException {
        try (InputStream input = new ParcelFileDescriptor.AutoCloseInputStream(descriptor);
                ByteArrayOutputStream output = new ByteArrayOutputStream(8192)) {
            byte[] buffer = new byte[8192];
            int total = 0;
            int read;
            while ((read = input.read(buffer)) != -1) {
                total += read;
                if (total > MAX_XML_BYTES) {
                    throw new IOException("ContentCatcher XML exceeds " + MAX_XML_BYTES
                            + " bytes");
                }
                output.write(buffer, 0, read);
            }
            return output.toString(StandardCharsets.UTF_8.name());
        }
    }
    private static void closeQuietly(ParcelFileDescriptor descriptor) {
        if (descriptor == null) return;
        try {
            descriptor.close();
        } catch (Throwable ignored) {
        }
    }
    private static final class ResultEnvelope {
        final int code;
        final String reason;
        final String token;
        final int status;
        final int version;
        final int callbackCount;
        final ParcelFileDescriptor content;
        ResultEnvelope(int code, String reason, String token, int status, int version,
                int callbackCount, ParcelFileDescriptor content) {
            this.code = code;
            this.reason = reason;
            this.token = token;
            this.status = status;
            this.version = version;
            this.callbackCount = callbackCount;
            this.content = content;
        }
    }
    private static final class ContentCatcherThreadFactory implements ThreadFactory {
        private final long mRequestId;
        private int mThreadNumber;
        ContentCatcherThreadFactory(long requestId) {
            mRequestId = requestId;
        }
        @Override
        public synchronized Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable,
                    "OneStep-ContentCatcher-" + mRequestId + "-" + (++mThreadNumber));
            thread.setDaemon(true);
            return thread;
        }
    }
}
