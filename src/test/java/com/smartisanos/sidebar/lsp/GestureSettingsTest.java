package com.hyper.sidebar.lsp;

import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertTrue;

import java.util.Collections;

import org.junit.Test;

public class GestureSettingsTest {
    @Test
    public void modulePackageIsAlwaysBlacklisted() {
        GestureSettings.Snapshot settings = new GestureSettings.Snapshot(
                false, GestureSettings.DEFAULT_LONG_PRESS_DURATION_MS,
                Collections.emptySet(), true, true, true);

        assertTrue(settings.isBlacklisted(TextBoomContract.MODULE_PACKAGE));
    }

    @Test
    public void userBlacklistStillApplies() {
        GestureSettings.Snapshot settings = new GestureSettings.Snapshot(
                false, GestureSettings.DEFAULT_LONG_PRESS_DURATION_MS,
                Collections.singleton("example.blocked"), true, true, true);

        assertTrue(settings.isBlacklisted("example.blocked"));
        assertFalse(settings.isBlacklisted("example.allowed"));
    }

    @Test
    public void bigBangDefaultsToEnabled() {
        assertTrue(GestureSettings.Snapshot.defaults().bigBangEnabled);
    }
}
