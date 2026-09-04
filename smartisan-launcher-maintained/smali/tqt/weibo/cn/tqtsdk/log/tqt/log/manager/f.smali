.class public Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/f;
.super Ljava/lang/Object;
.source "LogManagerImpl.java"

.implements Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/d;


.field private a:Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/f;

.field private b:Landroid/content/Context;

.field private c:Ljava/util/concurrent/ExecutorService;

.field private d:Ljava/util/concurrent/ExecutorService;

.field private e:I


.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/f;->c:Ljava/util/concurrent/ExecutorService;

    .line 60
    iput-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/f;->d:Ljava/util/concurrent/ExecutorService;

    .line 62
    const/4 v0, 0x1

    iput v0, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/f;->e:I

    .line 65
    iput-object p0, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/f;->a:Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/f;

    .line 66
    iput-object p1, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/f;->b:Landroid/content/Context;

    .line 67
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    iput v0, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/f;->e:I

    .line 68
    return-void
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 111
    invoke-direct {p0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/f;->u()V

    .line 112
    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/f;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 113
    return-void
.end method

.method private b(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 142
    invoke-direct {p0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/f;->v()V

    .line 143
    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/f;->d:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 144
    return-void
.end method

.method private u()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/f;->c:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/f;->c:Ljava/util/concurrent/ExecutorService;

    .line 89
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    :cond_0
    new-instance v0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/f$1;

    invoke-direct {v0, p0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/f$1;-><init>(Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/f;)V

    .line 91
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/f;->c:Ljava/util/concurrent/ExecutorService;

    .line 101
    :cond_1
    return-void
.end method

.method private v()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/f;->d:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/f;->d:Ljava/util/concurrent/ExecutorService;

    .line 117
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 118
    :cond_0
    iget v0, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/f;->e:I

    if-gez v0, :cond_1

    .line 119
    const/4 v0, 0x1

    iput v0, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/f;->e:I

    .line 121
    :cond_1
    iget v0, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/f;->e:I

    new-instance v1, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/f$2;

    invoke-direct {v1, p0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/f$2;-><init>(Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/f;)V

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/f;->d:Ljava/util/concurrent/ExecutorService;

    .line 132
    :cond_2
    return-void
.end method


.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 72
    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/f;->c:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/f;->c:Ljava/util/concurrent/ExecutorService;

    .line 73
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/f;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 76
    :cond_0
    iput-object v1, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/f;->c:Ljava/util/concurrent/ExecutorService;

    .line 78
    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/f;->d:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/f;->d:Ljava/util/concurrent/ExecutorService;

    .line 79
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 80
    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/f;->d:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 82
    :cond_1
    iput-object v1, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/f;->d:Ljava/util/concurrent/ExecutorService;

    .line 84
    iput-object v1, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/f;->a:Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/f;

    .line 85
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 482
    new-instance v0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/d;

    invoke-direct {v0, p1}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/d;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/f;->b(Ljava/lang/Runnable;)V

    .line 484
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 461
    new-instance v0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/b;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-direct {p0, v0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/f;->b(Ljava/lang/Runnable;)V

    .line 463
    return-void
.end method

.method public a(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)Z
    .locals 2

    .prologue
    .line 299
    new-instance v0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/l;

    iget-object v1, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/f;->b:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/l;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    invoke-direct {p0, v0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/f;->b(Ljava/lang/Runnable;)V

    .line 300
    const/4 v0, 0x1

    return v0
.end method

.method public a(Landroid/content/SharedPreferences;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 329
    new-instance v0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/m;

    invoke-direct {v0, p1, p2}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/m;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/f;->b(Ljava/lang/Runnable;)V

    .line 330
    const/4 v0, 0x1

    return v0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 217
    new-instance v2, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/o;

    iget-object v3, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/f;->b:Landroid/content/Context;

    move-object v0, v1

    check-cast v0, [Ljava/lang/String;

    invoke-direct {v2, v3, v1, p1, v0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/o;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p0, v2}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/f;->a(Ljava/lang/Runnable;)V

    .line 220
    const/4 v0, 0x1

    return v0
.end method

.method public b(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 489
    new-instance v0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/e;

    invoke-direct {v0, p1}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/e;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/f;->b(Ljava/lang/Runnable;)V

    .line 491
    return-void
.end method

.method public b()Z
    .locals 2

    .prologue
    .line 236
    new-instance v0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/h;

    iget-object v1, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/f;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/h;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/f;->a(Ljava/lang/Runnable;)V

    .line 238
    const/4 v0, 0x1

    return v0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 293
    new-instance v0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/k;

    iget-object v1, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/f;->b:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/k;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/f;->b(Ljava/lang/Runnable;)V

    .line 294
    const/4 v0, 0x1

    return v0
.end method

.method public c(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 496
    invoke-static {}, Lcom/sina/weibo/sdk/statistic/WBAgent;->onKillProcess()V

    .line 498
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 244
    new-instance v0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/g;

    invoke-direct {v0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/g;-><init>()V

    invoke-direct {p0, v0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/f;->a(Ljava/lang/Runnable;)V

    .line 246
    const/4 v0, 0x1

    return v0
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 252
    new-instance v0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/i;

    iget-object v1, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/f;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/i;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/f;->a(Ljava/lang/Runnable;)V

    .line 254
    const/4 v0, 0x1

    return v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 305
    new-instance v0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/n;

    invoke-direct {v0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/n;-><init>()V

    invoke-direct {p0, v0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/f;->b(Ljava/lang/Runnable;)V

    .line 306
    const/4 v0, 0x1

    return v0
.end method

.method public f()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 369
    new-instance v0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/j;

    iget-object v1, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/f;->b:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/j;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, v0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/f;->b(Ljava/lang/Runnable;)V

    .line 371
    return v2
.end method

.method public g()Z
    .locals 3

    .prologue
    .line 376
    new-instance v0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/j;

    iget-object v1, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/f;->b:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/j;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, v0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/f;->b(Ljava/lang/Runnable;)V

    .line 378
    const/4 v0, 0x1

    return v0
.end method

.method public h()Z
    .locals 3

    .prologue
    .line 383
    new-instance v0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/j;

    iget-object v1, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/f;->b:Landroid/content/Context;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/j;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, v0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/f;->b(Ljava/lang/Runnable;)V

    .line 385
    const/4 v0, 0x1

    return v0
.end method

.method public i()Z
    .locals 3

    .prologue
    .line 390
    new-instance v0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/j;

    iget-object v1, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/f;->b:Landroid/content/Context;

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/j;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, v0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/f;->b(Ljava/lang/Runnable;)V

    .line 392
    const/4 v0, 0x1

    return v0
.end method

.method public j()Z
    .locals 3

    .prologue
    .line 397
    new-instance v0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/j;

    iget-object v1, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/f;->b:Landroid/content/Context;

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/j;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, v0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/f;->b(Ljava/lang/Runnable;)V

    .line 399
    const/4 v0, 0x1

    return v0
.end method

.method public k()Z
    .locals 3

    .prologue
    .line 404
    new-instance v0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/j;

    iget-object v1, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/f;->b:Landroid/content/Context;

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/j;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, v0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/f;->b(Ljava/lang/Runnable;)V

    .line 406
    const/4 v0, 0x1

    return v0
.end method

.method public l()Z
    .locals 3

    .prologue
    .line 411
    new-instance v0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/j;

    iget-object v1, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/f;->b:Landroid/content/Context;

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/j;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, v0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/f;->b(Ljava/lang/Runnable;)V

    .line 413
    const/4 v0, 0x1

    return v0
.end method

.method public m()Z
    .locals 3

    .prologue
    .line 418
    new-instance v0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/j;

    iget-object v1, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/f;->b:Landroid/content/Context;

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/j;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, v0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/f;->b(Ljava/lang/Runnable;)V

    .line 420
    const/4 v0, 0x1

    return v0
.end method

.method public n()Z
    .locals 3

    .prologue
    .line 425
    new-instance v0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/j;

    iget-object v1, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/f;->b:Landroid/content/Context;

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/j;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, v0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/f;->b(Ljava/lang/Runnable;)V

    .line 427
    const/4 v0, 0x1

    return v0
.end method

.method public o()Z
    .locals 3

    .prologue
    .line 432
    new-instance v0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/j;

    iget-object v1, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/f;->b:Landroid/content/Context;

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/j;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, v0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/f;->b(Ljava/lang/Runnable;)V

    .line 434
    const/4 v0, 0x1

    return v0
.end method

.method public p()Z
    .locals 3

    .prologue
    .line 439
    new-instance v0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/j;

    iget-object v1, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/f;->b:Landroid/content/Context;

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/j;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, v0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/f;->b(Ljava/lang/Runnable;)V

    .line 441
    const/4 v0, 0x1

    return v0
.end method

.method public q()Z
    .locals 3

    .prologue
    .line 446
    new-instance v0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/j;

    iget-object v1, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/f;->b:Landroid/content/Context;

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/j;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, v0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/f;->b(Ljava/lang/Runnable;)V

    .line 448
    const/4 v0, 0x1

    return v0
.end method

.method public r()Z
    .locals 3

    .prologue
    .line 453
    new-instance v0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/j;

    iget-object v1, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/f;->b:Landroid/content/Context;

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/j;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, v0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/f;->b(Ljava/lang/Runnable;)V

    .line 455
    const/4 v0, 0x1

    return v0
.end method

.method public s()V
    .locals 2

    .prologue
    .line 475
    new-instance v0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/f;

    iget-object v1, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/f;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/f;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/f;->b(Ljava/lang/Runnable;)V

    .line 477
    return-void
.end method

.method public t()V
    .locals 2

    .prologue
    .line 503
    new-instance v0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/c;

    iget-object v1, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/f;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/c;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/f;->b(Ljava/lang/Runnable;)V

    .line 505
    return-void
.end method
