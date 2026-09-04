.class Lcom/sina/weibo/sdk/auth/sso/SsoAuthServiceConnection;
.super Lcom/sina/weibo/sdk/auth/sso/BaseServiceConnection;
.source "SsoAuthServiceConnection.java"


.field private mOnlyClientSso:Z


.method public constructor <init>(Landroid/content/Context;Lcom/sina/weibo/sdk/auth/sso/SsoHandler;Z)V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lcom/sina/weibo/sdk/auth/sso/BaseServiceConnection;-><init>(Landroid/content/Context;Lcom/sina/weibo/sdk/auth/sso/SsoHandler;)V

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoAuthServiceConnection;->mOnlyClientSso:Z

    .line 15
    iput-boolean p3, p0, Lcom/sina/weibo/sdk/auth/sso/SsoAuthServiceConnection;->mOnlyClientSso:Z

    .line 16
    return-void
.end method


.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    .prologue
    .line 20
    invoke-static {p2}, Lcom/sina/a/a$a;->a(Landroid/os/IBinder;)Lcom/sina/a/a;

    move-result-object v0

    .line 22
    :try_start_0
    invoke-interface {v0}, Lcom/sina/a/a;->a()Ljava/lang/String;

    move-result-object v1

    .line 23
    invoke-interface {v0}, Lcom/sina/a/a;->b()Ljava/lang/String;

    move-result-object v0

    .line 26
    iget-object v2, p0, Lcom/sina/weibo/sdk/auth/sso/SsoAuthServiceConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 28
    iget-object v2, p0, Lcom/sina/weibo/sdk/auth/sso/SsoAuthServiceConnection;->mSsoHandler:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    .line 29
    iget-object v3, p0, Lcom/sina/weibo/sdk/auth/sso/SsoAuthServiceConnection;->mSsoHandler:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    invoke-virtual {v3}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->getSSOAuthRequestCode()I

    move-result v3

    .line 28
    invoke-virtual {v2, v1, v0, v3}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->startSingleSignOn(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    .line 29
    if-nez v0, :cond_0

    .line 30
    iget-boolean v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoAuthServiceConnection;->mOnlyClientSso:Z

    if-nez v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoAuthServiceConnection;->mSsoHandler:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->getWebAuthHandler()Lcom/sina/weibo/sdk/auth/sso/WebAuthHandler;

    move-result-object v0

    .line 32
    if-eqz v0, :cond_0

    .line 33
    iget-object v1, p0, Lcom/sina/weibo/sdk/auth/sso/SsoAuthServiceConnection;->mSsoHandler:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    invoke-virtual {v1}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->getWeiboAuthListener()Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/auth/sso/WebAuthHandler;->anthorize(Lcom/sina/weibo/sdk/auth/WeiboAuthListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :cond_0
    :goto_0
    return-void

    .line 37
    :catch_0
    move-exception v0

    .line 38
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoAuthServiceConnection;->mSsoHandler:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->getWebAuthHandler()Lcom/sina/weibo/sdk/auth/sso/WebAuthHandler;

    move-result-object v0

    .line 45
    if-eqz v0, :cond_0

    .line 46
    iget-object v1, p0, Lcom/sina/weibo/sdk/auth/sso/SsoAuthServiceConnection;->mSsoHandler:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    invoke-virtual {v1}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->getWeiboAuthListener()Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/auth/sso/WebAuthHandler;->anthorize(Lcom/sina/weibo/sdk/auth/WeiboAuthListener;)V

    .line 48
    :cond_0
    return-void
.end method
