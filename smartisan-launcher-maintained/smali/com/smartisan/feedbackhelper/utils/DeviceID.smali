.class public Lcom/smartisan/feedbackhelper/utils/DeviceID;
.super Ljava/lang/Object;
.source "DeviceID.java"


.field private static final BUGREPORT_DEVICE_ID_CACHE_KEY:Ljava/lang/String; = "device_id"

.field private static final BUGREPORT_DEVICE_ID_TYPE_CACHE_KEY:Ljava/lang/String; = "device_id_type"

.field private static instance:Lcom/smartisan/feedbackhelper/utils/DeviceID; = null

.field private static mDeviceId:Ljava/lang/String; = null

.field private static mDeviceType:Ljava/lang/String; = null

.field private static mMacAddress:Ljava/lang/String; = null

.field private static mUid:Ljava/lang/String; = null

.field private static final tag:Ljava/lang/String; = "BugReportDeviceID"


.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 23
    sput-object v0, Lcom/smartisan/feedbackhelper/utils/DeviceID;->mUid:Ljava/lang/String;

    .line 24
    sput-object v0, Lcom/smartisan/feedbackhelper/utils/DeviceID;->mDeviceId:Ljava/lang/String;

    .line 25
    sput-object v0, Lcom/smartisan/feedbackhelper/utils/DeviceID;->mDeviceType:Ljava/lang/String;

    .line 26
    sput-object v0, Lcom/smartisan/feedbackhelper/utils/DeviceID;->mMacAddress:Ljava/lang/String;

    .line 29
    new-instance v0, Lcom/smartisan/feedbackhelper/utils/DeviceID;

    invoke-direct {v0}, Lcom/smartisan/feedbackhelper/utils/DeviceID;-><init>()V

    sput-object v0, Lcom/smartisan/feedbackhelper/utils/DeviceID;->instance:Lcom/smartisan/feedbackhelper/utils/DeviceID;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static getInstance()Lcom/smartisan/feedbackhelper/utils/DeviceID;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/smartisan/feedbackhelper/utils/DeviceID;->instance:Lcom/smartisan/feedbackhelper/utils/DeviceID;

    return-object v0
.end method


.method public declared-synchronized getId(Landroid/content/Context;)Ljava/lang/String;
    .locals 11
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 39
    monitor-enter p0

    :try_start_0
    sget-object v6, Lcom/smartisan/feedbackhelper/utils/DeviceID;->mUid:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 40
    invoke-virtual {p0}, Lcom/smartisan/feedbackhelper/utils/DeviceID;->getType()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 42
    .local v5, "type":Ljava/lang/String;
    :try_start_1
    const-string v6, "SERIAL"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 43
    sget-object v6, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    sput-object v6, Lcom/smartisan/feedbackhelper/utils/DeviceID;->mUid:Ljava/lang/String;

    .line 51
    :cond_0
    :goto_0
    const-string v6, "BugReportDeviceID"

    const-string v7, "DeviceID : %s, IDType: %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    sget-object v10, Lcom/smartisan/feedbackhelper/utils/DeviceID;->mUid:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object v5, v8, v9

    .line 52
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 51
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    :goto_1
    :try_start_2
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 62
    .local v4, "preference":Landroid/content/SharedPreferences;
    sget-object v6, Lcom/smartisan/feedbackhelper/utils/DeviceID;->mUid:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 63
    const-string v6, "device_id"

    const/4 v7, 0x0

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "cachedDeviceId":Ljava/lang/String;
    const-string v6, "device_id_type"

    const-string v7, ""

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, "cachedDeviceIdType":Ljava/lang/String;
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    if-eqz v0, :cond_4

    .line 69
    sput-object v0, Lcom/smartisan/feedbackhelper/utils/DeviceID;->mUid:Ljava/lang/String;

    .line 82
    .end local v0    # "cachedDeviceId":Ljava/lang/String;
    .end local v1    # "cachedDeviceIdType":Ljava/lang/String;
    .end local v4    # "preference":Landroid/content/SharedPreferences;
    .end local v5    # "type":Ljava/lang/String;
    :cond_1
    :goto_2
    sget-object v6, Lcom/smartisan/feedbackhelper/utils/DeviceID;->mUid:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    monitor-exit p0

    return-object v6

    .line 44
    .restart local v5    # "type":Ljava/lang/String;
    :cond_2
    :try_start_3
    const-string v6, "TELEPHONY_DEVICE_ID"

    .line 45
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 46
    invoke-virtual {p0, p1}, Lcom/smartisan/feedbackhelper/utils/DeviceID;->getTelephonyDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/smartisan/feedbackhelper/utils/DeviceID;->mUid:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 53
    :catch_0
    move-exception v2

    .line 54
    .local v2, "e":Ljava/lang/Throwable;
    :try_start_4
    const-string v6, "BugReportDeviceID"

    const-string v7, "Failed to get the device id with type %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 39
    .end local v2    # "e":Ljava/lang/Throwable;
    .end local v5    # "type":Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 47
    .restart local v5    # "type":Ljava/lang/String;
    :cond_3
    :try_start_5
    const-string v6, "WIFI_MAC"

    .line 48
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 49
    invoke-virtual {p0, p1}, Lcom/smartisan/feedbackhelper/utils/DeviceID;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/smartisan/feedbackhelper/utils/DeviceID;->mUid:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 72
    .restart local v0    # "cachedDeviceId":Ljava/lang/String;
    .restart local v1    # "cachedDeviceIdType":Ljava/lang/String;
    .restart local v4    # "preference":Landroid/content/SharedPreferences;
    :cond_4
    :try_start_6
    const-string v6, "INVALID_DEVICE_ID"

    goto :goto_3

    .line 76
    .end local v0    # "cachedDeviceId":Ljava/lang/String;
    .end local v1    # "cachedDeviceIdType":Ljava/lang/String;
    :cond_5
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 77
    .local v3, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v6, "device_id"

    sget-object v7, Lcom/smartisan/feedbackhelper/utils/DeviceID;->mUid:Ljava/lang/String;

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 78
    const-string v6, "device_id_type"

    invoke-interface {v3, v6, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 79
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2
.end method

.method public declared-synchronized getMacAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 115
    monitor-enter p0

    :try_start_0
    const-string v0, "unknown"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTelephonyDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 99
    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/smartisan/feedbackhelper/utils/DeviceID;->mDeviceId:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 100
    const-string v1, "phone"

    .line 101
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 102
    .local v0, "tMgr":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/smartisan/feedbackhelper/utils/DeviceID;->mDeviceId:Ljava/lang/String;

    .line 104
    .end local v0    # "tMgr":Landroid/telephony/TelephonyManager;
    :cond_0
    sget-object v1, Lcom/smartisan/feedbackhelper/utils/DeviceID;->mDeviceId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 99
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 86
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/smartisan/feedbackhelper/utils/DeviceID;->mDeviceType:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 91
    const-string v0, "ro.bugreport.uid.type"

    const-string v1, "TELEPHONY_DEVICE_ID"

    invoke-static {v0, v1}, Lcom/smartisan/feedbackhelper/utils/Util;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/smartisan/feedbackhelper/utils/DeviceID;->mDeviceType:Ljava/lang/String;

    .line 95
    :cond_0
    sget-object v0, Lcom/smartisan/feedbackhelper/utils/DeviceID;->mDeviceType:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
