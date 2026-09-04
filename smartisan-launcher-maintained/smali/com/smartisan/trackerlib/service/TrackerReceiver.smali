.class public Lcom/smartisan/trackerlib/service/TrackerReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TrackerReceiver.java"


.field private static final TAG:Ljava/lang/String; = "TrackerReceiver"


.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 19
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 20
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receive the action   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/smartisan/trackerlib/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 22
    invoke-static {}, Lcom/smartisan/trackerlib/Agent;->getInstance()Lcom/smartisan/trackerlib/Agent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisan/trackerlib/Agent;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/smartisan/trackerlib/utils/CommonUtil;->isConnected(Landroid/content/Context;)I

    move-result v1

    .line 23
    .local v1, "net":I
    if-eqz v1, :cond_0

    .line 24
    invoke-static {}, Lcom/smartisan/trackerlib/task/UploadTask;->getInstance()Lcom/smartisan/trackerlib/task/UploadTask;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisan/trackerlib/task/UploadTask;->executeTask()V

    .line 27
    .end local v1    # "net":I
    :cond_0
    return-void
.end method
