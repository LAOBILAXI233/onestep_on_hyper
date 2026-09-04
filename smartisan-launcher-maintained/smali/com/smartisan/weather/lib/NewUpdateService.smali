.class public Lcom/smartisan/weather/lib/NewUpdateService;
.super Landroid/app/Service;
.source "NewUpdateService.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisan/weather/lib/NewUpdateService$LocationTask;
    }
.end annotation


.field public static final ACTION_UPDATE_LOCATION:Ljava/lang/String; = "update_location"

.field public static final MESSAGE_STOP_SELF:I = 0x19

.field public static final PREF_KEY_LAST_UPDATE:Ljava/lang/String; = "last_update"

.field public static final PREF_UPDATE_SERVICE:Ljava/lang/String; = "pref_update_service"

.field public static final TAG:Ljava/lang/String; = "NewUpdateService"

.field public static final UPDATE_TRIGGER_MILLIES:J = 0x1b7740L


.field private mHandler:Landroid/os/Handler;

.field private mLocationListener:Lcom/smartisan/weather/lib/location/RequestLocationListener;

.field private mLocationWrapper:Lcom/smartisan/weather/lib/location/LocationWrapper;


.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 57
    new-instance v0, Lcom/smartisan/weather/lib/NewUpdateService$1;

    invoke-direct {v0, p0}, Lcom/smartisan/weather/lib/NewUpdateService$1;-><init>(Lcom/smartisan/weather/lib/NewUpdateService;)V

    iput-object v0, p0, Lcom/smartisan/weather/lib/NewUpdateService;->mHandler:Landroid/os/Handler;

    .line 110
    new-instance v0, Lcom/smartisan/weather/lib/NewUpdateService$2;

    invoke-direct {v0, p0}, Lcom/smartisan/weather/lib/NewUpdateService$2;-><init>(Lcom/smartisan/weather/lib/NewUpdateService;)V

    iput-object v0, p0, Lcom/smartisan/weather/lib/NewUpdateService;->mLocationListener:Lcom/smartisan/weather/lib/location/RequestLocationListener;

    return-void
.end method

.method static synthetic access$000(Lcom/smartisan/weather/lib/NewUpdateService;Lcom/amap/api/location/AMapLocation;)V
    .locals 0
    .param p0, "x0"    # Lcom/smartisan/weather/lib/NewUpdateService;
    .param p1, "x1"    # Lcom/amap/api/location/AMapLocation;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/smartisan/weather/lib/NewUpdateService;->updateLocation(Lcom/amap/api/location/AMapLocation;)V

    return-void
.end method

.method static synthetic access$100(Lcom/smartisan/weather/lib/NewUpdateService;)V
    .locals 0
    .param p0, "x0"    # Lcom/smartisan/weather/lib/NewUpdateService;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/smartisan/weather/lib/NewUpdateService;->updateWeathers()V

    return-void
.end method

.method static synthetic access$200(Lcom/smartisan/weather/lib/NewUpdateService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/smartisan/weather/lib/NewUpdateService;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/smartisan/weather/lib/NewUpdateService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getGeocoderResult(Landroid/content/Context;Lcom/amap/api/location/AMapLocation;)[Ljava/lang/String;
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "location"    # Lcom/amap/api/location/AMapLocation;

    .prologue
    const/4 v11, 0x0

    .line 201
    const-string v8, "NewUpdateService"

    const-string v9, "getGeocoderResult"

    invoke-static {v8, v9}, Lcom/smartisan/weather/lib/util/DebugLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const/4 v6, 0x0

    .line 203
    .local v6, "result":[Ljava/lang/String;
    if-eqz p2, :cond_2

    .line 204
    const-string v8, "NewUpdateService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "geo decode result,admin:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p2}, Lcom/amap/api/location/AMapLocation;->getProvince()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",locality:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 205
    invoke-virtual {p2}, Lcom/amap/api/location/AMapLocation;->getCity()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",subLocal"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p2}, Lcom/amap/api/location/AMapLocation;->getDistrict()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 204
    invoke-static {v8, v9}, Lcom/smartisan/weather/lib/util/DebugLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-virtual {p2}, Lcom/amap/api/location/AMapLocation;->getProvince()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_3

    invoke-virtual {p2}, Lcom/amap/api/location/AMapLocation;->getCity()Ljava/lang/String;

    move-result-object v8

    :goto_0
    invoke-static {v8}, Lcom/smartisan/weather/lib/ResMappingUtil;->getCitySimpleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, "adminArea":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/amap/api/location/AMapLocation;->getCity()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/smartisan/weather/lib/ResMappingUtil;->getCitySimpleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 210
    .local v1, "locality":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/amap/api/location/AMapLocation;->getDistrict()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/smartisan/weather/lib/ResMappingUtil;->getCitySimpleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 211
    .local v7, "subLocality":Ljava/lang/String;
    const-string v8, "NewUpdateService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "|"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "|"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/smartisan/weather/lib/util/DebugLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 213
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/smartisan/weather/lib/R$string;->region_type_1:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 214
    .local v2, "regionType1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/smartisan/weather/lib/R$string;->region_type_2:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 215
    .local v3, "regionType2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/smartisan/weather/lib/R$string;->region_type_3:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 216
    .local v4, "regionType3":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/smartisan/weather/lib/R$string;->region_type_4:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 217
    .local v5, "regionType4":Ljava/lang/String;
    const/4 v8, 0x4

    new-array v6, v8, [Ljava/lang/String;

    .line 218
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 219
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 220
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v0, v11, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 224
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 225
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v1, v11, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 230
    :goto_2
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 231
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 232
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 233
    :cond_1
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v11, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 237
    :goto_3
    const-string v8, "NewUpdateService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "|"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "|"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/smartisan/weather/lib/util/DebugLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    aput-object v0, v6, v11

    .line 239
    const/4 v8, 0x1

    aput-object v1, v6, v8

    .line 240
    const/4 v8, 0x2

    aput-object v7, v6, v8

    .line 241
    const/4 v8, 0x3

    aput-object v7, v6, v8

    .line 244
    .end local v0    # "adminArea":Ljava/lang/String;
    .end local v1    # "locality":Ljava/lang/String;
    .end local v2    # "regionType1":Ljava/lang/String;
    .end local v3    # "regionType2":Ljava/lang/String;
    .end local v4    # "regionType3":Ljava/lang/String;
    .end local v5    # "regionType4":Ljava/lang/String;
    .end local v7    # "subLocality":Ljava/lang/String;
    :cond_2
    return-object v6

    .line 208
    :cond_3
    invoke-virtual {p2}, Lcom/amap/api/location/AMapLocation;->getProvince()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 222
    .restart local v0    # "adminArea":Ljava/lang/String;
    .restart local v1    # "locality":Ljava/lang/String;
    .restart local v2    # "regionType1":Ljava/lang/String;
    .restart local v3    # "regionType2":Ljava/lang/String;
    .restart local v4    # "regionType3":Ljava/lang/String;
    .restart local v5    # "regionType4":Ljava/lang/String;
    .restart local v7    # "subLocality":Ljava/lang/String;
    :cond_4
    const-string v8, "NewUpdateService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "adminArea:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/smartisan/weather/lib/util/DebugLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 227
    :cond_5
    const-string v8, "NewUpdateService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "locality:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/smartisan/weather/lib/util/DebugLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 235
    :cond_6
    const-string v8, "NewUpdateService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "subLocality:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/smartisan/weather/lib/util/DebugLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method private static isUpdateValid(Landroid/content/Context;)Z
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 293
    const/4 v5, 0x0

    .line 294
    .local v5, "result":Z
    invoke-static {p0}, Lcom/smartisan/weather/lib/Utility;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 295
    const-string v7, "pref_update_service"

    invoke-virtual {p0, v7, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 298
    .local v4, "mSharedPreferences":Landroid/content/SharedPreferences;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 299
    .local v0, "current":J
    const-string v7, "last_update"

    const-wide/16 v8, 0x0

    invoke-interface {v4, v7, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 300
    .local v2, "lastupdate":J
    sub-long v8, v0, v2

    const-wide/32 v10, 0x1b7740

    cmp-long v7, v8, v10

    if-ltz v7, :cond_1

    const/4 v5, 0x1

    .line 302
    .end local v0    # "current":J
    .end local v2    # "lastupdate":J
    .end local v4    # "mSharedPreferences":Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    const-string v6, "NewUpdateService"

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

    .line 303
    return v5

    .restart local v0    # "current":J
    .restart local v2    # "lastupdate":J
    .restart local v4    # "mSharedPreferences":Landroid/content/SharedPreferences;
    :cond_1
    move v5, v6

    .line 300
    goto :goto_0
.end method

.method public static localWeatherUpdateSuccess(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 268
    const-string v4, "content://com.smartisan.provider.weather/weather/current"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 270
    .local v3, "uriCurrent":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 272
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.smartisan.weather.data.update"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 273
    const-string v4, "pref_update_service"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 276
    .local v2, "mSharedPreferences":Landroid/content/SharedPreferences;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 277
    .local v0, "currentTime":J
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "last_update"

    invoke-interface {v4, v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 278
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 279
    const-string v4, "NewUpdateService"

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

    .line 280
    return-void
.end method

.method private processGeoResult(Lcom/smartisan/weather/lib/db/CityDatabaseHelper;[Ljava/lang/String;)Lcom/smartisan/weather/lib/bean/SinaCity;
    .locals 4
    .param p1, "cityHelper"    # Lcom/smartisan/weather/lib/db/CityDatabaseHelper;
    .param p2, "cityText"    # [Ljava/lang/String;

    .prologue
    .line 248
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
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/smartisan/weather/lib/NewUpdateService;->mLocationWrapper:Lcom/smartisan/weather/lib/location/LocationWrapper;

    if-nez v0, :cond_0

    .line 94
    invoke-static {p0}, Lcom/smartisan/weather/lib/location/LocationDirector;->build(Landroid/content/Context;)Lcom/smartisan/weather/lib/location/LocationWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisan/weather/lib/NewUpdateService;->mLocationWrapper:Lcom/smartisan/weather/lib/location/LocationWrapper;

    .line 95
    iget-object v0, p0, Lcom/smartisan/weather/lib/NewUpdateService;->mLocationWrapper:Lcom/smartisan/weather/lib/location/LocationWrapper;

    iget-object v1, p0, Lcom/smartisan/weather/lib/NewUpdateService;->mLocationListener:Lcom/smartisan/weather/lib/location/RequestLocationListener;

    invoke-virtual {v0, v1}, Lcom/smartisan/weather/lib/location/LocationWrapper;->setLocationListener(Lcom/smartisan/weather/lib/location/RequestLocationListener;)V

    .line 97
    :cond_0
    const-string v0, "NewUpdateService"

    const-string v1, "UpdateService request update with LocationWrapper"

    invoke-static {v0, v1}, Lcom/smartisan/weather/lib/util/DebugLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/smartisan/weather/lib/NewUpdateService;->mLocationWrapper:Lcom/smartisan/weather/lib/location/LocationWrapper;

    invoke-virtual {v0}, Lcom/smartisan/weather/lib/location/LocationWrapper;->requestOnce()V

    .line 99
    return-void
.end method

.method public static declared-synchronized startService(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 283
    const-class v3, Lcom/smartisan/weather/lib/NewUpdateService;

    monitor-enter v3

    :try_start_0
    const-string v2, "NewUpdateService"

    const-string v4, "startService"

    invoke-static {v2, v4}, Lcom/smartisan/weather/lib/util/DebugLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    invoke-static {p0}, Lcom/smartisan/weather/lib/NewUpdateService;->isUpdateValid(Landroid/content/Context;)Z

    move-result v1

    .line 285
    .local v1, "isUpdateValid":Z
    if-eqz v1, :cond_0

    .line 286
    new-instance v0, Landroid/content/Intent;

    const-string v2, "update_location"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 287
    .local v0, "intent":Landroid/content/Intent;
    const-class v2, Lcom/smartisan/weather/lib/NewUpdateService;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 288
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    monitor-exit v3

    return-void

    .line 283
    .end local v1    # "isUpdateValid":Z
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private updateLocation(Lcom/amap/api/location/AMapLocation;)V
    .locals 9
    .param p1, "location"    # Lcom/amap/api/location/AMapLocation;

    .prologue
    .line 167
    const-string v6, "NewUpdateService"

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

    .line 168
    if-nez p1, :cond_1

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    invoke-virtual {p0}, Lcom/smartisan/weather/lib/NewUpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    .line 171
    invoke-static {v6}, Lcom/smartisan/weather/lib/db/CityDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/smartisan/weather/lib/db/CityDatabaseHelper;

    move-result-object v4

    .line 174
    .local v4, "mCityHelper":Lcom/smartisan/weather/lib/db/CityDatabaseHelper;
    const/4 v0, 0x0

    .line 176
    .local v0, "city":Lcom/smartisan/weather/lib/bean/SinaCity;
    const/4 v1, 0x0

    .line 178
    .local v1, "cityText":[Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, p0, p1}, Lcom/smartisan/weather/lib/NewUpdateService;->getGeocoderResult(Landroid/content/Context;Lcom/amap/api/location/AMapLocation;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 182
    :goto_1
    if-eqz v1, :cond_3

    .line 183
    invoke-direct {p0, v4, v1}, Lcom/smartisan/weather/lib/NewUpdateService;->processGeoResult(Lcom/smartisan/weather/lib/db/CityDatabaseHelper;[Ljava/lang/String;)Lcom/smartisan/weather/lib/bean/SinaCity;

    move-result-object v0

    .line 184
    if-nez v0, :cond_2

    .line 185
    invoke-virtual {v4, p1}, Lcom/smartisan/weather/lib/db/CityDatabaseHelper;->getCityByLocation(Landroid/location/Location;)Lcom/smartisan/weather/lib/bean/SinaCity;

    move-result-object v0

    .line 190
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

    .line 192
    if-eqz v0, :cond_0

    .line 195
    new-instance v5, Lcom/smartisan/weather/lib/bean/SmartisanLocation;

    invoke-direct {v5, v0}, Lcom/smartisan/weather/lib/bean/SmartisanLocation;-><init>(Lcom/smartisan/weather/lib/bean/SinaCity;)V

    .line 196
    .local v5, "newCurrentLocation":Lcom/smartisan/weather/lib/bean/SmartisanLocation;
    invoke-virtual {p0}, Lcom/smartisan/weather/lib/NewUpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/smartisan/weather/lib/db/LocationDBHelper;->getInstance(Landroid/content/Context;)Lcom/smartisan/weather/lib/db/LocationDBHelper;

    move-result-object v3

    .line 197
    .local v3, "helper":Lcom/smartisan/weather/lib/db/LocationDBHelper;
    invoke-virtual {v3, v5}, Lcom/smartisan/weather/lib/db/LocationDBHelper;->updateCurrentLocation(Lcom/smartisan/weather/lib/bean/SmartisanLocation;)Z

    goto :goto_0

    .line 179
    .end local v3    # "helper":Lcom/smartisan/weather/lib/db/LocationDBHelper;
    .end local v5    # "newCurrentLocation":Lcom/smartisan/weather/lib/bean/SmartisanLocation;
    :catch_0
    move-exception v2

    .line 180
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 188
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    invoke-virtual {v4, p1}, Lcom/smartisan/weather/lib/db/CityDatabaseHelper;->getCityByLocation(Landroid/location/Location;)Lcom/smartisan/weather/lib/bean/SinaCity;

    move-result-object v0

    goto :goto_2
.end method

.method private updateWeathers()V
    .locals 6

    .prologue
    .line 253
    const-string v4, "NewUpdateService"

    const-string v5, "updateWeathers"

    invoke-static {v4, v5}, Lcom/smartisan/weather/lib/util/DebugLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    invoke-virtual {p0}, Lcom/smartisan/weather/lib/NewUpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/smartisan/weather/lib/db/LocationDBHelper;->getInstance(Landroid/content/Context;)Lcom/smartisan/weather/lib/db/LocationDBHelper;

    move-result-object v0

    .line 255
    .local v0, "helper":Lcom/smartisan/weather/lib/db/LocationDBHelper;
    invoke-virtual {v0}, Lcom/smartisan/weather/lib/db/LocationDBHelper;->queryCurrentLocation()Lcom/smartisan/weather/lib/bean/SmartisanLocation;

    move-result-object v1

    .line 256
    .local v1, "location":Lcom/smartisan/weather/lib/bean/SmartisanLocation;
    if-eqz v1, :cond_0

    iget-object v4, v1, Lcom/smartisan/weather/lib/bean/SmartisanLocation;->locationKey:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 257
    new-instance v3, Lcom/smartisan/weather/lib/db/WeatherProviderDBHelper;

    invoke-direct {v3, p0}, Lcom/smartisan/weather/lib/db/WeatherProviderDBHelper;-><init>(Landroid/content/Context;)V

    .line 258
    .local v3, "weatherDBHelper":Lcom/smartisan/weather/lib/db/WeatherProviderDBHelper;
    iget-object v4, v1, Lcom/smartisan/weather/lib/bean/SmartisanLocation;->locationKey:Ljava/lang/String;

    invoke-static {p0, v4}, Lcom/smartisan/weather/lib/util/BusinessUtil;->getWeatherData(Landroid/content/Context;Ljava/lang/String;)Lcom/smartisan/weather/lib/bean/Weather;

    move-result-object v2

    .line 259
    .local v2, "weather":Lcom/smartisan/weather/lib/bean/Weather;
    invoke-virtual {v3, v2}, Lcom/smartisan/weather/lib/db/WeatherProviderDBHelper;->addOrUpdate(Lcom/smartisan/weather/lib/bean/Weather;)Z

    .line 260
    invoke-static {p0}, Lcom/smartisan/weather/lib/NewUpdateService;->localWeatherUpdateSuccess(Landroid/content/Context;)V

    .line 262
    .end local v2    # "weather":Lcom/smartisan/weather/lib/bean/Weather;
    .end local v3    # "weatherDBHelper":Lcom/smartisan/weather/lib/db/WeatherProviderDBHelper;
    :cond_0
    return-void
.end method


.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 107
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 69
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 70
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 85
    const-string v0, "NewUpdateService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/smartisan/weather/lib/util/DebugLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/smartisan/weather/lib/NewUpdateService;->mLocationWrapper:Lcom/smartisan/weather/lib/location/LocationWrapper;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/smartisan/weather/lib/NewUpdateService;->mLocationWrapper:Lcom/smartisan/weather/lib/location/LocationWrapper;

    invoke-virtual {v0}, Lcom/smartisan/weather/lib/location/LocationWrapper;->destroy()V

    .line 89
    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 90
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 74
    const-string v0, "NewUpdateService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartCommand:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartisan/weather/lib/util/DebugLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v0, "update_location"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    invoke-direct {p0}, Lcom/smartisan/weather/lib/NewUpdateService;->reuqestLocation()V

    .line 80
    :goto_0
    const/4 v0, 0x2

    return v0

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/smartisan/weather/lib/NewUpdateService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x19

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
