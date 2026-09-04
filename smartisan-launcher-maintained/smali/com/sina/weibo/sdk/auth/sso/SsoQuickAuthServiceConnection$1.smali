.class Lcom/sina/weibo/sdk/auth/sso/SsoQuickAuthServiceConnection$1;
.super Ljava/lang/Object;
.source "SsoQuickAuthServiceConnection.java"

.implements Ljava/lang/Runnable;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sina/weibo/sdk/auth/sso/SsoQuickAuthServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field hasRemoteException:Z

.field ssoActivityName:Ljava/lang/String;

.field ssoPackageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/sina/weibo/sdk/auth/sso/SsoQuickAuthServiceConnection;

.field private final synthetic val$remoteSSOservice:Lcom/sina/a/a;


.method constructor <init>(Lcom/sina/weibo/sdk/auth/sso/SsoQuickAuthServiceConnection;Lcom/sina/a/a;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sina/weibo/sdk/auth/sso/SsoQuickAuthServiceConnection$1;->this$0:Lcom/sina/weibo/sdk/auth/sso/SsoQuickAuthServiceConnection;

    iput-object p2, p0, Lcom/sina/weibo/sdk/auth/sso/SsoQuickAuthServiceConnection$1;->val$remoteSSOservice:Lcom/sina/a/a;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoQuickAuthServiceConnection$1;->hasRemoteException:Z

    return-void
.end method

.method static synthetic access$0(Lcom/sina/weibo/sdk/auth/sso/SsoQuickAuthServiceConnection$1;)Lcom/sina/weibo/sdk/auth/sso/SsoQuickAuthServiceConnection;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoQuickAuthServiceConnection$1;->this$0:Lcom/sina/weibo/sdk/auth/sso/SsoQuickAuthServiceConnection;

    return-object v0
.end method


.method public run()V
    .locals 3

    .prologue
    .line 38
    :try_start_0
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoQuickAuthServiceConnection$1;->val$remoteSSOservice:Lcom/sina/a/a;

    invoke-interface {v0}, Lcom/sina/a/a;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoQuickAuthServiceConnection$1;->ssoPackageName:Ljava/lang/String;

    .line 39
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoQuickAuthServiceConnection$1;->val$remoteSSOservice:Lcom/sina/a/a;

    invoke-interface {v0}, Lcom/sina/a/a;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoQuickAuthServiceConnection$1;->ssoActivityName:Ljava/lang/String;

    .line 41
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoQuickAuthServiceConnection$1;->this$0:Lcom/sina/weibo/sdk/auth/sso/SsoQuickAuthServiceConnection;

    iget-object v0, v0, Lcom/sina/weibo/sdk/auth/sso/SsoQuickAuthServiceConnection;->mSsoHandler:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->getWeiboInfo()Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;

    move-result-object v0

    .line 42
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;->isLegal()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    invoke-virtual {v0}, Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;->getSupportApi()I

    move-result v0

    const/16 v1, 0x2873

    if-lt v0, v1, :cond_0

    .line 45
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoQuickAuthServiceConnection$1;->this$0:Lcom/sina/weibo/sdk/auth/sso/SsoQuickAuthServiceConnection;

    iget-object v0, v0, Lcom/sina/weibo/sdk/auth/sso/SsoQuickAuthServiceConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 46
    iget-object v1, p0, Lcom/sina/weibo/sdk/auth/sso/SsoQuickAuthServiceConnection$1;->this$0:Lcom/sina/weibo/sdk/auth/sso/SsoQuickAuthServiceConnection;

    iget-object v1, v1, Lcom/sina/weibo/sdk/auth/sso/SsoQuickAuthServiceConnection;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/sina/weibo/sdk/utils/Utility;->getSign(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 47
    iget-object v2, p0, Lcom/sina/weibo/sdk/auth/sso/SsoQuickAuthServiceConnection$1;->val$remoteSSOservice:Lcom/sina/a/a;

    invoke-interface {v2, v0, v1}, Lcom/sina/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoQuickAuthServiceConnection$1;->this$0:Lcom/sina/weibo/sdk/auth/sso/SsoQuickAuthServiceConnection;

    invoke-static {v0}, Lcom/sina/weibo/sdk/auth/sso/SsoQuickAuthServiceConnection;->access$0(Lcom/sina/weibo/sdk/auth/sso/SsoQuickAuthServiceConnection;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sina/weibo/sdk/auth/sso/SsoQuickAuthServiceConnection$1$1;

    invoke-direct {v1, p0}, Lcom/sina/weibo/sdk/auth/sso/SsoQuickAuthServiceConnection$1$1;-><init>(Lcom/sina/weibo/sdk/auth/sso/SsoQuickAuthServiceConnection$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 78
    return-void

    .line 49
    :catch_0
    move-exception v0

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoQuickAuthServiceConnection$1;->hasRemoteException:Z

    goto :goto_0
.end method
