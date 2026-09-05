package com.hyper.onestep.hook;

import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertTrue;

import org.junit.Test;

public class OneStepLsposedEntryTest {
    @Test
    public void recognizesFrameworkPackageNames() {
        assertTrue(OneStepLsposedEntry.isSystemFrameworkPackage("android"));
        assertTrue(OneStepLsposedEntry.isSystemFrameworkPackage("system"));
        assertFalse(OneStepLsposedEntry.isSystemFrameworkPackage("system_server"));
        assertFalse(OneStepLsposedEntry.isSystemFrameworkPackage("com.android.systemui"));
    }

    @Test
    public void recognizesSystemServerProcessNames() {
        assertTrue(OneStepLsposedEntry.isSystemServerProcess("android"));
        assertTrue(OneStepLsposedEntry.isSystemServerProcess("system"));
        assertTrue(OneStepLsposedEntry.isSystemServerProcess("system_server"));
        assertFalse(OneStepLsposedEntry.isSystemServerProcess("com.android.systemui"));
    }
}
