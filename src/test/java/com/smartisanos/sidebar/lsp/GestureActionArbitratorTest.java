package com.hyper.sidebar.lsp;

import static org.junit.Assert.assertEquals;

import org.junit.Test;

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
    public void ordinaryTouchDoesNothing() {
        assertEquals(GestureActionArbitrator.Action.NONE,
                GestureActionArbitrator.decide(GestureIntentClassifier.Outcome.NONE, false));
    }
}
