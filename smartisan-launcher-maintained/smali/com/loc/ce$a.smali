.class Lcom/loc/ce$a;
.super Ljava/lang/Thread;
.source "CgiManager.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loc/ce;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


.field final synthetic a:Lcom/loc/ce;


.method constructor <init>(Lcom/loc/ce;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/ce$a;->a:Lcom/loc/ce;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/loc/ce$a;->a:Lcom/loc/ce;

    invoke-static {v0}, Lcom/loc/ce;->a(Lcom/loc/ce;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/loc/ce$a;->a:Lcom/loc/ce;

    invoke-static {v0}, Lcom/loc/ce;->b(Lcom/loc/ce;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->prepare()V

    iget-object v0, p0, Lcom/loc/ce$a;->a:Lcom/loc/ce;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    iput-object v2, v0, Lcom/loc/ce;->a:Landroid/os/Looper;

    iget-object v0, p0, Lcom/loc/ce$a;->a:Lcom/loc/ce;

    invoke-static {v0}, Lcom/loc/ce;->c(Lcom/loc/ce;)V

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/loc/ce$a;->a:Lcom/loc/ce;

    iget-object v0, v0, Lcom/loc/ce;->a:Landroid/os/Looper;

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->loop()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "CgiManager"

    const-string v2, "ListenerThread"

    invoke-static {v0, v1, v2}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
