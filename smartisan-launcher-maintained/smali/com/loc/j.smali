.class public Lcom/loc/j;
.super Ljava/lang/Object;
.source "OffsetUtil.java"


.field static a:D

.field private static b:Z


.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/loc/j;->b:Z

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    sput-wide v0, Lcom/loc/j;->a:D

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(D)D
    .locals 6

    const-wide v0, 0x40a7700000000000L    # 3000.0

    mul-double/2addr v0, p0

    sget-wide v2, Lcom/loc/j;->a:D

    const-wide v4, 0x4066800000000000L    # 180.0

    div-double/2addr v2, v4

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    const-wide v2, 0x3ef4f8b588e368f1L    # 2.0E-5

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public static a(DD)D
    .locals 6

    const-wide v4, 0x40f86a0000000000L    # 100000.0

    div-double v0, p2, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    const-wide v2, 0x40d1940000000000L    # 18000.0

    div-double v2, p0, v2

    mul-double/2addr v0, v2

    div-double v2, p0, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    const-wide v4, 0x40c1940000000000L    # 9000.0

    div-double v4, p2, v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method private static a(DI)D
    .locals 2

    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0, p1}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 v1, 0x4

    invoke-virtual {v0, p2, v1}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method private static a(DDDD)Lcom/amap/api/location/DPoint;
    .locals 8

    new-instance v0, Lcom/amap/api/location/DPoint;

    invoke-direct {v0}, Lcom/amap/api/location/DPoint;-><init>()V

    sub-double v2, p0, p4

    sub-double v4, p2, p6

    invoke-static {v2, v3, v4, v5}, Lcom/loc/j;->d(DD)Lcom/amap/api/location/DPoint;

    move-result-object v1

    add-double/2addr v2, p0

    invoke-virtual {v1}, Lcom/amap/api/location/DPoint;->getLongitude()D

    move-result-wide v6

    sub-double/2addr v2, v6

    const/16 v6, 0x8

    invoke-static {v2, v3, v6}, Lcom/loc/j;->a(DI)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/amap/api/location/DPoint;->setLongitude(D)V

    add-double v2, p2, v4

    invoke-virtual {v1}, Lcom/amap/api/location/DPoint;->getLatitude()D

    move-result-wide v4

    sub-double/2addr v2, v4

    const/16 v1, 0x8

    invoke-static {v2, v3, v1}, Lcom/loc/j;->a(DI)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/amap/api/location/DPoint;->setLatitude(D)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;DD)Lcom/amap/api/location/DPoint;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/amap/api/location/DPoint;

    invoke-direct {v0, p3, p4, p1, p2}, Lcom/amap/api/location/DPoint;-><init>(DD)V

    invoke-static {p0, v0}, Lcom/loc/j;->a(Landroid/content/Context;Lcom/amap/api/location/DPoint;)Lcom/amap/api/location/DPoint;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/amap/api/location/DPoint;)Lcom/amap/api/location/DPoint;
    .locals 3

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "libwgs2gcj.so"

    invoke-static {p0, v0}, Lcom/loc/u;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/loc/j;->b:Z

    if-nez v1, :cond_1

    :try_start_0
    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/loc/j;->b:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    sget-boolean v0, Lcom/loc/j;->b:Z

    invoke-static {p1, v0}, Lcom/loc/j;->a(Lcom/amap/api/location/DPoint;Z)Lcom/amap/api/location/DPoint;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "OffsetUtil"

    const-string v2, "offset"

    invoke-static {v0, v1, v2}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static a(Lcom/amap/api/location/DPoint;)Lcom/amap/api/location/DPoint;
    .locals 3

    if-eqz p0, :cond_0

    const/4 v0, 0x2

    :try_start_0
    invoke-static {p0, v0}, Lcom/loc/j;->a(Lcom/amap/api/location/DPoint;I)Lcom/amap/api/location/DPoint;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    :cond_0
    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    const-string v1, "OffsetUtil"

    const-string v2, "B2G"

    invoke-static {v0, v1, v2}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Lcom/amap/api/location/DPoint;I)Lcom/amap/api/location/DPoint;
    .locals 9

    const-wide v4, 0x3f7a37ffff31d771L    # 0.006401062

    const-wide v6, 0x3f78c0000225c17dL    # 0.0060424805

    const/4 v1, 0x0

    const/4 v0, 0x0

    move v8, v0

    move-object v0, v1

    :goto_0
    if-ge v8, p1, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/location/DPoint;->getLongitude()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/amap/api/location/DPoint;->getLatitude()D

    move-result-wide v2

    invoke-static/range {v0 .. v7}, Lcom/loc/j;->a(DDDD)Lcom/amap/api/location/DPoint;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amap/api/location/DPoint;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1}, Lcom/amap/api/location/DPoint;->getLongitude()D

    move-result-wide v4

    sub-double v4, v2, v4

    invoke-virtual {p0}, Lcom/amap/api/location/DPoint;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1}, Lcom/amap/api/location/DPoint;->getLatitude()D

    move-result-wide v6

    sub-double v6, v2, v6

    add-int/lit8 v0, v8, 0x1

    move v8, v0

    move-object v0, v1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static a(Lcom/amap/api/location/DPoint;Z)Lcom/amap/api/location/DPoint;
    .locals 6

    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [D

    if-eqz p1, :cond_1

    const/4 v1, 0x2

    new-array v1, v1, [D

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/amap/api/location/DPoint;->getLongitude()D

    move-result-wide v4

    aput-wide v4, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/amap/api/location/DPoint;->getLatitude()D

    move-result-wide v4

    aput-wide v4, v1, v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {v1, v0}, Lcom/amap/api/location/CoordUtil;->convertToGcj([D[D)I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/location/DPoint;->getLongitude()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/amap/api/location/DPoint;->getLatitude()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/loc/cx;->a(DD)[D
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    move-object v1, v0

    :goto_1
    :try_start_2
    new-instance v0, Lcom/amap/api/location/DPoint;

    const/4 v2, 0x1

    aget-wide v2, v1, v2

    const/4 v4, 0x0

    aget-wide v4, v1, v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/amap/api/location/DPoint;-><init>(DD)V

    move-object p0, v0

    :goto_2
    return-object p0

    :catch_0
    move-exception v0

    const-string v1, "OffsetUtil"

    const-string v2, "cover part1"

    invoke-static {v0, v1, v2}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amap/api/location/DPoint;->getLongitude()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/amap/api/location/DPoint;->getLatitude()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/loc/cx;->a(DD)[D

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/amap/api/location/DPoint;->getLongitude()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/amap/api/location/DPoint;->getLatitude()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/loc/cx;->a(DD)[D
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "OffsetUtil"

    const-string v2, "cover part2"

    invoke-static {v0, v1, v2}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private static b(D)D
    .locals 6

    const-wide v0, 0x40a7700000000000L    # 3000.0

    mul-double/2addr v0, p0

    sget-wide v2, Lcom/loc/j;->a:D

    const-wide v4, 0x4066800000000000L    # 180.0

    div-double/2addr v2, v4

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    const-wide v2, 0x3ec92a737110e454L    # 3.0E-6

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public static b(DD)D
    .locals 6

    const-wide v4, 0x40f86a0000000000L    # 100000.0

    div-double v0, p2, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    const-wide v2, 0x40d1940000000000L    # 18000.0

    div-double v2, p0, v2

    mul-double/2addr v0, v2

    div-double v2, p0, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    const-wide v4, 0x40c1940000000000L    # 9000.0

    div-double v4, p2, v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public static b(Landroid/content/Context;Lcom/amap/api/location/DPoint;)Lcom/amap/api/location/DPoint;
    .locals 4

    :try_start_0
    invoke-virtual {p1}, Lcom/amap/api/location/DPoint;->getLongitude()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/amap/api/location/DPoint;->getLatitude()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/loc/j;->c(DD)Lcom/amap/api/location/DPoint;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/loc/j;->a(Landroid/content/Context;Lcom/amap/api/location/DPoint;)Lcom/amap/api/location/DPoint;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    :goto_0
    return-object p1

    :catch_0
    move-exception v0

    const-string v1, "OffsetUtil"

    const-string v2, "marbar2G"

    invoke-static {v0, v1, v2}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static c(DD)Lcom/amap/api/location/DPoint;
    .locals 10

    const-wide v0, 0x40f86a0000000000L    # 100000.0

    mul-double/2addr v0, p0

    double-to-long v0, v0

    const-wide/32 v2, 0x2255100

    rem-long/2addr v0, v2

    long-to-double v0, v0

    const-wide v2, 0x40f86a0000000000L    # 100000.0

    mul-double/2addr v2, p2

    double-to-long v2, v2

    const-wide/32 v4, 0x2255100

    rem-long/2addr v2, v4

    long-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Lcom/loc/j;->a(DD)D

    move-result-wide v4

    neg-double v4, v4

    add-double/2addr v4, v0

    double-to-int v4, v4

    invoke-static {v0, v1, v2, v3}, Lcom/loc/j;->b(DD)D

    move-result-wide v6

    neg-double v6, v6

    add-double/2addr v6, v2

    double-to-int v5, v6

    int-to-double v6, v4

    int-to-double v8, v5

    invoke-static {v6, v7, v8, v9}, Lcom/loc/j;->a(DD)D

    move-result-wide v6

    neg-double v6, v6

    add-double/2addr v6, v0

    const-wide/16 v8, 0x0

    cmpl-double v0, v0, v8

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-double v0, v0

    add-double/2addr v0, v6

    double-to-int v1, v0

    int-to-double v6, v1

    int-to-double v4, v5

    invoke-static {v6, v7, v4, v5}, Lcom/loc/j;->b(DD)D

    move-result-wide v4

    neg-double v4, v4

    add-double/2addr v4, v2

    const-wide/16 v6, 0x0

    cmpl-double v0, v2, v6

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    int-to-double v2, v0

    add-double/2addr v2, v4

    double-to-int v0, v2

    int-to-double v2, v1

    const-wide v4, 0x40f86a0000000000L    # 100000.0

    div-double/2addr v2, v4

    int-to-double v0, v0

    const-wide v4, 0x40f86a0000000000L    # 100000.0

    div-double/2addr v0, v4

    new-instance v4, Lcom/amap/api/location/DPoint;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/amap/api/location/DPoint;-><init>(DD)V

    return-object v4

    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private static d(DD)Lcom/amap/api/location/DPoint;
    .locals 12

    const/16 v1, 0x8

    new-instance v0, Lcom/amap/api/location/DPoint;

    invoke-direct {v0}, Lcom/amap/api/location/DPoint;-><init>()V

    invoke-static {p0, p1}, Lcom/loc/j;->b(D)D

    move-result-wide v2

    invoke-static {p2, p3, p0, p1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    invoke-static {p2, p3}, Lcom/loc/j;->a(D)D

    move-result-wide v4

    mul-double v6, p0, p0

    mul-double v8, p2, p2

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    add-double/2addr v4, v6

    mul-double/2addr v2, v4

    const-wide v4, 0x3f7a9fbe76c8b439L    # 0.0065

    add-double/2addr v2, v4

    invoke-static {p0, p1}, Lcom/loc/j;->b(D)D

    move-result-wide v4

    invoke-static {p2, p3, p0, p1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    invoke-static {p2, p3}, Lcom/loc/j;->a(D)D

    move-result-wide v6

    mul-double v8, p0, p0

    mul-double v10, p2, p2

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    add-double/2addr v6, v8

    mul-double/2addr v4, v6

    const-wide v6, 0x3f789374bc6a7efaL    # 0.006

    add-double/2addr v4, v6

    invoke-static {v2, v3, v1}, Lcom/loc/j;->a(DI)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/amap/api/location/DPoint;->setLongitude(D)V

    invoke-static {v4, v5, v1}, Lcom/loc/j;->a(DI)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/amap/api/location/DPoint;->setLatitude(D)V

    return-object v0
.end method
