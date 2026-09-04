.class public final enum Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;
.super Ljava/lang/Enum;
.source "TrashAnimation.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/animations/TrashAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TRASH_ANIMATION"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;",
        ">;"
    }
.end annotation


.field private static final synthetic $VALUES:[Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;

.field public static final enum TRASH_APPEAR:Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;

.field public static final enum TRASH_FALL:Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;

.field public static final enum TRASH_FLOAT_UP:Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;

.field public static final enum TRASH_REDUCE:Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;


.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 29
    new-instance v0, Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;

    const-string v1, "TRASH_APPEAR"

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;->TRASH_APPEAR:Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;

    .line 30
    new-instance v0, Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;

    const-string v1, "TRASH_FALL"

    invoke-direct {v0, v1, v3}, Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;->TRASH_FALL:Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;

    .line 31
    new-instance v0, Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;

    const-string v1, "TRASH_FLOAT_UP"

    invoke-direct {v0, v1, v4}, Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;->TRASH_FLOAT_UP:Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;

    .line 32
    new-instance v0, Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;

    const-string v1, "TRASH_REDUCE"

    invoke-direct {v0, v1, v5}, Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;->TRASH_REDUCE:Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;

    .line 28
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;

    sget-object v1, Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;->TRASH_APPEAR:Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;

    aput-object v1, v0, v2

    sget-object v1, Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;->TRASH_FALL:Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;

    aput-object v1, v0, v3

    sget-object v1, Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;->TRASH_FLOAT_UP:Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;

    aput-object v1, v0, v4

    sget-object v1, Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;->TRASH_REDUCE:Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;

    aput-object v1, v0, v5

    sput-object v0, Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;->$VALUES:[Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;

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

.method public static valueOf(Ljava/lang/String;)Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 28
    const-class v0, Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;

    return-object v0
.end method

.method public static values()[Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;->$VALUES:[Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;

    invoke-virtual {v0}, [Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;

    return-object v0
.end method
