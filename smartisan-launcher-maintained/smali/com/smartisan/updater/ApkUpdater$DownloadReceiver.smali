.class Lcom/smartisan/updater/ApkUpdater$DownloadReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ApkUpdater.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisan/updater/ApkUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadReceiver"
.end annotation


.field private mForceUpdate:Z

.field final synthetic this$0:Lcom/smartisan/updater/ApkUpdater;


.method public constructor <init>(Lcom/smartisan/updater/ApkUpdater;Z)V
    .locals 0
    .param p2, "forceUpdate"    # Z

    .prologue
    .line 658
    iput-object p1, p0, Lcom/smartisan/updater/ApkUpdater$DownloadReceiver;->this$0:Lcom/smartisan/updater/ApkUpdater;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 659
    iput-boolean p2, p0, Lcom/smartisan/updater/ApkUpdater$DownloadReceiver;->mForceUpdate:Z

    .line 660
    return-void
.end method

.method static synthetic access$700(Lcom/smartisan/updater/ApkUpdater$DownloadReceiver;)Z
    .locals 1
    .param p0, "x0"    # Lcom/smartisan/updater/ApkUpdater$DownloadReceiver;

    .prologue
    .line 655
    iget-boolean v0, p0, Lcom/smartisan/updater/ApkUpdater$DownloadReceiver;->mForceUpdate:Z

    return v0
.end method


.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 664
    new-instance v2, Landroid/app/DownloadManager$Query;

    invoke-direct {v2}, Landroid/app/DownloadManager$Query;-><init>()V

    .line 665
    .local v2, "query":Landroid/app/DownloadManager$Query;
    const/4 v4, 0x1

    new-array v4, v4, [J

    const/4 v5, 0x0

    invoke-static {p1}, Lcom/smartisan/updater/UpdateSharedPreference;->getInstance(Landroid/content/Context;)Lcom/smartisan/updater/UpdateSharedPreference;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisan/updater/UpdateSharedPreference;->getDownloadId()J

    move-result-wide v6

    aput-wide v6, v4, v5

    invoke-virtual {v2, v4}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    .line 666
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/app/DownloadManager$Query;->setFilterByStatus(I)Landroid/app/DownloadManager$Query;

    .line 667
    const-string v4, "download"

    .line 668
    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    .line 669
    .local v0, "downloadManager":Landroid/app/DownloadManager;
    move-object v1, p1

    .line 670
    .local v1, "newContext":Landroid/content/Context;
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/smartisan/updater/ApkUpdater$DownloadReceiver$1;

    invoke-direct {v4, p0, v0, v2, v1}, Lcom/smartisan/updater/ApkUpdater$DownloadReceiver$1;-><init>(Lcom/smartisan/updater/ApkUpdater$DownloadReceiver;Landroid/app/DownloadManager;Landroid/app/DownloadManager$Query;Landroid/content/Context;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 698
    .local v3, "thread":Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 699
    iget-object v4, p0, Lcom/smartisan/updater/ApkUpdater$DownloadReceiver;->this$0:Lcom/smartisan/updater/ApkUpdater;

    invoke-static {v4}, Lcom/smartisan/updater/ApkUpdater;->access$800(Lcom/smartisan/updater/ApkUpdater;)V

    .line 700
    return-void
.end method
