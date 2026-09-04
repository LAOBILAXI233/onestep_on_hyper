.class Lcom/smartisanos/launcher/actions/MultiUninstallDialog$3;
.super Ljava/lang/Object;
.source "MultiUninstallDialog.java"

.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 119
    iput-object p1, p0, Lcom/smartisanos/launcher/actions/MultiUninstallDialog$3;->this$0:Lcom/smartisanos/launcher/actions/MultiUninstallDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/smartisanos/launcher/actions/MultiUninstallDialog$3;->this$0:Lcom/smartisanos/launcher/actions/MultiUninstallDialog;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/actions/MultiUninstallDialog;->access$102(Lcom/smartisanos/launcher/actions/MultiUninstallDialog;Z)Z

    .line 123
    return-void
.end method
