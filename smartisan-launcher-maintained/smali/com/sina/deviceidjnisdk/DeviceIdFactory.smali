.class public Lcom/sina/deviceidjnisdk/DeviceIdFactory;
.super Ljava/lang/Object;
.source "DeviceIdFactory.java"


.field private static volatile sInstance:Lcom/sina/deviceidjnisdk/IDeviceId;


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-string v0, "weibosdkcoretiqitong"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native calculateM(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static declared-synchronized getIValue(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 32
    const-class v1, Lcom/sina/deviceidjnisdk/DeviceIdFactory;

    monitor-enter v1

    :try_start_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 33
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 35
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 36
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 37
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 38
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 42
    :cond_0
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 43
    const-string v0, "000000000000000"

    .line 46
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 47
    invoke-static {p0, v0}, Lcom/sina/deviceidjnisdk/DeviceIdFactory;->getIValueNative(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 52
    :goto_1
    monitor-exit v1

    return-object v0

    .line 38
    :cond_2
    :try_start_1
    const-string v0, ""
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 50
    :catch_0
    move-exception v0

    .line 52
    :cond_3
    :try_start_2
    const-string v0, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 32
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static native getIValueNative(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/sina/deviceidjnisdk/IDeviceId;
    .locals 2

    .prologue
    .line 22
    const-class v1, Lcom/sina/deviceidjnisdk/DeviceIdFactory;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sina/deviceidjnisdk/DeviceIdFactory;->sInstance:Lcom/sina/deviceidjnisdk/IDeviceId;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/sina/deviceidjnisdk/DeviceId;

    invoke-direct {v0, p0}, Lcom/sina/deviceidjnisdk/DeviceId;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sina/deviceidjnisdk/DeviceIdFactory;->sInstance:Lcom/sina/deviceidjnisdk/IDeviceId;

    .line 27
    :cond_0
    sget-object v0, Lcom/sina/deviceidjnisdk/DeviceIdFactory;->sInstance:Lcom/sina/deviceidjnisdk/IDeviceId;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 22
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static native getInstanceNative(Landroid/content/Context;I)Lcom/sina/deviceidjnisdk/IDeviceId;
.end method
