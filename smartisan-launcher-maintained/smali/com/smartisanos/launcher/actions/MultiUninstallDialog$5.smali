.class Lcom/smartisanos/launcher/actions/MultiUninstallDialog$5;
.super Ljava/lang/Object;
.source "MultiUninstallDialog.java"

.implements Landroid/content/DialogInterface$OnClickListener;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/actions/MultiUninstallDialog;->showUninstallPreviewDialogImpl(Ljava/util/List;Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/actions/MultiUninstallDialog;

.field final synthetic val$uninstallDialogThread:Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread;


.method constructor <init>(Lcom/smartisanos/launcher/actions/MultiUninstallDialog;Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/actions/MultiUninstallDialog;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/smartisanos/launcher/actions/MultiUninstallDialog$5;->this$0:Lcom/smartisanos/launcher/actions/MultiUninstallDialog;

    iput-object p2, p0, Lcom/smartisanos/launcher/actions/MultiUninstallDialog$5;->val$uninstallDialogThread:Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 105
    iget-object v1, p0, Lcom/smartisanos/launcher/actions/MultiUninstallDialog$5;->this$0:Lcom/smartisanos/launcher/actions/MultiUninstallDialog;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/smartisanos/launcher/actions/MultiUninstallDialog;->access$202(Lcom/smartisanos/launcher/actions/MultiUninstallDialog;Z)Z

    .line 106
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v0

    .line 107
    .local v0, "launcher":Lcom/smartisanos/home/Launcher;
    if-nez v0, :cond_0

    .line 111
    :goto_0
    return-void

    .line 110
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/launcher/actions/MultiUninstallDialog$5;->val$uninstallDialogThread:Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread;

    invoke-virtual {v0, v1}, Lcom/smartisanos/home/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
