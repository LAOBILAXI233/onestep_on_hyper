package com.leaf.hyperdragshare.codex;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.concurrent.TimeUnit;

final class RootScreenshotter {
    private static final long COMMAND_TIMEOUT_SECONDS = 4L;

    Bitmap capture() throws IOException {
        java.lang.Process process = null;
        try {
            process = new ProcessBuilder("su", "-c", "/system/bin/screencap -p").start();
            byte[] bytes;
            try (InputStream input = process.getInputStream()) {
                bytes = readAll(input);
            }
            if (!process.waitFor(COMMAND_TIMEOUT_SECONDS, TimeUnit.SECONDS)) {
                process.destroyForcibly();
                throw new IOException("Root screencap timed out");
            }
            if (process.exitValue() != 0 || bytes.length == 0) {
                throw new IOException("Root screencap failed");
            }
            Bitmap bitmap = BitmapFactory.decodeByteArray(bytes, 0, bytes.length);
            if (bitmap == null) {
                throw new IOException("Root screencap returned invalid PNG");
            }
            return bitmap;
        } catch (InterruptedException interrupted) {
            Thread.currentThread().interrupt();
            throw new IOException("Root screencap interrupted", interrupted);
        } finally {
            if (process != null) {
                try {
                    process.getErrorStream().close();
                } catch (IOException ignored) {
                    
                }
                process.destroy();
            }
        }
    }

    private static byte[] readAll(InputStream input) throws IOException {
        ByteArrayOutputStream output = new ByteArrayOutputStream();
        byte[] buffer = new byte[64 * 1024];
        int read;
        while ((read = input.read(buffer)) >= 0) {
            if (read > 0) {
                output.write(buffer, 0, read);
            }
        }
        return output.toByteArray();
    }
}
