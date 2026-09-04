package com.hyper.onestep.feature.embedding;

public final class DefaultHomeRoutingPolicy {
    private DefaultHomeRoutingPolicy() {
    }

    public static boolean shouldInterceptSystemHome(String oneStepPackage,
                                                    String defaultHomePackage) {
        return oneStepPackage != null && oneStepPackage.equals(defaultHomePackage);
    }
}
