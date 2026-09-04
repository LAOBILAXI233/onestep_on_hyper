.class public Lcom/smartisan/weather/lib/WeatherHelper;
.super Ljava/lang/Object;
.source "WeatherHelper.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisan/weather/lib/WeatherHelper$LocationTask;,
        Lcom/smartisan/weather/lib/WeatherHelper$QueryTask;,
        Lcom/smartisan/weather/lib/WeatherHelper$LocationListener;,
        Lcom/smartisan/weather/lib/WeatherHelper$WeatherListener;
    }
.end annotation


.field public static final ACTION_UPDATE_LOCATION:Ljava/lang/String; = "update_location"

.field public static final MESSAGE_STOP_SELF:I = 0x19

.field public static final PREF_KEY_LAST_UPDATE:Ljava/lang/String; = "last_update"

.field public static final PREF_UPDATE_SERVICE:Ljava/lang/String; = "pref_update_service"

.field public static final TAG:Ljava/lang/String; = "WeatherHelper"

.field public static final UPDATE_TRIGGER_MILLIES:J = 0x1b7740L


.field public final TABLE_NAME:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field protected mLocationWrapper:Lcom/smartisan/weather/lib/location/LocationWrapper;


.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string v0, "weather_provider"

    iput-object v0, p0, Lcom/smartisan/weather/lib/WeatherHelper;->TABLE_NAME:Ljava/lang/String;

    .line 60
    iput-object p1, p0, Lcom/smartisan/weather/lib/WeatherHelper;->mContext:Landroid/content/Context;

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/smartisan/weather/lib/WeatherHelper;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/smartisan/weather/lib/WeatherHelper;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/smartisan/weather/lib/WeatherHelper;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-static {p0}, Lcom/smartisan/weather/lib/WeatherHelper;->isUpdateValid(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/smartisan/weather/lib/WeatherHelper;Lcom/smartisan/weather/lib/WeatherHelper$WeatherListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/smartisan/weather/lib/WeatherHelper;
    .param p1, "x1"    # Lcom/smartisan/weather/lib/WeatherHelper$WeatherListener;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/smartisan/weather/lib/WeatherHelper;->reuqestLocation(Lcom/smartisan/weather/lib/WeatherHelper$WeatherListener;)V

    return-void
.end method

.method static synthetic access$300(Lcom/smartisan/weather/lib/WeatherHelper;Lcom/amap/api/location/AMapLocation;)V
    .locals 0
    .param p0, "x0"    # Lcom/smartisan/weather/lib/WeatherHelper;
    .param p1, "x1"    # Lcom/amap/api/location/AMapLocation;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/smartisan/weather/lib/WeatherHelper;->updateLocation(Lcom/amap/api/location/AMapLocation;)V

    return-void
.end method

.method static synthetic access$400(Lcom/smartisan/weather/lib/WeatherHelper;)Lcom/smartisan/weather/lib/bean/Weather;
    .locals 1
    .param p0, "x0"    # Lcom/smartisan/weather/lib/WeatherHelper;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/smartisan/weather/lib/WeatherHelper;->updateWeathers()Lcom/smartisan/weather/lib/bean/Weather;

    move-result-object v0

    return-object v0
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/smartisan/weather/lib/WeatherHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getGeocoderResult(Landroid/content/Context;Lcom/amap/api/location/AMapLocation;)[Ljava/lang/String;
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "location"    # Lcom/amap/api/location/AMapLocation;

    .prologue
    const/4 v11, 0x0

    .line 153
    const-string v8, "WeatherHelper"

    const-string v9, "getGeocoderResult"

    invoke-static {v8, v9}, Lcom/smartisan/weather/lib/util/DebugLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const/4 v6, 0x0

    .line 155
    .local v6, "result":[Ljava/lang/String;
    if-eqz p2, :cond_2

    .line 156
    const-string v8, "WeatherHelper"

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

    .line 157
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

    .line 156
    invoke-static {v8, v9}, Lcom/smartisan/weather/lib/util/DebugLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-virtual {p2}, Lcom/amap/api/location/AMapLocation;->getProvince()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_3

    invoke-virtual {p2}, Lcom/amap/api/location/AMapLocation;->getCity()Ljava/lang/String;

    move-result-object v8

    :goto_0
    invoke-static {v8}, Lcom/smartisan/weather/lib/ResMappingUtil;->getCitySimpleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, "adminArea":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/amap/api/location/AMapLocation;->getCity()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/smartisan/weather/lib/ResMappingUtil;->getCitySimpleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, "locality":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/amap/api/location/AMapLocation;->getDistrict()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/smartisan/weather/lib/ResMappingUtil;->getCitySimpleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 163
    .local v7, "subLocality":Ljava/lang/String;
    const-string v8, "WeatherHelper"

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

    .line 164
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 165
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/smartisan/weather/lib/R$string;->region_type_1:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 166
    .local v2, "regionType1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/smartisan/weather/lib/R$string;->region_type_2:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 167
    .local v3, "regionType2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/smartisan/weather/lib/R$string;->region_type_3:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 168
    .local v4, "regionType3":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/smartisan/weather/lib/R$string;->region_type_4:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 169
    .local v5, "regionType4":Ljava/lang/String;
    const/4 v8, 0x4

    new-array v6, v8, [Ljava/lang/String;

    .line 170
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 171
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 172
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v0, v11, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 176
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 177
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v1, v11, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 182
    :goto_2
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 183
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 184
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 185
    :cond_1
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v11, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 189
    :goto_3
    const-string v8, "WeatherHelper"

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

    .line 190
    aput-object v0, v6, v11

    .line 191
    const/4 v8, 0x1

    aput-object v1, v6, v8

    .line 192
    const/4 v8, 0x2

    aput-object v7, v6, v8

    .line 193
    const/4 v8, 0x3

    aput-object v7, v6, v8

    .line 196
    .end local v0    # "adminArea":Ljava/lang/String;
    .end local v1    # "locality":Ljava/lang/String;
    .end local v2    # "regionType1":Ljava/lang/String;
    .end local v3    # "regionType2":Ljava/lang/String;
    .end local v4    # "regionType3":Ljava/lang/String;
    .end local v5    # "regionType4":Ljava/lang/String;
    .end local v7    # "subLocality":Ljava/lang/String;
    :cond_2
    return-object v6

    .line 160
    :cond_3
    invoke-virtual {p2}, Lcom/amap/api/location/AMapLocation;->getProvince()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 174
    .restart local v0    # "adminArea":Ljava/lang/String;
    .restart local v1    # "locality":Ljava/lang/String;
    .restart local v2    # "regionType1":Ljava/lang/String;
    .restart local v3    # "regionType2":Ljava/lang/String;
    .restart local v4    # "regionType3":Ljava/lang/String;
    .restart local v5    # "regionType4":Ljava/lang/String;
    .restart local v7    # "subLocality":Ljava/lang/String;
    :cond_4
    const-string v8, "WeatherHelper"

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

    .line 179
    :cond_5
    const-string v8, "WeatherHelper"

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

    .line 187
    :cond_6
    const-string v8, "WeatherHelper"

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

    .line 247
    const/4 v5, 0x0

    .line 248
    .local v5, "result":Z
    invoke-static {p0}, Lcom/smartisan/weather/lib/Utility;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 249
    const-string v7, "pref_update_service"

    invoke-virtual {p0, v7, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 252
    .local v4, "mSharedPreferences":Landroid/content/SharedPreferences;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 253
    .local v0, "current":J
    const-string v7, "last_update"

    const-wide/16 v8, 0x0

    invoke-interface {v4, v7, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 254
    .local v2, "lastupdate":J
    sub-long v8, v0, v2

    const-wide/32 v10, 0x1b7740

    cmp-long v7, v8, v10

    if-ltz v7, :cond_1

    const/4 v5, 0x1

    .line 256
    .end local v0    # "current":J
    .end local v2    # "lastupdate":J
    .end local v4    # "mSharedPreferences":Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    const-string v6, "WeatherHelper"

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

    .line 257
    return v5

    .restart local v0    # "current":J
    .restart local v2    # "lastupdate":J
    .restart local v4    # "mSharedPreferences":Landroid/content/SharedPreferences;
    :cond_1
    move v5, v6

    .line 254
    goto :goto_0
.end method

.method public static localWeatherUpdateSuccess(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 222
    const-string v4, "content://com.smartisan.provider.weather/weather/current"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 224
    .local v3, "uriCurrent":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 226
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.smartisan.weather.data.update"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 227
    const-string v4, "pref_update_service"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 230
    .local v2, "mSharedPreferences":Landroid/content/SharedPreferences;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 231
    .local v0, "currentTime":J
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "last_update"

    invoke-interface {v4, v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 232
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 233
    const-string v4, "WeatherHelper"

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

    .line 234
    return-void
.end method

.method private processGeoResult(Lcom/smartisan/weather/lib/db/CityDatabaseHelper;[Ljava/lang/String;)Lcom/smartisan/weather/lib/bean/SinaCity;
    .locals 4
    .param p1, "cityHelper"    # Lcom/smartisan/weather/lib/db/CityDatabaseHelper;
    .param p2, "cityText"    # [Ljava/lang/String;

    .prologue
    .line 200
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

.method private reuqestLocation(Lcom/smartisan/weather/lib/WeatherHelper$WeatherListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/smartisan/weather/lib/WeatherHelper$WeatherListener;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/smartisan/weather/lib/WeatherHelper;->mLocationWrapper:Lcom/smartisan/weather/lib/location/LocationWrapper;

    if-nez v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/smartisan/weather/lib/WeatherHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/smartisan/weather/lib/location/LocationDirector;->build(Landroid/content/Context;)Lcom/smartisan/weather/lib/location/LocationWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisan/weather/lib/WeatherHelper;->mLocationWrapper:Lcom/smartisan/weather/lib/location/LocationWrapper;

    .line 66
    iget-object v0, p0, Lcom/smartisan/weather/lib/WeatherHelper;->mLocationWrapper:Lcom/smartisan/weather/lib/location/LocationWrapper;

    new-instance v1, Lcom/smartisan/weather/lib/WeatherHelper$LocationListener;

    invoke-direct {v1, p0, p1}, Lcom/smartisan/weather/lib/WeatherHelper$LocationListener;-><init>(Lcom/smartisan/weather/lib/WeatherHelper;Lcom/smartisan/weather/lib/WeatherHelper$WeatherListener;)V

    invoke-virtual {v0, v1}, Lcom/smartisan/weather/lib/location/LocationWrapper;->setLocationListener(Lcom/smartisan/weather/lib/location/RequestLocationListener;)V

    .line 68
    :cond_0
    const-string v0, "WeatherHelper"

    const-string v1, "WeatherHelper request update with LocationWrapper"

    invoke-static {v0, v1}, Lcom/smartisan/weather/lib/util/DebugLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/smartisan/weather/lib/WeatherHelper;->mLocationWrapper:Lcom/smartisan/weather/lib/location/LocationWrapper;

    invoke-virtual {v0}, Lcom/smartisan/weather/lib/location/LocationWrapper;->requestOnce()V

    .line 70
    return-void
.end method

.method public static declared-synchronized startService(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 237
    const-class v3, Lcom/smartisan/weather/lib/WeatherHelper;

    monitor-enter v3

    :try_start_0
    const-string v2, "WeatherHelper"

    const-string v4, "startService"

    invoke-static {v2, v4}, Lcom/smartisan/weather/lib/util/DebugLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    invoke-static {p0}, Lcom/smartisan/weather/lib/WeatherHelper;->isUpdateValid(Landroid/content/Context;)Z

    move-result v1

    .line 239
    .local v1, "isUpdateValid":Z
    if-eqz v1, :cond_0

    .line 240
    new-instance v0, Landroid/content/Intent;

    const-string v2, "update_location"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 241
    .local v0, "intent":Landroid/content/Intent;
    const-class v2, Lcom/smartisan/weather/lib/NewUpdateService;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 242
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    monitor-exit v3

    return-void

    .line 237
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
    .line 120
    const-string v6, "WeatherHelper"

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

    .line 121
    if-nez p1, :cond_1

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    invoke-direct {p0}, Lcom/smartisan/weather/lib/WeatherHelper;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/smartisan/weather/lib/db/CityDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/smartisan/weather/lib/db/CityDatabaseHelper;

    move-result-object v4

    .line 126
    .local v4, "mCityHelper":Lcom/smartisan/weather/lib/db/CityDatabaseHelper;
    const/4 v0, 0x0

    .line 128
    .local v0, "city":Lcom/smartisan/weather/lib/bean/SinaCity;
    const/4 v1, 0x0

    .line 130
    .local v1, "cityText":[Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Lcom/smartisan/weather/lib/WeatherHelper;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {p0, v6, p1}, Lcom/smartisan/weather/lib/WeatherHelper;->getGeocoderResult(Landroid/content/Context;Lcom/amap/api/location/AMapLocation;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 134
    :goto_1
    if-eqz v1, :cond_3

    .line 135
    invoke-direct {p0, v4, v1}, Lcom/smartisan/weather/lib/WeatherHelper;->processGeoResult(Lcom/smartisan/weather/lib/db/CityDatabaseHelper;[Ljava/lang/String;)Lcom/smartisan/weather/lib/bean/SinaCity;

    move-result-object v0

    .line 136
    if-nez v0, :cond_2

    .line 137
    invoke-virtual {v4, p1}, Lcom/smartisan/weather/lib/db/CityDatabaseHelper;->getCityByLocation(Landroid/location/Location;)Lcom/smartisan/weather/lib/bean/SinaCity;

    move-result-object v0

    .line 142
    :cond_2
    :goto_2
    const-string v6, "WeatherHelper"

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

    .line 144
    if-eqz v0, :cond_0

    .line 147
    new-instance v5, Lcom/smartisan/weather/lib/bean/SmartisanLocation;

    invoke-direct {v5, v0}, Lcom/smartisan/weather/lib/bean/SmartisanLocation;-><init>(Lcom/smartisan/weather/lib/bean/SinaCity;)V

    .line 148
    .local v5, "newCurrentLocation":Lcom/smartisan/weather/lib/bean/SmartisanLocation;
    invoke-direct {p0}, Lcom/smartisan/weather/lib/WeatherHelper;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/smartisan/weather/lib/db/LocationDBHelper;->getInstance(Landroid/content/Context;)Lcom/smartisan/weather/lib/db/LocationDBHelper;

    move-result-object v3

    .line 149
    .local v3, "helper":Lcom/smartisan/weather/lib/db/LocationDBHelper;
    invoke-virtual {v3, v5}, Lcom/smartisan/weather/lib/db/LocationDBHelper;->updateCurrentLocation(Lcom/smartisan/weather/lib/bean/SmartisanLocation;)Z

    goto :goto_0

    .line 131
    .end local v3    # "helper":Lcom/smartisan/weather/lib/db/LocationDBHelper;
    .end local v5    # "newCurrentLocation":Lcom/smartisan/weather/lib/bean/SmartisanLocation;
    :catch_0
    move-exception v2

    .line 132
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 140
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    invoke-virtual {v4, p1}, Lcom/smartisan/weather/lib/db/CityDatabaseHelper;->getCityByLocation(Landroid/location/Location;)Lcom/smartisan/weather/lib/bean/SinaCity;

    move-result-object v0

    goto :goto_2
.end method

.method private updateWeathers()Lcom/smartisan/weather/lib/bean/Weather;
    .locals 6

    .prologue
    .line 205
    const/4 v2, 0x0

    .line 206
    .local v2, "result":Lcom/smartisan/weather/lib/bean/Weather;
    const-string v4, "WeatherHelper"

    const-string v5, "updateWeathers"

    invoke-static {v4, v5}, Lcom/smartisan/weather/lib/util/DebugLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-direct {p0}, Lcom/smartisan/weather/lib/WeatherHelper;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/smartisan/weather/lib/db/LocationDBHelper;->getInstance(Landroid/content/Context;)Lcom/smartisan/weather/lib/db/LocationDBHelper;

    move-result-object v0

    .line 208
    .local v0, "helper":Lcom/smartisan/weather/lib/db/LocationDBHelper;
    invoke-virtual {v0}, Lcom/smartisan/weather/lib/db/LocationDBHelper;->queryCurrentLocation()Lcom/smartisan/weather/lib/bean/SmartisanLocation;

    move-result-object v1

    .line 209
    .local v1, "location":Lcom/smartisan/weather/lib/bean/SmartisanLocation;
    if-eqz v1, :cond_0

    iget-object v4, v1, Lcom/smartisan/weather/lib/bean/SmartisanLocation;->locationKey:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 210
    invoke-direct {p0}, Lcom/smartisan/weather/lib/WeatherHelper;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, v1, Lcom/smartisan/weather/lib/bean/SmartisanLocation;->locationKey:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/smartisan/weather/lib/util/BusinessUtil;->getWeatherData(Landroid/content/Context;Ljava/lang/String;)Lcom/smartisan/weather/lib/bean/Weather;

    move-result-object v2

    .line 211
    new-instance v3, Lcom/smartisan/weather/lib/db/WeatherProviderDBHelper;

    invoke-direct {p0}, Lcom/smartisan/weather/lib/WeatherHelper;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/smartisan/weather/lib/db/WeatherProviderDBHelper;-><init>(Landroid/content/Context;)V

    .line 212
    .local v3, "weatherDBHelper":Lcom/smartisan/weather/lib/db/WeatherProviderDBHelper;
    invoke-virtual {v3, v2}, Lcom/smartisan/weather/lib/db/WeatherProviderDBHelper;->addOrUpdate(Lcom/smartisan/weather/lib/bean/Weather;)Z

    .line 215
    .end local v3    # "weatherDBHelper":Lcom/smartisan/weather/lib/db/WeatherProviderDBHelper;
    :cond_0
    return-object v2
.end method


.method public requestCurrentWeather(Lcom/smartisan/weather/lib/WeatherHelper$WeatherListener;)V
    .locals 2
    .param p1, "weatherListener"    # Lcom/smartisan/weather/lib/WeatherHelper$WeatherListener;

    .prologue
    .line 73
    new-instance v0, Lcom/smartisan/weather/lib/WeatherHelper$QueryTask;

    invoke-direct {v0, p0, p1}, Lcom/smartisan/weather/lib/WeatherHelper$QueryTask;-><init>(Lcom/smartisan/weather/lib/WeatherHelper;Lcom/smartisan/weather/lib/WeatherHelper$WeatherListener;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/smartisan/weather/lib/WeatherHelper$QueryTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 74
    return-void
.end method
