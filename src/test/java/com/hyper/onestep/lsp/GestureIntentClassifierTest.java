package com.hyper.onestep.lsp;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;

import org.junit.Test;

public class GestureIntentClassifierTest {
    private static final float DENSITY = 3.75f;

    @Test
    public void capturedLeftDownGestureIsRecognized() {
        GestureIntentClassifier classifier = steadyClassifier(450L);

        swipe(classifier, 450L, -155f, 210f, 9, 45L);

        assertEquals(GestureIntentClassifier.Outcome.SWIPE_LEFT,
                classifier.getOutcome());
    }

    @Test
    public void capturedRightDownGestureIsRecognized() {
        GestureIntentClassifier classifier = steadyClassifier(450L);

        swipe(classifier, 450L, 384f, 316f, 9, 35L);

        assertEquals(GestureIntentClassifier.Outcome.SWIPE_RIGHT,
                classifier.getOutcome());
    }

    @Test
    public void immediateScrollDoesNotArm() {
        GestureIntentClassifier classifier = new GestureIntentClassifier();
        classifier.start(0f, 0f, 0L, DENSITY);
        classifier.addSample(2f, 100f, 45L, false, null);
        classifier.addSample(4f, 320f, 320L, false, null);

        assertEquals(GestureIntentClassifier.Outcome.NONE, classifier.getOutcome());
        assertTrue(classifier.summary(320L).contains("moved-before-steady"));
    }

    @Test
    public void heldVerticalScrollDoesNotTrigger() {
        GestureIntentClassifier classifier = steadyClassifier(320L);
        for (int i = 1; i <= 8; i++) {
            classifier.addSample(6f, i * 45f, 320L + i * 40L, false, null);
        }

        assertEquals(GestureIntentClassifier.Outcome.NONE, classifier.getOutcome());
    }

    @Test
    public void staticPressDoesNothingWithoutFallbackAction() {
        GestureIntentClassifier classifier = new GestureIntentClassifier();
        classifier.start(0f, 0f, 0L, DENSITY);
        classifier.addSample(1f, 1f, 800L, false, null);

        assertTrue(classifier.isArmed());
        assertEquals(GestureIntentClassifier.Outcome.NONE, classifier.getOutcome());
    }

    @Test
    public void steadyPressCanConfirmFallbackAfterSoftwareArm() {
        GestureIntentClassifier classifier = steadyClassifier(800L);

        assertTrue(classifier.isArmed());
        assertTrue(classifier.canConfirmLongPressFallback());
    }

    @Test
    public void movementAfterSoftwareArmCannotConfirmFallback() {
        GestureIntentClassifier classifier = steadyClassifier(320L);
        classifier.addSample(160f, 140f, 700L, false, null);

        assertTrue(!classifier.canConfirmLongPressFallback());
    }

    @Test
    public void strongAreaEvidenceCanArmWithoutWaiting() {
        GestureIntentClassifier classifier = new GestureIntentClassifier();
        classifier.start(0f, 0f, 0L, DENSITY);
        classifier.addSample(0f, 0f, 10L, true, "test-area");

        swipe(classifier, 10L, 180f, 150f, 8, 25L);

        assertEquals(GestureIntentClassifier.Outcome.SWIPE_RIGHT,
                classifier.getOutcome());
    }

    @Test
    public void strongAreaEvidenceOnInitialDuplicateIsPreserved() {
        GestureIntentClassifier classifier = new GestureIntentClassifier();
        classifier.start(12f, 34f, 1000L, DENSITY);

        classifier.addSample(12f, 34f, 1000L, true, "test-area");

        assertTrue(classifier.isArmed());
    }

    @Test
    public void replayedHistoricalSamplesAreIgnored() {
        GestureIntentClassifier classifier = new GestureIntentClassifier();
        classifier.start(0f, 0f, 1000L, DENSITY);
        classifier.addSample(0f, 0f, 1000L, true, "test-area");

        classifier.addSample(30f, 25f, 1020L, false, null);
        classifier.addSample(90f, 75f, 1040L, false, null);
        classifier.addSample(30f, 25f, 1020L, false, null);
        classifier.addSample(90f, 75f, 1040L, false, null);
        classifier.addSample(130f, 110f, 1080L, false, null);
        classifier.addSample(170f, 145f, 1120L, false, null);

        assertEquals(GestureIntentClassifier.Outcome.SWIPE_RIGHT,
                classifier.getOutcome());
        assertTrue(classifier.summary(1120L).contains("reverse=0.0"));
    }

    @Test
    public void sameTimestampDifferentCoordinateIsRetained() {
        GestureIntentClassifier classifier = new GestureIntentClassifier();
        classifier.start(0f, 0f, 1000L, DENSITY);
        classifier.addSample(0f, 0f, 1000L, true, "test-area");

        classifier.addSample(30f, 25f, 1020L, false, null);
        classifier.addSample(60f, 50f, 1020L, false, null);
        classifier.addSample(100f, 85f, 1050L, false, null);
        classifier.addSample(140f, 120f, 1085L, false, null);

        assertEquals(GestureIntentClassifier.Outcome.SWIPE_RIGHT,
                classifier.getOutcome());
    }

    @Test
    public void dwellJitterDoesNotPolluteSwipePath() {
        GestureIntentClassifier classifier = areaClassifier();
        for (int i = 1; i <= 20; i++) {
            classifier.addSample(i % 2 == 0 ? 20f : -20f, 0f,
                    i * 20L, false, null);
        }

        swipe(classifier, 500L, 180f, 150f, 8, 30L);

        assertEquals(GestureIntentClassifier.Outcome.SWIPE_RIGHT,
                classifier.getOutcome());
    }

    @Test
    public void dwellJitterDoesNotPreloadMovementSampleGate() {
        GestureIntentClassifier classifier = areaClassifier();
        for (int i = 1; i <= 20; i++) {
            classifier.addSample(i % 2 == 0 ? 1.2f : -1.2f, 0f,
                    i * 20L, false, null);
        }

        classifier.addSample(60f, 50f, 600L, false, null);
        classifier.addSample(130f, 110f, 640L, false, null);
        classifier.addSample(180f, 150f, 680L, false, null);

        assertEquals(GestureIntentClassifier.Outcome.NONE, classifier.getOutcome());
    }

    @Test
    public void readySurvivesSmallReleaseJitter() {
        GestureIntentClassifier classifier = steadyClassifier(320L);
        swipe(classifier, 320L, -180f, 150f, 8, 30L);
        assertEquals(GestureIntentClassifier.Outcome.SWIPE_LEFT,
                classifier.getOutcome());

        classifier.addSample(-170f, 160f, 590L, false, null);

        assertEquals(GestureIntentClassifier.Outcome.SWIPE_LEFT,
                classifier.getOutcome());
    }

    @Test
    public void readyCancelsAfterVerticalContinuation() {
        GestureIntentClassifier classifier = steadyClassifier(320L);
        swipe(classifier, 320L, -180f, 150f, 8, 30L);

        classifier.addSample(-180f, 420f, 590L, false, null);

        assertEquals(GestureIntentClassifier.Outcome.NONE, classifier.getOutcome());
    }

    @Test
    public void readyCancelsAfterDirectionReversal() {
        GestureIntentClassifier classifier = steadyClassifier(320L);
        swipe(classifier, 320L, -180f, 150f, 8, 30L);

        classifier.addSample(170f, 160f, 590L, false, null);

        assertEquals(GestureIntentClassifier.Outcome.NONE, classifier.getOutcome());
    }

    private static GestureIntentClassifier steadyClassifier(long durationMs) {
        GestureIntentClassifier classifier = new GestureIntentClassifier();
        classifier.start(0f, 0f, 0L, DENSITY);
        for (long time = 50L; time <= durationMs; time += 50L) {
            float jitter = (time / 50L) % 2L == 0L ? 1f : -1f;
            classifier.addSample(jitter, -jitter, time, false, null);
        }
        return classifier;
    }

    private static GestureIntentClassifier areaClassifier() {
        GestureIntentClassifier classifier = new GestureIntentClassifier();
        classifier.start(0f, 0f, 0L, DENSITY);
        classifier.addSample(0f, 0f, 0L, true, "test-area");
        return classifier;
    }

    private static void swipe(GestureIntentClassifier classifier, long startTime,
            float finalX, float finalY, int steps, long stepTimeMs) {
        for (int i = 1; i <= steps; i++) {
            float progress = i / (float) steps;
            classifier.addSample(finalX * progress, finalY * progress,
                    startTime + i * stepTimeMs, false, null);
        }
    }
}
