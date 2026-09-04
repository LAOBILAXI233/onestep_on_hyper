package com.leaf.hyperdragshare.codex;

import java.util.concurrent.atomic.AtomicInteger;

public final class DragShareSuppression {
    private static final AtomicInteger DEPTH = new AtomicInteger();

    private DragShareSuppression() {
    }

    public static void begin() {
        DEPTH.incrementAndGet();
    }

    public static void end() {
        int value;
        do {
            value = DEPTH.get();
            if (value <= 0) {
                return;
            }
        } while (!DEPTH.compareAndSet(value, value - 1));
    }

    public static boolean isActive() {
        return DEPTH.get() > 0;
    }
}
