.class final Lcom/tendcloud/tenddata/t;
.super Landroid/content/BroadcastReceiver;


.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Landroid/content/Context;


.method constructor <init>(Ljava/lang/Object;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/tendcloud/tenddata/t;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcom/tendcloud/tenddata/t;->b:Landroid/content/Context;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/tendcloud/tenddata/t;->a:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v0, p0, Lcom/tendcloud/tenddata/t;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v0, p0, Lcom/tendcloud/tenddata/t;->b:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :goto_0
    monitor-exit v1

    :goto_1
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/tendcloud/tenddata/t;->b:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_4
    iget-object v2, p0, Lcom/tendcloud/tenddata/t;->b:Landroid/content/Context;

    invoke-virtual {v2, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method
