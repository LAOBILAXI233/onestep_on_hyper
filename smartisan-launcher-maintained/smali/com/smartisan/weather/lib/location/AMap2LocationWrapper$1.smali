.class Lcom/smartisan/weather/lib/location/AMap2LocationWrapper$1;
.super Ljava/lang/Object;
.source "AMap2LocationWrapper.java"

.implements Lcom/amap/api/location/AMapLocationListener;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisan/weather/lib/location/AMap2LocationWrapper;->initAMapLocation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisan/weather/lib/location/AMap2LocationWrapper;


.method constructor <init>(Lcom/smartisan/weather/lib/location/AMap2LocationWrapper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisan/weather/lib/location/AMap2LocationWrapper;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/smartisan/weather/lib/location/AMap2LocationWrapper$1;->this$0:Lcom/smartisan/weather/lib/location/AMap2LocationWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onLocationChanged(Lcom/amap/api/location/AMapLocation;)V
    .locals 2
    .param p1, "aMapLocation"    # Lcom/amap/api/location/AMapLocation;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/smartisan/weather/lib/location/AMap2LocationWrapper$1;->this$0:Lcom/smartisan/weather/lib/location/AMap2LocationWrapper;

    invoke-virtual {v0, p1}, Lcom/smartisan/weather/lib/location/AMap2LocationWrapper;->log(Lcom/amap/api/location/AMapLocation;)V

    .line 48
    iget-object v0, p0, Lcom/smartisan/weather/lib/location/AMap2LocationWrapper$1;->this$0:Lcom/smartisan/weather/lib/location/AMap2LocationWrapper;

    iget-object v0, v0, Lcom/smartisan/weather/lib/location/AMap2LocationWrapper;->locationListener:Lcom/smartisan/weather/lib/location/RequestLocationListener;

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v0

    if-nez v0, :cond_1

    .line 50
    iget-object v0, p0, Lcom/smartisan/weather/lib/location/AMap2LocationWrapper$1;->this$0:Lcom/smartisan/weather/lib/location/AMap2LocationWrapper;

    iget-object v0, v0, Lcom/smartisan/weather/lib/location/AMap2LocationWrapper;->locationListener:Lcom/smartisan/weather/lib/location/RequestLocationListener;

    invoke-interface {v0, p1}, Lcom/smartisan/weather/lib/location/RequestLocationListener;->onLocationChanged(Landroid/location/Location;)V

    .line 51
    iget-object v0, p0, Lcom/smartisan/weather/lib/location/AMap2LocationWrapper$1;->this$0:Lcom/smartisan/weather/lib/location/AMap2LocationWrapper;

    iget-object v0, v0, Lcom/smartisan/weather/lib/location/AMap2LocationWrapper;->locationListener:Lcom/smartisan/weather/lib/location/RequestLocationListener;

    invoke-interface {v0, p1}, Lcom/smartisan/weather/lib/location/RequestLocationListener;->onAMapLocationChanged(Lcom/amap/api/location/AMapLocation;)V

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/smartisan/weather/lib/location/AMap2LocationWrapper$1;->this$0:Lcom/smartisan/weather/lib/location/AMap2LocationWrapper;

    iget-object v0, v0, Lcom/smartisan/weather/lib/location/AMap2LocationWrapper;->locationListener:Lcom/smartisan/weather/lib/location/RequestLocationListener;

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/smartisan/weather/lib/location/RequestLocationListener;->onRequestFailed(I)V

    goto :goto_0
.end method
