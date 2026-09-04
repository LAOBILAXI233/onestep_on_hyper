.class public final enum Lcom/smartisanos/launcher/animations/CellAnimation$CELL_ANIMATION;
.super Ljava/lang/Enum;
.source "CellAnimation.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/animations/CellAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CELL_ANIMATION"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/smartisanos/launcher/animations/CellAnimation$CELL_ANIMATION;",
        ">;"
    }
.end annotation


.field private static final synthetic $VALUES:[Lcom/smartisanos/launcher/animations/CellAnimation$CELL_ANIMATION;

.field public static final enum BACK_TO_PARENT_VIEW:Lcom/smartisanos/launcher/animations/CellAnimation$CELL_ANIMATION;

.field public static final enum FALL_INTO_TRASH:Lcom/smartisanos/launcher/animations/CellAnimation$CELL_ANIMATION;

.field public static final enum MOVE_TO_TRASH:Lcom/smartisanos/launcher/animations/CellAnimation$CELL_ANIMATION;

.field public static final enum ROCK_WHEN_UNINSTALL:Lcom/smartisanos/launcher/animations/CellAnimation$CELL_ANIMATION;


.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 33
    new-instance v0, Lcom/smartisanos/launcher/animations/CellAnimation$CELL_ANIMATION;

    const-string v1, "MOVE_TO_TRASH"

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/launcher/animations/CellAnimation$CELL_ANIMATION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/animations/CellAnimation$CELL_ANIMATION;->MOVE_TO_TRASH:Lcom/smartisanos/launcher/animations/CellAnimation$CELL_ANIMATION;

    .line 34
    new-instance v0, Lcom/smartisanos/launcher/animations/CellAnimation$CELL_ANIMATION;

    const-string v1, "ROCK_WHEN_UNINSTALL"

    invoke-direct {v0, v1, v3}, Lcom/smartisanos/launcher/animations/CellAnimation$CELL_ANIMATION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/animations/CellAnimation$CELL_ANIMATION;->ROCK_WHEN_UNINSTALL:Lcom/smartisanos/launcher/animations/CellAnimation$CELL_ANIMATION;

    .line 35
    new-instance v0, Lcom/smartisanos/launcher/animations/CellAnimation$CELL_ANIMATION;

    const-string v1, "FALL_INTO_TRASH"

    invoke-direct {v0, v1, v4}, Lcom/smartisanos/launcher/animations/CellAnimation$CELL_ANIMATION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/animations/CellAnimation$CELL_ANIMATION;->FALL_INTO_TRASH:Lcom/smartisanos/launcher/animations/CellAnimation$CELL_ANIMATION;

    .line 36
    new-instance v0, Lcom/smartisanos/launcher/animations/CellAnimation$CELL_ANIMATION;

    const-string v1, "BACK_TO_PARENT_VIEW"

    invoke-direct {v0, v1, v5}, Lcom/smartisanos/launcher/animations/CellAnimation$CELL_ANIMATION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/animations/CellAnimation$CELL_ANIMATION;->BACK_TO_PARENT_VIEW:Lcom/smartisanos/launcher/animations/CellAnimation$CELL_ANIMATION;

    .line 32
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/smartisanos/launcher/animations/CellAnimation$CELL_ANIMATION;

    sget-object v1, Lcom/smartisanos/launcher/animations/CellAnimation$CELL_ANIMATION;->MOVE_TO_TRASH:Lcom/smartisanos/launcher/animations/CellAnimation$CELL_ANIMATION;

    aput-object v1, v0, v2

    sget-object v1, Lcom/smartisanos/launcher/animations/CellAnimation$CELL_ANIMATION;->ROCK_WHEN_UNINSTALL:Lcom/smartisanos/launcher/animations/CellAnimation$CELL_ANIMATION;

    aput-object v1, v0, v3

    sget-object v1, Lcom/smartisanos/launcher/animations/CellAnimation$CELL_ANIMATION;->FALL_INTO_TRASH:Lcom/smartisanos/launcher/animations/CellAnimation$CELL_ANIMATION;

    aput-object v1, v0, v4

    sget-object v1, Lcom/smartisanos/launcher/animations/CellAnimation$CELL_ANIMATION;->BACK_TO_PARENT_VIEW:Lcom/smartisanos/launcher/animations/CellAnimation$CELL_ANIMATION;

    aput-object v1, v0, v5

    sput-object v0, Lcom/smartisanos/launcher/animations/CellAnimation$CELL_ANIMATION;->$VALUES:[Lcom/smartisanos/launcher/animations/CellAnimation$CELL_ANIMATION;

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
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/smartisanos/launcher/animations/CellAnimation$CELL_ANIMATION;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 32
    const-class v0, Lcom/smartisanos/launcher/animations/CellAnimation$CELL_ANIMATION;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/animations/CellAnimation$CELL_ANIMATION;

    return-object v0
.end method

.method public static values()[Lcom/smartisanos/launcher/animations/CellAnimation$CELL_ANIMATION;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/smartisanos/launcher/animations/CellAnimation$CELL_ANIMATION;->$VALUES:[Lcom/smartisanos/launcher/animations/CellAnimation$CELL_ANIMATION;

    invoke-virtual {v0}, [Lcom/smartisanos/launcher/animations/CellAnimation$CELL_ANIMATION;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/smartisanos/launcher/animations/CellAnimation$CELL_ANIMATION;

    return-object v0
.end method
