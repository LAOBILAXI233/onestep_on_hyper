.class public Lcom/smartisan/trackerlib/utils/LogUtils;
.super Ljava/lang/Object;
.source "LogUtils.java"


.field public static final DEBUGGABLE:Z = true

.field private static final DEFAULT_MSG:Ljava/lang/String; = "No msg for this report"

.field private static final MAX_ENABLED_LOG_LEVEL:I = 0x2

.field private static final TAG:Ljava/lang/String; = "TrackSmartisan"


.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 94
    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    .line 95
    .local v4, "trace":[Ljava/lang/StackTraceElement;
    const-string v0, "<unknown>"

    .line 96
    .local v0, "caller":Ljava/lang/String;
    const/4 v2, 0x0

    .line 97
    .local v2, "className":Ljava/lang/String;
    const/4 v3, 0x3

    .local v3, "i":I
    :goto_0
    array-length v5, v4

    if-ge v3, v5, :cond_0

    .line 98
    aget-object v5, v4, v3

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 99
    const-class v5, Lcom/smartisan/trackerlib/utils/LogUtils;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 100
    aget-object v5, v4, v3

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, "callingClass":Ljava/lang/String;
    const/16 v5, 0x2e

    invoke-virtual {v1, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 102
    const/16 v5, 0x24

    invoke-virtual {v1, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 103
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v4, v3

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 107
    .end local v1    # "callingClass":Ljava/lang/String;
    :cond_0
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "[%d] %s: %s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->getId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v0, v7, v8

    const/4 v8, 0x2

    aput-object p0, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 97
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static checkMsg(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    const-string p0, "No msg for this report"

    .line 90
    :cond_0
    return-object p0
.end method

.method public static d(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 25
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/smartisan/trackerlib/utils/LogUtils;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    const/16 v0, 0x64

    const-string v1, "TrackSmartisan"

    invoke-static {v0, v1, p0}, Lcom/smartisan/trackerlib/utils/LogUtils;->log(CLjava/lang/String;Ljava/lang/String;)V

    .line 28
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 31
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/smartisan/trackerlib/utils/LogUtils;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    const/16 v0, 0x65

    const-string v1, "TrackSmartisan"

    invoke-static {v0, v1, p0}, Lcom/smartisan/trackerlib/utils/LogUtils;->log(CLjava/lang/String;Ljava/lang/String;)V

    .line 34
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 19
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/smartisan/trackerlib/utils/LogUtils;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    const/16 v0, 0x69

    const-string v1, "TrackSmartisan"

    invoke-static {v0, v1, p0}, Lcom/smartisan/trackerlib/utils/LogUtils;->log(CLjava/lang/String;Ljava/lang/String;)V

    .line 22
    :cond_0
    return-void
.end method

.method public static isLoggable(I)Z
    .locals 1
    .param p0, "level"    # I

    .prologue
    .line 15
    const/4 v0, 0x2

    if-gt v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static log(CLjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "flag"    # C
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 55
    const/4 v0, 0x0

    .line 56
    .local v0, "logMsg":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "start":I
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 57
    add-int/lit16 v2, v1, 0xed8

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 58
    add-int/lit16 v2, v1, 0xdac

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/smartisan/trackerlib/utils/LogUtils;->checkMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    :goto_1
    invoke-static {v0}, Lcom/smartisan/trackerlib/utils/LogUtils;->buildMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    sparse-switch p0, :sswitch_data_0

    .line 80
    invoke-static {p1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :goto_2
    add-int/lit16 v1, v1, 0xdac

    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/smartisan/trackerlib/utils/LogUtils;->checkMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 65
    :sswitch_0
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 68
    :sswitch_1
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 71
    :sswitch_2
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 74
    :sswitch_3
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 77
    :sswitch_4
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 84
    :cond_1
    return-void

    .line 63
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_2
        0x65 -> :sswitch_3
        0x69 -> :sswitch_1
        0x76 -> :sswitch_0
        0x77 -> :sswitch_4
    .end sparse-switch
.end method

.method public static v(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 37
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/smartisan/trackerlib/utils/LogUtils;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    const/16 v0, 0x76

    const-string v1, "TrackSmartisan"

    invoke-static {v0, v1, p0}, Lcom/smartisan/trackerlib/utils/LogUtils;->log(CLjava/lang/String;Ljava/lang/String;)V

    .line 40
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 43
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/smartisan/trackerlib/utils/LogUtils;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    const/16 v0, 0x77

    const-string v1, "TrackSmartisan"

    invoke-static {v0, v1, p0}, Lcom/smartisan/trackerlib/utils/LogUtils;->log(CLjava/lang/String;Ljava/lang/String;)V

    .line 46
    :cond_0
    return-void
.end method

.method public static wtf(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 49
    const/4 v0, 0x7

    invoke-static {v0}, Lcom/smartisan/trackerlib/utils/LogUtils;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    const/16 v0, 0x61

    const-string v1, "TrackSmartisan"

    invoke-static {v0, v1, p0}, Lcom/smartisan/trackerlib/utils/LogUtils;->log(CLjava/lang/String;Ljava/lang/String;)V

    .line 52
    :cond_0
    return-void
.end method
