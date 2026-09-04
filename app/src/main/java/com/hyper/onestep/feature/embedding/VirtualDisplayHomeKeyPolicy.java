package com.hyper.onestep.feature.embedding;

public final class VirtualDisplayHomeKeyPolicy {
    private static final int ANDROID_11_API = 30;

    private VirtualDisplayHomeKeyPolicy() {
    }

    public static boolean shouldInjectHomeKey(int sdkInt) {
        
        return sdkInt != ANDROID_11_API;
    }
}
