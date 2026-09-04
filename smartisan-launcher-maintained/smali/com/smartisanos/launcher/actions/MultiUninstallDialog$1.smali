.class Lcom/smartisanos/launcher/actions/MultiUninstallDialog$1;
.super Ljava/lang/Object;
.source "MultiUninstallDialog.java"

.implements Ljava/lang/Runnable;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/actions/MultiUninstallDialog;->showUninstallPreviewDialog(Ljava/util/List;Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/actions/MultiUninstallDialog;

.field final synthetic val$list:Ljava/util/List;

.field final synthetic val$uninstallDialogThread:Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread;


.method constructor <init>(Lcom/smartisanos/launcher/actions/MultiUninstallDialog;Ljava/util/List;Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/actions/MultiUninstallDialog;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/smartisanos/launcher/actions/MultiUninstallDialog$1;->this$0:Lcom/smartisanos/launcher/actions/MultiUninstallDialog;

    iput-object p2, p0, Lcom/smartisanos/launcher/actions/MultiUninstallDialog$1;->val$list:Ljava/util/List;

    iput-object p3, p0, Lcom/smartisanos/launcher/actions/MultiUninstallDialog$1;->val$uninstallDialogThread:Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public run()V
    .locals 3

    .prologue
    .line 53
    iget-object v0, p0, Lcom/smartisanos/launcher/actions/MultiUninstallDialog$1;->this$0:Lcom/smartisanos/launcher/actions/MultiUninstallDialog;

    iget-object v1, p0, Lcom/smartisanos/launcher/actions/MultiUninstallDialog$1;->val$list:Ljava/util/List;

    iget-object v2, p0, Lcom/smartisanos/launcher/actions/MultiUninstallDialog$1;->val$uninstallDialogThread:Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread;

    invoke-static {v0, v1, v2}, Lcom/smartisanos/launcher/actions/MultiUninstallDialog;->access$000(Lcom/smartisanos/launcher/actions/MultiUninstallDialog;Ljava/util/List;Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread;)V

    .line 54
    return-void
.end method
