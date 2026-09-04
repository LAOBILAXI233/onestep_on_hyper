.class public Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/f;
.super Ljava/lang/Object;
.source "SdkUploadLogTask.java"

.implements Ljava/lang/Runnable;


.field private a:Landroid/content/Context;


.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/f;->a:Landroid/content/Context;

    .line 20
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 34
    const-string v1, "state"

    invoke-static {p1}, Ltqt/weibo/cn/tqtsdk/kit/b/d;->b(Landroid/content/Context;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const-string v1, "472"

    invoke-static {p1, v1, v0}, Lcom/sina/weibo/sdk/statistic/WBAgent;->onEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 37
    const-string v1, "state"

    invoke-static {p1}, Ltqt/weibo/cn/tqtsdk/kit/b/d;->a(Landroid/content/Context;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string v1, "471"

    invoke-static {p1, v1, v0}, Lcom/sina/weibo/sdk/statistic/WBAgent;->onEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 40
    const-string v1, "state"

    invoke-static {p1}, Ltqt/weibo/cn/tqtsdk/kit/b/d;->d(Landroid/content/Context;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const-string v1, "474"

    invoke-static {p1, v1, v0}, Lcom/sina/weibo/sdk/statistic/WBAgent;->onEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 43
    const-string v1, "state"

    invoke-static {p1}, Ltqt/weibo/cn/tqtsdk/kit/b/d;->c(Landroid/content/Context;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string v1, "473"

    invoke-static {p1, v1, v0}, Lcom/sina/weibo/sdk/statistic/WBAgent;->onEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 45
    return-void
.end method


.method public run()V
    .locals 1

    .prologue
    .line 25
    :try_start_0
    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/f;->a:Landroid/content/Context;

    invoke-direct {p0, v0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/f;->a(Landroid/content/Context;)V

    .line 26
    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/f;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/sina/weibo/sdk/statistic/WBAgent;->uploadAppLogs(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    :goto_0
    return-void

    .line 27
    :catch_0
    move-exception v0

    goto :goto_0
.end method
