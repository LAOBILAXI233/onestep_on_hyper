.class public Lcom/smartisanos/quicksearchbox/util/LogUtil;
.super Ljava/lang/Object;
.source "LogUtil.java"


.field private static ENABLE_DEBUG:Z

.field private static LOG_LEVEL:I

.field public static LOG_LEVEL_DEBUG:I

.field private static LOG_LEVEL_DISABLE:I

.field public static LOG_LEVEL_ERROR:I

.field public static LOG_LEVEL_INFO:I

.field public static LOG_LEVEL_VERBOSE:I

.field public static LOG_LEVEL_WARNING:I


.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 11
    sput-boolean v1, Lcom/smartisanos/quicksearchbox/util/LogUtil;->ENABLE_DEBUG:Z

    .line 17
    const/4 v0, -0x1

    sput v0, Lcom/smartisanos/quicksearchbox/util/LogUtil;->LOG_LEVEL_DISABLE:I

    .line 18
    sput v1, Lcom/smartisanos/quicksearchbox/util/LogUtil;->LOG_LEVEL_VERBOSE:I

    .line 19
    const/4 v0, 0x1

    sput v0, Lcom/smartisanos/quicksearchbox/util/LogUtil;->LOG_LEVEL_DEBUG:I

    .line 20
    const/4 v0, 0x2

    sput v0, Lcom/smartisanos/quicksearchbox/util/LogUtil;->LOG_LEVEL_INFO:I

    .line 21
    const/4 v0, 0x3

    sput v0, Lcom/smartisanos/quicksearchbox/util/LogUtil;->LOG_LEVEL_WARNING:I

    .line 22
    const/4 v0, 0x4

    sput v0, Lcom/smartisanos/quicksearchbox/util/LogUtil;->LOG_LEVEL_ERROR:I

    .line 25
    sget v0, Lcom/smartisanos/quicksearchbox/util/LogUtil;->LOG_LEVEL_VERBOSE:I

    sput v0, Lcom/smartisanos/quicksearchbox/util/LogUtil;->LOG_LEVEL:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static debug(Ljava/lang/String;)V
    .locals 2
    .param p0, "info"    # Ljava/lang/String;

    .prologue
    .line 121
    sget-boolean v0, Lcom/smartisanos/quicksearchbox/util/LogUtil;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/smartisanos/quicksearchbox/util/LogUtil;->LOG_LEVEL:I

    sget v1, Lcom/smartisanos/quicksearchbox/util/LogUtil;->LOG_LEVEL_DISABLE:I

    if-ne v0, v1, :cond_1

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    invoke-static {}, Lcom/smartisanos/quicksearchbox/util/LogUtil;->getCaller()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static disableLog()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    sput-boolean v0, Lcom/smartisanos/quicksearchbox/util/LogUtil;->ENABLE_DEBUG:Z

    .line 70
    return-void
.end method

.method public static enableLog()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x1

    sput-boolean v0, Lcom/smartisanos/quicksearchbox/util/LogUtil;->ENABLE_DEBUG:Z

    .line 51
    sget v0, Lcom/smartisanos/quicksearchbox/util/LogUtil;->LOG_LEVEL_VERBOSE:I

    invoke-static {v0}, Lcom/smartisanos/quicksearchbox/util/LogUtil;->setLogLevel(I)V

    .line 52
    return-void
.end method

.method public static enableLog(I)V
    .locals 1
    .param p0, "level"    # I

    .prologue
    .line 64
    const/4 v0, 0x1

    sput-boolean v0, Lcom/smartisanos/quicksearchbox/util/LogUtil;->ENABLE_DEBUG:Z

    .line 65
    invoke-static {p0}, Lcom/smartisanos/quicksearchbox/util/LogUtil;->setLogLevel(I)V

    .line 66
    return-void
.end method

.method public static error(Ljava/lang/String;)V
    .locals 2
    .param p0, "info"    # Ljava/lang/String;

    .prologue
    .line 97
    sget-boolean v0, Lcom/smartisanos/quicksearchbox/util/LogUtil;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/smartisanos/quicksearchbox/util/LogUtil;->LOG_LEVEL:I

    sget v1, Lcom/smartisanos/quicksearchbox/util/LogUtil;->LOG_LEVEL_DISABLE:I

    if-ne v0, v1, :cond_1

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    invoke-static {}, Lcom/smartisanos/quicksearchbox/util/LogUtil;->getCaller()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getCaller()Ljava/lang/String;
    .locals 8

    .prologue
    .line 78
    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    .line 79
    .local v4, "stack":[Ljava/lang/StackTraceElement;
    const/4 v1, 0x0

    .line 80
    .local v1, "className":Ljava/lang/String;
    const/4 v2, 0x0

    .line 81
    .local v2, "element":Ljava/lang/StackTraceElement;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v5, v4

    if-ge v3, v5, :cond_2

    .line 82
    aget-object v2, v4, v3

    .line 83
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 84
    const-string v5, "com.smartisanos"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 81
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 87
    :cond_1
    const-string v5, "LogUtil"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "$"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 90
    const-string v5, "."

    invoke-virtual {v1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 91
    .local v0, "SimpleClassNamePoing":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 93
    .end local v0    # "SimpleClassNamePoing":I
    :goto_1
    return-object v5

    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public static info(Ljava/lang/String;)V
    .locals 2
    .param p0, "info"    # Ljava/lang/String;

    .prologue
    .line 113
    sget-boolean v0, Lcom/smartisanos/quicksearchbox/util/LogUtil;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/smartisanos/quicksearchbox/util/LogUtil;->LOG_LEVEL:I

    sget v1, Lcom/smartisanos/quicksearchbox/util/LogUtil;->LOG_LEVEL_DISABLE:I

    if-ne v0, v1, :cond_1

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    invoke-static {}, Lcom/smartisanos/quicksearchbox/util/LogUtil;->getCaller()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setLogLevel(I)V
    .locals 0
    .param p0, "level"    # I

    .prologue
    .line 39
    sput p0, Lcom/smartisanos/quicksearchbox/util/LogUtil;->LOG_LEVEL:I

    .line 40
    return-void
.end method

.method public static setLogLevelDisable()V
    .locals 1

    .prologue
    .line 43
    sget v0, Lcom/smartisanos/quicksearchbox/util/LogUtil;->LOG_LEVEL_DISABLE:I

    sput v0, Lcom/smartisanos/quicksearchbox/util/LogUtil;->LOG_LEVEL:I

    .line 44
    return-void
.end method

.method public static verbose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "MethodTag"    # Ljava/lang/String;
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 129
    sget-boolean v0, Lcom/smartisanos/quicksearchbox/util/LogUtil;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/smartisanos/quicksearchbox/util/LogUtil;->LOG_LEVEL:I

    sget v1, Lcom/smartisanos/quicksearchbox/util/LogUtil;->LOG_LEVEL_DISABLE:I

    if-ne v0, v1, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    invoke-static {}, Lcom/smartisanos/quicksearchbox/util/LogUtil;->getCaller()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static warn(Ljava/lang/String;)V
    .locals 2
    .param p0, "info"    # Ljava/lang/String;

    .prologue
    .line 105
    sget-boolean v0, Lcom/smartisanos/quicksearchbox/util/LogUtil;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/smartisanos/quicksearchbox/util/LogUtil;->LOG_LEVEL:I

    sget v1, Lcom/smartisanos/quicksearchbox/util/LogUtil;->LOG_LEVEL_DISABLE:I

    if-ne v0, v1, :cond_1

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    invoke-static {}, Lcom/smartisanos/quicksearchbox/util/LogUtil;->getCaller()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
