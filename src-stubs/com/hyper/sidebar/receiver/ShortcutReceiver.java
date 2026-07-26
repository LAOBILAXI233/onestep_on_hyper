package com.hyper.sidebar.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/**
 * Stub for the original ShortcutReceiver.
 *
 * The original SmartisanOS receiver handles INSTALL_SHORTCUT broadcasts to
 * install WeChat Doppelganger shortcuts. LSP module does not need this.
 * Kept as a no-op to satisfy imports / constants in ContactManager.
 */
public class ShortcutReceiver extends BroadcastReceiver {

    public static final String WECHAT = "com.tencent.mm";

    @Override
    public void onReceive(Context context, Intent intent) {
        // no-op
    }
}
