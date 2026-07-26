package com.hyper.sidebar.lsp;

/** Resolves the mutually exclusive action produced when a tracked gesture ends. */
final class GestureActionArbitrator {
    enum Action {
        NONE,
        ENTER_ONE_STEP,
        OPEN_BIG_BANG
    }

    private GestureActionArbitrator() {}

    static Action decide(GestureIntentClassifier.Outcome swipeOutcome,
            boolean largeContactArmed) {
        if (swipeOutcome == GestureIntentClassifier.Outcome.SWIPE_LEFT
                || swipeOutcome == GestureIntentClassifier.Outcome.SWIPE_RIGHT) {
            return Action.ENTER_ONE_STEP;
        }
        return largeContactArmed ? Action.OPEN_BIG_BANG : Action.NONE;
    }
}
