package com.hyper.onestep.hook;

import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertTrue;

import java.lang.reflect.Method;

import org.junit.Test;

public class OneStepImeGuardHookTest {
    @Test
    public void acceptsAndroid16HideCurrentInputLockedOverloads() throws Exception {
        Method binderOverload = Android16Methods.class.getDeclaredMethod(
                "hideCurrentInputLocked", Object.class, int.class, int.class, int.class);
        Method trackerOverload = Android16Methods.class.getDeclaredMethod(
                "hideCurrentInputLocked", Object.class, Object.class, int.class,
                Object.class, int.class, int.class);

        assertTrue(OneStepImeGuardHook.isHideCurrentInputLockedTarget(binderOverload));
        assertTrue(OneStepImeGuardHook.isHideCurrentInputLockedTarget(trackerOverload));
    }

    @Test
    public void rejectsNonBooleanOrEmptyMethods() throws Exception {
        Method voidMethod = InvalidMethods.class.getDeclaredMethod(
                "hideCurrentInputLocked", int.class);
        Method emptyMethod = InvalidMethods.class.getDeclaredMethod(
                "hideCurrentInputLocked");

        assertFalse(OneStepImeGuardHook.isHideCurrentInputLockedTarget(voidMethod));
        assertFalse(OneStepImeGuardHook.isHideCurrentInputLockedTarget(emptyMethod));
    }

    private static final class Android16Methods {
        private boolean hideCurrentInputLocked(Object token, int reason, int flags, int displayId) {
            return false;
        }

        private boolean hideCurrentInputLocked(
                Object token, Object imeTrackerToken, int reason, Object receiver,
                int flags, int displayId) {
            return false;
        }
    }

    private static final class InvalidMethods {
        private void hideCurrentInputLocked(int reason) {
        }

        private boolean hideCurrentInputLocked() {
            return false;
        }
    }
}
