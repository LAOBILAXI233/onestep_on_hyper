.class public Lcom/amap/api/location/AMapLocation;
.super Landroid/location/Location;
.source "AMapLocation.java"


.field public static final ERROR_CODE_FAILURE_AUTH:I = 0x7

.field public static final ERROR_CODE_FAILURE_CELL:I = 0xb

.field public static final ERROR_CODE_FAILURE_CONNECTION:I = 0x4

.field public static final ERROR_CODE_FAILURE_INIT:I = 0x9

.field public static final ERROR_CODE_FAILURE_LOCATION:I = 0x6

.field public static final ERROR_CODE_FAILURE_LOCATION_PARAMETER:I = 0x3

.field public static final ERROR_CODE_FAILURE_LOCATION_PERMISSION:I = 0xc

.field public static final ERROR_CODE_FAILURE_PARSER:I = 0x5

.field public static final ERROR_CODE_FAILURE_WIFI_INFO:I = 0x2

.field public static final ERROR_CODE_INVALID_PARAMETER:I = 0x1

.field public static final ERROR_CODE_SERVICE_FAIL:I = 0xa

.field public static final ERROR_CODE_UNKNOWN:I = 0x8

.field public static final LOCATION_SUCCESS:I = 0x0

.field public static final LOCATION_TYPE_AMAP:I = 0x7

.field public static final LOCATION_TYPE_CELL:I = 0x6

.field public static final LOCATION_TYPE_FAST:I = 0x3

.field public static final LOCATION_TYPE_FIX_CACHE:I = 0x4

.field public static final LOCATION_TYPE_GPS:I = 0x1

.field public static final LOCATION_TYPE_OFFLINE:I = 0x8

.field public static final LOCATION_TYPE_SAME_REQ:I = 0x2

.field public static final LOCATION_TYPE_WIFI:I = 0x5


.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Z

.field private m:I

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:I

.field private q:D

.field private r:D

.field private s:I

.field private t:Ljava/lang/String;


.method public constructor <init>(Landroid/location/Location;)V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->f:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->g:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->h:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->i:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->j:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->k:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/location/AMapLocation;->l:Z

    iput v1, p0, Lcom/amap/api/location/AMapLocation;->m:I

    const-string v0, "success"

    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->n:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->o:Ljava/lang/String;

    iput v1, p0, Lcom/amap/api/location/AMapLocation;->p:I

    iput-wide v2, p0, Lcom/amap/api/location/AMapLocation;->q:D

    iput-wide v2, p0, Lcom/amap/api/location/AMapLocation;->r:D

    iput v1, p0, Lcom/amap/api/location/AMapLocation;->s:I

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->t:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/location/AMapLocation;->q:D

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/location/AMapLocation;->r:D

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->f:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->g:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->h:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->i:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->j:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->k:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/location/AMapLocation;->l:Z

    iput v1, p0, Lcom/amap/api/location/AMapLocation;->m:I

    const-string v0, "success"

    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->n:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->o:Ljava/lang/String;

    iput v1, p0, Lcom/amap/api/location/AMapLocation;->p:I

    iput-wide v2, p0, Lcom/amap/api/location/AMapLocation;->q:D

    iput-wide v2, p0, Lcom/amap/api/location/AMapLocation;->r:D

    iput v1, p0, Lcom/amap/api/location/AMapLocation;->s:I

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->t:Ljava/lang/String;

    return-void
.end method


.method public getAccuracy()F
    .locals 1

    invoke-super {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    return v0
.end method

.method public getAdCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/location/AMapLocation;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/location/AMapLocation;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getAltitude()D
    .locals 2

    invoke-super {p0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public getAoiName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/location/AMapLocation;->t:Ljava/lang/String;

    return-object v0
.end method

.method public getBearing()F
    .locals 1

    invoke-super {p0}, Landroid/location/Location;->getBearing()F

    move-result v0

    return v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/location/AMapLocation;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getCityCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/location/AMapLocation;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/location/AMapLocation;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getDistrict()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/location/AMapLocation;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorCode()I
    .locals 1

    iget v0, p0, Lcom/amap/api/location/AMapLocation;->m:I

    return v0
.end method

.method public getErrorInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/location/AMapLocation;->n:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    iget-wide v0, p0, Lcom/amap/api/location/AMapLocation;->q:D

    return-wide v0
.end method

.method public getLocationDetail()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/location/AMapLocation;->o:Ljava/lang/String;

    return-object v0
.end method

.method public getLocationType()I
    .locals 1

    iget v0, p0, Lcom/amap/api/location/AMapLocation;->p:I

    return v0
.end method

.method public getLongitude()D
    .locals 2

    iget-wide v0, p0, Lcom/amap/api/location/AMapLocation;->r:D

    return-wide v0
.end method

.method public getPoiName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/location/AMapLocation;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProvince()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/location/AMapLocation;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getRoad()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/location/AMapLocation;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getSatellites()I
    .locals 1

    iget v0, p0, Lcom/amap/api/location/AMapLocation;->s:I

    return v0
.end method

.method public getSpeed()F
    .locals 1

    invoke-super {p0}, Landroid/location/Location;->getSpeed()F

    move-result v0

    return v0
.end method

.method public getStreet()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/location/AMapLocation;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getStreetNum()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/location/AMapLocation;->k:Ljava/lang/String;

    return-object v0
.end method

.method public isOffset()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/location/AMapLocation;->l:Z

    return v0
.end method

.method public setAdCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/location/AMapLocation;->e:Ljava/lang/String;

    return-void
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/location/AMapLocation;->f:Ljava/lang/String;

    return-void
.end method

.method public setAoiName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/location/AMapLocation;->t:Ljava/lang/String;

    return-void
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/location/AMapLocation;->b:Ljava/lang/String;

    return-void
.end method

.method public setCityCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/location/AMapLocation;->d:Ljava/lang/String;

    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/location/AMapLocation;->h:Ljava/lang/String;

    return-void
.end method

.method public setDistrict(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/location/AMapLocation;->c:Ljava/lang/String;

    return-void
.end method

.method public setErrorCode(I)V
    .locals 1

    iget v0, p0, Lcom/amap/api/location/AMapLocation;->m:I

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    :goto_1
    iput p1, p0, Lcom/amap/api/location/AMapLocation;->m:I

    goto :goto_0

    :pswitch_0
    const-string v0, "success"

    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->n:Ljava/lang/String;

    goto :goto_1

    :pswitch_1
    const-string v0, "\u91cd\u8981\u53c2\u6570\u4e3a\u7a7a"

    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->n:Ljava/lang/String;

    goto :goto_1

    :pswitch_2
    const-string v0, "WIFI\u4fe1\u606f\u4e0d\u8db3"

    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->n:Ljava/lang/String;

    goto :goto_1

    :pswitch_3
    const-string v0, "\u8bf7\u6c42\u53c2\u6570\u83b7\u53d6\u51fa\u73b0\u5f02\u5e38"

    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->n:Ljava/lang/String;

    goto :goto_1

    :pswitch_4
    const-string v0, "\u7f51\u7edc\u8fde\u63a5\u5f02\u5e38"

    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->n:Ljava/lang/String;

    goto :goto_1

    :pswitch_5
    const-string v0, "\u89e3\u6790XML\u51fa\u9519"

    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->n:Ljava/lang/String;

    goto :goto_1

    :pswitch_6
    const-string v0, "\u5b9a\u4f4d\u7ed3\u679c\u9519\u8bef"

    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->n:Ljava/lang/String;

    goto :goto_1

    :pswitch_7
    const-string v0, "KEY\u9519\u8bef"

    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->n:Ljava/lang/String;

    goto :goto_1

    :pswitch_8
    const-string v0, "\u5176\u4ed6\u9519\u8bef"

    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->n:Ljava/lang/String;

    goto :goto_1

    :pswitch_9
    const-string v0, "\u521d\u59cb\u5316\u5f02\u5e38"

    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->n:Ljava/lang/String;

    goto :goto_1

    :pswitch_a
    const-string v0, "\u5b9a\u4f4d\u670d\u52a1\u542f\u52a8\u5931\u8d25"

    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->n:Ljava/lang/String;

    goto :goto_1

    :pswitch_b
    const-string v0, "\u7f3a\u5c11\u5b9a\u4f4d\u6743\u9650"

    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->n:Ljava/lang/String;

    goto :goto_1

    :pswitch_c
    const-string v0, "\u9519\u8bef\u7684\u57fa\u7ad9\u4fe1\u606f\uff0c\u8bf7\u68c0\u67e5\u662f\u5426\u63d2\u5165SIM\u5361"

    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->n:Ljava/lang/String;

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_c
        :pswitch_b
    .end packed-switch
.end method

.method public setErrorInfo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/location/AMapLocation;->n:Ljava/lang/String;

    return-void
.end method

.method public setLatitude(D)V
    .locals 1

    iput-wide p1, p0, Lcom/amap/api/location/AMapLocation;->q:D

    return-void
.end method

.method public setLocationDetail(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/location/AMapLocation;->o:Ljava/lang/String;

    return-void
.end method

.method public setLocationType(I)V
    .locals 0

    iput p1, p0, Lcom/amap/api/location/AMapLocation;->p:I

    return-void
.end method

.method public setLongitude(D)V
    .locals 1

    iput-wide p1, p0, Lcom/amap/api/location/AMapLocation;->r:D

    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/location/AMapLocation;->k:Ljava/lang/String;

    return-void
.end method

.method public setOffset(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/location/AMapLocation;->l:Z

    return-void
.end method

.method public setPoiName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/location/AMapLocation;->g:Ljava/lang/String;

    return-void
.end method

.method public setProvince(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/location/AMapLocation;->a:Ljava/lang/String;

    return-void
.end method

.method public setRoad(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/location/AMapLocation;->i:Ljava/lang/String;

    return-void
.end method

.method public setSatellites(I)V
    .locals 0

    iput p1, p0, Lcom/amap/api/location/AMapLocation;->s:I

    return-void
.end method

.method public setStreet(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/location/AMapLocation;->j:Ljava/lang/String;

    return-void
.end method

.method public toStr()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/amap/api/location/AMapLocation;->toStr(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStr(I)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    packed-switch p1, :pswitch_data_0

    :goto_0
    move-object v1, v2

    :goto_1
    if-nez v1, :cond_1

    :goto_2
    return-object v0

    :pswitch_0
    const-string v1, "country"

    iget-object v3, p0, Lcom/amap/api/location/AMapLocation;->h:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "province"

    iget-object v3, p0, Lcom/amap/api/location/AMapLocation;->a:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "city"

    iget-object v3, p0, Lcom/amap/api/location/AMapLocation;->b:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "cityCode"

    iget-object v3, p0, Lcom/amap/api/location/AMapLocation;->d:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "district"

    iget-object v3, p0, Lcom/amap/api/location/AMapLocation;->c:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "adCode"

    iget-object v3, p0, Lcom/amap/api/location/AMapLocation;->e:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "address"

    iget-object v3, p0, Lcom/amap/api/location/AMapLocation;->f:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "road"

    iget-object v3, p0, Lcom/amap/api/location/AMapLocation;->i:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "street"

    iget-object v3, p0, Lcom/amap/api/location/AMapLocation;->j:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "number"

    iget-object v3, p0, Lcom/amap/api/location/AMapLocation;->k:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "poiName"

    iget-object v3, p0, Lcom/amap/api/location/AMapLocation;->g:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "errorCode"

    iget v3, p0, Lcom/amap/api/location/AMapLocation;->m:I

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "errorInfo"

    iget-object v3, p0, Lcom/amap/api/location/AMapLocation;->n:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "locationDetail"

    iget-object v3, p0, Lcom/amap/api/location/AMapLocation;->o:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "altitude"

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getAltitude()D

    move-result-wide v4

    invoke-virtual {v2, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "bearing"

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getBearing()F

    move-result v3

    float-to-double v4, v3

    invoke-virtual {v2, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "speed"

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getSpeed()F

    move-result v3

    float-to-double v4, v3

    invoke-virtual {v2, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "satellites"

    iget v3, p0, Lcom/amap/api/location/AMapLocation;->s:I

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "aoiName"

    iget-object v3, p0, Lcom/amap/api/location/AMapLocation;->t:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v3, "desc"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "desc"

    const-string v4, "desc"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_3
    :pswitch_1
    :try_start_2
    const-string v1, "time"

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getTime()J

    move-result-wide v4

    invoke-virtual {v2, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :pswitch_2
    const-string v1, "locationType"

    iget v3, p0, Lcom/amap/api/location/AMapLocation;->p:I

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "accuracy"

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getAccuracy()F

    move-result v3

    float-to-double v4, v3

    invoke-virtual {v2, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "latitude"

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v2, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "longitude"

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v2, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "provider"

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getProvider()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    const-string v2, "AMapLocation"

    const-string v3, "toStr part2"

    invoke-static {v1, v2, v3}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    goto/16 :goto_1

    :catch_1
    move-exception v1

    :try_start_3
    const-string v3, "AMapLocation"

    const-string v4, "toStr part1"

    invoke-static {v1, v3, v4}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    :cond_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "latitude="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/amap/api/location/AMapLocation;->q:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "longitude="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/amap/api/location/AMapLocation;->r:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "province="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/location/AMapLocation;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "city="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/location/AMapLocation;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "district="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/location/AMapLocation;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cityCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/location/AMapLocation;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/location/AMapLocation;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "address="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/location/AMapLocation;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "country="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/location/AMapLocation;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "road="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/location/AMapLocation;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "poiName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/location/AMapLocation;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "street="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/location/AMapLocation;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "streetNum="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/location/AMapLocation;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "aoiName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/location/AMapLocation;->t:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "errorCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/amap/api/location/AMapLocation;->m:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "errorInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/location/AMapLocation;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "locationDetail="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/location/AMapLocation;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "locationType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/amap/api/location/AMapLocation;->p:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
