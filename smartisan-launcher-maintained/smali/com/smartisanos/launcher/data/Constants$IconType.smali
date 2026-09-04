.class public final enum Lcom/smartisanos/launcher/data/Constants$IconType;
.super Ljava/lang/Enum;
.source "Constants.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/data/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IconType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/smartisanos/launcher/data/Constants$IconType;",
        ">;"
    }
.end annotation


.field private static final synthetic $VALUES:[Lcom/smartisanos/launcher/data/Constants$IconType;

.field public static final enum Dark:Lcom/smartisanos/launcher/data/Constants$IconType;

.field public static final enum Light:Lcom/smartisanos/launcher/data/Constants$IconType;


.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 205
    new-instance v0, Lcom/smartisanos/launcher/data/Constants$IconType;

    const-string v1, "Dark"

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/launcher/data/Constants$IconType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/data/Constants$IconType;->Dark:Lcom/smartisanos/launcher/data/Constants$IconType;

    new-instance v0, Lcom/smartisanos/launcher/data/Constants$IconType;

    const-string v1, "Light"

    invoke-direct {v0, v1, v3}, Lcom/smartisanos/launcher/data/Constants$IconType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/data/Constants$IconType;->Light:Lcom/smartisanos/launcher/data/Constants$IconType;

    .line 204
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/smartisanos/launcher/data/Constants$IconType;

    sget-object v1, Lcom/smartisanos/launcher/data/Constants$IconType;->Dark:Lcom/smartisanos/launcher/data/Constants$IconType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/smartisanos/launcher/data/Constants$IconType;->Light:Lcom/smartisanos/launcher/data/Constants$IconType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/smartisanos/launcher/data/Constants$IconType;->$VALUES:[Lcom/smartisanos/launcher/data/Constants$IconType;

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
    .line 204
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/smartisanos/launcher/data/Constants$IconType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 204
    const-class v0, Lcom/smartisanos/launcher/data/Constants$IconType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/data/Constants$IconType;

    return-object v0
.end method

.method public static values()[Lcom/smartisanos/launcher/data/Constants$IconType;
    .locals 1

    .prologue
    .line 204
    sget-object v0, Lcom/smartisanos/launcher/data/Constants$IconType;->$VALUES:[Lcom/smartisanos/launcher/data/Constants$IconType;

    invoke-virtual {v0}, [Lcom/smartisanos/launcher/data/Constants$IconType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/smartisanos/launcher/data/Constants$IconType;

    return-object v0
.end method
