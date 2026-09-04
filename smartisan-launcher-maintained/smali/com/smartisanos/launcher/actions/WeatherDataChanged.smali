.class public Lcom/smartisanos/launcher/actions/WeatherDataChanged;
.super Ljava/lang/Object;
.source "WeatherDataChanged.java"


.field private static final log:Lcom/smartisanos/launcher/LOG;

.field private static sWeatherEvent:Lcom/smartisanos/smengine/Event;


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/smartisanos/launcher/actions/WeatherDataChanged;

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/actions/WeatherDataChanged;->log:Lcom/smartisanos/launcher/LOG;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changeWeather(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 10
    .param p0, "arg"    # Ljava/lang/String;
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 40
    if-nez p1, :cond_1

    .line 41
    sget-object v7, Lcom/smartisanos/launcher/actions/WeatherDataChanged;->log:Lcom/smartisanos/launcher/LOG;

    const-string v8, "WeatherDataChanged return by bundle is null"

    invoke-virtual {v7, v8}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    const/4 v3, 0x0

    .line 45
    .local v3, "needCache":Z
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 46
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v7

    iget-boolean v7, v7, Lcom/smartisanos/home/Launcher;->ENABLE_RECEIVER:Z

    if-nez v7, :cond_2

    .line 47
    const/4 v3, 0x1

    .line 48
    sget-object v7, Lcom/smartisanos/launcher/actions/WeatherDataChanged;->log:Lcom/smartisanos/launcher/LOG;

    const-string v8, "Launcher startup, data init running !"

    invoke-virtual {v7, v8}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 54
    :cond_2
    :goto_1
    const-string v7, "weatherCode"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 55
    .local v5, "weatherCode":Ljava/lang/String;
    const-string v7, "temp"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "celsiusTemperature":Ljava/lang/String;
    const-string v7, "fahrenheitTemp"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, "fahrenheitTemperature":Ljava/lang/String;
    const-string v7, "_1sunRiseAndSet"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 59
    .local v4, "sunRiseAndSetTime":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-string v7, "com.smartisanos.weather.data.update"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 60
    .local v2, "intent":Landroid/content/Intent;
    const-string v7, "weatherCode"

    invoke-virtual {v2, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    const-string v7, "temp"

    invoke-virtual {v2, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    const-string v7, "fahrenheitTemp"

    invoke-virtual {v2, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    const-string v7, "_1sunRiseAndSet"

    invoke-virtual {v2, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    if-eqz v3, :cond_4

    .line 65
    sget-object v7, Lcom/smartisanos/launcher/actions/WeatherDataChanged;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "WeatherDataChanged cache intent : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 66
    sget-object v7, Lcom/smartisanos/launcher/ApplicationProxy;->intentBuffer:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 51
    .end local v0    # "celsiusTemperature":Ljava/lang/String;
    .end local v1    # "fahrenheitTemperature":Ljava/lang/String;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v4    # "sunRiseAndSetTime":Ljava/lang/String;
    .end local v5    # "weatherCode":Ljava/lang/String;
    :cond_3
    const/4 v3, 0x1

    .line 52
    sget-object v7, Lcom/smartisanos/launcher/actions/WeatherDataChanged;->log:Lcom/smartisanos/launcher/LOG;

    const-string v8, "Launcher activity is null !"

    invoke-virtual {v7, v8}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    goto :goto_1

    .line 69
    .restart local v0    # "celsiusTemperature":Ljava/lang/String;
    .restart local v1    # "fahrenheitTemperature":Ljava/lang/String;
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v4    # "sunRiseAndSetTime":Ljava/lang/String;
    .restart local v5    # "weatherCode":Ljava/lang/String;
    :cond_4
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 72
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v7

    sget-object v8, Lcom/smartisanos/launcher/view/WeatherView;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/smartisanos/launcher/view/MainView;->getActiveIconView(Ljava/lang/String;)Lcom/smartisanos/launcher/view/ActiveIconView;

    move-result-object v6

    check-cast v6, Lcom/smartisanos/launcher/view/WeatherView;

    .line 74
    .local v6, "wv":Lcom/smartisanos/launcher/view/WeatherView;
    if-eqz v6, :cond_0

    .line 75
    sget-boolean v7, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v7, :cond_5

    sget-object v7, Lcom/smartisanos/launcher/actions/WeatherDataChanged;->log:Lcom/smartisanos/launcher/LOG;

    const-string v8, "WeatherView"

    const-string v9, "update weather action"

    invoke-virtual {v7, v8, v9}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :cond_5
    invoke-virtual {v6, v2}, Lcom/smartisanos/launcher/view/WeatherView;->handleWeatherData(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public static handleWeatherDataChange(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p0, "arg"    # Ljava/lang/String;
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 21
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 22
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v0

    if-nez v0, :cond_1

    .line 37
    :cond_0
    :goto_0
    return-void

    .line 27
    :cond_1
    sget-object v0, Lcom/smartisanos/launcher/actions/WeatherDataChanged;->sWeatherEvent:Lcom/smartisanos/smengine/Event;

    if-eqz v0, :cond_2

    .line 28
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/World;->getEventManager()Lcom/smartisanos/smengine/EventManager;

    move-result-object v0

    sget-object v1, Lcom/smartisanos/launcher/actions/WeatherDataChanged;->sWeatherEvent:Lcom/smartisanos/smengine/Event;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/EventManager;->removeEvent(Lcom/smartisanos/smengine/Event;)V

    .line 29
    const/4 v0, 0x0

    sput-object v0, Lcom/smartisanos/launcher/actions/WeatherDataChanged;->sWeatherEvent:Lcom/smartisanos/smengine/Event;

    .line 31
    :cond_2
    new-instance v0, Lcom/smartisanos/launcher/actions/WeatherDataChanged$1;

    const/16 v1, 0x64

    invoke-direct {v0, v1, p0, p1}, Lcom/smartisanos/launcher/actions/WeatherDataChanged$1;-><init>(ILjava/lang/String;Landroid/os/Bundle;)V

    sput-object v0, Lcom/smartisanos/launcher/actions/WeatherDataChanged;->sWeatherEvent:Lcom/smartisanos/smengine/Event;

    .line 36
    sget-object v0, Lcom/smartisanos/launcher/actions/WeatherDataChanged;->sWeatherEvent:Lcom/smartisanos/smengine/Event;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/Event;->send(F)V

    goto :goto_0
.end method
