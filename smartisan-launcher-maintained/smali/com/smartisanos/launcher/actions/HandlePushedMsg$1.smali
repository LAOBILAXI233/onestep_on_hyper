.class final Lcom/smartisanos/launcher/actions/HandlePushedMsg$1;
.super Ljava/lang/Object;
.source "HandlePushedMsg.java"

.implements Ljava/lang/Runnable;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/actions/HandlePushedMsg;->showDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


.method constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public run()V
    .locals 6

    .prologue
    .line 50
    sget-object v3, Lcom/smartisanos/launcher/actions/HandlePushedMsg;->updateInfo:Lcom/smartisanos/launcher/actions/HandlePushedMsg$UpdateInfo;

    if-nez v3, :cond_0

    .line 51
    invoke-static {}, Lcom/smartisanos/launcher/actions/HandlePushedMsg;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v3

    const-string v4, "DEBUG"

    const-string v5, "showDialog return by updateInfo is null"

    invoke-virtual {v3, v4, v5}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :goto_0
    return-void

    .line 54
    :cond_0
    sget-object v3, Lcom/smartisanos/launcher/actions/HandlePushedMsg;->updateInfo:Lcom/smartisanos/launcher/actions/HandlePushedMsg$UpdateInfo;

    iget-object v2, v3, Lcom/smartisanos/launcher/actions/HandlePushedMsg$UpdateInfo;->title:Ljava/lang/String;

    .line 55
    .local v2, "title":Ljava/lang/String;
    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v3

    const v4, 0x103012b

    invoke-direct {v1, v3, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 56
    .local v1, "themeWrapper":Landroid/view/ContextThemeWrapper;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget-object v4, Lcom/smartisanos/launcher/actions/HandlePushedMsg;->updateInfo:Lcom/smartisanos/launcher/actions/HandlePushedMsg$UpdateInfo;

    iget-object v4, v4, Lcom/smartisanos/launcher/actions/HandlePushedMsg$UpdateInfo;->content:Ljava/lang/String;

    .line 57
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 58
    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    sget v4, Lcom/smartisanos/launcher/ResIds$string;->confirm_ota_dialog_ok:I

    new-instance v5, Lcom/smartisanos/launcher/actions/HandlePushedMsg$1$4;

    invoke-direct {v5, p0}, Lcom/smartisanos/launcher/actions/HandlePushedMsg$1$4;-><init>(Lcom/smartisanos/launcher/actions/HandlePushedMsg$1;)V

    .line 59
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x1040000

    new-instance v5, Lcom/smartisanos/launcher/actions/HandlePushedMsg$1$3;

    invoke-direct {v5, p0}, Lcom/smartisanos/launcher/actions/HandlePushedMsg$1$3;-><init>(Lcom/smartisanos/launcher/actions/HandlePushedMsg$1;)V

    .line 75
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/smartisanos/launcher/actions/HandlePushedMsg$1$2;

    invoke-direct {v4, p0}, Lcom/smartisanos/launcher/actions/HandlePushedMsg$1$2;-><init>(Lcom/smartisanos/launcher/actions/HandlePushedMsg$1;)V

    .line 79
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/smartisanos/launcher/actions/HandlePushedMsg$1$1;

    invoke-direct {v4, p0}, Lcom/smartisanos/launcher/actions/HandlePushedMsg$1$1;-><init>(Lcom/smartisanos/launcher/actions/HandlePushedMsg$1;)V

    .line 83
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 87
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 88
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 89
    const/4 v3, 0x0

    sput-boolean v3, Lcom/smartisanos/launcher/actions/HandlePushedMsg;->needShowDialog:Z

    goto :goto_0
.end method
