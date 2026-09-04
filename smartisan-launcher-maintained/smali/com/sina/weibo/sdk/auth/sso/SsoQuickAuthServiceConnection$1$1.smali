.class Lcom/sina/weibo/sdk/auth/sso/SsoQuickAuthServiceConnection$1$1;
.super Ljava/lang/Object;
.source "SsoQuickAuthServiceConnection.java"

.implements Ljava/lang/Runnable;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sina/weibo/sdk/auth/sso/SsoQuickAuthServiceConnection$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$1:Lcom/sina/weibo/sdk/auth/sso/SsoQuickAuthServiceConnection$1;


.method constructor <init>(Lcom/sina/weibo/sdk/auth/sso/SsoQuickAuthServiceConnection$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sina/weibo/sdk/auth/sso/SsoQuickAuthServiceConnection$1$1;->this$1:Lcom/sina/weibo/sdk/auth/sso/SsoQuickAuthServiceConnection$1;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public run()V
    .locals 5

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoQuickAuthServiceConnection$1$1;->this$1:Lcom/sina/weibo/sdk/auth/sso/SsoQuickAuthServiceConnection$1;

    invoke-static {v0}, Lcom/sina/weibo/sdk/auth/sso/SsoQuickAuthServiceConnection$1;->access$0(Lcom/sina/weibo/sdk/auth/sso/SsoQuickAuthServiceConnection$1;)Lcom/sina/weibo/sdk/auth/sso/SsoQuickAuthServiceConnection;

    move-result-object v0

    iget-object v0, v0, Lcom/sina/weibo/sdk/auth/sso/SsoQuickAuthServiceConnection;->mSsoHandler:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->getWeiboAuthListener()Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

    move-result-object v0

    .line 57
    iget-object v1, p0, Lcom/sina/weibo/sdk/auth/sso/SsoQuickAuthServiceConnection$1$1;->this$1:Lcom/sina/weibo/sdk/auth/sso/SsoQuickAuthServiceConnection$1;

    invoke-static {v1}, Lcom/sina/weibo/sdk/auth/sso/SsoQuickAuthServiceConnection$1;->access$0(Lcom/sina/weibo/sdk/auth/sso/SsoQuickAuthServiceConnection$1;)Lcom/sina/weibo/sdk/auth/sso/SsoQuickAuthServiceConnection;

    move-result-object v1

    invoke-static {v1}, Lcom/sina/weibo/sdk/auth/sso/SsoQuickAuthServiceConnection;->access$1(Lcom/sina/weibo/sdk/auth/sso/SsoQuickAuthServiceConnection;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    iget-object v1, p0, Lcom/sina/weibo/sdk/auth/sso/SsoQuickAuthServiceConnection$1$1;->this$1:Lcom/sina/weibo/sdk/auth/sso/SsoQuickAuthServiceConnection$1;

    iget-boolean v1, v1, Lcom/sina/weibo/sdk/auth/sso/SsoQuickAuthServiceConnection$1;->hasRemoteException:Z

    if-eqz v1, :cond_2

    .line 61
    if-eqz v0, :cond_0

    .line 62
    new-instance v1, Lcom/sina/weibo/sdk/exception/WeiboException;

    const-string v2, "auth failed!!!!!"

    invoke-direct {v1, v2}, Lcom/sina/weibo/sdk/exception/WeiboException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/sina/weibo/sdk/auth/WeiboAuthListener;->onWeiboException(Lcom/sina/weibo/sdk/exception/WeiboException;)V

    goto :goto_0

    .line 68
    :cond_2
    iget-object v1, p0, Lcom/sina/weibo/sdk/auth/sso/SsoQuickAuthServiceConnection$1$1;->this$1:Lcom/sina/weibo/sdk/auth/sso/SsoQuickAuthServiceConnection$1;

    invoke-static {v1}, Lcom/sina/weibo/sdk/auth/sso/SsoQuickAuthServiceConnection$1;->access$0(Lcom/sina/weibo/sdk/auth/sso/SsoQuickAuthServiceConnection$1;)Lcom/sina/weibo/sdk/auth/sso/SsoQuickAuthServiceConnection;

    move-result-object v1

    iget-object v1, v1, Lcom/sina/weibo/sdk/auth/sso/SsoQuickAuthServiceConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sina/weibo/sdk/auth/sso/SsoQuickAuthServiceConnection$1$1;->this$1:Lcom/sina/weibo/sdk/auth/sso/SsoQuickAuthServiceConnection$1;

    invoke-static {v2}, Lcom/sina/weibo/sdk/auth/sso/SsoQuickAuthServiceConnection$1;->access$0(Lcom/sina/weibo/sdk/auth/sso/SsoQuickAuthServiceConnection$1;)Lcom/sina/weibo/sdk/auth/sso/SsoQuickAuthServiceConnection;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 70
    iget-object v1, p0, Lcom/sina/weibo/sdk/auth/sso/SsoQuickAuthServiceConnection$1$1;->this$1:Lcom/sina/weibo/sdk/auth/sso/SsoQuickAuthServiceConnection$1;

    invoke-static {v1}, Lcom/sina/weibo/sdk/auth/sso/SsoQuickAuthServiceConnection$1;->access$0(Lcom/sina/weibo/sdk/auth/sso/SsoQuickAuthServiceConnection$1;)Lcom/sina/weibo/sdk/auth/sso/SsoQuickAuthServiceConnection;

    move-result-object v1

    iget-object v1, v1, Lcom/sina/weibo/sdk/auth/sso/SsoQuickAuthServiceConnection;->mSsoHandler:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    iget-object v2, p0, Lcom/sina/weibo/sdk/auth/sso/SsoQuickAuthServiceConnection$1$1;->this$1:Lcom/sina/weibo/sdk/auth/sso/SsoQuickAuthServiceConnection$1;

    iget-object v2, v2, Lcom/sina/weibo/sdk/auth/sso/SsoQuickAuthServiceConnection$1;->ssoPackageName:Ljava/lang/String;

    .line 71
    iget-object v3, p0, Lcom/sina/weibo/sdk/auth/sso/SsoQuickAuthServiceConnection$1$1;->this$1:Lcom/sina/weibo/sdk/auth/sso/SsoQuickAuthServiceConnection$1;

    iget-object v3, v3, Lcom/sina/weibo/sdk/auth/sso/SsoQuickAuthServiceConnection$1;->ssoActivityName:Ljava/lang/String;

    iget-object v4, p0, Lcom/sina/weibo/sdk/auth/sso/SsoQuickAuthServiceConnection$1$1;->this$1:Lcom/sina/weibo/sdk/auth/sso/SsoQuickAuthServiceConnection$1;

    invoke-static {v4}, Lcom/sina/weibo/sdk/auth/sso/SsoQuickAuthServiceConnection$1;->access$0(Lcom/sina/weibo/sdk/auth/sso/SsoQuickAuthServiceConnection$1;)Lcom/sina/weibo/sdk/auth/sso/SsoQuickAuthServiceConnection;

    move-result-object v4

    iget-object v4, v4, Lcom/sina/weibo/sdk/auth/sso/SsoQuickAuthServiceConnection;->mSsoHandler:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    invoke-virtual {v4}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->getSSOAuthRequestCode()I

    move-result v4

    .line 70
    invoke-virtual {v1, v2, v3, v4}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->startSingleSignOn(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    .line 71
    if-nez v1, :cond_0

    .line 72
    if-eqz v0, :cond_0

    .line 73
    new-instance v1, Lcom/sina/weibo/sdk/exception/WeiboException;

    const-string v2, "auth failed!!!!!"

    invoke-direct {v1, v2}, Lcom/sina/weibo/sdk/exception/WeiboException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/sina/weibo/sdk/auth/WeiboAuthListener;->onWeiboException(Lcom/sina/weibo/sdk/exception/WeiboException;)V

    goto :goto_0
.end method
