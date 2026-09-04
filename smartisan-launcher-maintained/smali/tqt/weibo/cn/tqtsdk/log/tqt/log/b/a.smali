.class public Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/a;
.super Ljava/lang/Object;
.source "GetTqtuidTask.java"

.implements Ljava/lang/Runnable;


.field private a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private final c:Ltqt/weibo/cn/tqtsdk/log/tqt/log/a/a;


.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ltqt/weibo/cn/tqtsdk/log/tqt/log/a/a;)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/a;->a:Landroid/content/Context;

    .line 24
    iput-object p1, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/a;->a:Landroid/content/Context;

    .line 25
    iput-object p2, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/a;->b:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/a;->c:Ltqt/weibo/cn/tqtsdk/log/tqt/log/a/a;

    .line 27
    return-void
.end method


.method public run()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 31
    .line 34
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 35
    const-string v2, "uid"

    iget-object v3, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/a;->a:Landroid/content/Context;

    invoke-static {v3}, Ltqt/weibo/cn/tqtsdk/kit/b/c;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    iget-object v2, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/a;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 37
    const-string v2, "wid"

    iget-object v3, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    :cond_0
    const-string v2, "tqt.weibo.cn"

    const-string v3, "user/create.php"

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4}, Ltqt/weibo/cn/tqtsdk/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;[B)Landroid/os/Bundle;

    move-result-object v1

    .line 41
    iget-object v2, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/a;->a:Landroid/content/Context;

    invoke-static {v1, v2}, Ltqt/weibo/cn/tqtsdk/b/a;->a(Landroid/os/Bundle;Landroid/content/Context;)Ltqt/weibo/cn/tqtsdk/b/a/a;

    move-result-object v1

    .line 43
    if-eqz v1, :cond_1

    iget v2, v1, Ltqt/weibo/cn/tqtsdk/b/a/a;->b:I

    if-nez v2, :cond_1

    iget-object v2, v1, Ltqt/weibo/cn/tqtsdk/b/a/a;->c:[B

    if-eqz v2, :cond_1

    .line 46
    iget-object v1, v1, Ltqt/weibo/cn/tqtsdk/b/a/a;->c:[B

    .line 47
    new-instance v2, Ljava/lang/String;

    const-string v3, "utf8"

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 48
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 49
    const-string v2, "tid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 50
    const-string v2, "tid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 56
    :cond_1
    :goto_0
    iget-object v1, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/a;->c:Ltqt/weibo/cn/tqtsdk/log/tqt/log/a/a;

    if-eqz v1, :cond_2

    .line 57
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 58
    iget-object v1, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/a;->c:Ltqt/weibo/cn/tqtsdk/log/tqt/log/a/a;

    invoke-interface {v1, v0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/a/a;->a(Ljava/lang/String;)V

    .line 63
    :cond_2
    :goto_1
    return-void

    .line 60
    :cond_3
    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/a;->c:Ltqt/weibo/cn/tqtsdk/log/tqt/log/a/a;

    invoke-interface {v0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/a/a;->a()V

    goto :goto_1

    .line 53
    :catch_0
    move-exception v1

    goto :goto_0
.end method
