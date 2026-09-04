.class Lcom/tendcloud/tenddata/am;
.super Ljava/lang/Object;

.implements Ljava/lang/Runnable;


.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/tendcloud/tenddata/ag;


.method constructor <init>(Lcom/tendcloud/tenddata/ag;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tendcloud/tenddata/am;->b:Lcom/tendcloud/tenddata/ag;

    iput-object p2, p0, Lcom/tendcloud/tenddata/am;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/am;->b:Lcom/tendcloud/tenddata/ag;

    iget-object v1, p0, Lcom/tendcloud/tenddata/am;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tendcloud/tenddata/ag;->a(Lcom/tendcloud/tenddata/ag;Ljava/lang/String;)Lcom/tendcloud/tenddata/u;

    move-result-object v0

    iget-object v1, p0, Lcom/tendcloud/tenddata/am;->b:Lcom/tendcloud/tenddata/ag;

    iget-boolean v1, v1, Lcom/tendcloud/tenddata/ag;->l:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/tendcloud/tenddata/am;->b:Lcom/tendcloud/tenddata/ag;

    iput-object v0, v1, Lcom/tendcloud/tenddata/ag;->a:Lcom/tendcloud/tenddata/u;

    iget-object v1, p0, Lcom/tendcloud/tenddata/am;->b:Lcom/tendcloud/tenddata/ag;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/tendcloud/tenddata/am;->b:Lcom/tendcloud/tenddata/ag;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    const-wide/16 v0, 0xbb8

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    iget-object v0, p0, Lcom/tendcloud/tenddata/am;->b:Lcom/tendcloud/tenddata/ag;

    iget-object v0, v0, Lcom/tendcloud/tenddata/ag;->a:Lcom/tendcloud/tenddata/u;

    invoke-interface {v0}, Lcom/tendcloud/tenddata/u;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tendcloud/tenddata/am;->b:Lcom/tendcloud/tenddata/ag;

    iget-object v1, p0, Lcom/tendcloud/tenddata/am;->b:Lcom/tendcloud/tenddata/ag;

    iget-object v1, v1, Lcom/tendcloud/tenddata/ag;->a:Lcom/tendcloud/tenddata/u;

    invoke-static {v0, v1}, Lcom/tendcloud/tenddata/ag;->a(Lcom/tendcloud/tenddata/ag;Lcom/tendcloud/tenddata/u;)V
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

    goto :goto_0
.end method
