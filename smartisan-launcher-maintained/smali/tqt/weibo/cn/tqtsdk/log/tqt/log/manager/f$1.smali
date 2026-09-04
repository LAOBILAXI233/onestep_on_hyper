.class Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/f$1;
.super Ljava/lang/Object;
.source "LogManagerImpl.java"

.implements Ljava/util/concurrent/ThreadFactory;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/f;->u()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic a:Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/f;


.method constructor <init>(Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/f;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/f$1;->a:Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .prologue
    .line 94
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 95
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 96
    const-string v1, "log_manager_single"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 97
    return-object v0
.end method
