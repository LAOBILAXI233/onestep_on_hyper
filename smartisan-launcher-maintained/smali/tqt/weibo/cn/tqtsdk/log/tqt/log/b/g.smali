.class public Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/g;
.super Ljava/lang/Object;
.source "SinaStatExitTask.java"

.implements Ljava/lang/Runnable;


.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public run()V
    .locals 1

    .prologue
    .line 10
    invoke-static {}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->a()Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 11
    invoke-static {}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->b()V

    .line 13
    :cond_0
    return-void
.end method
