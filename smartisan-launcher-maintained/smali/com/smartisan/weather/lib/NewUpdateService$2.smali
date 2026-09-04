.class Lcom/smartisan/weather/lib/NewUpdateService$2;
.super Ljava/lang/Object;
.source "NewUpdateService.java"

.implements Lcom/smartisan/weather/lib/location/RequestLocationListener;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisan/weather/lib/NewUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisan/weather/lib/NewUpdateService;


.method constructor <init>(Lcom/smartisan/weather/lib/NewUpdateService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisan/weather/lib/NewUpdateService;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/smartisan/weather/lib/NewUpdateService$2;->this$0:Lcom/smartisan/weather/lib/NewUpdateService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onAMapLocationChanged(Lcom/amap/api/location/AMapLocation;)V
    .locals 3
    .param p1, "location"    # Lcom/amap/api/location/AMapLocation;

    .prologue
    .line 136
    const-string v0, "NewUpdateService"

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

    .line 137
    new-instance v0, Lcom/smartisan/weather/lib/NewUpdateService$LocationTask;

    iget-object v1, p0, Lcom/smartisan/weather/lib/NewUpdateService$2;->this$0:Lcom/smartisan/weather/lib/NewUpdateService;

    invoke-direct {v0, v1, p1}, Lcom/smartisan/weather/lib/NewUpdateService$LocationTask;-><init>(Lcom/smartisan/weather/lib/NewUpdateService;Lcom/amap/api/location/AMapLocation;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/smartisan/weather/lib/NewUpdateService$LocationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 138
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 0
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 133
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 119
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 129
    return-void
.end method

.method public onRequestFailed(I)V
    .locals 0
    .param p1, "errno"    # I

    .prologue
    .line 114
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "i"    # I
    .param p3, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 124
    return-void
.end method
