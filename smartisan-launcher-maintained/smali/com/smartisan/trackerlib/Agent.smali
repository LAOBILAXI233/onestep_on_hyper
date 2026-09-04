.class public Lcom/smartisan/trackerlib/Agent;
.super Ljava/lang/Object;
.source "Agent.java"

.implements Lcom/smartisan/trackerlib/TrackerAPI;


.field public static final KEY:Ljava/lang/String; = "value"

.field private static sInstance:Lcom/smartisan/trackerlib/Agent;


.field private mApplication:Landroid/app/Application;

.field private mCache:Lcom/smartisan/trackerlib/TrackerCache;

.field private mTrackerReceiver:Lcom/smartisan/trackerlib/service/TrackerReceiver;


.method private constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/smartisan/trackerlib/Agent;
    .locals 2

    .prologue
    .line 30
    const-class v1, Lcom/smartisan/trackerlib/Agent;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/smartisan/trackerlib/Agent;->sInstance:Lcom/smartisan/trackerlib/Agent;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/smartisan/trackerlib/Agent;

    invoke-direct {v0}, Lcom/smartisan/trackerlib/Agent;-><init>()V

    sput-object v0, Lcom/smartisan/trackerlib/Agent;->sInstance:Lcom/smartisan/trackerlib/Agent;

    .line 33
    :cond_0
    sget-object v0, Lcom/smartisan/trackerlib/Agent;->sInstance:Lcom/smartisan/trackerlib/Agent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private initRegister()V
    .locals 3

    .prologue
    .line 52
    new-instance v1, Lcom/smartisan/trackerlib/service/TrackerReceiver;

    invoke-direct {v1}, Lcom/smartisan/trackerlib/service/TrackerReceiver;-><init>()V

    iput-object v1, p0, Lcom/smartisan/trackerlib/Agent;->mTrackerReceiver:Lcom/smartisan/trackerlib/service/TrackerReceiver;

    .line 53
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 54
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 55
    iget-object v1, p0, Lcom/smartisan/trackerlib/Agent;->mApplication:Landroid/app/Application;

    iget-object v2, p0, Lcom/smartisan/trackerlib/Agent;->mTrackerReceiver:Lcom/smartisan/trackerlib/service/TrackerReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 56
    return-void
.end method

.method private isJson(Ljava/lang/String;)Z
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 115
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 122
    :goto_0
    return v2

    .line 119
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    .local v1, "jsonobject":Lorg/json/JSONObject;
    goto :goto_0

    .line 121
    .end local v1    # "jsonobject":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private declared-synchronized saveOperation2Cache(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "eventid"    # Ljava/lang/String;
    .param p2, "eventdata"    # Ljava/lang/String;

    .prologue
    .line 91
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lcom/smartisan/trackerlib/Agent;->saveOperation2Cache(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    monitor-exit p0

    return-void

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized saveOperation2Cache(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "eventid"    # Ljava/lang/String;
    .param p2, "eventdata"    # Ljava/lang/String;
    .param p3, "isOnlyWifi"    # Z

    .prologue
    .line 95
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    :goto_0
    monitor-exit p0

    return-void

    .line 99
    :cond_0
    :try_start_1
    invoke-direct {p0, p2}, Lcom/smartisan/trackerlib/Agent;->isJson(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eventdata is not json "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/smartisan/trackerlib/utils/LogUtils;->d(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 95
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 103
    :cond_1
    :try_start_3
    iget-object v1, p0, Lcom/smartisan/trackerlib/Agent;->mCache:Lcom/smartisan/trackerlib/TrackerCache;

    new-instance v2, Lcom/smartisan/trackerlib/TransportEntity;

    invoke-direct {v2, p1, p2, p3}, Lcom/smartisan/trackerlib/TransportEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v1, v2}, Lcom/smartisan/trackerlib/TrackerCache;->insertOrUpdateCache(Lcom/smartisan/trackerlib/TransportEntity;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method


.method public flush()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/smartisan/trackerlib/Agent;->mCache:Lcom/smartisan/trackerlib/TrackerCache;

    invoke-virtual {v0}, Lcom/smartisan/trackerlib/TrackerCache;->flushCacheData()V

    .line 112
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/smartisan/trackerlib/Agent;->mApplication:Landroid/app/Application;

    return-object v0
.end method

.method public declared-synchronized init(Landroid/app/Application;)V
    .locals 1
    .param p1, "context"    # Landroid/app/Application;

    .prologue
    .line 42
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/smartisan/trackerlib/Agent;->mApplication:Landroid/app/Application;

    .line 43
    iget-object v0, p0, Lcom/smartisan/trackerlib/Agent;->mCache:Lcom/smartisan/trackerlib/TrackerCache;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/smartisan/trackerlib/TrackerCache;

    invoke-direct {v0}, Lcom/smartisan/trackerlib/TrackerCache;-><init>()V

    iput-object v0, p0, Lcom/smartisan/trackerlib/Agent;->mCache:Lcom/smartisan/trackerlib/TrackerCache;

    .line 48
    :cond_0
    invoke-static {}, Lcom/smartisan/trackerlib/task/UploadTask;->getInstance()Lcom/smartisan/trackerlib/task/UploadTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisan/trackerlib/task/UploadTask;->executeTask()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    monitor-exit p0

    return-void

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onEvent(Ljava/lang/String;)V
    .locals 1
    .param p1, "eventid"    # Ljava/lang/String;

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/smartisan/trackerlib/Agent;->onEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public onEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "eventid"    # Ljava/lang/String;
    .param p2, "eventdata"    # Ljava/lang/String;

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Lcom/smartisan/trackerlib/Agent;->saveOperation2Cache(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public onLaunch()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/smartisan/trackerlib/Agent;->mApplication:Landroid/app/Application;

    invoke-static {v0}, Lcom/smartisan/trackerlib/utils/CommonUtil;->getLaunchEventId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/smartisan/trackerlib/utils/CommonUtil;->getLaunchEvent()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/smartisan/trackerlib/Agent;->saveOperation2Cache(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 64
    return-void
.end method

.method public onNewUser()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lcom/smartisan/trackerlib/Agent;->mApplication:Landroid/app/Application;

    invoke-static {v0}, Lcom/smartisan/trackerlib/utils/CommonUtil;->getNewStartEventId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/smartisan/trackerlib/Agent;->saveOperation2Cache(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 69
    return-void
.end method
