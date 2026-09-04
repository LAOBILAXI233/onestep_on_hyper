.class public Lcom/sina/weibo/sdk/auth/sso/GuestUserInfo;
.super Ljava/lang/Object;
.source "GuestUserInfo.java"


.field private mAid:Ljava/lang/String;

.field private mGsid:Ljava/lang/String;

.field private mToken:Ljava/lang/String;

.field private mUid:Ljava/lang/String;


.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/sina/weibo/sdk/auth/sso/GuestUserInfo;->mAid:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/sina/weibo/sdk/auth/sso/GuestUserInfo;->mToken:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/sina/weibo/sdk/auth/sso/GuestUserInfo;->mUid:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/sina/weibo/sdk/auth/sso/GuestUserInfo;->mGsid:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcom/sina/weibo/sdk/auth/sso/GuestUserInfo;->mToken:Ljava/lang/String;

    .line 26
    return-void
.end method


.method public getAid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/GuestUserInfo;->mAid:Ljava/lang/String;

    return-object v0
.end method

.method public getGsid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/GuestUserInfo;->mGsid:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/GuestUserInfo;->mToken:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/GuestUserInfo;->mUid:Ljava/lang/String;

    return-object v0
.end method
