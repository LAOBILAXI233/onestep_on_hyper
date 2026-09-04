.class public Lcom/smartisanos/launcher/HardwareAdaptation;
.super Ljava/lang/Object;
.source "HardwareAdaptation.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/launcher/HardwareAdaptation$HardwareInfo;
    }
.end annotation


.field public static final A1:Lcom/smartisanos/launcher/HardwareAdaptation$HardwareInfo;

.field public static final RO_BOARD_PLATFORM:Ljava/lang/String; = "ro.board.platform"

.field public static final RO_BOOT_HARDWARE:Ljava/lang/String; = "ro.boot.hardware"

.field public static final RO_HARDWARE:Ljava/lang/String; = "ro.hardware"

.field public static final RO_PRODUCT_BOARD:Ljava/lang/String; = "ro.product.board"

.field public static final T1:Lcom/smartisanos/launcher/HardwareAdaptation$HardwareInfo;

.field public static final T2:Lcom/smartisanos/launcher/HardwareAdaptation$HardwareInfo;

.field public static final T3_L:Lcom/smartisanos/launcher/HardwareAdaptation$HardwareInfo;

.field public static final U1:Lcom/smartisanos/launcher/HardwareAdaptation$HardwareInfo;

.field public static final U2:Lcom/smartisanos/launcher/HardwareAdaptation$HardwareInfo;

.field public static final UNKNOWN_HARDWARE:Ljava/lang/String; = "unknown"

.field private static final default_sweep_threshold:I = 0x30

.field public static final devices:[Lcom/smartisanos/launcher/HardwareAdaptation$HardwareInfo;

.field private static final log:Lcom/smartisanos/launcher/LOG;


.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x30

    .line 6
    const-class v0, Lcom/smartisanos/launcher/HardwareAdaptation;

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/HardwareAdaptation;->log:Lcom/smartisanos/launcher/LOG;

    .line 30
    new-instance v0, Lcom/smartisanos/launcher/HardwareAdaptation$HardwareInfo;

    const-string v1, "T1"

    const-string v2, "msm8974"

    invoke-direct {v0, v1, v2, v4}, Lcom/smartisanos/launcher/HardwareAdaptation$HardwareInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/HardwareAdaptation;->T1:Lcom/smartisanos/launcher/HardwareAdaptation$HardwareInfo;

    .line 31
    new-instance v0, Lcom/smartisanos/launcher/HardwareAdaptation$HardwareInfo;

    const-string v1, "T2"

    const-string v2, "msm8992"

    const/16 v3, 0x2e

    invoke-direct {v0, v1, v2, v3}, Lcom/smartisanos/launcher/HardwareAdaptation$HardwareInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/HardwareAdaptation;->T2:Lcom/smartisanos/launcher/HardwareAdaptation$HardwareInfo;

    .line 32
    new-instance v0, Lcom/smartisanos/launcher/HardwareAdaptation$HardwareInfo;

    const-string v1, "T3_L"

    const-string v2, "msm8996"

    invoke-direct {v0, v1, v2, v4}, Lcom/smartisanos/launcher/HardwareAdaptation$HardwareInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/HardwareAdaptation;->T3_L:Lcom/smartisanos/launcher/HardwareAdaptation$HardwareInfo;

    .line 33
    new-instance v0, Lcom/smartisanos/launcher/HardwareAdaptation$HardwareInfo;

    const-string v1, "U1"

    const-string v2, "msm8916"

    const/16 v3, 0x34

    invoke-direct {v0, v1, v2, v3}, Lcom/smartisanos/launcher/HardwareAdaptation$HardwareInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/HardwareAdaptation;->U1:Lcom/smartisanos/launcher/HardwareAdaptation$HardwareInfo;

    .line 34
    new-instance v0, Lcom/smartisanos/launcher/HardwareAdaptation$HardwareInfo;

    const-string v1, "U2"

    const-string v2, "msm8974"

    const/16 v3, 0x50

    invoke-direct {v0, v1, v2, v3}, Lcom/smartisanos/launcher/HardwareAdaptation$HardwareInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/HardwareAdaptation;->U2:Lcom/smartisanos/launcher/HardwareAdaptation$HardwareInfo;

    .line 36
    new-instance v0, Lcom/smartisanos/launcher/HardwareAdaptation$HardwareInfo;

    const-string v1, "A1"

    const-string v2, "msm8952"

    invoke-direct {v0, v1, v2, v4}, Lcom/smartisanos/launcher/HardwareAdaptation$HardwareInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/HardwareAdaptation;->A1:Lcom/smartisanos/launcher/HardwareAdaptation$HardwareInfo;

    .line 38
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/smartisanos/launcher/HardwareAdaptation$HardwareInfo;

    const/4 v1, 0x0

    sget-object v2, Lcom/smartisanos/launcher/HardwareAdaptation;->T1:Lcom/smartisanos/launcher/HardwareAdaptation$HardwareInfo;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/smartisanos/launcher/HardwareAdaptation;->T2:Lcom/smartisanos/launcher/HardwareAdaptation$HardwareInfo;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/smartisanos/launcher/HardwareAdaptation;->T3_L:Lcom/smartisanos/launcher/HardwareAdaptation$HardwareInfo;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/smartisanos/launcher/HardwareAdaptation;->U1:Lcom/smartisanos/launcher/HardwareAdaptation$HardwareInfo;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/smartisanos/launcher/HardwareAdaptation;->U2:Lcom/smartisanos/launcher/HardwareAdaptation$HardwareInfo;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/smartisanos/launcher/HardwareAdaptation;->A1:Lcom/smartisanos/launcher/HardwareAdaptation$HardwareInfo;

    aput-object v2, v0, v1

    sput-object v0, Lcom/smartisanos/launcher/HardwareAdaptation;->devices:[Lcom/smartisanos/launcher/HardwareAdaptation$HardwareInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHardwareInfo()Lcom/smartisanos/launcher/HardwareAdaptation$HardwareInfo;
    .locals 8

    .prologue
    .line 45
    sget-object v4, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "board":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "unknown"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 47
    :cond_0
    const-string v4, "ro.board.platform"

    invoke-static {v4}, Lcom/smartisanos/launcher/InvisibleApi;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 49
    :cond_1
    if-nez v0, :cond_2

    .line 50
    const/4 v2, 0x0

    .line 64
    :goto_0
    return-object v2

    .line 52
    :cond_2
    const/4 v2, 0x0

    .line 53
    .local v2, "hardwareInfo":Lcom/smartisanos/launcher/HardwareAdaptation$HardwareInfo;
    sget-object v5, Lcom/smartisanos/launcher/HardwareAdaptation;->devices:[Lcom/smartisanos/launcher/HardwareAdaptation$HardwareInfo;

    array-length v6, v5

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v6, :cond_3

    aget-object v3, v5, v4

    .line 54
    .local v3, "info":Lcom/smartisanos/launcher/HardwareAdaptation$HardwareInfo;
    iget-object v7, v3, Lcom/smartisanos/launcher/HardwareAdaptation$HardwareInfo;->board:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 55
    move-object v2, v3

    .line 59
    .end local v3    # "info":Lcom/smartisanos/launcher/HardwareAdaptation$HardwareInfo;
    :cond_3
    const/4 v1, 0x0

    .line 60
    .local v1, "boardName":Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 61
    iget-object v1, v2, Lcom/smartisanos/launcher/HardwareAdaptation$HardwareInfo;->board:Ljava/lang/String;

    .line 63
    :cond_4
    sget-object v4, Lcom/smartisanos/launcher/HardwareAdaptation;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "board name ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 53
    .end local v1    # "boardName":Ljava/lang/String;
    .restart local v3    # "info":Lcom/smartisanos/launcher/HardwareAdaptation$HardwareInfo;
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public static getSweepThresholdByHardware()I
    .locals 2

    .prologue
    .line 70
    const/16 v1, 0x30

    .line 71
    .local v1, "sweepThreshold":I
    invoke-static {}, Lcom/smartisanos/launcher/HardwareAdaptation;->getHardwareInfo()Lcom/smartisanos/launcher/HardwareAdaptation$HardwareInfo;

    move-result-object v0

    .line 72
    .local v0, "info":Lcom/smartisanos/launcher/HardwareAdaptation$HardwareInfo;
    if-eqz v0, :cond_0

    .line 73
    iget v1, v0, Lcom/smartisanos/launcher/HardwareAdaptation$HardwareInfo;->sweepThreshold:I

    .line 75
    :cond_0
    return v1
.end method
