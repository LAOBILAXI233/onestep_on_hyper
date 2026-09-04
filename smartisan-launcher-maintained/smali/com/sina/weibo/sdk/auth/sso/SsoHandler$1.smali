.class Lcom/sina/weibo/sdk/auth/sso/SsoHandler$1;
.super Ljava/lang/Object;
.source "SsoHandler.java"

.implements Lcom/sina/weibo/sdk/net/RequestListener;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sina/weibo/sdk/auth/sso/SsoHandler;
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
    iput-object p1, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler$1;->this$0:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    .line 959
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onComplete(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 963
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler$1;->this$0:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    invoke-static {v0}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->access$0(Lcom/sina/weibo/sdk/auth/sso/SsoHandler;)Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

    move-result-object v0

    if-nez v0, :cond_1

    .line 984
    :cond_0
    :goto_0
    return-void

    .line 967
    :cond_1
    invoke-static {p1}, Lcom/sina/weibo/sdk/utils/Utility;->parseUrl(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 968
    invoke-static {}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->access$1()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MSG_ON_COMPLETE msg.obj : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    iget-object v1, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler$1;->this$0:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    invoke-static {v1}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->access$2(Lcom/sina/weibo/sdk/auth/sso/SsoHandler;)[B

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler$1;->this$0:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    invoke-static {v1}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->access$2(Lcom/sina/weibo/sdk/auth/sso/SsoHandler;)[B

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_2

    .line 971
    const-string v1, "com.sina.weibo.intent.extra.USER_ICON"

    iget-object v2, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler$1;->this$0:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    invoke-static {v2}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->access$2(Lcom/sina/weibo/sdk/auth/sso/SsoHandler;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 975
    :cond_2
    invoke-static {v0}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->parseAccessToken(Landroid/os/Bundle;)Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    move-result-object v1

    .line 976
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->isSessionValid()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 977
    iget-object v1, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler$1;->this$0:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    invoke-static {v1}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->access$0(Lcom/sina/weibo/sdk/auth/sso/SsoHandler;)Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sina/weibo/sdk/auth/WeiboAuthListener;->onComplete(Landroid/os/Bundle;)V

    goto :goto_0

    .line 979
    :cond_3
    invoke-static {}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->access$1()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Quick auth failed!"

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler$1;->this$0:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    invoke-static {v0}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->access$0(Lcom/sina/weibo/sdk/auth/sso/SsoHandler;)Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 981
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler$1;->this$0:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    invoke-static {v0}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->access$0(Lcom/sina/weibo/sdk/auth/sso/SsoHandler;)Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

    move-result-object v0

    new-instance v1, Lcom/sina/weibo/sdk/exception/WeiboException;

    const-string v2, "auth failed!!!!!"

    invoke-direct {v1, v2}, Lcom/sina/weibo/sdk/exception/WeiboException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/sina/weibo/sdk/auth/WeiboAuthListener;->onWeiboException(Lcom/sina/weibo/sdk/exception/WeiboException;)V

    goto :goto_0
.end method

.method public onWeiboException(Lcom/sina/weibo/sdk/exception/WeiboException;)V
    .locals 1

    .prologue
    .line 989
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler$1;->this$0:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    invoke-static {v0}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->access$0(Lcom/sina/weibo/sdk/auth/sso/SsoHandler;)Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 990
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler$1;->this$0:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    invoke-static {v0}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->access$0(Lcom/sina/weibo/sdk/auth/sso/SsoHandler;)Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sina/weibo/sdk/auth/WeiboAuthListener;->onWeiboException(Lcom/sina/weibo/sdk/exception/WeiboException;)V

    .line 993
    :cond_0
    return-void
.end method
