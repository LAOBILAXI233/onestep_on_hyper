.class public Lcom/sina/weibo/sdk/cmd/WbAppActivator;
.super Ljava/lang/Object;
.source "WbAppActivator.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sina/weibo/sdk/cmd/WbAppActivator$FrequencyHelper;
    }
.end annotation


.field private static final TAG:Ljava/lang/String;

.field private static mInstance:Lcom/sina/weibo/sdk/cmd/WbAppActivator;


.field private mAppkey:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mInstallExecutor:Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;

.field private mInvokeExecutor:Lcom/sina/weibo/sdk/cmd/AppInvokeCmdExecutor;

.field private volatile mLock:Ljava/util/concurrent/locks/ReentrantLock;


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/sina/weibo/sdk/cmd/WbAppActivator;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sina/weibo/sdk/cmd/WbAppActivator;->TAG:Ljava/lang/String;

    .line 28
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lcom/sina/weibo/sdk/cmd/WbAppActivator;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/cmd/WbAppActivator;->mContext:Landroid/content/Context;

    .line 40
    new-instance v0, Lcom/sina/weibo/sdk/cmd/AppInvokeCmdExecutor;

    iget-object v1, p0, Lcom/sina/weibo/sdk/cmd/WbAppActivator;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/cmd/AppInvokeCmdExecutor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sina/weibo/sdk/cmd/WbAppActivator;->mInvokeExecutor:Lcom/sina/weibo/sdk/cmd/AppInvokeCmdExecutor;

    .line 41
    new-instance v0, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;

    iget-object v1, p0, Lcom/sina/weibo/sdk/cmd/WbAppActivator;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sina/weibo/sdk/cmd/WbAppActivator;->mInstallExecutor:Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;

    .line 42
    iput-object p2, p0, Lcom/sina/weibo/sdk/cmd/WbAppActivator;->mAppkey:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/sina/weibo/sdk/cmd/WbAppActivator;
    .locals 2

    .prologue
    .line 46
    const-class v1, Lcom/sina/weibo/sdk/cmd/WbAppActivator;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sina/weibo/sdk/cmd/WbAppActivator;->mInstance:Lcom/sina/weibo/sdk/cmd/WbAppActivator;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/sina/weibo/sdk/cmd/WbAppActivator;

    invoke-direct {v0, p0, p1}, Lcom/sina/weibo/sdk/cmd/WbAppActivator;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/sina/weibo/sdk/cmd/WbAppActivator;->mInstance:Lcom/sina/weibo/sdk/cmd/WbAppActivator;

    .line 49
    :cond_0
    sget-object v0, Lcom/sina/weibo/sdk/cmd/WbAppActivator;->mInstance:Lcom/sina/weibo/sdk/cmd/WbAppActivator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private handleInstallCmd(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sina/weibo/sdk/cmd/AppInstallCmd;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 124
    if-eqz p1, :cond_0

    .line 125
    iget-object v0, p0, Lcom/sina/weibo/sdk/cmd/WbAppActivator;->mInstallExecutor:Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;->start()V

    .line 126
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/sina/weibo/sdk/cmd/WbAppActivator;->mInstallExecutor:Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;->stop()V

    .line 131
    :cond_0
    return-void

    .line 126
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sina/weibo/sdk/cmd/AppInstallCmd;

    .line 127
    iget-object v2, p0, Lcom/sina/weibo/sdk/cmd/WbAppActivator;->mInstallExecutor:Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;

    invoke-virtual {v2, v0}, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;->doExecutor(Lcom/sina/weibo/sdk/cmd/AppInstallCmd;)Z

    goto :goto_0
.end method

.method private handleInvokeCmd(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sina/weibo/sdk/cmd/AppInvokeCmd;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 138
    if-eqz p1, :cond_0

    .line 139
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 143
    :cond_0
    return-void

    .line 139
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sina/weibo/sdk/cmd/AppInvokeCmd;

    .line 140
    iget-object v2, p0, Lcom/sina/weibo/sdk/cmd/WbAppActivator;->mInvokeExecutor:Lcom/sina/weibo/sdk/cmd/AppInvokeCmdExecutor;

    invoke-virtual {v2, v0}, Lcom/sina/weibo/sdk/cmd/AppInvokeCmdExecutor;->doExecutor(Lcom/sina/weibo/sdk/cmd/AppInvokeCmd;)Z

    goto :goto_0
.end method

.method private static requestCmdInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 106
    const-string v0, "http://api.weibo.cn/2/client/common_config"

    .line 107
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 108
    invoke-static {p0, v0}, Lcom/sina/weibo/sdk/utils/Utility;->getSign(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 110
    new-instance v2, Lcom/sina/weibo/sdk/net/WeiboParameters;

    invoke-direct {v2, p1}, Lcom/sina/weibo/sdk/net/WeiboParameters;-><init>(Ljava/lang/String;)V

    .line 111
    const-string v3, "appkey"

    invoke-virtual {v2, v3, p1}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v3, "packagename"

    invoke-virtual {v2, v3, v0}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v0, "key_hash"

    invoke-virtual {v2, v0, v1}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string v0, "version"

    const-string v1, "0031405000"

    invoke-virtual {v2, v0, v1}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v0, "http://api.weibo.cn/2/client/common_config"

    const-string v1, "GET"

    invoke-static {p0, v0, v1, v2}, Lcom/sina/weibo/sdk/net/NetUtils;->internalHttpRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


.method public activateApp()V
    .locals 0

    .prologue
    .line 96
    return-void
.end method
