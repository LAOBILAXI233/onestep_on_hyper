.class Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize$a;
.super Ljava/lang/Object;
.source "WeiboQuickAuthorize.java"

.implements Lcom/sina/weibo/sdk/auth/sso/IGuestUserInfoListener;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


.field final synthetic a:Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize;


.method constructor <init>(Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize$a;->a:Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onGuestUserInfoRetrieved(Lcom/sina/weibo/sdk/auth/sso/GuestUserInfo;)V
    .locals 6

    .prologue
    .line 135
    invoke-virtual {p1}, Lcom/sina/weibo/sdk/auth/sso/GuestUserInfo;->getToken()Ljava/lang/String;

    move-result-object v1

    .line 136
    invoke-virtual {p1}, Lcom/sina/weibo/sdk/auth/sso/GuestUserInfo;->getUid()Ljava/lang/String;

    move-result-object v0

    .line 138
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 139
    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize$a;->a:Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize;

    invoke-static {v0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize;->access$200(Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ltqt/weibo/cn/tqtsdk/kit/b/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 141
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 142
    iget-object v2, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize$a;->a:Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize;

    invoke-static {v2}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize;->access$200(Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Ltqt/weibo/cn/tqtsdk/kit/a/a;->d(Landroid/content/Context;)V

    .line 143
    invoke-static {}, Ltqt/weibo/cn/tqtsdk/a/a/a;->a()Ltqt/weibo/cn/tqtsdk/a/a/a;

    move-result-object v2

    new-instance v3, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/a;

    iget-object v4, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize$a;->a:Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize;

    .line 144
    invoke-static {v4}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize;->access$200(Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize;)Landroid/content/Context;

    move-result-object v4

    new-instance v5, Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize$a$1;

    invoke-direct {v5, p0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize$a$1;-><init>(Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize$a;)V

    invoke-direct {v3, v4, v0, v5}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ltqt/weibo/cn/tqtsdk/log/tqt/log/a/a;)V

    .line 143
    invoke-virtual {v2, v3}, Ltqt/weibo/cn/tqtsdk/a/a/a;->b(Ljava/lang/Runnable;)V

    .line 158
    :cond_1
    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize$a;->a:Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize;

    invoke-static {v0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize;->access$200(Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ltqt/weibo/cn/tqtsdk/kit/a/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize$a;->a:Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize;

    .line 159
    invoke-static {v0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize;->access$200(Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ltqt/weibo/cn/tqtsdk/kit/a/a;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 160
    :cond_2
    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize$a;->a:Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize;

    invoke-static {v0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize;->access$200(Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v1, v0}, Ltqt/weibo/cn/tqtsdk/kit/a/a;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 161
    invoke-virtual {p1}, Lcom/sina/weibo/sdk/auth/sso/GuestUserInfo;->getUid()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize$a;->a:Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize;

    invoke-static {v1}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize;->access$200(Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Ltqt/weibo/cn/tqtsdk/kit/a/a;->b(Ljava/lang/String;Landroid/content/Context;)V

    .line 162
    const/4 v0, 0x1

    iget-object v1, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize$a;->a:Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize;

    invoke-static {v1}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize;->access$200(Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Ltqt/weibo/cn/tqtsdk/kit/a/a;->a(ZLandroid/content/Context;)V

    .line 163
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize$a;->a:Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize;

    invoke-static {v2}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize;->access$200(Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ltqt/weibo/cn/tqtsdk/kit/a/a;->a(JLandroid/content/Context;)V

    .line 166
    :cond_3
    return-void
.end method

.method public onGuestUserInfoRetrievedFailed(Lcom/sina/weibo/sdk/exception/WeiboException;)V
    .locals 5

    .prologue
    .line 171
    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize$a;->a:Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize;

    invoke-static {v0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize;->access$200(Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ltqt/weibo/cn/tqtsdk/kit/a/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 172
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 173
    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize$a;->a:Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize;

    invoke-static {v0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize;->access$200(Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ltqt/weibo/cn/tqtsdk/kit/b/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 176
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 177
    iget-object v1, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize$a;->a:Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize;

    invoke-static {v1}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize;->access$200(Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ltqt/weibo/cn/tqtsdk/kit/a/a;->d(Landroid/content/Context;)V

    .line 178
    invoke-static {}, Ltqt/weibo/cn/tqtsdk/a/a/a;->a()Ltqt/weibo/cn/tqtsdk/a/a/a;

    move-result-object v1

    new-instance v2, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/a;

    iget-object v3, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize$a;->a:Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize;

    .line 179
    invoke-static {v3}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize;->access$200(Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize;)Landroid/content/Context;

    move-result-object v3

    new-instance v4, Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize$a$2;

    invoke-direct {v4, p0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize$a$2;-><init>(Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize$a;)V

    invoke-direct {v2, v3, v0, v4}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ltqt/weibo/cn/tqtsdk/log/tqt/log/a/a;)V

    .line 178
    invoke-virtual {v1, v2}, Ltqt/weibo/cn/tqtsdk/a/a/a;->b(Ljava/lang/Runnable;)V

    .line 189
    :cond_1
    return-void
.end method
