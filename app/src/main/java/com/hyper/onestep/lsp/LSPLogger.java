package com.hyper.onestep.lsp;

import android.util.Log;

public final class LSPLogger {
    private static final String PREFIX = "OneStep.";

    private LSPLogger() {
    }

    public static void d(String tag, String msg) {
        Log.d(PREFIX + tag, msg);
    }

    public static void i(String tag, String msg) {
        Log.i(PREFIX + tag, msg);
    }

    public static void w(String tag, String msg) {
        Log.w(PREFIX + tag, msg);
    }

    public static void w(String tag, String msg, Throwable t) {
        Log.w(PREFIX + tag, msg, t);
    }

    public static void e(String tag, String msg) {
        Log.e(PREFIX + tag, msg);
    }

    public static void e(String tag, String msg, Throwable t) {
        Log.e(PREFIX + tag, msg, t);
    }

    public static void d(String msg) {
        Log.d(PREFIX + "legacy", msg);
    }

    public static void d(String msg, Throwable t) {
        Log.d(PREFIX + "legacy", msg, t);
    }

    public static void i(String msg) {
        Log.i(PREFIX + "legacy", msg);
    }

    public static void i(String msg, Throwable t) {
        Log.i(PREFIX + "legacy", msg, t);
    }

    public static void w(String msg) {
        Log.w(PREFIX + "legacy", msg);
    }

    public static void w(String msg, Throwable t) {
        Log.w(PREFIX + "legacy", msg, t);
    }

    public static void e(String msg) {
        Log.e(PREFIX + "legacy", msg);
    }

    public static void e(String msg, Throwable t) {
        Log.e(PREFIX + "legacy", msg, t);
    }
}
