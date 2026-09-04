.class public Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/h;
.super Ljava/lang/Object;
.source "SinaStatInitTask.java"

.implements Ljava/lang/Runnable;


.field private a:Landroid/content/Context;


.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/h;->a:Landroid/content/Context;

    .line 16
    iput-object p1, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/h;->a:Landroid/content/Context;

    .line 17
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 20
    new-instance v0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/b;

    invoke-direct {v0, p0}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/b;-><init>(Landroid/content/Context;)V

    .line 21
    const-string v1, "SinaStatistics.db"

    invoke-virtual {v0, v1}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/b;->a(Ljava/lang/String;)V

    .line 22
    const-string v1, "861524840"

    invoke-virtual {v0, v1}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/b;->b(Ljava/lang/String;)V

    .line 23
    invoke-static {}, Ltqt/weibo/cn/tqtsdk/kit/b/c;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/b;->c(Ljava/lang/String;)V

    .line 24
    invoke-static {p0}, Ltqt/weibo/cn/tqtsdk/kit/b/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/b;->d(Ljava/lang/String;)V

    .line 25
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/b;->a(Ljava/lang/Boolean;)V

    .line 26
    invoke-static {v0}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->a(Ltqt/weibo/cn/tqtsdk/log/a/a/b/b;)Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;

    .line 27
    invoke-static {}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->c()V

    .line 28
    return-void
.end method


.method public run()V
    .locals 1

    .prologue
    .line 32
    invoke-static {}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->a()Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;

    move-result-object v0

    if-nez v0, :cond_0

    .line 33
    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/h;->a:Landroid/content/Context;

    invoke-static {v0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/h;->a(Landroid/content/Context;)V

    .line 35
    :cond_0
    return-void
.end method
