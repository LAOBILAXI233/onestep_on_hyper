.class Lcom/smartisanos/launcher/animations/CellAnimation$RockAnimationListener;
.super Lcom/smartisanos/smengine/Animation$AnimationListener;
.source "CellAnimation.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/animations/CellAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RockAnimationListener"
.end annotation


.field final interval_time:F

.field private loc:Lcom/smartisanos/smengine/math/Vector3f;

.field final offset:F

.field final rockAngle:F

.field final synthetic this$0:Lcom/smartisanos/launcher/animations/CellAnimation;


.method public constructor <init>(Lcom/smartisanos/launcher/animations/CellAnimation;Lcom/smartisanos/smengine/math/Vector3f;)V
    .locals 2
    .param p1, "this$0"    # Lcom/smartisanos/launcher/animations/CellAnimation;
    .param p2, "location"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    const/high16 v1, 0x40000000    # 2.0f

    .line 88
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/CellAnimation$RockAnimationListener;->this$0:Lcom/smartisanos/launcher/animations/CellAnimation;

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartisanos/launcher/animations/CellAnimation$RockAnimationListener;->loc:Lcom/smartisanos/smengine/math/Vector3f;

    .line 84
    iput v1, p0, Lcom/smartisanos/launcher/animations/CellAnimation$RockAnimationListener;->rockAngle:F

    .line 85
    iput v1, p0, Lcom/smartisanos/launcher/animations/CellAnimation$RockAnimationListener;->offset:F

    .line 86
    const v0, 0x3d8f5c29    # 0.07f

    iput v0, p0, Lcom/smartisanos/launcher/animations/CellAnimation$RockAnimationListener;->interval_time:F

    .line 89
    iput-object p2, p0, Lcom/smartisanos/launcher/animations/CellAnimation$RockAnimationListener;->loc:Lcom/smartisanos/smengine/math/Vector3f;

    .line 90
    return-void
.end method


.method public onComplete()V
    .locals 14

    .prologue
    .line 94
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/CellAnimation$RockAnimationListener;->this$0:Lcom/smartisanos/launcher/animations/CellAnimation;

    invoke-static {v4}, Lcom/smartisanos/launcher/animations/CellAnimation;->access$000(Lcom/smartisanos/launcher/animations/CellAnimation;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 95
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/CellAnimation$RockAnimationListener;->this$0:Lcom/smartisanos/launcher/animations/CellAnimation;

    invoke-static {v4}, Lcom/smartisanos/launcher/animations/CellAnimation;->access$100(Lcom/smartisanos/launcher/animations/CellAnimation;)Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/smengine/AnimationTimeLine;->clearAllAnmiation()V

    .line 96
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/CellAnimation$RockAnimationListener;->this$0:Lcom/smartisanos/launcher/animations/CellAnimation;

    new-instance v5, Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-direct {v5}, Lcom/smartisanos/smengine/AnimationTimeLine;-><init>()V

    invoke-static {v4, v5}, Lcom/smartisanos/launcher/animations/CellAnimation;->access$102(Lcom/smartisanos/launcher/animations/CellAnimation;Lcom/smartisanos/smengine/AnimationTimeLine;)Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 98
    new-instance v0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    iget-object v4, p0, Lcom/smartisanos/launcher/animations/CellAnimation$RockAnimationListener;->this$0:Lcom/smartisanos/launcher/animations/CellAnimation;

    invoke-static {v4}, Lcom/smartisanos/launcher/animations/CellAnimation;->access$200(Lcom/smartisanos/launcher/animations/CellAnimation;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 99
    .local v0, "cell_move_anim_1":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    const v4, 0x3d8f5c29    # 0.07f

    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 100
    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 101
    const/4 v1, 0x0

    iget-object v4, p0, Lcom/smartisanos/launcher/animations/CellAnimation$RockAnimationListener;->loc:Lcom/smartisanos/smengine/math/Vector3f;

    iget v4, v4, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    const/high16 v5, 0x40000000    # 2.0f

    sub-float v2, v4, v5

    iget-object v4, p0, Lcom/smartisanos/launcher/animations/CellAnimation$RockAnimationListener;->loc:Lcom/smartisanos/smengine/math/Vector3f;

    iget v4, v4, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    const/high16 v5, 0x40000000    # 2.0f

    add-float v3, v4, v5

    iget-object v4, p0, Lcom/smartisanos/launcher/animations/CellAnimation$RockAnimationListener;->loc:Lcom/smartisanos/smengine/math/Vector3f;

    iget v4, v4, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    iget-object v5, p0, Lcom/smartisanos/launcher/animations/CellAnimation$RockAnimationListener;->loc:Lcom/smartisanos/smengine/math/Vector3f;

    iget v5, v5, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    const/high16 v6, 0x40000000    # 2.0f

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/smartisanos/launcher/animations/CellAnimation$RockAnimationListener;->loc:Lcom/smartisanos/smengine/math/Vector3f;

    iget v6, v6, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    const/high16 v7, 0x40000000    # 2.0f

    sub-float/2addr v6, v7

    iget-object v7, p0, Lcom/smartisanos/launcher/animations/CellAnimation$RockAnimationListener;->loc:Lcom/smartisanos/smengine/math/Vector3f;

    iget v7, v7, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-virtual/range {v0 .. v7}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFF)V

    .line 102
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/CellAnimation$RockAnimationListener;->this$0:Lcom/smartisanos/launcher/animations/CellAnimation;

    invoke-static {v4}, Lcom/smartisanos/launcher/animations/CellAnimation;->access$100(Lcom/smartisanos/launcher/animations/CellAnimation;)Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v0}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 105
    new-instance v12, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    iget-object v4, p0, Lcom/smartisanos/launcher/animations/CellAnimation$RockAnimationListener;->this$0:Lcom/smartisanos/launcher/animations/CellAnimation;

    invoke-static {v4}, Lcom/smartisanos/launcher/animations/CellAnimation;->access$200(Lcom/smartisanos/launcher/animations/CellAnimation;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v4

    invoke-direct {v12, v4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 106
    .local v12, "rock_step2_anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    const v4, 0x3d8f5c29    # 0.07f

    invoke-virtual {v12, v4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 107
    const/16 v4, 0xc

    invoke-virtual {v12, v4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 108
    const/4 v4, 0x2

    new-instance v5, Ljava/lang/Float;

    const v6, -0x42f105cb

    invoke-direct {v5, v6}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    new-instance v6, Ljava/lang/Float;

    const v7, 0x3d0efa35

    invoke-direct {v6, v7}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {v12, v4, v5, v6}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFF)V

    .line 109
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/CellAnimation$RockAnimationListener;->this$0:Lcom/smartisanos/launcher/animations/CellAnimation;

    invoke-static {v4}, Lcom/smartisanos/launcher/animations/CellAnimation;->access$100(Lcom/smartisanos/launcher/animations/CellAnimation;)Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v4

    const v5, 0x3d8f5c29    # 0.07f

    invoke-virtual {v4, v5, v12}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 111
    new-instance v1, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    iget-object v4, p0, Lcom/smartisanos/launcher/animations/CellAnimation$RockAnimationListener;->this$0:Lcom/smartisanos/launcher/animations/CellAnimation;

    invoke-static {v4}, Lcom/smartisanos/launcher/animations/CellAnimation;->access$200(Lcom/smartisanos/launcher/animations/CellAnimation;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 112
    .local v1, "cell_move_anim_2":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    const v4, 0x3d8f5c29    # 0.07f

    invoke-virtual {v1, v4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 113
    const/16 v4, 0xc

    invoke-virtual {v1, v4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 114
    const/4 v2, 0x0

    iget-object v4, p0, Lcom/smartisanos/launcher/animations/CellAnimation$RockAnimationListener;->loc:Lcom/smartisanos/smengine/math/Vector3f;

    iget v4, v4, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    const/high16 v5, 0x40000000    # 2.0f

    add-float v3, v4, v5

    iget-object v4, p0, Lcom/smartisanos/launcher/animations/CellAnimation$RockAnimationListener;->loc:Lcom/smartisanos/smengine/math/Vector3f;

    iget v4, v4, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    const/high16 v5, 0x40000000    # 2.0f

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/smartisanos/launcher/animations/CellAnimation$RockAnimationListener;->loc:Lcom/smartisanos/smengine/math/Vector3f;

    iget v5, v5, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    iget-object v6, p0, Lcom/smartisanos/launcher/animations/CellAnimation$RockAnimationListener;->loc:Lcom/smartisanos/smengine/math/Vector3f;

    iget v6, v6, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    const/high16 v7, 0x40000000    # 2.0f

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/smartisanos/launcher/animations/CellAnimation$RockAnimationListener;->loc:Lcom/smartisanos/smengine/math/Vector3f;

    iget v7, v7, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    const/high16 v8, 0x40000000    # 2.0f

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/smartisanos/launcher/animations/CellAnimation$RockAnimationListener;->loc:Lcom/smartisanos/smengine/math/Vector3f;

    iget v8, v8, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-virtual/range {v1 .. v8}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFF)V

    .line 115
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/CellAnimation$RockAnimationListener;->this$0:Lcom/smartisanos/launcher/animations/CellAnimation;

    invoke-static {v4}, Lcom/smartisanos/launcher/animations/CellAnimation;->access$100(Lcom/smartisanos/launcher/animations/CellAnimation;)Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v4

    const v5, 0x3d8f5c29    # 0.07f

    invoke-virtual {v4, v5, v1}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 118
    new-instance v2, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    iget-object v4, p0, Lcom/smartisanos/launcher/animations/CellAnimation$RockAnimationListener;->this$0:Lcom/smartisanos/launcher/animations/CellAnimation;

    invoke-static {v4}, Lcom/smartisanos/launcher/animations/CellAnimation;->access$200(Lcom/smartisanos/launcher/animations/CellAnimation;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 119
    .local v2, "cell_move_anim_3":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    const v4, 0x3d8f5c29    # 0.07f

    invoke-virtual {v2, v4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 120
    const/16 v4, 0xc

    invoke-virtual {v2, v4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 121
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/smartisanos/launcher/animations/CellAnimation$RockAnimationListener;->loc:Lcom/smartisanos/smengine/math/Vector3f;

    iget v4, v4, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    const/high16 v5, 0x40000000    # 2.0f

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/smartisanos/launcher/animations/CellAnimation$RockAnimationListener;->loc:Lcom/smartisanos/smengine/math/Vector3f;

    iget v5, v5, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    const/high16 v6, 0x40000000    # 2.0f

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/smartisanos/launcher/animations/CellAnimation$RockAnimationListener;->loc:Lcom/smartisanos/smengine/math/Vector3f;

    iget v6, v6, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    iget-object v7, p0, Lcom/smartisanos/launcher/animations/CellAnimation$RockAnimationListener;->loc:Lcom/smartisanos/smengine/math/Vector3f;

    iget v7, v7, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    const/high16 v8, 0x40000000    # 2.0f

    sub-float/2addr v7, v8

    iget-object v8, p0, Lcom/smartisanos/launcher/animations/CellAnimation$RockAnimationListener;->loc:Lcom/smartisanos/smengine/math/Vector3f;

    iget v8, v8, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    const/high16 v9, 0x40000000    # 2.0f

    sub-float/2addr v8, v9

    iget-object v9, p0, Lcom/smartisanos/launcher/animations/CellAnimation$RockAnimationListener;->loc:Lcom/smartisanos/smengine/math/Vector3f;

    iget v9, v9, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-virtual/range {v2 .. v9}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFF)V

    .line 122
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/CellAnimation$RockAnimationListener;->this$0:Lcom/smartisanos/launcher/animations/CellAnimation;

    invoke-static {v4}, Lcom/smartisanos/launcher/animations/CellAnimation;->access$100(Lcom/smartisanos/launcher/animations/CellAnimation;)Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v4

    const v5, 0x3e0f5c29    # 0.14f

    invoke-virtual {v4, v5, v2}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 125
    new-instance v13, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    iget-object v4, p0, Lcom/smartisanos/launcher/animations/CellAnimation$RockAnimationListener;->this$0:Lcom/smartisanos/launcher/animations/CellAnimation;

    invoke-static {v4}, Lcom/smartisanos/launcher/animations/CellAnimation;->access$200(Lcom/smartisanos/launcher/animations/CellAnimation;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v4

    invoke-direct {v13, v4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 126
    .local v13, "rock_step4_anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    const v4, 0x3d8f5c29    # 0.07f

    invoke-virtual {v13, v4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 127
    const/16 v4, 0xc

    invoke-virtual {v13, v4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 128
    const/4 v4, 0x2

    new-instance v5, Ljava/lang/Float;

    const v6, 0x3d0efa35

    invoke-direct {v5, v6}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    new-instance v6, Ljava/lang/Float;

    const v7, -0x42f105cb

    invoke-direct {v6, v7}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {v13, v4, v5, v6}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFF)V

    .line 129
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/CellAnimation$RockAnimationListener;->this$0:Lcom/smartisanos/launcher/animations/CellAnimation;

    invoke-static {v4}, Lcom/smartisanos/launcher/animations/CellAnimation;->access$100(Lcom/smartisanos/launcher/animations/CellAnimation;)Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v4

    const v5, 0x3e570a3e    # 0.21000001f

    invoke-virtual {v4, v5, v13}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 130
    new-instance v3, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    iget-object v4, p0, Lcom/smartisanos/launcher/animations/CellAnimation$RockAnimationListener;->this$0:Lcom/smartisanos/launcher/animations/CellAnimation;

    invoke-static {v4}, Lcom/smartisanos/launcher/animations/CellAnimation;->access$200(Lcom/smartisanos/launcher/animations/CellAnimation;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 131
    .local v3, "cell_move_anim_4":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    const v4, 0x3d8f5c29    # 0.07f

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 132
    const/16 v4, 0xf

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 133
    const/4 v4, 0x0

    iget-object v5, p0, Lcom/smartisanos/launcher/animations/CellAnimation$RockAnimationListener;->loc:Lcom/smartisanos/smengine/math/Vector3f;

    iget v5, v5, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    const/high16 v6, 0x40000000    # 2.0f

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/smartisanos/launcher/animations/CellAnimation$RockAnimationListener;->loc:Lcom/smartisanos/smengine/math/Vector3f;

    iget v6, v6, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    const/high16 v7, 0x40000000    # 2.0f

    sub-float/2addr v6, v7

    iget-object v7, p0, Lcom/smartisanos/launcher/animations/CellAnimation$RockAnimationListener;->loc:Lcom/smartisanos/smengine/math/Vector3f;

    iget v7, v7, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    iget-object v8, p0, Lcom/smartisanos/launcher/animations/CellAnimation$RockAnimationListener;->loc:Lcom/smartisanos/smengine/math/Vector3f;

    iget v8, v8, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    const/high16 v9, 0x40000000    # 2.0f

    sub-float/2addr v8, v9

    iget-object v9, p0, Lcom/smartisanos/launcher/animations/CellAnimation$RockAnimationListener;->loc:Lcom/smartisanos/smengine/math/Vector3f;

    iget v9, v9, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    const/high16 v10, 0x40000000    # 2.0f

    add-float/2addr v9, v10

    iget-object v10, p0, Lcom/smartisanos/launcher/animations/CellAnimation$RockAnimationListener;->loc:Lcom/smartisanos/smengine/math/Vector3f;

    iget v10, v10, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-virtual/range {v3 .. v10}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFF)V

    .line 134
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/CellAnimation$RockAnimationListener;->this$0:Lcom/smartisanos/launcher/animations/CellAnimation;

    invoke-static {v4}, Lcom/smartisanos/launcher/animations/CellAnimation;->access$100(Lcom/smartisanos/launcher/animations/CellAnimation;)Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v4

    const v5, 0x3e570a3e    # 0.21000001f

    invoke-virtual {v4, v5, v3}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 136
    new-instance v11, Lcom/smartisanos/launcher/animations/CellAnimation$RockAnimationListener;

    iget-object v4, p0, Lcom/smartisanos/launcher/animations/CellAnimation$RockAnimationListener;->this$0:Lcom/smartisanos/launcher/animations/CellAnimation;

    iget-object v5, p0, Lcom/smartisanos/launcher/animations/CellAnimation$RockAnimationListener;->loc:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v11, v4, v5}, Lcom/smartisanos/launcher/animations/CellAnimation$RockAnimationListener;-><init>(Lcom/smartisanos/launcher/animations/CellAnimation;Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 137
    .local v11, "listener":Lcom/smartisanos/launcher/animations/CellAnimation$RockAnimationListener;
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/CellAnimation$RockAnimationListener;->this$0:Lcom/smartisanos/launcher/animations/CellAnimation;

    invoke-static {v4}, Lcom/smartisanos/launcher/animations/CellAnimation;->access$100(Lcom/smartisanos/launcher/animations/CellAnimation;)Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v4

    invoke-virtual {v4, v11}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 138
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/CellAnimation$RockAnimationListener;->this$0:Lcom/smartisanos/launcher/animations/CellAnimation;

    invoke-static {v4}, Lcom/smartisanos/launcher/animations/CellAnimation;->access$100(Lcom/smartisanos/launcher/animations/CellAnimation;)Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/smengine/AnimationTimeLine;->start()V

    .line 143
    .end local v0    # "cell_move_anim_1":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    .end local v1    # "cell_move_anim_2":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    .end local v2    # "cell_move_anim_3":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    .end local v3    # "cell_move_anim_4":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    .end local v11    # "listener":Lcom/smartisanos/launcher/animations/CellAnimation$RockAnimationListener;
    .end local v12    # "rock_step2_anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    .end local v13    # "rock_step4_anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    :goto_0
    return-void

    .line 140
    :cond_0
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/CellAnimation$RockAnimationListener;->this$0:Lcom/smartisanos/launcher/animations/CellAnimation;

    invoke-static {v4}, Lcom/smartisanos/launcher/animations/CellAnimation;->access$100(Lcom/smartisanos/launcher/animations/CellAnimation;)Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/smengine/AnimationTimeLine;->clearAllAnmiation()V

    .line 141
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/CellAnimation$RockAnimationListener;->this$0:Lcom/smartisanos/launcher/animations/CellAnimation;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/smartisanos/launcher/animations/CellAnimation;->access$102(Lcom/smartisanos/launcher/animations/CellAnimation;Lcom/smartisanos/smengine/AnimationTimeLine;)Lcom/smartisanos/smengine/AnimationTimeLine;

    goto :goto_0
.end method
