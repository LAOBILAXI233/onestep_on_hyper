.class Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$1;
.super Ljava/lang/Thread;
.source "AsyncWeiboRunner.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sina/weibo/sdk/net/AsyncWeiboRunner;->requestByThread(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/sina/weibo/sdk/net/AsyncWeiboRunner;

.field private final synthetic val$httpMethod:Ljava/lang/String;

.field private final synthetic val$listener:Lcom/sina/weibo/sdk/net/RequestListener;

.field private final synthetic val$params:Lcom/sina/weibo/sdk/net/WeiboParameters;

.field private final synthetic val$url:Ljava/lang/String;


.method constructor <init>(Lcom/sina/weibo/sdk/net/AsyncWeiboRunner;Ljava/lang/String;Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Lcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$1;->this$0:Lcom/sina/weibo/sdk/net/AsyncWeiboRunner;

    iput-object p2, p0, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$1;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$1;->val$httpMethod:Ljava/lang/String;

    iput-object p4, p0, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$1;->val$params:Lcom/sina/weibo/sdk/net/WeiboParameters;

    iput-object p5, p0, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$1;->val$listener:Lcom/sina/weibo/sdk/net/RequestListener;

    .line 55
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


.method public run()V
    .locals 4

    .prologue
    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$1;->this$0:Lcom/sina/weibo/sdk/net/AsyncWeiboRunner;

    invoke-static {v0}, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner;->access$0(Lcom/sina/weibo/sdk/net/AsyncWeiboRunner;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$1;->val$url:Ljava/lang/String;

    iget-object v2, p0, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$1;->val$httpMethod:Ljava/lang/String;

    iget-object v3, p0, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$1;->val$params:Lcom/sina/weibo/sdk/net/WeiboParameters;

    invoke-static {v0, v1, v2, v3}, Lcom/sina/weibo/sdk/net/HttpManager;->openUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;)Ljava/lang/String;

    move-result-object v0

    .line 60
    iget-object v1, p0, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$1;->val$listener:Lcom/sina/weibo/sdk/net/RequestListener;

    if-eqz v1, :cond_0

    .line 61
    iget-object v1, p0, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$1;->val$listener:Lcom/sina/weibo/sdk/net/RequestListener;

    invoke-interface {v1, v0}, Lcom/sina/weibo/sdk/net/RequestListener;->onComplete(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sina/weibo/sdk/exception/WeiboException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 64
    iget-object v1, p0, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$1;->val$listener:Lcom/sina/weibo/sdk/net/RequestListener;

    if-eqz v1, :cond_0

    .line 65
    iget-object v1, p0, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$1;->val$listener:Lcom/sina/weibo/sdk/net/RequestListener;

    invoke-interface {v1, v0}, Lcom/sina/weibo/sdk/net/RequestListener;->onWeiboException(Lcom/sina/weibo/sdk/exception/WeiboException;)V

    goto :goto_0
.end method
