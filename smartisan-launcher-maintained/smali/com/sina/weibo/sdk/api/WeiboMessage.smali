.class public final Lcom/sina/weibo/sdk/api/WeiboMessage;
.super Ljava/lang/Object;
.source "WeiboMessage.java"


.field public mediaObject:Lcom/sina/weibo/sdk/api/BaseMediaObject;


.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-virtual {p0, p1}, Lcom/sina/weibo/sdk/api/WeiboMessage;->toBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 40
    return-void
.end method


.method public checkArgs()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 59
    iget-object v1, p0, Lcom/sina/weibo/sdk/api/WeiboMessage;->mediaObject:Lcom/sina/weibo/sdk/api/BaseMediaObject;

    if-nez v1, :cond_0

    .line 60
    const-string v1, "Weibo.WeiboMessage"

    const-string v2, "checkArgs fail, mediaObject is null"

    invoke-static {v1, v2}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :goto_0
    return v0

    .line 63
    :cond_0
    iget-object v1, p0, Lcom/sina/weibo/sdk/api/WeiboMessage;->mediaObject:Lcom/sina/weibo/sdk/api/BaseMediaObject;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sina/weibo/sdk/api/WeiboMessage;->mediaObject:Lcom/sina/weibo/sdk/api/BaseMediaObject;

    invoke-virtual {v1}, Lcom/sina/weibo/sdk/api/BaseMediaObject;->checkArgs()Z

    move-result v1

    if-nez v1, :cond_1

    .line 64
    const-string v1, "Weibo.WeiboMessage"

    const-string v2, "checkArgs fail, mediaObject is invalid"

    invoke-static {v1, v2}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 67
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toBundle(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sina/weibo/sdk/api/WeiboMessage;->mediaObject:Lcom/sina/weibo/sdk/api/BaseMediaObject;

    if-eqz v0, :cond_0

    .line 44
    const-string v0, "_weibo_message_media"

    iget-object v1, p0, Lcom/sina/weibo/sdk/api/WeiboMessage;->mediaObject:Lcom/sina/weibo/sdk/api/BaseMediaObject;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 45
    const-string v0, "_weibo_message_media_extra"

    iget-object v1, p0, Lcom/sina/weibo/sdk/api/WeiboMessage;->mediaObject:Lcom/sina/weibo/sdk/api/BaseMediaObject;

    invoke-virtual {v1}, Lcom/sina/weibo/sdk/api/BaseMediaObject;->toExtraMediaString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :cond_0
    return-object p1
.end method

.method public toObject(Landroid/os/Bundle;)Lcom/sina/weibo/sdk/api/WeiboMessage;
    .locals 2

    .prologue
    .line 51
    const-string v0, "_weibo_message_media"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/sina/weibo/sdk/api/BaseMediaObject;

    iput-object v0, p0, Lcom/sina/weibo/sdk/api/WeiboMessage;->mediaObject:Lcom/sina/weibo/sdk/api/BaseMediaObject;

    .line 52
    iget-object v0, p0, Lcom/sina/weibo/sdk/api/WeiboMessage;->mediaObject:Lcom/sina/weibo/sdk/api/BaseMediaObject;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/sina/weibo/sdk/api/WeiboMessage;->mediaObject:Lcom/sina/weibo/sdk/api/BaseMediaObject;

    const-string v1, "_weibo_message_media_extra"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/api/BaseMediaObject;->toExtraMediaObject(Ljava/lang/String;)Lcom/sina/weibo/sdk/api/BaseMediaObject;

    .line 55
    :cond_0
    return-object p0
.end method
