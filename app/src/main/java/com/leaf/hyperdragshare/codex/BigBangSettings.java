package com.leaf.hyperdragshare.codex;

import android.content.Context;

final class BigBangSettings {
    private static final BigBangSettings INSTANCE = new BigBangSettings();

    private BigBangSettings() {}

    static BigBangSettings get(Context context) {
        return INSTANCE;
    }

    int getGapRowHeightPercent() {
        return 100;
    }

    int getWebSearchType() {
        return BoomActionHandler.SEARCH_WEB;
    }

    int getDictSearchType() {
        return BoomActionHandler.SEARCH_DICTIONARY;
    }
}
