package com.hyper.onestep.action;

import android.content.Context;

import com.hyper.onestep.lsp.LSPLogger;
import com.hyper.onestep.view.SidebarRootView;

public class UninstallAction {

    private Context mContext;
    private Object mDragItem;

    public UninstallAction(Context context, Object dragView) {
        mContext = context;
        mDragItem = dragView;
    }

    public void showUninstallDialog() {
        LSPLogger.i("UninstallAction.showUninstallDialog: stubbed no-op");
        
    }

    public void dismissDialog() {
        
    }
}
