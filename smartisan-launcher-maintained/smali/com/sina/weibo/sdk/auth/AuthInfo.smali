.class public Lcom/sina/weibo/sdk/auth/AuthInfo;
.super Ljava/lang/Object;
.source "AuthInfo.java"


.field private mAppKey:Ljava/lang/String;

.field private mKeyHash:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;

.field private mRedirectUrl:Ljava/lang/String;

.field private mScope:Ljava/lang/String;


.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/sina/weibo/sdk/auth/AuthInfo;->mAppKey:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/sina/weibo/sdk/auth/AuthInfo;->mRedirectUrl:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/sina/weibo/sdk/auth/AuthInfo;->mScope:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/sina/weibo/sdk/auth/AuthInfo;->mPackageName:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/sina/weibo/sdk/auth/AuthInfo;->mKeyHash:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/sina/weibo/sdk/auth/AuthInfo;->mAppKey:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lcom/sina/weibo/sdk/auth/AuthInfo;->mRedirectUrl:Ljava/lang/String;

    .line 30
    iput-object p4, p0, Lcom/sina/weibo/sdk/auth/AuthInfo;->mScope:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/auth/AuthInfo;->mPackageName:Ljava/lang/String;

    .line 32
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/AuthInfo;->mPackageName:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/sina/weibo/sdk/utils/Utility;->getSign(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/auth/AuthInfo;->mKeyHash:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public static parseBundleData(Landroid/content/Context;Landroid/os/Bundle;)Lcom/sina/weibo/sdk/auth/AuthInfo;
    .locals 4

    .prologue
    .line 66
    const-string v0, "appKey"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 67
    const-string v1, "redirectUri"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 68
    const-string v2, "scope"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 69
    new-instance v3, Lcom/sina/weibo/sdk/auth/AuthInfo;

    invoke-direct {v3, p0, v0, v1, v2}, Lcom/sina/weibo/sdk/auth/AuthInfo;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method


.method public getAppKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/AuthInfo;->mAppKey:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthBundle()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 56
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 57
    const-string v1, "appKey"

    iget-object v2, p0, Lcom/sina/weibo/sdk/auth/AuthInfo;->mAppKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v1, "redirectUri"

    iget-object v2, p0, Lcom/sina/weibo/sdk/auth/AuthInfo;->mRedirectUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v1, "scope"

    iget-object v2, p0, Lcom/sina/weibo/sdk/auth/AuthInfo;->mScope:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string v1, "packagename"

    iget-object v2, p0, Lcom/sina/weibo/sdk/auth/AuthInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v1, "key_hash"

    iget-object v2, p0, Lcom/sina/weibo/sdk/auth/AuthInfo;->mKeyHash:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    return-object v0
.end method

.method public getKeyHash()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/AuthInfo;->mKeyHash:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/AuthInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getRedirectUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/AuthInfo;->mRedirectUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getScope()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/AuthInfo;->mScope:Ljava/lang/String;

    return-object v0
.end method
