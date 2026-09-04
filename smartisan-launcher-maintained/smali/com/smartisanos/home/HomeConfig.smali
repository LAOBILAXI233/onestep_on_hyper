.class public Lcom/smartisanos/home/HomeConfig;
.super Ljava/lang/Object;
.source "HomeConfig.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/home/HomeConfig$PhoneInfo;,
        Lcom/smartisanos/home/HomeConfig$ChannelRules;
    }
.end annotation


.field public static CHANNEL_ID:I

.field public static final DISABLE_LIST_IN_SWITCH_ICON_VIEW:[Ljava/lang/String;

.field public static ENABLE_SMARTISAN_MARKET:Z

.field public static P1:Lcom/smartisanos/home/HomeConfig$PhoneInfo;

.field public static P2:Lcom/smartisanos/home/HomeConfig$PhoneInfo;

.field public static P3:Lcom/smartisanos/home/HomeConfig$PhoneInfo;

.field public static P4:Lcom/smartisanos/home/HomeConfig$PhoneInfo;

.field public static P5:Lcom/smartisanos/home/HomeConfig$PhoneInfo;

.field public static P6:Lcom/smartisanos/home/HomeConfig$PhoneInfo;

.field public static P7:Lcom/smartisanos/home/HomeConfig$PhoneInfo;

.field public static PHONE_ARR:[Lcom/smartisanos/home/HomeConfig$PhoneInfo;


.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 63
    sput v3, Lcom/smartisanos/home/HomeConfig;->CHANNEL_ID:I

    .line 65
    sput-boolean v4, Lcom/smartisanos/home/HomeConfig;->ENABLE_SMARTISAN_MARKET:Z

    .line 67
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.smartisan.appstore"

    aput-object v1, v0, v3

    const-string v1, "com.smartisan.gamestore"

    aput-object v1, v0, v4

    const-string v1, "com.smartisan.mms"

    aput-object v1, v0, v5

    const-string v1, "com.smartisan.contacts"

    aput-object v1, v0, v6

    const-string v1, "com.smartisan.cloudsync"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "com.smartisanos.home.downloader"

    aput-object v2, v0, v1

    sput-object v0, Lcom/smartisanos/home/HomeConfig;->DISABLE_LIST_IN_SWITCH_ICON_VIEW:[Ljava/lang/String;

    .line 101
    new-instance v0, Lcom/smartisanos/home/HomeConfig$PhoneInfo;

    const-string v1, "PowerVR SGX 544MP"

    invoke-direct {v0, v1, v3, v3}, Lcom/smartisanos/home/HomeConfig$PhoneInfo;-><init>(Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/smartisanos/home/HomeConfig;->P1:Lcom/smartisanos/home/HomeConfig$PhoneInfo;

    .line 102
    new-instance v0, Lcom/smartisanos/home/HomeConfig$PhoneInfo;

    const-string v1, "Adreno (TM) 320"

    invoke-direct {v0, v1, v4, v3}, Lcom/smartisanos/home/HomeConfig$PhoneInfo;-><init>(Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/smartisanos/home/HomeConfig;->P2:Lcom/smartisanos/home/HomeConfig$PhoneInfo;

    .line 103
    new-instance v0, Lcom/smartisanos/home/HomeConfig$PhoneInfo;

    const-string v1, "Vivante GC4000"

    invoke-direct {v0, v1, v3, v3}, Lcom/smartisanos/home/HomeConfig$PhoneInfo;-><init>(Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/smartisanos/home/HomeConfig;->P3:Lcom/smartisanos/home/HomeConfig$PhoneInfo;

    .line 104
    new-instance v0, Lcom/smartisanos/home/HomeConfig$PhoneInfo;

    const-string v1, "Mali-400 MP"

    invoke-direct {v0, v1, v3, v3}, Lcom/smartisanos/home/HomeConfig$PhoneInfo;-><init>(Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/smartisanos/home/HomeConfig;->P4:Lcom/smartisanos/home/HomeConfig$PhoneInfo;

    .line 105
    new-instance v0, Lcom/smartisanos/home/HomeConfig$PhoneInfo;

    const-string v1, "NVIDIA Tegra"

    invoke-direct {v0, v1, v3, v4}, Lcom/smartisanos/home/HomeConfig$PhoneInfo;-><init>(Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/smartisanos/home/HomeConfig;->P5:Lcom/smartisanos/home/HomeConfig$PhoneInfo;

    .line 106
    new-instance v0, Lcom/smartisanos/home/HomeConfig$PhoneInfo;

    const-string v1, "Mali-450 MP"

    invoke-direct {v0, v1, v3, v4}, Lcom/smartisanos/home/HomeConfig$PhoneInfo;-><init>(Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/smartisanos/home/HomeConfig;->P6:Lcom/smartisanos/home/HomeConfig$PhoneInfo;

    .line 107
    new-instance v0, Lcom/smartisanos/home/HomeConfig$PhoneInfo;

    const-string v1, "PowerVR Rogue G6200"

    invoke-direct {v0, v1, v3, v4}, Lcom/smartisanos/home/HomeConfig$PhoneInfo;-><init>(Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/smartisanos/home/HomeConfig;->P7:Lcom/smartisanos/home/HomeConfig$PhoneInfo;

    .line 109
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/smartisanos/home/HomeConfig$PhoneInfo;

    sget-object v1, Lcom/smartisanos/home/HomeConfig;->P1:Lcom/smartisanos/home/HomeConfig$PhoneInfo;

    aput-object v1, v0, v3

    sget-object v1, Lcom/smartisanos/home/HomeConfig;->P2:Lcom/smartisanos/home/HomeConfig$PhoneInfo;

    aput-object v1, v0, v4

    sget-object v1, Lcom/smartisanos/home/HomeConfig;->P3:Lcom/smartisanos/home/HomeConfig$PhoneInfo;

    aput-object v1, v0, v5

    sget-object v1, Lcom/smartisanos/home/HomeConfig;->P4:Lcom/smartisanos/home/HomeConfig$PhoneInfo;

    aput-object v1, v0, v6

    sget-object v1, Lcom/smartisanos/home/HomeConfig;->P5:Lcom/smartisanos/home/HomeConfig$PhoneInfo;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/smartisanos/home/HomeConfig;->P6:Lcom/smartisanos/home/HomeConfig$PhoneInfo;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/smartisanos/home/HomeConfig;->P7:Lcom/smartisanos/home/HomeConfig$PhoneInfo;

    aput-object v2, v0, v1

    sput-object v0, Lcom/smartisanos/home/HomeConfig;->PHONE_ARR:[Lcom/smartisanos/home/HomeConfig$PhoneInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static updateGlConfigByRenderInfo(Ljava/lang/String;)V
    .locals 6
    .param p0, "render"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 112
    if-nez p0, :cond_1

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    sget-object v3, Lcom/smartisanos/home/HomeConfig;->PHONE_ARR:[Lcom/smartisanos/home/HomeConfig$PhoneInfo;

    array-length v4, v3

    move v1, v2

    :goto_1
    if-ge v1, v4, :cond_0

    aget-object v0, v3, v1

    .line 117
    .local v0, "phoneInfo":Lcom/smartisanos/home/HomeConfig$PhoneInfo;
    if-nez v0, :cond_3

    .line 116
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 120
    :cond_3
    iget-object v5, v0, Lcom/smartisanos/home/HomeConfig$PhoneInfo;->render:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 123
    iget-object v5, v0, Lcom/smartisanos/home/HomeConfig$PhoneInfo;->render:Ljava/lang/String;

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 124
    iget-boolean v1, v0, Lcom/smartisanos/home/HomeConfig$PhoneInfo;->supportMipMap:Z

    if-nez v1, :cond_4

    .line 125
    sput-boolean v2, Lcom/smartisanos/launcher/data/Constants;->sIsSupportMipMapTexture:Z

    .line 127
    :cond_4
    iget-boolean v1, v0, Lcom/smartisanos/home/HomeConfig$PhoneInfo;->supportPolygonOffset:Z

    if-nez v1, :cond_0

    .line 128
    invoke-static {}, Lcom/smartisanos/launcher/view/LayerManager;->getInstance()Lcom/smartisanos/launcher/view/LayerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/LayerManager;->closePolygonOffset()V

    goto :goto_0
.end method
