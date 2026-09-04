.class Lcom/sina/weibo/sdk/auth/sso/SsoHandler$2;
.super Ljava/lang/Object;
.source "SsoHandler.java"

.implements Ljava/lang/Runnable;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->quickAuthorizeAsync(Lcom/sina/weibo/sdk/auth/WeiboAuthListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;


.method constructor <init>(Lcom/sina/weibo/sdk/auth/sso/SsoHandler;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler$2;->this$0:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    .line 455
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public run()V
    .locals 5

    .prologue
    .line 460
    :try_start_0
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler$2;->this$0:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    invoke-static {v0}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->access$3(Lcom/sina/weibo/sdk/auth/sso/SsoHandler;)Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler$2;->this$0:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->initWeiboInfo()V

    .line 463
    :cond_0
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler$2;->this$0:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->isSupportQuickAuth()Z

    move-result v0

    if-nez v0, :cond_1

    .line 464
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler$2;->this$0:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    invoke-static {v0}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->access$0(Lcom/sina/weibo/sdk/auth/sso/SsoHandler;)Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 465
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler$2;->this$0:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    invoke-static {v0}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->access$0(Lcom/sina/weibo/sdk/auth/sso/SsoHandler;)Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

    move-result-object v0

    new-instance v1, Lcom/sina/weibo/sdk/exception/WeiboException;

    const-string v2, "auth failed!!!!!"

    invoke-direct {v1, v2}, Lcom/sina/weibo/sdk/exception/WeiboException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/sina/weibo/sdk/auth/WeiboAuthListener;->onWeiboException(Lcom/sina/weibo/sdk/exception/WeiboException;)V

    .line 469
    :cond_1
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler$2;->this$0:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    iget-object v1, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler$2;->this$0:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    invoke-static {v1}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->access$4(Lcom/sina/weibo/sdk/auth/sso/SsoHandler;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 470
    new-instance v2, Lcom/sina/weibo/sdk/auth/sso/SsoQuickAuthServiceConnection;

    iget-object v3, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler$2;->this$0:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    invoke-static {v3}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->access$4(Lcom/sina/weibo/sdk/auth/sso/SsoHandler;)Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler$2;->this$0:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    invoke-direct {v2, v3, v4}, Lcom/sina/weibo/sdk/auth/sso/SsoQuickAuthServiceConnection;-><init>(Landroid/content/Context;Lcom/sina/weibo/sdk/auth/sso/SsoHandler;)V

    .line 469
    invoke-static {v0, v1, v2}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->access$5(Lcom/sina/weibo/sdk/auth/sso/SsoHandler;Landroid/content/Context;Lcom/sina/weibo/sdk/auth/sso/BaseServiceConnection;)Z

    move-result v0

    .line 470
    if-nez v0, :cond_2

    .line 471
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler$2;->this$0:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    invoke-static {v0}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->access$0(Lcom/sina/weibo/sdk/auth/sso/SsoHandler;)Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 472
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler$2;->this$0:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    invoke-static {v0}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->access$0(Lcom/sina/weibo/sdk/auth/sso/SsoHandler;)Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

    move-result-object v0

    new-instance v1, Lcom/sina/weibo/sdk/exception/WeiboException;

    const-string v2, "auth failed!!!!!"

    invoke-direct {v1, v2}, Lcom/sina/weibo/sdk/exception/WeiboException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/sina/weibo/sdk/auth/WeiboAuthListener;->onWeiboException(Lcom/sina/weibo/sdk/exception/WeiboException;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 479
    :cond_2
    :goto_0
    return-void

    .line 475
    :catch_0
    move-exception v0

    .line 476
    const-string v1, "quickAuthorizeAsync   fail  "

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler$2;->this$0:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    invoke-static {v0}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->access$0(Lcom/sina/weibo/sdk/auth/sso/SsoHandler;)Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

    move-result-object v0

    new-instance v1, Lcom/sina/weibo/sdk/exception/WeiboException;

    const-string v2, "auth failed!!!!!"

    invoke-direct {v1, v2}, Lcom/sina/weibo/sdk/exception/WeiboException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/sina/weibo/sdk/auth/WeiboAuthListener;->onWeiboException(Lcom/sina/weibo/sdk/exception/WeiboException;)V

    goto :goto_0
.end method
