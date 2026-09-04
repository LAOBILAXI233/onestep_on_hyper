.class Lcom/smartisanos/launcher/data/Utils$4$1;
.super Lcom/smartisanos/smengine/Event;
.source "Utils.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/data/Utils$4;->onLoaded(Lcom/smartisan/weather/lib/bean/Weather;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/data/Utils$4;

.field final synthetic val$intent:Landroid/content/Intent;


.method constructor <init>(Lcom/smartisanos/launcher/data/Utils$4;ILandroid/content/Intent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/data/Utils$4;
    .param p2, "type"    # I

    .prologue
    .line 2190
    iput-object p1, p0, Lcom/smartisanos/launcher/data/Utils$4$1;->this$0:Lcom/smartisanos/launcher/data/Utils$4;

    iput-object p3, p0, Lcom/smartisanos/launcher/data/Utils$4$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/Event;-><init>(I)V

    return-void
.end method


.method public run()V
    .locals 5

    .prologue
    .line 2193
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    .line 2194
    .local v0, "mainView":Lcom/smartisanos/launcher/view/MainView;
    if-eqz v0, :cond_0

    .line 2195
    sget-object v3, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->WEATHER:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    iget-object v1, v3, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;->pkg:Ljava/lang/String;

    .line 2196
    .local v1, "pkg":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/MainView;->getActiveIconView(Ljava/lang/String;)Lcom/smartisanos/launcher/view/ActiveIconView;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/WeatherView;

    .line 2197
    .local v2, "weatherView":Lcom/smartisanos/launcher/view/WeatherView;
    if-nez v2, :cond_1

    .line 2198
    invoke-static {}, Lcom/smartisanos/launcher/data/Utils;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v3

    const-string v4, "weatherView is null"

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 2203
    .end local v1    # "pkg":Ljava/lang/String;
    .end local v2    # "weatherView":Lcom/smartisanos/launcher/view/WeatherView;
    :cond_0
    :goto_0
    return-void

    .line 2201
    .restart local v1    # "pkg":Ljava/lang/String;
    .restart local v2    # "weatherView":Lcom/smartisanos/launcher/view/WeatherView;
    :cond_1
    iget-object v3, p0, Lcom/smartisanos/launcher/data/Utils$4$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/view/WeatherView;->handleWeatherData(Landroid/content/Intent;)V

    goto :goto_0
.end method
