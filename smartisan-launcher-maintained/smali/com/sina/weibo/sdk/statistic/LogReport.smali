.class Lcom/sina/weibo/sdk/statistic/LogReport;
.super Ljava/lang/Object;
.source "LogReport.java"


.field private static final CONNECTION_TIMEOUT:I = 0x61a8

.field private static final PRIVATE_CODE:Ljava/lang/String; = "dqwef1864il4c9m6"

.field private static final SOCKET_TIMEOUT:I = 0x4e20

.field private static UPLOADTIME:Ljava/lang/String;

.field private static mAid:Ljava/lang/String;

.field private static mAppkey:Ljava/lang/String;

.field private static mBaseUrl:Ljava/lang/String;

.field private static mChannel:Ljava/lang/String;

.field private static mKeyHash:Ljava/lang/String;

.field public static mLogReport:Lcom/sina/weibo/sdk/statistic/LogReport;

.field private static mPackageName:Ljava/lang/String;

.field private static mParams:Lorg/json/JSONObject;

.field private static mVersionName:Ljava/lang/String;


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-string v0, "uploadtime"

    sput-object v0, Lcom/sina/weibo/sdk/statistic/LogReport;->UPLOADTIME:Ljava/lang/String;

    .line 51
    const-string v0, "https://api.weibo.com/2/proxy/sdk/statistic.json"

    sput-object v0, Lcom/sina/weibo/sdk/statistic/LogReport;->mBaseUrl:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    :try_start_0
    sget-object v0, Lcom/sina/weibo/sdk/statistic/LogReport;->mPackageName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sina/weibo/sdk/statistic/LogReport;->mPackageName:Ljava/lang/String;

    .line 58
    :cond_0
    invoke-static {p1}, Lcom/sina/weibo/sdk/statistic/StatisticConfig;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sina/weibo/sdk/statistic/LogReport;->mAppkey:Ljava/lang/String;

    .line 59
    invoke-static {p1}, Lcom/sina/weibo/sdk/statistic/LogReport;->checkAid(Landroid/content/Context;)V

    .line 60
    sget-object v0, Lcom/sina/weibo/sdk/statistic/LogReport;->mPackageName:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/sina/weibo/sdk/utils/Utility;->getSign(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sina/weibo/sdk/statistic/LogReport;->mKeyHash:Ljava/lang/String;

    .line 61
    invoke-static {p1}, Lcom/sina/weibo/sdk/statistic/LogBuilder;->getVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sina/weibo/sdk/statistic/LogReport;->mVersionName:Ljava/lang/String;

    .line 62
    invoke-static {p1}, Lcom/sina/weibo/sdk/statistic/StatisticConfig;->getChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sina/weibo/sdk/statistic/LogReport;->mChannel:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :goto_0
    invoke-static {}, Lcom/sina/weibo/sdk/statistic/LogReport;->initCommonParams()Lorg/json/JSONObject;

    .line 67
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 64
    const-string v1, "WBAgent"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static checkAid(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 92
    sget-object v0, Lcom/sina/weibo/sdk/statistic/LogReport;->mAid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    sget-object v0, Lcom/sina/weibo/sdk/statistic/LogReport;->mAppkey:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/sina/weibo/sdk/utils/Utility;->getAid(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sina/weibo/sdk/statistic/LogReport;->mAid:Ljava/lang/String;

    .line 95
    :cond_0
    sget-object v0, Lcom/sina/weibo/sdk/statistic/LogReport;->mParams:Lorg/json/JSONObject;

    if-nez v0, :cond_1

    .line 96
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sput-object v0, Lcom/sina/weibo/sdk/statistic/LogReport;->mParams:Lorg/json/JSONObject;

    .line 99
    :cond_1
    :try_start_0
    sget-object v0, Lcom/sina/weibo/sdk/statistic/LogReport;->mParams:Lorg/json/JSONObject;

    const-string v1, "aid"

    sget-object v2, Lcom/sina/weibo/sdk/statistic/LogReport;->mAid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v0

    .line 102
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private static declared-synchronized getNewHttpPost(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/apache/http/client/methods/HttpPost;
    .locals 4

    .prologue
    .line 347
    const-class v1, Lcom/sina/weibo/sdk/statistic/LogReport;

    monitor-enter v1

    :try_start_0
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v2, p0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 349
    const-string v0, "Content-Type"

    const-string v3, "application/x-www-form-urlencoded"

    invoke-virtual {v2, v0, v3}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    const-string v0, "Connection"

    const-string v3, "Keep-Alive"

    invoke-virtual {v2, v0, v3}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    const-string v3, "Content-Encoding"

    .line 352
    invoke-static {}, Lcom/sina/weibo/sdk/statistic/StatisticConfig;->isNeedGizp()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "gzip"

    .line 351
    :goto_0
    invoke-virtual {v2, v3, v0}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    const-string v0, "Accept"

    const-string v3, "*/*"

    invoke-virtual {v2, v0, v3}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    const-string v0, "Accept-Language"

    const-string v3, "en-us"

    invoke-virtual {v2, v0, v3}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    const-string v0, "Accept-Encoding"

    const-string v3, "gzip"

    invoke-virtual {v2, v0, v3}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 356
    monitor-exit v1

    return-object v2

    .line 352
    :cond_0
    :try_start_1
    const-string v0, "charset=UTF-8"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 347
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    sget-object v0, Lcom/sina/weibo/sdk/statistic/LogReport;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method private static getSign(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
    .locals 4

    .prologue
    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 371
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 372
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "dqwef1864il4c9m6"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 375
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sina/weibo/sdk/utils/MD5;->hexdigest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 376
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x6

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 377
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sina/weibo/sdk/utils/MD5;->hexdigest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 379
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTime(Landroid/content/Context;)J
    .locals 4

    .prologue
    .line 405
    sget-object v0, Lcom/sina/weibo/sdk/statistic/LogReport;->UPLOADTIME:Ljava/lang/String;

    .line 406
    const/4 v1, 0x0

    .line 405
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 407
    const-string v1, "lasttime"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static gzipLogs(Ljava/lang/String;)[B
    .locals 3

    .prologue
    .line 389
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 390
    :cond_0
    const/4 v0, 0x0

    .line 401
    :goto_0
    return-object v0

    .line 392
    :cond_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 394
    :try_start_0
    const-string v0, "utf-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 395
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 396
    invoke-virtual {v2, v0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 397
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 401
    :goto_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_0

    .line 398
    :catch_0
    move-exception v0

    .line 399
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private static initCommonParams()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 73
    sget-object v0, Lcom/sina/weibo/sdk/statistic/LogReport;->mParams:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sput-object v0, Lcom/sina/weibo/sdk/statistic/LogReport;->mParams:Lorg/json/JSONObject;

    .line 77
    :cond_0
    :try_start_0
    sget-object v0, Lcom/sina/weibo/sdk/statistic/LogReport;->mParams:Lorg/json/JSONObject;

    const-string v1, "appkey"

    sget-object v2, Lcom/sina/weibo/sdk/statistic/LogReport;->mAppkey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 78
    sget-object v0, Lcom/sina/weibo/sdk/statistic/LogReport;->mParams:Lorg/json/JSONObject;

    const-string v1, "platform"

    const-string v2, "Android"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79
    sget-object v0, Lcom/sina/weibo/sdk/statistic/LogReport;->mParams:Lorg/json/JSONObject;

    const-string v1, "packagename"

    sget-object v2, Lcom/sina/weibo/sdk/statistic/LogReport;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 80
    sget-object v0, Lcom/sina/weibo/sdk/statistic/LogReport;->mParams:Lorg/json/JSONObject;

    const-string v1, "key_hash"

    sget-object v2, Lcom/sina/weibo/sdk/statistic/LogReport;->mKeyHash:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 81
    sget-object v0, Lcom/sina/weibo/sdk/statistic/LogReport;->mParams:Lorg/json/JSONObject;

    const-string v1, "version"

    sget-object v2, Lcom/sina/weibo/sdk/statistic/LogReport;->mVersionName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    sget-object v0, Lcom/sina/weibo/sdk/statistic/LogReport;->mParams:Lorg/json/JSONObject;

    const-string v1, "channel"

    sget-object v2, Lcom/sina/weibo/sdk/statistic/LogReport;->mChannel:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_0
    sget-object v0, Lcom/sina/weibo/sdk/statistic/LogReport;->mParams:Lorg/json/JSONObject;

    return-object v0

    .line 83
    :catch_0
    move-exception v0

    .line 85
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private static isNetworkConnected(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 257
    if-nez p0, :cond_0

    .line 258
    const-string v0, "WBAgent"

    .line 259
    const-string v2, "unexpected null context in isNetworkConnected"

    .line 258
    invoke-static {v0, v2}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 278
    :goto_0
    return v0

    .line 262
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 263
    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    .line 264
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 263
    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 265
    goto :goto_0

    .line 268
    :cond_1
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 267
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 269
    const/4 v2, 0x0

    .line 271
    :try_start_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 275
    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    move v0, v1

    .line 276
    goto :goto_0

    .line 272
    :catch_0
    move-exception v0

    move-object v0, v2

    goto :goto_1

    .line 278
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static requestHttpExecute(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONArray;)Lorg/apache/http/HttpResponse;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 182
    .line 184
    const/4 v2, 0x0

    .line 190
    :try_start_0
    invoke-static {}, Lcom/sina/weibo/sdk/net/HttpManager;->getNewHttpClient()Lorg/apache/http/client/HttpClient;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_f
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 192
    if-nez p2, :cond_0

    .line 193
    :try_start_1
    invoke-static {}, Lcom/sina/weibo/sdk/statistic/LogReport;->initCommonParams()Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object p2

    .line 196
    :cond_0
    :try_start_2
    const-string v1, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {p2, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 197
    const-string v1, "length"

    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    move-result v4

    invoke-virtual {p2, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 199
    const-string v1, "sign"

    .line 200
    const-string v4, "aid"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 201
    const-string v5, "appkey"

    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 202
    const-string v6, "time"

    invoke-virtual {p2, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 200
    invoke-static {v4, v5, v6, v7}, Lcom/sina/weibo/sdk/statistic/LogReport;->getSign(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v4

    .line 198
    invoke-virtual {p2, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 203
    const-string v1, "content"

    invoke-virtual {p2, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 204
    const-string v1, "WBAgent"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "post content--- "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_e
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 210
    :goto_0
    :try_start_3
    const-string v1, "GET"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 212
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_3} :catch_e
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_b
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v2, v0

    .line 230
    :goto_1
    :try_start_4
    invoke-interface {v3, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 231
    const-string v1, "WBAgent"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "status code = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 232
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 231
    invoke-static {v1, v4}, Lcom/sina/weibo/sdk/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_c
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 240
    if-eqz v2, :cond_1

    .line 242
    :try_start_5
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_a

    .line 246
    :cond_1
    :goto_2
    invoke-static {v3}, Lcom/sina/weibo/sdk/statistic/LogReport;->shutdownHttpClient(Lorg/apache/http/client/HttpClient;)V

    .line 248
    :goto_3
    return-object v0

    .line 206
    :catch_0
    move-exception v1

    .line 208
    :try_start_6
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_6 .. :try_end_6} :catch_e
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_b
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    .line 233
    :catch_1
    move-exception v1

    move-object v2, v0

    .line 234
    :goto_4
    :try_start_7
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 240
    if-eqz v2, :cond_2

    .line 242
    :try_start_8
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 246
    :cond_2
    :goto_5
    invoke-static {v3}, Lcom/sina/weibo/sdk/statistic/LogReport;->shutdownHttpClient(Lorg/apache/http/client/HttpClient;)V

    goto :goto_3

    .line 213
    :cond_3
    :try_start_9
    const-string v1, "POST"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 214
    sget-object v1, Lcom/sina/weibo/sdk/statistic/LogReport;->mAppkey:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 215
    const-string v1, "WBAgent"

    const-string v4, "unexpected null AppKey"

    invoke-static {v1, v4}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_9 .. :try_end_9} :catch_e
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_b
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 240
    if-eqz v0, :cond_4

    .line 242
    :try_start_a
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 246
    :cond_4
    :goto_6
    invoke-static {v3}, Lcom/sina/weibo/sdk/statistic/LogReport;->shutdownHttpClient(Lorg/apache/http/client/HttpClient;)V

    goto :goto_3

    .line 218
    :cond_5
    :try_start_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "source="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sina/weibo/sdk/statistic/LogReport;->mAppkey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 219
    invoke-static {v1, p2}, Lcom/sina/weibo/sdk/statistic/LogReport;->getNewHttpPost(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v1

    .line 220
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_b .. :try_end_b} :catch_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_b .. :try_end_b} :catch_e
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 221
    :try_start_c
    invoke-static {}, Lcom/sina/weibo/sdk/statistic/StatisticConfig;->isNeedGizp()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 222
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sina/weibo/sdk/statistic/LogReport;->gzipLogs(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 226
    :goto_7
    new-instance v4, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {v1, v4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto/16 :goto_1

    .line 233
    :catch_2
    move-exception v1

    goto :goto_4

    .line 224
    :cond_6
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_c .. :try_end_c} :catch_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto :goto_7

    .line 235
    :catch_3
    move-exception v1

    .line 236
    :goto_8
    :try_start_d
    invoke-virtual {v1}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 240
    if-eqz v2, :cond_7

    .line 242
    :try_start_e
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7

    .line 246
    :cond_7
    :goto_9
    invoke-static {v3}, Lcom/sina/weibo/sdk/statistic/LogReport;->shutdownHttpClient(Lorg/apache/http/client/HttpClient;)V

    goto/16 :goto_3

    .line 237
    :catch_4
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    .line 238
    :goto_a
    :try_start_f
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 240
    if-eqz v2, :cond_8

    .line 242
    :try_start_10
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_8

    .line 246
    :cond_8
    :goto_b
    invoke-static {v3}, Lcom/sina/weibo/sdk/statistic/LogReport;->shutdownHttpClient(Lorg/apache/http/client/HttpClient;)V

    goto/16 :goto_3

    .line 239
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v0, v1

    .line 240
    :goto_c
    if-eqz v2, :cond_9

    .line 242
    :try_start_11
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_9

    .line 246
    :cond_9
    :goto_d
    invoke-static {v3}, Lcom/sina/weibo/sdk/statistic/LogReport;->shutdownHttpClient(Lorg/apache/http/client/HttpClient;)V

    .line 247
    throw v0

    .line 243
    :catch_5
    move-exception v1

    goto/16 :goto_6

    :catch_6
    move-exception v1

    goto/16 :goto_5

    :catch_7
    move-exception v1

    goto :goto_9

    :catch_8
    move-exception v1

    goto :goto_b

    :catch_9
    move-exception v1

    goto :goto_d

    :catch_a
    move-exception v1

    goto/16 :goto_2

    .line 239
    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_c

    :catchall_2
    move-exception v0

    goto :goto_c

    .line 237
    :catch_b
    move-exception v1

    move-object v2, v0

    goto :goto_a

    :catch_c
    move-exception v1

    goto :goto_a

    .line 235
    :catch_d
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    goto :goto_8

    :catch_e
    move-exception v1

    move-object v2, v0

    goto :goto_8

    .line 233
    :catch_f
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    goto/16 :goto_4

    :cond_a
    move-object v1, v0

    move-object v2, v0

    goto/16 :goto_1
.end method

.method public static setPackageName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 107
    sput-object p0, Lcom/sina/weibo/sdk/statistic/LogReport;->mPackageName:Ljava/lang/String;

    .line 108
    return-void
.end method

.method private static shutdownHttpClient(Lorg/apache/http/client/HttpClient;)V
    .locals 1

    .prologue
    .line 425
    if-eqz p0, :cond_0

    .line 427
    :try_start_0
    invoke-interface {p0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->closeExpiredConnections()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 431
    :cond_0
    :goto_0
    return-void

    .line 428
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static updateTime(Landroid/content/Context;Ljava/lang/Long;)V
    .locals 4

    .prologue
    .line 411
    sget-object v0, Lcom/sina/weibo/sdk/statistic/LogReport;->UPLOADTIME:Ljava/lang/String;

    .line 412
    const/4 v1, 0x0

    .line 411
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 414
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 415
    const-string v1, "lasttime"

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 416
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 417
    return-void
.end method

.method public static declared-synchronized uploadAppLogs(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 121
    const-class v1, Lcom/sina/weibo/sdk/statistic/LogReport;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sina/weibo/sdk/statistic/LogReport;->mLogReport:Lcom/sina/weibo/sdk/statistic/LogReport;

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Lcom/sina/weibo/sdk/statistic/LogReport;

    invoke-direct {v0, p0}, Lcom/sina/weibo/sdk/statistic/LogReport;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sina/weibo/sdk/statistic/LogReport;->mLogReport:Lcom/sina/weibo/sdk/statistic/LogReport;

    .line 125
    :cond_0
    invoke-static {p0}, Lcom/sina/weibo/sdk/statistic/LogReport;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 126
    const-string v0, "WBAgent"

    const-string v2, "network is not connected"

    invoke-static {v0, v2}, Lcom/sina/weibo/sdk/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string v0, "app_logs"

    invoke-static {v0}, Lcom/sina/weibo/sdk/statistic/LogFileUtil;->getAppLogPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 130
    const/4 v2, 0x1

    .line 128
    invoke-static {v0, p1, v2}, Lcom/sina/weibo/sdk/statistic/LogFileUtil;->writeToFile(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    :cond_1
    :goto_0
    monitor-exit v1

    return-void

    .line 134
    :cond_2
    :try_start_1
    invoke-static {p1}, Lcom/sina/weibo/sdk/statistic/LogBuilder;->getValidUploadLogs(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 135
    if-nez v0, :cond_3

    .line 136
    const-string v0, "WBAgent"

    const-string v2, "applogs is null"

    invoke-static {v0, v2}, Lcom/sina/weibo/sdk/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 140
    :cond_3
    :try_start_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 142
    invoke-static {p0}, Lcom/sina/weibo/sdk/statistic/LogReport;->checkAid(Landroid/content/Context;)V

    .line 143
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 156
    const-string v0, "app_logs"

    invoke-static {v0}, Lcom/sina/weibo/sdk/statistic/LogFileUtil;->getAppLogPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 155
    invoke-static {v0}, Lcom/sina/weibo/sdk/statistic/LogFileUtil;->delete(Ljava/lang/String;)Z

    .line 158
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 159
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    .line 161
    const-string v3, "app_logs"

    invoke-static {v3}, Lcom/sina/weibo/sdk/statistic/LogFileUtil;->getAppLogPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 162
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x1

    .line 160
    invoke-static {v3, v0, v4}, Lcom/sina/weibo/sdk/statistic/LogFileUtil;->writeToFile(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 163
    const-string v0, "WBAgent"

    const-string v3, "save failed_log"

    invoke-static {v0, v3}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 143
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    .line 145
    sget-object v4, Lcom/sina/weibo/sdk/statistic/LogReport;->mBaseUrl:Ljava/lang/String;

    const-string v5, "POST"

    sget-object v6, Lcom/sina/weibo/sdk/statistic/LogReport;->mParams:Lorg/json/JSONObject;

    invoke-static {v4, v5, v6, v0}, Lcom/sina/weibo/sdk/statistic/LogReport;->requestHttpExecute(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONArray;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 146
    if-nez v4, :cond_6

    .line 148
    :cond_5
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    const-string v0, "WBAgent"

    const-string v4, "upload applogs error"

    invoke-static {v0, v4}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 146
    :cond_6
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    .line 147
    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_5

    .line 151
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sina/weibo/sdk/statistic/LogReport;->updateTime(Landroid/content/Context;Ljava/lang/Long;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method
