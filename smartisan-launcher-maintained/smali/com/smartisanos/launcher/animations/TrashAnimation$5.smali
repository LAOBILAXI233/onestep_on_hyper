.class synthetic Lcom/smartisanos/launcher/animations/TrashAnimation$5;
.super Ljava/lang/Object;
.source "TrashAnimation.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/animations/TrashAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


.field static final synthetic $SwitchMap$com$smartisanos$launcher$animations$TrashAnimation$TRASH_ANIMATION:[I


.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 48
    invoke-static {}, Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;->values()[Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/smartisanos/launcher/animations/TrashAnimation$5;->$SwitchMap$com$smartisanos$launcher$animations$TrashAnimation$TRASH_ANIMATION:[I

    :try_start_0
    sget-object v0, Lcom/smartisanos/launcher/animations/TrashAnimation$5;->$SwitchMap$com$smartisanos$launcher$animations$TrashAnimation$TRASH_ANIMATION:[I

    sget-object v1, Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;->TRASH_APPEAR:Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v0, Lcom/smartisanos/launcher/animations/TrashAnimation$5;->$SwitchMap$com$smartisanos$launcher$animations$TrashAnimation$TRASH_ANIMATION:[I

    sget-object v1, Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;->TRASH_FALL:Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v0, Lcom/smartisanos/launcher/animations/TrashAnimation$5;->$SwitchMap$com$smartisanos$launcher$animations$TrashAnimation$TRASH_ANIMATION:[I

    sget-object v1, Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;->TRASH_FLOAT_UP:Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v0, Lcom/smartisanos/launcher/animations/TrashAnimation$5;->$SwitchMap$com$smartisanos$launcher$animations$TrashAnimation$TRASH_ANIMATION:[I

    sget-object v1, Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;->TRASH_REDUCE:Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;->ordinal()I

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
