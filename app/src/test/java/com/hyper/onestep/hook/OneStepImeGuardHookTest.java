package com.hyper.onestep.hook;

import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertTrue;

import android.os.IBinder;
import android.os.ResultReceiver;

import java.lang.reflect.Method;

import org.junit.Test;

public class OneStepImeGuardHookTest {
    @Test
    public void acceptsCompleteSignatureAndRejectsUnknownOverloads() throws Exception {
        Method completeOverload = Android13Methods.class.getDeclaredMethod(
                "hideCurrentInputLocked", IBinder.class, int.class, ResultReceiver.class, int.class);
        Method binderOverload = Android16Methods.class.getDeclaredMethod(
                "hideCurrentInputLocked", IBinder.class, int.class, int.class, int.class);
        Method trackerOverload = Android16Methods.class.getDeclaredMethod(
                "hideCurrentInputLocked", Object.class, Object.class, int.class,
                Object.class, int.class, int.class);

        assertTrue(OneStepImeGuardHook.isHideCurrentInputLockedTarget(completeOverload));
        assertFalse(OneStepImeGuardHook.isHideCurrentInputLockedTarget(binderOverload));
        assertFalse(OneStepImeGuardHook.isHideCurrentInputLockedTarget(trackerOverload));
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

    private static final class Android13Methods {
        private boolean hideCurrentInputLocked(
                IBinder token, int flags, ResultReceiver receiver, int reason) {
            return false;
        }
    }

    private static final class Android16Methods {
        private boolean hideCurrentInputLocked(IBinder token, int flags, int reason, int userId) {
            return false;
        }

        private boolean hideCurrentInputLocked(
                Object token, Object imeTrackerToken, int flags, Object receiver,
                int reason, int userId) {
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
