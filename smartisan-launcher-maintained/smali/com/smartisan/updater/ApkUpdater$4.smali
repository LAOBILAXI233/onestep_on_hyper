.class Lcom/smartisan/updater/ApkUpdater$4;
.super Ljava/lang/Object;
.source "ApkUpdater.java"

.implements Landroid/content/DialogInterface$OnClickListener;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisan/updater/ApkUpdater;->showDownloadDialog(Landroid/content/Context;Lcom/smartisan/updater/Version;)V
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
    .line 491
    iput-object p1, p0, Lcom/smartisan/updater/ApkUpdater$4;->this$0:Lcom/smartisan/updater/ApkUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 494
    iget-object v0, p0, Lcom/smartisan/updater/ApkUpdater$4;->this$0:Lcom/smartisan/updater/ApkUpdater;

    invoke-static {v0}, Lcom/smartisan/updater/ApkUpdater;->access$200(Lcom/smartisan/updater/ApkUpdater;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/smartisan/updater/ApkUpdater$4;->this$0:Lcom/smartisan/updater/ApkUpdater;

    invoke-static {v0}, Lcom/smartisan/updater/ApkUpdater;->access$000(Lcom/smartisan/updater/ApkUpdater;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/smartisan/updater/UpdateSharedPreference;->getInstance(Landroid/content/Context;)Lcom/smartisan/updater/UpdateSharedPreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisan/updater/UpdateSharedPreference;->showDialog(Z)V

    .line 497
    :cond_0
    return-void
.end method
