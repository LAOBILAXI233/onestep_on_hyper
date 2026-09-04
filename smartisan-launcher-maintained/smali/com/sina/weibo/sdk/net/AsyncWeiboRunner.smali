.class public Lcom/sina/weibo/sdk/net/AsyncWeiboRunner;
.super Ljava/lang/Object;
.source "AsyncWeiboRunner.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$AsyncTaskResult;,
        Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$RequestRunner;
    }
.end annotation


.field private mContext:Landroid/content/Context;


.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner;->mContext:Landroid/content/Context;

    .line 37
    return-void
.end method

.method static synthetic access$0(Lcom/sina/weibo/sdk/net/AsyncWeiboRunner;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner;->mContext:Landroid/content/Context;

    return-object v0
.end method


.method public request(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sina/weibo/sdk/exception/WeiboException;
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->getAppKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/cmd/WbAppActivator;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/sina/weibo/sdk/cmd/WbAppActivator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/cmd/WbAppActivator;->activateApp()V

    .line 108
    iget-object v0, p0, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p3, p2}, Lcom/sina/weibo/sdk/net/HttpManager;->openUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public request(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sina/weibo/sdk/exception/WeiboException;
        }
    .end annotation

    .prologue
    .line 119
    if-eqz p2, :cond_0

    .line 120
    const-string v0, "source"

    invoke-virtual {p5, v0, p1}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-virtual {p5, p3}, Lcom/sina/weibo/sdk/net/WeiboParameters;->setAnonymousCookie(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0, p4, p5, p6}, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner;->request(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 124
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p4, p5, p6}, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner;->request(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public request4RdirectURL(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 6

    .prologue
    .line 78
    new-instance v0, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$2;-><init>(Lcom/sina/weibo/sdk/net/AsyncWeiboRunner;Ljava/lang/String;Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 92
    invoke-virtual {v0}, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$2;->start()V

    .line 93
    return-void
.end method

.method public requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 6

    .prologue
    .line 142
    iget-object v0, p0, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->getAppKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/cmd/WbAppActivator;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/sina/weibo/sdk/cmd/WbAppActivator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/cmd/WbAppActivator;->activateApp()V

    .line 143
    new-instance v0, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$RequestRunner;

    iget-object v1, p0, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner;->mContext:Landroid/content/Context;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$RequestRunner;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$RequestRunner;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 144
    return-void
.end method

.method public requestAsync(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 1

    .prologue
    .line 155
    if-eqz p2, :cond_0

    .line 156
    const-string v0, "source"

    invoke-virtual {p5, v0, p1}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-virtual {p5, p3}, Lcom/sina/weibo/sdk/net/WeiboParameters;->setAnonymousCookie(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0, p4, p5, p6, p7}, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 163
    :goto_0
    return-void

    .line 160
    :cond_0
    invoke-virtual {p0, p4, p5, p6, p7}, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    goto :goto_0
.end method

.method public requestByThread(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 55
    new-instance v0, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$1;-><init>(Lcom/sina/weibo/sdk/net/AsyncWeiboRunner;Ljava/lang/String;Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 69
    invoke-virtual {v0}, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$1;->start()V

    .line 70
    return-void
.end method
