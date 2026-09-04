.class public Lcom/smartisan/feedbackhelper/utils/JsonData;
.super Ljava/lang/Object;
.source "JsonData.java"


.field public static final APPINFO:Ljava/lang/String; = "appinfo"

.field public static final APP_NAME:Ljava/lang/String; = "app_name"

.field public static final APP_VER:Ljava/lang/String; = "app_version"

.field public static final DATA_ATTA:Ljava/lang/String; = "attachlist"

.field public static final DATA_DES:Ljava/lang/String; = "description"

.field public static final DATA_DEV_INFO:Ljava/lang/String; = "deviceinfo"

.field public static final DATA_FROM:Ljava/lang/String; = "from"

.field public static final DATA_JSON:Ljava/lang/String; = "data"

.field public static final DATA_PRC_INFO:Ljava/lang/String; = "processinfo"

.field public static final DATA_SUM:Ljava/lang/String; = "summary"

.field public static final DATA_SYS_INFO:Ljava/lang/String; = "systeminfo"

.field public static final DATA_TAG:Ljava/lang/String; = "tag"

.field public static final DATA_TIME:Ljava/lang/String; = "createtime"

.field public static final DATA_USR_INFO:Ljava/lang/String; = "userinfo"

.field public static final DEV_BLUR:Ljava/lang/String; = "blurdevice_flag"

.field public static final DEV_BOARD:Ljava/lang/String; = "board"

.field public static final DEV_BP_VERSOIN:Ljava/lang/String; = "bp_version"

.field public static final DEV_BRAND:Ljava/lang/String; = "brand"

.field public static final DEV_MEM:Ljava/lang/String; = "total_mem"

.field public static final DEV_MODEL:Ljava/lang/String; = "model"

.field public static final DEV_PRODUCT:Ljava/lang/String; = "product"

.field public static final DEV_SERIAL:Ljava/lang/String; = "serial"

.field public static final DEV_TELEPHONY_DEVICEID:Ljava/lang/String; = "telephony_device_id"

.field public static final DEV_UID:Ljava/lang/String; = "uid"

.field public static final DEV_WIFI_MAC:Ljava/lang/String; = "wifi_mac"

.field public static final PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field public static final PACKAGE_VER:Ljava/lang/String; = "package_version"

.field public static final SYS_CPU_ABI:Ljava/lang/String; = "cpuAbi"

.field public static final SYS_CPU_ABI2:Ljava/lang/String; = "cpuAbi2"

.field public static final SYS_FIG:Ljava/lang/String; = "fingerprint"

.field public static final SYS_SWV:Ljava/lang/String; = "softwareVersion"

.field public static final SYS_TYPE:Ljava/lang/String; = "type"

.field public static final SYS_VERSION_SDK_INT:Ljava/lang/String; = "version_sdk_int"

.field static TAG:Ljava/lang/String; = null

.field public static final USER_EMAIL:Ljava/lang/String; = "email"

.field private static mTimesFormat:Ljava/text/SimpleDateFormat;


.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    const-string v0, "BugReportJsonData"

    sput-object v0, Lcom/smartisan/feedbackhelper/utils/JsonData;->TAG:Ljava/lang/String;

    .line 66
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/smartisan/feedbackhelper/utils/JsonData;->mTimesFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toCreateReportRequest(Landroid/content/Context;Lcom/smartisan/feedbackhelper/utils/ComplainReport;)Lorg/json/JSONObject;
    .locals 30
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "report"    # Lcom/smartisan/feedbackhelper/utils/ComplainReport;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 72
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 73
    .local v9, "dataInfo":Lorg/json/JSONObject;
    const-string v24, "tag"

    invoke-virtual/range {p1 .. p1}, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->getTag()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 74
    const-string v24, "from"

    invoke-virtual/range {p1 .. p1}, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->getFrom()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 75
    sget-object v24, Lcom/smartisan/feedbackhelper/utils/JsonData;->mTimesFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual/range {p1 .. p1}, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->getCreateTime()Ljava/util/Date;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v21

    .line 76
    .local v21, "timestamp":Ljava/lang/String;
    const-string v24, "createtime"

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 77
    const-string v24, "description"

    invoke-virtual/range {p1 .. p1}, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->getFreeText()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 78
    const-string v24, "summary"

    invoke-virtual/range {p1 .. p1}, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->getSummary()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 80
    invoke-virtual/range {p1 .. p1}, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->getAttachment()Ljava/lang/String;

    move-result-object v24

    const-string v25, ""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_1

    .line 81
    invoke-virtual/range {p1 .. p1}, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->getAttachment()Ljava/lang/String;

    move-result-object v24

    if-eqz v24, :cond_1

    .line 82
    invoke-virtual/range {p1 .. p1}, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->getAttachment()Ljava/lang/String;

    move-result-object v24

    const-string v25, ","

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 83
    .local v8, "attachData":[Ljava/lang/String;
    new-instance v13, Lorg/json/JSONArray;

    invoke-direct {v13}, Lorg/json/JSONArray;-><init>()V

    .line 84
    .local v13, "jsonArray":Lorg/json/JSONArray;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    array-length v0, v8

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v12, v0, :cond_0

    .line 85
    aget-object v24, v8, v12

    move-object/from16 v0, v24

    invoke-virtual {v13, v12, v0}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 84
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 87
    :cond_0
    const-string v24, "attachlist"

    move-object/from16 v0, v24

    invoke-virtual {v9, v0, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 90
    .end local v8    # "attachData":[Ljava/lang/String;
    .end local v12    # "i":I
    .end local v13    # "jsonArray":Lorg/json/JSONArray;
    :cond_1
    const-string v24, "activity"

    .line 91
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    .line 92
    .local v4, "activityManager":Landroid/app/ActivityManager;
    new-instance v15, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v15}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 93
    .local v15, "mi":Landroid/app/ActivityManager$MemoryInfo;
    invoke-virtual {v4, v15}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 96
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 97
    .local v11, "deviceInfo":Lorg/json/JSONObject;
    const-string v24, "total_mem"

    iget-wide v0, v15, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    move-wide/from16 v26, v0

    const-wide/32 v28, 0x100000

    div-long v26, v26, v28

    move-wide/from16 v0, v26

    long-to-int v0, v0

    move/from16 v25, v0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 99
    invoke-static {}, Lcom/smartisan/feedbackhelper/utils/DeviceID;->getInstance()Lcom/smartisan/feedbackhelper/utils/DeviceID;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/smartisan/feedbackhelper/utils/DeviceID;->getId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v22

    .line 100
    .local v22, "uid":Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_2

    .line 101
    const-string v24, "uid"

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 102
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->getBpVersion()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_3

    .line 103
    const-string v24, "bp_version"

    invoke-virtual/range {p1 .. p1}, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->getBpVersion()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 104
    :cond_3
    sget-object v24, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_4

    .line 105
    const-string v24, "product"

    sget-object v25, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 107
    :cond_4
    sget-object v24, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_5

    .line 108
    const-string v24, "model"

    sget-object v25, Landroid/os/Build;->MODEL:Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 110
    :cond_5
    sget-object v24, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_6

    .line 111
    const-string v24, "board"

    sget-object v25, Landroid/os/Build;->BOARD:Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 113
    :cond_6
    sget-object v24, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_7

    .line 114
    const-string v24, "brand"

    sget-object v25, Landroid/os/Build;->BRAND:Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 116
    :cond_7
    sget-object v24, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_8

    .line 117
    const-string v24, "serial"

    sget-object v25, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 119
    :cond_8
    invoke-static {}, Lcom/smartisan/feedbackhelper/utils/DeviceID;->getInstance()Lcom/smartisan/feedbackhelper/utils/DeviceID;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/smartisan/feedbackhelper/utils/DeviceID;->getTelephonyDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    .line 120
    .local v10, "deviceId":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_9

    .line 121
    const-string v24, "telephony_device_id"

    move-object/from16 v0, v24

    invoke-virtual {v11, v0, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 123
    :cond_9
    invoke-static {}, Lcom/smartisan/feedbackhelper/utils/DeviceID;->getInstance()Lcom/smartisan/feedbackhelper/utils/DeviceID;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/smartisan/feedbackhelper/utils/DeviceID;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    .line 124
    .local v14, "macAddress":Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_a

    .line 125
    const-string v24, "wifi_mac"

    move-object/from16 v0, v24

    invoke-virtual {v11, v0, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 128
    :cond_a
    new-instance v20, Lorg/json/JSONObject;

    invoke-direct/range {v20 .. v20}, Lorg/json/JSONObject;-><init>()V

    .line 129
    .local v20, "systemInfo":Lorg/json/JSONObject;
    invoke-virtual/range {p1 .. p1}, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->getApVersion()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_b

    .line 130
    const-string v24, "softwareVersion"

    invoke-virtual/range {p1 .. p1}, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->getApVersion()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 131
    :cond_b
    sget-object v24, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_c

    .line 132
    const-string v24, "type"

    sget-object v25, Landroid/os/Build;->TYPE:Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 133
    :cond_c
    sget-object v24, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_d

    .line 134
    const-string v24, "fingerprint"

    sget-object v25, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 135
    :cond_d
    sget-object v24, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_e

    .line 136
    const-string v24, "cpuAbi"

    sget-object v25, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 137
    :cond_e
    sget-object v24, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_f

    .line 138
    const-string v24, "cpuAbi2"

    sget-object v25, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 139
    :cond_f
    const-string v24, "version_sdk_int"

    sget v25, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 140
    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v25

    .line 139
    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 143
    new-instance v23, Lorg/json/JSONObject;

    invoke-direct/range {v23 .. v23}, Lorg/json/JSONObject;-><init>()V

    .line 144
    .local v23, "userInfo":Lorg/json/JSONObject;
    const-string v24, "email"

    invoke-virtual/range {p1 .. p1}, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->getEmail()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 146
    new-instance v18, Lorg/json/JSONObject;

    invoke-direct/range {v18 .. v18}, Lorg/json/JSONObject;-><init>()V

    .line 147
    .local v18, "processInfo":Lorg/json/JSONObject;
    invoke-virtual/range {p1 .. p1}, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->getPackageName()Ljava/lang/String;

    move-result-object v16

    .line 148
    .local v16, "packageName":Ljava/lang/String;
    const-string v24, "package_name"

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 149
    const-string v17, "unknown"

    .line 150
    .local v17, "packageVersion":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->getApkVersion()Ljava/lang/String;

    move-result-object v17

    .line 151
    const-string v24, "package_version"

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 153
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 154
    .local v5, "appInfo":Lorg/json/JSONObject;
    sget v24, Lcom/smartisan/feedbackhelper/R$string;->feedback_sdk_name:I

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v24

    .line 155
    invoke-interface/range {v24 .. v24}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 156
    .local v6, "app_Name":Ljava/lang/String;
    sget v24, Lcom/smartisan/feedbackhelper/R$string;->feedback_sdk_version:I

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v24

    .line 157
    invoke-interface/range {v24 .. v24}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 158
    .local v7, "app_Version":Ljava/lang/String;
    const-string v24, "app_name"

    move-object/from16 v0, v24

    invoke-virtual {v5, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 159
    const-string v24, "app_version"

    move-object/from16 v0, v24

    invoke-virtual {v5, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 162
    const-string v24, "userinfo"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 163
    const-string v24, "deviceinfo"

    move-object/from16 v0, v24

    invoke-virtual {v9, v0, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 164
    const-string v24, "systeminfo"

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 165
    const-string v24, "processinfo"

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 166
    const-string v24, "appinfo"

    move-object/from16 v0, v24

    invoke-virtual {v9, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 168
    new-instance v19, Lorg/json/JSONObject;

    invoke-direct/range {v19 .. v19}, Lorg/json/JSONObject;-><init>()V

    .line 169
    .local v19, "result":Lorg/json/JSONObject;
    const-string v24, "data"

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 170
    return-object v19
.end method
