.class public Lcom/amap/api/location/DPoint;
.super Ljava/lang/Object;
.source "DPoint.java"


.field private a:D

.field private b:D


.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 9

    const-wide v6, 0x4066800000000000L    # 180.0

    const-wide v2, 0x4056800000000000L    # 90.0

    const-wide v4, -0x3f99800000000000L    # -180.0

    const-wide v0, -0x3fa9800000000000L    # -90.0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    cmpl-double v8, p3, v6

    if-lez v8, :cond_3

    :goto_0
    cmpg-double v8, v6, v4

    if-gez v8, :cond_2

    :goto_1
    cmpl-double v6, p1, v2

    if-lez v6, :cond_1

    :goto_2
    cmpg-double v6, v2, v0

    if-gez v6, :cond_0

    :goto_3
    iput-wide v4, p0, Lcom/amap/api/location/DPoint;->a:D

    iput-wide v0, p0, Lcom/amap/api/location/DPoint;->b:D

    return-void

    :cond_0
    move-wide v0, v2

    goto :goto_3

    :cond_1
    move-wide v2, p1

    goto :goto_2

    :cond_2
    move-wide v4, v6

    goto :goto_1

    :cond_3
    move-wide v6, p3

    goto :goto_0
.end method


.method public getLatitude()D
    .locals 2

    iget-wide v0, p0, Lcom/amap/api/location/DPoint;->b:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    iget-wide v0, p0, Lcom/amap/api/location/DPoint;->a:D

    return-wide v0
.end method

.method public setLatitude(D)V
    .locals 5

    const-wide v2, 0x4056800000000000L    # 90.0

    const-wide v0, -0x3fa9800000000000L    # -90.0

    cmpl-double v4, p1, v2

    if-lez v4, :cond_1

    :goto_0
    cmpg-double v4, v2, v0

    if-gez v4, :cond_0

    :goto_1
    iput-wide v0, p0, Lcom/amap/api/location/DPoint;->b:D

    return-void

    :cond_0
    move-wide v0, v2

    goto :goto_1

    :cond_1
    move-wide v2, p1

    goto :goto_0
.end method

.method public setLongitude(D)V
    .locals 5

    const-wide v2, 0x4066800000000000L    # 180.0

    const-wide v0, -0x3f99800000000000L    # -180.0

    cmpl-double v4, p1, v2

    if-lez v4, :cond_1

    :goto_0
    cmpg-double v4, v2, v0

    if-gez v4, :cond_0

    :goto_1
    iput-wide v0, p0, Lcom/amap/api/location/DPoint;->a:D

    return-void

    :cond_0
    move-wide v0, v2

    goto :goto_1

    :cond_1
    move-wide v2, p1

    goto :goto_0
.end method
