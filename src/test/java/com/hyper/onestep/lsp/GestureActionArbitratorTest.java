package com.hyper.onestep.lsp;
import static org.junit.Assert.assertEquals;
import org.junit.Test;
// GestureActionArbitrator 动作仲裁单元测试
public class GestureActionArbitratorTest {
    @Test
    public void swipeWinsWhenAreaIsAlsoArmed() {
        assertEquals(GestureActionArbitrator.Action.ENTER_ONE_STEP,
                GestureActionArbitrator.decide(
                        GestureIntentClassifier.Outcome.SWIPE_LEFT, true));
        assertEquals(GestureActionArbitrator.Action.ENTER_ONE_STEP,
                GestureActionArbitrator.decide(
                        GestureIntentClassifier.Outcome.SWIPE_RIGHT, true));
    }
    @Test
    public void armedPressWithoutSwipeOpensBigBang() {
        assertEquals(GestureActionArbitrator.Action.OPEN_BIG_BANG,
                GestureActionArbitrator.decide(GestureIntentClassifier.Outcome.NONE, true));
    }
    @Test
    public void movingLargeContactWithoutValidSwipeDoesNothing() {
        GestureIntentClassifier classifier = new GestureIntentClassifier();
        classifier.start(0f, 0f, 0L, 3.75f);
        classifier.addSample(0f, 0f, 0L, true, "test-area");
        classifier.addSample(-306f, -334f, 82L, false, null);
        assertEquals(GestureActionArbitrator.Action.NONE,
                GestureActionArbitrator.decide(classifier.getOutcome(),
                        classifier.canConfirmLongPressFallback()));
    }
    @Test
    public void ordinaryTouchDoesNothing() {
        assertEquals(GestureActionArbitrator.Action.NONE,
                GestureActionArbitrator.decide(GestureIntentClassifier.Outcome.NONE, false));
    }
}
