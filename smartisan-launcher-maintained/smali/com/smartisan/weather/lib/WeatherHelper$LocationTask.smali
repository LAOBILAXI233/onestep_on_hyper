.class public Lcom/smartisan/weather/lib/WeatherHelper$LocationTask;
.super Landroid/os/AsyncTask;
.source "WeatherHelper.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisan/weather/lib/WeatherHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocationTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/smartisan/weather/lib/bean/Weather;",
        ">;"
    }
.end annotation


.field private mLocation:Lcom/amap/api/location/AMapLocation;

.field private mWeatherListener:Lcom/smartisan/weather/lib/WeatherHelper$WeatherListener;

.field final synthetic this$0:Lcom/smartisan/weather/lib/WeatherHelper;


.method public constructor <init>(Lcom/smartisan/weather/lib/WeatherHelper;Lcom/amap/api/location/AMapLocation;Lcom/smartisan/weather/lib/WeatherHelper$WeatherListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisan/weather/lib/WeatherHelper;
    .param p2, "location"    # Lcom/amap/api/location/AMapLocation;
    .param p3, "weatherListener"    # Lcom/smartisan/weather/lib/WeatherHelper$WeatherListener;

    .prologue
    .line 303
    iput-object p1, p0, Lcom/smartisan/weather/lib/WeatherHelper$LocationTask;->this$0:Lcom/smartisan/weather/lib/WeatherHelper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 304
    iput-object p2, p0, Lcom/smartisan/weather/lib/WeatherHelper$LocationTask;->mLocation:Lcom/amap/api/location/AMapLocation;

    .line 305
    iput-object p3, p0, Lcom/smartisan/weather/lib/WeatherHelper$LocationTask;->mWeatherListener:Lcom/smartisan/weather/lib/WeatherHelper$WeatherListener;

    .line 306
    return-void
.end method


.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/smartisan/weather/lib/bean/Weather;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 310
    iget-object v0, p0, Lcom/smartisan/weather/lib/WeatherHelper$LocationTask;->this$0:Lcom/smartisan/weather/lib/WeatherHelper;

    iget-object v1, p0, Lcom/smartisan/weather/lib/WeatherHelper$LocationTask;->mLocation:Lcom/amap/api/location/AMapLocation;

    invoke-static {v0, v1}, Lcom/smartisan/weather/lib/WeatherHelper;->access$300(Lcom/smartisan/weather/lib/WeatherHelper;Lcom/amap/api/location/AMapLocation;)V

    .line 311
    iget-object v0, p0, Lcom/smartisan/weather/lib/WeatherHelper$LocationTask;->this$0:Lcom/smartisan/weather/lib/WeatherHelper;

    invoke-static {v0}, Lcom/smartisan/weather/lib/WeatherHelper;->access$400(Lcom/smartisan/weather/lib/WeatherHelper;)Lcom/smartisan/weather/lib/bean/Weather;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 297
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/smartisan/weather/lib/WeatherHelper$LocationTask;->doInBackground([Ljava/lang/Void;)Lcom/smartisan/weather/lib/bean/Weather;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/smartisan/weather/lib/bean/Weather;)V
    .locals 1
    .param p1, "result"    # Lcom/smartisan/weather/lib/bean/Weather;

    .prologue
    .line 316
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 317
    iget-object v0, p0, Lcom/smartisan/weather/lib/WeatherHelper$LocationTask;->mWeatherListener:Lcom/smartisan/weather/lib/WeatherHelper$WeatherListener;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/smartisan/weather/lib/WeatherHelper$LocationTask;->mWeatherListener:Lcom/smartisan/weather/lib/WeatherHelper$WeatherListener;

    invoke-interface {v0, p1}, Lcom/smartisan/weather/lib/WeatherHelper$WeatherListener;->onLoaded(Lcom/smartisan/weather/lib/bean/Weather;)V

    .line 320
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 297
    check-cast p1, Lcom/smartisan/weather/lib/bean/Weather;

    invoke-virtual {p0, p1}, Lcom/smartisan/weather/lib/WeatherHelper$LocationTask;->onPostExecute(Lcom/smartisan/weather/lib/bean/Weather;)V

    return-void
.end method
