.class public Lcom/sina/weibo/sdk/utils/NetworkHelper;
.super Ljava/lang/Object;
.source "NetworkHelper.java"


.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearCookies(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 264
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 265
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 266
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 267
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 268
    return-void
.end method

.method public static generateUA(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 278
    const-string v1, "Android"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    const-string v1, "__"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    const-string v1, "weibo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    const-string v1, "__"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    const-string v1, "sdk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    const-string v1, "__"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 287
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 288
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 289
    const-string v2, "\\s+"

    const-string v3, "_"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 290
    :catch_0
    move-exception v1

    .line 291
    const-string v1, "unknown"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .locals 1

    .prologue
    .line 127
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 128
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getNetworkInfo(Landroid/content/Context;I)Landroid/net/NetworkInfo;
    .locals 1

    .prologue
    .line 152
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 153
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getNetworkType(Landroid/content/Context;)I
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 175
    if-eqz p0, :cond_0

    .line 176
    invoke-static {p0}, Lcom/sina/weibo/sdk/utils/NetworkHelper;->getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 178
    if-nez v1, :cond_1

    .line 181
    :cond_0
    :goto_0
    return v0

    .line 178
    :cond_1
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    goto :goto_0
.end method

.method public static getWifiConnectivityState(Landroid/content/Context;)Landroid/net/NetworkInfo$DetailedState;
    .locals 1

    .prologue
    .line 214
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/sina/weibo/sdk/utils/NetworkHelper;->getNetworkInfo(Landroid/content/Context;I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 215
    if-nez v0, :cond_0

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    goto :goto_0
.end method

.method public static getWifiState(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 197
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 199
    if-nez v0, :cond_0

    .line 200
    const/4 v0, 0x4

    .line 203
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    goto :goto_0
.end method

.method public static hasInternetPermission(Landroid/content/Context;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 52
    if-eqz p0, :cond_0

    .line 53
    const-string v1, "android.permission.INTERNET"

    invoke-virtual {p0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 57
    :cond_0
    :goto_0
    return v0

    .line 53
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMobileNetwork(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 103
    if-eqz p0, :cond_0

    .line 104
    invoke-static {p0}, Lcom/sina/weibo/sdk/utils/NetworkHelper;->getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 106
    if-nez v1, :cond_1

    .line 115
    :cond_0
    :goto_0
    return v0

    .line 110
    :cond_1
    if-eqz v1, :cond_0

    .line 111
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-nez v2, :cond_0

    .line 112
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 68
    if-eqz p0, :cond_0

    .line 69
    invoke-static {p0}, Lcom/sina/weibo/sdk/utils/NetworkHelper;->getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 70
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 73
    :cond_0
    return v0
.end method

.method public static isWifiValid(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 84
    if-eqz p0, :cond_1

    .line 85
    invoke-static {p0}, Lcom/sina/weibo/sdk/utils/NetworkHelper;->getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 87
    if-eqz v2, :cond_0

    .line 88
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-ne v0, v3, :cond_0

    .line 89
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 92
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 87
    goto :goto_0

    :cond_1
    move v0, v1

    .line 92
    goto :goto_0
.end method

.method public static wifiConnection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 229
    .line 230
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 231
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 233
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 234
    if-eqz v1, :cond_1

    .line 235
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 236
    :cond_0
    const/4 v0, 0x1

    .line 256
    :goto_0
    return v0

    .line 238
    :cond_1
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v5

    .line 239
    if-eqz v5, :cond_2

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_2

    .line 240
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v3, v1

    :goto_1
    if-gez v3, :cond_3

    :cond_2
    move v0, v2

    goto :goto_0

    .line 241
    :cond_3
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    iget-object v1, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 242
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 243
    :cond_4
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 244
    iput-object v4, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 245
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 246
    const/4 v3, 0x2

    iput v3, v1, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 248
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v1

    .line 249
    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    move-result v0

    goto :goto_0

    .line 240
    :cond_5
    add-int/lit8 v1, v3, -0x1

    move v3, v1

    goto :goto_1
.end method
