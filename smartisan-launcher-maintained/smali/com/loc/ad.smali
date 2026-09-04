.class public Lcom/loc/ad;
.super Lcom/loc/ag;
.source "CrashLogProcessor.java"


.field private static a:Z


.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/loc/ad;->a:Z

    return-void
.end method

.method protected constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/loc/ag;-><init>(I)V

    return-void
.end method


.method protected a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/loc/w;->a(J)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/s;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/loc/v;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected a(Landroid/content/Context;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-boolean v2, Lcom/loc/ad;->a:Z

    if-eqz v2, :cond_2

    sput-boolean v1, Lcom/loc/ad;->a:Z

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    new-instance v3, Lcom/loc/as;

    invoke-direct {v3, p1}, Lcom/loc/as;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/loc/as;->a()Lcom/loc/au;

    move-result-object v4

    if-nez v4, :cond_0

    monitor-exit v2

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v4}, Lcom/loc/au;->a()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Lcom/loc/au;->a(Z)V

    invoke-virtual {v3, v4}, Lcom/loc/as;->a(Lcom/loc/au;)V

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method
