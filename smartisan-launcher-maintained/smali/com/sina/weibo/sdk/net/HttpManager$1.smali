.class Lcom/sina/weibo/sdk/net/HttpManager$1;
.super Ljava/lang/Object;
.source "HttpManager.java"

.implements Lorg/apache/http/client/RedirectHandler;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sina/weibo/sdk/net/HttpManager;->openUrl4RdirectURL(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.method constructor <init>()V
    .locals 0

    .prologue
    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


.method public getLocationURI(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Ljava/net/URI;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ProtocolException;
        }
    .end annotation

    .prologue
    .line 281
    const-string v0, "HttpManager"

    const-string v1, "openUrl4RdirectURL getLocationURI method"

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    const/4 v0, 0x0

    return-object v0
.end method

.method public isRedirectRequested(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z
    .locals 2

    .prologue
    .line 275
    const-string v0, "HttpManager"

    const-string v1, "openUrl4RdirectURL isRedirectRequested method"

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const/4 v0, 0x0

    return v0
.end method
