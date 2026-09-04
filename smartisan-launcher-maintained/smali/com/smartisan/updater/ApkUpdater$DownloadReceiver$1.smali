.class Lcom/smartisan/updater/ApkUpdater$DownloadReceiver$1;
.super Ljava/lang/Object;
.source "ApkUpdater.java"

.implements Ljava/lang/Runnable;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisan/updater/ApkUpdater$DownloadReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$1:Lcom/smartisan/updater/ApkUpdater$DownloadReceiver;

.field final synthetic val$downloadManager:Landroid/app/DownloadManager;

.field final synthetic val$newContext:Landroid/content/Context;

.field final synthetic val$query:Landroid/app/DownloadManager$Query;


.method constructor <init>(Lcom/smartisan/updater/ApkUpdater$DownloadReceiver;Landroid/app/DownloadManager;Landroid/app/DownloadManager$Query;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$1"    # Lcom/smartisan/updater/ApkUpdater$DownloadReceiver;

    .prologue
    .line 670
    iput-object p1, p0, Lcom/smartisan/updater/ApkUpdater$DownloadReceiver$1;->this$1:Lcom/smartisan/updater/ApkUpdater$DownloadReceiver;

    iput-object p2, p0, Lcom/smartisan/updater/ApkUpdater$DownloadReceiver$1;->val$downloadManager:Landroid/app/DownloadManager;

    iput-object p3, p0, Lcom/smartisan/updater/ApkUpdater$DownloadReceiver$1;->val$query:Landroid/app/DownloadManager$Query;

    iput-object p4, p0, Lcom/smartisan/updater/ApkUpdater$DownloadReceiver$1;->val$newContext:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public run()V
    .locals 6

    .prologue
    .line 673
    iget-object v4, p0, Lcom/smartisan/updater/ApkUpdater$DownloadReceiver$1;->val$downloadManager:Landroid/app/DownloadManager;

    iget-object v5, p0, Lcom/smartisan/updater/ApkUpdater$DownloadReceiver$1;->val$query:Landroid/app/DownloadManager$Query;

    invoke-virtual {v4, v5}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v0

    .line 674
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 676
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 682
    const-string v4, "local_filename"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 683
    .local v2, "fileIndex":I
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 685
    .local v1, "file":Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 686
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 687
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "application/vnd.android.package-archive"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 688
    iget-object v4, p0, Lcom/smartisan/updater/ApkUpdater$DownloadReceiver$1;->val$newContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 689
    iget-object v4, p0, Lcom/smartisan/updater/ApkUpdater$DownloadReceiver$1;->this$1:Lcom/smartisan/updater/ApkUpdater$DownloadReceiver;

    invoke-static {v4}, Lcom/smartisan/updater/ApkUpdater$DownloadReceiver;->access$700(Lcom/smartisan/updater/ApkUpdater$DownloadReceiver;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 690
    iget-object v4, p0, Lcom/smartisan/updater/ApkUpdater$DownloadReceiver$1;->this$1:Lcom/smartisan/updater/ApkUpdater$DownloadReceiver;

    iget-object v4, v4, Lcom/smartisan/updater/ApkUpdater$DownloadReceiver;->this$0:Lcom/smartisan/updater/ApkUpdater;

    invoke-static {v4}, Lcom/smartisan/updater/ApkUpdater;->access$100(Lcom/smartisan/updater/ApkUpdater;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 693
    .end local v1    # "file":Ljava/lang/String;
    .end local v2    # "fileIndex":I
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 696
    :cond_1
    return-void

    .line 693
    :catchall_0
    move-exception v4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v4
.end method
