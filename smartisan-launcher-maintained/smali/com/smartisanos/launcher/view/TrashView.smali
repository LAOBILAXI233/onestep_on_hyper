.class public Lcom/smartisanos/launcher/view/TrashView;
.super Lcom/smartisanos/smengine/SceneNode;
.source "TrashView.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/launcher/view/TrashView$TrashViewCollisionListener;,
        Lcom/smartisanos/launcher/view/TrashView$STATUS;
    }
.end annotation


.field public static final APP_UNINSTALL_FROM_ADB:I = 0x2

.field public static final APP_UNINSTALL_FROM_TRASH:I = 0x1

.field private static final log:Lcom/smartisanos/launcher/LOG;


.field private animation:Lcom/smartisanos/launcher/animations/TrashAnimation;

.field private initFlag:Z

.field private mTrashCollisionListener:Lcom/smartisanos/launcher/view/TrashView$TrashViewCollisionListener;

.field private objectInTrashArea:Z

.field private relayoutByUninstallTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

.field private touchUpAndObjectInTrashArea:Z

.field private trashAlreadyAppear:Z

.field private trashAlreadyFloatUp:Z

.field private trashNode:Lcom/smartisanos/smengine/RectNode;

.field private trashShadowNode:Lcom/smartisanos/smengine/RectNode;

.field private uninstallAnimationTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

.field private waitingUninstallApp:Lcom/smartisanos/launcher/view/Cell;

.field private waitingUninstallApps:Lcom/smartisanos/launcher/view/MultiSelectNode;


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/smartisanos/launcher/view/TrashView;

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/view/TrashView;->log:Lcom/smartisanos/launcher/LOG;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/SceneNode;-><init>(Ljava/lang/String;)V

    .line 31
    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/TrashView;->objectInTrashArea:Z

    .line 32
    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/TrashView;->touchUpAndObjectInTrashArea:Z

    .line 33
    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/TrashView;->trashAlreadyFloatUp:Z

    .line 34
    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/TrashView;->trashAlreadyAppear:Z

    .line 35
    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/TrashView;->initFlag:Z

    .line 45
    new-instance v0, Lcom/smartisanos/launcher/view/TrashView$TrashViewCollisionListener;

    invoke-direct {v0, p0, v1}, Lcom/smartisanos/launcher/view/TrashView$TrashViewCollisionListener;-><init>(Lcom/smartisanos/launcher/view/TrashView;Lcom/smartisanos/launcher/view/TrashView$1;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/TrashView;->mTrashCollisionListener:Lcom/smartisanos/launcher/view/TrashView$TrashViewCollisionListener;

    .line 232
    iput-object v1, p0, Lcom/smartisanos/launcher/view/TrashView;->uninstallAnimationTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 233
    iput-object v1, p0, Lcom/smartisanos/launcher/view/TrashView;->relayoutByUninstallTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 67
    return-void
.end method

.method static synthetic access$100(Lcom/smartisanos/launcher/view/TrashView;)Lcom/smartisanos/launcher/view/Cell;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/TrashView;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TrashView;->waitingUninstallApp:Lcom/smartisanos/launcher/view/Cell;

    return-object v0
.end method

.method static synthetic access$102(Lcom/smartisanos/launcher/view/TrashView;Lcom/smartisanos/launcher/view/Cell;)Lcom/smartisanos/launcher/view/Cell;
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/TrashView;
    .param p1, "x1"    # Lcom/smartisanos/launcher/view/Cell;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/smartisanos/launcher/view/TrashView;->waitingUninstallApp:Lcom/smartisanos/launcher/view/Cell;

    return-object p1
.end method

.method static synthetic access$200(Lcom/smartisanos/launcher/view/TrashView;)Lcom/smartisanos/smengine/AnimationTimeLine;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/TrashView;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TrashView;->relayoutByUninstallTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    return-object v0
.end method

.method static synthetic access$202(Lcom/smartisanos/launcher/view/TrashView;Lcom/smartisanos/smengine/AnimationTimeLine;)Lcom/smartisanos/smengine/AnimationTimeLine;
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/TrashView;
    .param p1, "x1"    # Lcom/smartisanos/smengine/AnimationTimeLine;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/smartisanos/launcher/view/TrashView;->relayoutByUninstallTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    return-object p1
.end method

.method static synthetic access$300()Lcom/smartisanos/launcher/LOG;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/smartisanos/launcher/view/TrashView;->log:Lcom/smartisanos/launcher/LOG;

    return-object v0
.end method

.method static synthetic access$402(Lcom/smartisanos/launcher/view/TrashView;Lcom/smartisanos/smengine/AnimationTimeLine;)Lcom/smartisanos/smengine/AnimationTimeLine;
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/TrashView;
    .param p1, "x1"    # Lcom/smartisanos/smengine/AnimationTimeLine;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/smartisanos/launcher/view/TrashView;->uninstallAnimationTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    return-object p1
.end method


.method public applyTheme()V
    .locals 1

    .prologue
    .line 538
    const/4 v0, 0x1

    .line 539
    .local v0, "rq":I
    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/TrashView;->setRenderQueue(I)V

    .line 540
    return-void
.end method

.method public enterTrash(Lcom/smartisanos/smengine/CollisionData;)I
    .locals 4
    .param p1, "collideData"    # Lcom/smartisanos/smengine/CollisionData;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 166
    iget-boolean v2, p0, Lcom/smartisanos/launcher/view/TrashView;->touchUpAndObjectInTrashArea:Z

    if-eqz v2, :cond_1

    .line 167
    sget-boolean v1, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/smartisanos/launcher/view/TrashView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v2, "DEBUG"

    const-string v3, "touchUpAndObjectInTrashArea true"

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    :cond_0
    :goto_0
    return v0

    .line 170
    :cond_1
    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/TrashView;->objectInTrashArea:Z

    .line 172
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/TrashView;->trashAlreadyFloatUp:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/smartisanos/launcher/view/TrashView;->animation:Lcom/smartisanos/launcher/animations/TrashAnimation;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/animations/TrashAnimation;->isAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move v0, v1

    .line 173
    goto :goto_0

    .line 175
    :cond_3
    sget-object v0, Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;->TRASH_FLOAT_UP:Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;

    const v2, 0x3e99999a    # 0.3f

    invoke-virtual {p0, v0, v2}, Lcom/smartisanos/launcher/view/TrashView;->handleAnimation(Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;F)V

    move v0, v1

    .line 176
    goto :goto_0
.end method

.method public exitTrash(Lcom/smartisanos/smengine/CollisionData;)I
    .locals 5
    .param p1, "collideData"    # Lcom/smartisanos/smengine/CollisionData;

    .prologue
    const/4 v2, 0x0

    .line 179
    iget-boolean v3, p0, Lcom/smartisanos/launcher/view/TrashView;->touchUpAndObjectInTrashArea:Z

    if-eqz v3, :cond_1

    .line 180
    const/4 v2, 0x1

    .line 192
    :cond_0
    :goto_0
    return v2

    .line 182
    :cond_1
    iput-boolean v2, p0, Lcom/smartisanos/launcher/view/TrashView;->objectInTrashArea:Z

    .line 184
    iget-boolean v3, p0, Lcom/smartisanos/launcher/view/TrashView;->trashAlreadyFloatUp:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/smartisanos/launcher/view/TrashView;->animation:Lcom/smartisanos/launcher/animations/TrashAnimation;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/animations/TrashAnimation;->isAnimationRunning()Z

    move-result v3

    if-nez v3, :cond_0

    .line 187
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 188
    .local v0, "params":Ljava/util/ArrayList;
    new-instance v1, Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-direct {v1}, Lcom/smartisanos/smengine/AnimationTimeLine;-><init>()V

    .line 189
    .local v1, "timeLine":Lcom/smartisanos/smengine/AnimationTimeLine;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    sget-object v3, Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;->TRASH_REDUCE:Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;

    const v4, 0x3e99999a    # 0.3f

    invoke-virtual {p0, v3, v4, v0}, Lcom/smartisanos/launcher/view/TrashView;->handleAnimation(Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;FLjava/util/ArrayList;)V

    .line 191
    invoke-virtual {v1}, Lcom/smartisanos/smengine/AnimationTimeLine;->start()V

    goto :goto_0
.end method

.method public forceFinishTrashAnim()V
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TrashView;->uninstallAnimationTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TrashView;->uninstallAnimationTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/AnimationTimeLine;->forceFinish()V

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TrashView;->relayoutByUninstallTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    if-eqz v0, :cond_1

    .line 244
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TrashView;->relayoutByUninstallTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/AnimationTimeLine;->forceFinish()V

    .line 246
    :cond_1
    return-void
.end method

.method public getAnimation()Lcom/smartisanos/launcher/animations/TrashAnimation;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TrashView;->animation:Lcom/smartisanos/launcher/animations/TrashAnimation;

    return-object v0
.end method

.method public getCollisionListener()Lcom/smartisanos/launcher/view/TrashView$TrashViewCollisionListener;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TrashView;->mTrashCollisionListener:Lcom/smartisanos/launcher/view/TrashView$TrashViewCollisionListener;

    return-object v0
.end method

.method public getStatus(Lcom/smartisanos/launcher/view/TrashView$STATUS;)Z
    .locals 2
    .param p1, "status"    # Lcom/smartisanos/launcher/view/TrashView$STATUS;

    .prologue
    .line 95
    sget-object v0, Lcom/smartisanos/launcher/view/TrashView$STATUS;->APPEAR:Lcom/smartisanos/launcher/view/TrashView$STATUS;

    if-ne p1, v0, :cond_0

    .line 96
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/TrashView;->trashAlreadyAppear:Z

    .line 102
    :goto_0
    return v0

    .line 97
    :cond_0
    sget-object v0, Lcom/smartisanos/launcher/view/TrashView$STATUS;->FLOAT_UP:Lcom/smartisanos/launcher/view/TrashView$STATUS;

    if-ne p1, v0, :cond_1

    .line 98
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/TrashView;->trashAlreadyFloatUp:Z

    goto :goto_0

    .line 99
    :cond_1
    sget-object v0, Lcom/smartisanos/launcher/view/TrashView$STATUS;->OBJECT_IN_TRASH:Lcom/smartisanos/launcher/view/TrashView$STATUS;

    if-ne p1, v0, :cond_2

    .line 100
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/TrashView;->objectInTrashArea:Z

    goto :goto_0

    .line 101
    :cond_2
    sget-object v0, Lcom/smartisanos/launcher/view/TrashView$STATUS;->TOUCH_UP_AND_OBJECT_IN_TRASH:Lcom/smartisanos/launcher/view/TrashView$STATUS;

    if-ne p1, v0, :cond_3

    .line 102
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/TrashView;->touchUpAndObjectInTrashArea:Z

    goto :goto_0

    .line 104
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown trash status !!!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getWaitingUninstallAppInfo()Lcom/smartisanos/launcher/view/Cell;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TrashView;->waitingUninstallApp:Lcom/smartisanos/launcher/view/Cell;

    return-object v0
.end method

.method public getWaitingUninstallApps()Lcom/smartisanos/launcher/view/MultiSelectNode;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TrashView;->waitingUninstallApps:Lcom/smartisanos/launcher/view/MultiSelectNode;

    return-object v0
.end method

.method public handleAnimation(Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;F)V
    .locals 1
    .param p1, "animType"    # Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;
    .param p2, "time"    # F

    .prologue
    .line 529
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/smartisanos/launcher/view/TrashView;->handleAnimation(Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;FLjava/util/ArrayList;)V

    .line 530
    return-void
.end method

.method public handleAnimation(Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;FLjava/util/ArrayList;)V
    .locals 1
    .param p1, "animType"    # Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;
    .param p2, "time"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;",
            "F",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 534
    .local p3, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TrashView;->animation:Lcom/smartisanos/launcher/animations/TrashAnimation;

    invoke-virtual {v0, p1, p2, p3}, Lcom/smartisanos/launcher/animations/TrashAnimation;->handleAnimation(Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;FLjava/util/ArrayList;)V

    .line 535
    return-void
.end method

.method public handleUninstallFinish(Ljava/lang/String;Ljava/util/List;Ljava/lang/Runnable;)V
    .locals 36
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p3, "finishCallback"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/launcher/data/ItemInfo;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 250
    .local p2, "removeItemList":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    const/4 v13, 0x0

    .line 251
    .local v13, "isIllegalArgs":Z
    if-eqz p2, :cond_0

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v31

    if-nez v31, :cond_1

    .line 252
    :cond_0
    sget-object v31, Lcom/smartisanos/launcher/view/TrashView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v32, "handleUninstallFinish nothing to do by removeItemList is empty !"

    invoke-virtual/range {v31 .. v32}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 253
    const/4 v13, 0x1

    .line 255
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v31

    if-nez v31, :cond_3

    .line 256
    :cond_2
    sget-object v31, Lcom/smartisanos/launcher/view/TrashView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v32, "handleUninstallFinish nothing to do by pkgName is empty !"

    invoke-virtual/range {v31 .. v32}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 257
    const/4 v13, 0x1

    .line 259
    :cond_3
    if-eqz v13, :cond_5

    .line 260
    if-eqz p3, :cond_4

    .line 261
    invoke-interface/range {p3 .. p3}, Ljava/lang/Runnable;->run()V

    .line 526
    :cond_4
    :goto_0
    return-void

    .line 266
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/TrashView;->uninstallAnimationTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    move-object/from16 v31, v0

    if-eqz v31, :cond_8

    .line 267
    sget-boolean v31, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v31, :cond_6

    sget-object v31, Lcom/smartisanos/launcher/view/TrashView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v32, "A140"

    const-string v33, "force finish uninstallAnimationTimeLine"

    invoke-virtual/range {v31 .. v33}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/TrashView;->uninstallAnimationTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/smartisanos/smengine/AnimationTimeLine;->forceFinish()V

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/TrashView;->relayoutByUninstallTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    move-object/from16 v31, v0

    if-eqz v31, :cond_8

    .line 270
    sget-boolean v31, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v31, :cond_7

    sget-object v31, Lcom/smartisanos/launcher/view/TrashView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v32, "A140"

    const-string v33, "force finish relayoutByUninstallTimeLine"

    invoke-virtual/range {v31 .. v33}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/TrashView;->relayoutByUninstallTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/smartisanos/smengine/AnimationTimeLine;->forceFinish()V

    .line 274
    :cond_8
    new-instance v31, Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-direct/range {v31 .. v31}, Lcom/smartisanos/smengine/AnimationTimeLine;-><init>()V

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/smartisanos/launcher/view/TrashView;->uninstallAnimationTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 275
    const-string v5, ""

    .line 276
    .local v5, "appOnTrashPackageName":Ljava/lang/String;
    const-string v4, ""

    .line 277
    .local v4, "appOnTrash":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/TrashView;->waitingUninstallApp:Lcom/smartisanos/launcher/view/Cell;

    move-object/from16 v31, v0

    if-eqz v31, :cond_9

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/TrashView;->waitingUninstallApp:Lcom/smartisanos/launcher/view/Cell;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/smartisanos/launcher/view/Cell;->getItemInfo()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/smartisanos/launcher/data/ItemInfo;->id()Ljava/lang/String;

    move-result-object v4

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/TrashView;->waitingUninstallApp:Lcom/smartisanos/launcher/view/Cell;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/smartisanos/launcher/view/Cell;->getItemInfo()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v31

    move-object/from16 v0, v31

    iget-object v5, v0, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    .line 280
    sget-boolean v31, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v31, :cond_9

    sget-object v31, Lcom/smartisanos/launcher/view/TrashView;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "trash is not empty, appOnTrashPackageName = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 283
    :cond_9
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_b

    const-string v31, ""

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_b

    .line 286
    sget-boolean v31, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v31, :cond_a

    sget-object v31, Lcom/smartisanos/launcher/view/TrashView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v32, "some app is on trash, need this app back to parent view ~"

    invoke-virtual/range {v31 .. v32}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 287
    :cond_a
    invoke-static {}, Lcom/smartisanos/launcher/actions/UninstallApp;->sendWaitingUninstallAppBackNoAnim()V

    .line 288
    const/16 v31, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/smartisanos/launcher/view/TrashView;->waitingUninstallApp:Lcom/smartisanos/launcher/view/Cell;

    .line 291
    :cond_b
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v31

    new-instance v32, Lcom/smartisanos/launcher/view/TrashView$1;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/smartisanos/launcher/view/TrashView$1;-><init>(Lcom/smartisanos/launcher/view/TrashView;)V

    invoke-virtual/range {v31 .. v32}, Lcom/smartisanos/home/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 300
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 301
    .local v17, "itemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v31

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-le v0, v1, :cond_d

    .line 302
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v31

    :cond_c
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_d

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 303
    .local v16, "item":Lcom/smartisanos/launcher/data/ItemInfo;
    invoke-virtual/range {v16 .. v16}, Lcom/smartisanos/launcher/data/ItemInfo;->id()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_c

    .line 304
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 311
    .end local v16    # "item":Lcom/smartisanos/launcher/data/ItemInfo;
    :cond_d
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v31

    if-lez v31, :cond_e

    .line 312
    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 315
    :cond_e
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v20

    .line 316
    .local v20, "mainView":Lcom/smartisanos/launcher/view/MainView;
    invoke-virtual/range {v20 .. v20}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v24

    .line 317
    .local v24, "pageView":Lcom/smartisanos/launcher/view/PageView;
    invoke-virtual/range {v20 .. v20}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v11

    .line 319
    .local v11, "dockView":Lcom/smartisanos/launcher/view/DockView;
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .line 320
    .local v28, "removedCells":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/view/Cell;>;"
    const/16 v22, 0x1

    .line 321
    .local v22, "needRemoveEmptyPage":Z
    const/16 v23, 0x0

    .line 322
    .local v23, "onTrashItem":Lcom/smartisanos/launcher/data/ItemInfo;
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v31

    :cond_f
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_11

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 323
    .restart local v16    # "item":Lcom/smartisanos/launcher/data/ItemInfo;
    invoke-virtual/range {v16 .. v16}, Lcom/smartisanos/launcher/data/ItemInfo;->id()Ljava/lang/String;

    move-result-object v29

    .line 324
    .local v29, "strId":Ljava/lang/String;
    sget-boolean v32, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v32, :cond_10

    sget-object v32, Lcom/smartisanos/launcher/view/TrashView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v33, "DEBUG"

    invoke-virtual/range {v16 .. v16}, Lcom/smartisanos/launcher/data/ItemInfo;->toSimpleInfo()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v32 .. v34}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    :cond_10
    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_f

    .line 326
    move-object/from16 v23, v16

    .line 327
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 328
    sget-boolean v31, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v31, :cond_11

    sget-object v31, Lcom/smartisanos/launcher/view/TrashView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v32, "DEBUG"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "remove item from waiting uninstall list "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v16 .. v16}, Lcom/smartisanos/launcher/data/ItemInfo;->toSimpleInfo()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v31 .. v33}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    .end local v16    # "item":Lcom/smartisanos/launcher/data/ItemInfo;
    .end local v29    # "strId":Ljava/lang/String;
    :cond_11
    if-eqz v23, :cond_14

    .line 334
    sget-boolean v31, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v31, :cond_12

    sget-object v31, Lcom/smartisanos/launcher/view/TrashView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v32, "######## uninstall by trash !"

    invoke-virtual/range {v31 .. v32}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 335
    :cond_12
    const/16 v26, 0x0

    .line 336
    .local v26, "parent":Lcom/smartisanos/launcher/view/Page;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/TrashView;->waitingUninstallApp:Lcom/smartisanos/launcher/view/Cell;

    move-object/from16 v31, v0

    if-eqz v31, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/TrashView;->waitingUninstallApp:Lcom/smartisanos/launcher/view/Cell;

    move-object/from16 v31, v0

    .line 337
    invoke-virtual/range {v31 .. v31}, Lcom/smartisanos/launcher/view/Cell;->getItemInfo()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/smartisanos/launcher/data/ItemInfo;->isDockItem()Z

    move-result v31

    if-nez v31, :cond_13

    .line 339
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/TrashView;->waitingUninstallApp:Lcom/smartisanos/launcher/view/Cell;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/smartisanos/launcher/view/Cell;->getPreParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v31

    move-object/from16 v0, v31

    check-cast v0, Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v26, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    :cond_13
    :goto_1
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 345
    .local v25, "params":Ljava/util/ArrayList;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/TrashView;->uninstallAnimationTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    move-object/from16 v31, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/smartisanos/launcher/view/DockView;->getLayStatus()I

    move-result v18

    .line 350
    .local v18, "layerStatus":I
    invoke-static {}, Lcom/smartisanos/launcher/view/LayerManager;->getInstance()Lcom/smartisanos/launcher/view/LayerManager;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/LayerManager;->getDockLayer(I)Lcom/smartisanos/launcher/view/LayerManager$DockLayer;

    move-result-object v10

    .line 351
    .local v10, "dockLayer":Lcom/smartisanos/launcher/view/LayerManager$DockLayer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/TrashView;->waitingUninstallApp:Lcom/smartisanos/launcher/view/Cell;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/smartisanos/launcher/view/Cell;->getForegroundRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v31

    iget v0, v10, Lcom/smartisanos/launcher/view/LayerManager$DockLayer;->TRASH_SHADOW_LAYER:I

    move/from16 v32, v0

    add-int/lit8 v32, v32, 0x1

    invoke-virtual/range {v31 .. v32}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/TrashView;->waitingUninstallApp:Lcom/smartisanos/launcher/view/Cell;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/smartisanos/launcher/view/Cell;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v19

    .line 353
    .local v19, "loc":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/TrashView;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v30

    .line 354
    .local v30, "trashViewLoc":Lcom/smartisanos/smengine/math/Vector3f;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/TrashView;->waitingUninstallApp:Lcom/smartisanos/launcher/view/Cell;

    move-object/from16 v31, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v32, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v33, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    move/from16 v34, v0

    invoke-virtual/range {v31 .. v34}, Lcom/smartisanos/launcher/view/Cell;->setTranslate(FFF)V

    .line 355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/TrashView;->waitingUninstallApp:Lcom/smartisanos/launcher/view/Cell;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/smartisanos/launcher/view/Cell;->updateGeometricState()V

    .line 357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/TrashView;->waitingUninstallApp:Lcom/smartisanos/launcher/view/Cell;

    move-object/from16 v31, v0

    sget-object v32, Lcom/smartisanos/launcher/animations/CellAnimation$CELL_ANIMATION;->FALL_INTO_TRASH:Lcom/smartisanos/launcher/animations/CellAnimation$CELL_ANIMATION;

    const v33, 0x3e99999a    # 0.3f

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move/from16 v2, v33

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/smartisanos/launcher/view/Cell;->handleAnimation(Lcom/smartisanos/launcher/animations/CellAnimation$CELL_ANIMATION;FLjava/util/ArrayList;)V

    .line 358
    if-eqz v26, :cond_14

    invoke-virtual/range {v26 .. v26}, Lcom/smartisanos/launcher/view/Page;->isEmpty()Z

    move-result v31

    if-eqz v31, :cond_14

    .line 359
    invoke-virtual/range {v26 .. v26}, Lcom/smartisanos/launcher/view/Page;->setTitleEmpty()V

    .line 363
    .end local v10    # "dockLayer":Lcom/smartisanos/launcher/view/LayerManager$DockLayer;
    .end local v18    # "layerStatus":I
    .end local v19    # "loc":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v25    # "params":Ljava/util/ArrayList;
    .end local v26    # "parent":Lcom/smartisanos/launcher/view/Page;
    .end local v30    # "trashViewLoc":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_14
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 364
    .local v8, "cellsOnPage":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/view/Cell;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 366
    .local v7, "cellsOnDock":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/view/Cell;>;"
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v31

    :cond_15
    :goto_2
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_18

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 367
    .restart local v16    # "item":Lcom/smartisanos/launcher/data/ItemInfo;
    move-object/from16 v0, v16

    iget-wide v14, v0, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    .line 368
    .local v14, "id":J
    const-wide/16 v32, 0x0

    cmp-long v32, v14, v32

    if-ltz v32, :cond_15

    .line 369
    move-object/from16 v0, v24

    invoke-virtual {v0, v14, v15}, Lcom/smartisanos/launcher/view/PageView;->getPageCellById(J)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v6

    .line 370
    .local v6, "cell":Lcom/smartisanos/launcher/view/Cell;
    if-eqz v6, :cond_16

    .line 371
    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 340
    .end local v6    # "cell":Lcom/smartisanos/launcher/view/Cell;
    .end local v7    # "cellsOnDock":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/view/Cell;>;"
    .end local v8    # "cellsOnPage":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/view/Cell;>;"
    .end local v14    # "id":J
    .end local v16    # "item":Lcom/smartisanos/launcher/data/ItemInfo;
    .restart local v26    # "parent":Lcom/smartisanos/launcher/view/Page;
    :catch_0
    move-exception v12

    .line 341
    .local v12, "e":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 373
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v26    # "parent":Lcom/smartisanos/launcher/view/Page;
    .restart local v6    # "cell":Lcom/smartisanos/launcher/view/Cell;
    .restart local v7    # "cellsOnDock":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/view/Cell;>;"
    .restart local v8    # "cellsOnPage":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/view/Cell;>;"
    .restart local v14    # "id":J
    .restart local v16    # "item":Lcom/smartisanos/launcher/data/ItemInfo;
    :cond_16
    invoke-virtual {v11, v14, v15}, Lcom/smartisanos/launcher/view/DockView;->getDockCellById(J)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v6

    .line 374
    if-eqz v6, :cond_17

    .line 375
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 377
    :cond_17
    sget-boolean v32, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v32, :cond_15

    sget-object v32, Lcom/smartisanos/launcher/view/TrashView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v33, "DEBUG"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "onRemoveItems can\'t find page cell by id ["

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "], package name ["

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "]"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v32 .. v34}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 383
    .end local v6    # "cell":Lcom/smartisanos/launcher/view/Cell;
    .end local v14    # "id":J
    .end local v16    # "item":Lcom/smartisanos/launcher/data/ItemInfo;
    :cond_18
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v31

    if-lez v31, :cond_19

    .line 384
    new-instance v21, Lcom/smartisanos/smengine/Notification;

    invoke-direct/range {v21 .. v21}, Lcom/smartisanos/smengine/Notification;-><init>()V

    .line 385
    .local v21, "n":Lcom/smartisanos/smengine/Notification;
    new-instance v31, Ljava/lang/Integer;

    const/16 v32, 0x2

    invoke-direct/range {v31 .. v32}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/Notification;->addData(Ljava/lang/Object;)V

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/TrashView;->uninstallAnimationTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    move-object/from16 v31, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/Notification;->addData(Ljava/lang/Object;)V

    .line 387
    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Lcom/smartisanos/smengine/Notification;->addData(Ljava/lang/Object;)V

    .line 388
    new-instance v31, Ljava/lang/Integer;

    const/16 v32, 0x2

    invoke-direct/range {v31 .. v32}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/Notification;->addData(Ljava/lang/Object;)V

    .line 390
    invoke-virtual/range {v24 .. v24}, Lcom/smartisanos/launcher/view/PageView;->getNotificationManager()Lcom/smartisanos/smengine/NotificationManager;

    move-result-object v31

    const-string v32, "relayoutByUninstall"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/smengine/NotificationManager;->postNotification(Ljava/lang/String;Lcom/smartisanos/smengine/Notification;)V

    .line 393
    .end local v21    # "n":Lcom/smartisanos/smengine/Notification;
    :cond_19
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v31

    :goto_3
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_1e

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/smartisanos/launcher/view/Cell;

    .line 394
    .restart local v6    # "cell":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/Cell;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v9

    check-cast v9, Lcom/smartisanos/launcher/view/Page;

    .line 395
    .local v9, "currentPage":Lcom/smartisanos/launcher/view/Page;
    const/16 v22, 0x0

    .line 396
    if-eqz v9, :cond_1d

    .line 397
    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/Page;->isEmpty()Z

    move-result v32

    if-eqz v32, :cond_1a

    .line 398
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v32

    const/16 v33, 0x20

    invoke-virtual/range {v32 .. v33}, Lcom/smartisanos/launcher/StatusManager;->getLauncherStatus(I)Z

    move-result v32

    if-nez v32, :cond_1b

    .line 399
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v32

    const/16 v33, 0x10

    invoke-virtual/range {v32 .. v33}, Lcom/smartisanos/launcher/StatusManager;->getLauncherStatus(I)Z

    move-result v32

    if-nez v32, :cond_1b

    .line 400
    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    move/from16 v0, v32

    move/from16 v1, v33

    move/from16 v2, v34

    move/from16 v3, v35

    invoke-virtual {v9, v0, v1, v2, v3}, Lcom/smartisanos/launcher/view/Page;->setPageStatus(IZZZ)V

    .line 401
    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/Page;->setTitleEmpty()V

    .line 414
    :cond_1a
    :goto_4
    move-object/from16 v0, v28

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 403
    :cond_1b
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v32

    const/16 v33, 0x20

    invoke-virtual/range {v32 .. v33}, Lcom/smartisanos/launcher/StatusManager;->getLauncherStatus(I)Z

    move-result v32

    if-eqz v32, :cond_1c

    .line 404
    sget-object v32, Lcom/smartisanos/launcher/view/TrashView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v33, "A140"

    const-string v34, "remove empty page failed by ON_PAGE_HAS_FLOAT"

    invoke-virtual/range {v32 .. v34}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    :cond_1c
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v32

    const/16 v33, 0x10

    invoke-virtual/range {v32 .. v33}, Lcom/smartisanos/launcher/StatusManager;->getLauncherStatus(I)Z

    move-result v32

    if-eqz v32, :cond_1a

    .line 407
    sget-object v32, Lcom/smartisanos/launcher/view/TrashView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v33, "A140"

    const-string v34, "remove empty page failed by ON_PAGE_DOING_FLOATING_ANIM"

    invoke-virtual/range {v32 .. v34}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 412
    :cond_1d
    sget-boolean v32, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v32, :cond_1a

    sget-object v32, Lcom/smartisanos/launcher/view/TrashView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v33, "DEBUG"

    const-string v34, "TrashView, handleUninstall currentPage is null !"

    invoke-virtual/range {v32 .. v34}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 417
    .end local v6    # "cell":Lcom/smartisanos/launcher/view/Cell;
    .end local v9    # "currentPage":Lcom/smartisanos/launcher/view/Page;
    :cond_1e
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v31

    :cond_1f
    :goto_5
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_20

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/smartisanos/launcher/view/Cell;

    .line 418
    .restart local v6    # "cell":Lcom/smartisanos/launcher/view/Cell;
    if-eqz v6, :cond_1f

    .line 419
    invoke-virtual {v11, v6}, Lcom/smartisanos/launcher/view/DockView;->removeDockCell(Lcom/smartisanos/launcher/view/Cell;)V

    .line 420
    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/Cell;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 421
    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/Cell;->deleteTextureForCell()V

    .line 422
    const/16 v32, 0x1

    move/from16 v0, v32

    invoke-virtual {v6, v0}, Lcom/smartisanos/launcher/view/Cell;->clear(Z)V

    goto :goto_5

    .line 425
    .end local v6    # "cell":Lcom/smartisanos/launcher/view/Cell;
    :cond_20
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v31

    if-lez v31, :cond_21

    .line 426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/TrashView;->uninstallAnimationTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    move-object/from16 v31, v0

    const v32, 0x3e99999a    # 0.3f

    move-object/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v11, v0, v1}, Lcom/smartisanos/launcher/view/DockView;->reLayoutCellByMode(Lcom/smartisanos/smengine/AnimationTimeLine;F)V

    .line 429
    :cond_21
    if-eqz v22, :cond_22

    .line 430
    const v31, 0x3e99999a    # 0.3f

    move-object/from16 v0, v24

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/PageView;->cleanEmptyScreen(F)Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v27

    .line 431
    .local v27, "removePageAnim":Lcom/smartisanos/smengine/AnimationTimeLine;
    if-eqz v27, :cond_22

    .line 432
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/TrashView;->uninstallAnimationTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v32

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 436
    .end local v27    # "removePageAnim":Lcom/smartisanos/smengine/AnimationTimeLine;
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/TrashView;->uninstallAnimationTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    move-object/from16 v31, v0

    new-instance v32, Lcom/smartisanos/launcher/view/TrashView$2;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    move-object/from16 v2, v28

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/smartisanos/launcher/view/TrashView$2;-><init>(Lcom/smartisanos/launcher/view/TrashView;Ljava/util/List;Ljava/util/List;Ljava/lang/Runnable;)V

    invoke-virtual/range {v31 .. v32}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 524
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v31

    const/high16 v32, 0x10000

    const/16 v33, 0x1

    invoke-virtual/range {v31 .. v33}, Lcom/smartisanos/launcher/StatusManager;->setLauncherStatus(IZ)V

    .line 525
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/TrashView;->uninstallAnimationTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/smartisanos/smengine/AnimationTimeLine;->start()V

    goto/16 :goto_0
.end method

.method public isAnyCellInTrashArea()Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/TrashView;->objectInTrashArea:Z

    return v0
.end method

.method public isTrashAnimRunning()Z
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TrashView;->uninstallAnimationTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/smartisanos/launcher/view/TrashView;->relayoutByUninstallTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pointInTrash(Lcom/smartisanos/smengine/math/Vector3f;)Z
    .locals 4
    .param p1, "worldTranslate"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 209
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v1

    .line 210
    .local v1, "dockView":Lcom/smartisanos/launcher/view/DockView;
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/DockView;->getTrashView()Lcom/smartisanos/launcher/view/TrashView;

    move-result-object v2

    .line 211
    .local v2, "trashView":Lcom/smartisanos/launcher/view/TrashView;
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/TrashView;->getWorldBoundingVolume()Lcom/smartisanos/smengine/BoundingVolume;

    move-result-object v0

    .line 212
    .local v0, "bv":Lcom/smartisanos/smengine/BoundingVolume;
    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/BoundingVolume;->isPointInBoundingVolume(Lcom/smartisanos/smengine/math/Vector3f;)Z

    move-result v3

    return v3
.end method

.method public revertCollideStatus()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 90
    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/TrashView;->objectInTrashArea:Z

    .line 91
    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/TrashView;->touchUpAndObjectInTrashArea:Z

    .line 92
    return-void
.end method

.method public setRenderQueue(I)V
    .locals 3
    .param p1, "rq"    # I

    .prologue
    .line 543
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/TrashView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 544
    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/TrashView;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    .line 545
    .local v1, "node":Lcom/smartisanos/smengine/SceneNode;
    if-eqz v1, :cond_0

    .line 546
    invoke-virtual {v1, p1}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 543
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 549
    .end local v1    # "node":Lcom/smartisanos/smengine/SceneNode;
    :cond_1
    return-void
.end method

.method public setStatus(Lcom/smartisanos/launcher/view/TrashView$STATUS;Z)V
    .locals 1
    .param p1, "status"    # Lcom/smartisanos/launcher/view/TrashView$STATUS;
    .param p2, "flag"    # Z

    .prologue
    .line 109
    sget-object v0, Lcom/smartisanos/launcher/view/TrashView$STATUS;->APPEAR:Lcom/smartisanos/launcher/view/TrashView$STATUS;

    if-ne p1, v0, :cond_1

    .line 110
    iput-boolean p2, p0, Lcom/smartisanos/launcher/view/TrashView;->trashAlreadyAppear:Z

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    sget-object v0, Lcom/smartisanos/launcher/view/TrashView$STATUS;->FLOAT_UP:Lcom/smartisanos/launcher/view/TrashView$STATUS;

    if-ne p1, v0, :cond_2

    .line 112
    iput-boolean p2, p0, Lcom/smartisanos/launcher/view/TrashView;->trashAlreadyFloatUp:Z

    goto :goto_0

    .line 113
    :cond_2
    sget-object v0, Lcom/smartisanos/launcher/view/TrashView$STATUS;->OBJECT_IN_TRASH:Lcom/smartisanos/launcher/view/TrashView$STATUS;

    if-ne p1, v0, :cond_3

    .line 114
    iput-boolean p2, p0, Lcom/smartisanos/launcher/view/TrashView;->objectInTrashArea:Z

    goto :goto_0

    .line 115
    :cond_3
    sget-object v0, Lcom/smartisanos/launcher/view/TrashView$STATUS;->TOUCH_UP_AND_OBJECT_IN_TRASH:Lcom/smartisanos/launcher/view/TrashView$STATUS;

    if-ne p1, v0, :cond_0

    .line 116
    iput-boolean p2, p0, Lcom/smartisanos/launcher/view/TrashView;->touchUpAndObjectInTrashArea:Z

    goto :goto_0
.end method

.method public setWaitingUninstallApps(Lcom/smartisanos/launcher/view/MultiSelectNode;)V
    .locals 0
    .param p1, "node"    # Lcom/smartisanos/launcher/view/MultiSelectNode;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/smartisanos/launcher/view/TrashView;->waitingUninstallApps:Lcom/smartisanos/launcher/view/MultiSelectNode;

    .line 87
    return-void
.end method

.method public setWaitingUninstallCell(Lcom/smartisanos/launcher/view/Cell;)V
    .locals 0
    .param p1, "cell"    # Lcom/smartisanos/launcher/view/Cell;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/smartisanos/launcher/view/TrashView;->waitingUninstallApp:Lcom/smartisanos/launcher/view/Cell;

    .line 79
    return-void
.end method

.method public trashInit()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/high16 v10, -0x40000000    # -2.0f

    const/high16 v8, -0x40800000    # -1.0f

    const/high16 v9, 0x40000000    # 2.0f

    const/4 v7, 0x1

    .line 121
    iget-boolean v5, p0, Lcom/smartisanos/launcher/view/TrashView;->initFlag:Z

    if-eqz v5, :cond_0

    .line 163
    :goto_0
    return-void

    .line 124
    :cond_0
    iput-boolean v7, p0, Lcom/smartisanos/launcher/view/TrashView;->initFlag:Z

    .line 125
    sget v5, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    invoke-static {v5}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v2

    .line 126
    .local v2, "prop":Lcom/smartisanos/launcher/data/LayoutProperty;
    iget v4, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->trash_width:F

    .line 127
    .local v4, "trash_width":F
    iget v3, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->trash_height:F

    .line 128
    .local v3, "trash_height":F
    const-string v5, "trash.png"

    invoke-static {v5}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4, v3, v11, v7}, Lcom/smartisanos/smengine/RectNode;->createSimpleTextureRect(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/RectNode;

    move-result-object v5

    iput-object v5, p0, Lcom/smartisanos/launcher/view/TrashView;->trashNode:Lcom/smartisanos/smengine/RectNode;

    .line 129
    iget-object v5, p0, Lcom/smartisanos/launcher/view/TrashView;->trashNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {p0, v5}, Lcom/smartisanos/launcher/view/TrashView;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 131
    iget-object v5, p0, Lcom/smartisanos/launcher/view/TrashView;->trashNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v5}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/smartisanos/smengine/RenderState;->setIsEnableBlend(Z)V

    .line 132
    iget-object v5, p0, Lcom/smartisanos/launcher/view/TrashView;->trashNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v5}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/smartisanos/smengine/RenderState;->setIsEnableDepthTest(Z)V

    .line 133
    iget-object v5, p0, Lcom/smartisanos/launcher/view/TrashView;->trashNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v5}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/smartisanos/smengine/RenderState;->setIsPolygonOffset(Z)V

    .line 134
    iget-object v5, p0, Lcom/smartisanos/launcher/view/TrashView;->trashNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v5}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v5

    invoke-virtual {v5, v8, v10}, Lcom/smartisanos/smengine/RenderState;->setPolygonOffsetFactorUnits(FF)V

    .line 135
    iget-object v5, p0, Lcom/smartisanos/launcher/view/TrashView;->trashNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v5, v7}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    .line 136
    iget-object v5, p0, Lcom/smartisanos/launcher/view/TrashView;->trashNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v5}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/smartisanos/smengine/RenderState;->setBlendMode(I)V

    .line 137
    iget-object v5, p0, Lcom/smartisanos/launcher/view/TrashView;->trashNode:Lcom/smartisanos/smengine/RectNode;

    const-string v6, "trash.png"

    invoke-static {v6}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/smartisanos/smengine/RectNode;->setImageName(Ljava/lang/String;)V

    .line 138
    iget-object v5, p0, Lcom/smartisanos/launcher/view/TrashView;->trashNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v5}, Lcom/smartisanos/smengine/RectNode;->updateGeometricState()V

    .line 139
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/DockView;->getLayStatus()I

    move-result v1

    .line 140
    .local v1, "layerStatus":I
    invoke-static {}, Lcom/smartisanos/launcher/view/LayerManager;->getInstance()Lcom/smartisanos/launcher/view/LayerManager;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/smartisanos/launcher/view/LayerManager;->getDockLayer(I)Lcom/smartisanos/launcher/view/LayerManager$DockLayer;

    move-result-object v0

    .line 141
    .local v0, "dockLayer":Lcom/smartisanos/launcher/view/LayerManager$DockLayer;
    iget-object v5, p0, Lcom/smartisanos/launcher/view/TrashView;->trashNode:Lcom/smartisanos/smengine/RectNode;

    iget v6, v0, Lcom/smartisanos/launcher/view/LayerManager$DockLayer;->TRASH_LAYER:I

    invoke-virtual {v5, v6}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 143
    const-string v5, "trash_shadow.png"

    invoke-static {v5}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4, v3, v11, v7}, Lcom/smartisanos/smengine/RectNode;->createSimpleTextureRect(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/RectNode;

    move-result-object v5

    iput-object v5, p0, Lcom/smartisanos/launcher/view/TrashView;->trashShadowNode:Lcom/smartisanos/smengine/RectNode;

    .line 144
    iget-object v5, p0, Lcom/smartisanos/launcher/view/TrashView;->trashShadowNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {p0, v5}, Lcom/smartisanos/launcher/view/TrashView;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 146
    iget-object v5, p0, Lcom/smartisanos/launcher/view/TrashView;->trashShadowNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v5}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/smartisanos/smengine/RenderState;->setIsEnableBlend(Z)V

    .line 147
    iget-object v5, p0, Lcom/smartisanos/launcher/view/TrashView;->trashShadowNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v5}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/smartisanos/smengine/RenderState;->setIsEnableDepthTest(Z)V

    .line 148
    iget-object v5, p0, Lcom/smartisanos/launcher/view/TrashView;->trashShadowNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v5}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/smartisanos/smengine/RenderState;->setIsPolygonOffset(Z)V

    .line 149
    iget-object v5, p0, Lcom/smartisanos/launcher/view/TrashView;->trashShadowNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v5}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v5

    invoke-virtual {v5, v8, v10}, Lcom/smartisanos/smengine/RenderState;->setPolygonOffsetFactorUnits(FF)V

    .line 150
    iget-object v5, p0, Lcom/smartisanos/launcher/view/TrashView;->trashShadowNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v5, v7}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    .line 151
    iget-object v5, p0, Lcom/smartisanos/launcher/view/TrashView;->trashShadowNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v5}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/smartisanos/smengine/RenderState;->setBlendMode(I)V

    .line 152
    iget-object v5, p0, Lcom/smartisanos/launcher/view/TrashView;->trashShadowNode:Lcom/smartisanos/smengine/RectNode;

    const-string v6, "trash_shadow.png"

    invoke-static {v6}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/smartisanos/smengine/RectNode;->setImageName(Ljava/lang/String;)V

    .line 153
    iget-object v5, p0, Lcom/smartisanos/launcher/view/TrashView;->trashShadowNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v5}, Lcom/smartisanos/smengine/RectNode;->updateGeometricState()V

    .line 154
    iget-object v5, p0, Lcom/smartisanos/launcher/view/TrashView;->trashShadowNode:Lcom/smartisanos/smengine/RectNode;

    iget v6, v0, Lcom/smartisanos/launcher/view/LayerManager$DockLayer;->TRASH_SHADOW_LAYER:I

    invoke-virtual {v5, v6}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 155
    new-instance v5, Lcom/smartisanos/launcher/animations/TrashAnimation;

    invoke-direct {v5, p0}, Lcom/smartisanos/launcher/animations/TrashAnimation;-><init>(Lcom/smartisanos/launcher/view/TrashView;)V

    iput-object v5, p0, Lcom/smartisanos/launcher/view/TrashView;->animation:Lcom/smartisanos/launcher/animations/TrashAnimation;

    .line 159
    iget v5, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->trash_react_width:F

    neg-float v5, v5

    div-float/2addr v5, v9

    iget v6, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->trash_react_height:F

    neg-float v6, v6

    div-float/2addr v6, v9

    iget v7, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->trash_react_width:F

    div-float/2addr v7, v9

    iget v8, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->trash_react_height:F

    div-float/2addr v8, v9

    invoke-virtual {p0, v5, v6, v7, v8}, Lcom/smartisanos/launcher/view/TrashView;->setLocalBoundingVolume(FFFF)V

    .line 162
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/TrashView;->applyTheme()V

    goto/16 :goto_0
.end method

.method public updateTrashByMode(I)V
    .locals 12
    .param p1, "mode"    # I

    .prologue
    const/high16 v10, 0x40000000    # 2.0f

    const/high16 v11, 0x3f800000    # 1.0f

    .line 217
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, p1, v8}, Lcom/smartisanos/launcher/view/DockView;->getTrashLocationByMode(IZ)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v4

    .line 218
    .local v4, "trashLoc":Lcom/smartisanos/smengine/math/Vector3f;
    iget v7, v4, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v8, v4, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v9, v4, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-virtual {p0, v7, v8, v9}, Lcom/smartisanos/launcher/view/TrashView;->setTranslate(FFF)V

    .line 219
    invoke-static {p1}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v7

    iget v6, v7, Lcom/smartisanos/launcher/data/LayoutProperty;->trash_react_width:F

    .line 220
    .local v6, "trash_react_width":F
    invoke-static {p1}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v7

    iget v5, v7, Lcom/smartisanos/launcher/data/LayoutProperty;->trash_react_height:F

    .line 221
    .local v5, "trash_react_height":F
    neg-float v7, v6

    div-float/2addr v7, v10

    neg-float v8, v5

    div-float/2addr v8, v10

    div-float v9, v6, v10

    div-float v10, v5, v10

    invoke-virtual {p0, v7, v8, v9, v10}, Lcom/smartisanos/launcher/view/TrashView;->setLocalBoundingVolume(FFFF)V

    .line 222
    iget-object v7, p0, Lcom/smartisanos/launcher/view/TrashView;->trashNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v7}, Lcom/smartisanos/smengine/RectNode;->getWidth()F

    move-result v1

    .line 223
    .local v1, "real_w":F
    iget-object v7, p0, Lcom/smartisanos/launcher/view/TrashView;->trashNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v7}, Lcom/smartisanos/smengine/RectNode;->getHeight()F

    move-result v0

    .line 224
    .local v0, "real_h":F
    invoke-static {p1}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v7

    iget v7, v7, Lcom/smartisanos/launcher/data/LayoutProperty;->trash_width:F

    mul-float/2addr v7, v11

    div-float/2addr v7, v1

    mul-float v3, v7, v11

    .line 225
    .local v3, "scale_w":F
    invoke-static {p1}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v7

    iget v7, v7, Lcom/smartisanos/launcher/data/LayoutProperty;->trash_height:F

    mul-float/2addr v7, v11

    div-float/2addr v7, v0

    mul-float v2, v7, v11

    .line 227
    .local v2, "scale_h":F
    sget-boolean v7, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v7, :cond_0

    sget-object v7, Lcom/smartisanos/launcher/view/TrashView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v8, "DEBUG"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "trash scale value scale_w ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "], scale_h ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    :cond_0
    invoke-virtual {p0, v3, v2, v11}, Lcom/smartisanos/launcher/view/TrashView;->setScale(FFF)V

    .line 229
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/TrashView;->updateGeometricState()V

    .line 230
    return-void
.end method
