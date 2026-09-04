.class Lcom/loc/ab$1;
.super Ljava/lang/Object;
.source "SDKLogHandler.java"

.implements Ljava/lang/Runnable;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loc/ab;->a(Landroid/content/Context;Lcom/loc/v;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/loc/v;

.field final synthetic c:Z

.field final synthetic d:Lcom/loc/ab;


.method constructor <init>(Lcom/loc/ab;Landroid/content/Context;Lcom/loc/v;Z)V
    .locals 0

    iput-object p1, p0, Lcom/loc/ab$1;->d:Lcom/loc/ab;

    iput-object p2, p0, Lcom/loc/ab$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/loc/ab$1;->b:Lcom/loc/v;

    iput-boolean p4, p0, Lcom/loc/ab$1;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public run()V
    .locals 4

    :try_start_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v0, Lcom/loc/aq;

    iget-object v2, p0, Lcom/loc/ab$1;->a:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3}, Lcom/loc/aq;-><init>(Landroid/content/Context;Z)V

    iget-object v2, p0, Lcom/loc/ab$1;->b:Lcom/loc/v;

    invoke-virtual {v0, v2}, Lcom/loc/aq;->a(Lcom/loc/v;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-boolean v0, p0, Lcom/loc/ab$1;->c:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    monitor-enter v1
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    new-instance v0, Lcom/loc/as;

    iget-object v2, p0, Lcom/loc/ab$1;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/loc/as;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/loc/au;

    invoke-direct {v2}, Lcom/loc/au;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/loc/au;->c(Z)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/loc/au;->a(Z)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/loc/au;->b(Z)V

    invoke-virtual {v0, v2}, Lcom/loc/as;->a(Lcom/loc/au;)V

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v0, p0, Lcom/loc/ab$1;->d:Lcom/loc/ab;

    invoke-static {v0}, Lcom/loc/ab;->a(Lcom/loc/ab;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/af;->a(Landroid/content/Context;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    :cond_0
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
.end method
