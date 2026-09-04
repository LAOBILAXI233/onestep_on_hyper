.class public Lcom/smartisanos/launcher/animations/CellAnimation;
.super Lcom/smartisanos/launcher/animations/IAnimation;
.source "CellAnimation.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/launcher/animations/CellAnimation$RockAnimationListener;,
        Lcom/smartisanos/launcher/animations/CellAnimation$CELL_ANIMATION;
    }
.end annotation


.field private static final log:Lcom/smartisanos/launcher/LOG;


.field private cellMoveToTrashTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

.field private cellRockAnimTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

.field private isCancelAction:Z

.field private isPageCellInRockStatus:Z

.field private mCell:Lcom/smartisanos/launcher/view/Cell;


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/smartisanos/launcher/animations/CellAnimation;

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/animations/CellAnimation;->log:Lcom/smartisanos/launcher/LOG;

    return-void
.end method

.method public constructor <init>(Lcom/smartisanos/launcher/view/Cell;Lcom/smartisanos/launcher/data/ItemInfo;)V
    .locals 2
    .param p1, "cell"    # Lcom/smartisanos/launcher/view/Cell;
    .param p2, "info"    # Lcom/smartisanos/launcher/data/ItemInfo;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/IAnimation;-><init>()V

    .line 28
    iput-boolean v0, p0, Lcom/smartisanos/launcher/animations/CellAnimation;->isPageCellInRockStatus:Z

    .line 29
    iput-object v1, p0, Lcom/smartisanos/launcher/animations/CellAnimation;->cellRockAnimTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 30
    iput-object v1, p0, Lcom/smartisanos/launcher/animations/CellAnimation;->cellMoveToTrashTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 45
    iput-boolean v0, p0, Lcom/smartisanos/launcher/animations/CellAnimation;->isCancelAction:Z

    .line 42
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/CellAnimation;->mCell:Lcom/smartisanos/launcher/view/Cell;

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/smartisanos/launcher/animations/CellAnimation;)Z
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/animations/CellAnimation;

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/smartisanos/launcher/animations/CellAnimation;->isPageCellInRockStatus:Z

    return v0
.end method

.method static synthetic access$100(Lcom/smartisanos/launcher/animations/CellAnimation;)Lcom/smartisanos/smengine/AnimationTimeLine;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/animations/CellAnimation;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/CellAnimation;->cellRockAnimTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    return-object v0
.end method

.method static synthetic access$102(Lcom/smartisanos/launcher/animations/CellAnimation;Lcom/smartisanos/smengine/AnimationTimeLine;)Lcom/smartisanos/smengine/AnimationTimeLine;
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/animations/CellAnimation;
    .param p1, "x1"    # Lcom/smartisanos/smengine/AnimationTimeLine;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/CellAnimation;->cellRockAnimTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    return-object p1
.end method

.method static synthetic access$200(Lcom/smartisanos/launcher/animations/CellAnimation;)Lcom/smartisanos/launcher/view/Cell;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/animations/CellAnimation;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/CellAnimation;->mCell:Lcom/smartisanos/launcher/view/Cell;

    return-object v0
.end method

.method static synthetic access$300(Lcom/smartisanos/launcher/animations/CellAnimation;)Lcom/smartisanos/smengine/AnimationTimeLine;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/animations/CellAnimation;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/CellAnimation;->cellMoveToTrashTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    return-object v0
.end method

.method static synthetic access$302(Lcom/smartisanos/launcher/animations/CellAnimation;Lcom/smartisanos/smengine/AnimationTimeLine;)Lcom/smartisanos/smengine/AnimationTimeLine;
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/animations/CellAnimation;
    .param p1, "x1"    # Lcom/smartisanos/smengine/AnimationTimeLine;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/CellAnimation;->cellMoveToTrashTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    return-object p1
.end method


.method public emergencyBrakeWhenCellIsRock()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 53
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/launcher/animations/CellAnimation;->log:Lcom/smartisanos/launcher/LOG;

    const-string v1, "emergencyBrakeWhenCellIsRock begin !"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 54
    :cond_0
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/smartisanos/launcher/animations/CellAnimation;->log:Lcom/smartisanos/launcher/LOG;

    const-string v1, "isPageCellInRockStatus to be false"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 55
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/CellAnimation;->cellMoveToTrashTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    if-eqz v0, :cond_2

    .line 56
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/CellAnimation;->cellMoveToTrashTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/AnimationTimeLine;->forceFinish()V

    .line 58
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smartisanos/launcher/animations/CellAnimation;->isPageCellInRockStatus:Z

    .line 59
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/CellAnimation;->cellRockAnimTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    if-eqz v0, :cond_3

    .line 60
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/CellAnimation;->cellRockAnimTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/AnimationTimeLine;->forceFinish()V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartisanos/launcher/animations/CellAnimation;->cellRockAnimTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 63
    :cond_3
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/CellAnimation;->mCell:Lcom/smartisanos/launcher/view/Cell;

    new-instance v1, Ljava/lang/Float;

    invoke-direct {v1, v4}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    new-instance v2, Lcom/smartisanos/smengine/math/Vector3f;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v4, v4, v3}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/view/Cell;->setRotation(FLcom/smartisanos/smengine/math/Vector3f;)V

    .line 64
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/CellAnimation;->mCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->updateGeometricState()V

    .line 65
    return-void
.end method

.method public handleAnimation(Lcom/smartisanos/launcher/animations/CellAnimation$CELL_ANIMATION;F)V
    .locals 1
    .param p1, "animation"    # Lcom/smartisanos/launcher/animations/CellAnimation$CELL_ANIMATION;
    .param p2, "time"    # F

    .prologue
    .line 150
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/smartisanos/launcher/animations/CellAnimation;->handleAnimation(Lcom/smartisanos/launcher/animations/CellAnimation$CELL_ANIMATION;FLjava/util/ArrayList;)V

    .line 151
    return-void
.end method

.method public handleAnimation(Lcom/smartisanos/launcher/animations/CellAnimation$CELL_ANIMATION;FLjava/util/ArrayList;)V
    .locals 43
    .param p1, "animation"    # Lcom/smartisanos/launcher/animations/CellAnimation$CELL_ANIMATION;
    .param p2, "time"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smartisanos/launcher/animations/CellAnimation$CELL_ANIMATION;",
            "F",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 154
    .local p3, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    sget-boolean v10, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v10, :cond_0

    sget-object v10, Lcom/smartisanos/launcher/animations/CellAnimation;->log:Lcom/smartisanos/launcher/LOG;

    const-string v11, "DEBUG"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "handleAnimation ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcom/smartisanos/launcher/animations/CellAnimation$CELL_ANIMATION;->name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :cond_0
    sget-object v10, Lcom/smartisanos/launcher/animations/CellAnimation$4;->$SwitchMap$com$smartisanos$launcher$animations$CellAnimation$CELL_ANIMATION:[I

    invoke-virtual/range {p1 .. p1}, Lcom/smartisanos/launcher/animations/CellAnimation$CELL_ANIMATION;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_0

    .line 373
    :goto_0
    return-void

    .line 158
    :pswitch_0
    if-eqz p3, :cond_1

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-nez v10, :cond_2

    .line 159
    :cond_1
    sget-boolean v10, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v10, :cond_2

    sget-object v10, Lcom/smartisanos/launcher/animations/CellAnimation;->log:Lcom/smartisanos/launcher/LOG;

    const-string v11, "DEBUG"

    const-string v12, "params is null, when execute MOVE_TO_TRASH"

    invoke-virtual {v10, v11, v12}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :cond_2
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/smartisanos/launcher/animations/CellAnimation;->cellMoveToTrashTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    if-eqz v10, :cond_3

    .line 163
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/smartisanos/launcher/animations/CellAnimation;->cellMoveToTrashTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v10}, Lcom/smartisanos/smengine/AnimationTimeLine;->forceFinish()V

    .line 164
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/smartisanos/launcher/animations/CellAnimation;->cellMoveToTrashTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 166
    :cond_3
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/DockView;->getTrashView()Lcom/smartisanos/launcher/view/TrashView;

    move-result-object v40

    .line 167
    .local v40, "trashView":Lcom/smartisanos/launcher/view/TrashView;
    sget-object v10, Lcom/smartisanos/launcher/view/TrashView$STATUS;->FLOAT_UP:Lcom/smartisanos/launcher/view/TrashView$STATUS;

    move-object/from16 v0, v40

    invoke-virtual {v0, v10}, Lcom/smartisanos/launcher/view/TrashView;->getStatus(Lcom/smartisanos/launcher/view/TrashView$STATUS;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 168
    sget-boolean v10, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v10, :cond_4

    sget-object v10, Lcom/smartisanos/launcher/animations/CellAnimation;->log:Lcom/smartisanos/launcher/LOG;

    const-string v11, "MOVE_TO_TRASH trash anim is running or not do anim !"

    invoke-virtual {v10, v11}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 169
    :cond_4
    invoke-virtual/range {v40 .. v40}, Lcom/smartisanos/launcher/view/TrashView;->getAnimation()Lcom/smartisanos/launcher/animations/TrashAnimation;

    move-result-object v10

    iget-object v10, v10, Lcom/smartisanos/launcher/animations/TrashAnimation;->trashFloatUpAnim:Lcom/smartisanos/smengine/AnimationTimeLine;

    if-eqz v10, :cond_6

    .line 170
    invoke-virtual/range {v40 .. v40}, Lcom/smartisanos/launcher/view/TrashView;->getAnimation()Lcom/smartisanos/launcher/animations/TrashAnimation;

    move-result-object v10

    iget-object v10, v10, Lcom/smartisanos/launcher/animations/TrashAnimation;->trashFloatUpAnim:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v10}, Lcom/smartisanos/smengine/AnimationTimeLine;->forceFinish()V

    .line 176
    :cond_5
    :goto_1
    new-instance v10, Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-direct {v10}, Lcom/smartisanos/smengine/AnimationTimeLine;-><init>()V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/smartisanos/launcher/animations/CellAnimation;->cellMoveToTrashTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 177
    const/4 v10, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Lcom/smartisanos/launcher/view/Cell;

    .line 178
    .local v42, "uninstallCell":Lcom/smartisanos/launcher/view/Cell;
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/DockView;->getTrashView()Lcom/smartisanos/launcher/view/TrashView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/TrashView;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v41

    .line 179
    .local v41, "trash_loc":Lcom/smartisanos/smengine/math/Vector3f;
    sget v10, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    invoke-static {v10}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v10

    iget v0, v10, Lcom/smartisanos/launcher/data/LayoutProperty;->trash_height:F

    move/from16 v39, v0

    .line 181
    .local v39, "trashHeight":F
    invoke-virtual/range {v42 .. v42}, Lcom/smartisanos/launcher/view/Cell;->getWorldTransform()Lcom/smartisanos/smengine/math/Transform;

    move-result-object v10

    invoke-virtual {v10}, Lcom/smartisanos/smengine/math/Transform;->getScale()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v31

    .line 182
    .local v31, "scale":Lcom/smartisanos/smengine/math/Vector3f;
    sget v10, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    invoke-static {v10}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v10

    iget v0, v10, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_size_origin:F

    move/from16 v21, v0

    .line 183
    .local v21, "iconHeight":F
    move-object/from16 v0, v31

    iget v10, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    mul-float v21, v21, v10

    .line 184
    new-instance v3, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-object/from16 v0, v42

    invoke-direct {v3, v0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 185
    .local v3, "trash_anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    invoke-virtual/range {v42 .. v42}, Lcom/smartisanos/launcher/view/Cell;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v20

    .line 186
    .local v20, "from":Lcom/smartisanos/smengine/math/Vector3f;
    new-instance v37, Lcom/smartisanos/smengine/math/Vector3f;

    move-object/from16 v0, v41

    iget v10, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move-object/from16 v0, v41

    iget v11, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    const/high16 v12, 0x40000000    # 2.0f

    div-float v12, v39, v12

    add-float/2addr v11, v12

    const/high16 v12, 0x40000000    # 2.0f

    div-float v12, v21, v12

    add-float/2addr v11, v12

    move-object/from16 v0, v41

    iget v12, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    move-object/from16 v0, v37

    invoke-direct {v0, v10, v11, v12}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    .line 187
    .local v37, "to":Lcom/smartisanos/smengine/math/Vector3f;
    move/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 188
    const/16 v10, 0xe

    invoke-virtual {v3, v10}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 189
    const/4 v4, 0x0

    move-object/from16 v0, v20

    iget v5, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move-object/from16 v0, v20

    iget v6, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move-object/from16 v0, v20

    iget v7, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    move-object/from16 v0, v37

    iget v8, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move-object/from16 v0, v37

    iget v9, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move-object/from16 v0, v37

    iget v10, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-virtual/range {v3 .. v10}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFF)V

    .line 190
    new-instance v10, Lcom/smartisanos/launcher/animations/CellAnimation$1;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v10, v0, v1}, Lcom/smartisanos/launcher/animations/CellAnimation$1;-><init>(Lcom/smartisanos/launcher/animations/CellAnimation;F)V

    invoke-virtual {v3, v10}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 198
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/smartisanos/launcher/animations/CellAnimation;->cellMoveToTrashTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    const/4 v11, 0x0

    invoke-virtual {v10, v11, v3}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 199
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/smartisanos/launcher/animations/CellAnimation;->cellMoveToTrashTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v10}, Lcom/smartisanos/smengine/AnimationTimeLine;->start()V

    goto/16 :goto_0

    .line 172
    .end local v3    # "trash_anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    .end local v20    # "from":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v21    # "iconHeight":F
    .end local v31    # "scale":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v37    # "to":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v39    # "trashHeight":F
    .end local v41    # "trash_loc":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v42    # "uninstallCell":Lcom/smartisanos/launcher/view/Cell;
    :cond_6
    sget-object v10, Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;->TRASH_FLOAT_UP:Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;

    move-object/from16 v0, v40

    move/from16 v1, p2

    invoke-virtual {v0, v10, v1}, Lcom/smartisanos/launcher/view/TrashView;->handleAnimation(Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;F)V

    .line 173
    invoke-virtual/range {v40 .. v40}, Lcom/smartisanos/launcher/view/TrashView;->getAnimation()Lcom/smartisanos/launcher/animations/TrashAnimation;

    move-result-object v10

    iget-object v10, v10, Lcom/smartisanos/launcher/animations/TrashAnimation;->trashFloatUpAnim:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v10}, Lcom/smartisanos/smengine/AnimationTimeLine;->forceFinish()V

    goto/16 :goto_1

    .line 204
    .end local v40    # "trashView":Lcom/smartisanos/launcher/view/TrashView;
    :pswitch_1
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/smartisanos/launcher/animations/CellAnimation;->isPageCellInRockStatus:Z

    if-eqz v10, :cond_7

    .line 205
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/smartisanos/launcher/animations/CellAnimation;->isPageCellInRockStatus:Z

    .line 207
    :cond_7
    const/16 v36, 0x0

    .line 209
    .local v36, "timeLine":Lcom/smartisanos/smengine/AnimationTimeLine;
    const/4 v10, 0x0

    :try_start_0
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Lcom/smartisanos/smengine/AnimationTimeLine;

    move-object/from16 v36, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    :goto_2
    if-nez v36, :cond_8

    .line 214
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "FALL_INTO_TRASH animation lose time line"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 210
    :catch_0
    move-exception v18

    .line 211
    .local v18, "e":Ljava/lang/Exception;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 216
    .end local v18    # "e":Ljava/lang/Exception;
    :cond_8
    new-instance v4, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/smartisanos/launcher/animations/CellAnimation;->mCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-direct {v4, v10}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 217
    .local v4, "cell_fall_anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    move/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 218
    const/16 v10, 0xd

    invoke-virtual {v4, v10}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 219
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/smartisanos/launcher/animations/CellAnimation;->mCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/Cell;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v20

    .line 220
    .restart local v20    # "from":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/DockView;->getTrashView()Lcom/smartisanos/launcher/view/TrashView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/TrashView;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v37

    .line 221
    .restart local v37    # "to":Lcom/smartisanos/smengine/math/Vector3f;
    const/4 v5, 0x0

    move-object/from16 v0, v20

    iget v6, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move-object/from16 v0, v20

    iget v7, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move-object/from16 v0, v20

    iget v8, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    move-object/from16 v0, v37

    iget v9, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move-object/from16 v0, v37

    iget v10, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move-object/from16 v0, v37

    iget v11, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-virtual/range {v4 .. v11}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFF)V

    .line 223
    new-instance v10, Lcom/smartisanos/launcher/animations/CellAnimation$2;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/smartisanos/launcher/animations/CellAnimation$2;-><init>(Lcom/smartisanos/launcher/animations/CellAnimation;)V

    invoke-virtual {v4, v10}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 236
    const/4 v10, 0x0

    move-object/from16 v0, v36

    invoke-virtual {v0, v10, v4}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    goto/16 :goto_0

    .line 242
    .end local v4    # "cell_fall_anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    .end local v20    # "from":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v36    # "timeLine":Lcom/smartisanos/smengine/AnimationTimeLine;
    .end local v37    # "to":Lcom/smartisanos/smengine/math/Vector3f;
    :pswitch_2
    const/high16 v28, 0x40000000    # 2.0f

    .line 243
    .local v28, "rockAngle":F
    const/high16 v26, 0x40000000    # 2.0f

    .line 244
    .local v26, "offset":F
    const v22, 0x3d8f5c29    # 0.07f

    .line 245
    .local v22, "interval_time":F
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/smartisanos/launcher/animations/CellAnimation;->mCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/Cell;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v10

    invoke-virtual {v10}, Lcom/smartisanos/smengine/math/Vector3f;->clone()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v24

    .line 246
    .local v24, "loc":Lcom/smartisanos/smengine/math/Vector3f;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/smartisanos/launcher/animations/CellAnimation;->mCell:Lcom/smartisanos/launcher/view/Cell;

    new-instance v11, Ljava/lang/Float;

    const v12, -0x42f105cb

    invoke-direct {v11, v12}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    new-instance v12, Lcom/smartisanos/smengine/math/Vector3f;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-direct {v12, v13, v14, v15}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    invoke-virtual {v10, v11, v12}, Lcom/smartisanos/launcher/view/Cell;->setRotation(FLcom/smartisanos/smengine/math/Vector3f;)V

    .line 247
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/smartisanos/launcher/animations/CellAnimation;->mCell:Lcom/smartisanos/launcher/view/Cell;

    move-object/from16 v0, v24

    iget v11, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    const/high16 v12, 0x40000000    # 2.0f

    sub-float/2addr v11, v12

    move-object/from16 v0, v24

    iget v12, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    const/high16 v13, 0x40000000    # 2.0f

    add-float/2addr v12, v13

    move-object/from16 v0, v24

    iget v13, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-virtual {v10, v11, v12, v13}, Lcom/smartisanos/launcher/view/Cell;->setTranslate(FFF)V

    .line 248
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/smartisanos/launcher/animations/CellAnimation;->mCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/Cell;->updateGeometricState()V

    .line 249
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/smartisanos/launcher/animations/CellAnimation;->cellRockAnimTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    if-eqz v10, :cond_9

    .line 250
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "error status for cellRockAnimTimeLine is not null !"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 252
    :cond_9
    new-instance v10, Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-direct {v10}, Lcom/smartisanos/smengine/AnimationTimeLine;-><init>()V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/smartisanos/launcher/animations/CellAnimation;->cellRockAnimTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 254
    new-instance v5, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/smartisanos/launcher/animations/CellAnimation;->mCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-direct {v5, v10}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 255
    .local v5, "cell_move_anim_1":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    const v10, 0x3d8f5c29    # 0.07f

    invoke-virtual {v5, v10}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 256
    const/16 v10, 0xc

    invoke-virtual {v5, v10}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 257
    const/4 v6, 0x0

    move-object/from16 v0, v24

    iget v10, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    const/high16 v11, 0x40000000    # 2.0f

    sub-float v7, v10, v11

    move-object/from16 v0, v24

    iget v10, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    const/high16 v11, 0x40000000    # 2.0f

    add-float v8, v10, v11

    move-object/from16 v0, v24

    iget v9, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    move-object/from16 v0, v24

    iget v10, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    const/high16 v11, 0x40000000    # 2.0f

    add-float/2addr v10, v11

    move-object/from16 v0, v24

    iget v11, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    const/high16 v12, 0x40000000    # 2.0f

    sub-float/2addr v11, v12

    move-object/from16 v0, v24

    iget v12, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-virtual/range {v5 .. v12}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFF)V

    .line 258
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/smartisanos/launcher/animations/CellAnimation;->cellRockAnimTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    const/4 v11, 0x0

    invoke-virtual {v10, v11, v5}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 261
    new-instance v29, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/smartisanos/launcher/animations/CellAnimation;->mCell:Lcom/smartisanos/launcher/view/Cell;

    move-object/from16 v0, v29

    invoke-direct {v0, v10}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 262
    .local v29, "rock_step2_anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    const v10, 0x3d8f5c29    # 0.07f

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 263
    const/16 v10, 0xc

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 264
    const/4 v10, 0x2

    new-instance v11, Ljava/lang/Float;

    const v12, -0x42f105cb

    invoke-direct {v11, v12}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    new-instance v12, Ljava/lang/Float;

    const v13, 0x3d0efa35

    invoke-direct {v12, v13}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    move-object/from16 v0, v29

    invoke-virtual {v0, v10, v11, v12}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFF)V

    .line 265
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/smartisanos/launcher/animations/CellAnimation;->cellRockAnimTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    const v11, 0x3d8f5c29    # 0.07f

    move-object/from16 v0, v29

    invoke-virtual {v10, v11, v0}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 267
    new-instance v6, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/smartisanos/launcher/animations/CellAnimation;->mCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-direct {v6, v10}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 268
    .local v6, "cell_move_anim_2":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    const v10, 0x3d8f5c29    # 0.07f

    invoke-virtual {v6, v10}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 269
    const/16 v10, 0xc

    invoke-virtual {v6, v10}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 270
    const/4 v7, 0x0

    move-object/from16 v0, v24

    iget v10, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    const/high16 v11, 0x40000000    # 2.0f

    add-float v8, v10, v11

    move-object/from16 v0, v24

    iget v10, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    const/high16 v11, 0x40000000    # 2.0f

    sub-float v9, v10, v11

    move-object/from16 v0, v24

    iget v10, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    move-object/from16 v0, v24

    iget v11, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    const/high16 v12, 0x40000000    # 2.0f

    add-float/2addr v11, v12

    move-object/from16 v0, v24

    iget v12, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    const/high16 v13, 0x40000000    # 2.0f

    add-float/2addr v12, v13

    move-object/from16 v0, v24

    iget v13, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-virtual/range {v6 .. v13}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFF)V

    .line 271
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/smartisanos/launcher/animations/CellAnimation;->cellRockAnimTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    const v11, 0x3d8f5c29    # 0.07f

    invoke-virtual {v10, v11, v6}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 274
    new-instance v7, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/smartisanos/launcher/animations/CellAnimation;->mCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-direct {v7, v10}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 275
    .local v7, "cell_move_anim_3":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    const v10, 0x3d8f5c29    # 0.07f

    invoke-virtual {v7, v10}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 276
    const/16 v10, 0xc

    invoke-virtual {v7, v10}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 277
    const/4 v8, 0x0

    move-object/from16 v0, v24

    iget v10, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    const/high16 v11, 0x40000000    # 2.0f

    add-float v9, v10, v11

    move-object/from16 v0, v24

    iget v10, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    const/high16 v11, 0x40000000    # 2.0f

    add-float/2addr v10, v11

    move-object/from16 v0, v24

    iget v11, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    move-object/from16 v0, v24

    iget v12, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    const/high16 v13, 0x40000000    # 2.0f

    sub-float/2addr v12, v13

    move-object/from16 v0, v24

    iget v13, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    const/high16 v14, 0x40000000    # 2.0f

    sub-float/2addr v13, v14

    move-object/from16 v0, v24

    iget v14, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-virtual/range {v7 .. v14}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFF)V

    .line 278
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/smartisanos/launcher/animations/CellAnimation;->cellRockAnimTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    const v11, 0x3e0f5c29    # 0.14f

    invoke-virtual {v10, v11, v7}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 281
    new-instance v30, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/smartisanos/launcher/animations/CellAnimation;->mCell:Lcom/smartisanos/launcher/view/Cell;

    move-object/from16 v0, v30

    invoke-direct {v0, v10}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 282
    .local v30, "rock_step4_anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    const v10, 0x3d8f5c29    # 0.07f

    move-object/from16 v0, v30

    invoke-virtual {v0, v10}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 283
    const/16 v10, 0xc

    move-object/from16 v0, v30

    invoke-virtual {v0, v10}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 284
    const/4 v10, 0x2

    new-instance v11, Ljava/lang/Float;

    const v12, 0x3d0efa35

    invoke-direct {v11, v12}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    new-instance v12, Ljava/lang/Float;

    const v13, -0x42f105cb

    invoke-direct {v12, v13}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    move-object/from16 v0, v30

    invoke-virtual {v0, v10, v11, v12}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFF)V

    .line 285
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/smartisanos/launcher/animations/CellAnimation;->cellRockAnimTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    const v11, 0x3e570a3e    # 0.21000001f

    move-object/from16 v0, v30

    invoke-virtual {v10, v11, v0}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 286
    new-instance v8, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/smartisanos/launcher/animations/CellAnimation;->mCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-direct {v8, v10}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 287
    .local v8, "cell_move_anim_4":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    const v10, 0x3d8f5c29    # 0.07f

    invoke-virtual {v8, v10}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 288
    const/16 v10, 0xf

    invoke-virtual {v8, v10}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 289
    const/4 v9, 0x0

    move-object/from16 v0, v24

    iget v10, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    const/high16 v11, 0x40000000    # 2.0f

    sub-float/2addr v10, v11

    move-object/from16 v0, v24

    iget v11, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    const/high16 v12, 0x40000000    # 2.0f

    sub-float/2addr v11, v12

    move-object/from16 v0, v24

    iget v12, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    move-object/from16 v0, v24

    iget v13, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    const/high16 v14, 0x40000000    # 2.0f

    sub-float/2addr v13, v14

    move-object/from16 v0, v24

    iget v14, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    const/high16 v15, 0x40000000    # 2.0f

    add-float/2addr v14, v15

    move-object/from16 v0, v24

    iget v15, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-virtual/range {v8 .. v15}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFF)V

    .line 290
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/smartisanos/launcher/animations/CellAnimation;->cellRockAnimTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    const v11, 0x3e570a3e    # 0.21000001f

    invoke-virtual {v10, v11, v8}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 291
    new-instance v23, Lcom/smartisanos/launcher/animations/CellAnimation$RockAnimationListener;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/launcher/animations/CellAnimation$RockAnimationListener;-><init>(Lcom/smartisanos/launcher/animations/CellAnimation;Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 292
    .local v23, "listener":Lcom/smartisanos/launcher/animations/CellAnimation$RockAnimationListener;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/smartisanos/launcher/animations/CellAnimation;->cellRockAnimTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 293
    const/4 v10, 0x1

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/smartisanos/launcher/animations/CellAnimation;->isPageCellInRockStatus:Z

    .line 294
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/smartisanos/launcher/animations/CellAnimation;->cellRockAnimTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v10}, Lcom/smartisanos/smengine/AnimationTimeLine;->start()V

    goto/16 :goto_0

    .line 299
    .end local v5    # "cell_move_anim_1":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    .end local v6    # "cell_move_anim_2":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    .end local v7    # "cell_move_anim_3":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    .end local v8    # "cell_move_anim_4":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    .end local v22    # "interval_time":F
    .end local v23    # "listener":Lcom/smartisanos/launcher/animations/CellAnimation$RockAnimationListener;
    .end local v24    # "loc":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v26    # "offset":F
    .end local v28    # "rockAngle":F
    .end local v29    # "rock_step2_anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    .end local v30    # "rock_step4_anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    :pswitch_3
    const/4 v10, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 300
    .local v19, "executeTimeLine":Lcom/smartisanos/smengine/AnimationTimeLine;
    if-nez v19, :cond_a

    .line 301
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "BACK_TO_PARENT_VIEW need time line !"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 303
    :cond_a
    new-instance v36, Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-direct/range {v36 .. v36}, Lcom/smartisanos/smengine/AnimationTimeLine;-><init>()V

    .line 304
    .restart local v36    # "timeLine":Lcom/smartisanos/smengine/AnimationTimeLine;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/smartisanos/launcher/animations/CellAnimation;->mCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/Cell;->getItemInfo()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v10

    invoke-virtual {v10}, Lcom/smartisanos/launcher/data/ItemInfo;->isDockItem()Z

    move-result v10

    if-nez v10, :cond_10

    .line 306
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/smartisanos/launcher/animations/CellAnimation;->mCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/Cell;->getPreParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v32

    .line 307
    .local v32, "target":Lcom/smartisanos/smengine/SceneNode;
    if-nez v32, :cond_b

    .line 308
    new-instance v10, Ljava/lang/RuntimeException;

    const-string v11, "ERROR,cell back to target is not NULL!!!!!!!!!!!"

    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 310
    :cond_b
    move-object/from16 v0, v32

    instance-of v10, v0, Lcom/smartisanos/launcher/view/Page;

    if-nez v10, :cond_c

    .line 311
    new-instance v10, Ljava/lang/RuntimeException;

    const-string v11, "ERROR,target is not page,dock cell back to unknown Parent!!!!!!!!!!!"

    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_c
    move-object/from16 v34, v32

    .line 313
    check-cast v34, Lcom/smartisanos/launcher/view/Page;

    .line 314
    .local v34, "targetPage":Lcom/smartisanos/launcher/view/Page;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/smartisanos/launcher/animations/CellAnimation;->mCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/Cell;->getRowIndex()I

    move-result v35

    .line 315
    .local v35, "targetRowIndex":I
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/smartisanos/launcher/animations/CellAnimation;->mCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/Cell;->getColIndex()I

    move-result v33

    .line 316
    .local v33, "targetColIndex":I
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/smartisanos/launcher/animations/CellAnimation;->mCell:Lcom/smartisanos/launcher/view/Cell;

    move/from16 v0, v35

    move/from16 v1, v33

    invoke-virtual {v10, v0, v1}, Lcom/smartisanos/launcher/view/Cell;->setRowCol(II)V

    .line 317
    invoke-virtual/range {v34 .. v34}, Lcom/smartisanos/launcher/view/Page;->reSortChildren()V

    .line 318
    sget v10, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    sget v11, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    if-ne v10, v11, :cond_f

    .line 319
    sget-boolean v10, Lcom/smartisanos/launcher/data/Constants;->SHOW_APP_NAME:Z

    if-eqz v10, :cond_d

    .line 320
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/smartisanos/launcher/animations/CellAnimation;->mCell:Lcom/smartisanos/launcher/view/Cell;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/smartisanos/launcher/view/Cell;->enableShowAppName(Z)V

    .line 323
    :cond_d
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/smartisanos/launcher/animations/CellAnimation;->mCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/Cell;->getCellDockStatus()Lcom/smartisanos/launcher/view/CellStatusForDock;

    move-result-object v10

    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/CellStatusForDock;->getNarrowed()Z

    move-result v10

    if-eqz v10, :cond_e

    .line 324
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/smartisanos/launcher/animations/CellAnimation;->mCell:Lcom/smartisanos/launcher/view/Cell;

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-virtual {v10, v11, v12, v13}, Lcom/smartisanos/launcher/view/Cell;->setScale(FFF)V

    .line 326
    :cond_e
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/smartisanos/launcher/animations/CellAnimation;->mCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/Cell;->updateGeometricState()V

    .line 328
    :cond_f
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/smartisanos/launcher/animations/CellAnimation;->mCell:Lcom/smartisanos/launcher/view/Cell;

    move-object/from16 v0, v34

    move/from16 v1, p2

    invoke-virtual {v10, v0, v1}, Lcom/smartisanos/launcher/view/Cell;->cellUpReturnToPage(Lcom/smartisanos/launcher/view/Page;F)Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v36

    .line 358
    .end local v32    # "target":Lcom/smartisanos/smengine/SceneNode;
    .end local v33    # "targetColIndex":I
    .end local v34    # "targetPage":Lcom/smartisanos/launcher/view/Page;
    .end local v35    # "targetRowIndex":I
    :goto_3
    new-instance v10, Lcom/smartisanos/launcher/animations/CellAnimation$3;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/smartisanos/launcher/animations/CellAnimation$3;-><init>(Lcom/smartisanos/launcher/animations/CellAnimation;)V

    move-object/from16 v0, v36

    invoke-virtual {v0, v10}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 369
    const/4 v10, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v36

    invoke-virtual {v0, v10, v1}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    goto/16 :goto_0

    .line 332
    :cond_10
    const/16 v38, 0x0

    .line 333
    .local v38, "toLoc":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/smartisanos/launcher/animations/CellAnimation;->mCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v10, v11}, Lcom/smartisanos/launcher/view/DockView;->addDockCellToList(Lcom/smartisanos/launcher/view/Cell;)Z

    .line 334
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/DockView;->updateDockCellIndex()V

    .line 335
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v10

    const/4 v11, 0x0

    sget v12, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    invoke-virtual {v10, v11, v12}, Lcom/smartisanos/launcher/view/DockView;->getCellLocation(ZI)[Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v25

    .line 336
    .local v25, "locArr":[Lcom/smartisanos/smengine/math/Vector3f;
    move-object/from16 v0, v25

    array-length v10, v0

    if-lez v10, :cond_11

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/smartisanos/launcher/animations/CellAnimation;->mCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/Cell;->getCellIndex()I

    move-result v10

    move-object/from16 v0, v25

    array-length v11, v0

    if-ge v10, v11, :cond_11

    .line 337
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/smartisanos/launcher/animations/CellAnimation;->mCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/Cell;->getCellIndex()I

    move-result v10

    aget-object v38, v25, v10

    .line 339
    :cond_11
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/smartisanos/launcher/animations/CellAnimation;->mCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/Cell;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v20

    .line 340
    .restart local v20    # "from":Lcom/smartisanos/smengine/math/Vector3f;
    new-instance v9, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/smartisanos/launcher/animations/CellAnimation;->mCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-direct {v9, v10}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 341
    .local v9, "moveAnim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    move/from16 v0, p2

    invoke-virtual {v9, v0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 342
    const/16 v10, 0x19

    invoke-virtual {v9, v10}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 344
    const/4 v10, 0x0

    move-object/from16 v0, v20

    iget v11, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move-object/from16 v0, v20

    iget v12, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move-object/from16 v0, v20

    iget v13, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    move-object/from16 v0, v38

    iget v14, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move-object/from16 v0, v38

    iget v15, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move-object/from16 v0, v38

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    move/from16 v16, v0

    invoke-virtual/range {v9 .. v16}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFF)V

    .line 345
    invoke-virtual {v9}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->start()V

    .line 346
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/DockView;->getDockCellBoundingRect()Lcom/smartisanos/smengine/BoundingRect;

    move-result-object v17

    .line 347
    .local v17, "br":Lcom/smartisanos/smengine/BoundingRect;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/smartisanos/launcher/animations/CellAnimation;->mCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual/range {v17 .. v17}, Lcom/smartisanos/smengine/BoundingRect;->getMinPoint()Lcom/smartisanos/smengine/math/Vector2f;

    move-result-object v11

    iget v11, v11, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    invoke-virtual/range {v17 .. v17}, Lcom/smartisanos/smengine/BoundingRect;->getMinPoint()Lcom/smartisanos/smengine/math/Vector2f;

    move-result-object v12

    iget v12, v12, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    invoke-virtual/range {v17 .. v17}, Lcom/smartisanos/smengine/BoundingRect;->getMaxPoint()Lcom/smartisanos/smengine/math/Vector2f;

    move-result-object v13

    iget v13, v13, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    invoke-virtual/range {v17 .. v17}, Lcom/smartisanos/smengine/BoundingRect;->getMaxPoint()Lcom/smartisanos/smengine/math/Vector2f;

    move-result-object v14

    iget v14, v14, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    invoke-virtual {v10, v11, v12, v13, v14}, Lcom/smartisanos/launcher/view/Cell;->setLocalBoundingVolume(FFFF)V

    .line 348
    sget-boolean v10, Lcom/smartisanos/launcher/data/Constants;->SHOW_APP_NAME:Z

    if-eqz v10, :cond_12

    sget v10, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    sget v11, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    if-ne v10, v11, :cond_12

    .line 349
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/smartisanos/launcher/animations/CellAnimation;->mCell:Lcom/smartisanos/launcher/view/Cell;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/smartisanos/launcher/view/Cell;->enableShowAppName(Z)V

    .line 351
    :cond_12
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 352
    .local v27, "parameters":Ljava/util/ArrayList;
    new-instance v36, Lcom/smartisanos/smengine/AnimationTimeLine;

    .end local v36    # "timeLine":Lcom/smartisanos/smengine/AnimationTimeLine;
    invoke-direct/range {v36 .. v36}, Lcom/smartisanos/smengine/AnimationTimeLine;-><init>()V

    .line 353
    .restart local v36    # "timeLine":Lcom/smartisanos/smengine/AnimationTimeLine;
    move-object/from16 v0, v27

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v10

    sget-object v11, Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;->RELAYOUT_BY_UP:Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;

    move/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v10, v11, v0, v1}, Lcom/smartisanos/launcher/view/DockView;->handleAnimation(Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;FLjava/util/List;)V

    .line 355
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v10

    sget-object v11, Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;->CELL_BROADED:Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;

    move/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v10, v11, v0, v1}, Lcom/smartisanos/launcher/view/DockView;->handleAnimation(Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;FLjava/util/List;)V

    .line 356
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/smartisanos/launcher/animations/CellAnimation;->mCell:Lcom/smartisanos/launcher/view/Cell;

    move-object/from16 v0, v36

    move/from16 v1, p2

    invoke-static {v0, v10, v1}, Lcom/smartisanos/launcher/view/CellConvertAnimation;->ConvertAnimSlotToDock(Lcom/smartisanos/smengine/AnimationTimeLine;Lcom/smartisanos/launcher/view/Cell;F)V

    goto/16 :goto_3

    .line 155
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setIsCancelAction(Z)V
    .locals 4
    .param p1, "flag"    # Z

    .prologue
    .line 48
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/launcher/animations/CellAnimation;->log:Lcom/smartisanos/launcher/LOG;

    const-string v1, "DEBUG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setIsCancelAction flag ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :cond_0
    iput-boolean p1, p0, Lcom/smartisanos/launcher/animations/CellAnimation;->isCancelAction:Z

    .line 50
    return-void
.end method

.method public stopRock(Lcom/smartisanos/smengine/AnimationTimeLine;F)V
    .locals 5
    .param p1, "timeLine"    # Lcom/smartisanos/smengine/AnimationTimeLine;
    .param p2, "time"    # F

    .prologue
    .line 68
    if-nez p1, :cond_0

    .line 69
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "stop rock need time line !"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 71
    :cond_0
    sget-boolean v1, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/smartisanos/launcher/animations/CellAnimation;->log:Lcom/smartisanos/launcher/LOG;

    const-string v2, "DEBUG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stopRock set isPageCellInRockStatus == false, cell "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/smartisanos/launcher/animations/CellAnimation;->mCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Cell;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :cond_1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/CellAnimation;->emergencyBrakeWhenCellIsRock()V

    .line 73
    iget-boolean v1, p0, Lcom/smartisanos/launcher/animations/CellAnimation;->isCancelAction:Z

    if-eqz v1, :cond_3

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .local v0, "list":Ljava/util/ArrayList;
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    sget-object v1, Lcom/smartisanos/launcher/animations/CellAnimation$CELL_ANIMATION;->BACK_TO_PARENT_VIEW:Lcom/smartisanos/launcher/animations/CellAnimation$CELL_ANIMATION;

    invoke-virtual {p0, v1, p2, v0}, Lcom/smartisanos/launcher/animations/CellAnimation;->handleAnimation(Lcom/smartisanos/launcher/animations/CellAnimation$CELL_ANIMATION;FLjava/util/ArrayList;)V

    .line 80
    .end local v0    # "list":Ljava/util/ArrayList;
    :cond_2
    :goto_0
    return-void

    .line 78
    :cond_3
    sget-boolean v1, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/smartisanos/launcher/animations/CellAnimation;->log:Lcom/smartisanos/launcher/LOG;

    const-string v2, "DEBUG"

    const-string v3, "isCancelAction is false !"

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
