.class Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize$c;
.super Ljava/lang/Object;
.source "WeiboQuickAuthorize.java"

.implements Lcom/sina/weibo/sdk/auth/sso/IUserInfoListener;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


.field final synthetic a:Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize;


.method constructor <init>(Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize$c;->a:Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onUserInfoListRetrieved(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sina/weibo/sdk/auth/sso/UserInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 68
    return-void
.end method

.method public onUserInfoRetrieved(Lcom/sina/weibo/sdk/auth/sso/UserInfo;)V
    .locals 4

    .prologue
    .line 72
    invoke-virtual {p1}, Lcom/sina/weibo/sdk/auth/sso/UserInfo;->getUid()Ljava/lang/String;

    move-result-object v0

    .line 73
    iget-object v1, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize$c;->a:Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize;

    invoke-static {v1}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize;->access$000(Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize;)Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    move-result-object v1

    new-instance v2, Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize$b;

    iget-object v3, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize$c;->a:Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize;

    invoke-direct {v2, v3}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize$b;-><init>(Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize;)V

    invoke-virtual {v1, v0, v2}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->quickAuthorize(Ljava/lang/String;Lcom/sina/weibo/sdk/auth/WeiboAuthListener;)Z

    .line 74
    return-void
.end method

.method public onUserInfoRetrievedFailed()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize$c;->a:Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize;

    invoke-static {v0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize;->access$100(Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize;)V

    .line 79
    return-void
.end method
