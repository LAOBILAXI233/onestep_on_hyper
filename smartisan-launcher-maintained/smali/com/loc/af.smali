.class public Lcom/loc/af;
.super Ljava/lang/Object;
.source "Log.java"


.field static final a:Ljava/lang/String;

.field static final b:Ljava/lang/String;

.field static final c:Ljava/lang/String;

.field static final d:Ljava/lang/String;


.method static constructor <clinit>()V
    .locals 1

    const-string v0, "/a/"

    sput-object v0, Lcom/loc/af;->a:Ljava/lang/String;

    const-string v0, "b"

    sput-object v0, Lcom/loc/af;->b:Ljava/lang/String;

    const-string v0, "c"

    sput-object v0, Lcom/loc/af;->c:Ljava/lang/String;

    const-string v0, "d"

    sput-object v0, Lcom/loc/af;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/content/Context;I)Lcom/loc/ag;
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Lcom/loc/ad;

    invoke-direct {v0, p1}, Lcom/loc/ad;-><init>(I)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/loc/ae;

    invoke-direct {v0, p1}, Lcom/loc/ae;-><init>(I)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/loc/ac;

    invoke-direct {v0, p1}, Lcom/loc/ac;-><init>(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static a(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string v0, ""

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/loc/am;->d:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/loc/am;->b:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/loc/am;->c:Ljava/lang/String;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method static a(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x2

    :try_start_0
    invoke-static {p0, v0}, Lcom/loc/af;->a(Landroid/content/Context;I)Lcom/loc/ag;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, p0}, Lcom/loc/ag;->b(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method static a(Landroid/content/Context;Lcom/loc/v;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    invoke-virtual {p1}, Lcom/loc/v;->e()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/loc/ab;->b()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/loc/af$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/loc/af$1;-><init>(Landroid/content/Context;Lcom/loc/v;Ljava/lang/String;)V

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

.method static a(Landroid/content/Context;Ljava/lang/Throwable;ILjava/lang/String;Ljava/lang/String;)V
    .locals 7

    :try_start_0
    invoke-static {}, Lcom/loc/ab;->b()Ljava/util/concurrent/ExecutorService;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/loc/af$2;

    move-object v1, p0

    move v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/loc/af$2;-><init>(Landroid/content/Context;ILjava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
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

.method public static b(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string v0, ""

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/loc/af;->d:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/loc/af;->c:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/loc/af;->b:Ljava/lang/String;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method static b(Landroid/content/Context;)V
    .locals 3

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
    new-instance v1, Lcom/loc/af$3;

    invoke-direct {v1, p0}, Lcom/loc/af$3;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Log"

    const-string v2, "processLog"

    invoke-static {v0, v1, v2}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
