.class Lcom/sina/weibo/sdk/auth/sso/SsoQuickAuthServiceConnection;
.super Lcom/sina/weibo/sdk/auth/sso/BaseServiceConnection;
.source "SsoQuickAuthServiceConnection.java"


.field private mHandler:Landroid/os/Handler;

.field private mHasServiceDisconnected:Z


.method public constructor <init>(Landroid/content/Context;Lcom/sina/weibo/sdk/auth/sso/SsoHandler;)V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/sina/weibo/sdk/auth/sso/BaseServiceConnection;-><init>(Landroid/content/Context;Lcom/sina/weibo/sdk/auth/sso/SsoHandler;)V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoQuickAuthServiceConnection;->mHasServiceDisconnected:Z

    .line 23
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoQuickAuthServiceConnection;->mHandler:Landroid/os/Handler;

    .line 24
    return-void
.end method

.method static synthetic access$0(Lcom/sina/weibo/sdk/auth/sso/SsoQuickAuthServiceConnection;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoQuickAuthServiceConnection;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1(Lcom/sina/weibo/sdk/auth/sso/SsoQuickAuthServiceConnection;)Z
    .locals 1

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoQuickAuthServiceConnection;->mHasServiceDisconnected:Z

    return v0
.end method


.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .prologue
    .line 28
    invoke-static {p2}, Lcom/sina/a/a$a;->a(Landroid/os/IBinder;)Lcom/sina/a/a;

    move-result-object v0

    .line 30
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/sina/weibo/sdk/auth/sso/SsoQuickAuthServiceConnection$1;

    invoke-direct {v2, p0, v0}, Lcom/sina/weibo/sdk/auth/sso/SsoQuickAuthServiceConnection$1;-><init>(Lcom/sina/weibo/sdk/auth/sso/SsoQuickAuthServiceConnection;Lcom/sina/a/a;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 79
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 80
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    .prologue
    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoQuickAuthServiceConnection;->mHasServiceDisconnected:Z

    .line 85
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoQuickAuthServiceConnection;->mSsoHandler:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->getWeiboAuthListener()Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

    move-result-object v0

    .line 86
    if-eqz v0, :cond_0

    .line 87
    new-instance v1, Lcom/sina/weibo/sdk/exception/WeiboException;

    const-string v2, "auth failed!!!!!"

    invoke-direct {v1, v2}, Lcom/sina/weibo/sdk/exception/WeiboException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/sina/weibo/sdk/auth/WeiboAuthListener;->onWeiboException(Lcom/sina/weibo/sdk/exception/WeiboException;)V

    .line 89
    :cond_0
    return-void
.end method
