.class final Lcom/loc/du;
.super Ljava/lang/Thread;


.field final synthetic a:Lcom/loc/db;


.method constructor <init>(Lcom/loc/db;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/du;->a:Lcom/loc/db;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


.method public final run()V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/loc/du;->a:Lcom/loc/db;

    iget-object v6, v0, Lcom/loc/db;->c:Ljava/lang/Object;

    monitor-enter v6
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-boolean v0, Lcom/loc/db;->a:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->prepare()V

    iget-object v0, p0, Lcom/loc/du;->a:Lcom/loc/db;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/loc/db;->a(Lcom/loc/db;Landroid/os/Looper;)Landroid/os/Looper;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/loc/du;->a:Lcom/loc/db;

    new-instance v1, Lcom/loc/dw;

    iget-object v2, p0, Lcom/loc/du;->a:Lcom/loc/db;

    invoke-direct {v1, v2}, Lcom/loc/dw;-><init>(Lcom/loc/db;)V

    invoke-static {v0, v1}, Lcom/loc/db;->a(Lcom/loc/db;Lcom/loc/dw;)Lcom/loc/dw;

    iget-object v0, p0, Lcom/loc/du;->a:Lcom/loc/db;

    invoke-static {v0}, Lcom/loc/db;->d(Lcom/loc/db;)Landroid/location/LocationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/du;->a:Lcom/loc/db;

    invoke-static {v1}, Lcom/loc/db;->c(Lcom/loc/db;)Lcom/loc/dw;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    iget-object v0, p0, Lcom/loc/du;->a:Lcom/loc/db;

    invoke-static {v0}, Lcom/loc/db;->d(Lcom/loc/db;)Landroid/location/LocationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/du;->a:Lcom/loc/db;

    invoke-static {v1}, Lcom/loc/db;->c(Lcom/loc/db;)Lcom/loc/dw;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->addNmeaListener(Landroid/location/GpsStatus$NmeaListener;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    :try_start_3
    iget-object v0, p0, Lcom/loc/du;->a:Lcom/loc/db;

    new-instance v1, Lcom/loc/dv;

    invoke-direct {v1, p0}, Lcom/loc/dv;-><init>(Lcom/loc/du;)V

    invoke-static {v0, v1}, Lcom/loc/db;->a(Lcom/loc/db;Landroid/os/Handler;)Landroid/os/Handler;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v0, p0, Lcom/loc/du;->a:Lcom/loc/db;

    invoke-static {v0}, Lcom/loc/db;->d(Lcom/loc/db;)Landroid/location/LocationManager;

    move-result-object v0

    const-string v1, "passive"

    const-wide/16 v2, 0x3e8

    invoke-static {}, Lcom/loc/db;->m()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/loc/du;->a:Lcom/loc/db;

    invoke-static {v5}, Lcom/loc/db;->e(Lcom/loc/db;)Landroid/location/LocationListener;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_0
    :goto_1
    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    sget-boolean v0, Lcom/loc/db;->a:Z

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->loop()V

    :cond_1
    :goto_2
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0
.end method
