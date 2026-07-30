package com.hyper.onestep.action;

import android.content.Context;

import com.hyper.onestep.lsp.LSPLogger;
import com.hyper.onestep.view.SidebarRootView;

/**
 * Stub for the original UninstallAction.
 *
 * Original SmartisanOS implementation shows an uninstall confirmation dialog
 * with "drag to trash" semantics. LSP module keeps the trash UI but the
 * "uninstall" path is intentionally a no-op (we don't actually uninstall apps).
 */
public class UninstallAction {

    private Context mContext;
    private Object mDragItem;

    public UninstallAction(Context context, Object dragView) {
        mContext = context;
        mDragItem = dragView;
    }

    public void showUninstallDialog() {
        LSPLogger.i("UninstallAction.showUninstallDialog: stubbed no-op");
        // no-op: original shows AlertDialog with uninstall confirmation
    }

    public void dismissDialog() {
        // no-op
    }
}
