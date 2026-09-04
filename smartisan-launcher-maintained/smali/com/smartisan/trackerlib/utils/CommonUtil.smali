.class public Lcom/smartisan/trackerlib/utils/CommonUtil;
.super Ljava/lang/Object;
.source "CommonUtil.java"


.field private static final DEVICE_ID:Ljava/lang/String; = "track_device_id"

.field private static final KEY_LAUNCH_TIME:Ljava/lang/String; = "key_launch_time"

.field private static final PREFERENCE_NAME:Ljava/lang/String; = "com.smartisan.LibTracker"

.field public static final SUMMARY_TYPE_MOBILE:I = 0x1

.field public static final SUMMARY_TYPE_OTHER:I = 0x0

.field public static final SUMMARY_TYPE_WIFI:I = 0x2

.field private static final TAG:Ljava/lang/String; = "CommonUtil"

.field private static final UID:Ljava/lang/String; = "track_uid"

.field private static mDeviceId:Ljava/lang/String;

.field private static sIMEI:Ljava/lang/String;


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-string v0, ""

    sput-object v0, Lcom/smartisan/trackerlib/utils/CommonUtil;->mDeviceId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static MD5Digester(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "plainText"    # Ljava/lang/String;

    .prologue
    .line 155
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6}, Ljava/lang/String;-><init>()V

    .line 157
    .local v6, "re_md5":Ljava/lang/String;
    :try_start_0
    const-string v7, "MD5"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 158
    .local v4, "md":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/security/MessageDigest;->update([B)V

    .line 159
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 161
    .local v0, "b":[B
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v7, ""

    invoke-direct {v1, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 162
    .local v1, "buf":Ljava/lang/StringBuffer;
    const/4 v5, 0x0

    .local v5, "offset":I
    :goto_0
    array-length v7, v0

    if-ge v5, v7, :cond_2

    .line 163
    aget-byte v3, v0, v5

    .line 164
    .local v3, "i":I
    if-gez v3, :cond_0

    .line 165
    add-int/lit16 v3, v3, 0x100

    .line 166
    :cond_0
    const/16 v7, 0x10

    if-ge v3, v7, :cond_1

    .line 167
    const-string v7, "0"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 168
    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 162
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 170
    .end local v3    # "i":I
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 174
    .end local v0    # "b":[B
    .end local v1    # "buf":Ljava/lang/StringBuffer;
    .end local v4    # "md":Ljava/security/MessageDigest;
    .end local v5    # "offset":I
    :goto_1
    return-object v6

    .line 171
    :catch_0
    move-exception v2

    .line 172
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_1
.end method

.method public static appendSumToIMEI14(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "imei14"    # Ljava/lang/String;

    .prologue
    .line 105
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    .line 107
    .local v6, "imeiCharArray":[C
    const/4 v9, 0x0

    .line 108
    .local v9, "sum":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    :try_start_0
    array-length v10, v6

    if-ge v5, v10, :cond_2

    .line 109
    rem-int/lit8 v10, v5, 0x2

    if-eqz v10, :cond_1

    .line 110
    aget-char v10, v6, v5

    invoke-static {v10}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 111
    .local v0, "doubleDigitValue":I
    mul-int/lit8 v1, v0, 0x2

    .line 112
    .local v1, "doubleValue":I
    const/16 v10, 0xa

    if-lt v1, v10, :cond_0

    .line 113
    div-int/lit8 v4, v1, 0xa

    .line 114
    .local v4, "hightDigit":I
    rem-int/lit8 v7, v1, 0xa

    .line 115
    .local v7, "lowDigit":I
    add-int v10, v4, v7

    add-int/2addr v9, v10

    .line 108
    .end local v0    # "doubleDigitValue":I
    .end local v1    # "doubleValue":I
    .end local v4    # "hightDigit":I
    .end local v7    # "lowDigit":I
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 117
    .restart local v0    # "doubleDigitValue":I
    .restart local v1    # "doubleValue":I
    :cond_0
    add-int/2addr v9, v1

    goto :goto_1

    .line 120
    .end local v0    # "doubleDigitValue":I
    .end local v1    # "doubleValue":I
    :cond_1
    aget-char v10, v6, v5

    invoke-static {v10}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    add-int/2addr v9, v10

    goto :goto_1

    .line 123
    :cond_2
    rem-int/lit8 v8, v9, 0xa

    .line 124
    .local v8, "remainder":I
    if-nez v8, :cond_3

    move v3, v8

    .line 125
    .local v3, "fifthDigit":I
    :goto_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 128
    .end local v3    # "fifthDigit":I
    .end local v8    # "remainder":I
    .end local p0    # "imei14":Ljava/lang/String;
    :goto_3
    return-object p0

    .line 124
    .restart local v8    # "remainder":I
    .restart local p0    # "imei14":Ljava/lang/String;
    :cond_3
    rsub-int/lit8 v3, v8, 0xa

    goto :goto_2

    .line 126
    .end local v8    # "remainder":I
    :catch_0
    move-exception v2

    .line 127
    .local v2, "e":Ljava/lang/Exception;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "get imei exception  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "  imdi: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/smartisan/trackerlib/utils/LogUtils;->d(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public static getAndroidId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 186
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, "id":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 188
    const/4 v1, 0x0

    .line 193
    :goto_0
    return-object v1

    .line 190
    :cond_0
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x10

    if-ge v1, v2, :cond_1

    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v1, v0

    .line 193
    goto :goto_0
.end method

.method private static getAppId(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 234
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 237
    .local v2, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "AppId"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 238
    .local v1, "id":I
    const/16 v3, 0xa

    if-ge v1, v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    return-object v3

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 239
    .end local v1    # "id":I
    .end local v2    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v0

    .line 240
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 242
    new-instance v3, Ljava/lang/Exception;

    const-string v4, "AppID is NULL"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static getChannel(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 278
    const-string v2, ""

    .line 280
    .local v2, "msg":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 283
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "AppChannel"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 284
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x5

    if-ge v3, v4, :cond_0

    .line 285
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 288
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v0

    .line 289
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 291
    new-instance v3, Ljava/lang/Exception;

    const-string v4, "channel id is null"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 287
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_0
    return-object v2
.end method

.method public static getDeviceIMEI(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 85
    sget-object v5, Lcom/smartisan/trackerlib/utils/CommonUtil;->sIMEI:Ljava/lang/String;

    if-nez v5, :cond_1

    .line 87
    :try_start_0
    const-string v5, "android.telephony.TelephonyManager"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 88
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v5, "getDefault"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 89
    .local v3, "m":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 90
    .local v2, "instance":Ljava/lang/Object;
    const-string v5, "getImei"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 91
    .local v4, "method":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v4, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    sput-object v5, Lcom/smartisan/trackerlib/utils/CommonUtil;->sIMEI:Ljava/lang/String;

    .line 92
    sget-object v5, Lcom/smartisan/trackerlib/utils/CommonUtil;->sIMEI:Ljava/lang/String;

    if-nez v5, :cond_0

    .line 93
    const-string v5, "phone"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/smartisan/trackerlib/utils/CommonUtil;->sIMEI:Ljava/lang/String;

    .line 95
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get imei through getImei invoke : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/smartisan/trackerlib/utils/CommonUtil;->sIMEI:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/smartisan/trackerlib/utils/LogUtils;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "instance":Ljava/lang/Object;
    .end local v3    # "m":Ljava/lang/reflect/Method;
    .end local v4    # "method":Ljava/lang/reflect/Method;
    :cond_1
    :goto_0
    sget-object v5, Lcom/smartisan/trackerlib/utils/CommonUtil;->sIMEI:Ljava/lang/String;

    return-object v5

    .line 96
    :catch_0
    move-exception v1

    .line 97
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "phone"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/smartisan/trackerlib/utils/CommonUtil;->sIMEI:Ljava/lang/String;

    .line 98
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get imei through getDeviceId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/smartisan/trackerlib/utils/CommonUtil;->sIMEI:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/smartisan/trackerlib/utils/LogUtils;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getDeviceId()Ljava/lang/String;
    .locals 6

    .prologue
    .line 325
    sget-object v1, Lcom/smartisan/trackerlib/utils/CommonUtil;->mDeviceId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 326
    sget-object v1, Lcom/smartisan/trackerlib/utils/CommonUtil;->mDeviceId:Ljava/lang/String;

    .line 339
    .local v0, "jsonObject":Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 328
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    :cond_0
    invoke-static {}, Lcom/smartisan/trackerlib/utils/SharePreferenceManager;->getInstance()Lcom/smartisan/trackerlib/utils/SharePreferenceManager;

    move-result-object v1

    const-string v2, "track_device_id"

    const-string v3, "com.smartisan.LibTracker"

    invoke-static {}, Lcom/smartisan/trackerlib/Agent;->getInstance()Lcom/smartisan/trackerlib/Agent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisan/trackerlib/Agent;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/smartisan/trackerlib/utils/SharePreferenceManager;->getString(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/smartisan/trackerlib/utils/CommonUtil;->mDeviceId:Ljava/lang/String;

    .line 329
    sget-object v1, Lcom/smartisan/trackerlib/utils/CommonUtil;->mDeviceId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 330
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 332
    .restart local v0    # "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "imei"

    invoke-static {}, Lcom/smartisan/trackerlib/Agent;->getInstance()Lcom/smartisan/trackerlib/Agent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisan/trackerlib/Agent;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/smartisan/trackerlib/utils/CommonUtil;->getDeviceIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 333
    const-string v1, "android_id"

    invoke-static {}, Lcom/smartisan/trackerlib/Agent;->getInstance()Lcom/smartisan/trackerlib/Agent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisan/trackerlib/Agent;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/smartisan/trackerlib/utils/CommonUtil;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 334
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/smartisan/trackerlib/utils/CommonUtil;->mDeviceId:Ljava/lang/String;

    .line 335
    invoke-static {}, Lcom/smartisan/trackerlib/utils/SharePreferenceManager;->getInstance()Lcom/smartisan/trackerlib/utils/SharePreferenceManager;

    move-result-object v1

    const-string v2, "track_device_id"

    sget-object v3, Lcom/smartisan/trackerlib/utils/CommonUtil;->mDeviceId:Ljava/lang/String;

    const-string v4, "com.smartisan.LibTracker"

    invoke-static {}, Lcom/smartisan/trackerlib/Agent;->getInstance()Lcom/smartisan/trackerlib/Agent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisan/trackerlib/Agent;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/smartisan/trackerlib/utils/SharePreferenceManager;->putString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    :cond_1
    :goto_1
    sget-object v1, Lcom/smartisan/trackerlib/utils/CommonUtil;->mDeviceId:Ljava/lang/String;

    goto :goto_0

    .line 336
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public static getDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static getLaunchEvent()Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 259
    invoke-static {}, Lcom/smartisan/trackerlib/Agent;->getInstance()Lcom/smartisan/trackerlib/Agent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisan/trackerlib/Agent;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/smartisan/trackerlib/utils/CommonUtil;->getResolution(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 260
    .local v2, "resulution":Ljava/lang/String;
    invoke-static {}, Lcom/smartisan/trackerlib/utils/CommonUtil;->getNetworkType()Ljava/lang/String;

    move-result-object v1

    .line 261
    .local v1, "network":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 262
    :cond_0
    const-string v4, ""

    .line 274
    :goto_0
    return-object v4

    .line 264
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 266
    .local v0, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    invoke-static {}, Lcom/smartisan/trackerlib/utils/SharePreferenceManager;->getInstance()Lcom/smartisan/trackerlib/utils/SharePreferenceManager;

    move-result-object v4

    const-string v5, "key_launch_time"

    const-string v6, "com.smartisan.LibTracker"

    invoke-static {}, Lcom/smartisan/trackerlib/Agent;->getInstance()Lcom/smartisan/trackerlib/Agent;

    move-result-object v7

    invoke-virtual {v7}, Lcom/smartisan/trackerlib/Agent;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/smartisan/trackerlib/utils/SharePreferenceManager;->getInt(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v3

    .line 267
    .local v3, "updatetime":I
    const-string v4, "last_uptime"

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 268
    const-string v4, "resolution"

    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 269
    const-string v4, "network"

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 270
    invoke-static {}, Lcom/smartisan/trackerlib/utils/SharePreferenceManager;->getInstance()Lcom/smartisan/trackerlib/utils/SharePreferenceManager;

    move-result-object v4

    const-string v5, "key_launch_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    long-to-int v6, v6

    const-string v7, "com.smartisan.LibTracker"

    invoke-static {}, Lcom/smartisan/trackerlib/Agent;->getInstance()Lcom/smartisan/trackerlib/Agent;

    move-result-object v8

    invoke-virtual {v8}, Lcom/smartisan/trackerlib/Agent;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/smartisan/trackerlib/utils/SharePreferenceManager;->putInt(Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;)Z

    .line 271
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .line 272
    .end local v3    # "updatetime":I
    :catch_0
    move-exception v4

    .line 274
    const-string v4, ""

    goto :goto_0
.end method

.method public static getLaunchEventId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 225
    const-string v0, ""

    .line 226
    .local v0, "s":Ljava/lang/String;
    invoke-static {}, Lcom/smartisan/trackerlib/Agent;->getInstance()Lcom/smartisan/trackerlib/Agent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisan/trackerlib/Agent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/smartisan/trackerlib/utils/CommonUtil;->getAppId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 227
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "0001"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 229
    :cond_0
    return-object v0
.end method

.method public static getLocalMacAddress()Ljava/lang/String;
    .locals 4

    .prologue
    .line 393
    invoke-static {}, Lcom/smartisan/trackerlib/Agent;->getInstance()Lcom/smartisan/trackerlib/Agent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisan/trackerlib/Agent;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 394
    .local v1, "wifi":Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 395
    .local v0, "info":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getMarkId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 344
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "35"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    rem-int/lit8 v3, v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    rem-int/lit8 v3, v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    rem-int/lit8 v3, v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    rem-int/lit8 v3, v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    rem-int/lit8 v3, v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->HOST:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    rem-int/lit8 v3, v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    rem-int/lit8 v3, v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    rem-int/lit8 v3, v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    rem-int/lit8 v3, v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    rem-int/lit8 v3, v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->TAGS:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    rem-int/lit8 v3, v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    rem-int/lit8 v3, v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->USER:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    rem-int/lit8 v3, v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 363
    :goto_0
    return-object v1

    .line 359
    :catch_0
    move-exception v0

    .line 360
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 363
    const-string v1, ""

    goto :goto_0
.end method

.method public static getNetworkType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 300
    const-string v0, ""

    .line 301
    .local v0, "nettype":Ljava/lang/String;
    invoke-static {}, Lcom/smartisan/trackerlib/Agent;->getInstance()Lcom/smartisan/trackerlib/Agent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisan/trackerlib/Agent;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/smartisan/trackerlib/utils/CommonUtil;->isConnected(Landroid/content/Context;)I

    move-result v1

    .line 302
    .local v1, "type":I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 303
    const-string v0, "wifi"

    .line 309
    :goto_0
    return-object v0

    .line 304
    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 305
    invoke-static {}, Lcom/smartisan/trackerlib/utils/CommonUtil;->getSimOperatorInfo()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 307
    :cond_1
    const-string v0, "none"

    goto :goto_0
.end method

.method public static getNewStartEvent()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 245
    invoke-static {}, Lcom/smartisan/trackerlib/Agent;->getInstance()Lcom/smartisan/trackerlib/Agent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisan/trackerlib/Agent;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/smartisan/trackerlib/utils/CommonUtil;->getChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 246
    .local v0, "channel":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 254
    .end local v0    # "channel":Ljava/lang/String;
    .local v1, "e":Ljava/lang/Exception;
    .local v2, "jsonObject":Lorg/json/JSONObject;
    :goto_0
    return-object v0

    .line 249
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .restart local v0    # "channel":Ljava/lang/String;
    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 251
    .restart local v2    # "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "channel"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 252
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 253
    :catch_0
    move-exception v1

    .line 254
    .restart local v1    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getNewStartEventId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 218
    const-string v0, ""

    .line 219
    .local v0, "s":Ljava/lang/String;
    invoke-static {}, Lcom/smartisan/trackerlib/Agent;->getInstance()Lcom/smartisan/trackerlib/Agent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisan/trackerlib/Agent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/smartisan/trackerlib/utils/CommonUtil;->getAppId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 220
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "0000"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 222
    :cond_0
    return-object v0
.end method

.method public static getResolution(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 295
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 296
    .local v0, "dm":Landroid/util/DisplayMetrics;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getSimOperatorInfo()Ljava/lang/String;
    .locals 4

    .prologue
    .line 315
    invoke-static {}, Lcom/smartisan/trackerlib/Agent;->getInstance()Lcom/smartisan/trackerlib/Agent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisan/trackerlib/Agent;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 316
    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 317
    .local v0, "operatorString":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 319
    const-string v0, ""

    .line 321
    .end local v0    # "operatorString":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public static getSoftwareInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 377
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method private static getString([B)Ljava/lang/String;
    .locals 3
    .param p0, "b"    # [B

    .prologue
    .line 178
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 179
    .local v1, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 180
    aget-byte v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 179
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 182
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getTimeStampSecond(IIII)J
    .locals 6
    .param p0, "date"    # I
    .param p1, "hour"    # I
    .param p2, "minute"    # I
    .param p3, "second"    # I

    .prologue
    .line 381
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 382
    .local v0, "calendar":Ljava/util/Calendar;
    const/4 v3, 0x5

    invoke-virtual {v0, v3, p0}, Ljava/util/Calendar;->add(II)V

    .line 383
    const/16 v3, 0xb

    invoke-virtual {v0, v3, p1}, Ljava/util/Calendar;->set(II)V

    .line 384
    const/16 v3, 0xc

    invoke-virtual {v0, v3, p2}, Ljava/util/Calendar;->set(II)V

    .line 385
    const/16 v3, 0xd

    invoke-virtual {v0, v3, p3}, Ljava/util/Calendar;->set(II)V

    .line 386
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 387
    .local v1, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 388
    .local v2, "tmp":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "date is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " time stamp is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/smartisan/trackerlib/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 389
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    return-wide v4
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public static getVersionCode(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 198
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 202
    :goto_0
    return-object v1

    .line 199
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get null version code  with: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/smartisan/trackerlib/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 202
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getVersionName(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 209
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    :goto_0
    return-object v1

    .line 210
    :catch_0
    move-exception v0

    .line 212
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get null version name  with: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/smartisan/trackerlib/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 213
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isConnected(Landroid/content/Context;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    const/4 v3, 0x0

    .line 56
    .local v3, "result":I
    if-nez p0, :cond_0

    move v4, v3

    .line 79
    .end local v3    # "result":I
    .local v4, "result":I
    :goto_0
    return v4

    .line 58
    .end local v4    # "result":I
    .restart local v3    # "result":I
    :cond_0
    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 60
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    const/4 v2, 0x0

    .line 61
    .local v2, "mobile":Landroid/net/NetworkInfo$State;
    const/4 v5, 0x0

    .line 64
    .local v5, "wifi":Landroid/net/NetworkInfo$State;
    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {v0, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    .line 67
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 72
    :goto_1
    sget-object v6, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v5, v6, :cond_2

    .line 74
    const/4 v3, 0x2

    :cond_1
    :goto_2
    move v4, v3

    .line 79
    .end local v3    # "result":I
    .restart local v4    # "result":I
    goto :goto_0

    .line 69
    .end local v4    # "result":I
    .restart local v3    # "result":I
    :catch_0
    move-exception v1

    .line 70
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 75
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    sget-object v6, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v2, v6, :cond_1

    .line 77
    const/4 v3, 0x1

    goto :goto_2
.end method

.method public static parseTransportEntity(Landroid/content/Context;Lcom/smartisan/trackerlib/TransportEntity;)Landroid/content/ContentValues;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "rawTransport"    # Lcom/smartisan/trackerlib/TransportEntity;

    .prologue
    .line 367
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 368
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v1, "eventid"

    invoke-virtual {p1}, Lcom/smartisan/trackerlib/TransportEntity;->getmEventId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    const-string v1, "time_stamp"

    invoke-virtual {p1}, Lcom/smartisan/trackerlib/TransportEntity;->getmTimeStamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 370
    const-string v1, "eventdata"

    invoke-virtual {p1}, Lcom/smartisan/trackerlib/TransportEntity;->getmEventData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    const-string v2, "wifionly"

    invoke-virtual {p1}, Lcom/smartisan/trackerlib/TransportEntity;->getmIsWifiOnly()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 372
    const-string v1, "upload_time"

    invoke-virtual {p1}, Lcom/smartisan/trackerlib/TransportEntity;->getUploadTime()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 373
    return-object v0

    .line 371
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
