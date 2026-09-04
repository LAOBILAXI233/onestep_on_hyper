package com.hyper.onestep.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;

import com.hyper.onestep.MainActivity;

/**
 * External automation entry point:
 *   adb shell su -c 'am broadcast -a com.hyper.sidebar.ACTION_ON_ONE_STEP'
 *   adb shell su -c 'am broadcast -a com.hyper.sidebar.ACTION_OFF_ONE_STEP'
 *   adb shell su -c 'am broadcast -a com.hyper.sidebar.ACTION_TOGGLE_ONE_STEP'
 *
 * The receiver is exported but gated by a signature-level permission, so only
 * shell/root (which bypass permission checks) or apps signed with the same
 * key can flip OneStep mode.
 */
public class OneStepModeReceiver extends BroadcastReceiver {

    public static final String ACTION_ON_ONE_STEP =
            "com.hyper.sidebar.ACTION_ON_ONE_STEP";
    public static final String ACTION_OFF_ONE_STEP =
            "com.hyper.sidebar.ACTION_OFF_ONE_STEP";
    public static final String ACTION_TOGGLE_ONE_STEP =
            "com.hyper.sidebar.ACTION_TOGGLE_ONE_STEP";

    public static final String PERMISSION_CONTROL_ONE_STEP =
            "com.hyper.onestep.permission.CONTROL_ONE_STEP";

    private static final String TAG = "OneStepModeReceiver";

    @Override
    public void onReceive(Context context, Intent intent) {
        if (intent == null || intent.getAction() == null) {
            return;
        }
        final Boolean targetMode;
        switch (intent.getAction()) {
            case ACTION_ON_ONE_STEP:
                targetMode = Boolean.TRUE;
                break;
            case ACTION_OFF_ONE_STEP:
                targetMode = Boolean.FALSE;
                break;
            case ACTION_TOGGLE_ONE_STEP:
                targetMode = null;
                break;
            default:
                return;
        }
        Log.i(TAG, "OneStep mode broadcast: " + intent.getAction());
        if (!MainActivity.requestOneStepModeFromExternal(targetMode)) {
            Log.w(TAG, "OneStep mode broadcast dropped: no live activity");
        }
    }
}
