.class public Lcom/sina/weibo/sdk/component/AuthRequestParam;
.super Lcom/sina/weibo/sdk/component/BrowserRequestParamBase;
.source "AuthRequestParam.java"


.field public static final EXTRA_KEY_AUTHINFO:Ljava/lang/String; = "key_authinfo"

.field public static final EXTRA_KEY_LISTENER:Ljava/lang/String; = "key_listener"


.field private mAuthInfo:Lcom/sina/weibo/sdk/auth/AuthInfo;

.field private mAuthListener:Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

.field private mAuthListenerKey:Ljava/lang/String;


.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/component/BrowserRequestParamBase;-><init>(Landroid/content/Context;)V

    .line 21
    sget-object v0, Lcom/sina/weibo/sdk/component/BrowserLauncher;->AUTH:Lcom/sina/weibo/sdk/component/BrowserLauncher;

    iput-object v0, p0, Lcom/sina/weibo/sdk/component/AuthRequestParam;->mLaucher:Lcom/sina/weibo/sdk/component/BrowserLauncher;

    .line 22
    return-void
.end method


.method public execRequest(Landroid/app/Activity;I)V
    .locals 2

    .prologue
    .line 54
    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    .line 55
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/AuthRequestParam;->mAuthListener:Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/AuthRequestParam;->mAuthListener:Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

    invoke-interface {v0}, Lcom/sina/weibo/sdk/auth/WeiboAuthListener;->onCancel()V

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/AuthRequestParam;->mAuthListenerKey:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->closeBrowser(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :cond_1
    return-void
.end method

.method public getAuthInfo()Lcom/sina/weibo/sdk/auth/AuthInfo;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/AuthRequestParam;->mAuthInfo:Lcom/sina/weibo/sdk/auth/AuthInfo;

    return-object v0
.end method

.method public getAuthListener()Lcom/sina/weibo/sdk/auth/WeiboAuthListener;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/AuthRequestParam;->mAuthListener:Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

    return-object v0
.end method

.method public getAuthListenerKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/AuthRequestParam;->mAuthListenerKey:Ljava/lang/String;

    return-object v0
.end method

.method public onCreateRequestParamBundle(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/AuthRequestParam;->mAuthInfo:Lcom/sina/weibo/sdk/auth/AuthInfo;

    if-eqz v0, :cond_0

    .line 41
    const-string v0, "key_authinfo"

    .line 42
    iget-object v1, p0, Lcom/sina/weibo/sdk/component/AuthRequestParam;->mAuthInfo:Lcom/sina/weibo/sdk/auth/AuthInfo;

    invoke-virtual {v1}, Lcom/sina/weibo/sdk/auth/AuthInfo;->getAuthBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 40
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/AuthRequestParam;->mAuthListener:Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

    if-eqz v0, :cond_1

    .line 46
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/AuthRequestParam;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sina/weibo/sdk/component/WeiboCallbackManager;->getInstance(Landroid/content/Context;)Lcom/sina/weibo/sdk/component/WeiboCallbackManager;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lcom/sina/weibo/sdk/component/WeiboCallbackManager;->genCallbackKey()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sina/weibo/sdk/component/AuthRequestParam;->mAuthListenerKey:Ljava/lang/String;

    .line 48
    iget-object v1, p0, Lcom/sina/weibo/sdk/component/AuthRequestParam;->mAuthListenerKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/sina/weibo/sdk/component/AuthRequestParam;->mAuthListener:Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

    invoke-virtual {v0, v1, v2}, Lcom/sina/weibo/sdk/component/WeiboCallbackManager;->setWeiboAuthListener(Ljava/lang/String;Lcom/sina/weibo/sdk/auth/WeiboAuthListener;)V

    .line 49
    const-string v0, "key_listener"

    iget-object v1, p0, Lcom/sina/weibo/sdk/component/AuthRequestParam;->mAuthListenerKey:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :cond_1
    return-void
.end method

.method protected onSetupRequestParam(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 26
    const-string v0, "key_authinfo"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    iget-object v1, p0, Lcom/sina/weibo/sdk/component/AuthRequestParam;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/sina/weibo/sdk/auth/AuthInfo;->parseBundleData(Landroid/content/Context;Landroid/os/Bundle;)Lcom/sina/weibo/sdk/auth/AuthInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/component/AuthRequestParam;->mAuthInfo:Lcom/sina/weibo/sdk/auth/AuthInfo;

    .line 30
    :cond_0
    const-string v0, "key_listener"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/component/AuthRequestParam;->mAuthListenerKey:Ljava/lang/String;

    .line 31
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/AuthRequestParam;->mAuthListenerKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 33
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/AuthRequestParam;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sina/weibo/sdk/component/WeiboCallbackManager;->getInstance(Landroid/content/Context;)Lcom/sina/weibo/sdk/component/WeiboCallbackManager;

    move-result-object v0

    .line 34
    iget-object v1, p0, Lcom/sina/weibo/sdk/component/AuthRequestParam;->mAuthListenerKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/component/WeiboCallbackManager;->getWeiboAuthListener(Ljava/lang/String;)Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

    move-result-object v0

    .line 32
    iput-object v0, p0, Lcom/sina/weibo/sdk/component/AuthRequestParam;->mAuthListener:Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

    .line 36
    :cond_1
    return-void
.end method

.method public setAuthInfo(Lcom/sina/weibo/sdk/auth/AuthInfo;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/sina/weibo/sdk/component/AuthRequestParam;->mAuthInfo:Lcom/sina/weibo/sdk/auth/AuthInfo;

    .line 68
    return-void
.end method

.method public setAuthListener(Lcom/sina/weibo/sdk/auth/WeiboAuthListener;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/sina/weibo/sdk/component/AuthRequestParam;->mAuthListener:Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

    .line 80
    return-void
.end method
