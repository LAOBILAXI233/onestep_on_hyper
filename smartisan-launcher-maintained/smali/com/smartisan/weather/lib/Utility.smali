.class public Lcom/smartisan/weather/lib/Utility;
.super Ljava/lang/Object;
.source "Utility.java"


.field private static digitalPattern:Ljava/util/regex/Pattern;


.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static TempC2TempF(F)F
    .locals 6
    .param p0, "tempc"    # F

    .prologue
    .line 37
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v4}, Ljava/text/DecimalFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v1

    check-cast v1, Ljava/text/DecimalFormat;

    .line 38
    .local v1, "format":Ljava/text/DecimalFormat;
    const-string v4, "##0.0"

    invoke-virtual {v1, v4}, Ljava/text/DecimalFormat;->applyPattern(Ljava/lang/String;)V

    .line 39
    const/high16 v4, 0x42000000    # 32.0f

    const v5, 0x3fe66666    # 1.8f

    mul-float/2addr v5, p0

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-virtual {v1, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    .line 40
    .local v3, "value":Ljava/lang/String;
    const/4 v2, 0x0

    .line 42
    .local v2, "ret":F
    :try_start_0
    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 46
    :goto_0
    return v2

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v4, "Excepition"

    const-string v5, "TempC2TempF"

    invoke-static {v4, v5, v0}, Lcom/smartisan/weather/lib/util/DebugLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static TempF2TempC(I)I
    .locals 2
    .param p0, "tempf"    # I

    .prologue
    .line 50
    add-int/lit8 v0, p0, -0x20

    int-to-float v0, v0

    const v1, 0x3fe66666    # 1.8f

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public static fristCharToUpdderCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 141
    move-object v0, p0

    .line 142
    .local v0, "result":Ljava/lang/String;
    invoke-static {v0}, Lcom/smartisan/weather/lib/Utility;->isAllEngChars(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 145
    :cond_0
    return-object v0
.end method

.method public static isAllCNChars(Ljava/lang/String;)Z
    .locals 7
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 121
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 122
    const/4 v4, 0x0

    .line 137
    :cond_0
    :goto_0
    return v4

    .line 123
    :cond_1
    const/4 v4, 0x0

    .line 124
    .local v4, "result":Z
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 125
    .local v0, "chars":[C
    const/4 v5, 0x0

    .line 126
    .local v5, "unicode":I
    array-length v2, v0

    .line 127
    .local v2, "iNumofChars":I
    const/4 v3, 0x0

    .line 128
    .local v3, "numofHanzi":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_3

    .line 129
    aget-char v5, v0, v1

    .line 130
    const/16 v6, 0x4e00

    if-lt v5, v6, :cond_2

    const v6, 0x9fa5

    if-gt v5, v6, :cond_2

    .line 131
    add-int/lit8 v3, v3, 0x1

    .line 128
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 134
    :cond_3
    if-ne v3, v2, :cond_0

    .line 135
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public static isAllEngChars(Ljava/lang/String;)Z
    .locals 7
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 97
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 98
    const/4 v4, 0x0

    .line 114
    :cond_0
    :goto_0
    return v4

    .line 99
    :cond_1
    const/4 v4, 0x0

    .line 100
    .local v4, "result":Z
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 101
    .local v0, "chars":[C
    const/4 v5, 0x0

    .line 102
    .local v5, "unicode":I
    array-length v2, v0

    .line 103
    .local v2, "iNumofChars":I
    const/4 v3, 0x0

    .line 104
    .local v3, "numofEng":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_3

    .line 105
    aget-char v5, v0, v1

    .line 106
    const/16 v6, 0x4e00

    if-lt v5, v6, :cond_2

    const v6, 0x9fa5

    if-gt v5, v6, :cond_2

    .line 104
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 108
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 111
    :cond_3
    if-ne v3, v2, :cond_0

    .line 112
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public static isChinaWeather(Ljava/lang/String;)Z
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 63
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Lcom/smartisan/weather/lib/Utility;->isNumeric(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "chf_"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isDigitalOnly(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 70
    sget-object v0, Lcom/smartisan/weather/lib/Utility;->digitalPattern:Ljava/util/regex/Pattern;

    if-nez v0, :cond_0

    .line 71
    const-string v0, "^-?\\d+$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/smartisan/weather/lib/Utility;->digitalPattern:Ljava/util/regex/Pattern;

    .line 73
    :cond_0
    sget-object v0, Lcom/smartisan/weather/lib/Utility;->digitalPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    const-string v2, "connectivity"

    .line 24
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 25
    .local v1, "manager":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 26
    .local v0, "info":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isNetworkConnected(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    const-string v2, "connectivity"

    .line 31
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 32
    .local v1, "manager":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 33
    .local v0, "info":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isNumeric(Ljava/lang/String;)Z
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    const/4 v1, 0x0

    .line 57
    :goto_0
    return v1

    .line 56
    :cond_0
    const-string v1, "[0-9]*"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 57
    .local v0, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    goto :goto_0
.end method

.method public static parseFloat(Ljava/lang/String;)F
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "."

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 88
    :cond_0
    const/4 v0, 0x0

    .line 90
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    goto :goto_0
.end method

.method public static parseInt(Ljava/lang/String;)I
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 80
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/smartisan/weather/lib/Utility;->isDigitalOnly(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 81
    :cond_0
    const/4 v0, 0x0

    .line 83
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method
