.class Lcom/smartisanos/launcher/actions/MultiUninstallDialog$2;
.super Ljava/lang/Object;
.source "MultiUninstallDialog.java"

.implements Landroid/content/DialogInterface$OnDismissListener;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/actions/MultiUninstallDialog;->showUninstallPreviewDialogImpl(Ljava/util/List;Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/actions/MultiUninstallDialog;


.method constructor <init>(Lcom/smartisanos/launcher/actions/MultiUninstallDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/actions/MultiUninstallDialog;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/smartisanos/launcher/actions/MultiUninstallDialog$2;->this$0:Lcom/smartisanos/launcher/actions/MultiUninstallDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    .prologue
    .line 128
    const/4 v1, 0x0

    sput-object v1, Lcom/smartisanos/launcher/actions/MultiUninstallDialog;->MULTI_UNINSTALL_PREVIEW_DIALOG:Landroid/app/Dialog;

    .line 129
    iget-object v1, p0, Lcom/smartisanos/launcher/actions/MultiUninstallDialog$2;->this$0:Lcom/smartisanos/launcher/actions/MultiUninstallDialog;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/smartisanos/launcher/actions/MultiUninstallDialog;->access$102(Lcom/smartisanos/launcher/actions/MultiUninstallDialog;Z)Z

    .line 130
    iget-object v1, p0, Lcom/smartisanos/launcher/actions/MultiUninstallDialog$2;->this$0:Lcom/smartisanos/launcher/actions/MultiUninstallDialog;

    invoke-static {v1}, Lcom/smartisanos/launcher/actions/MultiUninstallDialog;->access$100(Lcom/smartisanos/launcher/actions/MultiUninstallDialog;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/smartisanos/launcher/actions/MultiUninstallDialog$2;->this$0:Lcom/smartisanos/launcher/actions/MultiUninstallDialog;

    invoke-static {v1}, Lcom/smartisanos/launcher/actions/MultiUninstallDialog;->access$200(Lcom/smartisanos/launcher/actions/MultiUninstallDialog;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 131
    invoke-static {}, Lcom/smartisanos/launcher/actions/MultiUninstallDialog;->access$300()Lcom/smartisanos/launcher/LOG;

    move-result-object v1

    const-string v2, "MultiUninstallDialog cancel"

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 132
    iget-object v1, p0, Lcom/smartisanos/launcher/actions/MultiUninstallDialog$2;->this$0:Lcom/smartisanos/launcher/actions/MultiUninstallDialog;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/smartisanos/launcher/actions/MultiUninstallDialog;->access$102(Lcom/smartisanos/launcher/actions/MultiUninstallDialog;Z)Z

    .line 133
    iget-object v1, p0, Lcom/smartisanos/launcher/actions/MultiUninstallDialog$2;->this$0:Lcom/smartisanos/launcher/actions/MultiUninstallDialog;

    invoke-static {v1}, Lcom/smartisanos/launcher/actions/MultiUninstallDialog;->access$400(Lcom/smartisanos/launcher/actions/MultiUninstallDialog;)Lcom/smartisanos/launcher/actions/UninstallApp;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/actions/UninstallApp;->createCancelActionEvent(I)Lcom/smartisanos/smengine/Event;

    move-result-object v0

    .line 134
    .local v0, "event":Lcom/smartisanos/smengine/Event;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/Event;->send(F)V

    .line 136
    .end local v0    # "event":Lcom/smartisanos/smengine/Event;
    :cond_0
    return-void
.end method
