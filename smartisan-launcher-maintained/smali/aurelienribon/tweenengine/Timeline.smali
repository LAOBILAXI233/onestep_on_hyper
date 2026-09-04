.class public final Laurelienribon/tweenengine/Timeline;
.super Laurelienribon/tweenengine/BaseTween;
.source "Timeline.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laurelienribon/tweenengine/Timeline$Modes;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Laurelienribon/tweenengine/BaseTween",
        "<",
        "Laurelienribon/tweenengine/Timeline;",
        ">;"
    }
.end annotation


.field static final synthetic $assertionsDisabled:Z

.field static final pool:Laurelienribon/tweenengine/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laurelienribon/tweenengine/Pool",
            "<",
            "Laurelienribon/tweenengine/Timeline;",
            ">;"
        }
    .end annotation
.end field

.field private static final poolCallback:Laurelienribon/tweenengine/Pool$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laurelienribon/tweenengine/Pool$Callback",
            "<",
            "Laurelienribon/tweenengine/Timeline;",
            ">;"
        }
    .end annotation
.end field


.field private final children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Laurelienribon/tweenengine/BaseTween",
            "<*>;>;"
        }
    .end annotation
.end field

.field private current:Laurelienribon/tweenengine/Timeline;

.field private isBuilt:Z

.field private mode:Laurelienribon/tweenengine/Timeline$Modes;

.field private parent:Laurelienribon/tweenengine/Timeline;


.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 46
    const-class v0, Laurelienribon/tweenengine/Timeline;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Laurelienribon/tweenengine/Timeline;->$assertionsDisabled:Z

    .line 51
    new-instance v0, Laurelienribon/tweenengine/Timeline$1;

    invoke-direct {v0}, Laurelienribon/tweenengine/Timeline$1;-><init>()V

    sput-object v0, Laurelienribon/tweenengine/Timeline;->poolCallback:Laurelienribon/tweenengine/Pool$Callback;

    .line 56
    new-instance v0, Laurelienribon/tweenengine/Timeline$2;

    const/16 v1, 0xa

    sget-object v2, Laurelienribon/tweenengine/Timeline;->poolCallback:Laurelienribon/tweenengine/Pool$Callback;

    invoke-direct {v0, v1, v2}, Laurelienribon/tweenengine/Timeline$2;-><init>(ILaurelienribon/tweenengine/Pool$Callback;)V

    sput-object v0, Laurelienribon/tweenengine/Timeline;->pool:Laurelienribon/tweenengine/Pool;

    return-void

    .line 46
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 115
    invoke-direct {p0}, Laurelienribon/tweenengine/BaseTween;-><init>()V

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Laurelienribon/tweenengine/Timeline;->children:Ljava/util/List;

    .line 116
    invoke-virtual {p0}, Laurelienribon/tweenengine/Timeline;->reset()V

    .line 117
    return-void
.end method

.method synthetic constructor <init>(Laurelienribon/tweenengine/Timeline$1;)V
    .locals 0
    .param p1, "x0"    # Laurelienribon/tweenengine/Timeline$1;

    .prologue
    .line 46
    invoke-direct {p0}, Laurelienribon/tweenengine/Timeline;-><init>()V

    return-void
.end method

.method public static createParallel()Laurelienribon/tweenengine/Timeline;
    .locals 2

    .prologue
    .line 94
    sget-object v1, Laurelienribon/tweenengine/Timeline;->pool:Laurelienribon/tweenengine/Pool;

    invoke-virtual {v1}, Laurelienribon/tweenengine/Pool;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Timeline;

    .line 95
    .local v0, "tl":Laurelienribon/tweenengine/Timeline;
    sget-object v1, Laurelienribon/tweenengine/Timeline$Modes;->PARALLEL:Laurelienribon/tweenengine/Timeline$Modes;

    invoke-direct {v0, v1}, Laurelienribon/tweenengine/Timeline;->setup(Laurelienribon/tweenengine/Timeline$Modes;)V

    .line 96
    return-object v0
.end method

.method public static createSequence()Laurelienribon/tweenengine/Timeline;
    .locals 2

    .prologue
    .line 84
    sget-object v1, Laurelienribon/tweenengine/Timeline;->pool:Laurelienribon/tweenengine/Pool;

    invoke-virtual {v1}, Laurelienribon/tweenengine/Pool;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Timeline;

    .line 85
    .local v0, "tl":Laurelienribon/tweenengine/Timeline;
    sget-object v1, Laurelienribon/tweenengine/Timeline$Modes;->SEQUENCE:Laurelienribon/tweenengine/Timeline$Modes;

    invoke-direct {v0, v1}, Laurelienribon/tweenengine/Timeline;->setup(Laurelienribon/tweenengine/Timeline$Modes;)V

    .line 86
    return-object v0
.end method

.method public static ensurePoolCapacity(I)V
    .locals 1
    .param p0, "minCapacity"    # I

    .prologue
    .line 72
    sget-object v0, Laurelienribon/tweenengine/Timeline;->pool:Laurelienribon/tweenengine/Pool;

    invoke-virtual {v0, p0}, Laurelienribon/tweenengine/Pool;->ensureCapacity(I)V

    .line 73
    return-void
.end method

.method public static getPoolSize()I
    .locals 1

    .prologue
    .line 65
    sget-object v0, Laurelienribon/tweenengine/Timeline;->pool:Laurelienribon/tweenengine/Pool;

    invoke-virtual {v0}, Laurelienribon/tweenengine/Pool;->size()I

    move-result v0

    return v0
.end method

.method private setup(Laurelienribon/tweenengine/Timeline$Modes;)V
    .locals 0
    .param p1, "mode"    # Laurelienribon/tweenengine/Timeline$Modes;

    .prologue
    .line 130
    iput-object p1, p0, Laurelienribon/tweenengine/Timeline;->mode:Laurelienribon/tweenengine/Timeline$Modes;

    .line 131
    iput-object p0, p0, Laurelienribon/tweenengine/Timeline;->current:Laurelienribon/tweenengine/Timeline;

    .line 132
    return-void
.end method


.method public beginParallel()Laurelienribon/tweenengine/Timeline;
    .locals 3

    .prologue
    .line 198
    iget-boolean v1, p0, Laurelienribon/tweenengine/Timeline;->isBuilt:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "You can\'t push anything to a timeline once it is started"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 199
    :cond_0
    sget-object v1, Laurelienribon/tweenengine/Timeline;->pool:Laurelienribon/tweenengine/Pool;

    invoke-virtual {v1}, Laurelienribon/tweenengine/Pool;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Timeline;

    .line 200
    .local v0, "tl":Laurelienribon/tweenengine/Timeline;
    iget-object v1, p0, Laurelienribon/tweenengine/Timeline;->current:Laurelienribon/tweenengine/Timeline;

    iput-object v1, v0, Laurelienribon/tweenengine/Timeline;->parent:Laurelienribon/tweenengine/Timeline;

    .line 201
    sget-object v1, Laurelienribon/tweenengine/Timeline$Modes;->PARALLEL:Laurelienribon/tweenengine/Timeline$Modes;

    iput-object v1, v0, Laurelienribon/tweenengine/Timeline;->mode:Laurelienribon/tweenengine/Timeline$Modes;

    .line 202
    iget-object v1, p0, Laurelienribon/tweenengine/Timeline;->current:Laurelienribon/tweenengine/Timeline;

    iget-object v1, v1, Laurelienribon/tweenengine/Timeline;->children:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    iput-object v0, p0, Laurelienribon/tweenengine/Timeline;->current:Laurelienribon/tweenengine/Timeline;

    .line 204
    return-object p0
.end method

.method public beginSequence()Laurelienribon/tweenengine/Timeline;
    .locals 3

    .prologue
    .line 182
    iget-boolean v1, p0, Laurelienribon/tweenengine/Timeline;->isBuilt:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "You can\'t push anything to a timeline once it is started"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 183
    :cond_0
    sget-object v1, Laurelienribon/tweenengine/Timeline;->pool:Laurelienribon/tweenengine/Pool;

    invoke-virtual {v1}, Laurelienribon/tweenengine/Pool;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Timeline;

    .line 184
    .local v0, "tl":Laurelienribon/tweenengine/Timeline;
    iget-object v1, p0, Laurelienribon/tweenengine/Timeline;->current:Laurelienribon/tweenengine/Timeline;

    iput-object v1, v0, Laurelienribon/tweenengine/Timeline;->parent:Laurelienribon/tweenengine/Timeline;

    .line 185
    sget-object v1, Laurelienribon/tweenengine/Timeline$Modes;->SEQUENCE:Laurelienribon/tweenengine/Timeline$Modes;

    iput-object v1, v0, Laurelienribon/tweenengine/Timeline;->mode:Laurelienribon/tweenengine/Timeline$Modes;

    .line 186
    iget-object v1, p0, Laurelienribon/tweenengine/Timeline;->current:Laurelienribon/tweenengine/Timeline;

    iget-object v1, v1, Laurelienribon/tweenengine/Timeline;->children:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    iput-object v0, p0, Laurelienribon/tweenengine/Timeline;->current:Laurelienribon/tweenengine/Timeline;

    .line 188
    return-object p0
.end method

.method public build()Laurelienribon/tweenengine/Timeline;
    .locals 5

    .prologue
    .line 234
    iget-boolean v3, p0, Laurelienribon/tweenengine/Timeline;->isBuilt:Z

    if-eqz v3, :cond_0

    .line 258
    :goto_0
    return-object p0

    .line 236
    :cond_0
    const/4 v3, 0x0

    iput v3, p0, Laurelienribon/tweenengine/Timeline;->duration:F

    .line 238
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Laurelienribon/tweenengine/Timeline;->children:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 239
    iget-object v3, p0, Laurelienribon/tweenengine/Timeline;->children:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laurelienribon/tweenengine/BaseTween;

    .line 241
    .local v1, "obj":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<*>;"
    invoke-virtual {v1}, Laurelienribon/tweenengine/BaseTween;->getRepeatCount()I

    move-result v3

    if-gez v3, :cond_1

    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "You can\'t push an object with infinite repetitions in a timeline"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 242
    :cond_1
    invoke-virtual {v1}, Laurelienribon/tweenengine/BaseTween;->build()Ljava/lang/Object;

    .line 244
    sget-object v3, Laurelienribon/tweenengine/Timeline$3;->$SwitchMap$aurelienribon$tweenengine$Timeline$Modes:[I

    iget-object v4, p0, Laurelienribon/tweenengine/Timeline;->mode:Laurelienribon/tweenengine/Timeline$Modes;

    invoke-virtual {v4}, Laurelienribon/tweenengine/Timeline$Modes;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 238
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 246
    :pswitch_0
    iget v2, p0, Laurelienribon/tweenengine/Timeline;->duration:F

    .line 247
    .local v2, "tDelay":F
    iget v3, p0, Laurelienribon/tweenengine/Timeline;->duration:F

    invoke-virtual {v1}, Laurelienribon/tweenengine/BaseTween;->getFullDuration()F

    move-result v4

    add-float/2addr v3, v4

    iput v3, p0, Laurelienribon/tweenengine/Timeline;->duration:F

    .line 248
    iget v3, v1, Laurelienribon/tweenengine/BaseTween;->delay:F

    add-float/2addr v3, v2

    iput v3, v1, Laurelienribon/tweenengine/BaseTween;->delay:F

    goto :goto_2

    .line 252
    .end local v2    # "tDelay":F
    :pswitch_1
    iget v3, p0, Laurelienribon/tweenengine/Timeline;->duration:F

    invoke-virtual {v1}, Laurelienribon/tweenengine/BaseTween;->getFullDuration()F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, p0, Laurelienribon/tweenengine/Timeline;->duration:F

    goto :goto_2

    .line 257
    .end local v1    # "obj":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<*>;"
    :cond_2
    const/4 v3, 0x1

    iput-boolean v3, p0, Laurelienribon/tweenengine/Timeline;->isBuilt:Z

    goto :goto_0

    .line 244
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Laurelienribon/tweenengine/Timeline;->build()Laurelienribon/tweenengine/Timeline;

    move-result-object v0

    return-object v0
.end method

.method protected containsTarget(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "target"    # Ljava/lang/Object;

    .prologue
    .line 352
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v3, p0, Laurelienribon/tweenengine/Timeline;->children:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 353
    iget-object v3, p0, Laurelienribon/tweenengine/Timeline;->children:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laurelienribon/tweenengine/BaseTween;

    .line 354
    .local v2, "obj":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<*>;"
    invoke-virtual {v2, p1}, Laurelienribon/tweenengine/BaseTween;->containsTarget(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    .line 356
    .end local v2    # "obj":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<*>;"
    :goto_1
    return v3

    .line 352
    .restart local v2    # "obj":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<*>;"
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 356
    .end local v2    # "obj":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<*>;"
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method protected containsTarget(Ljava/lang/Object;I)Z
    .locals 4
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "tweenType"    # I

    .prologue
    .line 361
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v3, p0, Laurelienribon/tweenengine/Timeline;->children:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 362
    iget-object v3, p0, Laurelienribon/tweenengine/Timeline;->children:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laurelienribon/tweenengine/BaseTween;

    .line 363
    .local v2, "obj":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<*>;"
    invoke-virtual {v2, p1, p2}, Laurelienribon/tweenengine/BaseTween;->containsTarget(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    .line 365
    .end local v2    # "obj":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<*>;"
    :goto_1
    return v3

    .line 361
    .restart local v2    # "obj":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<*>;"
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 365
    .end local v2    # "obj":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<*>;"
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public end()Laurelienribon/tweenengine/Timeline;
    .locals 2

    .prologue
    .line 213
    iget-boolean v0, p0, Laurelienribon/tweenengine/Timeline;->isBuilt:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You can\'t push anything to a timeline once it is started"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_0
    iget-object v0, p0, Laurelienribon/tweenengine/Timeline;->current:Laurelienribon/tweenengine/Timeline;

    if-ne v0, p0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Nothing to end..."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_1
    iget-object v0, p0, Laurelienribon/tweenengine/Timeline;->current:Laurelienribon/tweenengine/Timeline;

    iget-object v0, v0, Laurelienribon/tweenengine/Timeline;->parent:Laurelienribon/tweenengine/Timeline;

    iput-object v0, p0, Laurelienribon/tweenengine/Timeline;->current:Laurelienribon/tweenengine/Timeline;

    .line 216
    return-object p0
.end method

.method protected forceEndValues()V
    .locals 4

    .prologue
    .line 344
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v3, p0, Laurelienribon/tweenengine/Timeline;->children:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 345
    iget-object v3, p0, Laurelienribon/tweenengine/Timeline;->children:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laurelienribon/tweenengine/BaseTween;

    .line 346
    .local v2, "obj":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<*>;"
    iget v3, p0, Laurelienribon/tweenengine/Timeline;->duration:F

    invoke-virtual {v2, v3}, Laurelienribon/tweenengine/BaseTween;->forceToEnd(F)V

    .line 344
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 348
    .end local v2    # "obj":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<*>;"
    :cond_0
    return-void
.end method

.method protected forceStartValues()V
    .locals 3

    .prologue
    .line 336
    iget-object v2, p0, Laurelienribon/tweenengine/Timeline;->children:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 337
    iget-object v2, p0, Laurelienribon/tweenengine/Timeline;->children:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laurelienribon/tweenengine/BaseTween;

    .line 338
    .local v1, "obj":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<*>;"
    invoke-virtual {v1}, Laurelienribon/tweenengine/BaseTween;->forceToStart()V

    .line 336
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 340
    .end local v1    # "obj":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<*>;"
    :cond_0
    return-void
.end method

.method public free()V
    .locals 3

    .prologue
    .line 275
    iget-object v2, p0, Laurelienribon/tweenengine/Timeline;->freeObserver:Laurelienribon/tweenengine/BaseTween$ObjectFreeObserver;

    if-eqz v2, :cond_0

    .line 276
    iget-object v2, p0, Laurelienribon/tweenengine/Timeline;->freeObserver:Laurelienribon/tweenengine/BaseTween$ObjectFreeObserver;

    invoke-interface {v2, p0}, Laurelienribon/tweenengine/BaseTween$ObjectFreeObserver;->objectFree(Ljava/lang/Object;)V

    .line 277
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Laurelienribon/tweenengine/Timeline;->setObjectFreeObserver(Laurelienribon/tweenengine/BaseTween$ObjectFreeObserver;)V

    .line 279
    :cond_0
    iget-object v2, p0, Laurelienribon/tweenengine/Timeline;->children:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 280
    iget-object v2, p0, Laurelienribon/tweenengine/Timeline;->children:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laurelienribon/tweenengine/BaseTween;

    .line 281
    .local v1, "obj":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<*>;"
    invoke-virtual {v1}, Laurelienribon/tweenengine/BaseTween;->free()V

    .line 279
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 284
    .end local v1    # "obj":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<*>;"
    :cond_1
    sget-object v2, Laurelienribon/tweenengine/Timeline;->pool:Laurelienribon/tweenengine/Pool;

    invoke-virtual {v2, p0}, Laurelienribon/tweenengine/Pool;->free(Ljava/lang/Object;)V

    .line 285
    return-void
.end method

.method public getChildren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Laurelienribon/tweenengine/BaseTween",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 224
    iget-boolean v0, p0, Laurelienribon/tweenengine/Timeline;->isBuilt:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Laurelienribon/tweenengine/Timeline;->current:Laurelienribon/tweenengine/Timeline;

    iget-object v0, v0, Laurelienribon/tweenengine/Timeline;->children:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 225
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Laurelienribon/tweenengine/Timeline;->current:Laurelienribon/tweenengine/Timeline;

    iget-object v0, v0, Laurelienribon/tweenengine/Timeline;->children:Ljava/util/List;

    goto :goto_0
.end method

.method public push(Laurelienribon/tweenengine/Timeline;)Laurelienribon/tweenengine/Timeline;
    .locals 2
    .param p1, "timeline"    # Laurelienribon/tweenengine/Timeline;

    .prologue
    .line 155
    iget-boolean v0, p0, Laurelienribon/tweenengine/Timeline;->isBuilt:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You can\'t push anything to a timeline once it is started"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_0
    iget-object v0, p1, Laurelienribon/tweenengine/Timeline;->current:Laurelienribon/tweenengine/Timeline;

    if-eq v0, p1, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You forgot to call a few \'end()\' statements in your pushed timeline"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_1
    iget-object v0, p0, Laurelienribon/tweenengine/Timeline;->current:Laurelienribon/tweenengine/Timeline;

    iput-object v0, p1, Laurelienribon/tweenengine/Timeline;->parent:Laurelienribon/tweenengine/Timeline;

    .line 158
    iget-object v0, p0, Laurelienribon/tweenengine/Timeline;->current:Laurelienribon/tweenengine/Timeline;

    iget-object v0, v0, Laurelienribon/tweenengine/Timeline;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    return-object p0
.end method

.method public push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;
    .locals 2
    .param p1, "tween"    # Laurelienribon/tweenengine/Tween;

    .prologue
    .line 144
    iget-boolean v0, p0, Laurelienribon/tweenengine/Timeline;->isBuilt:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You can\'t push anything to a timeline once it is started"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_0
    iget-object v0, p0, Laurelienribon/tweenengine/Timeline;->current:Laurelienribon/tweenengine/Timeline;

    iget-object v0, v0, Laurelienribon/tweenengine/Timeline;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    return-object p0
.end method

.method public pushPause(F)Laurelienribon/tweenengine/Timeline;
    .locals 2
    .param p1, "time"    # F

    .prologue
    .line 170
    iget-boolean v0, p0, Laurelienribon/tweenengine/Timeline;->isBuilt:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You can\'t push anything to a timeline once it is started"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_0
    iget-object v0, p0, Laurelienribon/tweenengine/Timeline;->current:Laurelienribon/tweenengine/Timeline;

    iget-object v0, v0, Laurelienribon/tweenengine/Timeline;->children:Ljava/util/List;

    invoke-static {}, Laurelienribon/tweenengine/Tween;->mark()Laurelienribon/tweenengine/Tween;

    move-result-object v1

    invoke-virtual {v1, p1}, Laurelienribon/tweenengine/Tween;->delay(F)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    return-object p0
.end method

.method protected reset()V
    .locals 1

    .prologue
    .line 121
    invoke-super {p0}, Laurelienribon/tweenengine/BaseTween;->reset()V

    .line 123
    iget-object v0, p0, Laurelienribon/tweenengine/Timeline;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Laurelienribon/tweenengine/Timeline;->parent:Laurelienribon/tweenengine/Timeline;

    iput-object v0, p0, Laurelienribon/tweenengine/Timeline;->current:Laurelienribon/tweenengine/Timeline;

    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Laurelienribon/tweenengine/Timeline;->isBuilt:Z

    .line 127
    return-void
.end method

.method public start()Laurelienribon/tweenengine/Timeline;
    .locals 3

    .prologue
    .line 263
    invoke-super {p0}, Laurelienribon/tweenengine/BaseTween;->start()Ljava/lang/Object;

    .line 265
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Laurelienribon/tweenengine/Timeline;->children:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 266
    iget-object v2, p0, Laurelienribon/tweenengine/Timeline;->children:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laurelienribon/tweenengine/BaseTween;

    .line 267
    .local v1, "obj":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<*>;"
    invoke-virtual {v1}, Laurelienribon/tweenengine/BaseTween;->start()Ljava/lang/Object;

    .line 265
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 270
    .end local v1    # "obj":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<*>;"
    :cond_0
    return-object p0
.end method

.method public bridge synthetic start()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Laurelienribon/tweenengine/Timeline;->start()Laurelienribon/tweenengine/Timeline;

    move-result-object v0

    return-object v0
.end method

.method protected updateOverride(IIZF)V
    .locals 6
    .param p1, "step"    # I
    .param p2, "lastStep"    # I
    .param p3, "isIterationStep"    # Z
    .param p4, "delta"    # F

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 289
    if-nez p3, :cond_2

    if-le p1, p2, :cond_2

    .line 290
    sget-boolean v3, Laurelienribon/tweenengine/Timeline;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    cmpl-float v3, p4, v5

    if-gez v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 291
    :cond_0
    invoke-virtual {p0, p2}, Laurelienribon/tweenengine/Timeline;->isReverse(I)Z

    move-result v3

    if-eqz v3, :cond_1

    neg-float v3, p4

    sub-float v0, v3, v4

    .line 292
    .local v0, "dt":F
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v3, p0, Laurelienribon/tweenengine/Timeline;->children:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "n":I
    :goto_1
    if-ge v1, v2, :cond_d

    iget-object v3, p0, Laurelienribon/tweenengine/Timeline;->children:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laurelienribon/tweenengine/BaseTween;

    invoke-virtual {v3, v0}, Laurelienribon/tweenengine/BaseTween;->update(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 291
    .end local v0    # "dt":F
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_1
    add-float v0, p4, v4

    goto :goto_0

    .line 296
    :cond_2
    if-nez p3, :cond_5

    if-ge p1, p2, :cond_5

    .line 297
    sget-boolean v3, Laurelienribon/tweenengine/Timeline;->$assertionsDisabled:Z

    if-nez v3, :cond_3

    cmpg-float v3, p4, v5

    if-lez v3, :cond_3

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 298
    :cond_3
    invoke-virtual {p0, p2}, Laurelienribon/tweenengine/Timeline;->isReverse(I)Z

    move-result v3

    if-eqz v3, :cond_4

    neg-float v3, p4

    sub-float v0, v3, v4

    .line 299
    .restart local v0    # "dt":F
    :goto_2
    iget-object v3, p0, Laurelienribon/tweenengine/Timeline;->children:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .restart local v1    # "i":I
    :goto_3
    if-ltz v1, :cond_d

    iget-object v3, p0, Laurelienribon/tweenengine/Timeline;->children:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laurelienribon/tweenengine/BaseTween;

    invoke-virtual {v3, v0}, Laurelienribon/tweenengine/BaseTween;->update(F)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 298
    .end local v0    # "dt":F
    .end local v1    # "i":I
    :cond_4
    add-float v0, p4, v4

    goto :goto_2

    .line 303
    :cond_5
    sget-boolean v3, Laurelienribon/tweenengine/Timeline;->$assertionsDisabled:Z

    if-nez v3, :cond_6

    if-nez p3, :cond_6

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 305
    :cond_6
    if-le p1, p2, :cond_8

    .line 306
    invoke-virtual {p0, p1}, Laurelienribon/tweenengine/Timeline;->isReverse(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 307
    invoke-virtual {p0}, Laurelienribon/tweenengine/Timeline;->forceEndValues()V

    .line 308
    const/4 v1, 0x0

    .restart local v1    # "i":I
    iget-object v3, p0, Laurelienribon/tweenengine/Timeline;->children:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .restart local v2    # "n":I
    :goto_4
    if-ge v1, v2, :cond_d

    iget-object v3, p0, Laurelienribon/tweenengine/Timeline;->children:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laurelienribon/tweenengine/BaseTween;

    invoke-virtual {v3, p4}, Laurelienribon/tweenengine/BaseTween;->update(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 310
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_7
    invoke-virtual {p0}, Laurelienribon/tweenengine/Timeline;->forceStartValues()V

    .line 311
    const/4 v1, 0x0

    .restart local v1    # "i":I
    iget-object v3, p0, Laurelienribon/tweenengine/Timeline;->children:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .restart local v2    # "n":I
    :goto_5
    if-ge v1, v2, :cond_d

    iget-object v3, p0, Laurelienribon/tweenengine/Timeline;->children:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laurelienribon/tweenengine/BaseTween;

    invoke-virtual {v3, p4}, Laurelienribon/tweenengine/BaseTween;->update(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 314
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_8
    if-ge p1, p2, :cond_a

    .line 315
    invoke-virtual {p0, p1}, Laurelienribon/tweenengine/Timeline;->isReverse(I)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 316
    invoke-virtual {p0}, Laurelienribon/tweenengine/Timeline;->forceStartValues()V

    .line 317
    iget-object v3, p0, Laurelienribon/tweenengine/Timeline;->children:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .restart local v1    # "i":I
    :goto_6
    if-ltz v1, :cond_d

    iget-object v3, p0, Laurelienribon/tweenengine/Timeline;->children:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laurelienribon/tweenengine/BaseTween;

    invoke-virtual {v3, p4}, Laurelienribon/tweenengine/BaseTween;->update(F)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    .line 319
    .end local v1    # "i":I
    :cond_9
    invoke-virtual {p0}, Laurelienribon/tweenengine/Timeline;->forceEndValues()V

    .line 320
    iget-object v3, p0, Laurelienribon/tweenengine/Timeline;->children:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .restart local v1    # "i":I
    :goto_7
    if-ltz v1, :cond_d

    iget-object v3, p0, Laurelienribon/tweenengine/Timeline;->children:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laurelienribon/tweenengine/BaseTween;

    invoke-virtual {v3, p4}, Laurelienribon/tweenengine/BaseTween;->update(F)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    .line 324
    .end local v1    # "i":I
    :cond_a
    invoke-virtual {p0, p1}, Laurelienribon/tweenengine/Timeline;->isReverse(I)Z

    move-result v3

    if-eqz v3, :cond_b

    neg-float v0, p4

    .line 325
    .restart local v0    # "dt":F
    :goto_8
    cmpl-float v3, p4, v5

    if-ltz v3, :cond_c

    const/4 v1, 0x0

    .restart local v1    # "i":I
    iget-object v3, p0, Laurelienribon/tweenengine/Timeline;->children:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .restart local v2    # "n":I
    :goto_9
    if-ge v1, v2, :cond_d

    iget-object v3, p0, Laurelienribon/tweenengine/Timeline;->children:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laurelienribon/tweenengine/BaseTween;

    invoke-virtual {v3, v0}, Laurelienribon/tweenengine/BaseTween;->update(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .end local v0    # "dt":F
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_b
    move v0, p4

    .line 324
    goto :goto_8

    .line 326
    .restart local v0    # "dt":F
    :cond_c
    iget-object v3, p0, Laurelienribon/tweenengine/Timeline;->children:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .restart local v1    # "i":I
    :goto_a
    if-ltz v1, :cond_d

    iget-object v3, p0, Laurelienribon/tweenengine/Timeline;->children:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laurelienribon/tweenengine/BaseTween;

    invoke-virtual {v3, v0}, Laurelienribon/tweenengine/BaseTween;->update(F)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    .line 328
    .end local v0    # "dt":F
    :cond_d
    return-void
.end method
