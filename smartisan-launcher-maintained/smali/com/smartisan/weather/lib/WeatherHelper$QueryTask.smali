.class public Lcom/smartisan/weather/lib/WeatherHelper$QueryTask;
.super Landroid/os/AsyncTask;
.source "WeatherHelper.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisan/weather/lib/WeatherHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "QueryTask"
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


.field private mWeatherListener:Lcom/smartisan/weather/lib/WeatherHelper$WeatherListener;

.field final synthetic this$0:Lcom/smartisan/weather/lib/WeatherHelper;


.method public constructor <init>(Lcom/smartisan/weather/lib/WeatherHelper;Lcom/smartisan/weather/lib/WeatherHelper$WeatherListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisan/weather/lib/WeatherHelper;
    .param p2, "weatherListener"    # Lcom/smartisan/weather/lib/WeatherHelper$WeatherListener;

    .prologue
    .line 264
    iput-object p1, p0, Lcom/smartisan/weather/lib/WeatherHelper$QueryTask;->this$0:Lcom/smartisan/weather/lib/WeatherHelper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 265
    iput-object p2, p0, Lcom/smartisan/weather/lib/WeatherHelper$QueryTask;->mWeatherListener:Lcom/smartisan/weather/lib/WeatherHelper$WeatherListener;

    .line 266
    return-void
.end method


.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/smartisan/weather/lib/bean/Weather;
    .locals 7
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 270
    const-string v4, "WeatherHelper"

    const-string v5, "query start"

    invoke-static {v4, v5}, Lcom/smartisan/weather/lib/util/DebugLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const/4 v2, 0x0

    .line 272
    .local v2, "result":Lcom/smartisan/weather/lib/bean/Weather;
    iget-object v4, p0, Lcom/smartisan/weather/lib/WeatherHelper$QueryTask;->this$0:Lcom/smartisan/weather/lib/WeatherHelper;

    invoke-static {v4}, Lcom/smartisan/weather/lib/WeatherHelper;->access$000(Lcom/smartisan/weather/lib/WeatherHelper;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/smartisan/weather/lib/db/LocationDBHelper;->getInstance(Landroid/content/Context;)Lcom/smartisan/weather/lib/db/LocationDBHelper;

    move-result-object v0

    .line 273
    .local v0, "helper":Lcom/smartisan/weather/lib/db/LocationDBHelper;
    invoke-virtual {v0}, Lcom/smartisan/weather/lib/db/LocationDBHelper;->queryCurrentLocation()Lcom/smartisan/weather/lib/bean/SmartisanLocation;

    move-result-object v1

    .line 274
    .local v1, "location":Lcom/smartisan/weather/lib/bean/SmartisanLocation;
    if-eqz v1, :cond_0

    iget-object v4, v1, Lcom/smartisan/weather/lib/bean/SmartisanLocation;->locationKey:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 275
    new-instance v3, Lcom/smartisan/weather/lib/db/WeatherProviderDBHelper;

    iget-object v4, p0, Lcom/smartisan/weather/lib/WeatherHelper$QueryTask;->this$0:Lcom/smartisan/weather/lib/WeatherHelper;

    invoke-static {v4}, Lcom/smartisan/weather/lib/WeatherHelper;->access$000(Lcom/smartisan/weather/lib/WeatherHelper;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/smartisan/weather/lib/db/WeatherProviderDBHelper;-><init>(Landroid/content/Context;)V

    .line 276
    .local v3, "weatherDBHelper":Lcom/smartisan/weather/lib/db/WeatherProviderDBHelper;
    const-string v4, "WeatherHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "locationKey "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/smartisan/weather/lib/bean/SmartisanLocation;->locationKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/smartisan/weather/lib/util/DebugLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    iget-object v4, v1, Lcom/smartisan/weather/lib/bean/SmartisanLocation;->locationKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/smartisan/weather/lib/db/WeatherProviderDBHelper;->queryWeatherByLocationKey(Ljava/lang/String;)Lcom/smartisan/weather/lib/bean/Weather;

    move-result-object v2

    .line 279
    .end local v3    # "weatherDBHelper":Lcom/smartisan/weather/lib/db/WeatherProviderDBHelper;
    :cond_0
    const-string v4, "WeatherHelper"

    const-string v5, "query end"

    invoke-static {v4, v5}, Lcom/smartisan/weather/lib/util/DebugLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    return-object v2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 260
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/smartisan/weather/lib/WeatherHelper$QueryTask;->doInBackground([Ljava/lang/Void;)Lcom/smartisan/weather/lib/bean/Weather;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/smartisan/weather/lib/bean/Weather;)V
    .locals 3
    .param p1, "result"    # Lcom/smartisan/weather/lib/bean/Weather;

    .prologue
    .line 285
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 286
    iget-object v1, p0, Lcom/smartisan/weather/lib/WeatherHelper$QueryTask;->mWeatherListener:Lcom/smartisan/weather/lib/WeatherHelper$WeatherListener;

    if-eqz v1, :cond_0

    .line 287
    iget-object v1, p0, Lcom/smartisan/weather/lib/WeatherHelper$QueryTask;->mWeatherListener:Lcom/smartisan/weather/lib/WeatherHelper$WeatherListener;

    invoke-interface {v1, p1}, Lcom/smartisan/weather/lib/WeatherHelper$WeatherListener;->onLoaded(Lcom/smartisan/weather/lib/bean/Weather;)V

    .line 289
    :cond_0
    iget-object v1, p0, Lcom/smartisan/weather/lib/WeatherHelper$QueryTask;->this$0:Lcom/smartisan/weather/lib/WeatherHelper;

    invoke-static {v1}, Lcom/smartisan/weather/lib/WeatherHelper;->access$000(Lcom/smartisan/weather/lib/WeatherHelper;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/smartisan/weather/lib/WeatherHelper;->access$100(Landroid/content/Context;)Z

    move-result v0

    .line 290
    .local v0, "isUpdateValid":Z
    if-eqz v0, :cond_1

    .line 291
    iget-object v1, p0, Lcom/smartisan/weather/lib/WeatherHelper$QueryTask;->this$0:Lcom/smartisan/weather/lib/WeatherHelper;

    iget-object v2, p0, Lcom/smartisan/weather/lib/WeatherHelper$QueryTask;->mWeatherListener:Lcom/smartisan/weather/lib/WeatherHelper$WeatherListener;

    invoke-static {v1, v2}, Lcom/smartisan/weather/lib/WeatherHelper;->access$200(Lcom/smartisan/weather/lib/WeatherHelper;Lcom/smartisan/weather/lib/WeatherHelper$WeatherListener;)V

    .line 293
    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 260
    check-cast p1, Lcom/smartisan/weather/lib/bean/Weather;

    invoke-virtual {p0, p1}, Lcom/smartisan/weather/lib/WeatherHelper$QueryTask;->onPostExecute(Lcom/smartisan/weather/lib/bean/Weather;)V

    return-void
.end method
