package com.hyper.onestep;

import android.content.Context;
import android.view.DragEvent;

import com.hyper.onestep.lsp.LSPLogger;
import com.hyper.onestep.util.SidebarItem;

/**
 * Stub for the original PendingDragEventTask.
 *
 * Original SmartisanOS implementation shows a SmartisanProgressDialog and waits
 * for pending drag file to become available, then re-dispatches the drag event.
 *
 * In LSP module context (no SmartisanProgressDialog), we simply return false
 * to indicate "no pending handling" so the caller proceeds synchronously.
 */
public class PendingDragEventTask {

    public static boolean tryPending(Context context, DragEvent event, SidebarItem item) {
        LSPLogger.d("PendingDragEventTask.tryPending: stubbed -> false (no SmartisanProgressDialog)");
        return false;
    }
}
