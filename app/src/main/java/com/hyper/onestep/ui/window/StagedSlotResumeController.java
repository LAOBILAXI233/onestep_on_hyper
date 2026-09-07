package com.hyper.onestep.ui.window;

import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

public final class StagedSlotResumeController {
    public interface Scheduler {
        void post(Runnable action);
        void remove(Runnable action);
    }

    public interface Callbacks {
        boolean canResume();
        boolean shouldResume(int slot);
        void resumeSlot(int slot);
    }

    private final Scheduler scheduler;
    private final Callbacks callbacks;
    private final Set<Integer> pending = new LinkedHashSet<>();
    private Runnable scheduled;
    private int generation;

    public StagedSlotResumeController(Scheduler scheduler, Callbacks callbacks) {
        this.scheduler = scheduler;
        this.callbacks = callbacks;
    }

    public void begin(List<Integer> slots) {
        cancel();
        pending.addAll(slots);
    }

    public boolean isPending(int slot) {
        return pending.contains(slot);
    }

    public void resume() {
        if (scheduled != null || pending.isEmpty() || !callbacks.canResume()) {
            return;
        }
        int expectedGeneration = generation;
        scheduled = () -> {
            if (generation != expectedGeneration) {
                return;
            }
            scheduled = null;
            if (!callbacks.canResume()) {
                return;
            }
            while (!pending.isEmpty()) {
                int slot = pending.iterator().next();
                pending.remove(slot);
                if (callbacks.shouldResume(slot)) {
                    callbacks.resumeSlot(slot);
                    break;
                }
            }
            if (generation == expectedGeneration) {
                resume();
            }
        };
        scheduler.post(scheduled);
    }

    public void pause() {
        generation++;
        if (scheduled != null) {
            scheduler.remove(scheduled);
            scheduled = null;
        }
    }

    public void cancel() {
        pause();
        pending.clear();
    }
}
