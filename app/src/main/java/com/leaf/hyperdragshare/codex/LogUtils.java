package com.leaf.hyperdragshare.codex;

final class LogUtils {
    private LogUtils() {}

    static void d(String tag, String message) {
        DragShareLog.d(tag, message);
    }
}
