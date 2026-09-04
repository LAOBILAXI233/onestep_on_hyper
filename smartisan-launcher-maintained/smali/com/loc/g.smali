.class public Lcom/loc/g;
.super Ljava/lang/Object;
.source "GPSLocation.java"


.field a:Landroid/os/Handler;

.field b:Landroid/content/Context;

.field c:Landroid/location/LocationManager;

.field d:Lcom/amap/api/location/AMapLocationClientOption;

.field e:J

.field f:J

.field g:Landroid/location/LocationListener;


.method public constructor <init>(Landroid/content/Context;Lcom/loc/a$c;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/loc/g;->e:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/loc/g;->f:J

    new-instance v0, Lcom/loc/h;

    invoke-direct {v0, p0}, Lcom/loc/h;-><init>(Lcom/loc/g;)V

    iput-object v0, p0, Lcom/loc/g;->g:Landroid/location/LocationListener;

    iput-object p1, p0, Lcom/loc/g;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/loc/g;->a:Landroid/os/Handler;

    iget-object v0, p0, Lcom/loc/g;->b:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/loc/g;->c:Landroid/location/LocationManager;

    return-void
.end method


.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/loc/g;->c:Landroid/location/LocationManager;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/loc/g;->g:Landroid/location/LocationListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/g;->c:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/loc/g;->g:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    goto :goto_0
.end method

.method a(JF)V
    .locals 7

    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v6

    if-nez v6, :cond_0

    iget-object v0, p0, Lcom/loc/g;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    :cond_0
    iput-wide p1, p0, Lcom/loc/g;->e:J

    iget-object v0, p0, Lcom/loc/g;->c:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x3e8

    iget-object v5, p0, Lcom/loc/g;->g:Landroid/location/LocationListener;

    move v4, p3

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "GPSLocation"

    const-string v2, "requestLocationUpdates part1"

    invoke-static {v0, v1, v2}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    new-instance v1, Lcom/amap/api/location/AMapLocation;

    const-string v2, ""

    invoke-direct {v1, v2}, Lcom/amap/api/location/AMapLocation;-><init>(Ljava/lang/String;)V

    const-string v2, "gps"

    invoke-virtual {v1, v2}, Lcom/amap/api/location/AMapLocation;->setProvider(Ljava/lang/String;)V

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Lcom/amap/api/location/AMapLocation;->setErrorCode(I)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/amap/api/location/AMapLocation;->setLocationType(I)V

    const/4 v2, 0x2

    iput v2, v0, Landroid/os/Message;->what:I

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/loc/g;->a:Landroid/os/Handler;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/loc/g;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "GPSLocation"

    const-string v2, "requestLocationUpdates part2"

    invoke-static {v0, v1, v2}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/amap/api/location/AMapLocationClientOption;)V
    .locals 3

    iput-object p1, p0, Lcom/loc/g;->d:Lcom/amap/api/location/AMapLocationClientOption;

    iget-object v0, p0, Lcom/loc/g;->d:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->getInterval()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/loc/g;->a(JF)V

    return-void
.end method
