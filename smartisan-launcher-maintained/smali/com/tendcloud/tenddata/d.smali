.class final Lcom/tendcloud/tenddata/d;
.super Ljava/lang/Object;


.field static final a:I = 0x7530

.field static final b:I = 0x6ddd00

.field static c:J = 0x0L

.field static d:J = 0x0L

.field static e:I = 0x0

.field private static final f:I = 0x5000

.field private static g:Landroid/os/Handler;

.field private static h:Landroid/os/Handler;

.field private static i:Z

.field private static final j:Landroid/os/HandlerThread;


.method static constructor <clinit>()V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    sput-object v0, Lcom/tendcloud/tenddata/d;->g:Landroid/os/Handler;

    sput-object v0, Lcom/tendcloud/tenddata/d;->h:Landroid/os/Handler;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/tendcloud/tenddata/d;->i:Z

    sput-wide v2, Lcom/tendcloud/tenddata/d;->c:J

    sput-wide v2, Lcom/tendcloud/tenddata/d;->d:J

    const/16 v0, 0x7530

    sput v0, Lcom/tendcloud/tenddata/d;->e:I

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ProcessingThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tendcloud/tenddata/d;->j:Landroid/os/HandlerThread;

    sget-object v0, Lcom/tendcloud/tenddata/d;->j:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static declared-synchronized a()Landroid/os/Handler;
    .locals 2

    const-class v1, Lcom/tendcloud/tenddata/d;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/d;->h:Landroid/os/Handler;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/tendcloud/tenddata/d;->e()V

    :cond_0
    sget-object v0, Lcom/tendcloud/tenddata/d;->h:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Lcom/tendcloud/tenddata/bl;)V
    .locals 4

    invoke-static {}, Lcom/tendcloud/tenddata/s;->h()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/e;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/tendcloud/tenddata/bl;->e:Ljava/util/List;

    iget-wide v2, p0, Lcom/tendcloud/tenddata/bl;->f:J

    invoke-static {v2, v3}, Lcom/tendcloud/tenddata/e;->b(J)V

    iget-wide v2, p0, Lcom/tendcloud/tenddata/bl;->g:J

    invoke-static {v2, v3}, Lcom/tendcloud/tenddata/e;->c(J)V

    iget-wide v2, p0, Lcom/tendcloud/tenddata/bl;->h:J

    invoke-static {v2, v3}, Lcom/tendcloud/tenddata/e;->d(J)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tendcloud/tenddata/as;

    iget v2, v0, Lcom/tendcloud/tenddata/as;->a:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tendcloud/tenddata/s;->b(Z)V

    goto :goto_0

    :pswitch_1
    iget-object v0, v0, Lcom/tendcloud/tenddata/as;->b:Lcom/tendcloud/tenddata/c;

    iget v2, v0, Lcom/tendcloud/tenddata/c;->c:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Lcom/tendcloud/tenddata/c;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/tendcloud/tenddata/e;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget v2, v0, Lcom/tendcloud/tenddata/c;->c:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    iget-object v2, v0, Lcom/tendcloud/tenddata/c;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/tendcloud/tenddata/e;->b(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/tendcloud/tenddata/c;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/tendcloud/tenddata/e;->c(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/tendcloud/tenddata/c;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/tendcloud/tenddata/e;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/tendcloud/tenddata/e;->b()V

    iget-object v0, p0, Lcom/tendcloud/tenddata/bl;->i:[[Ljava/lang/Long;

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/tendcloud/tenddata/s;->f()V

    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static b()V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    sput-boolean v0, Lcom/tendcloud/tenddata/d;->i:Z

    invoke-static {}, Lcom/tendcloud/tenddata/d;->f()Z

    sget-boolean v0, Lcom/tendcloud/tenddata/d;->i:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tendcloud/tenddata/d;->g:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static declared-synchronized c()V
    .locals 8

    const-wide/16 v2, 0x0

    const-class v4, Lcom/tendcloud/tenddata/d;

    monitor-enter v4

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-wide v6, Lcom/tendcloud/tenddata/d;->d:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long/2addr v0, v6

    cmp-long v5, v0, v2

    if-gez v5, :cond_1

    :cond_0
    :goto_0
    monitor-exit v4

    return-void

    :cond_1
    :try_start_1
    sget-wide v6, Lcom/tendcloud/tenddata/d;->c:J

    cmp-long v5, v6, v2

    if-lez v5, :cond_4

    sget v5, Lcom/tendcloud/tenddata/d;->e:I

    int-to-long v6, v5

    cmp-long v5, v0, v6

    if-gez v5, :cond_4

    sget v5, Lcom/tendcloud/tenddata/d;->e:I

    int-to-long v6, v5

    sub-long v0, v6, v0

    :goto_1
    invoke-static {}, Lcom/tendcloud/tenddata/s;->h()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/tendcloud/tenddata/bb;->c(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v5, "TDLog"

    const-string v6, "network is disabled."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    sput-boolean v5, Lcom/tendcloud/tenddata/s;->p:Z

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Lcom/tendcloud/tenddata/s;->v()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    :cond_2
    :try_start_2
    sget-boolean v2, Lcom/tendcloud/tenddata/s;->f:Z

    if-eqz v2, :cond_3

    invoke-static {v5}, Lcom/tendcloud/tenddata/bb;->g(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v0, "TDLog"

    const-string v1, "wifi is not connected."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/tendcloud/tenddata/s;->p:Z

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/tendcloud/tenddata/d;->g:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v0, v2

    sput-wide v0, Lcom/tendcloud/tenddata/d;->d:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_4
    move-wide v0, v2

    goto :goto_1
.end method

.method static d()Lcom/tendcloud/tenddata/z;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lcom/tendcloud/tenddata/s;->h()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/tendcloud/tenddata/z;

    invoke-direct {v2}, Lcom/tendcloud/tenddata/z;-><init>()V

    invoke-static {}, Lcom/tendcloud/tenddata/w;->k()[Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    :try_start_0
    aget-object v3, v0, v3

    iput-object v3, v2, Lcom/tendcloud/tenddata/z;->a:Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v2, Lcom/tendcloud/tenddata/z;->b:I

    const/4 v3, 0x2

    aget-object v3, v0, v3

    iput-object v3, v2, Lcom/tendcloud/tenddata/z;->d:Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, v2, Lcom/tendcloud/tenddata/z;->c:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    invoke-static {}, Lcom/tendcloud/tenddata/w;->m()[I

    move-result-object v0

    aget v3, v0, v4

    iput v3, v2, Lcom/tendcloud/tenddata/z;->g:I

    aget v0, v0, v5

    iput v0, v2, Lcom/tendcloud/tenddata/z;->h:I

    :try_start_1
    invoke-static {}, Lcom/tendcloud/tenddata/w;->n()[I

    move-result-object v0

    const/4 v3, 0x0

    aget v3, v0, v3

    iput v3, v2, Lcom/tendcloud/tenddata/z;->i:I

    const/4 v3, 0x1

    aget v3, v0, v3

    iput v3, v2, Lcom/tendcloud/tenddata/z;->j:I

    const/4 v3, 0x2

    aget v3, v0, v3

    iput v3, v2, Lcom/tendcloud/tenddata/z;->k:I

    const/4 v3, 0x3

    aget v0, v0, v3

    iput v0, v2, Lcom/tendcloud/tenddata/z;->l:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    invoke-static {}, Lcom/tendcloud/tenddata/w;->o()I

    move-result v0

    iput v0, v2, Lcom/tendcloud/tenddata/z;->m:I

    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v0, "window"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    iget v4, v3, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr v0, v4

    iput v0, v2, Lcom/tendcloud/tenddata/z;->n:F

    iget v0, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    iget v4, v3, Landroid/util/DisplayMetrics;->ydpi:F

    div-float/2addr v0, v4

    iput v0, v2, Lcom/tendcloud/tenddata/z;->o:F

    iget v0, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, v2, Lcom/tendcloud/tenddata/z;->p:I

    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    iput-object v0, v2, Lcom/tendcloud/tenddata/z;->q:Ljava/lang/String;

    const-string v0, "unknown"

    iput-object v0, v2, Lcom/tendcloud/tenddata/z;->r:Ljava/lang/String;

    :try_start_2
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const-string v4, "get"

    invoke-virtual {v0, v4, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "gsm.version.baseband"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lcom/tendcloud/tenddata/z;->r:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    invoke-static {v1}, Lcom/tendcloud/tenddata/a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, v2, Lcom/tendcloud/tenddata/z;->s:Ljava/lang/String;

    :cond_0
    invoke-static {v1}, Lcom/tendcloud/tenddata/a;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iput-object v0, v2, Lcom/tendcloud/tenddata/z;->t:Ljava/lang/String;

    :cond_1
    :try_start_3
    invoke-static {v1}, Lcom/tendcloud/tenddata/a;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/tendcloud/tenddata/z;->y:Ljava/lang/String;

    invoke-static {v1}, Lcom/tendcloud/tenddata/bc;->g(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/tendcloud/tenddata/z;->z:Ljava/lang/String;

    invoke-static {v1}, Lcom/tendcloud/tenddata/a;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/tendcloud/tenddata/z;->A:Ljava/lang/String;

    invoke-static {v1}, Lcom/tendcloud/tenddata/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/tendcloud/tenddata/z;->B:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    return-object v2

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto/16 :goto_1

    :catch_3
    move-exception v0

    goto/16 :goto_0
.end method

.method private static e()V
    .locals 2

    sget-boolean v0, Lcom/tendcloud/tenddata/s;->i:Z

    if-nez v0, :cond_0

    const v0, 0x6ddd00

    sput v0, Lcom/tendcloud/tenddata/d;->e:I

    :cond_0
    sget-object v0, Lcom/tendcloud/tenddata/d;->g:Landroid/os/Handler;

    if-nez v0, :cond_1

    new-instance v0, Lcom/tendcloud/tenddata/ax;

    sget-object v1, Lcom/tendcloud/tenddata/d;->j:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tendcloud/tenddata/ax;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/tendcloud/tenddata/d;->g:Landroid/os/Handler;

    :cond_1
    sget-object v0, Lcom/tendcloud/tenddata/d;->h:Landroid/os/Handler;

    if-nez v0, :cond_2

    new-instance v0, Lcom/tendcloud/tenddata/av;

    sget-object v1, Lcom/tendcloud/tenddata/d;->j:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tendcloud/tenddata/av;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/tendcloud/tenddata/d;->h:Landroid/os/Handler;

    :cond_2
    return-void
.end method

.method private static f()Z
    .locals 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {}, Lcom/tendcloud/tenddata/s;->h()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/tendcloud/tenddata/d;->g()Lcom/tendcloud/tenddata/bl;

    move-result-object v3

    if-nez v3, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    sput-boolean v0, Lcom/tendcloud/tenddata/s;->h:Z

    sget-boolean v2, Lcom/tendcloud/tenddata/TCAgent;->LOG_ON:Z

    if-eqz v2, :cond_2

    const-string v2, "TDLog"

    const-string v4, "Post data to server..."

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-static {v3}, Lcom/tendcloud/tenddata/ac;->a(Lcom/tendcloud/tenddata/bl;)Z

    move-result v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sput-wide v4, Lcom/tendcloud/tenddata/d;->c:J

    sget-boolean v4, Lcom/tendcloud/tenddata/TCAgent;->LOG_ON:Z

    if-eqz v4, :cond_3

    const-string v4, "TDLog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "server return success:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-eqz v2, :cond_4

    invoke-static {v3}, Lcom/tendcloud/tenddata/d;->a(Lcom/tendcloud/tenddata/bl;)V

    sput-boolean v0, Lcom/tendcloud/tenddata/s;->p:Z

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/tendcloud/tenddata/s;->v()V

    sput-boolean v1, Lcom/tendcloud/tenddata/s;->p:Z

    goto :goto_1
.end method

.method private static g()Lcom/tendcloud/tenddata/bl;
    .locals 15

    invoke-static {}, Lcom/tendcloud/tenddata/s;->h()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v5, Lcom/tendcloud/tenddata/bl;

    invoke-direct {v5}, Lcom/tendcloud/tenddata/bl;-><init>()V

    invoke-static {v0}, Lcom/tendcloud/tenddata/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/tendcloud/tenddata/bl;->a:Ljava/lang/String;

    invoke-static {}, Lcom/tendcloud/tenddata/s;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/tendcloud/tenddata/bl;->b:Ljava/lang/String;

    invoke-static {}, Lcom/tendcloud/tenddata/s;->s()Lcom/tendcloud/tenddata/n;

    move-result-object v0

    iput-object v0, v5, Lcom/tendcloud/tenddata/bl;->c:Lcom/tendcloud/tenddata/n;

    invoke-static {}, Lcom/tendcloud/tenddata/s;->t()Lcom/tendcloud/tenddata/al;

    move-result-object v0

    iput-object v0, v5, Lcom/tendcloud/tenddata/bl;->d:Lcom/tendcloud/tenddata/al;

    sget-object v0, Lcom/tendcloud/tenddata/s;->e:[[Ljava/lang/Long;

    iput-object v0, v5, Lcom/tendcloud/tenddata/bl;->i:[[Ljava/lang/Long;

    invoke-virtual {v5}, Lcom/tendcloud/tenddata/bl;->a()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    add-int/2addr v1, v0

    const/4 v0, 0x0

    invoke-static {}, Lcom/tendcloud/tenddata/s;->k()Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v0, 0x1

    new-instance v2, Lcom/tendcloud/tenddata/as;

    invoke-direct {v2}, Lcom/tendcloud/tenddata/as;-><init>()V

    const/4 v3, 0x1

    iput v3, v2, Lcom/tendcloud/tenddata/as;->a:I

    invoke-static {}, Lcom/tendcloud/tenddata/d;->d()Lcom/tendcloud/tenddata/z;

    move-result-object v3

    iput-object v3, v2, Lcom/tendcloud/tenddata/as;->c:Lcom/tendcloud/tenddata/z;

    iget-object v3, v5, Lcom/tendcloud/tenddata/bl;->e:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v3, v2, Lcom/tendcloud/tenddata/as;->a:I

    invoke-static {v3}, Lcom/tendcloud/tenddata/ad;->c(I)I

    move-result v3

    iget-object v2, v2, Lcom/tendcloud/tenddata/as;->c:Lcom/tendcloud/tenddata/z;

    invoke-virtual {v2}, Lcom/tendcloud/tenddata/z;->a()I

    move-result v2

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    move v14, v0

    move v0, v1

    move v1, v14

    :goto_0
    invoke-static {}, Lcom/tendcloud/tenddata/s;->h()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/tendcloud/tenddata/e;->a(Landroid/content/Context;)V

    const-string v2, "error_report"

    invoke-static {v2}, Lcom/tendcloud/tenddata/e;->e(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v5, Lcom/tendcloud/tenddata/bl;->h:J

    invoke-static {}, Lcom/tendcloud/tenddata/e;->d()Ljava/util/List;

    move-result-object v3

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v3, v0

    :cond_0
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tendcloud/tenddata/c;

    add-int/lit8 v2, v2, 0x1

    iget-object v4, v0, Lcom/tendcloud/tenddata/c;->a:Ljava/lang/String;

    iget-wide v8, v5, Lcom/tendcloud/tenddata/bl;->f:J

    invoke-static {v4, v8, v9}, Lcom/tendcloud/tenddata/e;->a(Ljava/lang/String;J)Ljava/util/List;

    move-result-object v4

    iput-object v4, v0, Lcom/tendcloud/tenddata/c;->h:Ljava/util/List;

    iget-object v4, v0, Lcom/tendcloud/tenddata/c;->a:Ljava/lang/String;

    iget-wide v8, v5, Lcom/tendcloud/tenddata/bl;->g:J

    invoke-static {v4, v8, v9}, Lcom/tendcloud/tenddata/e;->b(Ljava/lang/String;J)Ljava/util/List;

    move-result-object v4

    iput-object v4, v0, Lcom/tendcloud/tenddata/c;->i:Ljava/util/List;

    const/4 v4, 0x0

    iget-object v8, v0, Lcom/tendcloud/tenddata/c;->i:Ljava/util/List;

    if-eqz v8, :cond_1

    const/4 v4, 0x1

    :cond_1
    new-instance v8, Lcom/tendcloud/tenddata/as;

    invoke-direct {v8}, Lcom/tendcloud/tenddata/as;-><init>()V

    const/4 v9, 0x2

    iput v9, v8, Lcom/tendcloud/tenddata/as;->a:I

    iput-object v0, v8, Lcom/tendcloud/tenddata/as;->b:Lcom/tendcloud/tenddata/c;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/c;->a()I

    move-result v9

    add-int v10, v9, v3

    const/16 v11, 0x5000

    if-le v10, v11, :cond_3

    const/4 v10, 0x1

    if-eq v2, v10, :cond_3

    const/4 v0, 0x1

    sput-boolean v0, Lcom/tendcloud/tenddata/d;->i:Z

    :cond_2
    invoke-static {v6}, Lcom/tendcloud/tenddata/e;->a(Ljava/util/List;)J

    move-result-wide v2

    iput-wide v2, v5, Lcom/tendcloud/tenddata/bl;->f:J

    invoke-static {v6}, Lcom/tendcloud/tenddata/e;->b(Ljava/util/List;)J

    move-result-wide v2

    iput-wide v2, v5, Lcom/tendcloud/tenddata/bl;->g:J

    iget-wide v2, v5, Lcom/tendcloud/tenddata/bl;->h:J

    const-wide/16 v6, 0x0

    cmp-long v0, v2, v6

    if-lez v0, :cond_5

    iget-wide v2, v5, Lcom/tendcloud/tenddata/bl;->h:J

    invoke-static {v2, v3}, Lcom/tendcloud/tenddata/e;->e(J)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tendcloud/tenddata/as;

    iget-object v3, v5, Lcom/tendcloud/tenddata/bl;->e:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    add-int/2addr v3, v9

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sget-wide v12, Lcom/tendcloud/tenddata/d;->c:J

    sub-long/2addr v10, v12

    const-wide/32 v12, 0x6ddd00

    cmp-long v9, v10, v12

    if-gez v9, :cond_4

    iget v9, v0, Lcom/tendcloud/tenddata/c;->c:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_4

    iget-object v9, v0, Lcom/tendcloud/tenddata/c;->h:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_4

    iget-object v0, v0, Lcom/tendcloud/tenddata/c;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    if-nez v4, :cond_4

    sget-boolean v0, Lcom/tendcloud/tenddata/s;->h:Z

    if-eqz v0, :cond_0

    :cond_4
    iget-object v0, v5, Lcom/tendcloud/tenddata/bl;->e:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_5
    invoke-static {}, Lcom/tendcloud/tenddata/e;->b()V

    if-nez v1, :cond_6

    iget-object v0, v5, Lcom/tendcloud/tenddata/bl;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_6
    move-object v0, v5

    goto :goto_3

    :cond_7
    move v14, v0

    move v0, v1

    move v1, v14

    goto/16 :goto_0
.end method
