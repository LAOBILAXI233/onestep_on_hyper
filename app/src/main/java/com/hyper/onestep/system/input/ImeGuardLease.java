package com.hyper.onestep.system.input;

public final class ImeGuardLease {
    public static final String PROPERTY = "onestep.ime.guard";
    public static final long DURATION_MS = 1200L;

    public final int displayId;
    public final long requestedAt;

    private ImeGuardLease(int displayId, long requestedAt) {
        this.displayId = displayId;
        this.requestedAt = requestedAt;
    }

    public static String encode(int displayId, long requestedAt) {
        return displayId > 0 && requestedAt > 0L ? displayId + ":" + requestedAt : "0";
    }

    public static ImeGuardLease parse(String value, long now) {
        if (value == null) {
            return null;
        }
        String[] parts = value.split(":", -1);
        if (parts.length != 2) {
            return null;
        }
        try {
            int displayId = Integer.parseInt(parts[0]);
            long requestedAt = Long.parseLong(parts[1]);
            if (displayId <= 0 || requestedAt <= 0L || requestedAt > now
                    || now - requestedAt > DURATION_MS) {
                return null;
            }
            return new ImeGuardLease(displayId, requestedAt);
        } catch (NumberFormatException e) {
            return null;
        }
    }
}
