.class Ltqt/weibo/cn/tqtsdk/a/a/a$1;
.super Ljava/lang/Object;
.source "DaemonManager.java"

.implements Ljava/util/concurrent/ThreadFactory;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltqt/weibo/cn/tqtsdk/a/a/a;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic a:Ltqt/weibo/cn/tqtsdk/a/a/a;


.method constructor <init>(Ltqt/weibo/cn/tqtsdk/a/a/a;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Ltqt/weibo/cn/tqtsdk/a/a/a$1;->a:Ltqt/weibo/cn/tqtsdk/a/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .prologue
    .line 65
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 66
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 67
    const-string v1, "SingleDaemonManager"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 68
    return-object v0
.end method
