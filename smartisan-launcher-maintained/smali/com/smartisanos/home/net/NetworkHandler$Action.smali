.class public final enum Lcom/smartisanos/home/net/NetworkHandler$Action;
.super Ljava/lang/Enum;
.source "NetworkHandler.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/home/net/NetworkHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/smartisanos/home/net/NetworkHandler$Action;",
        ">;"
    }
.end annotation


.field private static final synthetic $VALUES:[Lcom/smartisanos/home/net/NetworkHandler$Action;

.field public static final enum DL_ICON:Lcom/smartisanos/home/net/NetworkHandler$Action;

.field public static final enum FETCH_ICON:Lcom/smartisanos/home/net/NetworkHandler$Action;

.field public static final enum FETCH_ICON_END:Lcom/smartisanos/home/net/NetworkHandler$Action;

.field public static final enum GET_APP_DL_INFO:Lcom/smartisanos/home/net/NetworkHandler$Action;

.field public static final enum GET_THEME_DL_INFO:Lcom/smartisanos/home/net/NetworkHandler$Action;


.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 51
    new-instance v0, Lcom/smartisanos/home/net/NetworkHandler$Action;

    const-string v1, "FETCH_ICON"

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/home/net/NetworkHandler$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/home/net/NetworkHandler$Action;->FETCH_ICON:Lcom/smartisanos/home/net/NetworkHandler$Action;

    .line 52
    new-instance v0, Lcom/smartisanos/home/net/NetworkHandler$Action;

    const-string v1, "DL_ICON"

    invoke-direct {v0, v1, v3}, Lcom/smartisanos/home/net/NetworkHandler$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/home/net/NetworkHandler$Action;->DL_ICON:Lcom/smartisanos/home/net/NetworkHandler$Action;

    .line 53
    new-instance v0, Lcom/smartisanos/home/net/NetworkHandler$Action;

    const-string v1, "FETCH_ICON_END"

    invoke-direct {v0, v1, v4}, Lcom/smartisanos/home/net/NetworkHandler$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/home/net/NetworkHandler$Action;->FETCH_ICON_END:Lcom/smartisanos/home/net/NetworkHandler$Action;

    .line 54
    new-instance v0, Lcom/smartisanos/home/net/NetworkHandler$Action;

    const-string v1, "GET_APP_DL_INFO"

    invoke-direct {v0, v1, v5}, Lcom/smartisanos/home/net/NetworkHandler$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/home/net/NetworkHandler$Action;->GET_APP_DL_INFO:Lcom/smartisanos/home/net/NetworkHandler$Action;

    .line 55
    new-instance v0, Lcom/smartisanos/home/net/NetworkHandler$Action;

    const-string v1, "GET_THEME_DL_INFO"

    invoke-direct {v0, v1, v6}, Lcom/smartisanos/home/net/NetworkHandler$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/home/net/NetworkHandler$Action;->GET_THEME_DL_INFO:Lcom/smartisanos/home/net/NetworkHandler$Action;

    .line 50
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/smartisanos/home/net/NetworkHandler$Action;

    sget-object v1, Lcom/smartisanos/home/net/NetworkHandler$Action;->FETCH_ICON:Lcom/smartisanos/home/net/NetworkHandler$Action;

    aput-object v1, v0, v2

    sget-object v1, Lcom/smartisanos/home/net/NetworkHandler$Action;->DL_ICON:Lcom/smartisanos/home/net/NetworkHandler$Action;

    aput-object v1, v0, v3

    sget-object v1, Lcom/smartisanos/home/net/NetworkHandler$Action;->FETCH_ICON_END:Lcom/smartisanos/home/net/NetworkHandler$Action;

    aput-object v1, v0, v4

    sget-object v1, Lcom/smartisanos/home/net/NetworkHandler$Action;->GET_APP_DL_INFO:Lcom/smartisanos/home/net/NetworkHandler$Action;

    aput-object v1, v0, v5

    sget-object v1, Lcom/smartisanos/home/net/NetworkHandler$Action;->GET_THEME_DL_INFO:Lcom/smartisanos/home/net/NetworkHandler$Action;

    aput-object v1, v0, v6

    sput-object v0, Lcom/smartisanos/home/net/NetworkHandler$Action;->$VALUES:[Lcom/smartisanos/home/net/NetworkHandler$Action;

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
    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/smartisanos/home/net/NetworkHandler$Action;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 50
    const-class v0, Lcom/smartisanos/home/net/NetworkHandler$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/home/net/NetworkHandler$Action;

    return-object v0
.end method

.method public static values()[Lcom/smartisanos/home/net/NetworkHandler$Action;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/smartisanos/home/net/NetworkHandler$Action;->$VALUES:[Lcom/smartisanos/home/net/NetworkHandler$Action;

    invoke-virtual {v0}, [Lcom/smartisanos/home/net/NetworkHandler$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/smartisanos/home/net/NetworkHandler$Action;

    return-object v0
.end method
