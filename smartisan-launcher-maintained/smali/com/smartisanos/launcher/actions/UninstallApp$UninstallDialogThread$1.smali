.class Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread$1;
.super Ljava/lang/Object;
.source "UninstallApp.java"

.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 517
    iput-object p1, p0, Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread$1;->this$1:Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 520
    invoke-static {}, Lcom/smartisanos/launcher/actions/UninstallApp;->access$100()Z

    move-result v0

    if-nez v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread$1;->this$1:Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread;->access$302(Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread;Z)Z

    .line 523
    :cond_0
    return-void
.end method
