package com.leaf.hyperdragshare.codex;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.os.ParcelFileDescriptor;

import java.io.IOException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicReference;

final class ImageStagingClient {
    interface Callback {
        void onStaged(Uri uri);

        void onFailure(Throwable error);
    }

    static final String AUTHORITY = "com.hyper.onestep.dragshare";
    static final Uri BASE_URI = Uri.parse("content://" + AUTHORITY);
    static final String METHOD_STAGE = "stage_image";
    static final String METHOD_GRANT = "grant_image";
    static final String METHOD_REVOKE = "revoke_image";

    static final String EXTRA_BYTES = "bytes";
    static final String EXTRA_STREAM = "stream";
    static final String EXTRA_PACKAGE = "package";
    static final String RESULT_URI = "uri";
    static final String RESULT_GRANTED = "granted";

    private static final long ENCODER_JOIN_TIMEOUT_MS = 60_000L;
    private static final ExecutorService EXECUTOR = Executors.newSingleThreadExecutor(runnable -> {
        Thread thread = new Thread(runnable, "drag-share-image-stage");
        thread.setDaemon(true);
        return thread;
    });

    private ImageStagingClient() {}

    static void stage(Context context, Bitmap bitmap, Callback callback) {
        EXECUTOR.execute(() -> {
            try {
                callback.onStaged(stagePng(context, bitmap));
            } catch (Throwable error) {
                callback.onFailure(error);
            }
        });
    }

    private static Uri stagePng(Context context, Bitmap bitmap) throws Throwable {
        if (context == null || bitmap == null || bitmap.isRecycled()) {
            throw new IllegalArgumentException("Bitmap is unavailable");
        }
        ParcelFileDescriptor[] pipe = ParcelFileDescriptor.createPipe();
        ParcelFileDescriptor readSide = pipe[0];
        ParcelFileDescriptor writeSide = pipe[1];
        AtomicReference<Throwable> encoderFailure = new AtomicReference<>();
        Thread encoder = new Thread(() -> {
            try (ParcelFileDescriptor.AutoCloseOutputStream output =
                         new ParcelFileDescriptor.AutoCloseOutputStream(writeSide)) {
                BitmapEncoder.writePng(bitmap, output);
            } catch (Throwable error) {
                encoderFailure.set(error);
            }
        }, "drag-share-png-encoder");
        encoder.setDaemon(true);
        encoder.start();

        Bundle result = null;
        Throwable providerFailure = null;
        try {
            Bundle extras = new Bundle();
            extras.putParcelable(EXTRA_STREAM, readSide);
            result = context.getContentResolver().call(
                    BASE_URI, METHOD_STAGE, null, extras);
        } catch (Throwable error) {
            providerFailure = error;
        } finally {
            closeQuietly(readSide);
        }

        Throwable writeFailure = waitForEncoder(encoder, writeSide, encoderFailure);
        if (providerFailure != null) {
            if (writeFailure != null && writeFailure != providerFailure) {
                providerFailure.addSuppressed(writeFailure);
            }
            throw providerFailure;
        }
        if (writeFailure != null) {
            throw writeFailure;
        }
        String uriValue = result == null ? null : result.getString(RESULT_URI);
        if (uriValue == null) {
            throw new IllegalStateException("Image provider returned no URI");
        }
        return Uri.parse(uriValue);
    }

    private static Throwable waitForEncoder(
            Thread encoder,
            ParcelFileDescriptor writeSide,
            AtomicReference<Throwable> encoderFailure) {
        try {
            encoder.join(ENCODER_JOIN_TIMEOUT_MS);
        } catch (InterruptedException interrupted) {
            Thread.currentThread().interrupt();
            closeQuietly(writeSide);
            encoder.interrupt();
            return new IOException("PNG encoding interrupted", interrupted);
        }
        if (encoder.isAlive()) {
            closeQuietly(writeSide);
            encoder.interrupt();
            return new IOException("PNG encoding timed out");
        }
        return encoderFailure.get();
    }

    private static void closeQuietly(ParcelFileDescriptor descriptor) {
        if (descriptor == null) {
            return;
        }
        try {
            descriptor.close();
        } catch (IOException ignored) {
            
        }
    }

    static void grantReadAccess(Context context, Uri uri, String packageName) {
        Bundle extras = new Bundle();
        extras.putString(RESULT_URI, uri.toString());
        extras.putString(EXTRA_PACKAGE, packageName);
        Bundle result = context.getContentResolver().call(
                BASE_URI, METHOD_GRANT, null, extras);
        if (result == null || !result.getBoolean(RESULT_GRANTED)) {
            throw new SecurityException("Image provider did not grant URI access");
        }
    }

    static void revokeReadAccess(Context context, Uri uri, String packageName) {
        Bundle extras = new Bundle();
        extras.putString(RESULT_URI, uri.toString());
        extras.putString(EXTRA_PACKAGE, packageName);
        context.getContentResolver().call(BASE_URI, METHOD_REVOKE, null, extras);
    }
}
