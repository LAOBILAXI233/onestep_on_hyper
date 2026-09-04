.class public Lcom/smartisan/weather/lib/UpdateService;
.super Landroid/app/IntentService;
.source "UpdateService.java"


.field public static final ACTION_CANCEL_ALARM:Ljava/lang/String; = "cancel_alarm"

.field public static final ACTION_SET_ALARM:Ljava/lang/String; = "set_alarm"

.field public static final ACTION_UPDATE_DATA:Ljava/lang/String; = "update_data"

.field public static final ACTION_UPDATE_LOCATION:Ljava/lang/String; = "update_location"

.field public static final PREF_KEY_LAST_UPDATE:Ljava/lang/String; = "last_update"

.field public static final PREF_UPDATE_SERVICE:Ljava/lang/String; = "pref_update_service"

.field public static final TAG:Ljava/lang/String; = "UpdateService"

.field public static final UPDATE_TRIGGER_MILLIES:J = 0x36ee80L

.field private static sPendingIntent:Landroid/app/PendingIntent;


.method public constructor <init>()V
    .locals 1

    .prologue
    .line 72
    const-string v0, "UpdateService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method private cancelAlarm()V
    .locals 3

    .prologue
    .line 135
    const-string v1, "UpdateService"

    const-string v2, "cancelAlarm"

    invoke-static {v1, v2}, Lcom/smartisan/weather/lib/util/DebugLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Lcom/smartisan/weather/lib/UpdateService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 137
    .local v0, "am":Landroid/app/AlarmManager;
    invoke-direct {p0}, Lcom/smartisan/weather/lib/UpdateService;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 138
    return-void
.end method

.method private cancelLocate()V
    .locals 5

    .prologue
    .line 141
    const-string v3, "location"

    invoke-virtual {p0, v3}, Lcom/smartisan/weather/lib/UpdateService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    .line 142
    .local v1, "lm":Landroid/location/LocationManager;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "update_data"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 143
    .local v0, "intent":Landroid/content/Intent;
    const-class v3, Lcom/smartisan/weather/lib/UpdateService;

    invoke-virtual {v0, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 144
    const/4 v3, 0x0

    const/high16 v4, 0x10000000

    invoke-static {p0, v3, v0, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 146
    .local v2, "pending":Landroid/app/PendingIntent;
    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/app/PendingIntent;)V

    .line 147
    return-void
.end method

.method public static declared-synchronized checkUpdate(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 257
    const-class v3, Lcom/smartisan/weather/lib/UpdateService;

    monitor-enter v3

    :try_start_0
    const-string v2, "UpdateService"

    const-string v4, "checkUpdate"

    invoke-static {v2, v4}, Lcom/smartisan/weather/lib/util/DebugLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    invoke-static {p0}, Lcom/smartisan/weather/lib/UpdateService;->isUpdateValid(Landroid/content/Context;)Z

    move-result v1

    .line 259
    .local v1, "isUpdateValid":Z
    if-eqz v1, :cond_0

    .line 260
    new-instance v0, Landroid/content/Intent;

    const-string v2, "update_location"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 261
    .local v0, "intent":Landroid/content/Intent;
    const-class v2, Lcom/smartisan/weather/lib/UpdateService;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 262
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    monitor-exit v3

    return-void

    .line 264
    :cond_0
    const/4 v2, 0x1

    :try_start_1
    invoke-static {p0, v2}, Lcom/smartisan/weather/lib/UpdateService;->setUpdateAlarm(Landroid/content/Context;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 257
    .end local v1    # "isUpdateValid":Z
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private getGeocoderResult(Landroid/content/Context;Landroid/location/Location;)[Ljava/lang/String;
    .locals 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "location"    # Landroid/location/Location;

    .prologue
    .line 292
    const-string v4, "UpdateService"

    const-string v5, "getGeocoderResult"

    invoke-static {v4, v5}, Lcom/smartisan/weather/lib/util/DebugLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    const/16 v17, 0x0

    .line 294
    .local v17, "result":[Ljava/lang/String;
    new-instance v3, Landroid/location/Geocoder;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    .line 295
    .local v3, "geocoder":Landroid/location/Geocoder;
    const/4 v9, 0x0

    .line 297
    .local v9, "addressList":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    const/4 v8, 0x3

    invoke-virtual/range {v3 .. v8}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 302
    :goto_0
    if-eqz v9, :cond_2

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 303
    const/4 v4, 0x0

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Address;

    .line 304
    .local v2, "address":Landroid/location/Address;
    const-string v4, "UpdateService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "geo decode result,admin:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",locality:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 305
    invoke-virtual {v2}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",subLocal"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/location/Address;->getSubLocality()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 304
    invoke-static {v4, v5}, Lcom/smartisan/weather/lib/util/DebugLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    invoke-virtual {v2}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/smartisan/weather/lib/ResMappingUtil;->getCitySimpleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 307
    .local v10, "adminArea":Ljava/lang/String;
    invoke-virtual {v2}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/smartisan/weather/lib/ResMappingUtil;->getCitySimpleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 308
    .local v12, "locality":Ljava/lang/String;
    invoke-virtual {v2}, Landroid/location/Address;->getSubLocality()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/smartisan/weather/lib/ResMappingUtil;->getCitySimpleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 309
    .local v18, "subLocality":Ljava/lang/String;
    const-string v4, "UpdateService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/smartisan/weather/lib/util/DebugLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 311
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/smartisan/weather/lib/R$string;->region_type_1:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 312
    .local v13, "regionType1":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/smartisan/weather/lib/R$string;->region_type_2:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 313
    .local v14, "regionType2":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/smartisan/weather/lib/R$string;->region_type_3:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 314
    .local v15, "regionType3":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/smartisan/weather/lib/R$string;->region_type_4:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 315
    .local v16, "regionType4":Ljava/lang/String;
    const/4 v4, 0x4

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v17, v0

    .line 316
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 317
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 318
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v10, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 322
    :goto_1
    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 323
    const/4 v4, 0x0

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v12, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 328
    :goto_2
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 329
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 330
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 331
    :cond_1
    const/4 v4, 0x0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    .line 335
    :goto_3
    const-string v4, "UpdateService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/smartisan/weather/lib/util/DebugLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    const/4 v4, 0x0

    aput-object v10, v17, v4

    .line 337
    const/4 v4, 0x1

    aput-object v12, v17, v4

    .line 338
    const/4 v4, 0x2

    aput-object v18, v17, v4

    .line 339
    const/4 v4, 0x3

    invoke-virtual {v2}, Landroid/location/Address;->getSubLocality()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v17, v4

    .line 342
    .end local v2    # "address":Landroid/location/Address;
    .end local v10    # "adminArea":Ljava/lang/String;
    .end local v12    # "locality":Ljava/lang/String;
    .end local v13    # "regionType1":Ljava/lang/String;
    .end local v14    # "regionType2":Ljava/lang/String;
    .end local v15    # "regionType3":Ljava/lang/String;
    .end local v16    # "regionType4":Ljava/lang/String;
    .end local v18    # "subLocality":Ljava/lang/String;
    :cond_2
    return-object v17

    .line 299
    :catch_0
    move-exception v11

    .line 300
    .local v11, "e":Ljava/io/IOException;
    const-string v4, "UpdateService"

    const-string v5, "Geocoder error"

    invoke-static {v4, v5, v11}, Lcom/smartisan/weather/lib/util/DebugLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 320
    .end local v11    # "e":Ljava/io/IOException;
    .restart local v2    # "address":Landroid/location/Address;
    .restart local v10    # "adminArea":Ljava/lang/String;
    .restart local v12    # "locality":Ljava/lang/String;
    .restart local v13    # "regionType1":Ljava/lang/String;
    .restart local v14    # "regionType2":Ljava/lang/String;
    .restart local v15    # "regionType3":Ljava/lang/String;
    .restart local v16    # "regionType4":Ljava/lang/String;
    .restart local v18    # "subLocality":Ljava/lang/String;
    :cond_3
    const-string v4, "UpdateService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "adminArea:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/smartisan/weather/lib/util/DebugLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 325
    :cond_4
    const-string v4, "UpdateService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "locality:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/smartisan/weather/lib/util/DebugLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 333
    :cond_5
    const-string v4, "UpdateService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "subLocality:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/smartisan/weather/lib/util/DebugLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method private getPendingIntent()Landroid/app/PendingIntent;
    .locals 4

    .prologue
    .line 114
    sget-object v1, Lcom/smartisan/weather/lib/UpdateService;->sPendingIntent:Landroid/app/PendingIntent;

    if-nez v1, :cond_0

    .line 115
    new-instance v0, Landroid/content/Intent;

    const-string v1, "update_location"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 116
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/smartisan/weather/lib/UpdateService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 117
    invoke-virtual {p0}, Lcom/smartisan/weather/lib/UpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x10000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    sput-object v1, Lcom/smartisan/weather/lib/UpdateService;->sPendingIntent:Landroid/app/PendingIntent;

    .line 120
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    sget-object v1, Lcom/smartisan/weather/lib/UpdateService;->sPendingIntent:Landroid/app/PendingIntent;

    return-object v1
.end method

.method private static isUpdateValid(Landroid/content/Context;)Z
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 239
    const/4 v5, 0x0

    .line 240
    .local v5, "result":Z
    invoke-static {p0}, Lcom/smartisan/weather/lib/Utility;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 241
    const-string v7, "pref_update_service"

    invoke-virtual {p0, v7, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 244
    .local v4, "mSharedPreferences":Landroid/content/SharedPreferences;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 245
    .local v0, "current":J
    const-string v7, "last_update"

    const-wide/16 v8, 0x0

    invoke-interface {v4, v7, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 246
    .local v2, "lastupdate":J
    sub-long v8, v0, v2

    const-wide/32 v10, 0x36ee80

    cmp-long v7, v8, v10

    if-ltz v7, :cond_1

    const/4 v5, 0x1

    .line 248
    .end local v0    # "current":J
    .end local v2    # "lastupdate":J
    .end local v4    # "mSharedPreferences":Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    const-string v6, "UpdateService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isUpdateValid:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/smartisan/weather/lib/util/DebugLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    return v5

    .restart local v0    # "current":J
    .restart local v2    # "lastupdate":J
    .restart local v4    # "mSharedPreferences":Landroid/content/SharedPreferences;
    :cond_1
    move v5, v6

    .line 246
    goto :goto_0
.end method

.method public static localWeatherUpdateSuccess(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 272
    const-string v4, "content://com.smartisan.provider.weather/weather/current"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 274
    .local v3, "uriCurrent":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 276
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.smartisan.weather.data.update"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 277
    const-string v4, "pref_update_service"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 280
    .local v2, "mSharedPreferences":Landroid/content/SharedPreferences;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 281
    .local v0, "currentTime":J
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "last_update"

    invoke-interface {v4, v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 282
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 283
    const-string v4, "UpdateService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "localWeatherUpdateSuccess, time:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/smartisan/weather/lib/util/DebugLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    return-void
.end method

.method private processGeoResult(Lcom/smartisan/weather/lib/db/CityDatabaseHelper;[Ljava/lang/String;)Lcom/smartisan/weather/lib/bean/SinaCity;
    .locals 4
    .param p1, "cityHelper"    # Lcom/smartisan/weather/lib/db/CityDatabaseHelper;
    .param p2, "cityText"    # [Ljava/lang/String;

    .prologue
    .line 287
    const/4 v0, 0x0

    aget-object v0, p2, v0

    const/4 v1, 0x1

    aget-object v1, p2, v1

    const/4 v2, 0x2

    aget-object v2, p2, v2

    const/4 v3, 0x3

    aget-object v3, p2, v3

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/smartisan/weather/lib/db/CityDatabaseHelper;->getCitysByCNAddressName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/smartisan/weather/lib/bean/SinaCity;

    move-result-object v0

    return-object v0
.end method

.method private reuqestLocation()V
    .locals 7

    .prologue
    .line 150
    invoke-static {p0}, Lcom/smartisan/weather/lib/UpdateService;->isUpdateValid(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 151
    new-instance v6, Landroid/content/Intent;

    const-string v2, "update_data"

    invoke-direct {v6, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 152
    .local v6, "intent":Landroid/content/Intent;
    const-class v2, Lcom/smartisan/weather/lib/UpdateService;

    invoke-virtual {v6, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 153
    const/4 v2, 0x0

    const/high16 v3, 0x10000000

    invoke-static {p0, v2, v6, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 155
    .local v5, "pending":Landroid/app/PendingIntent;
    const-string v2, "location"

    invoke-virtual {p0, v2}, Lcom/smartisan/weather/lib/UpdateService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 156
    .local v0, "lm":Landroid/location/LocationManager;
    const/4 v1, 0x0

    .line 157
    .local v1, "provider":Ljava/lang/String;
    const-string v2, "network"

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 158
    const-string v1, "network"

    .line 160
    :cond_0
    const-string v2, "UpdateService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reuqestLocation, provider:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/smartisan/weather/lib/util/DebugLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    if-eqz v1, :cond_1

    .line 162
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/app/PendingIntent;)V

    .line 165
    .end local v0    # "lm":Landroid/location/LocationManager;
    .end local v1    # "provider":Ljava/lang/String;
    .end local v5    # "pending":Landroid/app/PendingIntent;
    .end local v6    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method private setAlarm()V
    .locals 10

    .prologue
    .line 124
    const-string v6, "pref_update_service"

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Lcom/smartisan/weather/lib/UpdateService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 127
    .local v1, "mSharedPreferences":Landroid/content/SharedPreferences;
    const-string v6, "last_update"

    const-wide/16 v8, 0x0

    invoke-interface {v1, v6, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 128
    .local v2, "lastupdate":J
    const-wide/32 v6, 0x36ee80

    add-long v4, v2, v6

    .line 129
    .local v4, "wakeupTime":J
    const-string v6, "UpdateService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setAlarm, wakeupTime:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/smartisan/weather/lib/util/DebugLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string v6, "alarm"

    invoke-virtual {p0, v6}, Lcom/smartisan/weather/lib/UpdateService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 131
    .local v0, "am":Landroid/app/AlarmManager;
    const/4 v6, 0x1

    invoke-direct {p0}, Lcom/smartisan/weather/lib/UpdateService;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual {v0, v6, v4, v5, v7}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 132
    return-void
.end method

.method public static setUpdateAlarm(Landroid/content/Context;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # Z

    .prologue
    .line 226
    const-string v1, "UpdateService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setUpdateAlarm enable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/smartisan/weather/lib/util/DebugLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    if-eqz p0, :cond_0

    .line 228
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/smartisan/weather/lib/UpdateService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 229
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_1

    .line 230
    const-string v1, "set_alarm"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 236
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void

    .line 232
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_1
    const-string v1, "cancel_alarm"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private updateLocation(Landroid/location/Location;)V
    .locals 9
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 177
    const-string v6, "UpdateService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateLocation:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/smartisan/weather/lib/util/DebugLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    if-nez p1, :cond_1

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    invoke-virtual {p0}, Lcom/smartisan/weather/lib/UpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    .line 181
    invoke-static {v6}, Lcom/smartisan/weather/lib/db/CityDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/smartisan/weather/lib/db/CityDatabaseHelper;

    move-result-object v4

    .line 184
    .local v4, "mCityHelper":Lcom/smartisan/weather/lib/db/CityDatabaseHelper;
    const/4 v0, 0x0

    .line 186
    .local v0, "city":Lcom/smartisan/weather/lib/bean/SinaCity;
    const/4 v1, 0x0

    .line 188
    .local v1, "cityText":[Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, p0, p1}, Lcom/smartisan/weather/lib/UpdateService;->getGeocoderResult(Landroid/content/Context;Landroid/location/Location;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 192
    :goto_1
    if-eqz v1, :cond_3

    .line 193
    invoke-direct {p0, v4, v1}, Lcom/smartisan/weather/lib/UpdateService;->processGeoResult(Lcom/smartisan/weather/lib/db/CityDatabaseHelper;[Ljava/lang/String;)Lcom/smartisan/weather/lib/bean/SinaCity;

    move-result-object v0

    .line 194
    if-nez v0, :cond_2

    .line 195
    invoke-virtual {v4, p1}, Lcom/smartisan/weather/lib/db/CityDatabaseHelper;->getCityByLocation(Landroid/location/Location;)Lcom/smartisan/weather/lib/bean/SinaCity;

    move-result-object v0

    .line 200
    :cond_2
    :goto_2
    const-string v6, "fbb"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ctiy result:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/smartisan/weather/lib/util/DebugLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    if-eqz v0, :cond_0

    .line 205
    new-instance v5, Lcom/smartisan/weather/lib/bean/SmartisanLocation;

    invoke-direct {v5, v0}, Lcom/smartisan/weather/lib/bean/SmartisanLocation;-><init>(Lcom/smartisan/weather/lib/bean/SinaCity;)V

    .line 206
    .local v5, "newCurrentLocation":Lcom/smartisan/weather/lib/bean/SmartisanLocation;
    invoke-virtual {p0}, Lcom/smartisan/weather/lib/UpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/smartisan/weather/lib/db/LocationDBHelper;->getInstance(Landroid/content/Context;)Lcom/smartisan/weather/lib/db/LocationDBHelper;

    move-result-object v3

    .line 207
    .local v3, "helper":Lcom/smartisan/weather/lib/db/LocationDBHelper;
    invoke-virtual {v3, v5}, Lcom/smartisan/weather/lib/db/LocationDBHelper;->updateCurrentLocation(Lcom/smartisan/weather/lib/bean/SmartisanLocation;)Z

    goto :goto_0

    .line 189
    .end local v3    # "helper":Lcom/smartisan/weather/lib/db/LocationDBHelper;
    .end local v5    # "newCurrentLocation":Lcom/smartisan/weather/lib/bean/SmartisanLocation;
    :catch_0
    move-exception v2

    .line 190
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 198
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    invoke-virtual {v4, p1}, Lcom/smartisan/weather/lib/db/CityDatabaseHelper;->getCityByLocation(Landroid/location/Location;)Lcom/smartisan/weather/lib/bean/SinaCity;

    move-result-object v0

    goto :goto_2
.end method

.method private updateWeatherData(Landroid/location/Location;)V
    .locals 3
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 168
    const-string v0, "UpdateService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateWeatherData:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartisan/weather/lib/util/DebugLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-static {p0}, Lcom/smartisan/weather/lib/UpdateService;->isUpdateValid(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    invoke-direct {p0, p1}, Lcom/smartisan/weather/lib/UpdateService;->updateLocation(Landroid/location/Location;)V

    .line 171
    invoke-direct {p0}, Lcom/smartisan/weather/lib/UpdateService;->updateWeathers()V

    .line 172
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.smartisan.weather.update"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/smartisan/weather/lib/UpdateService;->sendBroadcast(Landroid/content/Intent;)V

    .line 174
    :cond_0
    return-void
.end method

.method private updateWeathers()V
    .locals 6

    .prologue
    .line 211
    const-string v4, "UpdateService"

    const-string v5, "updateWeathers"

    invoke-static {v4, v5}, Lcom/smartisan/weather/lib/util/DebugLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    invoke-virtual {p0}, Lcom/smartisan/weather/lib/UpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/smartisan/weather/lib/db/LocationDBHelper;->getInstance(Landroid/content/Context;)Lcom/smartisan/weather/lib/db/LocationDBHelper;

    move-result-object v0

    .line 213
    .local v0, "helper":Lcom/smartisan/weather/lib/db/LocationDBHelper;
    invoke-virtual {v0}, Lcom/smartisan/weather/lib/db/LocationDBHelper;->queryCurrentLocation()Lcom/smartisan/weather/lib/bean/SmartisanLocation;

    move-result-object v1

    .line 214
    .local v1, "location":Lcom/smartisan/weather/lib/bean/SmartisanLocation;
    if-eqz v1, :cond_0

    iget-object v4, v1, Lcom/smartisan/weather/lib/bean/SmartisanLocation;->locationKey:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 215
    new-instance v3, Lcom/smartisan/weather/lib/db/WeatherProviderDBHelper;

    invoke-direct {v3, p0}, Lcom/smartisan/weather/lib/db/WeatherProviderDBHelper;-><init>(Landroid/content/Context;)V

    .line 216
    .local v3, "weatherDBHelper":Lcom/smartisan/weather/lib/db/WeatherProviderDBHelper;
    iget-object v4, v1, Lcom/smartisan/weather/lib/bean/SmartisanLocation;->locationKey:Ljava/lang/String;

    invoke-static {p0, v4}, Lcom/smartisan/weather/lib/util/BusinessUtil;->getWeatherData(Landroid/content/Context;Ljava/lang/String;)Lcom/smartisan/weather/lib/bean/Weather;

    move-result-object v2

    .line 217
    .local v2, "weather":Lcom/smartisan/weather/lib/bean/Weather;
    invoke-virtual {v3, v2}, Lcom/smartisan/weather/lib/db/WeatherProviderDBHelper;->addOrUpdate(Lcom/smartisan/weather/lib/bean/Weather;)Z

    .line 218
    invoke-static {p0}, Lcom/smartisan/weather/lib/UpdateService;->localWeatherUpdateSuccess(Landroid/content/Context;)V

    .line 220
    .end local v2    # "weather":Lcom/smartisan/weather/lib/bean/Weather;
    .end local v3    # "weatherDBHelper":Lcom/smartisan/weather/lib/db/WeatherProviderDBHelper;
    :cond_0
    return-void
.end method


.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 85
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "action":Ljava/lang/String;
    const-string v3, "UpdateService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onHandleIntent, action:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/smartisan/weather/lib/util/DebugLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v3, "set_alarm"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 88
    invoke-direct {p0}, Lcom/smartisan/weather/lib/UpdateService;->setAlarm()V

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    const-string v3, "cancel_alarm"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 90
    invoke-direct {p0}, Lcom/smartisan/weather/lib/UpdateService;->cancelAlarm()V

    .line 91
    invoke-direct {p0}, Lcom/smartisan/weather/lib/UpdateService;->cancelLocate()V

    goto :goto_0

    .line 92
    :cond_2
    const-string v3, "update_location"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 93
    invoke-direct {p0}, Lcom/smartisan/weather/lib/UpdateService;->reuqestLocation()V

    goto :goto_0

    .line 94
    :cond_3
    const-string v3, "update_data"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 95
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 96
    .local v1, "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_4

    const-string v3, "location"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 97
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "location"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Location;

    .line 99
    .local v2, "location":Landroid/location/Location;
    const-string v3, "UpdateService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update_location success, got location:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/smartisan/weather/lib/util/DebugLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-direct {p0, v2}, Lcom/smartisan/weather/lib/UpdateService;->updateWeatherData(Landroid/location/Location;)V

    .line 104
    .end local v2    # "location":Landroid/location/Location;
    :goto_1
    invoke-direct {p0}, Lcom/smartisan/weather/lib/UpdateService;->cancelLocate()V

    goto :goto_0

    .line 102
    :cond_4
    const-string v3, "UpdateService"

    const-string v4, "update_location failed"

    invoke-static {v3, v4}, Lcom/smartisan/weather/lib/util/DebugLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
