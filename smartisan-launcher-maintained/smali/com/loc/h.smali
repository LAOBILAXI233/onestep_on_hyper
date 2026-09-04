.class Lcom/loc/h;
.super Ljava/lang/Object;
.source "GPSLocation.java"

.implements Landroid/location/LocationListener;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loc/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic a:Lcom/loc/g;


.method constructor <init>(Lcom/loc/g;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/h;->a:Lcom/loc/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onLocationChanged(Landroid/location/Location;)V
    .locals 8

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_6

    const-string v0, "satellites"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    move v1, v0

    :goto_1
    if-gtz v1, :cond_2

    iget-object v0, p0, Lcom/loc/h;->a:Lcom/loc/g;

    iget-object v0, v0, Lcom/loc/g;->d:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->isMockEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/loc/h;->a:Lcom/loc/g;

    iget-object v0, v0, Lcom/loc/g;->a:Landroid/os/Handler;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/loc/h;->a:Lcom/loc/g;

    iget-object v0, v0, Lcom/loc/g;->a:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_3
    invoke-static {}, Lcom/loc/cw;->b()J

    move-result-wide v2

    iget-object v0, p0, Lcom/loc/h;->a:Lcom/loc/g;

    iget-wide v4, v0, Lcom/loc/g;->f:J

    sub-long/2addr v2, v4

    iget-object v0, p0, Lcom/loc/h;->a:Lcom/loc/g;

    iget-wide v4, v0, Lcom/loc/g;->e:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/loc/e;->a(DD)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/loc/h;->a:Lcom/loc/g;

    iget-object v0, v0, Lcom/loc/g;->d:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->isOffset()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/amap/api/location/AMapLocation;

    invoke-direct {v0, p1}, Lcom/amap/api/location/AMapLocation;-><init>(Landroid/location/Location;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/amap/api/location/AMapLocation;->setLocationType(I)V

    iget-object v2, p0, Lcom/loc/h;->a:Lcom/loc/g;

    iget-object v2, v2, Lcom/loc/g;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-static {v2, v4, v5, v6, v7}, Lcom/loc/j;->a(Landroid/content/Context;DD)Lcom/amap/api/location/DPoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amap/api/location/DPoint;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/amap/api/location/AMapLocation;->setLatitude(D)V

    invoke-virtual {v2}, Lcom/amap/api/location/DPoint;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/amap/api/location/AMapLocation;->setLongitude(D)V

    :goto_2
    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setSatellites(I)V

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v0, 0x2

    iput v0, v1, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/loc/h;->a:Lcom/loc/g;

    iget-object v0, v0, Lcom/loc/g;->a:Landroid/os/Handler;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/loc/h;->a:Lcom/loc/g;

    iget-object v0, v0, Lcom/loc/g;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_4
    iget-object v0, p0, Lcom/loc/h;->a:Lcom/loc/g;

    invoke-static {}, Lcom/loc/cw;->b()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/loc/g;->f:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "GPSLocation"

    const-string v2, "onLocationChanged"

    invoke-static {v0, v1, v2}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    :try_start_1
    new-instance v0, Lcom/amap/api/location/AMapLocation;

    invoke-direct {v0, p1}, Lcom/amap/api/location/AMapLocation;-><init>(Landroid/location/Location;)V

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/amap/api/location/AMapLocation;->setLatitude(D)V

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/amap/api/location/AMapLocation;->setLongitude(D)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/amap/api/location/AMapLocation;->setLocationType(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :cond_6
    move v1, v0

    goto/16 :goto_1
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    const-string v0, "gps"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/h;->a:Lcom/loc/g;

    iget-object v0, v0, Lcom/loc/g;->a:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "GPSLocation"

    const-string v2, "onProviderDisabled"

    invoke-static {v0, v1, v2}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 3

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/loc/h;->a:Lcom/loc/g;

    iget-object v0, v0, Lcom/loc/g;->a:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "GPSLocation"

    const-string v2, "onStatusChanged"

    invoke-static {v0, v1, v2}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
