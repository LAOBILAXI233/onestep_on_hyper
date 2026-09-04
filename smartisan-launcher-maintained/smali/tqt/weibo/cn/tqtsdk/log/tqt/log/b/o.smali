.class public Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/o;
.super Ljava/lang/Object;
.source "UserActionLogTask.java"

.implements Ljava/lang/Runnable;


.field private a:[Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Landroid/content/Context;


.method public varargs constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/o;->d:Landroid/content/Context;

    .line 16
    iput-object p1, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/o;->d:Landroid/content/Context;

    .line 17
    iput-object p2, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/o;->c:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/o;->b:Ljava/lang/String;

    .line 19
    iput-object p4, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/o;->a:[Ljava/lang/String;

    .line 20
    return-void
.end method


.method public run()V
    .locals 4

    .prologue
    .line 25
    invoke-static {}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->a()Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;

    move-result-object v0

    if-nez v0, :cond_0

    .line 26
    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/o;->d:Landroid/content/Context;

    invoke-static {v0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/h;->a(Landroid/content/Context;)V

    .line 29
    :cond_0
    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/o;->a:[Ljava/lang/String;

    if-nez v0, :cond_1

    .line 30
    invoke-static {}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->a()Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;

    move-result-object v0

    iget-object v1, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/o;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->a(Ljava/lang/String;)J

    .line 35
    :goto_0
    return-void

    .line 32
    :cond_1
    invoke-static {}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->a()Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;

    move-result-object v0

    iget-object v1, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/o;->c:Ljava/lang/String;

    iget-object v2, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/o;->b:Ljava/lang/String;

    iget-object v3, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/o;->a:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    goto :goto_0
.end method
