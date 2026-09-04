.class public Lcom/smartisanos/home/action/TqtAction;
.super Ljava/lang/Object;
.source "TqtAction.java"


.field private static final DISABLE_TQT:Z = false

.field public static final ONE_DAY_IN_MILLIS:J = 0x5265c00L

.field public static TQT_LAST_SYNC_TIME:J = 0x0L

.field public static final TQT_SYNC_TIME:Ljava/lang/String; = "TQT_SYNC_TIME"

.field private static final log:Lcom/smartisanos/launcher/LOG;


.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    const-class v0, Lcom/smartisanos/home/action/TqtAction;

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/home/action/TqtAction;->log:Lcom/smartisanos/launcher/LOG;

    .line 19
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/smartisanos/home/action/TqtAction;->TQT_LAST_SYNC_TIME:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static callSdk(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 56
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "SINA_INT_REFRESH_MANUALLY"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 57
    const-string v2, "TQT_INT_REFRESH_MANUALLY"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 58
    invoke-static {p0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/SmartisanManager;->getManager(Landroid/content/Context;)Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/ISmartisanManager;

    move-result-object v2

    invoke-interface {v2, v0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/ISmartisanManager;->someSinaStat(Landroid/os/Bundle;)V

    .line 59
    invoke-static {p0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/SmartisanManager;->getManager(Landroid/content/Context;)Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/ISmartisanManager;

    move-result-object v2

    invoke-interface {v2, v0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/ISmartisanManager;->someTqtStat(Landroid/os/Bundle;)V

    .line 60
    invoke-static {p0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/SmartisanManager;->getManager(Landroid/content/Context;)Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/ISmartisanManager;

    move-result-object v2

    invoke-interface {v2}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/ISmartisanManager;->enterMainKpStat()V

    .line 61
    invoke-static {p0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/SmartisanManager;->getManager(Landroid/content/Context;)Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/ISmartisanManager;

    move-result-object v2

    invoke-interface {v2}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/ISmartisanManager;->autoRefreshKpStat()V

    .line 62
    invoke-static {p0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/SmartisanManager;->getManager(Landroid/content/Context;)Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/ISmartisanManager;

    move-result-object v2

    invoke-interface {v2}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/ISmartisanManager;->userRefreshKpStat()V

    .line 63
    invoke-static {p0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/SmartisanManager;->getManager(Landroid/content/Context;)Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/ISmartisanManager;

    move-result-object v2

    invoke-interface {v2}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/ISmartisanManager;->usingWeatherNotiKpStat()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .end local v0    # "bundle":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 64
    :catch_0
    move-exception v1

    .line 65
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static exit(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 100
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/SmartisanManager;->getManager(Landroid/content/Context;)Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/ISmartisanManager;

    move-result-object v1

    invoke-interface {v1}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/ISmartisanManager;->exitSinaStat()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :goto_0
    return-void

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 31
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "INIT_BOOLEAN_WEATHER_NOTIFICATION_ACTIVATE"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 32
    const-string v3, "INIT_BOOLEAN_AUTO_UPDATE_ACTIVATE"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 33
    const-string v3, "INIT_STRING_LOCATE_CITYCOD"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-static {p0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/SmartisanManager;->getManager(Landroid/content/Context;)Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/ISmartisanManager;

    move-result-object v3

    invoke-interface {v3, v0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/ISmartisanManager;->init(Landroid/os/Bundle;)V

    .line 35
    invoke-static {p0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/SmartisanManager;->getManager(Landroid/content/Context;)Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/ISmartisanManager;

    move-result-object v3

    invoke-interface {v3}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/ISmartisanManager;->initTqtStat()V

    .line 36
    invoke-static {p0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/SmartisanManager;->getManager(Landroid/content/Context;)Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/ISmartisanManager;

    move-result-object v3

    invoke-interface {v3}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/ISmartisanManager;->initSinaStat()V

    .line 37
    invoke-static {p0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/SmartisanManager;->getManager(Landroid/content/Context;)Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/ISmartisanManager;

    move-result-object v3

    invoke-interface {v3}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/ISmartisanManager;->usingWeatherNotiKpStat()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .end local v0    # "bundle":Landroid/os/Bundle;
    :goto_0
    :try_start_1
    const-string v3, "TQT_SYNC_TIME"

    const-string v4, "0"

    invoke-static {p0, v3, v4}, Lcom/smartisanos/launcher/data/LauncherPreferences;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 43
    .local v2, "str":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    sput-wide v4, Lcom/smartisanos/home/action/TqtAction;->TQT_LAST_SYNC_TIME:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 48
    .end local v2    # "str":Ljava/lang/String;
    :goto_1
    return-void

    .line 38
    :catch_0
    move-exception v1

    .line 39
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 44
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 45
    .restart local v1    # "e":Ljava/lang/Exception;
    const-wide/16 v4, 0x0

    sput-wide v4, Lcom/smartisanos/home/action/TqtAction;->TQT_LAST_SYNC_TIME:J

    .line 46
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static sendDataIfNeeded(Landroid/content/Context;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 75
    .local v2, "time":J
    sget-wide v4, Lcom/smartisanos/home/action/TqtAction;->TQT_LAST_SYNC_TIME:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_0

    sget-wide v4, Lcom/smartisanos/home/action/TqtAction;->TQT_LAST_SYNC_TIME:J

    sub-long v4, v2, v4

    const-wide/32 v6, 0x5265c00

    cmp-long v1, v4, v6

    if-gez v1, :cond_1

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/data/Utils;->isWifiConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/SmartisanManager;->getManager(Landroid/content/Context;)Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/ISmartisanManager;

    move-result-object v1

    invoke-interface {v1}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/ISmartisanManager;->sendSinaStat()V

    .line 84
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/SmartisanManager;->getManager(Landroid/content/Context;)Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/ISmartisanManager;

    move-result-object v1

    invoke-interface {v1}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/ISmartisanManager;->sendTqtStat()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 89
    :goto_1
    :try_start_1
    const-string v1, "TQT_SYNC_TIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v1, v4}, Lcom/smartisanos/launcher/data/LauncherPreferences;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 85
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 86
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
