.class public Lcom/smartisan/weather/lib/util/DebugLog;
.super Ljava/lang/Object;
.source "DebugLog.java"


.field public static final DBG:Z


.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 17
    return-void
.end method

.method public static log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "thr"    # Ljava/lang/Throwable;

    .prologue
    .line 23
    return-void
.end method
