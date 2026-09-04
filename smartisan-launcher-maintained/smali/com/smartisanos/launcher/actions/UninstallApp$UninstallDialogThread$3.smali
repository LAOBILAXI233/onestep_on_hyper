.class Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread$3;
.super Ljava/lang/Object;
.source "UninstallApp.java"

.implements Landroid/content/DialogInterface$OnDismissListener;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$1:Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread;


.method constructor <init>(Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread;)V
    .locals 0
    .param p1, "this$1"    # Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread;

    .prologue
    .line 535
    iput-object p1, p0, Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread$3;->this$1:Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v1, 0x0

    .line 538
    invoke-static {v1}, Lcom/smartisanos/launcher/actions/UninstallApp;->access$102(Z)Z

    .line 539
    const/4 v0, 0x0

    sput-object v0, Lcom/smartisanos/launcher/actions/UninstallApp;->mUninstallDialog:Landroid/app/AlertDialog;

    .line 540
    iget-object v0, p0, Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread$3;->this$1:Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread;

    invoke-static {v0}, Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread;->access$300(Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 541
    iget-object v0, p0, Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread$3;->this$1:Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread;

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread;->access$302(Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread;Z)Z

    .line 542
    iget-object v0, p0, Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread$3;->this$1:Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread;

    iget-object v0, v0, Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread;->this$0:Lcom/smartisanos/launcher/actions/UninstallApp;

    iget-object v1, p0, Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread$3;->this$1:Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread;

    invoke-static {v1}, Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread;->access$400(Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/actions/UninstallApp;->access$500(Lcom/smartisanos/launcher/actions/UninstallApp;I)V

    .line 544
    :cond_0
    return-void
.end method
