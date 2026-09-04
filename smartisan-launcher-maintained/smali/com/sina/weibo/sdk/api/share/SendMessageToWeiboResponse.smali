.class public Lcom/sina/weibo/sdk/api/share/SendMessageToWeiboResponse;
.super Lcom/sina/weibo/sdk/api/share/BaseResponse;
.source "SendMessageToWeiboResponse.java"


.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/sina/weibo/sdk/api/share/BaseResponse;-><init>()V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/sina/weibo/sdk/api/share/BaseResponse;-><init>()V

    .line 37
    invoke-virtual {p0, p1}, Lcom/sina/weibo/sdk/api/share/SendMessageToWeiboResponse;->fromBundle(Landroid/os/Bundle;)V

    .line 38
    return-void
.end method


.method final check(Landroid/content/Context;Lcom/sina/weibo/sdk/api/share/VersionCheckHandler;)Z
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x1

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x1

    return v0
.end method
