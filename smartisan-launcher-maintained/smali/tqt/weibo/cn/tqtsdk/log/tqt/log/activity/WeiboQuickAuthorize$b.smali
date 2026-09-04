.class Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize$b;
.super Ljava/lang/Object;
.source "WeiboQuickAuthorize.java"

.implements Lcom/sina/weibo/sdk/auth/WeiboAuthListener;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


.field final synthetic a:Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize;


.method constructor <init>(Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize$b;->a:Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onCancel()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize$b;->a:Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize;

    invoke-static {v0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize;->access$100(Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize;)V

    .line 88
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    .line 92
    const-string v0, "access_token"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    const-string v1, "expires_in"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 94
    const-string v2, "uid"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 96
    iget-object v3, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize$b;->a:Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize;

    invoke-static {v3}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize;->access$200(Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Ltqt/weibo/cn/tqtsdk/kit/a/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 97
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 98
    iget-object v3, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize$b;->a:Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize;

    invoke-static {v3}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize;->access$200(Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Ltqt/weibo/cn/tqtsdk/kit/a/a;->d(Landroid/content/Context;)V

    .line 99
    invoke-static {}, Ltqt/weibo/cn/tqtsdk/a/a/a;->a()Ltqt/weibo/cn/tqtsdk/a/a/a;

    move-result-object v3

    new-instance v4, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/a;

    iget-object v5, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize$b;->a:Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize;

    .line 100
    invoke-static {v5}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize;->access$200(Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize;)Landroid/content/Context;

    move-result-object v5

    new-instance v6, Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize$b$1;

    invoke-direct {v6, p0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize$b$1;-><init>(Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize$b;)V

    invoke-direct {v4, v5, v2, v6}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ltqt/weibo/cn/tqtsdk/log/tqt/log/a/a;)V

    .line 99
    invoke-virtual {v3, v4}, Ltqt/weibo/cn/tqtsdk/a/a/a;->b(Ljava/lang/Runnable;)V

    .line 114
    :cond_0
    iget-object v3, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize$b;->a:Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize;

    invoke-static {v3}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize;->access$200(Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v3}, Ltqt/weibo/cn/tqtsdk/kit/a/a;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 115
    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize$b;->a:Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize;

    invoke-static {v0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize;->access$200(Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v1, v0}, Ltqt/weibo/cn/tqtsdk/kit/a/a;->c(Ljava/lang/String;Landroid/content/Context;)V

    .line 116
    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize$b;->a:Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize;

    invoke-static {v0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize;->access$200(Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v2, v0}, Ltqt/weibo/cn/tqtsdk/kit/a/a;->b(Ljava/lang/String;Landroid/content/Context;)V

    .line 117
    const/4 v0, 0x0

    iget-object v1, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize$b;->a:Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize;

    invoke-static {v1}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize;->access$200(Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Ltqt/weibo/cn/tqtsdk/kit/a/a;->a(ZLandroid/content/Context;)V

    .line 118
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize$b;->a:Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize;

    invoke-static {v2}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize;->access$200(Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ltqt/weibo/cn/tqtsdk/kit/a/a;->a(JLandroid/content/Context;)V

    .line 119
    return-void
.end method

.method public onWeiboException(Lcom/sina/weibo/sdk/exception/WeiboException;)V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize$b;->a:Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize;

    invoke-static {v0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize;->access$200(Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ltqt/weibo/cn/tqtsdk/kit/a/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 124
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize$b;->a:Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize;

    invoke-static {v0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize;->access$100(Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize;)V

    .line 127
    :cond_0
    return-void
.end method
