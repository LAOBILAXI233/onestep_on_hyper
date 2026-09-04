.class Lcom/smartisan/updater/ApkUpdater$2;
.super Ljava/lang/Object;
.source "ApkUpdater.java"

.implements Landroid/content/DialogInterface$OnClickListener;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisan/updater/ApkUpdater;->showForceDownloadConfirmDialog(Lcom/smartisan/updater/Version;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisan/updater/ApkUpdater;


.method constructor <init>(Lcom/smartisan/updater/ApkUpdater;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisan/updater/ApkUpdater;

    .prologue
    .line 394
    iput-object p1, p0, Lcom/smartisan/updater/ApkUpdater$2;->this$0:Lcom/smartisan/updater/ApkUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 397
    iget-object v0, p0, Lcom/smartisan/updater/ApkUpdater$2;->this$0:Lcom/smartisan/updater/ApkUpdater;

    invoke-static {v0}, Lcom/smartisan/updater/ApkUpdater;->access$100(Lcom/smartisan/updater/ApkUpdater;)V

    .line 398
    return-void
.end method
