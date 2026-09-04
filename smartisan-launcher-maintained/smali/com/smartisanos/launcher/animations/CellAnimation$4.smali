.class synthetic Lcom/smartisanos/launcher/animations/CellAnimation$4;
.super Ljava/lang/Object;
.source "CellAnimation.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/animations/CellAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


.field static final synthetic $SwitchMap$com$smartisanos$launcher$animations$CellAnimation$CELL_ANIMATION:[I


.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 155
    invoke-static {}, Lcom/smartisanos/launcher/animations/CellAnimation$CELL_ANIMATION;->values()[Lcom/smartisanos/launcher/animations/CellAnimation$CELL_ANIMATION;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/smartisanos/launcher/animations/CellAnimation$4;->$SwitchMap$com$smartisanos$launcher$animations$CellAnimation$CELL_ANIMATION:[I

    :try_start_0
    sget-object v0, Lcom/smartisanos/launcher/animations/CellAnimation$4;->$SwitchMap$com$smartisanos$launcher$animations$CellAnimation$CELL_ANIMATION:[I

    sget-object v1, Lcom/smartisanos/launcher/animations/CellAnimation$CELL_ANIMATION;->MOVE_TO_TRASH:Lcom/smartisanos/launcher/animations/CellAnimation$CELL_ANIMATION;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/animations/CellAnimation$CELL_ANIMATION;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v0, Lcom/smartisanos/launcher/animations/CellAnimation$4;->$SwitchMap$com$smartisanos$launcher$animations$CellAnimation$CELL_ANIMATION:[I

    sget-object v1, Lcom/smartisanos/launcher/animations/CellAnimation$CELL_ANIMATION;->FALL_INTO_TRASH:Lcom/smartisanos/launcher/animations/CellAnimation$CELL_ANIMATION;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/animations/CellAnimation$CELL_ANIMATION;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v0, Lcom/smartisanos/launcher/animations/CellAnimation$4;->$SwitchMap$com$smartisanos$launcher$animations$CellAnimation$CELL_ANIMATION:[I

    sget-object v1, Lcom/smartisanos/launcher/animations/CellAnimation$CELL_ANIMATION;->ROCK_WHEN_UNINSTALL:Lcom/smartisanos/launcher/animations/CellAnimation$CELL_ANIMATION;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/animations/CellAnimation$CELL_ANIMATION;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v0, Lcom/smartisanos/launcher/animations/CellAnimation$4;->$SwitchMap$com$smartisanos$launcher$animations$CellAnimation$CELL_ANIMATION:[I

    sget-object v1, Lcom/smartisanos/launcher/animations/CellAnimation$CELL_ANIMATION;->BACK_TO_PARENT_VIEW:Lcom/smartisanos/launcher/animations/CellAnimation$CELL_ANIMATION;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/animations/CellAnimation$CELL_ANIMATION;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    return-void

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_0
.end method
