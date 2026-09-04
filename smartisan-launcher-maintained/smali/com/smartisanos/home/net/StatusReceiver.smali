.class public Lcom/smartisanos/home/net/StatusReceiver;
.super Landroid/content/BroadcastReceiver;
.source "StatusReceiver.java"


.field private static final BATTERY_LOW_LEVEL:I = 0x28

.field private static final SYNC_ICON_WAIT_DAY:I = 0x7

.field public static volatile batteryLow:Z

.field private static final log:Lcom/smartisanos/launcher/LOG;

.field public static volatile networkConnected:Z

.field public static volatile powConnected:Z


.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 18
    const-class v0, Lcom/smartisanos/home/net/StatusReceiver;

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/home/net/StatusReceiver;->log:Lcom/smartisanos/launcher/LOG;

    .line 22
    sput-boolean v1, Lcom/smartisanos/home/net/StatusReceiver;->powConnected:Z

    .line 23
    sput-boolean v1, Lcom/smartisanos/home/net/StatusReceiver;->batteryLow:Z

    .line 24
    sput-boolean v1, Lcom/smartisanos/home/net/StatusReceiver;->networkConnected:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static bothWifiAndPluggedOk()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 128
    sget-boolean v1, Lcom/smartisanos/home/net/StatusReceiver;->networkConnected:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/smartisanos/home/net/StatusReceiver;->isBatteryStatusOk()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    sput-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_DOWNLOAD_ICON:Z

    .line 132
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isBatteryStatusOk()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 145
    sget-boolean v1, Lcom/smartisanos/home/net/StatusReceiver;->powConnected:Z

    if-eqz v1, :cond_1

    .line 151
    :cond_0
    :goto_0
    return v0

    .line 148
    :cond_1
    sget-boolean v1, Lcom/smartisanos/home/net/StatusReceiver;->batteryLow:Z

    if-eqz v1, :cond_0

    .line 149
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPlugged(I)Z
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 157
    const/4 v0, 0x0

    .line 158
    .local v0, "plugged":Z
    packed-switch p1, :pswitch_data_0

    .line 172
    :goto_0
    :pswitch_0
    return v0

    .line 160
    :pswitch_1
    const/4 v0, 0x1

    .line 162
    goto :goto_0

    .line 164
    :pswitch_2
    const/4 v0, 0x1

    .line 166
    goto :goto_0

    .line 168
    :pswitch_3
    const/4 v0, 0x1

    goto :goto_0

    .line 158
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static tryToFetch()V
    .locals 1

    .prologue
    return-void

    .line 176
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/smartisanos/home/net/StatusReceiver;->tryToFetch(Z)V

    .line 177
    return-void
.end method

.method public static tryToFetch(Z)V
    .locals 4
    .param p0, "checkUpdateTime"    # Z

    .prologue
    return-void

    .line 180
    sget-object v0, Lcom/smartisanos/home/net/StatusReceiver;->log:Lcom/smartisanos/launcher/LOG;

    const-string v1, "DEBUG"

    const-string v2, "tryToFetch begin"

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-static {}, Lcom/smartisanos/home/net/StatusReceiver;->bothWifiAndPluggedOk()Z

    move-result v0

    if-nez v0, :cond_0

    .line 182
    sget-object v0, Lcom/smartisanos/home/net/StatusReceiver;->log:Lcom/smartisanos/launcher/LOG;

    const-string v1, "DEBUG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tryToFetch bothWifiAndPluggedOk false, mPowerConnected ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/smartisanos/home/net/StatusReceiver;->isBatteryStatusOk()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], mWifiStatus ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/smartisanos/home/net/StatusReceiver;->networkConnected:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    :goto_0
    return-void

    .line 186
    :cond_0
    if-eqz p0, :cond_1

    .line 187
    invoke-static {}, Lcom/smartisanos/home/net/StatusReceiver;->verifyLastUpdateTime()Z

    move-result v0

    if-nez v0, :cond_1

    .line 188
    sget-object v0, Lcom/smartisanos/home/net/StatusReceiver;->log:Lcom/smartisanos/launcher/LOG;

    const-string v1, "DEBUG"

    const-string v2, "tryToFetch return by time is too close"

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 192
    :cond_1
    sget-object v0, Lcom/smartisanos/home/net/StatusReceiver;->log:Lcom/smartisanos/launcher/LOG;

    const-string v1, "DEBUG"

    const-string v2, "NetworkStatusReceiver tryToFetch"

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    sget-object v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->EVENT_REQUEST_FETCH_ICON:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    invoke-static {v0}, Lcom/smartisanos/launcher/data/DatabaseUpdater;->updateDatabase(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;)V

    goto :goto_0
.end method

.method public static updateNetStatus()V
    .locals 4

    .prologue
    .line 136
    invoke-static {}, Lcom/smartisanos/home/net/NetStatusUtil;->isEnableCellularDownload()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    invoke-static {}, Lcom/smartisanos/home/net/NetStatusUtil;->isNetworkConnected()Z

    move-result v0

    sput-boolean v0, Lcom/smartisanos/home/net/StatusReceiver;->networkConnected:Z

    .line 141
    :goto_0
    sget-object v0, Lcom/smartisanos/home/net/StatusReceiver;->log:Lcom/smartisanos/launcher/LOG;

    const-string v1, "DEBUG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateNetStatus networkConnected = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/smartisanos/home/net/StatusReceiver;->networkConnected:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    return-void

    .line 139
    :cond_0
    invoke-static {}, Lcom/smartisanos/home/net/NetStatusUtil;->isWifiConnected()Z

    move-result v0

    sput-boolean v0, Lcom/smartisanos/home/net/StatusReceiver;->networkConnected:Z

    goto :goto_0
.end method

.method public static updateStatus()V
    .locals 5

    .prologue
    .line 112
    const/4 v0, 0x0

    .line 113
    .local v0, "enable":Z
    sget-boolean v1, Lcom/smartisanos/home/net/StatusReceiver;->networkConnected:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/smartisanos/home/net/StatusReceiver;->isBatteryStatusOk()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    const/4 v0, 0x1

    .line 117
    :cond_0
    if-nez v0, :cond_1

    .line 118
    sget-object v1, Lcom/smartisanos/home/net/StatusReceiver;->log:Lcom/smartisanos/launcher/LOG;

    const-string v2, "DEBUG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "networkConnected ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/smartisanos/home/net/StatusReceiver;->networkConnected:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "], isBatteryStatusOk ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/smartisanos/home/net/StatusReceiver;->isBatteryStatusOk()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :cond_1
    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->ENABLE_DOWNLOAD_ICON:Z

    if-eq v1, v0, :cond_2

    .line 122
    sput-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_DOWNLOAD_ICON:Z

    .line 123
    sget-object v1, Lcom/smartisanos/home/net/StatusReceiver;->log:Lcom/smartisanos/launcher/LOG;

    const-string v2, "DEBUG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateStatus ENABLE_DOWNLOAD_ICON = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/smartisanos/launcher/data/Constants;->ENABLE_DOWNLOAD_ICON:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    if-eqz v0, :cond_2

    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->ENABLE_SYNC_APP_ICON:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/smartisanos/home/net/StatusReceiver;->tryToFetch(Z)V

    .line 125
    :cond_2
    return-void
.end method

.method private static verifyLastUpdateTime()Z
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const/4 v3, 0x1

    .line 199
    const-string v8, "last_icon_sync_time"

    invoke-static {v8, v10, v11}, Lcom/smartisanos/launcher/data/LauncherSettings;->readSetting(Ljava/lang/String;J)J

    move-result-wide v4

    .line 200
    .local v4, "last_update_time":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 201
    .local v0, "current_time":J
    cmp-long v8, v4, v10

    if-nez v8, :cond_1

    .line 210
    :cond_0
    :goto_0
    return v3

    .line 204
    :cond_1
    sub-long v6, v0, v4

    .line 205
    .local v6, "time":J
    const-wide/16 v8, 0x3e8

    div-long v8, v6, v8

    const-wide/16 v10, 0xe10

    div-long/2addr v8, v10

    const-wide/16 v10, 0x18

    div-long/2addr v8, v10

    long-to-int v2, v8

    .line 206
    .local v2, "day":I
    sget-object v8, Lcom/smartisanos/home/net/StatusReceiver;->log:Lcom/smartisanos/launcher/LOG;

    const-string v9, "DEBUG"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "verifyLastUpdateTime calculate day == "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const/4 v8, 0x7

    if-ge v2, v8, :cond_0

    .line 210
    const/4 v3, 0x0

    goto :goto_0
.end method


.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 28
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 29
    .local v1, "action":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 32
    :cond_1
    const/4 v10, 0x0

    .line 34
    .local v10, "statusChanged":Z
    const/4 v4, 0x0

    .line 35
    .local v4, "needTry":Z
    const/4 v7, 0x1

    .line 36
    .local v7, "sBatteryLow":Z
    const/4 v9, 0x0

    .line 37
    .local v9, "sPlugIn":Z
    const/4 v8, 0x0

    .line 38
    .local v8, "sNetConnected":Z
    const-string v12, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 39
    const-string v12, "level"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 40
    .local v2, "level":I
    const/16 v12, 0x28

    if-le v2, v12, :cond_6

    .line 41
    const/4 v7, 0x0

    .line 45
    :goto_1
    const-string v12, "plugged"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 46
    .local v6, "plugType":I
    packed-switch v6, :pswitch_data_0

    .line 84
    .end local v2    # "level":I
    .end local v6    # "plugType":I
    :cond_2
    :goto_2
    :pswitch_0
    sget-boolean v12, Lcom/smartisanos/home/net/StatusReceiver;->batteryLow:Z

    if-eq v12, v7, :cond_3

    .line 85
    sput-boolean v7, Lcom/smartisanos/home/net/StatusReceiver;->batteryLow:Z

    .line 86
    const/4 v10, 0x1

    .line 88
    :cond_3
    sget-boolean v12, Lcom/smartisanos/home/net/StatusReceiver;->powConnected:Z

    if-eq v12, v9, :cond_4

    .line 89
    sput-boolean v9, Lcom/smartisanos/home/net/StatusReceiver;->powConnected:Z

    .line 90
    const/4 v10, 0x1

    .line 93
    :cond_4
    if-eqz v10, :cond_0

    .line 96
    invoke-static {}, Lcom/smartisanos/home/net/StatusReceiver;->updateStatus()V

    .line 97
    invoke-static {}, Lcom/smartisanos/home/net/StatusReceiver;->isBatteryStatusOk()Z

    move-result v12

    if-eqz v12, :cond_5

    sget-boolean v12, Lcom/smartisanos/home/net/StatusReceiver;->networkConnected:Z

    if-eqz v12, :cond_5

    .line 98
    const/4 v4, 0x1

    .line 100
    :cond_5
    sget-object v12, Lcom/smartisanos/home/net/StatusReceiver;->log:Lcom/smartisanos/launcher/LOG;

    const-string v13, "DEBUG"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "needTry ["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "]"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    if-eqz v4, :cond_0

    .line 104
    sget-boolean v12, Lcom/smartisanos/launcher/data/Constants;->ENABLE_SYNC_APP_ICON:Z

    if-eqz v12, :cond_e

    .line 105
    invoke-static {}, Lcom/smartisanos/home/net/StatusReceiver;->tryToFetch()V

    goto :goto_0

    .line 43
    .restart local v2    # "level":I
    :cond_6
    const/4 v7, 0x1

    goto :goto_1

    .line 50
    .restart local v6    # "plugType":I
    :pswitch_1
    const/4 v9, 0x1

    goto :goto_2

    .line 52
    .end local v2    # "level":I
    .end local v6    # "plugType":I
    :cond_7
    const-string v12, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 53
    const/4 v7, 0x1

    goto :goto_2

    .line 54
    :cond_8
    const-string v12, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 55
    const/4 v9, 0x1

    goto :goto_2

    .line 56
    :cond_9
    const-string v12, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 57
    const/4 v9, 0x0

    goto :goto_2

    .line 58
    :cond_a
    const-string v12, "android.intent.action.BATTERY_OKAY"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 59
    const/4 v7, 0x0

    goto :goto_2

    .line 60
    :cond_b
    const-string v12, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 62
    invoke-static {}, Lcom/smartisanos/home/net/NetStatusUtil;->isNetworkConnected()Z

    move-result v5

    .line 63
    .local v5, "netConnected":Z
    invoke-static {}, Lcom/smartisanos/home/net/NetStatusUtil;->isEnableCellularDownload()Z

    move-result v12

    if-eqz v12, :cond_d

    .line 64
    move v8, v5

    .line 69
    :goto_3
    if-nez v5, :cond_c

    .line 70
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f080148

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 71
    .local v3, "msg":Ljava/lang/String;
    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v3, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 72
    .local v11, "toast":Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    .line 75
    .end local v3    # "msg":Ljava/lang/String;
    .end local v11    # "toast":Landroid/widget/Toast;
    :cond_c
    invoke-static {}, Lcom/smartisanos/home/net/NetStatusUtil;->resumeAllDownloadingAppDownload()V

    .line 77
    sget-boolean v12, Lcom/smartisanos/home/net/StatusReceiver;->networkConnected:Z

    if-eq v12, v8, :cond_2

    .line 78
    sput-boolean v8, Lcom/smartisanos/home/net/StatusReceiver;->networkConnected:Z

    .line 79
    sget-object v12, Lcom/smartisanos/home/net/StatusReceiver;->log:Lcom/smartisanos/launcher/LOG;

    const-string v13, "DEBUG"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "CONNECTIVITY_ACTION => "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const/4 v10, 0x1

    goto/16 :goto_2

    .line 66
    :cond_d
    invoke-static {}, Lcom/smartisanos/home/net/NetStatusUtil;->isWifiConnected()Z

    move-result v8

    goto :goto_3

    .line 107
    .end local v5    # "netConnected":Z
    :cond_e
    sget-object v12, Lcom/smartisanos/home/net/StatusReceiver;->log:Lcom/smartisanos/launcher/LOG;

    const-string v13, "DEBUG"

    const-string v14, "tryToFetch, but ENABLE_SYNC_APP_ICON is false nothing to do"

    invoke-virtual {v12, v13, v14}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 46
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
