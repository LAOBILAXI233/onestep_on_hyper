.class public Lcom/sina/weibo/sdk/api/share/VersionCheckHandler;
.super Ljava/lang/Object;
.source "VersionCheckHandler.java"

.implements Lcom/sina/weibo/sdk/api/share/IVersionCheckHandler;


.field private static final TAG:Ljava/lang/String;


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/sina/weibo/sdk/api/share/VersionCheckHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sina/weibo/sdk/api/share/VersionCheckHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public checkRequest(Landroid/content/Context;Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;Lcom/sina/weibo/sdk/api/WeiboMessage;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 43
    if-eqz p2, :cond_0

    .line 44
    invoke-virtual {p2}, Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;->isLegal()Z

    move-result v0

    if-nez v0, :cond_1

    .line 45
    :cond_0
    const/4 v0, 0x0

    .line 64
    :goto_0
    return v0

    .line 47
    :cond_1
    sget-object v0, Lcom/sina/weibo/sdk/api/share/VersionCheckHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WeiboMessage WeiboInfo package : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    sget-object v0, Lcom/sina/weibo/sdk/api/share/VersionCheckHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WeiboMessage WeiboInfo supportApi : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;->getSupportApi()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;->getSupportApi()I

    move-result v0

    const/16 v1, 0x286f

    if-ge v0, v1, :cond_2

    .line 52
    iget-object v0, p3, Lcom/sina/weibo/sdk/api/WeiboMessage;->mediaObject:Lcom/sina/weibo/sdk/api/BaseMediaObject;

    if-eqz v0, :cond_2

    iget-object v0, p3, Lcom/sina/weibo/sdk/api/WeiboMessage;->mediaObject:Lcom/sina/weibo/sdk/api/BaseMediaObject;

    instance-of v0, v0, Lcom/sina/weibo/sdk/api/VoiceObject;

    if-eqz v0, :cond_2

    .line 53
    iput-object v3, p3, Lcom/sina/weibo/sdk/api/WeiboMessage;->mediaObject:Lcom/sina/weibo/sdk/api/BaseMediaObject;

    .line 57
    :cond_2
    invoke-virtual {p2}, Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;->getSupportApi()I

    move-result v0

    const/16 v1, 0x2870

    if-ge v0, v1, :cond_3

    .line 59
    iget-object v0, p3, Lcom/sina/weibo/sdk/api/WeiboMessage;->mediaObject:Lcom/sina/weibo/sdk/api/BaseMediaObject;

    if-eqz v0, :cond_3

    iget-object v0, p3, Lcom/sina/weibo/sdk/api/WeiboMessage;->mediaObject:Lcom/sina/weibo/sdk/api/BaseMediaObject;

    instance-of v0, v0, Lcom/sina/weibo/sdk/api/CmdObject;

    if-eqz v0, :cond_3

    .line 60
    iput-object v3, p3, Lcom/sina/weibo/sdk/api/WeiboMessage;->mediaObject:Lcom/sina/weibo/sdk/api/BaseMediaObject;

    .line 64
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public checkRequest(Landroid/content/Context;Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;Lcom/sina/weibo/sdk/api/WeiboMultiMessage;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 69
    if-eqz p2, :cond_0

    .line 70
    invoke-virtual {p2}, Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;->isLegal()Z

    move-result v1

    if-nez v1, :cond_1

    .line 88
    :cond_0
    :goto_0
    return v0

    .line 73
    :cond_1
    sget-object v1, Lcom/sina/weibo/sdk/api/share/VersionCheckHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "WeiboMultiMessage WeiboInfo package : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    sget-object v1, Lcom/sina/weibo/sdk/api/share/VersionCheckHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "WeiboMultiMessage WeiboInfo supportApi : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;->getSupportApi()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;->getSupportApi()I

    move-result v1

    const/16 v2, 0x286f

    if-lt v1, v2, :cond_0

    .line 81
    invoke-virtual {p2}, Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;->getSupportApi()I

    move-result v0

    const/16 v1, 0x2870

    if-ge v0, v1, :cond_2

    .line 83
    iget-object v0, p3, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->mediaObject:Lcom/sina/weibo/sdk/api/BaseMediaObject;

    if-eqz v0, :cond_2

    iget-object v0, p3, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->mediaObject:Lcom/sina/weibo/sdk/api/BaseMediaObject;

    instance-of v0, v0, Lcom/sina/weibo/sdk/api/CmdObject;

    if-eqz v0, :cond_2

    .line 84
    const/4 v0, 0x0

    iput-object v0, p3, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->mediaObject:Lcom/sina/weibo/sdk/api/BaseMediaObject;

    .line 88
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public checkResponse(Landroid/content/Context;Ljava/lang/String;Lcom/sina/weibo/sdk/api/WeiboMessage;)Z
    .locals 1

    .prologue
    .line 93
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    const/4 v0, 0x0

    .line 98
    :goto_0
    return v0

    .line 96
    :cond_0
    invoke-static {p1}, Lcom/sina/weibo/sdk/WeiboAppManager;->getInstance(Landroid/content/Context;)Lcom/sina/weibo/sdk/WeiboAppManager;

    move-result-object v0

    .line 97
    invoke-virtual {v0, p2}, Lcom/sina/weibo/sdk/WeiboAppManager;->parseWeiboInfoByAsset(Ljava/lang/String;)Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;

    move-result-object v0

    .line 98
    invoke-virtual {p0, p1, v0, p3}, Lcom/sina/weibo/sdk/api/share/VersionCheckHandler;->checkRequest(Landroid/content/Context;Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;Lcom/sina/weibo/sdk/api/WeiboMessage;)Z

    move-result v0

    goto :goto_0
.end method

.method public checkResponse(Landroid/content/Context;Ljava/lang/String;Lcom/sina/weibo/sdk/api/WeiboMultiMessage;)Z
    .locals 1

    .prologue
    .line 103
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    const/4 v0, 0x0

    .line 108
    :goto_0
    return v0

    .line 106
    :cond_0
    invoke-static {p1}, Lcom/sina/weibo/sdk/WeiboAppManager;->getInstance(Landroid/content/Context;)Lcom/sina/weibo/sdk/WeiboAppManager;

    move-result-object v0

    .line 107
    invoke-virtual {v0, p2}, Lcom/sina/weibo/sdk/WeiboAppManager;->parseWeiboInfoByAsset(Ljava/lang/String;)Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;

    move-result-object v0

    .line 108
    invoke-virtual {p0, p1, v0, p3}, Lcom/sina/weibo/sdk/api/share/VersionCheckHandler;->checkRequest(Landroid/content/Context;Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;Lcom/sina/weibo/sdk/api/WeiboMultiMessage;)Z

    move-result v0

    goto :goto_0
.end method
