.class public Ltqt/weibo/cn/tqtsdk/log/a/a/b/c;
.super Ljava/lang/Object;
.source "LogUtils.java"


.field private static a:Landroid/content/Context;

.field private static b:Ltqt/weibo/cn/tqtsdk/log/a/a/b/c;


.field private c:Ljava/lang/String;


.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31
    sput-object v0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/c;->a:Landroid/content/Context;

    .line 32
    sput-object v0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/c;->b:Ltqt/weibo/cn/tqtsdk/log/a/a/b/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/c;->c:Ljava/lang/String;

    return-void
.end method

.method public static a(JLjava/lang/Boolean;)J
    .locals 10

    .prologue
    const-wide/16 v2, 0x0

    .line 90
    .line 91
    const/4 v0, 0x0

    .line 92
    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    .line 93
    cmp-long v1, p0, v2

    if-gtz v1, :cond_2

    .line 95
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    const/16 v0, 0x4e20

    move v8, v0

    move-wide v0, v2

    move v2, v8

    .line 113
    :goto_0
    if-eqz v2, :cond_0

    .line 114
    invoke-virtual {v4, v2}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v0

    add-int/2addr v0, v2

    shr-int/lit8 v0, v0, 0x1

    int-to-long v0, v0

    .line 116
    :cond_0
    return-wide v0

    .line 98
    :cond_1
    const v0, 0x124f80

    move v8, v0

    move-wide v0, v2

    move v2, v8

    goto :goto_0

    .line 101
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    .line 103
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 104
    const-wide/32 v6, 0x1b7740

    cmp-long v1, v2, v6

    if-lez v1, :cond_4

    .line 105
    const v0, 0x1b7740

    move v8, v0

    move-wide v0, v2

    move v2, v8

    goto :goto_0

    .line 108
    :cond_3
    const-wide/32 v6, 0xdbba00

    cmp-long v1, v2, v6

    if-lez v1, :cond_4

    .line 109
    const v0, 0xdbba00

    move v8, v0

    move-wide v0, v2

    move v2, v8

    goto :goto_0

    :cond_4
    move v8, v0

    move-wide v0, v2

    move v2, v8

    goto :goto_0
.end method

.method public static a()Ljava/lang/String;
    .locals 4

    .prologue
    .line 59
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v0, v1}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/c;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 49
    if-nez p0, :cond_0

    .line 50
    const-string v0, ""

    .line 55
    :goto_0
    return-object v0

    .line 52
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-direct {v0, p1, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 54
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Ltqt/weibo/cn/tqtsdk/log/a/a/b/c;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/c;->b:Ltqt/weibo/cn/tqtsdk/log/a/a/b/c;

    if-eqz v0, :cond_0

    sget-object v0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/c;->a:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 41
    :cond_0
    new-instance v0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/c;

    invoke-direct {v0}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/c;-><init>()V

    sput-object v0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/c;->b:Ltqt/weibo/cn/tqtsdk/log/a/a/b/c;

    .line 42
    sget-object v0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/c;->b:Ltqt/weibo/cn/tqtsdk/log/a/a/b/c;

    sput-object p0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/c;->a:Landroid/content/Context;

    .line 44
    :cond_1
    sget-object v0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/c;->b:Ltqt/weibo/cn/tqtsdk/log/a/a/b/c;

    return-object v0
.end method

.method public static a([B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 86
    :cond_0
    :goto_0
    return-object p0

    .line 79
    :cond_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 80
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 81
    invoke-virtual {v1, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 82
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 83
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 84
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    .line 85
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    goto :goto_0
.end method

.method public static b()Ljava/lang/String;
    .locals 4

    .prologue
    .line 65
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    const-string v1, "yyyy-MM-dd"

    invoke-static {v0, v1}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/c;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c()Ljava/lang/String;
    .locals 4

    .prologue
    .line 70
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    const-string v1, "HH:mm:ss"

    invoke-static {v0, v1}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/c;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private k()Landroid/net/NetworkInfo;
    .locals 3

    .prologue
    .line 214
    const/4 v1, 0x0

    .line 215
    sget-object v0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/c;->a:Landroid/content/Context;

    const-string v2, "connectivity"

    .line 216
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 217
    if-eqz v0, :cond_0

    .line 218
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 220
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method private l()Ljava/lang/String;
    .locals 3

    .prologue
    .line 254
    const-string v0, "unkonwn"

    .line 256
    sget-object v0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/c;->a:Landroid/content/Context;

    const-string v1, "wifi"

    .line 257
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 258
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 259
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    .line 260
    if-eqz v0, :cond_0

    .line 262
    const-string v1, "\""

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 265
    :cond_0
    return-object v0
.end method


.method public d()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 134
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 135
    sget-object v1, Ltqt/weibo/cn/tqtsdk/log/a/a/b/c;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    aput v1, v0, v2

    .line 136
    sget-object v1, Ltqt/weibo/cn/tqtsdk/log/a/a/b/c;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    aput v1, v0, v3

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " x "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v0, v0, v3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 149
    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/c;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/c;->c:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    :cond_0
    invoke-direct {p0}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/c;->k()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 151
    if-eqz v0, :cond_3

    .line 152
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    .line 153
    if-ne v0, v1, :cond_1

    .line 154
    const-string v0, "WiFi"

    iput-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/c;->c:Ljava/lang/String;

    .line 206
    :cond_1
    :goto_0
    const-string v0, "MOBILE"

    .line 207
    iget-object v1, p0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/c;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/c;->c:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 208
    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/c;->c:Ljava/lang/String;

    .line 210
    :cond_2
    return-object v0

    .line 158
    :cond_3
    const/4 v0, 0x3

    :try_start_0
    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "\u4e2d\u56fd\u79fb\u52a8"

    aput-object v3, v5, v0

    const/4 v0, 0x1

    const-string v3, "\u4e2d\u56fd\u8054\u901a"

    aput-object v3, v5, v0

    const/4 v0, 0x2

    const-string v3, "\u4e2d\u56fd\u7535\u4fe1"

    aput-object v3, v5, v0

    .line 159
    const/4 v3, -0x1

    .line 160
    sget-object v0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/c;->a:Landroid/content/Context;

    const-string v6, "phone"

    .line 161
    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 162
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v6

    .line 163
    if-eqz v6, :cond_5

    .line 164
    const-string v7, "46000"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "46002"

    .line 165
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    :cond_4
    move v3, v4

    .line 177
    :cond_5
    :goto_1
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v6

    .line 178
    if-gez v3, :cond_c

    if-eqz v6, :cond_c

    .line 179
    const-string v7, "46000"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    const-string v7, "46002"

    .line 180
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    const-string v7, "46007"

    .line 181
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    :cond_6
    move v1, v4

    .line 192
    :cond_7
    :goto_2
    if-ltz v1, :cond_b

    array-length v2, v5

    if-ge v1, v2, :cond_b

    .line 193
    aget-object v0, v5, v1

    iput-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/c;->c:Ljava/lang/String;

    goto :goto_0

    .line 202
    :catch_0
    move-exception v0

    goto :goto_0

    .line 169
    :cond_8
    const-string v7, "46001"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    move v3, v1

    .line 171
    goto :goto_1

    .line 172
    :cond_9
    const-string v7, "46003"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    move v3, v2

    .line 174
    goto :goto_1

    .line 184
    :cond_a
    const-string v4, "46001"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 187
    const-string v1, "46003"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    move v1, v2

    .line 189
    goto :goto_2

    .line 195
    :cond_b
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/c;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :cond_c
    move v1, v3

    goto :goto_2
.end method

.method public f()Ljava/lang/String;
    .locals 4

    .prologue
    .line 225
    const-string v0, "NotReachable"

    .line 226
    invoke-direct {p0}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/c;->k()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 227
    if-eqz v1, :cond_0

    .line 228
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 229
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v1

    .line 230
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WiFi("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/c;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 245
    :cond_0
    :goto_0
    return-object v0

    .line 232
    :cond_1
    if-nez v2, :cond_0

    .line 233
    const/4 v0, 0x3

    if-eq v1, v0, :cond_2

    const/16 v0, 0x8

    if-eq v1, v0, :cond_2

    const/16 v0, 0xa

    if-eq v1, v0, :cond_2

    const/4 v0, 0x5

    if-eq v1, v0, :cond_2

    const/4 v0, 0x6

    if-eq v1, v0, :cond_2

    const/4 v0, 0x7

    if-ne v1, v0, :cond_3

    .line 239
    :cond_2
    const-string v0, "WWAN(3g)"

    goto :goto_0

    .line 241
    :cond_3
    const-string v0, "WWAN(2g)"

    goto :goto_0
.end method

.method public g()Ljava/lang/String;
    .locals 2

    .prologue
    .line 272
    sget-object v0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/c;->a:Landroid/content/Context;

    const-string v1, "phone"

    .line 273
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 274
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 275
    if-nez v0, :cond_0

    .line 276
    const-string v0, "not_available"

    .line 278
    :cond_0
    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 2

    .prologue
    .line 282
    sget-object v0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/c;->a:Landroid/content/Context;

    const-string v1, "wifi"

    .line 283
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 284
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 285
    if-eqz v0, :cond_0

    .line 286
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 288
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()Ljava/lang/String;
    .locals 4

    .prologue
    .line 343
    const-string v0, "%s_%s_%s_%s"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/c;->g()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/c;->h()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 346
    invoke-static {v0}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 347
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x20

    if-lt v1, v2, :cond_0

    .line 348
    const/16 v1, 0x8

    const/16 v2, 0x18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 350
    :cond_0
    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 354
    sget-object v0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/sina/deviceidjnisdk/DeviceIdFactory;->getInstance(Landroid/content/Context;)Lcom/sina/deviceidjnisdk/IDeviceId;

    move-result-object v0

    invoke-interface {v0}, Lcom/sina/deviceidjnisdk/IDeviceId;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
