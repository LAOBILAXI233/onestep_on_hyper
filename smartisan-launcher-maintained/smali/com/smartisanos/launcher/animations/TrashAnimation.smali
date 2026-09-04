.class public Lcom/smartisanos/launcher/animations/TrashAnimation;
.super Lcom/smartisanos/launcher/animations/IAnimation;
.source "TrashAnimation.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;
    }
.end annotation


.field private static final log:Lcom/smartisanos/launcher/LOG;

.field private static trashAppearAnimationRunning:Z

.field private static trashFallingAnimationRunning:Z

.field private static trashReduceAnimationRunning:Z


.field private mView:Lcom/smartisanos/launcher/view/TrashView;

.field public trashFloatUpAnim:Lcom/smartisanos/smengine/AnimationTimeLine;


.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 20
    const-class v0, Lcom/smartisanos/launcher/animations/TrashAnimation;

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/animations/TrashAnimation;->log:Lcom/smartisanos/launcher/LOG;

    .line 24
    sput-boolean v1, Lcom/smartisanos/launcher/animations/TrashAnimation;->trashAppearAnimationRunning:Z

    .line 25
    sput-boolean v1, Lcom/smartisanos/launcher/animations/TrashAnimation;->trashFallingAnimationRunning:Z

    .line 26
    sput-boolean v1, Lcom/smartisanos/launcher/animations/TrashAnimation;->trashReduceAnimationRunning:Z

    return-void
.end method

.method public constructor <init>(Lcom/smartisanos/launcher/view/TrashView;)V
    .locals 1
    .param p1, "tv"    # Lcom/smartisanos/launcher/view/TrashView;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/IAnimation;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartisanos/launcher/animations/TrashAnimation;->trashFloatUpAnim:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 36
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/TrashAnimation;->mView:Lcom/smartisanos/launcher/view/TrashView;

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/smartisanos/launcher/animations/TrashAnimation;)Lcom/smartisanos/launcher/view/TrashView;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/animations/TrashAnimation;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/TrashAnimation;->mView:Lcom/smartisanos/launcher/view/TrashView;

    return-object v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 19
    sput-boolean p0, Lcom/smartisanos/launcher/animations/TrashAnimation;->trashAppearAnimationRunning:Z

    return p0
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 19
    sput-boolean p0, Lcom/smartisanos/launcher/animations/TrashAnimation;->trashFallingAnimationRunning:Z

    return p0
.end method

.method static synthetic access$302(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 19
    sput-boolean p0, Lcom/smartisanos/launcher/animations/TrashAnimation;->trashReduceAnimationRunning:Z

    return p0
.end method


.method public handleAnimation(Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;FLjava/util/ArrayList;)V
    .locals 16
    .param p1, "animation"    # Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;
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
    .line 47
    .local p3, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    sget-boolean v3, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/smartisanos/launcher/animations/TrashAnimation;->log:Lcom/smartisanos/launcher/LOG;

    const-string v4, "DEBUG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleAnimation ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :cond_0
    sget-object v3, Lcom/smartisanos/launcher/animations/TrashAnimation$5;->$SwitchMap$com$smartisanos$launcher$animations$TrashAnimation$TRASH_ANIMATION:[I

    invoke-virtual/range {p1 .. p1}, Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 181
    :cond_1
    :goto_0
    return-void

    .line 51
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/animations/TrashAnimation;->mView:Lcom/smartisanos/launcher/view/TrashView;

    sget-object v4, Lcom/smartisanos/launcher/view/TrashView$STATUS;->APPEAR:Lcom/smartisanos/launcher/view/TrashView$STATUS;

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/view/TrashView;->getStatus(Lcom/smartisanos/launcher/view/TrashView$STATUS;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-boolean v3, Lcom/smartisanos/launcher/animations/TrashAnimation;->trashAppearAnimationRunning:Z

    if-nez v3, :cond_1

    .line 54
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 55
    .local v13, "timeLine":Lcom/smartisanos/smengine/AnimationTimeLine;
    const/4 v3, 0x1

    sput-boolean v3, Lcom/smartisanos/launcher/animations/TrashAnimation;->trashAppearAnimationRunning:Z

    .line 57
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/animations/TrashAnimation;->mView:Lcom/smartisanos/launcher/view/TrashView;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/TrashView;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v11

    .line 58
    .local v11, "from":Lcom/smartisanos/smengine/math/Vector3f;
    sget v3, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    invoke-static {v3}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v3

    iget v15, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->trash_display_height:F

    .line 59
    .local v15, "trashHeight":F
    new-instance v1, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/animations/TrashAnimation;->mView:Lcom/smartisanos/launcher/view/TrashView;

    invoke-direct {v1, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 60
    .local v1, "trash_anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    const v3, 0x3e4ccccd    # 0.2f

    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 61
    const/16 v3, 0xe

    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 62
    const/4 v2, 0x0

    iget v3, v11, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v4, v11, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v5, v11, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    iget v6, v11, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v7, v11, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    add-float/2addr v7, v15

    iget v8, v11, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-virtual/range {v1 .. v8}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFF)V

    .line 63
    new-instance v3, Lcom/smartisanos/launcher/animations/TrashAnimation$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/smartisanos/launcher/animations/TrashAnimation$1;-><init>(Lcom/smartisanos/launcher/animations/TrashAnimation;)V

    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 70
    const/4 v3, 0x0

    invoke-virtual {v13, v3, v1}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    goto :goto_0

    .line 75
    .end local v1    # "trash_anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    .end local v11    # "from":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v13    # "timeLine":Lcom/smartisanos/smengine/AnimationTimeLine;
    .end local v15    # "trashHeight":F
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/animations/TrashAnimation;->mView:Lcom/smartisanos/launcher/view/TrashView;

    sget-object v4, Lcom/smartisanos/launcher/view/TrashView$STATUS;->APPEAR:Lcom/smartisanos/launcher/view/TrashView$STATUS;

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/view/TrashView;->getStatus(Lcom/smartisanos/launcher/view/TrashView$STATUS;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-boolean v3, Lcom/smartisanos/launcher/animations/TrashAnimation;->trashFallingAnimationRunning:Z

    if-eqz v3, :cond_3

    .line 76
    :cond_2
    sget-boolean v3, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v3, :cond_1

    sget-object v3, Lcom/smartisanos/launcher/animations/TrashAnimation;->log:Lcom/smartisanos/launcher/LOG;

    const-string v4, "DEBUG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "trash is not show now, trashFallingAnimationRunning ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/smartisanos/launcher/animations/TrashAnimation;->trashFallingAnimationRunning:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "], STATUS.APPEAR ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/smartisanos/launcher/animations/TrashAnimation;->mView:Lcom/smartisanos/launcher/view/TrashView;

    sget-object v7, Lcom/smartisanos/launcher/view/TrashView$STATUS;->APPEAR:Lcom/smartisanos/launcher/view/TrashView$STATUS;

    .line 77
    invoke-virtual {v6, v7}, Lcom/smartisanos/launcher/view/TrashView;->getStatus(Lcom/smartisanos/launcher/view/TrashView$STATUS;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 76
    invoke-virtual {v3, v4, v5}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 80
    :cond_3
    const/4 v13, 0x0

    .line 82
    .restart local v13    # "timeLine":Lcom/smartisanos/smengine/AnimationTimeLine;
    const/4 v3, 0x0

    :try_start_0
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/smartisanos/smengine/AnimationTimeLine;

    move-object v13, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 84
    :goto_1
    if-nez v13, :cond_4

    .line 85
    sget-boolean v3, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v3, :cond_1

    sget-object v3, Lcom/smartisanos/launcher/animations/TrashAnimation;->log:Lcom/smartisanos/launcher/LOG;

    const-string v4, "DEBUG"

    const-string v5, "TRASH_FALL break by time line is null !"

    invoke-virtual {v3, v4, v5}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 88
    :cond_4
    const/4 v3, 0x1

    sput-boolean v3, Lcom/smartisanos/launcher/animations/TrashAnimation;->trashFallingAnimationRunning:Z

    .line 89
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/animations/TrashAnimation;->mView:Lcom/smartisanos/launcher/view/TrashView;

    sget-object v4, Lcom/smartisanos/launcher/view/TrashView$STATUS;->TOUCH_UP_AND_OBJECT_IN_TRASH:Lcom/smartisanos/launcher/view/TrashView$STATUS;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/smartisanos/launcher/view/TrashView;->setStatus(Lcom/smartisanos/launcher/view/TrashView$STATUS;Z)V

    .line 90
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/animations/TrashAnimation;->mView:Lcom/smartisanos/launcher/view/TrashView;

    sget-object v4, Lcom/smartisanos/launcher/view/TrashView$STATUS;->OBJECT_IN_TRASH:Lcom/smartisanos/launcher/view/TrashView$STATUS;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/smartisanos/launcher/view/TrashView;->setStatus(Lcom/smartisanos/launcher/view/TrashView$STATUS;Z)V

    .line 92
    new-instance v2, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/animations/TrashAnimation;->mView:Lcom/smartisanos/launcher/view/TrashView;

    invoke-direct {v2, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 93
    .local v2, "trash_fall_anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/animations/TrashAnimation;->mView:Lcom/smartisanos/launcher/view/TrashView;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/TrashView;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v11

    .line 94
    .restart local v11    # "from":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v3

    sget v4, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/smartisanos/launcher/view/DockView;->getTrashLocationByMode(IZ)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v14

    .line 95
    .local v14, "to":Lcom/smartisanos/smengine/math/Vector3f;
    const v3, 0x3e99999a    # 0.3f

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 96
    const/16 v3, 0xe

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 98
    const/4 v3, 0x0

    iget v4, v11, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v5, v11, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v6, v11, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    iget v7, v11, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v8, v14, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v9, v14, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-virtual/range {v2 .. v9}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFF)V

    .line 99
    new-instance v3, Lcom/smartisanos/launcher/animations/TrashAnimation$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/smartisanos/launcher/animations/TrashAnimation$2;-><init>(Lcom/smartisanos/launcher/animations/TrashAnimation;)V

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 111
    const/4 v3, 0x0

    invoke-virtual {v13, v3, v2}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    goto/16 :goto_0

    .line 116
    .end local v2    # "trash_fall_anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    .end local v11    # "from":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v13    # "timeLine":Lcom/smartisanos/smengine/AnimationTimeLine;
    .end local v14    # "to":Lcom/smartisanos/smengine/math/Vector3f;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/animations/TrashAnimation;->mView:Lcom/smartisanos/launcher/view/TrashView;

    sget-object v4, Lcom/smartisanos/launcher/view/TrashView$STATUS;->FLOAT_UP:Lcom/smartisanos/launcher/view/TrashView$STATUS;

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/view/TrashView;->getStatus(Lcom/smartisanos/launcher/view/TrashView$STATUS;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 117
    sget-boolean v3, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v3, :cond_1

    sget-object v3, Lcom/smartisanos/launcher/animations/TrashAnimation;->log:Lcom/smartisanos/launcher/LOG;

    const-string v4, "DEBUG"

    const-string v5, "trash already enlarge !"

    invoke-virtual {v3, v4, v5}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 120
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/animations/TrashAnimation;->trashFloatUpAnim:Lcom/smartisanos/smengine/AnimationTimeLine;

    if-eqz v3, :cond_6

    .line 121
    sget-boolean v3, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v3, :cond_1

    sget-object v3, Lcom/smartisanos/launcher/animations/TrashAnimation;->log:Lcom/smartisanos/launcher/LOG;

    const-string v4, "DEBUG"

    const-string v5, "trashFloatUpAnim running !"

    invoke-virtual {v3, v4, v5}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 124
    :cond_6
    new-instance v3, Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-direct {v3}, Lcom/smartisanos/smengine/AnimationTimeLine;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/smartisanos/launcher/animations/TrashAnimation;->trashFloatUpAnim:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 125
    sget-boolean v3, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v3, :cond_7

    sget-object v3, Lcom/smartisanos/launcher/animations/TrashAnimation;->log:Lcom/smartisanos/launcher/LOG;

    const-string v4, "DEBUG"

    const-string v5, "TRASH_ENLARGE begin"

    invoke-virtual {v3, v4, v5}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :cond_7
    sget v3, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    invoke-static {v3}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v12

    .line 127
    .local v12, "prop":Lcom/smartisanos/launcher/data/LayoutProperty;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/animations/TrashAnimation;->mView:Lcom/smartisanos/launcher/view/TrashView;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/TrashView;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v11

    .line 128
    .restart local v11    # "from":Lcom/smartisanos/smengine/math/Vector3f;
    new-instance v14, Lcom/smartisanos/smengine/math/Vector3f;

    iget v3, v11, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v4, v11, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v5, v12, Lcom/smartisanos/launcher/data/LayoutProperty;->trash_float_up_height:F

    add-float/2addr v4, v5

    iget v5, v11, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-direct {v14, v3, v4, v5}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    .line 130
    .restart local v14    # "to":Lcom/smartisanos/smengine/math/Vector3f;
    new-instance v1, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/animations/TrashAnimation;->mView:Lcom/smartisanos/launcher/view/TrashView;

    invoke-direct {v1, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 131
    .restart local v1    # "trash_anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    const v3, 0x3dcccccd    # 0.1f

    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 132
    const/16 v3, 0xe

    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 133
    const/4 v4, 0x0

    iget v5, v11, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v6, v11, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v7, v11, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    iget v8, v14, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v9, v14, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v10, v14, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    move-object v3, v1

    invoke-virtual/range {v3 .. v10}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFF)V

    .line 134
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/animations/TrashAnimation;->trashFloatUpAnim:Lcom/smartisanos/smengine/AnimationTimeLine;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v1}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 135
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/animations/TrashAnimation;->trashFloatUpAnim:Lcom/smartisanos/smengine/AnimationTimeLine;

    new-instance v4, Lcom/smartisanos/launcher/animations/TrashAnimation$3;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/smartisanos/launcher/animations/TrashAnimation$3;-><init>(Lcom/smartisanos/launcher/animations/TrashAnimation;)V

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 142
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/animations/TrashAnimation;->trashFloatUpAnim:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/AnimationTimeLine;->start()V

    goto/16 :goto_0

    .line 147
    .end local v1    # "trash_anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    .end local v11    # "from":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v12    # "prop":Lcom/smartisanos/launcher/data/LayoutProperty;
    .end local v14    # "to":Lcom/smartisanos/smengine/math/Vector3f;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/animations/TrashAnimation;->mView:Lcom/smartisanos/launcher/view/TrashView;

    sget-object v4, Lcom/smartisanos/launcher/view/TrashView$STATUS;->FLOAT_UP:Lcom/smartisanos/launcher/view/TrashView$STATUS;

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/view/TrashView;->getStatus(Lcom/smartisanos/launcher/view/TrashView$STATUS;)Z

    move-result v3

    if-eqz v3, :cond_8

    sget-boolean v3, Lcom/smartisanos/launcher/animations/TrashAnimation;->trashReduceAnimationRunning:Z

    if-eqz v3, :cond_9

    .line 148
    :cond_8
    sget-boolean v3, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v3, :cond_1

    sget-object v3, Lcom/smartisanos/launcher/animations/TrashAnimation;->log:Lcom/smartisanos/launcher/LOG;

    const-string v4, "DEBUG"

    const-string v5, "trash already revert."

    invoke-virtual {v3, v4, v5}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 151
    :cond_9
    const/4 v13, 0x0

    .line 153
    .restart local v13    # "timeLine":Lcom/smartisanos/smengine/AnimationTimeLine;
    const/4 v3, 0x0

    :try_start_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/smartisanos/smengine/AnimationTimeLine;

    move-object v13, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 155
    :goto_2
    if-nez v13, :cond_a

    .line 156
    sget-object v3, Lcom/smartisanos/launcher/animations/TrashAnimation;->log:Lcom/smartisanos/launcher/LOG;

    const-string v4, "DEBUG"

    const-string v5, "TRASH_REDUCE break by time line is null !"

    invoke-virtual {v3, v4, v5}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 159
    :cond_a
    const/4 v3, 0x1

    sput-boolean v3, Lcom/smartisanos/launcher/animations/TrashAnimation;->trashReduceAnimationRunning:Z

    .line 160
    sget-boolean v3, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v3, :cond_b

    sget-object v3, Lcom/smartisanos/launcher/animations/TrashAnimation;->log:Lcom/smartisanos/launcher/LOG;

    const-string v4, "DEBUG"

    const-string v5, "TRASH_REDUCE begin"

    invoke-virtual {v3, v4, v5}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    :cond_b
    new-instance v1, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/animations/TrashAnimation;->mView:Lcom/smartisanos/launcher/view/TrashView;

    invoke-direct {v1, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 162
    .restart local v1    # "trash_anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    const v3, 0x3e4ccccd    # 0.2f

    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 163
    const/16 v3, 0xe

    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 164
    sget v3, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    invoke-static {v3}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v12

    .line 165
    .restart local v12    # "prop":Lcom/smartisanos/launcher/data/LayoutProperty;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/animations/TrashAnimation;->mView:Lcom/smartisanos/launcher/view/TrashView;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/TrashView;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v11

    .line 166
    .restart local v11    # "from":Lcom/smartisanos/smengine/math/Vector3f;
    new-instance v14, Lcom/smartisanos/smengine/math/Vector3f;

    iget v3, v11, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v4, v11, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v5, v12, Lcom/smartisanos/launcher/data/LayoutProperty;->trash_float_up_height:F

    sub-float/2addr v4, v5

    iget v5, v11, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-direct {v14, v3, v4, v5}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    .line 167
    .restart local v14    # "to":Lcom/smartisanos/smengine/math/Vector3f;
    const/4 v4, 0x0

    iget v5, v11, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v6, v11, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v7, v11, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    iget v8, v14, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v9, v14, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v10, v14, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    move-object v3, v1

    invoke-virtual/range {v3 .. v10}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFF)V

    .line 168
    new-instance v3, Lcom/smartisanos/launcher/animations/TrashAnimation$4;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/smartisanos/launcher/animations/TrashAnimation$4;-><init>(Lcom/smartisanos/launcher/animations/TrashAnimation;)V

    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 175
    const/4 v3, 0x0

    invoke-virtual {v13, v3, v1}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    goto/16 :goto_0

    .line 154
    .end local v1    # "trash_anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    .end local v11    # "from":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v12    # "prop":Lcom/smartisanos/launcher/data/LayoutProperty;
    .end local v14    # "to":Lcom/smartisanos/smengine/math/Vector3f;
    :catch_0
    move-exception v3

    goto :goto_2

    .line 83
    :catch_1
    move-exception v3

    goto/16 :goto_1

    .line 48
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public isAnimationRunning()Z
    .locals 1

    .prologue
    .line 40
    sget-boolean v0, Lcom/smartisanos/launcher/animations/TrashAnimation;->trashAppearAnimationRunning:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/smartisanos/launcher/animations/TrashAnimation;->trashReduceAnimationRunning:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
