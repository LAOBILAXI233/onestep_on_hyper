.class final Lcom/loc/dm;
.super Ljava/lang/Thread;


.field private synthetic a:Lcom/loc/dl;


.method constructor <init>(Lcom/loc/dl;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/dm;->a:Lcom/loc/dl;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


.method public final run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/loc/dm;->a:Lcom/loc/dl;

    iget-object v1, v0, Lcom/loc/dl;->d:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {}, Landroid/os/Looper;->prepare()V

    iget-object v0, p0, Lcom/loc/dm;->a:Lcom/loc/dl;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/loc/dl;->a(Lcom/loc/dl;Landroid/os/Looper;)Landroid/os/Looper;

    iget-object v0, p0, Lcom/loc/dm;->a:Lcom/loc/dl;

    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    invoke-static {v0, v2}, Lcom/loc/dl;->a(Lcom/loc/dl;Ljava/util/Timer;)Ljava/util/Timer;

    iget-object v0, p0, Lcom/loc/dm;->a:Lcom/loc/dl;

    new-instance v2, Lcom/loc/dn;

    iget-object v3, p0, Lcom/loc/dm;->a:Lcom/loc/dl;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/loc/dn;-><init>(Lcom/loc/dl;B)V

    invoke-static {v0, v2}, Lcom/loc/dl;->a(Lcom/loc/dl;Lcom/loc/dn;)Lcom/loc/dn;

    iget-object v0, p0, Lcom/loc/dm;->a:Lcom/loc/dl;

    iget-object v2, p0, Lcom/loc/dm;->a:Lcom/loc/dl;

    invoke-static {v2}, Lcom/loc/dl;->a(Lcom/loc/dl;)Lcom/loc/dn;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/loc/dl;->a(Lcom/loc/dl;Landroid/telephony/PhoneStateListener;)V

    iget-object v0, p0, Lcom/loc/dm;->a:Lcom/loc/dl;

    new-instance v2, Lcom/loc/do;

    iget-object v3, p0, Lcom/loc/dm;->a:Lcom/loc/dl;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/loc/do;-><init>(Lcom/loc/dl;B)V

    invoke-static {v0, v2}, Lcom/loc/dl;->a(Lcom/loc/dl;Lcom/loc/do;)Lcom/loc/do;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/loc/dm;->a:Lcom/loc/dl;

    iget-object v2, p0, Lcom/loc/dm;->a:Lcom/loc/dl;

    invoke-static {v2}, Lcom/loc/dl;->b(Lcom/loc/dl;)Lcom/loc/do;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/loc/dl;->a(Lcom/loc/dl;Landroid/location/GpsStatus$NmeaListener;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v0, p0, Lcom/loc/dm;->a:Lcom/loc/dl;

    iget-boolean v0, v0, Lcom/loc/dl;->e:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->loop()V

    :cond_0
    :goto_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
