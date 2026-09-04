.class public Lcom/loc/e;
.super Ljava/lang/Object;
.source "CoreUtil.java"


.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;

.field public static f:Ljava/lang/String;

.field public static g:Ljava/lang/String;

.field public static h:Ljava/lang/String;

.field public static i:Ljava/lang/String;

.field public static j:I

.field public static k:Ljava/lang/String;

.field public static l:Ljava/lang/String;

.field public static m:I

.field public static n:Z

.field public static o:I

.field static p:Ljava/lang/String;

.field static q:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final r:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static s:Ljava/lang/String;

.field private static t:[Ljava/lang/String;


.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "http://apilocate.amap.com/mobile/binary"

    sput-object v0, Lcom/loc/e;->s:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/loc/e;->a:Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "com.amap.api.location"

    aput-object v1, v0, v4

    const-string v1, "com.autonavi.aps.amapapi"

    aput-object v1, v0, v3

    sput-object v0, Lcom/loc/e;->t:[Ljava/lang/String;

    sput-object v2, Lcom/loc/e;->b:Ljava/lang/String;

    sput-object v2, Lcom/loc/e;->c:Ljava/lang/String;

    sput-object v2, Lcom/loc/e;->d:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/loc/e;->e:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/loc/e;->f:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/loc/e;->g:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/loc/e;->h:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/loc/e;->i:Ljava/lang/String;

    const/16 v0, 0x7530

    sput v0, Lcom/loc/e;->j:I

    sput-object v2, Lcom/loc/e;->k:Ljava/lang/String;

    sput-object v2, Lcom/loc/e;->l:Ljava/lang/String;

    const/16 v0, 0x14

    sput v0, Lcom/loc/e;->m:I

    sput-boolean v3, Lcom/loc/e;->n:Z

    sput v3, Lcom/loc/e;->o:I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/loc/e;->r:Landroid/util/SparseArray;

    sget-object v0, Lcom/loc/e;->r:Landroid/util/SparseArray;

    const-string v1, "UNKWN"

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v0, Lcom/loc/e;->r:Landroid/util/SparseArray;

    const-string v1, "GPRS"

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v0, Lcom/loc/e;->r:Landroid/util/SparseArray;

    const-string v1, "EDGE"

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v0, Lcom/loc/e;->r:Landroid/util/SparseArray;

    const/4 v1, 0x3

    const-string v2, "UMTS"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v0, Lcom/loc/e;->r:Landroid/util/SparseArray;

    const/4 v1, 0x4

    const-string v2, "CDMA"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v0, Lcom/loc/e;->r:Landroid/util/SparseArray;

    const/4 v1, 0x5

    const-string v2, "EVDO_0"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v0, Lcom/loc/e;->r:Landroid/util/SparseArray;

    const/4 v1, 0x6

    const-string v2, "EVDO_A"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v0, Lcom/loc/e;->r:Landroid/util/SparseArray;

    const/4 v1, 0x7

    const-string v2, "1xRTT"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v0, Lcom/loc/e;->r:Landroid/util/SparseArray;

    const/16 v1, 0x8

    const-string v2, "HSDPA"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v0, Lcom/loc/e;->r:Landroid/util/SparseArray;

    const/16 v1, 0x9

    const-string v2, "HSUPA"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v0, Lcom/loc/e;->r:Landroid/util/SparseArray;

    const/16 v1, 0xa

    const-string v2, "HSPA"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v0, Lcom/loc/e;->r:Landroid/util/SparseArray;

    const/16 v1, 0xb

    const-string v2, "IDEN"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v0, Lcom/loc/e;->r:Landroid/util/SparseArray;

    const/16 v1, 0xc

    const-string v2, "EVDO_B"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v0, Lcom/loc/e;->r:Landroid/util/SparseArray;

    const/16 v1, 0xd

    const-string v2, "LTE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v0, Lcom/loc/e;->r:Landroid/util/SparseArray;

    const/16 v1, 0xe

    const-string v2, "EHRPD"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v0, Lcom/loc/e;->r:Landroid/util/SparseArray;

    const/16 v1, 0xf

    const-string v2, "HSPAP"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Lcom/amap/api/location/AMapLocation;
    .locals 4

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a()I

    move-result v1

    new-instance v0, Lcom/amap/api/location/AMapLocation;

    const-string v2, ""

    invoke-direct {v0, v2}, Lcom/amap/api/location/AMapLocation;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->i()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/amap/api/location/AMapLocation;->setLatitude(D)V

    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->h()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/amap/api/location/AMapLocation;->setLongitude(D)V

    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->j()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/amap/api/location/AMapLocation;->setAccuracy(F)V

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->k()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/amap/api/location/AMapLocation;->setTime(J)V

    :goto_1
    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->r()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amap/api/location/AMapLocation;->setCountry(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->v()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amap/api/location/AMapLocation;->setRoad(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setErrorCode(I)V

    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setErrorInfo(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setLocationDetail(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setLocationType(I)V

    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setPoiName(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->w()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setStreet(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->x()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setNumber(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->e()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setOffset(Z)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "citycode"

    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "desc"

    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->p()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "adcode"

    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->q()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setExtras(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->q()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setCityCode(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/amap/api/location/AMapLocation;->setAdCode(Ljava/lang/String;)V

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    const-string v1, " "

    const-string v3, ""

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setAddress(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setCity(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->u()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setDistrict(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setProvince(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->z()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setAoiName(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/amap/api/location/AMapLocation;->setTime(J)V

    goto/16 :goto_1

    :cond_2
    invoke-virtual {v0, v2}, Lcom/amap/api/location/AMapLocation;->setAddress(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/amap/api/location/AMapLocation;
    .locals 8

    const/4 v1, 0x0

    if-eqz p0, :cond_1a

    new-instance v0, Lcom/amap/api/location/AMapLocation;

    const-string v2, ""

    invoke-direct {v0, v2}, Lcom/amap/api/location/AMapLocation;-><init>(Ljava/lang/String;)V

    const-string v4, ""

    const-string v3, ""

    const-string v2, ""

    :try_start_0
    const-string v5, "accuracy"

    invoke-static {p0, v5}, Lcom/loc/cw;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "accuracy"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-virtual {v0, v5}, Lcom/amap/api/location/AMapLocation;->setAccuracy(F)V

    :cond_0
    const-string v5, "adCode"

    invoke-static {p0, v5}, Lcom/loc/cw;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v4, "adCode"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/amap/api/location/AMapLocation;->setAdCode(Ljava/lang/String;)V

    :cond_1
    const-string v5, "address"

    invoke-static {p0, v5}, Lcom/loc/cw;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "address"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/amap/api/location/AMapLocation;->setAddress(Ljava/lang/String;)V

    :cond_2
    const-string v5, "altitude"

    invoke-static {p0, v5}, Lcom/loc/cw;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "altitude"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcom/amap/api/location/AMapLocation;->setAltitude(D)V

    :cond_3
    const-string v5, "bearing"

    invoke-static {p0, v5}, Lcom/loc/cw;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "bearing"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-virtual {v0, v5}, Lcom/amap/api/location/AMapLocation;->setBearing(F)V

    :cond_4
    const-string v5, "speed"

    invoke-static {p0, v5}, Lcom/loc/cw;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "speed"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-virtual {v0, v5}, Lcom/amap/api/location/AMapLocation;->setSpeed(F)V

    :cond_5
    const-string v5, "city"

    invoke-static {p0, v5}, Lcom/loc/cw;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "city"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/amap/api/location/AMapLocation;->setCity(Ljava/lang/String;)V

    :cond_6
    const-string v5, "cityCode"

    invoke-static {p0, v5}, Lcom/loc/cw;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v3, "cityCode"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amap/api/location/AMapLocation;->setCityCode(Ljava/lang/String;)V

    :cond_7
    const-string v5, "country"

    invoke-static {p0, v5}, Lcom/loc/cw;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    const-string v5, "country"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/amap/api/location/AMapLocation;->setCountry(Ljava/lang/String;)V

    :cond_8
    const-string v5, "district"

    invoke-static {p0, v5}, Lcom/loc/cw;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    const-string v5, "district"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/amap/api/location/AMapLocation;->setDistrict(Ljava/lang/String;)V

    :cond_9
    const-string v5, "errorCode"

    invoke-static {p0, v5}, Lcom/loc/cw;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    const-string v5, "errorCode"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/amap/api/location/AMapLocation;->setErrorCode(I)V

    :cond_a
    const-string v5, "errorInfo"

    invoke-static {p0, v5}, Lcom/loc/cw;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    const-string v5, "errorInfo"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/amap/api/location/AMapLocation;->setErrorInfo(Ljava/lang/String;)V

    :cond_b
    const-string v5, "latitude"

    invoke-static {p0, v5}, Lcom/loc/cw;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    const-string v5, "latitude"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcom/amap/api/location/AMapLocation;->setLatitude(D)V

    :cond_c
    const-string v5, "locationDetail"

    invoke-static {p0, v5}, Lcom/loc/cw;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    const-string v5, "locationDetail"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/amap/api/location/AMapLocation;->setLocationDetail(Ljava/lang/String;)V

    :cond_d
    const-string v5, "locationType"

    invoke-static {p0, v5}, Lcom/loc/cw;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    const-string v5, "locationType"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/amap/api/location/AMapLocation;->setLocationType(I)V

    :cond_e
    const-string v5, "longitude"

    invoke-static {p0, v5}, Lcom/loc/cw;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    const-string v5, "longitude"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcom/amap/api/location/AMapLocation;->setLongitude(D)V

    :cond_f
    const-string v5, "provider"

    invoke-static {p0, v5}, Lcom/loc/cw;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    const-string v5, "provider"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/amap/api/location/AMapLocation;->setProvider(Ljava/lang/String;)V

    :cond_10
    const-string v5, "province"

    invoke-static {p0, v5}, Lcom/loc/cw;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    const-string v5, "province"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/amap/api/location/AMapLocation;->setProvince(Ljava/lang/String;)V

    :cond_11
    const-string v5, "road"

    invoke-static {p0, v5}, Lcom/loc/cw;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12

    const-string v5, "road"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/amap/api/location/AMapLocation;->setRoad(Ljava/lang/String;)V

    :cond_12
    const-string v5, "time"

    invoke-static {p0, v5}, Lcom/loc/cw;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_13

    const-string v5, "time"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcom/amap/api/location/AMapLocation;->setTime(J)V

    :cond_13
    const-string v5, "poiName"

    invoke-static {p0, v5}, Lcom/loc/cw;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_14

    const-string v5, "poiName"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/amap/api/location/AMapLocation;->setPoiName(Ljava/lang/String;)V

    :cond_14
    const-string v5, "street"

    invoke-static {p0, v5}, Lcom/loc/cw;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_15

    const-string v5, "street"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/amap/api/location/AMapLocation;->setStreet(Ljava/lang/String;)V

    :cond_15
    const-string v5, "number"

    invoke-static {p0, v5}, Lcom/loc/cw;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_16

    const-string v5, "number"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/amap/api/location/AMapLocation;->setNumber(Ljava/lang/String;)V

    :cond_16
    const-string v5, "satellites"

    invoke-static {p0, v5}, Lcom/loc/cw;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_17

    const-string v5, "satellites"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/amap/api/location/AMapLocation;->setSatellites(I)V

    :cond_17
    const-string v5, "aoiName"

    invoke-static {p0, v5}, Lcom/loc/cw;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_18

    const-string v5, "aoiName"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/amap/api/location/AMapLocation;->setAoiName(Ljava/lang/String;)V

    :cond_18
    const-string v5, "desc"

    invoke-static {p0, v5}, Lcom/loc/cw;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_19

    const-string v2, "desc"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_19
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v6, "citycode"

    invoke-virtual {v5, v6, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "desc"

    invoke-virtual {v5, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "adcode"

    invoke-virtual {v5, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lcom/amap/api/location/AMapLocation;->setExtras(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v2, "CoreUtil"

    const-string v3, "transformLocation"

    invoke-static {v0, v2, v3}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :cond_1a
    move-object v0, v1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Lcom/loc/v;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/loc/v$a;

    const-string v2, "loc"

    const-string v3, "AMAP_Location_SDK_Android 2.4.0"

    invoke-direct {v1, v2, p0, v3}, Lcom/loc/v$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/loc/e;->b()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/loc/v$a;->a([Ljava/lang/String;)Lcom/loc/v$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/loc/v$a;->a()Lcom/loc/v;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "CoreUtil"

    const-string v3, "getSDKInfo"

    invoke-static {v1, v2, v3}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/loc/e;->s:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    :try_start_0
    invoke-static {p0}, Lcom/loc/e;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/cw;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "http://abroad.apilocate.amap.com/mobile/binary"

    sput-object v0, Lcom/loc/e;->s:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/loc/e;->c()V

    invoke-static {p0}, Lcom/loc/m;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/cg;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/loc/e;->p:Ljava/lang/String;

    sget-object v0, Lcom/loc/e;->p:Ljava/lang/String;

    invoke-static {v0}, Lcom/loc/e;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "CoreUtil"

    const-string v2, "checkUrl"

    invoke-static {v0, v1, v2}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "reportError"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {p0, p1, p2}, Lcom/loc/ab;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(DD)Z
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    const-wide v2, 0x4052400000000000L    # 73.0

    sub-double v2, p2, v2

    div-double/2addr v2, v6

    double-to-int v2, v2

    const-wide/high16 v4, 0x400c000000000000L    # 3.5

    sub-double v4, p0, v4

    div-double/2addr v4, v6

    double-to-int v3, v4

    if-ltz v3, :cond_0

    const/16 v4, 0x65

    if-ge v3, v4, :cond_0

    if-ltz v2, :cond_0

    const/16 v4, 0x7c

    if-lt v2, v4, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    mul-int/lit8 v3, v3, 0x7c

    add-int/2addr v2, v3

    :try_start_0
    const-string v3, "00000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001100000001011000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011101010111100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000110111111111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000111101111110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000110111100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001111111110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001111111100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011010111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001110011100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000110000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001010011100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000111100110001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000111110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011111000111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001111110011000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001111000000000111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000111100000000000010111110100000011000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000111110000000001111111111111111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000111111111000000111111111111111110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011111111111101111111111111111111111100000000000000000000000000000000000000000000000000000000000000000000000000000000000000011111111111111111111111111111111111111000000000000000000000000000000000000000000000000000000000000000000000000000000000000101111111111111111111111111111111111111110000000000000000000000000000000000000000000000000000000000000000000000000000000000011111111111111111111111111111111111111111100000000000000000000000000000000000000000000000000000000000000000000000000000000001111111111111111111111111111111111111111111100000000000000000000000000000000000000000000000000000000000000000000000000000000111111111111111111111111111111111111111111111000000000000000000000000000000000000000000000000000000000000000000000000000000001111111111111111111111111111111111111111111100000000000000000000000000000000000000000000000000000000000000000000000000000000011111111111111111111111111111111111111111111100000000000000000000000000000000000000000000000000000000000000000011110000000001111111111111111111111111111111111111111111110000000000000000000000000000000000000000000000000000000000011000011111100000000111111111111111111111111111111111111111111111100000000000000000000000000000000000000000000000000001111111100111111111100110111111111111111111111111111111111111111111111110000000000000000000000000000000000000000000000000001111111111111111111111111111111111111111111111111111111111111111111111111100000000000000000000000000000000000000000000000011111111111111111111111111111111111111111111111111111111111111111111111111111000000000000000000000000000000000000000000000111111111111111111111111111111111111111111111111111111111111111111111111111111100000000000000000000000000000000000000000101111111111111111111111111111111111111111111111111111111111111111111111111111111111000000000000000000000000000000000000001111111111111111111111111111111111111111111111111111111111111111111111111111111111111100000000000000000000000000000000000011111111111111111111111111111111111111111111111111111111111111111111111111111111111111110000000000000000000000000000000000011111111111111111111111111111111111111111111111111111111111111111111111111111111111111110000000000000000000000000000000000001111111111111111111111111111111111111111111111111111111111111111111111111111111111111110000000000000000000000000000000000001111111111111111111111111111111111111111111111111111111111111111111111111111111111111111000000000000000000000000000000000000111111111111111111111111111111111111111111111111111111111111111111111111111111111111111000000000000000000000000000000000000001111111111111111111111111111111111111111111111111111111111111111111111111111111111111000000000000000000000000000000000000000111111111111111111111111111111111111111111111111111111111111111111111111111111111111100000000000000000000000000000000000000011111111111111111111111111111111111111111111111111111111111111111111111111111111111100000000000000000000000000000000000000011111111111111111111111111111111111111111111111111111111111111111111111111111111111100000000000000000000000000000000000000111111111111111111111111111111111111111111111111111111111111111111111111111111111111110000000000000000000000000000000000001111111111111111111111111111111111111111111111111111111111111111111111111111111111111111110000000000000000000000000000000001111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111100000000000000000000000000000011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111110000000000000000000000000011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111000000000000000000000000000111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111011111000000000000000000000000000111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111100100000000000000000000000000000111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111100011100000000000000000000000000011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111000111110000000000000000000000001111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111110011111110000000000000000000000111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111110111111110000000000000000000000111011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111110000000000000000000000001111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111100000000000000000000000011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111000000000000000000000000011111111111111111111111111111111111111111111111100001111111111111111111111111111111111111111111111111010000000000000000000000111111111111111111111111111111111111111111110000000000000001111111111111111111111111111111111111111111100000000000000000000011111111111111111111111111111111100000000000000000000000000001111111111111111111111111111111111111111110000000000000000000001111111111111111111111111111111100000000000000000000000000000001111111111111111111111111111111111111111000000000000000000000111111111111111111111111111111110000000000000000000000000000001111111111111111111111111111111111111111100000000000000000000111111111111111111111111111111000000000000000000000000000000000111111111111111111111111111111111111111111000000000000000000001111111111111111111111111110000000000000000000000000000000000001110011111111111111111111111111111111111111100000000000000000000011111111111111111100000000000000000000000000000000000000000000000001111111111111111111111111111111111111000000000000000000001111111111111111111000000000000000000000000000000000000000000000000011111111111111111111111111111111111100000000000000000000011111111111111111100000000000000000000000000000000000000000000000000011111111111111111111111111111111111000000000000000000001111111111111111100000000000000000000000000000000000000000000000000000000111111111111111111111111111111110000000000000000000000000111111111100000000000000000000000000000000000000000000000000111111111111111111111111111111111111111000000000000000000000000011111111100000000000000000000000000000000000000000000000000011111111111111111111111111111110001111100000000000000000000000000111110000000000000000000000000000000000000000000000000000001111111111111111111111111111111000000000000000000000000000000000001110000000000000000000000000000000000000000000000000000000011111111111111111111111111111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001111111111111111111111111100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000111111111111111111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011111111111111111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000111111111111111100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011111111111111100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011111111111110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011111111111110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001111111111110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010110000000000000000000000"

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    const/16 v3, 0x31

    if-eq v2, v3, :cond_1

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "CoreUtil"

    const-string v3, "isChina"

    invoke-static {v1, v2, v3}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x3

    const-string v1, ""

    :try_start_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v3, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v2, "CoreUtil"

    const-string v3, "getMcc"

    invoke-static {v0, v2, v3}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    const-string v0, "2.4.0"

    invoke-static {v0}, Lcom/loc/e;->a(Ljava/lang/String;)Lcom/loc/v;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/loc/ab;->b(Lcom/loc/v;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static b()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/loc/e;->t:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method private static c()V
    .locals 3

    :try_start_0
    sget-object v0, Lcom/loc/e;->q:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/loc/e;->q:Ljava/util/HashMap;

    :cond_0
    sget-object v0, Lcom/loc/e;->q:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    sget-object v0, Lcom/loc/e;->q:Ljava/util/HashMap;

    const-string v1, "a9a9d23668a1a7ea93de9b21d67e436a"

    const-string v2, "F13160D440C7D0229DA95450F66AF92154AC84DF088F8CA3100B2E8131D57F3DC67124D4C466056E7A3DFBE035E1B9A4B9DA4DB68AE65A43EDFD92F5C60EF0C9"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/loc/e;->q:Ljava/util/HashMap;

    const-string v1, "fe643c382e5c3b3962141f1a2e815a78"

    const-string v2, "FB923EE67A8B4032DAA517DD8CD7A26FF7C25B0C3663F92A0B61251C4FFFA858DF169D61321C3E7919CB67DF8EFEC827"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/loc/e;->q:Ljava/util/HashMap;

    const-string v1, "b2e8bd171989cb2c3c13bd89b4c1067a"

    const-string v2, "239CE372F804D4BE4EAFFD183668379BDF274440E6F246AB16BBE6F5D1D30DEACFBBF0C942485727FF12288228760A9E"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/loc/e;->q:Ljava/util/HashMap;

    const-string v1, "9a571aa113ad987d626c0457828962e6"

    const-string v2, "D2FF99A88BEB04683D89470D4FA72B1749DA456AB0D0F1A476477CE5A6874F53A9106423D905F9D808C0FCE8E7F1E04AC642F01FE41D0C7D933971F45CBA72B7"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/loc/e;->q:Ljava/util/HashMap;

    const-string v1, "668319f11506def6208d6afe320dfd52"

    const-string v2, "53E53D46011A6BBAEA4FAE5442E659E0577CDD336F930C28635C322FB3F51C3C63F7FBAC9EAE448DFA2E5E5D716C4807"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/loc/e;->q:Ljava/util/HashMap;

    const-string v1, "256b0f26bb2a9506be6cfdb84028ae08"

    const-string v2, "AF2228680EDC323FBA035362EB7E1E38A0C33E1CF6F6FB805EE553A230CBA754CD9552EB9B546542CBE619E8293151BE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "CoreUtil"

    const-string v2, "initUrlHash"

    invoke-static {v0, v1, v2}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static c(Ljava/lang/String;)V
    .locals 3

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/loc/e;->q:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/loc/e;->q:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/loc/e;->q:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    invoke-static {v0}, Lcom/loc/e;->d(Ljava/lang/String;)[B

    move-result-object v1

    new-instance v0, Ljava/lang/String;

    invoke-static {v1, p0}, Lcom/loc/cg;->d([BLjava/lang/String;)[B

    move-result-object v1

    const-string v2, "utf-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "http:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sput-object v0, Lcom/loc/e;->s:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "CoreUtil"

    const-string v2, "checkUrl"

    invoke-static {v0, v1, v2}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method private static d(Ljava/lang/String;)[B
    .locals 6

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_2

    :cond_0
    new-array v0, v1, [B

    :cond_1
    return-object v0

    :cond_2
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v3, v0, 0x2

    new-array v0, v3, [B

    :goto_0
    if-ge v1, v3, :cond_1

    mul-int/lit8 v4, v1, 0x2

    mul-int/lit8 v5, v1, 0x2

    add-int/lit8 v5, v5, 0x2

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
