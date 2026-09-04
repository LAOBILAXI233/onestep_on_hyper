.class public Ltqt/weibo/cn/tqtsdk/a/b/a;
.super Ljava/lang/Object;
.source "RefreshWeatherRunnable.java"

.implements Ljava/lang/Runnable;


.field a:Ljava/lang/String;

.field private b:Landroid/content/Context;

.field private c:Landroid/os/Bundle;


.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object v0, p0, Ltqt/weibo/cn/tqtsdk/a/b/a;->b:Landroid/content/Context;

    .line 22
    iput-object v0, p0, Ltqt/weibo/cn/tqtsdk/a/b/a;->c:Landroid/os/Bundle;

    .line 26
    const-string v0, "KEY_STR_REAL_CITY_CODE"

    iput-object v0, p0, Ltqt/weibo/cn/tqtsdk/a/b/a;->a:Ljava/lang/String;

    .line 31
    iput-object p1, p0, Ltqt/weibo/cn/tqtsdk/a/b/a;->b:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Ltqt/weibo/cn/tqtsdk/a/b/a;->c:Landroid/os/Bundle;

    .line 33
    return-void
.end method


.method public run()V
    .locals 3

    .prologue
    .line 43
    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/a/b/a;->b:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/a/b/a;->c:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/a/b/a;->c:Landroid/os/Bundle;

    const-string v1, "KEY_STR_REAL_CITY_CODE"

    .line 45
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/a/b/a;->c:Landroid/os/Bundle;

    const-string v1, "KEY_STR_REAL_CITY_CODE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52
    :try_start_0
    iget-object v1, p0, Ltqt/weibo/cn/tqtsdk/a/b/a;->b:Landroid/content/Context;

    .line 53
    invoke-static {v0, v1}, Ltqt/weibo/cn/tqtsdk/a/b/b;->a(Ljava/lang/String;Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Ltqt/weibo/cn/tqtsdk/a/b/a;->b:Landroid/content/Context;

    .line 52
    invoke-static {v0, v1}, Ltqt/weibo/cn/tqtsdk/b/a;->a(Landroid/os/Bundle;Landroid/content/Context;)Ltqt/weibo/cn/tqtsdk/b/a/a;

    move-result-object v0

    .line 55
    if-eqz v0, :cond_2

    iget v1, v0, Ltqt/weibo/cn/tqtsdk/b/a/a;->b:I

    if-nez v1, :cond_2

    iget-object v1, v0, Ltqt/weibo/cn/tqtsdk/b/a/a;->c:[B

    if-eqz v1, :cond_2

    .line 58
    iget-object v0, v0, Ltqt/weibo/cn/tqtsdk/b/a/a;->c:[B

    goto :goto_0

    .line 62
    :cond_2
    if-eqz v0, :cond_3

    iget v1, v0, Ltqt/weibo/cn/tqtsdk/b/a/a;->b:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 65
    :cond_3
    if-eqz v0, :cond_4

    iget v1, v0, Ltqt/weibo/cn/tqtsdk/b/a/a;->b:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 68
    :cond_4
    if-eqz v0, :cond_5

    iget v1, v0, Ltqt/weibo/cn/tqtsdk/b/a/a;->b:I

    const/16 v2, 0xb

    if-eq v1, v2, :cond_0

    .line 71
    :cond_5
    if-eqz v0, :cond_0

    iget v1, v0, Ltqt/weibo/cn/tqtsdk/b/a/a;->b:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget v1, v0, Ltqt/weibo/cn/tqtsdk/b/a/a;->b:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    iget v1, v0, Ltqt/weibo/cn/tqtsdk/b/a/a;->b:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget v0, v0, Ltqt/weibo/cn/tqtsdk/b/a/a;->b:I
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 79
    :catch_0
    move-exception v0

    goto :goto_0
.end method
