.class Lcom/smartisanos/launcher/receiver/LauncherReceiver$2;
.super Ljava/lang/Object;
.source "LauncherReceiver.java"

.implements Ljava/lang/Runnable;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/receiver/LauncherReceiver;->showDialogForThemeUninstalled()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/receiver/LauncherReceiver;


.method constructor <init>(Lcom/smartisanos/launcher/receiver/LauncherReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/receiver/LauncherReceiver;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/smartisanos/launcher/receiver/LauncherReceiver$2;->this$0:Lcom/smartisanos/launcher/receiver/LauncherReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public run()V
    .locals 5

    .prologue
    .line 169
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v2

    if-nez v2, :cond_0

    .line 195
    :goto_0
    return-void

    .line 172
    :cond_0
    iget-object v2, p0, Lcom/smartisanos/launcher/receiver/LauncherReceiver$2;->this$0:Lcom/smartisanos/launcher/receiver/LauncherReceiver;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/smartisanos/launcher/receiver/LauncherReceiver;->access$102(Lcom/smartisanos/launcher/receiver/LauncherReceiver;Z)Z

    .line 173
    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v2

    const v3, 0x103012b

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 174
    .local v1, "themeWrapper":Landroid/view/ContextThemeWrapper;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v3, Lcom/smartisanos/launcher/ResIds$string;->theme_dialog_title:I

    .line 175
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lcom/smartisanos/launcher/ResIds$string;->theme_uninstall_dialog_content:I

    .line 176
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lcom/smartisanos/launcher/ResIds$string;->ok:I

    new-instance v4, Lcom/smartisanos/launcher/receiver/LauncherReceiver$2$2;

    invoke-direct {v4, p0}, Lcom/smartisanos/launcher/receiver/LauncherReceiver$2$2;-><init>(Lcom/smartisanos/launcher/receiver/LauncherReceiver$2;)V

    .line 177
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/smartisanos/launcher/receiver/LauncherReceiver$2$1;

    invoke-direct {v3, p0}, Lcom/smartisanos/launcher/receiver/LauncherReceiver$2$1;-><init>(Lcom/smartisanos/launcher/receiver/LauncherReceiver$2;)V

    .line 184
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 193
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 194
    .local v0, "dialog":Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method
