.class public final enum Lcom/smartisanos/launcher/data/Constants$ClickAction;
.super Ljava/lang/Enum;
.source "Constants.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/data/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ClickAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/smartisanos/launcher/data/Constants$ClickAction;",
        ">;"
    }
.end annotation


.field private static final synthetic $VALUES:[Lcom/smartisanos/launcher/data/Constants$ClickAction;

.field public static final enum MULTI_SELECT:Lcom/smartisanos/launcher/data/Constants$ClickAction;

.field public static final enum OPEN_APP:Lcom/smartisanos/launcher/data/Constants$ClickAction;

.field public static final enum SWITCH_PAGE:Lcom/smartisanos/launcher/data/Constants$ClickAction;


.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 219
    new-instance v0, Lcom/smartisanos/launcher/data/Constants$ClickAction;

    const-string v1, "OPEN_APP"

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/launcher/data/Constants$ClickAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/data/Constants$ClickAction;->OPEN_APP:Lcom/smartisanos/launcher/data/Constants$ClickAction;

    .line 223
    new-instance v0, Lcom/smartisanos/launcher/data/Constants$ClickAction;

    const-string v1, "SWITCH_PAGE"

    invoke-direct {v0, v1, v3}, Lcom/smartisanos/launcher/data/Constants$ClickAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/data/Constants$ClickAction;->SWITCH_PAGE:Lcom/smartisanos/launcher/data/Constants$ClickAction;

    .line 227
    new-instance v0, Lcom/smartisanos/launcher/data/Constants$ClickAction;

    const-string v1, "MULTI_SELECT"

    invoke-direct {v0, v1, v4}, Lcom/smartisanos/launcher/data/Constants$ClickAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/data/Constants$ClickAction;->MULTI_SELECT:Lcom/smartisanos/launcher/data/Constants$ClickAction;

    .line 215
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/smartisanos/launcher/data/Constants$ClickAction;

    sget-object v1, Lcom/smartisanos/launcher/data/Constants$ClickAction;->OPEN_APP:Lcom/smartisanos/launcher/data/Constants$ClickAction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/smartisanos/launcher/data/Constants$ClickAction;->SWITCH_PAGE:Lcom/smartisanos/launcher/data/Constants$ClickAction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/smartisanos/launcher/data/Constants$ClickAction;->MULTI_SELECT:Lcom/smartisanos/launcher/data/Constants$ClickAction;

    aput-object v1, v0, v4

    sput-object v0, Lcom/smartisanos/launcher/data/Constants$ClickAction;->$VALUES:[Lcom/smartisanos/launcher/data/Constants$ClickAction;

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
    .line 215
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/smartisanos/launcher/data/Constants$ClickAction;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 215
    const-class v0, Lcom/smartisanos/launcher/data/Constants$ClickAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/data/Constants$ClickAction;

    return-object v0
.end method

.method public static values()[Lcom/smartisanos/launcher/data/Constants$ClickAction;
    .locals 1

    .prologue
    .line 215
    sget-object v0, Lcom/smartisanos/launcher/data/Constants$ClickAction;->$VALUES:[Lcom/smartisanos/launcher/data/Constants$ClickAction;

    invoke-virtual {v0}, [Lcom/smartisanos/launcher/data/Constants$ClickAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/smartisanos/launcher/data/Constants$ClickAction;

    return-object v0
.end method
