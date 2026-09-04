.class Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize$a$1;
.super Ljava/lang/Object;
.source "WeiboQuickAuthorize.java"

.implements Ltqt/weibo/cn/tqtsdk/log/tqt/log/a/a;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize$a;->onGuestUserInfoRetrieved(Lcom/sina/weibo/sdk/auth/sso/GuestUserInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic a:Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize$a;


.method constructor <init>(Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize$a;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize$a$1;->a:Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public a()V
    .locals 0

    .prologue
    .line 153
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize$a$1;->a:Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize$a;

    iget-object v0, v0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize$a;->a:Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize;

    invoke-static {v0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize;->access$200(Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Ltqt/weibo/cn/tqtsdk/kit/a/a;->d(Ljava/lang/String;Landroid/content/Context;)V

    .line 149
    return-void
.end method
