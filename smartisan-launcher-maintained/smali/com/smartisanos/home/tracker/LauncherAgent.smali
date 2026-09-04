.class public Lcom/smartisanos/home/tracker/LauncherAgent;
.super Ljava/lang/Object;
.source "LauncherAgent.java"


.field private static final APP_CHANNEL_KEY:Ljava/lang/String; = "AppChannel"

.field public static final KEY_FIRST_LAUNCH_REPORTED:Ljava/lang/String; = "first_launch_reported"

.field private static final TRACK_PREF_FILE_NAME:Ljava/lang/String; = "tracker"

.field private static mTrackerAgent:Lcom/smartisan/trackerlib/Agent;


.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetStringFromLong(J)Ljava/lang/String;
    .locals 4
    .param p0, "millis"    # J

    .prologue
    .line 111
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 112
    .local v1, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 113
    .local v0, "dt":Ljava/util/Date;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static event(Ljava/lang/String;)V
    .locals 1
    .param p0, "eventid"    # Ljava/lang/String;

    .prologue
    .line 70
    sget-object v0, Lcom/smartisanos/home/tracker/LauncherAgent;->mTrackerAgent:Lcom/smartisan/trackerlib/Agent;

    invoke-virtual {v0, p0}, Lcom/smartisan/trackerlib/Agent;->onEvent(Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public static event(Ljava/lang/String;Lcom/smartisanos/home/tracker/TrackerConstants$EventData;)V
    .locals 2
    .param p0, "eventid"    # Ljava/lang/String;
    .param p1, "eventData"    # Lcom/smartisanos/home/tracker/TrackerConstants$EventData;

    .prologue
    .line 74
    sget-object v0, Lcom/smartisanos/home/tracker/LauncherAgent;->mTrackerAgent:Lcom/smartisan/trackerlib/Agent;

    invoke-virtual {p1}, Lcom/smartisanos/home/tracker/TrackerConstants$EventData;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/smartisan/trackerlib/Agent;->onEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public static flush()V
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/smartisanos/home/tracker/LauncherAgent;->mTrackerAgent:Lcom/smartisan/trackerlib/Agent;

    invoke-virtual {v0}, Lcom/smartisan/trackerlib/Agent;->flush()V

    .line 67
    return-void
.end method

.method public static init(Landroid/app/Application;)V
    .locals 7
    .param p0, "application"    # Landroid/app/Application;

    .prologue
    .line 35
    invoke-virtual {p0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 36
    .local v2, "pkg":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 38
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/16 v4, 0x80

    :try_start_0
    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 39
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v4, :cond_0

    .line 40
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "AppChannel"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 41
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "channel key AppChannel does not match, plz check your manifest "

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 50
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 53
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    invoke-static {}, Lcom/smartisan/trackerlib/Agent;->getInstance()Lcom/smartisan/trackerlib/Agent;

    move-result-object v4

    sput-object v4, Lcom/smartisanos/home/tracker/LauncherAgent;->mTrackerAgent:Lcom/smartisan/trackerlib/Agent;

    .line 54
    sget-object v4, Lcom/smartisanos/home/tracker/LauncherAgent;->mTrackerAgent:Lcom/smartisan/trackerlib/Agent;

    invoke-virtual {v4, p0}, Lcom/smartisan/trackerlib/Agent;->init(Landroid/app/Application;)V

    .line 55
    return-void

    .line 43
    .restart local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1
    :try_start_1
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "AppChannel"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/smartisanos/home/HomeConfig;->CHANNEL_ID:I

    .line 44
    const-string v4, "DEBUG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CHANNEL_ID ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/smartisanos/home/HomeConfig;->CHANNEL_ID:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    sget v4, Lcom/smartisanos/home/HomeConfig;->CHANNEL_ID:I

    invoke-static {v4}, Lcom/smartisanos/home/HomeConfig$ChannelRules;->supportSmartisanMarket(I)Z

    move-result v4

    sput-boolean v4, Lcom/smartisanos/home/HomeConfig;->ENABLE_SMARTISAN_MARKET:Z

    .line 47
    sget v4, Lcom/smartisanos/home/HomeConfig;->CHANNEL_ID:I

    invoke-static {v4}, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->setEmbeddedAppByChannelId(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static onLaunch()V
    .locals 2

    .prologue
    .line 59
    :try_start_0
    sget-object v1, Lcom/smartisanos/home/tracker/LauncherAgent;->mTrackerAgent:Lcom/smartisan/trackerlib/Agent;

    invoke-virtual {v1}, Lcom/smartisan/trackerlib/Agent;->onLaunch()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 60
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 61
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static reportNewUser(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 117
    const-string v3, "tracker"

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 118
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "first_launch_reported"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 119
    .local v2, "reported":Z
    if-nez v2, :cond_0

    .line 121
    :try_start_0
    sget-object v3, Lcom/smartisanos/home/tracker/LauncherAgent;->mTrackerAgent:Lcom/smartisan/trackerlib/Agent;

    invoke-virtual {v3}, Lcom/smartisan/trackerlib/Agent;->onNewUser()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "first_launch_reported"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 127
    :cond_0
    return-void

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static setAlarmToUploadTracker(Landroid/content/Context;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 78
    new-instance v8, Landroid/content/Intent;

    const-class v2, Lcom/smartisanos/launcher/receiver/LauncherReceiver;

    invoke-direct {v8, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 79
    .local v8, "intent":Landroid/content/Intent;
    const-string v2, "smartisan.alarm.upload.tracker"

    invoke-virtual {v8, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    invoke-static {p0, v1, v8, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 84
    .local v6, "sender":Landroid/app/PendingIntent;
    const-string v2, "alarm"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 85
    .local v0, "am":Landroid/app/AlarmManager;
    invoke-virtual {v0, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 87
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 88
    .local v7, "calendar":Ljava/util/Calendar;
    const/16 v2, 0xb

    invoke-virtual {v7, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 89
    const/16 v2, 0xc

    invoke-virtual {v7, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 90
    const/16 v2, 0xd

    invoke-virtual {v7, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 91
    const/16 v2, 0xe

    invoke-virtual {v7, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 93
    sget-boolean v2, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "DEBUG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setAlarmToUploadTracker calendar: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; string:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 94
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/smartisanos/home/tracker/LauncherAgent;->GetStringFromLong(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 93
    invoke-static {v2, v3}, Lcom/smartisanos/launcher/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :cond_0
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x2932e00

    .line 95
    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 108
    return-void
.end method
