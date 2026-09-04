.class public Lcom/sina/weibo/sdk/api/share/SendMessageToWeiboRequest;
.super Lcom/sina/weibo/sdk/api/share/BaseRequest;
.source "SendMessageToWeiboRequest.java"


.field public message:Lcom/sina/weibo/sdk/api/WeiboMessage;


.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/sina/weibo/sdk/api/share/BaseRequest;-><init>()V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/sina/weibo/sdk/api/share/BaseRequest;-><init>()V

    .line 39
    invoke-virtual {p0, p1}, Lcom/sina/weibo/sdk/api/share/SendMessageToWeiboRequest;->fromBundle(Landroid/os/Bundle;)V

    .line 40
    return-void
.end method


.method final check(Landroid/content/Context;Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;Lcom/sina/weibo/sdk/api/share/VersionCheckHandler;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 61
    iget-object v1, p0, Lcom/sina/weibo/sdk/api/share/SendMessageToWeiboRequest;->message:Lcom/sina/weibo/sdk/api/WeiboMessage;

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;->isLegal()Z

    move-result v1

    if-nez v1, :cond_1

    .line 73
    :cond_0
    :goto_0
    return v0

    .line 65
    :cond_1
    if-eqz p3, :cond_2

    .line 68
    iget-object v1, p0, Lcom/sina/weibo/sdk/api/share/SendMessageToWeiboRequest;->message:Lcom/sina/weibo/sdk/api/WeiboMessage;

    .line 66
    invoke-virtual {p3, p1, p2, v1}, Lcom/sina/weibo/sdk/api/share/VersionCheckHandler;->checkRequest(Landroid/content/Context;Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;Lcom/sina/weibo/sdk/api/WeiboMessage;)Z

    move-result v1

    .line 68
    if-eqz v1, :cond_0

    .line 73
    :cond_2
    iget-object v0, p0, Lcom/sina/weibo/sdk/api/share/SendMessageToWeiboRequest;->message:Lcom/sina/weibo/sdk/api/WeiboMessage;

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/api/WeiboMessage;->checkArgs()Z

    move-result v0

    goto :goto_0
.end method

.method public fromBundle(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/sina/weibo/sdk/api/share/BaseRequest;->fromBundle(Landroid/os/Bundle;)V

    .line 50
    new-instance v0, Lcom/sina/weibo/sdk/api/WeiboMessage;

    invoke-direct {v0, p1}, Lcom/sina/weibo/sdk/api/WeiboMessage;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/sina/weibo/sdk/api/share/SendMessageToWeiboRequest;->message:Lcom/sina/weibo/sdk/api/WeiboMessage;

    .line 51
    return-void
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x1

    return v0
.end method

.method public toBundle(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/sina/weibo/sdk/api/share/BaseRequest;->toBundle(Landroid/os/Bundle;)V

    .line 56
    iget-object v0, p0, Lcom/sina/weibo/sdk/api/share/SendMessageToWeiboRequest;->message:Lcom/sina/weibo/sdk/api/WeiboMessage;

    invoke-virtual {v0, p1}, Lcom/sina/weibo/sdk/api/WeiboMessage;->toBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 57
    return-void
.end method
