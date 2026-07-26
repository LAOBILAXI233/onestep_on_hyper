package smartisanos.app;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;

/**
 * Stub for SmartisanOS MenuDialog.
 *
 * The original extends smartisanos.app.SmartisanDialog (a custom SmartisanOS dialog).
 * Here we simply extend AlertDialog to provide a compatible API surface:
 *   - setTitle(int)
 *   - setPositiveButton(int, OnClickListener)
 *   - setNegativeButton(int, OnClickListener)  (added for safety)
 *   - show() / dismiss() / isShowing()
 *   - getWindow() inherited from Dialog
 *
 * 注意：SDK 36 中 Dialog.onConfigurationChanged 已不再是可重写方法，因此这里
 * 不再声明 override，调用方如有需要可在外部监听配置变化。
 */
public class MenuDialog extends AlertDialog {

    public MenuDialog(Context context) {
        super(context);
    }

    /** 显式暴露 setPositiveButton(int, DialogInterface.OnClickListener)，避免调用方误用 View.OnClickListener */
    public void setPositiveButton(int textId, DialogInterface.OnClickListener listener) {
        setButton(BUTTON_POSITIVE, getContext().getText(textId), listener);
    }

    /** 显式暴露 setNegativeButton(int, DialogInterface.OnClickListener) */
    public void setNegativeButton(int textId, DialogInterface.OnClickListener listener) {
        setButton(BUTTON_NEGATIVE, getContext().getText(textId), listener);
    }
}
