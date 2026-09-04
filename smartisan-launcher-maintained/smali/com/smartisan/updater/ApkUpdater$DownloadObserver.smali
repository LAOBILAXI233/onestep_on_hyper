.class public Lcom/smartisan/updater/ApkUpdater$DownloadObserver;
.super Landroid/database/ContentObserver;
.source "ApkUpdater.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisan/updater/ApkUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DownloadObserver"
.end annotation


.field final synthetic this$0:Lcom/smartisan/updater/ApkUpdater;


.method public constructor <init>(Lcom/smartisan/updater/ApkUpdater;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisan/updater/ApkUpdater;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 604
    iput-object p1, p0, Lcom/smartisan/updater/ApkUpdater$DownloadObserver;->this$0:Lcom/smartisan/updater/ApkUpdater;

    .line 605
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 606
    return-void
.end method


.method public onChange(ZLandroid/net/Uri;)V
    .locals 6
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 611
    :try_start_0
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 612
    .local v0, "id":I
    int-to-long v2, v0

    iget-object v4, p0, Lcom/smartisan/updater/ApkUpdater$DownloadObserver;->this$0:Lcom/smartisan/updater/ApkUpdater;

    invoke-static {v4}, Lcom/smartisan/updater/ApkUpdater;->access$400(Lcom/smartisan/updater/ApkUpdater;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 613
    iget-object v2, p0, Lcom/smartisan/updater/ApkUpdater$DownloadObserver;->this$0:Lcom/smartisan/updater/ApkUpdater;

    invoke-static {v2}, Lcom/smartisan/updater/ApkUpdater;->access$500(Lcom/smartisan/updater/ApkUpdater;)I

    move-result v1

    .line 614
    .local v1, "progress":I
    const-string v2, "ApkUpdater"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onChange progress="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    iget-object v2, p0, Lcom/smartisan/updater/ApkUpdater$DownloadObserver;->this$0:Lcom/smartisan/updater/ApkUpdater;

    invoke-static {v2}, Lcom/smartisan/updater/ApkUpdater;->access$600(Lcom/smartisan/updater/ApkUpdater;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 616
    const/16 v2, 0x64

    if-ne v1, v2, :cond_0

    .line 617
    iget-object v2, p0, Lcom/smartisan/updater/ApkUpdater$DownloadObserver;->this$0:Lcom/smartisan/updater/ApkUpdater;

    invoke-static {v2}, Lcom/smartisan/updater/ApkUpdater;->access$600(Lcom/smartisan/updater/ApkUpdater;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 622
    .end local v0    # "id":I
    .end local v1    # "progress":I
    :cond_0
    :goto_0
    return-void

    .line 619
    :catch_0
    move-exception v2

    goto :goto_0
.end method
