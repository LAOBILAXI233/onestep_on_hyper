.class public Lcom/sina/weibo/sdk/auth/sso/UserInfo;
.super Ljava/lang/Object;
.source "UserInfo.java"


.field private mNickName:Ljava/lang/String;

.field private mUid:Ljava/lang/String;

.field private mUserIcon:Landroid/graphics/Bitmap;


.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/sina/weibo/sdk/auth/sso/UserInfo;->mUid:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/sina/weibo/sdk/auth/sso/UserInfo;->mNickName:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lcom/sina/weibo/sdk/auth/sso/UserInfo;->mUserIcon:Landroid/graphics/Bitmap;

    .line 24
    return-void
.end method


.method public getNickName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/UserInfo;->mNickName:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/UserInfo;->mUid:Ljava/lang/String;

    return-object v0
.end method

.method public getUserIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/UserInfo;->mUserIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method
