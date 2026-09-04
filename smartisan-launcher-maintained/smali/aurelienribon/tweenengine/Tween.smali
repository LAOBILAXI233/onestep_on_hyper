.class public final Laurelienribon/tweenengine/Tween;
.super Laurelienribon/tweenengine/BaseTween;
.source "Tween.java"


.annotation system Ldalvik/annotation/Signature;
    value = {
        "Laurelienribon/tweenengine/BaseTween",
        "<",
        "Laurelienribon/tweenengine/Tween;",
        ">;"
    }
.end annotation


.field static final synthetic $assertionsDisabled:Z

.field public static final INFINITY:I = -0x1

.field private static combinedAttrsLimit:I

.field private static final pool:Laurelienribon/tweenengine/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laurelienribon/tweenengine/Pool",
            "<",
            "Laurelienribon/tweenengine/Tween;",
            ">;"
        }
    .end annotation
.end field

.field private static final poolCallback:Laurelienribon/tweenengine/Pool$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laurelienribon/tweenengine/Pool$Callback",
            "<",
            "Laurelienribon/tweenengine/Tween;",
            ">;"
        }
    .end annotation
.end field

.field private static final registeredAccessors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Laurelienribon/tweenengine/TweenAccessor",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static waypointsLimit:I


.field private accessor:Laurelienribon/tweenengine/TweenAccessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laurelienribon/tweenengine/TweenAccessor",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private accessorBuffer:[F

.field private combinedAttrsCnt:I

.field private equation:Laurelienribon/tweenengine/TweenEquation;

.field private isFrom:Z

.field private isRelative:Z

.field private path:Laurelienribon/tweenengine/TweenPath;

.field private pathBuffer:[F

.field private final startValues:[F

.field private target:Ljava/lang/Object;

.field private targetClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final targetValues:[F

.field private type:I

.field private final waypoints:[F

.field private waypointsCnt:I


.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 80
    const-class v0, Laurelienribon/tweenengine/Tween;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Laurelienribon/tweenengine/Tween;->$assertionsDisabled:Z

    .line 91
    const/4 v0, 0x4

    sput v0, Laurelienribon/tweenengine/Tween;->combinedAttrsLimit:I

    .line 92
    sput v1, Laurelienribon/tweenengine/Tween;->waypointsLimit:I

    .line 121
    new-instance v0, Laurelienribon/tweenengine/Tween$1;

    invoke-direct {v0}, Laurelienribon/tweenengine/Tween$1;-><init>()V

    sput-object v0, Laurelienribon/tweenengine/Tween;->poolCallback:Laurelienribon/tweenengine/Pool$Callback;

    .line 126
    new-instance v0, Laurelienribon/tweenengine/Tween$2;

    const/16 v1, 0x14

    sget-object v2, Laurelienribon/tweenengine/Tween;->poolCallback:Laurelienribon/tweenengine/Pool$Callback;

    invoke-direct {v0, v1, v2}, Laurelienribon/tweenengine/Tween$2;-><init>(ILaurelienribon/tweenengine/Pool$Callback;)V

    sput-object v0, Laurelienribon/tweenengine/Tween;->pool:Laurelienribon/tweenengine/Pool;

    .line 149
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Laurelienribon/tweenengine/Tween;->registeredAccessors:Ljava/util/Map;

    return-void

    :cond_0
    move v0, v1

    .line 80
    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 367
    invoke-direct {p0}, Laurelienribon/tweenengine/BaseTween;-><init>()V

    .line 355
    sget v0, Laurelienribon/tweenengine/Tween;->combinedAttrsLimit:I

    new-array v0, v0, [F

    iput-object v0, p0, Laurelienribon/tweenengine/Tween;->startValues:[F

    .line 356
    sget v0, Laurelienribon/tweenengine/Tween;->combinedAttrsLimit:I

    new-array v0, v0, [F

    iput-object v0, p0, Laurelienribon/tweenengine/Tween;->targetValues:[F

    .line 357
    sget v0, Laurelienribon/tweenengine/Tween;->waypointsLimit:I

    sget v1, Laurelienribon/tweenengine/Tween;->combinedAttrsLimit:I

    mul-int/2addr v0, v1

    new-array v0, v0, [F

    iput-object v0, p0, Laurelienribon/tweenengine/Tween;->waypoints:[F

    .line 360
    sget v0, Laurelienribon/tweenengine/Tween;->combinedAttrsLimit:I

    new-array v0, v0, [F

    iput-object v0, p0, Laurelienribon/tweenengine/Tween;->accessorBuffer:[F

    .line 361
    sget v0, Laurelienribon/tweenengine/Tween;->waypointsLimit:I

    add-int/lit8 v0, v0, 0x2

    sget v1, Laurelienribon/tweenengine/Tween;->combinedAttrsLimit:I

    mul-int/2addr v0, v1

    new-array v0, v0, [F

    iput-object v0, p0, Laurelienribon/tweenengine/Tween;->pathBuffer:[F

    .line 368
    invoke-virtual {p0}, Laurelienribon/tweenengine/Tween;->reset()V

    .line 369
    return-void
.end method

.method synthetic constructor <init>(Laurelienribon/tweenengine/Tween$1;)V
    .locals 0
    .param p1, "x0"    # Laurelienribon/tweenengine/Tween$1;

    .prologue
    .line 80
    invoke-direct {p0}, Laurelienribon/tweenengine/Tween;-><init>()V

    return-void
.end method

.method public static call(Laurelienribon/tweenengine/TweenCallback;)Laurelienribon/tweenengine/Tween;
    .locals 4
    .param p0, "callback"    # Laurelienribon/tweenengine/TweenCallback;

    .prologue
    .line 314
    sget-object v1, Laurelienribon/tweenengine/Tween;->pool:Laurelienribon/tweenengine/Pool;

    invoke-virtual {v1}, Laurelienribon/tweenengine/Pool;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Tween;

    .line 315
    .local v0, "tween":Laurelienribon/tweenengine/Tween;
    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Laurelienribon/tweenengine/Tween;->setup(Ljava/lang/Object;IF)V

    .line 316
    invoke-virtual {v0, p0}, Laurelienribon/tweenengine/Tween;->setCallback(Laurelienribon/tweenengine/TweenCallback;)Ljava/lang/Object;

    .line 317
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Tween;->setCallbackTriggers(I)Ljava/lang/Object;

    .line 318
    return-object v0
.end method

.method public static ensurePoolCapacity(I)V
    .locals 1
    .param p0, "minCapacity"    # I

    .prologue
    .line 142
    sget-object v0, Laurelienribon/tweenengine/Tween;->pool:Laurelienribon/tweenengine/Pool;

    invoke-virtual {v0, p0}, Laurelienribon/tweenengine/Pool;->ensureCapacity(I)V

    .line 143
    return-void
.end method

.method private findTargetClass()Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 405
    sget-object v1, Laurelienribon/tweenengine/Tween;->registeredAccessors:Ljava/util/Map;

    iget-object v2, p0, Laurelienribon/tweenengine/Tween;->target:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Laurelienribon/tweenengine/Tween;->target:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 412
    :cond_0
    :goto_0
    return-object v0

    .line 406
    :cond_1
    iget-object v1, p0, Laurelienribon/tweenengine/Tween;->target:Ljava/lang/Object;

    instance-of v1, v1, Laurelienribon/tweenengine/TweenAccessor;

    if-eqz v1, :cond_2

    iget-object v1, p0, Laurelienribon/tweenengine/Tween;->target:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 408
    :cond_2
    iget-object v1, p0, Laurelienribon/tweenengine/Tween;->target:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 409
    .local v0, "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    if-eqz v0, :cond_0

    sget-object v1, Laurelienribon/tweenengine/Tween;->registeredAccessors:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 410
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_1
.end method

.method public static from(Ljava/lang/Object;IF)Laurelienribon/tweenengine/Tween;
    .locals 2
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "tweenType"    # I
    .param p2, "duration"    # F

    .prologue
    .line 247
    sget-object v1, Laurelienribon/tweenengine/Tween;->pool:Laurelienribon/tweenengine/Pool;

    invoke-virtual {v1}, Laurelienribon/tweenengine/Pool;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Tween;

    .line 248
    .local v0, "tween":Laurelienribon/tweenengine/Tween;
    invoke-direct {v0, p0, p1, p2}, Laurelienribon/tweenengine/Tween;->setup(Ljava/lang/Object;IF)V

    .line 249
    sget-object v1, Laurelienribon/tweenengine/equations/Quad;->INOUT:Laurelienribon/tweenengine/equations/Quad;

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Tween;->ease(Laurelienribon/tweenengine/TweenEquation;)Laurelienribon/tweenengine/Tween;

    .line 250
    sget-object v1, Laurelienribon/tweenengine/TweenPaths;->catmullRom:Laurelienribon/tweenengine/paths/CatmullRom;

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Tween;->path(Laurelienribon/tweenengine/TweenPath;)Laurelienribon/tweenengine/Tween;

    .line 251
    const/4 v1, 0x1

    iput-boolean v1, v0, Laurelienribon/tweenengine/Tween;->isFrom:Z

    .line 252
    return-object v0
.end method

.method public static getPoolSize()I
    .locals 1

    .prologue
    .line 135
    sget-object v0, Laurelienribon/tweenengine/Tween;->pool:Laurelienribon/tweenengine/Pool;

    invoke-virtual {v0}, Laurelienribon/tweenengine/Pool;->size()I

    move-result v0

    return v0
.end method

.method public static getRegisteredAccessor(Ljava/lang/Class;)Laurelienribon/tweenengine/TweenAccessor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Laurelienribon/tweenengine/TweenAccessor",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 170
    .local p0, "someClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Laurelienribon/tweenengine/Tween;->registeredAccessors:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/TweenAccessor;

    return-object v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    const-string v0, "6.3.3"

    return-object v0
.end method

.method public static mark()Laurelienribon/tweenengine/Tween;
    .locals 4

    .prologue
    .line 331
    sget-object v1, Laurelienribon/tweenengine/Tween;->pool:Laurelienribon/tweenengine/Pool;

    invoke-virtual {v1}, Laurelienribon/tweenengine/Pool;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Tween;

    .line 332
    .local v0, "tween":Laurelienribon/tweenengine/Tween;
    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Laurelienribon/tweenengine/Tween;->setup(Ljava/lang/Object;IF)V

    .line 333
    return-object v0
.end method

.method public static registerAccessor(Ljava/lang/Class;Laurelienribon/tweenengine/TweenAccessor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Laurelienribon/tweenengine/TweenAccessor",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 161
    .local p0, "someClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "defaultAccessor":Laurelienribon/tweenengine/TweenAccessor;, "Laurelienribon/tweenengine/TweenAccessor<*>;"
    sget-object v0, Laurelienribon/tweenengine/Tween;->registeredAccessors:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    return-void
.end method

.method public static set(Ljava/lang/Object;I)Laurelienribon/tweenengine/Tween;
    .locals 2
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "tweenType"    # I

    .prologue
    .line 285
    sget-object v1, Laurelienribon/tweenengine/Tween;->pool:Laurelienribon/tweenengine/Pool;

    invoke-virtual {v1}, Laurelienribon/tweenengine/Pool;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Tween;

    .line 286
    .local v0, "tween":Laurelienribon/tweenengine/Tween;
    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Laurelienribon/tweenengine/Tween;->setup(Ljava/lang/Object;IF)V

    .line 287
    sget-object v1, Laurelienribon/tweenengine/equations/Quad;->INOUT:Laurelienribon/tweenengine/equations/Quad;

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Tween;->ease(Laurelienribon/tweenengine/TweenEquation;)Laurelienribon/tweenengine/Tween;

    .line 288
    return-object v0
.end method

.method public static setCombinedAttributesLimit(I)V
    .locals 0
    .param p0, "limit"    # I

    .prologue
    .line 99
    sput p0, Laurelienribon/tweenengine/Tween;->combinedAttrsLimit:I

    .line 100
    return-void
.end method

.method public static setWaypointsLimit(I)V
    .locals 0
    .param p0, "limit"    # I

    .prologue
    .line 107
    sput p0, Laurelienribon/tweenengine/Tween;->waypointsLimit:I

    .line 108
    return-void
.end method

.method private setup(Ljava/lang/Object;IF)V
    .locals 2
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "tweenType"    # I
    .param p3, "duration"    # F

    .prologue
    .line 396
    const/4 v0, 0x0

    cmpg-float v0, p3, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Duration can\'t be negative"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 398
    :cond_0
    iput-object p1, p0, Laurelienribon/tweenengine/Tween;->target:Ljava/lang/Object;

    .line 399
    if-eqz p1, :cond_1

    invoke-direct {p0}, Laurelienribon/tweenengine/Tween;->findTargetClass()Ljava/lang/Class;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Laurelienribon/tweenengine/Tween;->targetClass:Ljava/lang/Class;

    .line 400
    iput p2, p0, Laurelienribon/tweenengine/Tween;->type:I

    .line 401
    iput p3, p0, Laurelienribon/tweenengine/Tween;->duration:F

    .line 402
    return-void

    .line 399
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private throwCombinedAttrsLimitReached()V
    .locals 3

    .prologue
    .line 917
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You cannot combine more than "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Laurelienribon/tweenengine/Tween;->combinedAttrsLimit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "attributes in a tween. You can raise this limit with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Tween.setCombinedAttributesLimit(), which should be called once "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "in application initialization code."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 921
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private throwWaypointsLimitReached()V
    .locals 3

    .prologue
    .line 925
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You cannot add more than "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Laurelienribon/tweenengine/Tween;->waypointsLimit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "waypoints to a tween. You can raise this limit with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Tween.setWaypointsLimit(), which should be called once in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "application initialization code."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 929
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static to(Ljava/lang/Object;IF)Laurelienribon/tweenengine/Tween;
    .locals 2
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "tweenType"    # I
    .param p2, "duration"    # F

    .prologue
    .line 209
    sget-object v1, Laurelienribon/tweenengine/Tween;->pool:Laurelienribon/tweenengine/Pool;

    invoke-virtual {v1}, Laurelienribon/tweenengine/Pool;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Tween;

    .line 210
    .local v0, "tween":Laurelienribon/tweenengine/Tween;
    invoke-direct {v0, p0, p1, p2}, Laurelienribon/tweenengine/Tween;->setup(Ljava/lang/Object;IF)V

    .line 211
    sget-object v1, Laurelienribon/tweenengine/equations/Quad;->INOUT:Laurelienribon/tweenengine/equations/Quad;

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Tween;->ease(Laurelienribon/tweenengine/TweenEquation;)Laurelienribon/tweenengine/Tween;

    .line 212
    sget-object v1, Laurelienribon/tweenengine/TweenPaths;->catmullRom:Laurelienribon/tweenengine/paths/CatmullRom;

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Tween;->path(Laurelienribon/tweenengine/TweenPath;)Laurelienribon/tweenengine/Tween;

    .line 213
    return-object v0
.end method


.method public build()Laurelienribon/tweenengine/Tween;
    .locals 4

    .prologue
    .line 786
    iget-object v0, p0, Laurelienribon/tweenengine/Tween;->target:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 794
    :cond_0
    :goto_0
    return-object p0

    .line 788
    :cond_1
    sget-object v0, Laurelienribon/tweenengine/Tween;->registeredAccessors:Ljava/util/Map;

    iget-object v1, p0, Laurelienribon/tweenengine/Tween;->targetClass:Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/TweenAccessor;

    iput-object v0, p0, Laurelienribon/tweenengine/Tween;->accessor:Laurelienribon/tweenengine/TweenAccessor;

    .line 789
    iget-object v0, p0, Laurelienribon/tweenengine/Tween;->accessor:Laurelienribon/tweenengine/TweenAccessor;

    if-nez v0, :cond_2

    iget-object v0, p0, Laurelienribon/tweenengine/Tween;->target:Ljava/lang/Object;

    instance-of v0, v0, Laurelienribon/tweenengine/TweenAccessor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Laurelienribon/tweenengine/Tween;->target:Ljava/lang/Object;

    check-cast v0, Laurelienribon/tweenengine/TweenAccessor;

    iput-object v0, p0, Laurelienribon/tweenengine/Tween;->accessor:Laurelienribon/tweenengine/TweenAccessor;

    .line 790
    :cond_2
    iget-object v0, p0, Laurelienribon/tweenengine/Tween;->accessor:Laurelienribon/tweenengine/TweenAccessor;

    if-eqz v0, :cond_3

    iget-object v0, p0, Laurelienribon/tweenengine/Tween;->accessor:Laurelienribon/tweenengine/TweenAccessor;

    iget-object v1, p0, Laurelienribon/tweenengine/Tween;->target:Ljava/lang/Object;

    iget v2, p0, Laurelienribon/tweenengine/Tween;->type:I

    iget-object v3, p0, Laurelienribon/tweenengine/Tween;->accessorBuffer:[F

    invoke-interface {v0, v1, v2, v3}, Laurelienribon/tweenengine/TweenAccessor;->getValues(Ljava/lang/Object;I[F)I

    move-result v0

    iput v0, p0, Laurelienribon/tweenengine/Tween;->combinedAttrsCnt:I

    .line 793
    iget v0, p0, Laurelienribon/tweenengine/Tween;->combinedAttrsCnt:I

    sget v1, Laurelienribon/tweenengine/Tween;->combinedAttrsLimit:I

    if-le v0, v1, :cond_0

    invoke-direct {p0}, Laurelienribon/tweenengine/Tween;->throwCombinedAttrsLimitReached()V

    goto :goto_0

    .line 791
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No TweenAccessor was found for the target"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0}, Laurelienribon/tweenengine/Tween;->build()Laurelienribon/tweenengine/Tween;

    move-result-object v0

    return-object v0
.end method

.method public cast(Ljava/lang/Class;)Laurelienribon/tweenengine/Tween;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Laurelienribon/tweenengine/Tween;"
        }
    .end annotation

    .prologue
    .line 460
    .local p1, "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Laurelienribon/tweenengine/Tween;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You can\'t cast the target of a tween once it is started"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 461
    :cond_0
    iput-object p1, p0, Laurelienribon/tweenengine/Tween;->targetClass:Ljava/lang/Class;

    .line 462
    return-object p0
.end method

.method protected containsTarget(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "target"    # Ljava/lang/Object;

    .prologue
    .line 904
    iget-object v0, p0, Laurelienribon/tweenengine/Tween;->target:Ljava/lang/Object;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected containsTarget(Ljava/lang/Object;I)Z
    .locals 1
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "tweenType"    # I

    .prologue
    .line 909
    iget-object v0, p0, Laurelienribon/tweenengine/Tween;->target:Ljava/lang/Object;

    if-ne v0, p1, :cond_0

    iget v0, p0, Laurelienribon/tweenengine/Tween;->type:I

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ease(Laurelienribon/tweenengine/TweenEquation;)Laurelienribon/tweenengine/Tween;
    .locals 0
    .param p1, "easeEquation"    # Laurelienribon/tweenengine/TweenEquation;

    .prologue
    .line 447
    iput-object p1, p0, Laurelienribon/tweenengine/Tween;->equation:Laurelienribon/tweenengine/TweenEquation;

    .line 448
    return-object p0
.end method

.method protected forceEndValues()V
    .locals 4

    .prologue
    .line 898
    iget-object v0, p0, Laurelienribon/tweenengine/Tween;->target:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 900
    :goto_0
    return-void

    .line 899
    :cond_0
    iget-object v0, p0, Laurelienribon/tweenengine/Tween;->accessor:Laurelienribon/tweenengine/TweenAccessor;

    iget-object v1, p0, Laurelienribon/tweenengine/Tween;->target:Ljava/lang/Object;

    iget v2, p0, Laurelienribon/tweenengine/Tween;->type:I

    iget-object v3, p0, Laurelienribon/tweenengine/Tween;->targetValues:[F

    invoke-interface {v0, v1, v2, v3}, Laurelienribon/tweenengine/TweenAccessor;->setValues(Ljava/lang/Object;I[F)V

    goto :goto_0
.end method

.method protected forceStartValues()V
    .locals 4

    .prologue
    .line 892
    iget-object v0, p0, Laurelienribon/tweenengine/Tween;->target:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 894
    :goto_0
    return-void

    .line 893
    :cond_0
    iget-object v0, p0, Laurelienribon/tweenengine/Tween;->accessor:Laurelienribon/tweenengine/TweenAccessor;

    iget-object v1, p0, Laurelienribon/tweenengine/Tween;->target:Ljava/lang/Object;

    iget v2, p0, Laurelienribon/tweenengine/Tween;->type:I

    iget-object v3, p0, Laurelienribon/tweenengine/Tween;->startValues:[F

    invoke-interface {v0, v1, v2, v3}, Laurelienribon/tweenengine/TweenAccessor;->setValues(Ljava/lang/Object;I[F)V

    goto :goto_0
.end method

.method public free()V
    .locals 1

    .prologue
    .line 799
    iget-object v0, p0, Laurelienribon/tweenengine/Tween;->freeObserver:Laurelienribon/tweenengine/BaseTween$ObjectFreeObserver;

    if-eqz v0, :cond_0

    .line 800
    iget-object v0, p0, Laurelienribon/tweenengine/Tween;->freeObserver:Laurelienribon/tweenengine/BaseTween$ObjectFreeObserver;

    invoke-interface {v0, p0}, Laurelienribon/tweenengine/BaseTween$ObjectFreeObserver;->objectFree(Ljava/lang/Object;)V

    .line 801
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Laurelienribon/tweenengine/Tween;->setObjectFreeObserver(Laurelienribon/tweenengine/BaseTween$ObjectFreeObserver;)V

    .line 803
    :cond_0
    sget-object v0, Laurelienribon/tweenengine/Tween;->pool:Laurelienribon/tweenengine/Pool;

    invoke-virtual {v0, p0}, Laurelienribon/tweenengine/Pool;->free(Ljava/lang/Object;)V

    .line 804
    return-void
.end method

.method public getAccessor()Laurelienribon/tweenengine/TweenAccessor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Laurelienribon/tweenengine/TweenAccessor",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 770
    iget-object v0, p0, Laurelienribon/tweenengine/Tween;->accessor:Laurelienribon/tweenengine/TweenAccessor;

    return-object v0
.end method

.method public getCombinedAttributesCount()I
    .locals 1

    .prologue
    .line 763
    iget v0, p0, Laurelienribon/tweenengine/Tween;->combinedAttrsCnt:I

    return v0
.end method

.method public getEasing()Laurelienribon/tweenengine/TweenEquation;
    .locals 1

    .prologue
    .line 746
    iget-object v0, p0, Laurelienribon/tweenengine/Tween;->equation:Laurelienribon/tweenengine/TweenEquation;

    return-object v0
.end method

.method public getTarget()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 732
    iget-object v0, p0, Laurelienribon/tweenengine/Tween;->target:Ljava/lang/Object;

    return-object v0
.end method

.method public getTargetClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 777
    iget-object v0, p0, Laurelienribon/tweenengine/Tween;->targetClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getTargetValues()[F
    .locals 1

    .prologue
    .line 756
    iget-object v0, p0, Laurelienribon/tweenengine/Tween;->targetValues:[F

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 739
    iget v0, p0, Laurelienribon/tweenengine/Tween;->type:I

    return v0
.end method

.method protected initializeOverride()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 808
    iget-object v3, p0, Laurelienribon/tweenengine/Tween;->target:Ljava/lang/Object;

    if-nez v3, :cond_1

    .line 825
    :cond_0
    return-void

    .line 810
    :cond_1
    iget-object v3, p0, Laurelienribon/tweenengine/Tween;->accessor:Laurelienribon/tweenengine/TweenAccessor;

    iget-object v5, p0, Laurelienribon/tweenengine/Tween;->target:Ljava/lang/Object;

    iget v6, p0, Laurelienribon/tweenengine/Tween;->type:I

    iget-object v7, p0, Laurelienribon/tweenengine/Tween;->startValues:[F

    invoke-interface {v3, v5, v6, v7}, Laurelienribon/tweenengine/TweenAccessor;->getValues(Ljava/lang/Object;I[F)I

    .line 812
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Laurelienribon/tweenengine/Tween;->combinedAttrsCnt:I

    if-ge v0, v3, :cond_0

    .line 813
    iget-object v5, p0, Laurelienribon/tweenengine/Tween;->targetValues:[F

    aget v6, v5, v0

    iget-boolean v3, p0, Laurelienribon/tweenengine/Tween;->isRelative:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Laurelienribon/tweenengine/Tween;->startValues:[F

    aget v3, v3, v0

    :goto_1
    add-float/2addr v3, v6

    aput v3, v5, v0

    .line 815
    const/4 v1, 0x0

    .local v1, "ii":I
    :goto_2
    iget v3, p0, Laurelienribon/tweenengine/Tween;->waypointsCnt:I

    if-ge v1, v3, :cond_4

    .line 816
    iget-object v5, p0, Laurelienribon/tweenengine/Tween;->waypoints:[F

    iget v3, p0, Laurelienribon/tweenengine/Tween;->combinedAttrsCnt:I

    mul-int/2addr v3, v1

    add-int v6, v3, v0

    aget v7, v5, v6

    iget-boolean v3, p0, Laurelienribon/tweenengine/Tween;->isRelative:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Laurelienribon/tweenengine/Tween;->startValues:[F

    aget v3, v3, v0

    :goto_3
    add-float/2addr v3, v7

    aput v3, v5, v6

    .line 815
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v1    # "ii":I
    :cond_2
    move v3, v4

    .line 813
    goto :goto_1

    .restart local v1    # "ii":I
    :cond_3
    move v3, v4

    .line 816
    goto :goto_3

    .line 819
    :cond_4
    iget-boolean v3, p0, Laurelienribon/tweenengine/Tween;->isFrom:Z

    if-eqz v3, :cond_5

    .line 820
    iget-object v3, p0, Laurelienribon/tweenengine/Tween;->startValues:[F

    aget v2, v3, v0

    .line 821
    .local v2, "tmp":F
    iget-object v3, p0, Laurelienribon/tweenengine/Tween;->startValues:[F

    iget-object v5, p0, Laurelienribon/tweenengine/Tween;->targetValues:[F

    aget v5, v5, v0

    aput v5, v3, v0

    .line 822
    iget-object v3, p0, Laurelienribon/tweenengine/Tween;->targetValues:[F

    aput v2, v3, v0

    .line 812
    .end local v2    # "tmp":F
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public path(Laurelienribon/tweenengine/TweenPath;)Laurelienribon/tweenengine/Tween;
    .locals 0
    .param p1, "path"    # Laurelienribon/tweenengine/TweenPath;

    .prologue
    .line 720
    iput-object p1, p0, Laurelienribon/tweenengine/Tween;->path:Laurelienribon/tweenengine/TweenPath;

    .line 721
    return-object p0
.end method

.method protected reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 373
    invoke-super {p0}, Laurelienribon/tweenengine/BaseTween;->reset()V

    .line 375
    iput-object v1, p0, Laurelienribon/tweenengine/Tween;->target:Ljava/lang/Object;

    .line 376
    iput-object v1, p0, Laurelienribon/tweenengine/Tween;->targetClass:Ljava/lang/Class;

    .line 377
    iput-object v1, p0, Laurelienribon/tweenengine/Tween;->accessor:Laurelienribon/tweenengine/TweenAccessor;

    .line 378
    const/4 v0, -0x1

    iput v0, p0, Laurelienribon/tweenengine/Tween;->type:I

    .line 379
    iput-object v1, p0, Laurelienribon/tweenengine/Tween;->equation:Laurelienribon/tweenengine/TweenEquation;

    .line 380
    iput-object v1, p0, Laurelienribon/tweenengine/Tween;->path:Laurelienribon/tweenengine/TweenPath;

    .line 381
    iput-object v1, p0, Laurelienribon/tweenengine/Tween;->freeObserver:Laurelienribon/tweenengine/BaseTween$ObjectFreeObserver;

    .line 383
    iput-boolean v2, p0, Laurelienribon/tweenengine/Tween;->isRelative:Z

    iput-boolean v2, p0, Laurelienribon/tweenengine/Tween;->isFrom:Z

    .line 384
    iput v2, p0, Laurelienribon/tweenengine/Tween;->waypointsCnt:I

    iput v2, p0, Laurelienribon/tweenengine/Tween;->combinedAttrsCnt:I

    .line 386
    iget-object v0, p0, Laurelienribon/tweenengine/Tween;->accessorBuffer:[F

    array-length v0, v0

    sget v1, Laurelienribon/tweenengine/Tween;->combinedAttrsLimit:I

    if-eq v0, v1, :cond_0

    .line 387
    sget v0, Laurelienribon/tweenengine/Tween;->combinedAttrsLimit:I

    new-array v0, v0, [F

    iput-object v0, p0, Laurelienribon/tweenengine/Tween;->accessorBuffer:[F

    .line 390
    :cond_0
    iget-object v0, p0, Laurelienribon/tweenengine/Tween;->pathBuffer:[F

    array-length v0, v0

    sget v1, Laurelienribon/tweenengine/Tween;->waypointsLimit:I

    add-int/lit8 v1, v1, 0x2

    sget v2, Laurelienribon/tweenengine/Tween;->combinedAttrsLimit:I

    mul-int/2addr v1, v2

    if-eq v0, v1, :cond_1

    .line 391
    sget v0, Laurelienribon/tweenengine/Tween;->waypointsLimit:I

    add-int/lit8 v0, v0, 0x2

    sget v1, Laurelienribon/tweenengine/Tween;->combinedAttrsLimit:I

    mul-int/2addr v0, v1

    new-array v0, v0, [F

    iput-object v0, p0, Laurelienribon/tweenengine/Tween;->pathBuffer:[F

    .line 393
    :cond_1
    return-void
.end method

.method public target(F)Laurelienribon/tweenengine/Tween;
    .locals 2
    .param p1, "targetValue"    # F

    .prologue
    .line 479
    iget-object v0, p0, Laurelienribon/tweenengine/Tween;->targetValues:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 480
    return-object p0
.end method

.method public target(FF)Laurelienribon/tweenengine/Tween;
    .locals 2
    .param p1, "targetValue1"    # F
    .param p2, "targetValue2"    # F

    .prologue
    .line 498
    iget-object v0, p0, Laurelienribon/tweenengine/Tween;->targetValues:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 499
    iget-object v0, p0, Laurelienribon/tweenengine/Tween;->targetValues:[F

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 500
    return-object p0
.end method

.method public target(FFF)Laurelienribon/tweenengine/Tween;
    .locals 2
    .param p1, "targetValue1"    # F
    .param p2, "targetValue2"    # F
    .param p3, "targetValue3"    # F

    .prologue
    .line 519
    iget-object v0, p0, Laurelienribon/tweenengine/Tween;->targetValues:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 520
    iget-object v0, p0, Laurelienribon/tweenengine/Tween;->targetValues:[F

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 521
    iget-object v0, p0, Laurelienribon/tweenengine/Tween;->targetValues:[F

    const/4 v1, 0x2

    aput p3, v0, v1

    .line 522
    return-object p0
.end method

.method public varargs target([F)Laurelienribon/tweenengine/Tween;
    .locals 3
    .param p1, "targetValues"    # [F

    .prologue
    const/4 v2, 0x0

    .line 539
    array-length v0, p1

    sget v1, Laurelienribon/tweenengine/Tween;->combinedAttrsLimit:I

    if-le v0, v1, :cond_0

    invoke-direct {p0}, Laurelienribon/tweenengine/Tween;->throwCombinedAttrsLimitReached()V

    .line 540
    :cond_0
    iget-object v0, p0, Laurelienribon/tweenengine/Tween;->targetValues:[F

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 541
    return-object p0
.end method

.method public targetRelative(F)Laurelienribon/tweenengine/Tween;
    .locals 3
    .param p1, "targetValue"    # F

    .prologue
    const/4 v2, 0x0

    .line 557
    const/4 v0, 0x1

    iput-boolean v0, p0, Laurelienribon/tweenengine/Tween;->isRelative:Z

    .line 558
    iget-object v0, p0, Laurelienribon/tweenengine/Tween;->targetValues:[F

    invoke-virtual {p0}, Laurelienribon/tweenengine/Tween;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Laurelienribon/tweenengine/Tween;->startValues:[F

    aget v1, v1, v2

    add-float/2addr p1, v1

    .end local p1    # "targetValue":F
    :cond_0
    aput p1, v0, v2

    .line 559
    return-object p0
.end method

.method public targetRelative(FF)Laurelienribon/tweenengine/Tween;
    .locals 4
    .param p1, "targetValue1"    # F
    .param p2, "targetValue2"    # F

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 576
    iput-boolean v2, p0, Laurelienribon/tweenengine/Tween;->isRelative:Z

    .line 577
    iget-object v0, p0, Laurelienribon/tweenengine/Tween;->targetValues:[F

    invoke-virtual {p0}, Laurelienribon/tweenengine/Tween;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Laurelienribon/tweenengine/Tween;->startValues:[F

    aget v1, v1, v3

    add-float/2addr p1, v1

    .end local p1    # "targetValue1":F
    :cond_0
    aput p1, v0, v3

    .line 578
    iget-object v0, p0, Laurelienribon/tweenengine/Tween;->targetValues:[F

    invoke-virtual {p0}, Laurelienribon/tweenengine/Tween;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Laurelienribon/tweenengine/Tween;->startValues:[F

    aget v1, v1, v2

    add-float/2addr p2, v1

    .end local p2    # "targetValue2":F
    :cond_1
    aput p2, v0, v2

    .line 579
    return-object p0
.end method

.method public targetRelative(FFF)Laurelienribon/tweenengine/Tween;
    .locals 5
    .param p1, "targetValue1"    # F
    .param p2, "targetValue2"    # F
    .param p3, "targetValue3"    # F

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 597
    iput-boolean v2, p0, Laurelienribon/tweenengine/Tween;->isRelative:Z

    .line 598
    iget-object v0, p0, Laurelienribon/tweenengine/Tween;->targetValues:[F

    invoke-virtual {p0}, Laurelienribon/tweenengine/Tween;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Laurelienribon/tweenengine/Tween;->startValues:[F

    aget v1, v1, v3

    add-float/2addr p1, v1

    .end local p1    # "targetValue1":F
    :cond_0
    aput p1, v0, v3

    .line 599
    iget-object v0, p0, Laurelienribon/tweenengine/Tween;->targetValues:[F

    invoke-virtual {p0}, Laurelienribon/tweenengine/Tween;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Laurelienribon/tweenengine/Tween;->startValues:[F

    aget v1, v1, v2

    add-float/2addr p2, v1

    .end local p2    # "targetValue2":F
    :cond_1
    aput p2, v0, v2

    .line 600
    iget-object v0, p0, Laurelienribon/tweenengine/Tween;->targetValues:[F

    invoke-virtual {p0}, Laurelienribon/tweenengine/Tween;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Laurelienribon/tweenengine/Tween;->startValues:[F

    aget v1, v1, v4

    add-float/2addr p3, v1

    .end local p3    # "targetValue3":F
    :cond_2
    aput p3, v0, v4

    .line 601
    return-object p0
.end method

.method public varargs targetRelative([F)Laurelienribon/tweenengine/Tween;
    .locals 4
    .param p1, "targetValues"    # [F

    .prologue
    .line 617
    array-length v1, p1

    sget v2, Laurelienribon/tweenengine/Tween;->combinedAttrsLimit:I

    if-le v1, v2, :cond_0

    invoke-direct {p0}, Laurelienribon/tweenengine/Tween;->throwCombinedAttrsLimitReached()V

    .line 618
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 619
    iget-object v2, p0, Laurelienribon/tweenengine/Tween;->targetValues:[F

    invoke-virtual {p0}, Laurelienribon/tweenengine/Tween;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_1

    aget v1, p1, v0

    iget-object v3, p0, Laurelienribon/tweenengine/Tween;->startValues:[F

    aget v3, v3, v0

    add-float/2addr v1, v3

    :goto_1
    aput v1, v2, v0

    .line 618
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 619
    :cond_1
    aget v1, p1, v0

    goto :goto_1

    .line 622
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Laurelienribon/tweenengine/Tween;->isRelative:Z

    .line 623
    return-object p0
.end method

.method protected updateOverride(IIZF)V
    .locals 8
    .param p1, "step"    # I
    .param p2, "lastStep"    # I
    .param p3, "isIterationStep"    # Z
    .param p4, "delta"    # F

    .prologue
    const v6, 0x2d2febff    # 1.0E-11f

    .line 829
    iget-object v4, p0, Laurelienribon/tweenengine/Tween;->target:Ljava/lang/Object;

    if-eqz v4, :cond_0

    iget-object v4, p0, Laurelienribon/tweenengine/Tween;->equation:Laurelienribon/tweenengine/TweenEquation;

    if-nez v4, :cond_1

    .line 884
    :cond_0
    :goto_0
    return-void

    .line 833
    :cond_1
    if-nez p3, :cond_3

    if-le p1, p2, :cond_3

    .line 834
    iget-object v5, p0, Laurelienribon/tweenengine/Tween;->accessor:Laurelienribon/tweenengine/TweenAccessor;

    iget-object v6, p0, Laurelienribon/tweenengine/Tween;->target:Ljava/lang/Object;

    iget v7, p0, Laurelienribon/tweenengine/Tween;->type:I

    invoke-virtual {p0, p2}, Laurelienribon/tweenengine/Tween;->isReverse(I)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Laurelienribon/tweenengine/Tween;->startValues:[F

    :goto_1
    invoke-interface {v5, v6, v7, v4}, Laurelienribon/tweenengine/TweenAccessor;->setValues(Ljava/lang/Object;I[F)V

    goto :goto_0

    :cond_2
    iget-object v4, p0, Laurelienribon/tweenengine/Tween;->targetValues:[F

    goto :goto_1

    .line 838
    :cond_3
    if-nez p3, :cond_5

    if-ge p1, p2, :cond_5

    .line 839
    iget-object v5, p0, Laurelienribon/tweenengine/Tween;->accessor:Laurelienribon/tweenengine/TweenAccessor;

    iget-object v6, p0, Laurelienribon/tweenengine/Tween;->target:Ljava/lang/Object;

    iget v7, p0, Laurelienribon/tweenengine/Tween;->type:I

    invoke-virtual {p0, p2}, Laurelienribon/tweenengine/Tween;->isReverse(I)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Laurelienribon/tweenengine/Tween;->targetValues:[F

    :goto_2
    invoke-interface {v5, v6, v7, v4}, Laurelienribon/tweenengine/TweenAccessor;->setValues(Ljava/lang/Object;I[F)V

    goto :goto_0

    :cond_4
    iget-object v4, p0, Laurelienribon/tweenengine/Tween;->startValues:[F

    goto :goto_2

    .line 845
    :cond_5
    sget-boolean v4, Laurelienribon/tweenengine/Tween;->$assertionsDisabled:Z

    if-nez v4, :cond_6

    if-nez p3, :cond_6

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 846
    :cond_6
    sget-boolean v4, Laurelienribon/tweenengine/Tween;->$assertionsDisabled:Z

    if-nez v4, :cond_7

    invoke-virtual {p0}, Laurelienribon/tweenengine/Tween;->getCurrentTime()F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-gez v4, :cond_7

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 847
    :cond_7
    sget-boolean v4, Laurelienribon/tweenengine/Tween;->$assertionsDisabled:Z

    if-nez v4, :cond_8

    invoke-virtual {p0}, Laurelienribon/tweenengine/Tween;->getCurrentTime()F

    move-result v4

    iget v5, p0, Laurelienribon/tweenengine/Tween;->duration:F

    cmpg-float v4, v4, v5

    if-lez v4, :cond_8

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 851
    :cond_8
    iget v4, p0, Laurelienribon/tweenengine/Tween;->duration:F

    cmpg-float v4, v4, v6

    if-gez v4, :cond_a

    const v4, -0x52d01401    # -1.0E-11f

    cmpl-float v4, p4, v4

    if-lez v4, :cond_a

    .line 852
    iget-object v5, p0, Laurelienribon/tweenengine/Tween;->accessor:Laurelienribon/tweenengine/TweenAccessor;

    iget-object v6, p0, Laurelienribon/tweenengine/Tween;->target:Ljava/lang/Object;

    iget v7, p0, Laurelienribon/tweenengine/Tween;->type:I

    invoke-virtual {p0, p1}, Laurelienribon/tweenengine/Tween;->isReverse(I)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Laurelienribon/tweenengine/Tween;->targetValues:[F

    :goto_3
    invoke-interface {v5, v6, v7, v4}, Laurelienribon/tweenengine/TweenAccessor;->setValues(Ljava/lang/Object;I[F)V

    goto/16 :goto_0

    :cond_9
    iget-object v4, p0, Laurelienribon/tweenengine/Tween;->startValues:[F

    goto :goto_3

    .line 856
    :cond_a
    iget v4, p0, Laurelienribon/tweenengine/Tween;->duration:F

    cmpg-float v4, v4, v6

    if-gez v4, :cond_c

    cmpg-float v4, p4, v6

    if-gez v4, :cond_c

    .line 857
    iget-object v5, p0, Laurelienribon/tweenengine/Tween;->accessor:Laurelienribon/tweenengine/TweenAccessor;

    iget-object v6, p0, Laurelienribon/tweenengine/Tween;->target:Ljava/lang/Object;

    iget v7, p0, Laurelienribon/tweenengine/Tween;->type:I

    invoke-virtual {p0, p1}, Laurelienribon/tweenengine/Tween;->isReverse(I)Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v4, p0, Laurelienribon/tweenengine/Tween;->startValues:[F

    :goto_4
    invoke-interface {v5, v6, v7, v4}, Laurelienribon/tweenengine/TweenAccessor;->setValues(Ljava/lang/Object;I[F)V

    goto/16 :goto_0

    :cond_b
    iget-object v4, p0, Laurelienribon/tweenengine/Tween;->targetValues:[F

    goto :goto_4

    .line 863
    :cond_c
    invoke-virtual {p0, p1}, Laurelienribon/tweenengine/Tween;->isReverse(I)Z

    move-result v4

    if-eqz v4, :cond_e

    iget v4, p0, Laurelienribon/tweenengine/Tween;->duration:F

    invoke-virtual {p0}, Laurelienribon/tweenengine/Tween;->getCurrentTime()F

    move-result v5

    sub-float v3, v4, v5

    .line 864
    .local v3, "time":F
    :goto_5
    iget-object v4, p0, Laurelienribon/tweenengine/Tween;->equation:Laurelienribon/tweenengine/TweenEquation;

    iget v5, p0, Laurelienribon/tweenengine/Tween;->duration:F

    div-float v5, v3, v5

    invoke-virtual {v4, v5}, Laurelienribon/tweenengine/TweenEquation;->compute(F)F

    move-result v2

    .line 866
    .local v2, "t":F
    iget v4, p0, Laurelienribon/tweenengine/Tween;->waypointsCnt:I

    if-eqz v4, :cond_d

    iget-object v4, p0, Laurelienribon/tweenengine/Tween;->path:Laurelienribon/tweenengine/TweenPath;

    if-nez v4, :cond_f

    .line 867
    :cond_d
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    iget v4, p0, Laurelienribon/tweenengine/Tween;->combinedAttrsCnt:I

    if-ge v0, v4, :cond_11

    .line 868
    iget-object v4, p0, Laurelienribon/tweenengine/Tween;->accessorBuffer:[F

    iget-object v5, p0, Laurelienribon/tweenengine/Tween;->startValues:[F

    aget v5, v5, v0

    iget-object v6, p0, Laurelienribon/tweenengine/Tween;->targetValues:[F

    aget v6, v6, v0

    iget-object v7, p0, Laurelienribon/tweenengine/Tween;->startValues:[F

    aget v7, v7, v0

    sub-float/2addr v6, v7

    mul-float/2addr v6, v2

    add-float/2addr v5, v6

    aput v5, v4, v0

    .line 867
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 863
    .end local v0    # "i":I
    .end local v2    # "t":F
    .end local v3    # "time":F
    :cond_e
    invoke-virtual {p0}, Laurelienribon/tweenengine/Tween;->getCurrentTime()F

    move-result v3

    goto :goto_5

    .line 872
    .restart local v2    # "t":F
    .restart local v3    # "time":F
    :cond_f
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_7
    iget v4, p0, Laurelienribon/tweenengine/Tween;->combinedAttrsCnt:I

    if-ge v0, v4, :cond_11

    .line 873
    iget-object v4, p0, Laurelienribon/tweenengine/Tween;->pathBuffer:[F

    const/4 v5, 0x0

    iget-object v6, p0, Laurelienribon/tweenengine/Tween;->startValues:[F

    aget v6, v6, v0

    aput v6, v4, v5

    .line 874
    iget-object v4, p0, Laurelienribon/tweenengine/Tween;->pathBuffer:[F

    iget v5, p0, Laurelienribon/tweenengine/Tween;->waypointsCnt:I

    add-int/lit8 v5, v5, 0x1

    iget-object v6, p0, Laurelienribon/tweenengine/Tween;->targetValues:[F

    aget v6, v6, v0

    aput v6, v4, v5

    .line 875
    const/4 v1, 0x0

    .local v1, "ii":I
    :goto_8
    iget v4, p0, Laurelienribon/tweenengine/Tween;->waypointsCnt:I

    if-ge v1, v4, :cond_10

    .line 876
    iget-object v4, p0, Laurelienribon/tweenengine/Tween;->pathBuffer:[F

    add-int/lit8 v5, v1, 0x1

    iget-object v6, p0, Laurelienribon/tweenengine/Tween;->waypoints:[F

    iget v7, p0, Laurelienribon/tweenengine/Tween;->combinedAttrsCnt:I

    mul-int/2addr v7, v1

    add-int/2addr v7, v0

    aget v6, v6, v7

    aput v6, v4, v5

    .line 875
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 879
    :cond_10
    iget-object v4, p0, Laurelienribon/tweenengine/Tween;->accessorBuffer:[F

    iget-object v5, p0, Laurelienribon/tweenengine/Tween;->path:Laurelienribon/tweenengine/TweenPath;

    iget-object v6, p0, Laurelienribon/tweenengine/Tween;->pathBuffer:[F

    iget v7, p0, Laurelienribon/tweenengine/Tween;->waypointsCnt:I

    add-int/lit8 v7, v7, 0x2

    invoke-interface {v5, v2, v6, v7}, Laurelienribon/tweenengine/TweenPath;->compute(F[FI)F

    move-result v5

    aput v5, v4, v0

    .line 872
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 883
    .end local v1    # "ii":I
    :cond_11
    iget-object v4, p0, Laurelienribon/tweenengine/Tween;->accessor:Laurelienribon/tweenengine/TweenAccessor;

    iget-object v5, p0, Laurelienribon/tweenengine/Tween;->target:Ljava/lang/Object;

    iget v6, p0, Laurelienribon/tweenengine/Tween;->type:I

    iget-object v7, p0, Laurelienribon/tweenengine/Tween;->accessorBuffer:[F

    invoke-interface {v4, v5, v6, v7}, Laurelienribon/tweenengine/TweenAccessor;->setValues(Ljava/lang/Object;I[F)V

    goto/16 :goto_0
.end method

.method public waypoint(F)Laurelienribon/tweenengine/Tween;
    .locals 2
    .param p1, "targetValue"    # F

    .prologue
    .line 637
    iget v0, p0, Laurelienribon/tweenengine/Tween;->waypointsCnt:I

    sget v1, Laurelienribon/tweenengine/Tween;->waypointsLimit:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Laurelienribon/tweenengine/Tween;->throwWaypointsLimitReached()V

    .line 638
    :cond_0
    iget-object v0, p0, Laurelienribon/tweenengine/Tween;->waypoints:[F

    iget v1, p0, Laurelienribon/tweenengine/Tween;->waypointsCnt:I

    aput p1, v0, v1

    .line 639
    iget v0, p0, Laurelienribon/tweenengine/Tween;->waypointsCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Laurelienribon/tweenengine/Tween;->waypointsCnt:I

    .line 640
    return-object p0
.end method

.method public waypoint(FF)Laurelienribon/tweenengine/Tween;
    .locals 2
    .param p1, "targetValue1"    # F
    .param p2, "targetValue2"    # F

    .prologue
    .line 658
    iget v0, p0, Laurelienribon/tweenengine/Tween;->waypointsCnt:I

    sget v1, Laurelienribon/tweenengine/Tween;->waypointsLimit:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Laurelienribon/tweenengine/Tween;->throwWaypointsLimitReached()V

    .line 659
    :cond_0
    iget-object v0, p0, Laurelienribon/tweenengine/Tween;->waypoints:[F

    iget v1, p0, Laurelienribon/tweenengine/Tween;->waypointsCnt:I

    mul-int/lit8 v1, v1, 0x2

    aput p1, v0, v1

    .line 660
    iget-object v0, p0, Laurelienribon/tweenengine/Tween;->waypoints:[F

    iget v1, p0, Laurelienribon/tweenengine/Tween;->waypointsCnt:I

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    aput p2, v0, v1

    .line 661
    iget v0, p0, Laurelienribon/tweenengine/Tween;->waypointsCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Laurelienribon/tweenengine/Tween;->waypointsCnt:I

    .line 662
    return-object p0
.end method

.method public waypoint(FFF)Laurelienribon/tweenengine/Tween;
    .locals 2
    .param p1, "targetValue1"    # F
    .param p2, "targetValue2"    # F
    .param p3, "targetValue3"    # F

    .prologue
    .line 681
    iget v0, p0, Laurelienribon/tweenengine/Tween;->waypointsCnt:I

    sget v1, Laurelienribon/tweenengine/Tween;->waypointsLimit:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Laurelienribon/tweenengine/Tween;->throwWaypointsLimitReached()V

    .line 682
    :cond_0
    iget-object v0, p0, Laurelienribon/tweenengine/Tween;->waypoints:[F

    iget v1, p0, Laurelienribon/tweenengine/Tween;->waypointsCnt:I

    mul-int/lit8 v1, v1, 0x3

    aput p1, v0, v1

    .line 683
    iget-object v0, p0, Laurelienribon/tweenengine/Tween;->waypoints:[F

    iget v1, p0, Laurelienribon/tweenengine/Tween;->waypointsCnt:I

    mul-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, 0x1

    aput p2, v0, v1

    .line 684
    iget-object v0, p0, Laurelienribon/tweenengine/Tween;->waypoints:[F

    iget v1, p0, Laurelienribon/tweenengine/Tween;->waypointsCnt:I

    mul-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, 0x2

    aput p3, v0, v1

    .line 685
    iget v0, p0, Laurelienribon/tweenengine/Tween;->waypointsCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Laurelienribon/tweenengine/Tween;->waypointsCnt:I

    .line 686
    return-object p0
.end method

.method public varargs waypoint([F)Laurelienribon/tweenengine/Tween;
    .locals 4
    .param p1, "targetValues"    # [F

    .prologue
    .line 703
    iget v0, p0, Laurelienribon/tweenengine/Tween;->waypointsCnt:I

    sget v1, Laurelienribon/tweenengine/Tween;->waypointsLimit:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Laurelienribon/tweenengine/Tween;->throwWaypointsLimitReached()V

    .line 704
    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Laurelienribon/tweenengine/Tween;->waypoints:[F

    iget v2, p0, Laurelienribon/tweenengine/Tween;->waypointsCnt:I

    array-length v3, p1

    mul-int/2addr v2, v3

    array-length v3, p1

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 705
    iget v0, p0, Laurelienribon/tweenengine/Tween;->waypointsCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Laurelienribon/tweenengine/Tween;->waypointsCnt:I

    .line 706
    return-object p0
.end method
