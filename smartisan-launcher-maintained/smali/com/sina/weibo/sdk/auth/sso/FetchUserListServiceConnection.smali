.class Lcom/sina/weibo/sdk/auth/sso/FetchUserListServiceConnection;
.super Lcom/sina/weibo/sdk/auth/sso/BaseServiceConnection;
.source "FetchUserListServiceConnection.java"


.method public constructor <init>(Landroid/content/Context;Lcom/sina/weibo/sdk/auth/sso/SsoHandler;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Lcom/sina/weibo/sdk/auth/sso/BaseServiceConnection;-><init>(Landroid/content/Context;Lcom/sina/weibo/sdk/auth/sso/SsoHandler;)V

    .line 13
    return-void
.end method


.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    .prologue
    .line 17
    invoke-static {p2}, Lcom/sina/a/a$a;->a(Landroid/os/IBinder;)Lcom/sina/a/a;

    move-result-object v0

    .line 19
    :try_start_0
    invoke-interface {v0}, Lcom/sina/a/a;->a()Ljava/lang/String;

    move-result-object v1

    .line 20
    invoke-interface {v0}, Lcom/sina/a/a;->b()Ljava/lang/String;

    move-result-object v0

    .line 23
    iget-object v2, p0, Lcom/sina/weibo/sdk/auth/sso/FetchUserListServiceConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 25
    iget-object v2, p0, Lcom/sina/weibo/sdk/auth/sso/FetchUserListServiceConnection;->mSsoHandler:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    .line 26
    iget-object v3, p0, Lcom/sina/weibo/sdk/auth/sso/FetchUserListServiceConnection;->mSsoHandler:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    invoke-virtual {v3}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->getSSOAuthRequestCode()I

    move-result v3

    .line 25
    invoke-virtual {v2, v1, v0, v3}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->startSingleSignOn(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    .line 26
    if-nez v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/FetchUserListServiceConnection;->mSsoHandler:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->getUserInfoListener()Lcom/sina/weibo/sdk/auth/sso/IUserInfoListener;

    move-result-object v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    invoke-interface {v0}, Lcom/sina/weibo/sdk/auth/sso/IUserInfoListener;->onUserInfoRetrievedFailed()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    :cond_0
    :goto_0
    return-void

    .line 32
    :catch_0
    move-exception v0

    .line 33
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/FetchUserListServiceConnection;->mSsoHandler:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->getUserInfoListener()Lcom/sina/weibo/sdk/auth/sso/IUserInfoListener;

    move-result-object v0

    .line 40
    if-eqz v0, :cond_0

    .line 41
    invoke-interface {v0}, Lcom/sina/weibo/sdk/auth/sso/IUserInfoListener;->onUserInfoRetrievedFailed()V

    .line 43
    :cond_0
    return-void
.end method
