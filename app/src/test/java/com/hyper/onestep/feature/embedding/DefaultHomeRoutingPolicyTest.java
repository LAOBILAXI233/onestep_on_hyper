package com.hyper.onestep.feature.embedding;

import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertTrue;

import org.junit.Test;

public final class DefaultHomeRoutingPolicyTest {
    @Test
    public void interceptsPhysicalHomeOnlyWhenOneStepIsDefault() {
        assertTrue(DefaultHomeRoutingPolicy.shouldInterceptSystemHome(
                "com.hyper.onestep", "com.hyper.onestep"));
        assertFalse(DefaultHomeRoutingPolicy.shouldInterceptSystemHome(
                "com.hyper.onestep", "com.miui.home"));
        assertFalse(DefaultHomeRoutingPolicy.shouldInterceptSystemHome(
                "com.hyper.onestep", "com.example.launcher"));
        assertFalse(DefaultHomeRoutingPolicy.shouldInterceptSystemHome(
                "com.hyper.onestep", null));
        assertFalse(DefaultHomeRoutingPolicy.shouldInterceptSystemHome(
                null, "com.hyper.onestep"));
    }
}
