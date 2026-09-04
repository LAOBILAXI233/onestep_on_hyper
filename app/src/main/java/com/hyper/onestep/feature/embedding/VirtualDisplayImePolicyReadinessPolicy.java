package com.hyper.onestep.feature.embedding;

public final class VirtualDisplayImePolicyReadinessPolicy {
    public enum Decision {
        READY,
        RETRY,
        REJECT
    }

    private VirtualDisplayImePolicyReadinessPolicy() {
    }

    public static Decision evaluate(int displayId, boolean hasVirtualDisplay,
                                    boolean closing, long nowUptimeMs,
                                    long readyDeadlineUptimeMs) {
        if (closing) {
            return Decision.REJECT;
        }
        if (displayId > 0 && hasVirtualDisplay) {
            return Decision.READY;
        }
        return nowUptimeMs < readyDeadlineUptimeMs
                ? Decision.RETRY : Decision.REJECT;
    }
}
