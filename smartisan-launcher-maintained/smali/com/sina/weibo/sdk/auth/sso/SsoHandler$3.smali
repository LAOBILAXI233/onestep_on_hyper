.class Lcom/sina/weibo/sdk/auth/sso/SsoHandler$3;
.super Ljava/lang/Object;
.source "SsoHandler.java"

.implements Lcom/sina/weibo/sdk/net/RequestListener;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->fetchGuestUserInfoAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sina/weibo/sdk/auth/sso/IGuestUserInfoListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

.field private final synthetic val$listener:Lcom/sina/weibo/sdk/auth/sso/IGuestUserInfoListener;


.method constructor <init>(Lcom/sina/weibo/sdk/auth/sso/SsoHandler;Lcom/sina/weibo/sdk/auth/sso/IGuestUserInfoListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler$3;->this$0:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    iput-object p2, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler$3;->val$listener:Lcom/sina/weibo/sdk/auth/sso/IGuestUserInfoListener;

    .line 824
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onComplete(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 835
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler$3;->val$listener:Lcom/sina/weibo/sdk/auth/sso/IGuestUserInfoListener;

    if-eqz v0, :cond_0

    .line 836
    const-string v0, ""

    .line 837
    const-string v0, ""

    .line 838
    const-string v0, ""

    .line 839
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 842
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 843
    const-string v1, "uid"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 844
    const-string v2, "gsid"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 845
    const-string v3, "token"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 850
    iget-object v3, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler$3;->val$listener:Lcom/sina/weibo/sdk/auth/sso/IGuestUserInfoListener;

    .line 851
    new-instance v4, Lcom/sina/weibo/sdk/auth/sso/GuestUserInfo;

    invoke-direct {v4, v1, v2, v0}, Lcom/sina/weibo/sdk/auth/sso/GuestUserInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    invoke-interface {v3, v4}, Lcom/sina/weibo/sdk/auth/sso/IGuestUserInfoListener;->onGuestUserInfoRetrieved(Lcom/sina/weibo/sdk/auth/sso/GuestUserInfo;)V

    .line 856
    :cond_0
    :goto_0
    return-void

    .line 846
    :catch_0
    move-exception v0

    .line 847
    iget-object v1, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler$3;->val$listener:Lcom/sina/weibo/sdk/auth/sso/IGuestUserInfoListener;

    new-instance v2, Lcom/sina/weibo/sdk/exception/WeiboException;

    invoke-direct {v2, v0}, Lcom/sina/weibo/sdk/exception/WeiboException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Lcom/sina/weibo/sdk/auth/sso/IGuestUserInfoListener;->onGuestUserInfoRetrievedFailed(Lcom/sina/weibo/sdk/exception/WeiboException;)V

    goto :goto_0

    .line 853
    :cond_1
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler$3;->val$listener:Lcom/sina/weibo/sdk/auth/sso/IGuestUserInfoListener;

    new-instance v1, Lcom/sina/weibo/sdk/exception/WeiboException;

    const-string v2, "respons is blank!"

    invoke-direct {v1, v2}, Lcom/sina/weibo/sdk/exception/WeiboException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/sina/weibo/sdk/auth/sso/IGuestUserInfoListener;->onGuestUserInfoRetrievedFailed(Lcom/sina/weibo/sdk/exception/WeiboException;)V

    goto :goto_0
.end method

.method public onWeiboException(Lcom/sina/weibo/sdk/exception/WeiboException;)V
    .locals 1

    .prologue
    .line 828
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler$3;->val$listener:Lcom/sina/weibo/sdk/auth/sso/IGuestUserInfoListener;

    if-eqz v0, :cond_0

    .line 829
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler$3;->val$listener:Lcom/sina/weibo/sdk/auth/sso/IGuestUserInfoListener;

    invoke-interface {v0, p1}, Lcom/sina/weibo/sdk/auth/sso/IGuestUserInfoListener;->onGuestUserInfoRetrievedFailed(Lcom/sina/weibo/sdk/exception/WeiboException;)V

    .line 831
    :cond_0
    return-void
.end method
