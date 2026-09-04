.class public Lcom/smartisan/weather/lib/location/AMap2LocationWrapper;
.super Lcom/smartisan/weather/lib/location/LocationWrapper;
.source "AMap2LocationWrapper.java"


.field protected mLocationClient:Lcom/amap/api/location/AMapLocationClient;

.field protected mLocationOption:Lcom/amap/api/location/AMapLocationClientOption;


.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-direct {p0, p1}, Lcom/smartisan/weather/lib/location/LocationWrapper;-><init>(Landroid/content/Context;)V

    .line 22
    iput-object v0, p0, Lcom/smartisan/weather/lib/location/AMap2LocationWrapper;->mLocationClient:Lcom/amap/api/location/AMapLocationClient;

    .line 23
    iput-object v0, p0, Lcom/smartisan/weather/lib/location/AMap2LocationWrapper;->mLocationOption:Lcom/amap/api/location/AMapLocationClientOption;

    .line 19
    invoke-direct {p0}, Lcom/smartisan/weather/lib/location/AMap2LocationWrapper;->initAMapLocation()V

    .line 20
    return-void
.end method

.method private initAMapLocation()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 42
    new-instance v0, Lcom/amap/api/location/AMapLocationClient;

    iget-object v1, p0, Lcom/smartisan/weather/lib/location/AMap2LocationWrapper;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/amap/api/location/AMapLocationClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smartisan/weather/lib/location/AMap2LocationWrapper;->mLocationClient:Lcom/amap/api/location/AMapLocationClient;

    .line 44
    iget-object v0, p0, Lcom/smartisan/weather/lib/location/AMap2LocationWrapper;->mLocationClient:Lcom/amap/api/location/AMapLocationClient;

    new-instance v1, Lcom/smartisan/weather/lib/location/AMap2LocationWrapper$1;

    invoke-direct {v1, p0}, Lcom/smartisan/weather/lib/location/AMap2LocationWrapper$1;-><init>(Lcom/smartisan/weather/lib/location/AMap2LocationWrapper;)V

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationClient;->setLocationListener(Lcom/amap/api/location/AMapLocationListener;)V

    .line 60
    new-instance v0, Lcom/amap/api/location/AMapLocationClientOption;

    invoke-direct {v0}, Lcom/amap/api/location/AMapLocationClientOption;-><init>()V

    iput-object v0, p0, Lcom/smartisan/weather/lib/location/AMap2LocationWrapper;->mLocationOption:Lcom/amap/api/location/AMapLocationClientOption;

    .line 62
    iget-object v0, p0, Lcom/smartisan/weather/lib/location/AMap2LocationWrapper;->mLocationOption:Lcom/amap/api/location/AMapLocationClientOption;

    sget-object v1, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->Hight_Accuracy:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationClientOption;->setLocationMode(Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;)Lcom/amap/api/location/AMapLocationClientOption;

    .line 64
    iget-object v0, p0, Lcom/smartisan/weather/lib/location/AMap2LocationWrapper;->mLocationOption:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0, v2}, Lcom/amap/api/location/AMapLocationClientOption;->setNeedAddress(Z)Lcom/amap/api/location/AMapLocationClientOption;

    .line 66
    iget-object v0, p0, Lcom/smartisan/weather/lib/location/AMap2LocationWrapper;->mLocationOption:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0, v2}, Lcom/amap/api/location/AMapLocationClientOption;->setOnceLocation(Z)Lcom/amap/api/location/AMapLocationClientOption;

    .line 68
    iget-object v0, p0, Lcom/smartisan/weather/lib/location/AMap2LocationWrapper;->mLocationOption:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0, v2}, Lcom/amap/api/location/AMapLocationClientOption;->setWifiActiveScan(Z)V

    .line 70
    iget-object v0, p0, Lcom/smartisan/weather/lib/location/AMap2LocationWrapper;->mLocationOption:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0, v2}, Lcom/amap/api/location/AMapLocationClientOption;->setMockEnable(Z)V

    .line 72
    iget-object v0, p0, Lcom/smartisan/weather/lib/location/AMap2LocationWrapper;->mLocationClient:Lcom/amap/api/location/AMapLocationClient;

    iget-object v1, p0, Lcom/smartisan/weather/lib/location/AMap2LocationWrapper;->mLocationOption:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationClient;->setLocationOption(Lcom/amap/api/location/AMapLocationClientOption;)V

    .line 73
    return-void
.end method


.method public destroy()V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/smartisan/weather/lib/location/AMap2LocationWrapper;->mLocationClient:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClient;->onDestroy()V

    .line 38
    return-void
.end method

.method log(Lcom/amap/api/location/AMapLocation;)V
    .locals 4
    .param p1, "aMapLocation"    # Lcom/amap/api/location/AMapLocation;

    .prologue
    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "alti, longitude: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", error code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", error msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 79
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getErrorInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    return-void
.end method

.method public requestOnce()V
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/smartisan/weather/lib/location/AMap2LocationWrapper;->mLocationClient:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClient;->startLocation()V

    .line 33
    return-void
.end method

.method public setLocationListener(Lcom/smartisan/weather/lib/location/RequestLocationListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/smartisan/weather/lib/location/RequestLocationListener;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/smartisan/weather/lib/location/AMap2LocationWrapper;->locationListener:Lcom/smartisan/weather/lib/location/RequestLocationListener;

    .line 28
    return-void
.end method
