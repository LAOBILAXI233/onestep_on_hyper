package com.hyper.onestep.system.display;

public final class DisplayOwnerPolicy {
    private DisplayOwnerPolicy() {
    }

    public static boolean matches(Object currentOwner, Object requestingOwner) {
        return currentOwner != null && currentOwner == requestingOwner;
    }
}
