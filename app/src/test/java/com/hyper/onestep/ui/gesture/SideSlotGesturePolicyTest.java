package com.hyper.onestep.ui.gesture;

import org.junit.Test;

import static com.hyper.onestep.ui.gesture.SideSlotGesturePolicy.Direction.CANCELLED;
import static com.hyper.onestep.ui.gesture.SideSlotGesturePolicy.Direction.DISMISS;
import static com.hyper.onestep.ui.gesture.SideSlotGesturePolicy.Direction.PENDING;
import static com.hyper.onestep.ui.gesture.SideSlotGesturePolicy.Direction.SHELVE;
import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertTrue;

public class SideSlotGesturePolicyTest {
    @Test
    public void movementsBelowSlopDoNotSelectAnAction() {
        SideSlotGesturePolicy policy = new SideSlotGesturePolicy();

        assertEquals(PENDING, policy.move(9f, -9f, 10f, false, 1));
        assertEquals(PENDING, policy.move(-9f, 9f, 10f, false, -1));
        assertEquals(PENDING, policy.move(0f, 0f, 10f, true, 1));
    }

    @Test
    public void upwardGestureShelvesFromEitherSideAndVerticalLayout() {
        for (boolean vertical : new boolean[]{false, true}) {
            for (int outward : new int[]{-1, 1}) {
                SideSlotGesturePolicy policy = new SideSlotGesturePolicy();

                assertEquals(SHELVE, policy.move(4f, -10f, 10f, vertical, outward));
            }
        }
    }

    @Test
    public void outwardGestureMatchesTheSideContainingTheSlot() {
        SideSlotGesturePolicy right = new SideSlotGesturePolicy();
        SideSlotGesturePolicy left = new SideSlotGesturePolicy();

        assertEquals(DISMISS, right.move(10f, 4f, 10f, false, 1));
        assertEquals(DISMISS, left.move(-10f, -4f, 10f, false, -1));
    }

    @Test
    public void inwardGesturesNeverDismiss() {
        SideSlotGesturePolicy right = new SideSlotGesturePolicy();
        SideSlotGesturePolicy left = new SideSlotGesturePolicy();

        assertEquals(PENDING, right.move(-20f, 0f, 10f, false, 1));
        assertEquals(PENDING, left.move(20f, 0f, 10f, false, -1));
        assertEquals(CANCELLED, right.move(-30f, 0f, 10f, false, 1));
        assertEquals(CANCELLED, left.move(30f, 0f, 10f, false, -1));
    }

    @Test
    public void verticalLayoutReservesDownwardMotionForDismiss() {
        SideSlotGesturePolicy down = new SideSlotGesturePolicy();
        SideSlotGesturePolicy horizontal = new SideSlotGesturePolicy();

        assertEquals(DISMISS, down.move(-4f, 10f, 10f, true, -1));
        assertEquals(PENDING, horizontal.move(20f, 0f, 10f, true, 1));
        assertEquals(CANCELLED, horizontal.move(30f, 0f, 10f, true, 1));
        assertEquals(CANCELLED, horizontal.move(0f, 100f, 10f, true, 1));
    }

    @Test
    public void shelvingLockSurvivesDiagonalMotionAndCompleteDirectionReversal() {
        for (int outward : new int[]{-1, 1}) {
            SideSlotGesturePolicy policy = new SideSlotGesturePolicy();

            assertEquals(SHELVE, policy.move(0f, -20f, 10f, false, outward));
            assertEquals(SHELVE, policy.move(outward * 100f, -60f, 10f, false, outward));
            assertEquals(SHELVE, policy.move(outward * 100f, 100f, 10f, false, outward));
            assertEquals(SHELVE, policy.move(-outward * 100f, 100f, 10f, true, outward));
        }
    }

    @Test
    public void dismissLockSurvivesAnUpwardReversal() {
        SideSlotGesturePolicy policy = new SideSlotGesturePolicy();

        assertEquals(DISMISS, policy.move(20f, 0f, 10f, false, 1));
        assertEquals(DISMISS, policy.move(15f, -20f, 10f, false, 1));
        assertEquals(DISMISS, policy.move(-100f, -100f, 10f, false, 1));
    }

    @Test
    public void ambiguousDiagonalMotionCancelsWithoutDestructiveFallback() {
        for (boolean vertical : new boolean[]{false, true}) {
            for (int outward : new int[]{-1, 1}) {
                SideSlotGesturePolicy policy = new SideSlotGesturePolicy();

                assertEquals(PENDING, policy.move(outward * 10f, -10f, 10f, vertical, outward));
                assertEquals(PENDING, policy.move(outward * 29f, -29f, 10f, vertical, outward));
                assertEquals(CANCELLED, policy.move(outward * 30f, -30f, 10f, vertical, outward));
                assertEquals(CANCELLED, policy.move(outward * 100f, 100f, 10f, vertical, outward));
                assertEquals(CANCELLED, policy.move(0f, -100f, 10f, vertical, outward));
            }
        }
    }

    @Test
    public void multiTouchCancellationRemainsCancelledUntilTheNextGesture() {
        for (SideSlotGesturePolicy.Direction initial : new SideSlotGesturePolicy.Direction[]{
                PENDING, SHELVE, DISMISS}) {
            SideSlotGesturePolicy policy = new SideSlotGesturePolicy();
            if (initial == SHELVE) {
                policy.move(0f, -20f, 10f, false, 1);
            } else if (initial == DISMISS) {
                policy.move(20f, 0f, 10f, false, 1);
            }

            policy.cancel();

            assertEquals(CANCELLED, policy.direction());
            assertEquals(CANCELLED, policy.move(100f, 0f, 10f, false, 1));
            assertEquals(CANCELLED, policy.move(0f, -100f, 10f, false, 1));
            policy.reset();
            assertEquals(PENDING, policy.direction());
            assertEquals(SHELVE, policy.move(0f, -20f, 10f, false, 1));
        }
    }

    @Test
    public void grabbingAnExistingShelfAnimationStartsWithAnUpwardLock() {
        SideSlotGesturePolicy policy = new SideSlotGesturePolicy();

        policy.resumeShelving();

        assertEquals(SHELVE, policy.direction());
        assertEquals(SHELVE, policy.move(200f, 40f, 10f, false, 1));
        policy.reset();
        assertEquals(DISMISS, policy.move(20f, 0f, 10f, false, 1));
    }

    @Test
    public void distanceThresholdCommitsWithoutARequiredFling() {
        assertFalse(SideSlotGesturePolicy.shouldShelve(99.9f, 0f, 100f, 800f));
        assertTrue(SideSlotGesturePolicy.shouldShelve(100f, 0f, 100f, 800f));
        assertTrue(SideSlotGesturePolicy.shouldShelve(160f, 200f, 100f, 800f));
    }

    @Test
    public void shortFlingRequiresBothMinimumTravelAndUpwardVelocity() {
        assertFalse(SideSlotGesturePolicy.shouldShelve(39.9f, 1600f, 100f, 800f));
        assertFalse(SideSlotGesturePolicy.shouldShelve(40f, 799.9f, 100f, 800f));
        assertTrue(SideSlotGesturePolicy.shouldShelve(40f, 800f, 100f, 800f));
        assertTrue(SideSlotGesturePolicy.shouldShelve(99f, 1600f, 100f, 800f));
        assertFalse(SideSlotGesturePolicy.shouldShelve(50f, -1600f, 100f, 800f));
        assertFalse(SideSlotGesturePolicy.shouldShelve(0f, 1600f, 100f, 800f));
        assertFalse(SideSlotGesturePolicy.shouldShelve(-20f, 1600f, 100f, 800f));
    }

    @Test
    public void draggingBackToTheOriginRestoresFullScale() {
        assertEquals(1f, SideSlotGesturePolicy.dragScale(0f, 300f), 0f);
        assertEquals(1f, SideSlotGesturePolicy.dragScale(-10f, 300f), 0f);
        assertEquals(1f, SideSlotGesturePolicy.dragScale(-Float.MAX_VALUE, 300f), 0f);
    }

    @Test
    public void dragScaleIsFiniteBoundedAndMonotonicAcrossWindowSizes() {
        float[] distances = {0f, Float.MIN_VALUE, 1f, 20f, 50f, 100f, 400f, 2000f,
                Float.MAX_VALUE};
        for (float height : new float[]{-1f, 0f, Float.MIN_VALUE, 1f, 100f, 1200f,
                Float.MAX_VALUE}) {
            float previous = 1f;
            for (float distance : distances) {
                float scale = SideSlotGesturePolicy.dragScale(distance, height);

                assertTrue(Float.isFinite(scale));
                assertTrue(scale >= 0.38f - 0.000001f);
                assertTrue(scale <= 1f);
                assertTrue(scale <= previous);
                previous = scale;
            }
        }
    }

    @Test
    public void dragScaleDependsOnRelativeTravelAndEasesTowardItsLowerBound() {
        assertEquals(SideSlotGesturePolicy.dragScale(100f, 400f),
                SideSlotGesturePolicy.dragScale(200f, 800f), 0.000001f);
        float first = 1f - SideSlotGesturePolicy.dragScale(100f, 400f);
        float second = SideSlotGesturePolicy.dragScale(100f, 400f)
                - SideSlotGesturePolicy.dragScale(200f, 400f);
        float third = SideSlotGesturePolicy.dragScale(200f, 400f)
                - SideSlotGesturePolicy.dragScale(300f, 400f);

        assertTrue(first > second);
        assertTrue(second > third);
        assertTrue(third > 0f);
    }
}
