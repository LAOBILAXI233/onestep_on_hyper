.class public Lcom/smartisanos/launcher/DebugInfoManager;
.super Ljava/lang/Object;
.source "DebugInfoManager.java"


.field public static isPageCellIndexDebugEnable:Z

.field public static isParitcleConfigDebugEnable:Z


.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 7
    sput-boolean v0, Lcom/smartisanos/launcher/DebugInfoManager;->isPageCellIndexDebugEnable:Z

    .line 8
    sput-boolean v0, Lcom/smartisanos/launcher/DebugInfoManager;->isParitcleConfigDebugEnable:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
