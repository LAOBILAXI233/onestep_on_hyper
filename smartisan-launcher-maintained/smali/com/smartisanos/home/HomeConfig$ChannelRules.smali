.class public Lcom/smartisanos/home/HomeConfig$ChannelRules;
.super Ljava/lang/Object;
.source "HomeConfig.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/home/HomeConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChannelRules"
.end annotation


.field public static final CHANNEL_ID_360:I = 0x67

.field public static final CHANNEL_ID_ANZHI:I = 0x6c

.field public static final CHANNEL_ID_BAIDU:I = 0x66

.field public static final CHANNEL_ID_GOOGLE:I = 0x65

.field public static final CHANNEL_ID_HUAWEI:I = 0xcd

.field public static final CHANNEL_ID_LENOVO:I = 0xcc

.field public static final CHANNEL_ID_MEIZU:I = 0xca

.field public static final CHANNEL_ID_OFFICAL:I = 0x0

.field public static final CHANNEL_ID_OPPO:I = 0xcb

.field public static final CHANNEL_ID_TECENT:I = 0x68

.field public static final CHANNEL_ID_UC:I = 0x69

.field public static final CHANNEL_ID_WANGDOUJIA:I = 0x6b

.field public static final CHANNEL_ID_XIAOMI:I = 0xc9

.field public static final DISABLE_SMARTISAN_MARKET_LIST:[I

.field public static final ENABLE_SMARTISAN_MARKET_LIST:[I

.field private static final channelMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x68

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 16
    new-array v0, v2, [I

    aput v3, v0, v1

    sput-object v0, Lcom/smartisanos/home/HomeConfig$ChannelRules;->DISABLE_SMARTISAN_MARKET_LIST:[I

    .line 17
    new-array v0, v2, [I

    aput v1, v0, v1

    sput-object v0, Lcom/smartisanos/home/HomeConfig$ChannelRules;->ENABLE_SMARTISAN_MARKET_LIST:[I

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/smartisanos/home/HomeConfig$ChannelRules;->channelMap:Ljava/util/Map;

    .line 37
    sget-object v0, Lcom/smartisanos/home/HomeConfig$ChannelRules;->channelMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "offical"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/smartisanos/home/HomeConfig$ChannelRules;->channelMap:Ljava/util/Map;

    const/16 v1, 0x65

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "google"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/smartisanos/home/HomeConfig$ChannelRules;->channelMap:Ljava/util/Map;

    const/16 v1, 0x66

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "baidu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/smartisanos/home/HomeConfig$ChannelRules;->channelMap:Ljava/util/Map;

    const/16 v1, 0x67

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "360"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/smartisanos/home/HomeConfig$ChannelRules;->channelMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "tecent"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/smartisanos/home/HomeConfig$ChannelRules;->channelMap:Ljava/util/Map;

    const/16 v1, 0x69

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "uc"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/smartisanos/home/HomeConfig$ChannelRules;->channelMap:Ljava/util/Map;

    const/16 v1, 0x6b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "wandoujia"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/smartisanos/home/HomeConfig$ChannelRules;->channelMap:Ljava/util/Map;

    const/16 v1, 0x6c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "anzhi"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/smartisanos/home/HomeConfig$ChannelRules;->channelMap:Ljava/util/Map;

    const/16 v1, 0xc9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "xiaomi"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/smartisanos/home/HomeConfig$ChannelRules;->channelMap:Ljava/util/Map;

    const/16 v1, 0xca

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "meizu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/smartisanos/home/HomeConfig$ChannelRules;->channelMap:Ljava/util/Map;

    const/16 v1, 0xcb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "oppo"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/smartisanos/home/HomeConfig$ChannelRules;->channelMap:Ljava/util/Map;

    const/16 v1, 0xcc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "lenovo"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/smartisanos/home/HomeConfig$ChannelRules;->channelMap:Ljava/util/Map;

    const/16 v1, 0xcd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "huawei"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static supportSmartisanMarket(I)Z
    .locals 5
    .param p0, "channelId"    # I

    .prologue
    const/4 v1, 0x0

    .line 55
    sget-object v3, Lcom/smartisanos/home/HomeConfig$ChannelRules;->ENABLE_SMARTISAN_MARKET_LIST:[I

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_0

    aget v0, v3, v2

    .line 56
    .local v0, "id":I
    if-ne v0, p0, :cond_1

    .line 57
    const/4 v1, 0x1

    .line 60
    .end local v0    # "id":I
    :cond_0
    return v1

    .line 55
    .restart local v0    # "id":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
