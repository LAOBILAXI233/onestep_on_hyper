.class public Lcom/loc/ab;
.super Lcom/loc/aa;
.source "SDKLogHandler.java"

.implements Ljava/lang/Thread$UncaughtExceptionHandler;


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loc/ab$a;
    }
.end annotation


.field private static e:Ljava/util/concurrent/ExecutorService;


.field private d:Landroid/content/Context;


.method private constructor <init>(Landroid/content/Context;Lcom/loc/v;)V
    .locals 1

    invoke-direct {p0}, Lcom/loc/aa;-><init>()V

    iput-object p1, p0, Lcom/loc/ab;->d:Landroid/content/Context;

    new-instance v0, Lcom/loc/ab$a;

    invoke-direct {v0, p1}, Lcom/loc/ab$a;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/loc/bq;->a(Lcom/loc/br;)V

    invoke-direct {p0}, Lcom/loc/ab;->c()V

    return-void
.end method

.method static synthetic a(Lcom/loc/ab;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/loc/ab;->d:Landroid/content/Context;

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lcom/loc/v;)Lcom/loc/ab;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/loc/l;
        }
    .end annotation

    const-class v1, Lcom/loc/ab;

    monitor-enter v1

    if-nez p1, :cond_0

    :try_start_0
    new-instance v0, Lcom/loc/l;

    const-string v2, "sdk info is null"

    invoke-direct {v0, v2}, Lcom/loc/l;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/loc/v;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, ""

    invoke-virtual {p1}, Lcom/loc/v;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    new-instance v0, Lcom/loc/l;

    const-string v2, "sdk name is invalid"

    invoke-direct {v0, v2}, Lcom/loc/l;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :try_start_2
    sget-object v0, Lcom/loc/aa;->a:Lcom/loc/aa;

    if-nez v0, :cond_3

    new-instance v0, Lcom/loc/ab;

    invoke-direct {v0, p0, p1}, Lcom/loc/ab;-><init>(Landroid/content/Context;Lcom/loc/v;)V

    sput-object v0, Lcom/loc/aa;->a:Lcom/loc/aa;

    :goto_0
    sget-object v0, Lcom/loc/aa;->a:Lcom/loc/aa;

    sget-object v2, Lcom/loc/aa;->a:Lcom/loc/aa;

    iget-boolean v2, v2, Lcom/loc/aa;->c:Z

    invoke-virtual {v0, p0, p1, v2}, Lcom/loc/aa;->a(Landroid/content/Context;Lcom/loc/v;Z)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    :try_start_3
    sget-object v0, Lcom/loc/aa;->a:Lcom/loc/aa;

    check-cast v0, Lcom/loc/ab;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_3
    :try_start_4
    sget-object v0, Lcom/loc/aa;->a:Lcom/loc/aa;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/loc/aa;->c:Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method public static declared-synchronized a()V
    .locals 3

    const-class v1, Lcom/loc/ab;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/loc/ab;->e:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/loc/ab;->e:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    :try_start_1
    sget-object v0, Lcom/loc/aa;->a:Lcom/loc/aa;

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    sget-object v2, Lcom/loc/aa;->a:Lcom/loc/aa;

    if-ne v0, v2, :cond_1

    sget-object v0, Lcom/loc/aa;->a:Lcom/loc/aa;

    iget-object v0, v0, Lcom/loc/aa;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/loc/aa;->a:Lcom/loc/aa;

    iget-object v0, v0, Lcom/loc/aa;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    :cond_1
    const/4 v0, 0x0

    sput-object v0, Lcom/loc/aa;->a:Lcom/loc/aa;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_1
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public static a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/loc/aa;->a:Lcom/loc/aa;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/loc/aa;->a:Lcom/loc/aa;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1, p1, p2}, Lcom/loc/aa;->a(Ljava/lang/Throwable;ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static declared-synchronized b()Ljava/util/concurrent/ExecutorService;
    .locals 2

    const-class v1, Lcom/loc/ab;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/loc/ab;->e:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/loc/ab;->e:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/loc/ab;->e:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    :try_start_1
    sget-object v0, Lcom/loc/ab;->e:Ljava/util/concurrent/ExecutorService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b(Lcom/loc/v;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/loc/aa;->a:Lcom/loc/aa;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/loc/aa;->a:Lcom/loc/aa;

    invoke-virtual {v0, p0, p1}, Lcom/loc/aa;->a(Lcom/loc/v;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private c()V
    .locals 2

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/ab;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    iget-object v0, p0, Lcom/loc/ab;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/ab;->c:Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/loc/ab;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.amap.api"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loc/ab;->c:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/ab;->c:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


.method protected a(Landroid/content/Context;Lcom/loc/v;Z)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/loc/ab;->b()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Lcom/loc/ab$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/loc/ab$1;-><init>(Lcom/loc/ab;Landroid/content/Context;Lcom/loc/v;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method protected a(Lcom/loc/v;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/loc/ab;->d:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/loc/af;->a(Landroid/content/Context;Lcom/loc/v;Ljava/lang/String;)V

    return-void
.end method

.method protected a(Ljava/lang/Throwable;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/loc/ab;->d:Landroid/content/Context;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/loc/af;->a(Landroid/content/Context;Ljava/lang/Throwable;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2

    const/4 v1, 0x0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0, v1, v1}, Lcom/loc/ab;->a(Ljava/lang/Throwable;ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/ab;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/ab;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
