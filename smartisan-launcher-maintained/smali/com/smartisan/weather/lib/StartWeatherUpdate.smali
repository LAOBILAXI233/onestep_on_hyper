.class public Lcom/smartisan/weather/lib/StartWeatherUpdate;
.super Landroid/content/BroadcastReceiver;
.source "StartWeatherUpdate.java"


.field public static final ACTION_LUNCHER_DEBUG:Ljava/lang/String; = "com.smartisan.weather.luncher.debug"

.field public static final KEY_TEMP:Ljava/lang/String; = "temp"

.field public static final KEY_WEATHER_CODE:Ljava/lang/String; = "weather_code"


.field public mAlarmManager:Landroid/app/AlarmManager;


.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 34
    const-string v9, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 35
    invoke-static {p1}, Lcom/smartisan/weather/lib/UpdateService;->checkUpdate(Landroid/content/Context;)V

    .line 38
    :cond_0
    const-string v9, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 39
    const-string v9, "connectivity"

    .line 40
    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 41
    .local v2, "manager":Landroid/net/ConnectivityManager;
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 42
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 43
    invoke-static {p1}, Lcom/smartisan/weather/lib/UpdateService;->checkUpdate(Landroid/content/Context;)V

    .line 51
    .end local v1    # "info":Landroid/net/NetworkInfo;
    .end local v2    # "manager":Landroid/net/ConnectivityManager;
    :cond_1
    :goto_0
    const-string v9, "action_keyguard_on"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 52
    invoke-static {p1, v11}, Lcom/smartisan/weather/lib/UpdateService;->setUpdateAlarm(Landroid/content/Context;Z)V

    .line 57
    :cond_2
    const-string v9, "com.smartisan.weather.luncher.debug"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 58
    const-string v9, "temp"

    const/16 v10, 0x19

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 59
    .local v4, "temp":I
    const-string v9, "weather_code"

    const/4 v10, 0x1

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 60
    .local v8, "weather_code":I
    new-instance v7, Lcom/smartisan/weather/lib/db/WeatherProviderDBHelper;

    invoke-direct {v7, p1}, Lcom/smartisan/weather/lib/db/WeatherProviderDBHelper;-><init>(Landroid/content/Context;)V

    .line 61
    .local v7, "weatherHelper":Lcom/smartisan/weather/lib/db/WeatherProviderDBHelper;
    new-instance v6, Landroid/content/ContentValues;

    const/4 v9, 0x2

    invoke-direct {v6, v9}, Landroid/content/ContentValues;-><init>(I)V

    .line 62
    .local v6, "values":Landroid/content/ContentValues;
    const-string v9, "temp"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 63
    const-string v9, "weatherCode"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 64
    invoke-virtual {v7}, Lcom/smartisan/weather/lib/db/WeatherProviderDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 65
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v9, "weather_provider"

    const-string v10, "locationKey = (select locationKey from location where locationKey<>\'\' order by sort_order limit 1)"

    invoke-virtual {v0, v9, v6, v10, v12}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 71
    .local v3, "result":I
    const-string v9, "content://com.smartisan.provider.weather/weather/current"

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 73
    .local v5, "uriCurrent":Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-virtual {v9, v5, v12}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 75
    new-instance v9, Landroid/content/Intent;

    const-string v10, "com.smartisan.weather.data.update"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 78
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v3    # "result":I
    .end local v4    # "temp":I
    .end local v5    # "uriCurrent":Landroid/net/Uri;
    .end local v6    # "values":Landroid/content/ContentValues;
    .end local v7    # "weatherHelper":Lcom/smartisan/weather/lib/db/WeatherProviderDBHelper;
    .end local v8    # "weather_code":I
    :cond_3
    return-void

    .line 45
    .restart local v1    # "info":Landroid/net/NetworkInfo;
    .restart local v2    # "manager":Landroid/net/ConnectivityManager;
    :cond_4
    invoke-static {p1, v11}, Lcom/smartisan/weather/lib/UpdateService;->setUpdateAlarm(Landroid/content/Context;Z)V

    goto :goto_0
.end method
