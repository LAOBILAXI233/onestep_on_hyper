.class public Lcom/sina/weibo/sdk/utils/Utility;
.super Ljava/lang/Object;
.source "Utility.java"


.field private static final ARM64_V8A:I = 0x0

.field private static final ARMEABI:I = 0x1

.field private static final ARMEABI_V7A:I = 0x2

.field private static final DEFAULT_CHARSET:Ljava/lang/String; = "UTF-8"

.field private static final MIPS:I = 0x3

.field private static final MIPS64:I = 0x4

.field private static final X86:I = 0x5

.field private static final X86_64:I = 0x6


.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkMyPermission(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 301
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 303
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 304
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 303
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static cpuArch2Int(Ljava/lang/String;)I
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 166
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 184
    :cond_0
    :goto_0
    return v0

    .line 169
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "arm64"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "v8a"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 170
    const/4 v0, 0x0

    goto :goto_0

    .line 171
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "armeabi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "v7a"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 172
    const/4 v0, 0x2

    goto :goto_0

    .line 173
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "armeabi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 175
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mips"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "64"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 176
    const/4 v0, 0x4

    goto :goto_0

    .line 177
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mips"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 178
    const/4 v0, 0x3

    goto :goto_0

    .line 179
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "x86"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "64"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 180
    const/4 v0, 0x6

    goto/16 :goto_0

    .line 181
    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "x86"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 182
    const/4 v0, 0x5

    goto/16 :goto_0
.end method

.method public static decodeUrl(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 86
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 87
    if-eqz p0, :cond_0

    .line 88
    const-string v1, "&"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 89
    array-length v4, v3

    move v1, v0

    :goto_0
    if-lt v1, v4, :cond_1

    .line 99
    :cond_0
    return-object v2

    .line 89
    :cond_1
    aget-object v0, v3, v1

    .line 90
    const-string v5, "="

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 92
    const/4 v5, 0x0

    :try_start_0
    aget-object v5, v0, v5

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 93
    const/4 v6, 0x1

    aget-object v0, v0, v6

    const-string v6, "UTF-8"

    invoke-static {v0, v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    invoke-virtual {v2, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 94
    :catch_0
    move-exception v0

    .line 95
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1
.end method

.method private static fetchCpuInfo()[Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v0, 0x2

    const/4 v4, 0x0

    .line 189
    const-string v1, "/proc/cpuinfo"

    .line 190
    const-string v2, ""

    .line 191
    new-array v2, v0, [Ljava/lang/String;

    const-string v3, ""

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    .line 194
    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 195
    new-instance v1, Ljava/io/BufferedReader;

    const/16 v4, 0x2000

    invoke-direct {v1, v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 196
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 197
    const-string v4, "\\s+"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 198
    :goto_0
    array-length v4, v3

    if-lt v0, v4, :cond_0

    .line 201
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 202
    const-string v3, "\\s+"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 203
    const/4 v3, 0x1

    aget-object v4, v2, v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x2

    aget-object v0, v0, v4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    .line 204
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 208
    :goto_1
    return-object v2

    .line 199
    :cond_0
    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    aget-object v6, v2, v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v6, v3, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 206
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static generateGUID()Ljava/lang/String;
    .locals 3

    .prologue
    .line 130
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static generateUA(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 250
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    const-string v1, "weibosdk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    const-string v1, "0031405000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    const-string v1, "_android"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static generateUAAid(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 315
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    const-string v1, "__"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    const-string v1, "weibosdk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    const-string v1, "__"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    :try_start_0
    const-string v1, "0031405000"

    .line 321
    const-string v2, "\\s+"

    const-string v3, "_"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    :goto_0
    const-string v1, "__"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "android"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "__android"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 322
    :catch_0
    move-exception v1

    .line 323
    const-string v1, "unknown"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static getAid(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 240
    invoke-static {p0}, Lcom/sina/weibo/sdk/utils/AidTask;->getInstance(Landroid/content/Context;)Lcom/sina/weibo/sdk/utils/AidTask;

    move-result-object v0

    .line 241
    invoke-virtual {v0, p1}, Lcom/sina/weibo/sdk/utils/AidTask;->getAidSync(Ljava/lang/String;)Lcom/sina/weibo/sdk/utils/AidTask$AidInfo;

    move-result-object v0

    .line 242
    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {v0}, Lcom/sina/weibo/sdk/utils/AidTask$AidInfo;->getAid()Ljava/lang/String;

    move-result-object v0

    .line 245
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static getCpuArch()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 152
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 153
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 154
    invoke-static {}, Lcom/sina/weibo/sdk/utils/Utility;->fetchCpuInfo()[Ljava/lang/String;

    move-result-object v0

    .line 155
    if-eqz v0, :cond_0

    aget-object v1, v0, v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 156
    aget-object v0, v0, v2

    invoke-static {v0}, Lcom/sina/weibo/sdk/utils/Utility;->cpuArch2Int(Ljava/lang/String;)I

    move-result v0

    .line 161
    :goto_0
    return v0

    .line 158
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 161
    :cond_1
    invoke-static {v0}, Lcom/sina/weibo/sdk/utils/Utility;->cpuArch2Int(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static getImei(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 274
    const-string v0, ""

    .line 275
    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v1}, Lcom/sina/weibo/sdk/utils/Utility;->checkMyPermission(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 276
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 277
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 279
    :cond_0
    if-nez v0, :cond_1

    .line 280
    const-string v0, ""

    .line 282
    :cond_1
    return-object v0
.end method

.method public static getImsi(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 262
    const-string v0, ""

    .line 263
    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v1}, Lcom/sina/weibo/sdk/utils/Utility;->checkMyPermission(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 264
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 265
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 267
    :cond_0
    if-nez v0, :cond_1

    .line 268
    const-string v0, ""

    .line 270
    :cond_1
    return-object v0
.end method

.method public static getSign(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 221
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 222
    const/16 v2, 0x40

    .line 221
    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 226
    const/4 v0, 0x0

    :goto_0
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v3, v3

    if-lt v0, v3, :cond_0

    move-object v0, v1

    .line 232
    :goto_1
    return-object v0

    .line 223
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 224
    goto :goto_1

    .line 227
    :cond_0
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v3

    .line 228
    if-eqz v3, :cond_1

    .line 229
    invoke-static {v3}, Lcom/sina/weibo/sdk/utils/MD5;->hexdigest([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 226
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getWifiMac(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 286
    const-string v0, ""

    .line 287
    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    invoke-static {p0, v1}, Lcom/sina/weibo/sdk/utils/Utility;->checkMyPermission(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 288
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 289
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 290
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 292
    :cond_0
    if-nez v0, :cond_1

    .line 293
    const-string v0, ""

    .line 296
    :cond_1
    return-object v0
.end method

.method public static isChineseLocale(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 111
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 112
    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v2, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 113
    sget-object v2, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v2, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 114
    sget-object v2, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v2, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 115
    sget-object v2, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    invoke-virtual {v2, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_1

    .line 121
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 118
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static parseUri(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 72
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v0}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sina/weibo/sdk/utils/Utility;->decodeUrl(Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 76
    :goto_0
    return-object v0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method

.method public static parseUrl(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 61
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v1}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sina/weibo/sdk/utils/Utility;->decodeUrl(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 63
    invoke-virtual {v1}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sina/weibo/sdk/utils/Utility;->decodeUrl(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :goto_0
    return-object v0

    .line 65
    :catch_0
    move-exception v0

    .line 66
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method

.method public static safeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method
