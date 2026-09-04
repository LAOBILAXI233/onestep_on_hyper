.class public final enum Lcom/smartisanos/launcher/view/DownloadView$DownloadState;
.super Ljava/lang/Enum;
.source "DownloadView.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/view/DownloadView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DownloadState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/smartisanos/launcher/view/DownloadView$DownloadState;",
        ">;"
    }
.end annotation


.field private static final synthetic $VALUES:[Lcom/smartisanos/launcher/view/DownloadView$DownloadState;

.field public static final enum COMPLETE:Lcom/smartisanos/launcher/view/DownloadView$DownloadState;

.field public static final enum DOWNLOADING:Lcom/smartisanos/launcher/view/DownloadView$DownloadState;

.field public static final enum FAILED:Lcom/smartisanos/launcher/view/DownloadView$DownloadState;

.field public static final enum INSTALLING:Lcom/smartisanos/launcher/view/DownloadView$DownloadState;

.field public static final enum NEED_DOWNLOAD:Lcom/smartisanos/launcher/view/DownloadView$DownloadState;

.field public static final enum NONE:Lcom/smartisanos/launcher/view/DownloadView$DownloadState;

.field public static final enum PAUSE:Lcom/smartisanos/launcher/view/DownloadView$DownloadState;

.field public static final enum PENDING:Lcom/smartisanos/launcher/view/DownloadView$DownloadState;

.field public static final enum STOP:Lcom/smartisanos/launcher/view/DownloadView$DownloadState;


.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 29
    new-instance v0, Lcom/smartisanos/launcher/view/DownloadView$DownloadState;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcom/smartisanos/launcher/view/DownloadView$DownloadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/view/DownloadView$DownloadState;->NONE:Lcom/smartisanos/launcher/view/DownloadView$DownloadState;

    new-instance v0, Lcom/smartisanos/launcher/view/DownloadView$DownloadState;

    const-string v1, "NEED_DOWNLOAD"

    invoke-direct {v0, v1, v4}, Lcom/smartisanos/launcher/view/DownloadView$DownloadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/view/DownloadView$DownloadState;->NEED_DOWNLOAD:Lcom/smartisanos/launcher/view/DownloadView$DownloadState;

    new-instance v0, Lcom/smartisanos/launcher/view/DownloadView$DownloadState;

    const-string v1, "PENDING"

    invoke-direct {v0, v1, v5}, Lcom/smartisanos/launcher/view/DownloadView$DownloadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/view/DownloadView$DownloadState;->PENDING:Lcom/smartisanos/launcher/view/DownloadView$DownloadState;

    new-instance v0, Lcom/smartisanos/launcher/view/DownloadView$DownloadState;

    const-string v1, "PAUSE"

    invoke-direct {v0, v1, v6}, Lcom/smartisanos/launcher/view/DownloadView$DownloadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/view/DownloadView$DownloadState;->PAUSE:Lcom/smartisanos/launcher/view/DownloadView$DownloadState;

    new-instance v0, Lcom/smartisanos/launcher/view/DownloadView$DownloadState;

    const-string v1, "DOWNLOADING"

    invoke-direct {v0, v1, v7}, Lcom/smartisanos/launcher/view/DownloadView$DownloadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/view/DownloadView$DownloadState;->DOWNLOADING:Lcom/smartisanos/launcher/view/DownloadView$DownloadState;

    new-instance v0, Lcom/smartisanos/launcher/view/DownloadView$DownloadState;

    const-string v1, "INSTALLING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/launcher/view/DownloadView$DownloadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/view/DownloadView$DownloadState;->INSTALLING:Lcom/smartisanos/launcher/view/DownloadView$DownloadState;

    new-instance v0, Lcom/smartisanos/launcher/view/DownloadView$DownloadState;

    const-string v1, "FAILED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/launcher/view/DownloadView$DownloadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/view/DownloadView$DownloadState;->FAILED:Lcom/smartisanos/launcher/view/DownloadView$DownloadState;

    new-instance v0, Lcom/smartisanos/launcher/view/DownloadView$DownloadState;

    const-string v1, "STOP"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/launcher/view/DownloadView$DownloadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/view/DownloadView$DownloadState;->STOP:Lcom/smartisanos/launcher/view/DownloadView$DownloadState;

    new-instance v0, Lcom/smartisanos/launcher/view/DownloadView$DownloadState;

    const-string v1, "COMPLETE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/launcher/view/DownloadView$DownloadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/view/DownloadView$DownloadState;->COMPLETE:Lcom/smartisanos/launcher/view/DownloadView$DownloadState;

    .line 28
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/smartisanos/launcher/view/DownloadView$DownloadState;

    sget-object v1, Lcom/smartisanos/launcher/view/DownloadView$DownloadState;->NONE:Lcom/smartisanos/launcher/view/DownloadView$DownloadState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/smartisanos/launcher/view/DownloadView$DownloadState;->NEED_DOWNLOAD:Lcom/smartisanos/launcher/view/DownloadView$DownloadState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/smartisanos/launcher/view/DownloadView$DownloadState;->PENDING:Lcom/smartisanos/launcher/view/DownloadView$DownloadState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/smartisanos/launcher/view/DownloadView$DownloadState;->PAUSE:Lcom/smartisanos/launcher/view/DownloadView$DownloadState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/smartisanos/launcher/view/DownloadView$DownloadState;->DOWNLOADING:Lcom/smartisanos/launcher/view/DownloadView$DownloadState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/smartisanos/launcher/view/DownloadView$DownloadState;->INSTALLING:Lcom/smartisanos/launcher/view/DownloadView$DownloadState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/smartisanos/launcher/view/DownloadView$DownloadState;->FAILED:Lcom/smartisanos/launcher/view/DownloadView$DownloadState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/smartisanos/launcher/view/DownloadView$DownloadState;->STOP:Lcom/smartisanos/launcher/view/DownloadView$DownloadState;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/smartisanos/launcher/view/DownloadView$DownloadState;->COMPLETE:Lcom/smartisanos/launcher/view/DownloadView$DownloadState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/smartisanos/launcher/view/DownloadView$DownloadState;->$VALUES:[Lcom/smartisanos/launcher/view/DownloadView$DownloadState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/smartisanos/launcher/view/DownloadView$DownloadState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 28
    const-class v0, Lcom/smartisanos/launcher/view/DownloadView$DownloadState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/DownloadView$DownloadState;

    return-object v0
.end method

.method public static values()[Lcom/smartisanos/launcher/view/DownloadView$DownloadState;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/smartisanos/launcher/view/DownloadView$DownloadState;->$VALUES:[Lcom/smartisanos/launcher/view/DownloadView$DownloadState;

    invoke-virtual {v0}, [Lcom/smartisanos/launcher/view/DownloadView$DownloadState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/smartisanos/launcher/view/DownloadView$DownloadState;

    return-object v0
.end method
