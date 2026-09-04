.class Lcom/smartisan/weather/lib/WeatherHelper$LocationListener;
.super Ljava/lang/Object;
.source "WeatherHelper.java"

.implements Lcom/smartisan/weather/lib/location/RequestLocationListener;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisan/weather/lib/WeatherHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocationListener"
.end annotation


.field private mWeatherListener:Lcom/smartisan/weather/lib/WeatherHelper$WeatherListener;

.field final synthetic this$0:Lcom/smartisan/weather/lib/WeatherHelper;


.method public constructor <init>(Lcom/smartisan/weather/lib/WeatherHelper;Lcom/smartisan/weather/lib/WeatherHelper$WeatherListener;)V
    .locals 0
    .param p2, "listener"    # Lcom/smartisan/weather/lib/WeatherHelper$WeatherListener;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/smartisan/weather/lib/WeatherHelper$LocationListener;->this$0:Lcom/smartisan/weather/lib/WeatherHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p2, p0, Lcom/smartisan/weather/lib/WeatherHelper$LocationListener;->mWeatherListener:Lcom/smartisan/weather/lib/WeatherHelper$WeatherListener;

    .line 84
    return-void
.end method


.method public onAMapLocationChanged(Lcom/amap/api/location/AMapLocation;)V
    .locals 3
    .param p1, "location"    # Lcom/amap/api/location/AMapLocation;

    .prologue
    .line 110
    const-string v0, "WeatherHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update_location success, got location:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartisan/weather/lib/util/DebugLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    new-instance v0, Lcom/smartisan/weather/lib/WeatherHelper$LocationTask;

    iget-object v1, p0, Lcom/smartisan/weather/lib/WeatherHelper$LocationListener;->this$0:Lcom/smartisan/weather/lib/WeatherHelper;

    iget-object v2, p0, Lcom/smartisan/weather/lib/WeatherHelper$LocationListener;->mWeatherListener:Lcom/smartisan/weather/lib/WeatherHelper$WeatherListener;

    invoke-direct {v0, v1, p1, v2}, Lcom/smartisan/weather/lib/WeatherHelper$LocationTask;-><init>(Lcom/smartisan/weather/lib/WeatherHelper;Lcom/amap/api/location/AMapLocation;Lcom/smartisan/weather/lib/WeatherHelper$WeatherListener;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/smartisan/weather/lib/WeatherHelper$LocationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 112
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 0
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 107
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 93
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 103
    return-void
.end method

.method public onRequestFailed(I)V
    .locals 0
    .param p1, "errno"    # I

    .prologue
    .line 88
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "i"    # I
    .param p3, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 98
    return-void
.end method
