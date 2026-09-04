package com.hyper.onestep.feature.embedding;

public final class DismissedAppClosePolicy {
    private DismissedAppClosePolicy() {
    }

    public static boolean shouldForceStop(boolean homeEntry) {
        return !homeEntry;
    }
}
