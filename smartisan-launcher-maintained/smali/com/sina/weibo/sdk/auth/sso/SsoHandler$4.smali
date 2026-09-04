.class Lcom/sina/weibo/sdk/auth/sso/SsoHandler$4;
.super Ljava/lang/Object;
.source "SsoHandler.java"

.implements Lcom/sina/weibo/sdk/utils/AidTask$AidResultCallBack;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->fetchGuestUserInfoAsyncByAid(Lcom/sina/weibo/sdk/auth/sso/IGuestUserInfoListener;)V
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
    iput-object p1, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler$4;->this$0:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    iput-object p2, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler$4;->val$listener:Lcom/sina/weibo/sdk/auth/sso/IGuestUserInfoListener;

    .line 869
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onAidGenFailed(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 891
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler$4;->val$listener:Lcom/sina/weibo/sdk/auth/sso/IGuestUserInfoListener;

    if-eqz v0, :cond_0

    .line 892
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler$4;->val$listener:Lcom/sina/weibo/sdk/auth/sso/IGuestUserInfoListener;

    new-instance v1, Lcom/sina/weibo/sdk/exception/WeiboException;

    invoke-direct {v1, p1}, Lcom/sina/weibo/sdk/exception/WeiboException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lcom/sina/weibo/sdk/auth/sso/IGuestUserInfoListener;->onGuestUserInfoRetrievedFailed(Lcom/sina/weibo/sdk/exception/WeiboException;)V

    .line 894
    :cond_0
    return-void
.end method

.method public onAidGenSuccessed(Lcom/sina/weibo/sdk/utils/AidTask$AidInfo;)V
    .locals 3

    .prologue
    .line 873
    invoke-virtual {p1}, Lcom/sina/weibo/sdk/utils/AidTask$AidInfo;->getSubCookie()Ljava/lang/String;

    move-result-object v0

    .line 874
    invoke-virtual {p1}, Lcom/sina/weibo/sdk/utils/AidTask$AidInfo;->getAid()Ljava/lang/String;

    move-result-object v1

    .line 875
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 876
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 877
    iget-object v2, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler$4;->val$listener:Lcom/sina/weibo/sdk/auth/sso/IGuestUserInfoListener;

    if-eqz v2, :cond_0

    .line 878
    new-instance v2, Lcom/sina/weibo/sdk/auth/sso/GuestUserInfo;

    invoke-direct {v2, v1, v0}, Lcom/sina/weibo/sdk/auth/sso/GuestUserInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler$4;->val$listener:Lcom/sina/weibo/sdk/auth/sso/IGuestUserInfoListener;

    invoke-interface {v0, v2}, Lcom/sina/weibo/sdk/auth/sso/IGuestUserInfoListener;->onGuestUserInfoRetrieved(Lcom/sina/weibo/sdk/auth/sso/GuestUserInfo;)V

    .line 887
    :cond_0
    :goto_0
    return-void

    .line 882
    :cond_1
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler$4;->val$listener:Lcom/sina/weibo/sdk/auth/sso/IGuestUserInfoListener;

    if-eqz v0, :cond_0

    .line 883
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler$4;->val$listener:Lcom/sina/weibo/sdk/auth/sso/IGuestUserInfoListener;

    .line 884
    new-instance v1, Lcom/sina/weibo/sdk/exception/WeiboException;

    const-string v2, "aid is empty or subcookie is empty"

    invoke-direct {v1, v2}, Lcom/sina/weibo/sdk/exception/WeiboException;-><init>(Ljava/lang/String;)V

    .line 883
    invoke-interface {v0, v1}, Lcom/sina/weibo/sdk/auth/sso/IGuestUserInfoListener;->onGuestUserInfoRetrievedFailed(Lcom/sina/weibo/sdk/exception/WeiboException;)V

    goto :goto_0
.end method
