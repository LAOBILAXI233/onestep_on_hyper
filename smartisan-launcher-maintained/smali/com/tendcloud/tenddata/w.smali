.class public Lcom/tendcloud/tenddata/w;
.super Ljava/lang/Object;


.field private static final a:I = 0x36ee80


.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, ""

    const-string v2, "([0-9]+)"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->toMatchResult()Ljava/util/regex/MatchResult;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static a()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Android+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "*"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "unknown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "alps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "sprd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "spreadtrum"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "rockchip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "wondermedia"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "mtk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "mt65"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "nvidia"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "brcm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "marvell"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 p0, 0x0

    :cond_1
    return-object p0
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0x400

    :try_start_1
    new-array v2, v2, [C

    new-instance v3, Ljava/io/BufferedReader;

    const/16 v4, 0x400

    invoke-direct {v3, v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    :goto_0
    const/4 v4, -0x1

    const/4 v5, 0x0

    const/16 v6, 0x400

    invoke-virtual {v3, v2, v5, v6}, Ljava/io/BufferedReader;->read([CII)I

    move-result v5

    if-eq v4, v5, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v6, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v6, v2, v7, v5}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static e()I
    .locals 2

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    const v1, 0x36ee80

    div-int/2addr v0, v1

    return v0
.end method

.method public static f()Ljava/lang/String;
    .locals 3

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/tendcloud/tenddata/w;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/tendcloud/tenddata/w;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ":"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static g()I
    .locals 1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public static h()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public static i()Ljava/lang/String;
    .locals 1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static j()Ljava/lang/String;
    .locals 1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static k()[Ljava/lang/String;
    .locals 12

    const/4 v4, 0x4

    const/4 v11, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-array v5, v4, [Ljava/lang/String;

    move v0, v2

    :goto_0
    if-ge v0, v4, :cond_0

    const-string v3, ""

    aput-object v3, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    const-string v0, "/proc/cpuinfo"

    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/BufferedReader;

    const/16 v0, 0x400

    invoke-direct {v4, v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    move v0, v2

    :goto_2
    new-array v7, v11, [Ljava/lang/String;

    const-string v3, "Processor\\s*:\\s*(.*)"

    aput-object v3, v7, v2

    const-string v3, "CPU\\s*variant\\s*:\\s*0x(.*)"

    aput-object v3, v7, v1

    const/4 v3, 0x2

    const-string v4, "Hardware\\s*:\\s*(.*)"

    aput-object v4, v7, v3

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    move v4, v2

    :goto_3
    if-ge v4, v11, :cond_4

    aget-object v0, v7, v4

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    move v3, v2

    :goto_4
    if-ge v3, v8, :cond_3

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->toMatchResult()Ljava/util/regex/MatchResult;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v4

    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_4

    :cond_2
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4

    move v0, v1

    goto :goto_2

    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_2

    :catch_2
    move-exception v0

    move v0, v2

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    :goto_5
    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    :catch_3
    move-exception v0

    move v0, v2

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_3

    :cond_4
    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"

    invoke-static {v0}, Lcom/tendcloud/tenddata/w;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v11

    return-object v5

    :catch_4
    move-exception v0

    move v0, v1

    goto :goto_2

    :catch_5
    move-exception v3

    goto :goto_5
.end method

.method public static l()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static m()[I
    .locals 7

    const/4 v2, 0x2

    const/4 v6, 0x4

    const/4 v1, 0x1

    const/4 v0, 0x0

    new-array v2, v2, [I

    aput v0, v2, v0

    aput v0, v2, v1

    new-array v3, v6, [I

    move v1, v0

    :goto_0
    if-ge v1, v6, :cond_0

    aput v0, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    const-string v4, "/proc/meminfo"

    invoke-direct {v1, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/BufferedReader;

    const/16 v5, 0x400

    invoke-direct {v4, v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    if-ge v0, v6, :cond_1

    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tendcloud/tenddata/w;->a(Ljava/lang/String;)I

    move-result v5

    aput v5, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    const/4 v5, 0x0

    aget v5, v3, v5

    aput v5, v2, v0

    const/4 v0, 0x1

    const/4 v5, 0x1

    aget v5, v3, v5

    const/4 v6, 0x2

    aget v6, v3, v6

    add-int/2addr v5, v6

    const/4 v6, 0x3

    aget v3, v3, v6

    add-int/2addr v3, v5

    aput v3, v2, v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    return-object v2

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    :goto_3
    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v0

    goto :goto_2
.end method

.method public static n()[I
    .locals 5

    const/4 v0, 0x4

    :try_start_0
    new-array v0, v0, [I

    new-instance v1, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v3

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v4

    div-int/lit16 v4, v4, 0x200

    mul-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    aput v3, v0, v2

    const/4 v2, 0x1

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v3

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    div-int/lit16 v1, v1, 0x200

    mul-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    aput v1, v0, v2

    new-instance v1, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x2

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v3

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v4

    div-int/lit16 v4, v4, 0x200

    mul-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    aput v3, v0, v2

    const/4 v2, 0x3

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v3

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    div-int/lit16 v1, v1, 0x200

    mul-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static o()I
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "/sys/class/power_supply/battery/full_bat"

    invoke-static {v1}, Lcom/tendcloud/tenddata/w;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\s*([0-9]+)"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->toMatchResult()Ljava/util/regex/MatchResult;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
