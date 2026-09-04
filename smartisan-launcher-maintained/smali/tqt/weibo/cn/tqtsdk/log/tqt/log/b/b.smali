.class public Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/b;
.super Ljava/lang/Object;
.source "SdkEventTask.java"

.implements Ljava/lang/Runnable;


.field private a:Ljava/lang/String;

.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/content/Context;


.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/b;->c:Landroid/content/Context;

    .line 19
    iput-object p2, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/b;->a:Ljava/lang/String;

    .line 20
    iput-object p3, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/b;->b:Ljava/util/HashMap;

    .line 21
    return-void
.end method


.method public run()V
    .locals 3

    .prologue
    .line 27
    :try_start_0
    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/b;->b:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 28
    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/b;->c:Landroid/content/Context;

    iget-object v1, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/b;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/statistic/WBAgent;->onEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    :goto_0
    return-void

    .line 30
    :cond_0
    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/b;->c:Landroid/content/Context;

    iget-object v1, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/b;->a:Ljava/lang/String;

    iget-object v2, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/b;->b:Ljava/util/HashMap;

    invoke-static {v0, v1, v2}, Lcom/sina/weibo/sdk/statistic/WBAgent;->onEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 32
    :catch_0
    move-exception v0

    goto :goto_0
.end method
