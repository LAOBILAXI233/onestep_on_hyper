.class public Lsmartisanos/app/tracker/Agent;
.super Ljava/lang/Object;
.source "Agent.java"


.field private static sInstance:Lsmartisanos/app/tracker/Agent;


.field private mApplication:Landroid/app/Application;


.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public static declared-synchronized getInstance()Lsmartisanos/app/tracker/Agent;
    .locals 2

    .prologue
    .line 23
    const-class v1, Lsmartisanos/app/tracker/Agent;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lsmartisanos/app/tracker/Agent;->sInstance:Lsmartisanos/app/tracker/Agent;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lsmartisanos/app/tracker/Agent;

    invoke-direct {v0}, Lsmartisanos/app/tracker/Agent;-><init>()V

    sput-object v0, Lsmartisanos/app/tracker/Agent;->sInstance:Lsmartisanos/app/tracker/Agent;

    .line 26
    :cond_0
    sget-object v0, Lsmartisanos/app/tracker/Agent;->sInstance:Lsmartisanos/app/tracker/Agent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 23
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isPlanEnable()Z
    .locals 6

    .prologue
    .line 77
    const-string v1, "com_smartisan_notes"

    .line 78
    .local v1, "SHARED_PREFERENCE":Ljava/lang/String;
    const-string v0, "prefs_key_plan_enable"

    .line 79
    .local v0, "PREFS_KEY_PLAN_ENABLE":Ljava/lang/String;
    iget-object v3, p0, Lsmartisanos/app/tracker/Agent;->mApplication:Landroid/app/Application;

    const-string v4, "com_smartisan_notes"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 81
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "prefs_key_plan_enable"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    return v3
.end method


.method public flush()V
    .locals 0

    .prologue
    .line 68
    return-void
.end method

.method public declared-synchronized init(Landroid/app/Application;)V
    .locals 1
    .param p1, "context"    # Landroid/app/Application;

    .prologue
    .line 33
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    sput-boolean v0, Lcom/tendcloud/tenddata/TCAgent;->LOG_ON:Z

    .line 34
    invoke-static {p1}, Lcom/tendcloud/tenddata/TCAgent;->init(Landroid/content/Context;)V

    .line 35
    iput-object p1, p0, Lsmartisanos/app/tracker/Agent;->mApplication:Landroid/app/Application;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    monitor-exit p0

    return-void

    .line 33
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onClick(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "subTag"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0}, Lsmartisanos/app/tracker/Agent;->isPlanEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    iget-object v0, p0, Lsmartisanos/app/tracker/Agent;->mApplication:Landroid/app/Application;

    invoke-static {v0, p1}, Lcom/tendcloud/tenddata/TCAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 46
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    iget-object v0, p0, Lsmartisanos/app/tracker/Agent;->mApplication:Landroid/app/Application;

    invoke-static {v0, p1, p2}, Lcom/tendcloud/tenddata/TCAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onEvent(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "subTag"    # Ljava/lang/String;
    .param p3, "action"    # I
    .param p4, "data"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0}, Lsmartisanos/app/tracker/Agent;->isPlanEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    iget-object v0, p0, Lsmartisanos/app/tracker/Agent;->mApplication:Landroid/app/Application;

    invoke-static {v0, p1}, Lcom/tendcloud/tenddata/TCAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    iget-object v0, p0, Lsmartisanos/app/tracker/Agent;->mApplication:Landroid/app/Application;

    invoke-static {v0, p1, p2}, Lcom/tendcloud/tenddata/TCAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onStatusDataChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "subTag"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-direct {p0}, Lsmartisanos/app/tracker/Agent;->isPlanEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lsmartisanos/app/tracker/Agent;->mApplication:Landroid/app/Application;

    invoke-static {v0, p1, p3}, Lcom/tendcloud/tenddata/TCAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :cond_0
    return-void
.end method

.method public onStatusDataDeleted(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "subTag"    # Ljava/lang/String;

    .prologue
    .line 65
    return-void
.end method
