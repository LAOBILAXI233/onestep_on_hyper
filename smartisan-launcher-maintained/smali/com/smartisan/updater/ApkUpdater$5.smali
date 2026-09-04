.class Lcom/smartisan/updater/ApkUpdater$5;
.super Ljava/lang/Object;
.source "ApkUpdater.java"

.implements Landroid/content/DialogInterface$OnClickListener;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisan/updater/ApkUpdater;->showOtaHintDailog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisan/updater/ApkUpdater;

.field final synthetic val$forceExit:Z


.method constructor <init>(Lcom/smartisan/updater/ApkUpdater;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisan/updater/ApkUpdater;

    .prologue
    .line 522
    iput-object p1, p0, Lcom/smartisan/updater/ApkUpdater$5;->this$0:Lcom/smartisan/updater/ApkUpdater;

    iput-boolean p2, p0, Lcom/smartisan/updater/ApkUpdater$5;->val$forceExit:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 526
    iget-boolean v0, p0, Lcom/smartisan/updater/ApkUpdater$5;->val$forceExit:Z

    if-eqz v0, :cond_0

    .line 527
    iget-object v0, p0, Lcom/smartisan/updater/ApkUpdater$5;->this$0:Lcom/smartisan/updater/ApkUpdater;

    invoke-static {v0}, Lcom/smartisan/updater/ApkUpdater;->access$100(Lcom/smartisan/updater/ApkUpdater;)V

    .line 528
    :cond_0
    return-void
.end method
