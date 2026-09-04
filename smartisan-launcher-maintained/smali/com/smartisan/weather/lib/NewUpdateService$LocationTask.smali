.class public Lcom/smartisan/weather/lib/NewUpdateService$LocationTask;
.super Landroid/os/AsyncTask;
.source "NewUpdateService.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisan/weather/lib/NewUpdateService;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


.field private mLocation:Lcom/amap/api/location/AMapLocation;

.field final synthetic this$0:Lcom/smartisan/weather/lib/NewUpdateService;


.method public constructor <init>(Lcom/smartisan/weather/lib/NewUpdateService;Lcom/amap/api/location/AMapLocation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisan/weather/lib/NewUpdateService;
    .param p2, "location"    # Lcom/amap/api/location/AMapLocation;

    .prologue
    .line 310
    iput-object p1, p0, Lcom/smartisan/weather/lib/NewUpdateService$LocationTask;->this$0:Lcom/smartisan/weather/lib/NewUpdateService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 311
    iput-object p2, p0, Lcom/smartisan/weather/lib/NewUpdateService$LocationTask;->mLocation:Lcom/amap/api/location/AMapLocation;

    .line 312
    return-void
.end method


.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 306
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/smartisan/weather/lib/NewUpdateService$LocationTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 316
    iget-object v0, p0, Lcom/smartisan/weather/lib/NewUpdateService$LocationTask;->this$0:Lcom/smartisan/weather/lib/NewUpdateService;

    iget-object v1, p0, Lcom/smartisan/weather/lib/NewUpdateService$LocationTask;->mLocation:Lcom/amap/api/location/AMapLocation;

    invoke-static {v0, v1}, Lcom/smartisan/weather/lib/NewUpdateService;->access$000(Lcom/smartisan/weather/lib/NewUpdateService;Lcom/amap/api/location/AMapLocation;)V

    .line 317
    iget-object v0, p0, Lcom/smartisan/weather/lib/NewUpdateService$LocationTask;->this$0:Lcom/smartisan/weather/lib/NewUpdateService;

    invoke-static {v0}, Lcom/smartisan/weather/lib/NewUpdateService;->access$100(Lcom/smartisan/weather/lib/NewUpdateService;)V

    .line 318
    iget-object v0, p0, Lcom/smartisan/weather/lib/NewUpdateService$LocationTask;->this$0:Lcom/smartisan/weather/lib/NewUpdateService;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.smartisan.weather.update"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/smartisan/weather/lib/NewUpdateService;->sendBroadcast(Landroid/content/Intent;)V

    .line 319
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 306
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/smartisan/weather/lib/NewUpdateService$LocationTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 324
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 325
    iget-object v0, p0, Lcom/smartisan/weather/lib/NewUpdateService$LocationTask;->this$0:Lcom/smartisan/weather/lib/NewUpdateService;

    invoke-static {v0}, Lcom/smartisan/weather/lib/NewUpdateService;->access$200(Lcom/smartisan/weather/lib/NewUpdateService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x19

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 326
    return-void
.end method
