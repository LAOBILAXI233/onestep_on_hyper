package com.hyper.onestep.util;

import android.content.Context;
import android.view.View;
import android.widget.ListView;

import com.hyper.onestep.lsp.LSPLogger;

/**
 * Remembers where each sidebar panel was scrolled to, so reopening a panel resumes at the same
 * place instead of snapping back to the top.
 *
 * <p>A ListView position is a pair: the index of the first visible row plus how far that row is
 * scrolled off the top. Storing only the index would jump by up to one row height each time.</p>
 */
public final class ListScrollMemory {
    private static final String KEY_PREFIX = "list_scroll_";

    private ListScrollMemory() {
    }

    /** Records the panel's current position. Call before the list is torn down or hidden. */
    public static void save(Context context, String panelId, ListView list) {
        if (context == null || list == null || panelId == null) return;
        try {
            int index = list.getFirstVisiblePosition();
            View first = list.getChildAt(0);
            int offset = first == null ? 0 : first.getTop() - list.getPaddingTop();
            Utils.Config.setIntValue(context, indexKey(panelId), index);
            Utils.Config.setIntValue(context, offsetKey(panelId), offset);
        } catch (Throwable t) {
            LSPLogger.w("ListScrollMemory.save failed for " + panelId + ": " + t);
        }
    }

    /**
     * Restores the remembered position. Runs on the list's own queue because the adapter's rows
     * are not measured yet when a panel is shown, and seeking before then lands at the top.
     */
    public static void restore(Context context, final String panelId, final ListView list) {
        if (context == null || list == null || panelId == null) return;
        try {
            final int index = Utils.Config.getIntValue(context, indexKey(panelId));
            final int offset = Utils.Config.getIntValue(context, offsetKey(panelId));
            if (index <= 0 && offset == 0) return;
            list.post(new Runnable() {
                @Override
                public void run() {
                    try {
                        int count = list.getCount();
                        if (count <= 0) return;
                        // Content shrinks between sessions (items cleared or expired), so clamp
                        // rather than seek past the end and land on a blank list.
                        int target = Math.min(index, count - 1);
                        list.setSelectionFromTop(target, offset);
                    } catch (Throwable t) {
                        LSPLogger.w("ListScrollMemory.restore failed for " + panelId + ": " + t);
                    }
                }
            });
        } catch (Throwable t) {
            LSPLogger.w("ListScrollMemory.restore failed for " + panelId + ": " + t);
        }
    }

    private static String indexKey(String panelId) {
        return KEY_PREFIX + panelId + "_index";
    }

    private static String offsetKey(String panelId) {
        return KEY_PREFIX + panelId + "_offset";
    }
}
