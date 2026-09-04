.class public Lcom/loc/cw;
.super Ljava/lang/Object;
.source "Utils.java"


.field private static a:I

.field private static b:[Ljava/lang/String;

.field private static c:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Ljava/text/DecimalFormat;

.field private static e:Ljava/text/SimpleDateFormat;


.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput v0, Lcom/loc/cw;->a:I

    sput-object v1, Lcom/loc/cw;->b:[Ljava/lang/String;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/loc/cw;->c:Ljava/util/Hashtable;

    sput-object v1, Lcom/loc/cw;->d:Ljava/text/DecimalFormat;

    sput-object v1, Lcom/loc/cw;->e:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/autonavi/aps/amapapi/model/AmapLoc;Lcom/autonavi/aps/amapapi/model/AmapLoc;)F
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [D

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->i()D

    move-result-wide v2

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->h()D

    move-result-wide v2

    aput-wide v2, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->i()D

    move-result-wide v2

    aput-wide v2, v0, v1

    const/4 v1, 0x3

    invoke-virtual {p1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->h()D

    move-result-wide v2

    aput-wide v2, v0, v1

    invoke-static {v0}, Lcom/loc/cw;->a([D)F

    move-result v0

    return v0
.end method

.method public static a([D)F
    .locals 10

    const/4 v2, 0x1

    const/4 v9, 0x0

    array-length v0, p0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    new-array v8, v2, [F

    aget-wide v0, p0, v9

    aget-wide v2, p0, v2

    const/4 v4, 0x2

    aget-wide v4, p0, v4

    const/4 v6, 0x3

    aget-wide v6, p0, v6

    invoke-static/range {v0 .. v8}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    aget v0, v8, v9

    goto :goto_0
.end method

.method public static a(I)I
    .locals 1

    mul-int/lit8 v0, p0, 0x2

    add-int/lit8 v0, v0, -0x71

    return v0
.end method

.method public static a(II)I
    .locals 2

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sub-int v1, p1, p0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static a(Landroid/net/NetworkInfo;)I
    .locals 2

    const/4 v0, -0x1

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    goto :goto_0
.end method

.method public static a(Landroid/telephony/CellLocation;Landroid/content/Context;)I
    .locals 4

    const/16 v0, 0x9

    invoke-static {p1}, Lcom/loc/cw;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p0, :cond_0

    instance-of v1, p0, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    :try_start_0
    const-string v1, "android.telephony.cdma.CdmaCellLocation"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x2

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Utils"

    const-string v3, "getCellLocT"

    invoke-static {v1, v2, v3}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a()J
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Utils"

    const-string v3, "getServ"

    invoke-static {v1, v2, v3}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static declared-synchronized a(JLjava/lang/String;)Ljava/lang/String;
    .locals 4

    const-class v1, Lcom/loc/cw;

    monitor-enter v1

    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, "yyyy-MM-dd HH:mm:ss"

    :cond_0
    sget-object v0, Lcom/loc/cw;->e:Ljava/text/SimpleDateFormat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    :try_start_1
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v0, p2, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/loc/cw;->e:Ljava/text/SimpleDateFormat;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v0, p0, v2

    if-gtz v0, :cond_1

    :try_start_2
    invoke-static {}, Lcom/loc/cw;->a()J

    move-result-wide p0

    :cond_1
    sget-object v0, Lcom/loc/cw;->e:Ljava/text/SimpleDateFormat;

    if-nez v0, :cond_3

    const-string v0, "NULL"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    monitor-exit v1

    return-object v0

    :catch_0
    move-exception v0

    :try_start_3
    const-string v2, "Utils"

    const-string v3, "formatUTC"

    invoke-static {v0, v2, v3}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2
    :try_start_4
    sget-object v0, Lcom/loc/cw;->e:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p2}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/loc/cw;->e:Ljava/text/SimpleDateFormat;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v0

    goto :goto_1
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/text/DecimalFormatSymbols;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    sget-object v1, Lcom/loc/cw;->d:Ljava/text/DecimalFormat;

    if-nez v1, :cond_0

    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "#"

    invoke-direct {v1, v2, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    sput-object v1, Lcom/loc/cw;->d:Ljava/text/DecimalFormat;

    :cond_0
    sget-object v0, Lcom/loc/cw;->d:Ljava/text/DecimalFormat;

    invoke-virtual {v0, p1}, Ljava/text/DecimalFormat;->applyPattern(Ljava/lang/String;)V

    sget-object v0, Lcom/loc/cw;->d:Ljava/text/DecimalFormat;

    invoke-virtual {v0, p0}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    invoke-static {v0, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "Utils"

    const-string v3, "str2Base64"

    invoke-static {v1, v2, v3}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(D)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-wide v2, 0x4066800000000000L    # 180.0

    cmpl-double v2, p0, v2

    if-lez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-wide v2, -0x3f99800000000000L    # -180.0

    cmpg-double v2, p0, v2

    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static declared-synchronized a(JJ)Z
    .locals 6

    const-class v2, Lcom/loc/cw;

    monitor-enter v2

    :try_start_0
    const-string v1, "yyyyMMdd"

    const/4 v0, 0x0

    sget-object v3, Lcom/loc/cw;->e:Ljava/text/SimpleDateFormat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    :try_start_1
    new-instance v3, Ljava/text/SimpleDateFormat;

    sget-object v4, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v3, v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v3, Lcom/loc/cw;->e:Ljava/text/SimpleDateFormat;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    sget-object v1, Lcom/loc/cw;->e:Ljava/text/SimpleDateFormat;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/loc/cw;->e:Ljava/text/SimpleDateFormat;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/loc/cw;->e:Ljava/text/SimpleDateFormat;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    :cond_0
    :goto_1
    monitor-exit v2

    return v0

    :catch_0
    move-exception v1

    :try_start_3
    const-string v3, "Utils"

    const-string v4, "isSameDay part1"

    invoke-static {v1, v3, v4}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_1
    :try_start_4
    sget-object v3, Lcom/loc/cw;->e:Ljava/text/SimpleDateFormat;

    invoke-virtual {v3, v1}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v3, "Utils"

    const-string v4, "isSameDay"

    invoke-static {v1, v3, v4}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p0, :cond_0

    :goto_0
    return v2

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {}, Lcom/loc/cw;->c()I

    move-result v0

    const/16 v4, 0x11

    if-ge v0, v4, :cond_2

    :try_start_0
    const-string v4, "android.provider.Settings$System"

    const-string v0, "AIRPLANE_MODE_ON"

    invoke-static {v4, v0}, Lcom/loc/cu;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v3, 0x1

    aput-object v0, v5, v3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v6, Landroid/content/ContentResolver;

    aput-object v6, v0, v3

    const/4 v3, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v0, v3

    const-string v3, "getInt"

    invoke-static {v4, v3, v5, v0}, Lcom/loc/cu;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "Utils"

    const-string v3, "airPlaneModeOn part"

    invoke-static {v0, v1, v3}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_1
    const-string v4, "android.provider.Settings$Global"

    const-string v0, "AIRPLANE_MODE_ON"

    invoke-static {v4, v0}, Lcom/loc/cu;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v3, 0x1

    aput-object v0, v5, v3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v6, Landroid/content/ContentResolver;

    aput-object v6, v0, v3

    const/4 v3, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v0, v3

    const-string v3, "getInt"

    invoke-static {v4, v3, v5, v0}, Lcom/loc/cu;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    if-ne v0, v1, :cond_3

    :goto_2
    move v2, v1

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_2

    :catch_1
    move-exception v0

    const-string v1, "Utils"

    const-string v3, "airPlaneModeOn"

    invoke-static {v0, v1, v3}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static a(Landroid/net/wifi/ScanResult;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    iget-object v2, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    const-string v3, "00:00:00:00:00:00"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    const-string v3, " :"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static a(Lcom/amap/api/location/AMapLocation;)Z
    .locals 10

    const-wide/16 v8, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v2

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v4

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getAccuracy()F

    move-result v6

    cmpl-double v7, v2, v8

    if-nez v7, :cond_2

    cmpl-double v7, v4, v8

    if-nez v7, :cond_2

    float-to-double v6, v6

    cmpl-double v6, v6, v8

    if-eqz v6, :cond_0

    :cond_2
    const-wide v6, 0x4066800000000000L    # 180.0

    cmpl-double v6, v2, v6

    if-gtz v6, :cond_0

    const-wide v6, 0x4056800000000000L    # 90.0

    cmpl-double v6, v4, v6

    if-gtz v6, :cond_0

    const-wide v6, -0x3f99800000000000L    # -180.0

    cmpg-double v2, v2, v6

    if-ltz v2, :cond_0

    const-wide v2, -0x3fa9800000000000L    # -90.0

    cmpg-double v2, v4, v2

    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static a(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z
    .locals 10

    const-wide/16 v8, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->m()Ljava/lang/String;

    move-result-object v2

    const-string v3, "8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->m()Ljava/lang/String;

    move-result-object v2

    const-string v3, "5"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->m()Ljava/lang/String;

    move-result-object v2

    const-string v3, "6"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->h()D

    move-result-wide v2

    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->i()D

    move-result-wide v4

    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->j()F

    move-result v6

    cmpl-double v7, v2, v8

    if-nez v7, :cond_2

    cmpl-double v7, v4, v8

    if-nez v7, :cond_2

    float-to-double v6, v6

    cmpl-double v6, v6, v8

    if-eqz v6, :cond_0

    :cond_2
    const-wide v6, 0x4066800000000000L    # 180.0

    cmpl-double v6, v2, v6

    if-gtz v6, :cond_0

    const-wide v6, 0x4056800000000000L    # 90.0

    cmpl-double v6, v4, v6

    if-gtz v6, :cond_0

    const-wide v6, -0x3f99800000000000L    # -180.0

    cmpg-double v2, v2, v6

    if-ltz v2, :cond_0

    const-wide v2, -0x3fa9800000000000L    # -90.0

    cmpg-double v2, v4, v2

    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, ",111,123,134,199,202,204,206,208,212,213,214,216,218,219,220,222,225,226,228,230,231,232,234,235,238,240,242,244,246,247,248,250,255,257,259,260,262,266,268,270,272,274,276,278,280,282,283,284,286,288,289,290,292,293,294,295,297,302,308,310,311,312,313,314,315,316,310,330,332,334,338,340,342,344,346,348,350,352,354,356,358,360,362,363,364,365,366,368,370,372,374,376,400,401,402,404,405,406,410,412,413,414,415,416,417,418,419,420,421,422,424,425,426,427,428,429,430,431,432,434,436,437,438,440,441,450,452,454,455,456,457,466,467,470,472,502,505,510,514,515,520,525,528,530,534,535,536,537,539,540,541,542,543,544,545,546,547,548,549,550,551,552,553,555,560,598,602,603,604,605,606,607,608,609,610,611,612,613,614,615,616,617,618,619,620,621,622,623,624,625,626,627,628,629,630,631,632,633,634,635,636,637,638,639,640,641,642,643,645,646,647,648,649,650,651,652,653,654,655,657,659,665,702,704,706,708,710,712,714,716,722,724,730,732,734,736,738,740,742,744,746,748,750,850,901,"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0
.end method

.method public static a(Lorg/json/JSONObject;Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/loc/w;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static a(J)[B
    .locals 6

    const/16 v0, 0x8

    new-array v1, v0, [B

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    mul-int/lit8 v2, v0, 0x8

    shr-long v2, p0, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static final a(Ljava/io/File;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "can\'t operate on null"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/16 v0, 0x800

    new-array v0, v0, [B

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public static a([B)[B
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/loc/w;->a([B)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "Utils"

    const-string v3, "gz"

    invoke-static {v1, v2, v3}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Landroid/telephony/TelephonyManager;)[Ljava/lang/String;
    .locals 8

    const/4 v7, 0x3

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/String;

    const-string v1, "0"

    aput-object v1, v3, v2

    const-string v1, "0"

    aput-object v1, v3, v4

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    if-eqz v1, :cond_4

    invoke-virtual {v0, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v2

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    move v1, v2

    :goto_1
    array-length v6, v5

    if-ge v1, v6, :cond_3

    aget-char v6, v5, v1

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v5, 0x4

    if-gt v1, v5, :cond_8

    move v1, v2

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v1, 0x3

    invoke-virtual {v0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    :cond_4
    const/4 v0, 0x0

    :try_start_0
    aget-object v0, v3, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_2
    if-nez v0, :cond_5

    const-string v0, "0"

    aput-object v0, v3, v2

    :cond_5
    aget-object v0, v3, v2

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    aget-object v0, v3, v4

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    sput-object v3, Lcom/loc/cw;->b:[Ljava/lang/String;

    move-object v0, v3

    :goto_3
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Utils"

    const-string v5, "getMccMnc"

    invoke-static {v0, v1, v5}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    goto :goto_2

    :cond_6
    aget-object v0, v3, v2

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    aget-object v0, v3, v4

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/loc/cw;->b:[Ljava/lang/String;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/loc/cw;->b:[Ljava/lang/String;

    goto :goto_3

    :cond_7
    move-object v0, v3

    goto :goto_3

    :cond_8
    move v1, v4

    goto/16 :goto_0
.end method

.method public static b()J
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final b([B)J
    .locals 7

    const/16 v6, 0x8

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v6, :cond_0

    shl-long/2addr v2, v6

    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    int-to-long v4, v1

    or-long/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-wide v2
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Lcom/loc/e;->k:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v0, Lcom/loc/e;->k:Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x40

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v2, v1

    :goto_1
    :try_start_1
    sget-object v1, Lcom/loc/e;->l:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    sput-object v1, Lcom/loc/e;->l:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v2, :cond_5

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_3

    iget-object v0, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    :cond_3
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-object v0, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    sget-object v0, Lcom/loc/e;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/loc/e;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    sget-object v0, Lcom/loc/e;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/loc/e;->l:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Utils"

    const-string v3, "getAppName part"

    invoke-static {v1, v2, v3}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v0

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v3, "Utils"

    const-string v4, "getAppName"

    invoke-static {v1, v3, v4}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static b(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    :cond_0
    sget-object v1, Lcom/loc/e;->r:Landroid/util/SparseArray;

    const-string v2, "UNKWN"

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static b(D)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-wide v2, 0x4056800000000000L    # 90.0

    cmpl-double v2, p0, v2

    if-lez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-wide v2, -0x3fa9800000000000L    # -90.0

    cmpg-double v2, p0, v2

    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static b(I)[B
    .locals 3

    const/4 v0, 0x2

    new-array v1, v0, [B

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    mul-int/lit8 v2, v0, 0x8

    shr-int v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static b(Ljava/lang/String;)[B
    .locals 5

    const/4 v0, 0x6

    new-array v1, v0, [B

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    aget-object v3, v2, v0

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static c()I
    .locals 4

    sget v0, Lcom/loc/cw;->a:I

    if-lez v0, :cond_0

    sget v0, Lcom/loc/cw;->a:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    const-string v1, "android.os.Build$VERSION"

    :try_start_0
    const-string v2, "SDK_INT"

    invoke-static {v1, v2}, Lcom/loc/cu;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_1
    const-string v2, "SDK"

    invoke-static {v1, v2}, Lcom/loc/cu;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v2, "Utils"

    const-string v3, "getSdk"

    invoke-static {v1, v2, v3}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static final c([B)I
    .locals 2

    const/4 v0, 0x0

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public static c(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/loc/q;->n(Landroid/content/Context;)Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "Utils"

    const-string v3, "getNetWorkInfo"

    invoke-static {v1, v2, v3}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/loc/cw;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(I)[B
    .locals 3

    const/4 v0, 0x4

    new-array v1, v0, [B

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    mul-int/lit8 v2, v0, 0x8

    shr-int v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static final d([B)I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    shl-int/lit8 v1, v1, 0x8

    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    new-instance v0, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    const/4 v0, 0x0

    const-string v2, "Utils"

    const-string v3, "base642Str"

    invoke-static {v1, v2, v3}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v3, 0x64

    if-eq v0, v3, :cond_1

    move v0, v1

    :goto_0
    return v0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Utils"

    const-string v3, "isApplicationBroughtToBackground"

    invoke-static {v0, v2, v3}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0
.end method

.method public static e()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/loc/cw;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "amaplocationapi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static e(Ljava/lang/String;)[B
    .locals 1

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/loc/cw;->b(I)[B

    move-result-object v0

    return-object v0
.end method

.method public static f()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static f(Ljava/lang/String;)[B
    .locals 1

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/loc/cw;->c(I)[B

    move-result-object v0

    return-object v0
.end method

.method public static g()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public static h()Z
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/loc/cw;->a(II)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static i()V
    .locals 1

    sget-object v0, Lcom/loc/cw;->c:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    return-void
.end method

.method public static j()Ljava/lang/String;
    .locals 2

    const-string v0, ""

    :try_start_0
    sget-object v0, Lcom/loc/e;->f:Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/loc/r;->b([B)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0
.end method

.method public static k()Z
    .locals 2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
