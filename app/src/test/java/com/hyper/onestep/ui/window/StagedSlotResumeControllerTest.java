package com.hyper.onestep.ui.window;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertTrue;

import org.junit.Test;

import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.List;
import java.util.Queue;

public class StagedSlotResumeControllerTest {
    private final Queue<Runnable> frames = new ArrayDeque<>();
    private final List<Integer> resumed = new ArrayList<>();
    private boolean foreground = true;
    private int mainSlot;
    private final StagedSlotResumeController controller = new StagedSlotResumeController(
            new StagedSlotResumeController.Scheduler() {
                @Override
                public void post(Runnable action) {
                    frames.add(action);
                }

                @Override
                public void remove(Runnable action) {
                    frames.remove(action);
                }
            }, new StagedSlotResumeController.Callbacks() {
                @Override
                public boolean canResume() {
                    return foreground;
                }

                @Override
                public boolean shouldResume(int slot) {
                    return slot != mainSlot;
                }

                @Override
                public void resumeSlot(int slot) {
                    assertFalse(controller.isPending(slot));
                    resumed.add(slot);
                }
            });

    @Test
    public void waitsForLayoutThenResumesOnlyOneSidePerFrame() {
        controller.begin(List.of(1, 2, 3));
        assertTrue(frames.isEmpty());
        assertTrue(controller.isPending(3));
        controller.resume();
        controller.resume();
        assertEquals(1, frames.size());
        frames.remove().run();
        assertEquals(List.of(1), resumed);
        assertTrue(controller.isPending(2));
        frames.remove().run();
        assertEquals(List.of(1, 2), resumed);
        frames.remove().run();
        assertEquals(List.of(1, 2, 3), resumed);
        assertTrue(frames.isEmpty());
    }

    @Test
    public void exitingCancelsAnAlreadyDispatchedResume() {
        controller.begin(List.of(1, 2, 3));
        controller.resume();
        Runnable stale = frames.remove();
        controller.cancel();
        stale.run();
        assertTrue(resumed.isEmpty());
        assertTrue(frames.isEmpty());
        assertFalse(controller.isPending(1));
    }

    @Test
    public void rapidReentryDoesNotRunAnOlderQueue() {
        controller.begin(List.of(1, 2, 3));
        controller.resume();
        Runnable stale = frames.remove();
        controller.begin(List.of(3, 2));
        controller.resume();
        stale.run();
        assertEquals(1, frames.size());
        frames.remove().run();
        assertEquals(List.of(3), resumed);
        assertTrue(controller.isPending(2));
    }

    @Test
    public void promotedMainSlotIsSkippedWithoutDelayingOtherSlots() {
        controller.begin(List.of(1, 2, 3));
        controller.resume();
        mainSlot = 1;
        frames.remove().run();
        assertEquals(List.of(2), resumed);
        assertFalse(controller.isPending(1));
        assertTrue(controller.isPending(3));
    }

    @Test
    public void backgroundingPreservesPendingSlotsUntilForeground() {
        controller.begin(List.of(1, 2, 3));
        controller.resume();
        frames.remove().run();
        foreground = false;
        frames.remove().run();
        assertEquals(List.of(1), resumed);
        assertTrue(frames.isEmpty());
        assertTrue(controller.isPending(2));
        foreground = true;
        controller.resume();
        frames.remove().run();
        assertEquals(List.of(1, 2), resumed);
    }

    @Test
    public void pausedCallbacksCannotResumeAfterForegroundChanges() {
        controller.begin(List.of(1, 2));
        controller.resume();
        Runnable stale = frames.remove();
        controller.pause();
        controller.resume();
        stale.run();
        assertTrue(resumed.isEmpty());
        frames.remove().run();
        assertEquals(List.of(1), resumed);
    }
}
