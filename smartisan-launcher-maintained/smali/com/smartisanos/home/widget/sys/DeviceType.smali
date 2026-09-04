.class public final enum Lcom/smartisanos/home/widget/sys/DeviceType;
.super Ljava/lang/Enum;
.source "DeviceType.java"


.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/smartisanos/home/widget/sys/DeviceType;",
        ">;"
    }
.end annotation


.field private static final synthetic $VALUES:[Lcom/smartisanos/home/widget/sys/DeviceType;

.field public static final enum A1:Lcom/smartisanos/home/widget/sys/DeviceType;

.field public static final enum T1:Lcom/smartisanos/home/widget/sys/DeviceType;

.field public static final enum T2:Lcom/smartisanos/home/widget/sys/DeviceType;

.field public static final enum T3:Lcom/smartisanos/home/widget/sys/DeviceType;

.field public static final enum U1:Lcom/smartisanos/home/widget/sys/DeviceType;

.field public static final enum UNKNOWN:Lcom/smartisanos/home/widget/sys/DeviceType;


.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 6
    new-instance v0, Lcom/smartisanos/home/widget/sys/DeviceType;

    const-string v1, "T1"

    invoke-direct {v0, v1, v3}, Lcom/smartisanos/home/widget/sys/DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/home/widget/sys/DeviceType;->T1:Lcom/smartisanos/home/widget/sys/DeviceType;

    new-instance v0, Lcom/smartisanos/home/widget/sys/DeviceType;

    const-string v1, "U1"

    invoke-direct {v0, v1, v4}, Lcom/smartisanos/home/widget/sys/DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/home/widget/sys/DeviceType;->U1:Lcom/smartisanos/home/widget/sys/DeviceType;

    new-instance v0, Lcom/smartisanos/home/widget/sys/DeviceType;

    const-string v1, "T2"

    invoke-direct {v0, v1, v5}, Lcom/smartisanos/home/widget/sys/DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/home/widget/sys/DeviceType;->T2:Lcom/smartisanos/home/widget/sys/DeviceType;

    new-instance v0, Lcom/smartisanos/home/widget/sys/DeviceType;

    const-string v1, "T3"

    invoke-direct {v0, v1, v6}, Lcom/smartisanos/home/widget/sys/DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/home/widget/sys/DeviceType;->T3:Lcom/smartisanos/home/widget/sys/DeviceType;

    new-instance v0, Lcom/smartisanos/home/widget/sys/DeviceType;

    const-string v1, "A1"

    invoke-direct {v0, v1, v7}, Lcom/smartisanos/home/widget/sys/DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/home/widget/sys/DeviceType;->A1:Lcom/smartisanos/home/widget/sys/DeviceType;

    new-instance v0, Lcom/smartisanos/home/widget/sys/DeviceType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/home/widget/sys/DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/home/widget/sys/DeviceType;->UNKNOWN:Lcom/smartisanos/home/widget/sys/DeviceType;

    .line 5
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/smartisanos/home/widget/sys/DeviceType;

    sget-object v1, Lcom/smartisanos/home/widget/sys/DeviceType;->T1:Lcom/smartisanos/home/widget/sys/DeviceType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/smartisanos/home/widget/sys/DeviceType;->U1:Lcom/smartisanos/home/widget/sys/DeviceType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/smartisanos/home/widget/sys/DeviceType;->T2:Lcom/smartisanos/home/widget/sys/DeviceType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/smartisanos/home/widget/sys/DeviceType;->T3:Lcom/smartisanos/home/widget/sys/DeviceType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/smartisanos/home/widget/sys/DeviceType;->A1:Lcom/smartisanos/home/widget/sys/DeviceType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/smartisanos/home/widget/sys/DeviceType;->UNKNOWN:Lcom/smartisanos/home/widget/sys/DeviceType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/smartisanos/home/widget/sys/DeviceType;->$VALUES:[Lcom/smartisanos/home/widget/sys/DeviceType;

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
    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getDeviceType()Lcom/smartisanos/home/widget/sys/DeviceType;
    .locals 3

    .prologue
    .line 9
    sget-object v2, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 11
    .local v0, "board":Ljava/lang/String;
    const-string v2, "msm8974"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 12
    sget-object v1, Lcom/smartisanos/home/widget/sys/DeviceType;->T1:Lcom/smartisanos/home/widget/sys/DeviceType;

    .line 24
    .local v1, "type":Lcom/smartisanos/home/widget/sys/DeviceType;
    :goto_0
    return-object v1

    .line 13
    .end local v1    # "type":Lcom/smartisanos/home/widget/sys/DeviceType;
    :cond_0
    const-string v2, "msm8916"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 14
    sget-object v1, Lcom/smartisanos/home/widget/sys/DeviceType;->U1:Lcom/smartisanos/home/widget/sys/DeviceType;

    .restart local v1    # "type":Lcom/smartisanos/home/widget/sys/DeviceType;
    goto :goto_0

    .line 15
    .end local v1    # "type":Lcom/smartisanos/home/widget/sys/DeviceType;
    :cond_1
    const-string v2, "msm8992"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 16
    sget-object v1, Lcom/smartisanos/home/widget/sys/DeviceType;->T2:Lcom/smartisanos/home/widget/sys/DeviceType;

    .restart local v1    # "type":Lcom/smartisanos/home/widget/sys/DeviceType;
    goto :goto_0

    .line 17
    .end local v1    # "type":Lcom/smartisanos/home/widget/sys/DeviceType;
    :cond_2
    const-string v2, "msm8996"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 18
    sget-object v1, Lcom/smartisanos/home/widget/sys/DeviceType;->T3:Lcom/smartisanos/home/widget/sys/DeviceType;

    .restart local v1    # "type":Lcom/smartisanos/home/widget/sys/DeviceType;
    goto :goto_0

    .line 19
    .end local v1    # "type":Lcom/smartisanos/home/widget/sys/DeviceType;
    :cond_3
    const-string v2, "msm8952"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 20
    sget-object v1, Lcom/smartisanos/home/widget/sys/DeviceType;->A1:Lcom/smartisanos/home/widget/sys/DeviceType;

    .restart local v1    # "type":Lcom/smartisanos/home/widget/sys/DeviceType;
    goto :goto_0

    .line 22
    .end local v1    # "type":Lcom/smartisanos/home/widget/sys/DeviceType;
    :cond_4
    sget-object v1, Lcom/smartisanos/home/widget/sys/DeviceType;->UNKNOWN:Lcom/smartisanos/home/widget/sys/DeviceType;

    .restart local v1    # "type":Lcom/smartisanos/home/widget/sys/DeviceType;
    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/smartisanos/home/widget/sys/DeviceType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 5
    const-class v0, Lcom/smartisanos/home/widget/sys/DeviceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/home/widget/sys/DeviceType;

    return-object v0
.end method

.method public static values()[Lcom/smartisanos/home/widget/sys/DeviceType;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/smartisanos/home/widget/sys/DeviceType;->$VALUES:[Lcom/smartisanos/home/widget/sys/DeviceType;

    invoke-virtual {v0}, [Lcom/smartisanos/home/widget/sys/DeviceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/smartisanos/home/widget/sys/DeviceType;

    return-object v0
.end method
