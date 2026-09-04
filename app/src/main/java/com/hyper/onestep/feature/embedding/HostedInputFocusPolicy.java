package com.hyper.onestep.feature.embedding;

public final class HostedInputFocusPolicy {
    private static final int ANDROID_17_API = 37;

    private HostedInputFocusPolicy() {
    }

    public static boolean shouldUseDemotedFocusWindow(int sdkInt) {
        
        return sdkInt < ANDROID_17_API;
    }
}
