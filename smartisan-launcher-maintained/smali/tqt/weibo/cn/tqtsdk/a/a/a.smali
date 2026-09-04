.class public Ltqt/weibo/cn/tqtsdk/a/a/a;
.super Ljava/lang/Object;
.source "DaemonManager.java"


.field private static a:Ltqt/weibo/cn/tqtsdk/a/a/a;


.field private b:Landroid/os/Handler;

.field private c:Landroid/os/Looper;

.field private d:Ljava/util/concurrent/ExecutorService;

.field private e:Ljava/util/concurrent/ExecutorService;


.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object v0, p0, Ltqt/weibo/cn/tqtsdk/a/a/a;->b:Landroid/os/Handler;

    .line 27
    iput-object v0, p0, Ltqt/weibo/cn/tqtsdk/a/a/a;->c:Landroid/os/Looper;

    .line 29
    iput-object v0, p0, Ltqt/weibo/cn/tqtsdk/a/a/a;->d:Ljava/util/concurrent/ExecutorService;

    .line 30
    iput-object v0, p0, Ltqt/weibo/cn/tqtsdk/a/a/a;->e:Ljava/util/concurrent/ExecutorService;

    .line 33
    invoke-direct {p0}, Ltqt/weibo/cn/tqtsdk/a/a/a;->b()V

    .line 34
    invoke-direct {p0}, Ltqt/weibo/cn/tqtsdk/a/a/a;->c()V

    .line 35
    invoke-direct {p0}, Ltqt/weibo/cn/tqtsdk/a/a/a;->d()V

    .line 36
    return-void
.end method

.method public static a()Ltqt/weibo/cn/tqtsdk/a/a/a;
    .locals 2

    .prologue
    .line 39
    const-class v1, Ltqt/weibo/cn/tqtsdk/a/a/a;

    monitor-enter v1

    .line 40
    :try_start_0
    sget-object v0, Ltqt/weibo/cn/tqtsdk/a/a/a;->a:Ltqt/weibo/cn/tqtsdk/a/a/a;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Ltqt/weibo/cn/tqtsdk/a/a/a;

    invoke-direct {v0}, Ltqt/weibo/cn/tqtsdk/a/a/a;-><init>()V

    sput-object v0, Ltqt/weibo/cn/tqtsdk/a/a/a;->a:Ltqt/weibo/cn/tqtsdk/a/a/a;

    .line 43
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    sget-object v0, Ltqt/weibo/cn/tqtsdk/a/a/a;->a:Ltqt/weibo/cn/tqtsdk/a/a/a;

    return-object v0

    .line 43
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 49
    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/a/a/a;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/a/a/a;->c:Landroid/os/Looper;

    if-nez v0, :cond_1

    .line 50
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "TaskDaemonManager"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 52
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 53
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Ltqt/weibo/cn/tqtsdk/a/a/a;->c:Landroid/os/Looper;

    .line 54
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Ltqt/weibo/cn/tqtsdk/a/a/a;->c:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Ltqt/weibo/cn/tqtsdk/a/a/a;->b:Landroid/os/Handler;

    .line 56
    :cond_1
    return-void
.end method

.method private c()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/a/a/a;->d:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/a/a/a;->d:Ljava/util/concurrent/ExecutorService;

    .line 60
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    :cond_0
    new-instance v0, Ltqt/weibo/cn/tqtsdk/a/a/a$1;

    invoke-direct {v0, p0}, Ltqt/weibo/cn/tqtsdk/a/a/a$1;-><init>(Ltqt/weibo/cn/tqtsdk/a/a/a;)V

    .line 62
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Ltqt/weibo/cn/tqtsdk/a/a/a;->d:Ljava/util/concurrent/ExecutorService;

    .line 72
    :cond_1
    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/a/a/a;->e:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/a/a/a;->e:Ljava/util/concurrent/ExecutorService;

    .line 77
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    :cond_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    new-instance v1, Ltqt/weibo/cn/tqtsdk/a/a/a$2;

    invoke-direct {v1, p0}, Ltqt/weibo/cn/tqtsdk/a/a/a$2;-><init>(Ltqt/weibo/cn/tqtsdk/a/a/a;)V

    .line 78
    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Ltqt/weibo/cn/tqtsdk/a/a/a;->e:Ljava/util/concurrent/ExecutorService;

    .line 89
    :cond_1
    return-void
.end method


.method public a(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/a/a/a;->d:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 109
    return-void
.end method

.method public b(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/a/a/a;->e:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 120
    return-void
.end method
