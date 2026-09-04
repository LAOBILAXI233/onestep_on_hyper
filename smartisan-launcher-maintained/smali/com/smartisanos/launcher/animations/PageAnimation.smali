.class public Lcom/smartisanos/launcher/animations/PageAnimation;
.super Lcom/smartisanos/launcher/animations/IAnimation;
.source "PageAnimation.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;
    }
.end annotation


.field private static final log:Lcom/smartisanos/launcher/LOG;


.field private mPage:Lcom/smartisanos/launcher/view/Page;


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/smartisanos/launcher/animations/PageAnimation;

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/animations/PageAnimation;->log:Lcom/smartisanos/launcher/LOG;

    return-void
.end method

.method public constructor <init>(Lcom/smartisanos/launcher/view/Page;)V
    .locals 0
    .param p1, "page"    # Lcom/smartisanos/launcher/view/Page;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/IAnimation;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/PageAnimation;->mPage:Lcom/smartisanos/launcher/view/Page;

    .line 37
    return-void
.end method


.method public handleAnimation(Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;FLjava/util/ArrayList;)V
    .locals 27
    .param p1, "animation"    # Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;
    .param p2, "time"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;",
            "F",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p3, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    sget-boolean v3, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/smartisanos/launcher/animations/PageAnimation;->log:Lcom/smartisanos/launcher/LOG;

    const-string v4, "DEBUG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleAnimation ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :cond_0
    sget-object v3, Lcom/smartisanos/launcher/animations/PageAnimation$1;->$SwitchMap$com$smartisanos$launcher$animations$PageAnimation$PAGE_ANIMATION:[I

    invoke-virtual/range {p1 .. p1}, Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 135
    :cond_1
    :goto_0
    return-void

    .line 53
    :pswitch_0
    if-eqz p3, :cond_1

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_1

    .line 56
    const/16 v23, 0x0

    .line 57
    .local v23, "time_line":Lcom/smartisanos/smengine/AnimationTimeLine;
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/smartisanos/smengine/AnimationTimeLine;

    if-eqz v3, :cond_1

    .line 58
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    .end local v23    # "time_line":Lcom/smartisanos/smengine/AnimationTimeLine;
    check-cast v23, Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 62
    .restart local v23    # "time_line":Lcom/smartisanos/smengine/AnimationTimeLine;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/animations/PageAnimation;->mPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Page;->getTitleView()Lcom/smartisanos/launcher/view/TitleView;

    move-result-object v25

    .line 63
    .local v25, "titleView":Lcom/smartisanos/launcher/view/TitleView;
    if-nez v25, :cond_2

    .line 64
    sget-boolean v3, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v3, :cond_1

    sget-object v3, Lcom/smartisanos/launcher/animations/PageAnimation;->log:Lcom/smartisanos/launcher/LOG;

    const-string v4, "DEBUG"

    const-string v5, "error handleAnimation SHOW_PAGE_TITLE, mTitleAreaNode is null"

    invoke-virtual {v3, v4, v5}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 67
    :cond_2
    const/4 v3, 0x2

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    .line 68
    .local v14, "currentGroupIndexI":Ljava/lang/Integer;
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 69
    .local v13, "currentGroupIndex":I
    const/4 v3, 0x3

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    .line 70
    .local v22, "targetModeI":Ljava/lang/Integer;
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v21

    .line 71
    .local v21, "targetMode":I
    const/4 v15, 0x0

    .line 72
    .local v15, "delay":F
    const/4 v3, 0x2

    move/from16 v0, v21

    if-eq v0, v3, :cond_3

    const/4 v3, 0x5

    move/from16 v0, v21

    if-ne v0, v3, :cond_6

    .line 73
    :cond_3
    const v3, 0x3d8f5c29    # 0.07f

    int-to-float v4, v13

    const v5, 0x3cf5c28f    # 0.03f

    mul-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float v15, v3, v4

    .line 77
    :cond_4
    :goto_1
    sget v3, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    invoke-static {v3}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v17

    .line 78
    .local v17, "prop":Lcom/smartisanos/launcher/data/LayoutProperty;
    sget v3, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static {v3}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v18

    .line 79
    .local v18, "propSingle":Lcom/smartisanos/launcher/data/LayoutProperty;
    move-object/from16 v0, v18

    iget v3, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_width:F

    move-object/from16 v0, v17

    iget v4, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_width:F

    div-float v20, v3, v4

    .line 80
    .local v20, "scale":F
    new-instance v1, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    invoke-virtual/range {v25 .. v25}, Lcom/smartisanos/launcher/view/TitleView;->getRenderRect()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 81
    .local v1, "anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    move/from16 v0, p2

    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 82
    const/16 v3, 0xf

    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 83
    invoke-virtual/range {v25 .. v25}, Lcom/smartisanos/launcher/view/TitleView;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v24

    .line 84
    .local v24, "titlePos":Lcom/smartisanos/smengine/math/Vector3f;
    move-object/from16 v0, v24

    iget v3, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move-object/from16 v0, v24

    iget v4, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move-object/from16 v0, v17

    iget v5, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_title_height:F

    mul-float v5, v5, v20

    add-float/2addr v4, v5

    move-object/from16 v0, v17

    iget v5, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->title_page_spacing:F

    mul-float v5, v5, v20

    add-float/2addr v4, v5

    move-object/from16 v0, v24

    iget v5, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    move-object/from16 v0, v25

    invoke-virtual {v0, v3, v4, v5}, Lcom/smartisanos/launcher/view/TitleView;->setTranslate(FFF)V

    .line 87
    invoke-virtual/range {v25 .. v25}, Lcom/smartisanos/launcher/view/TitleView;->getRenderRect()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v19

    .line 88
    .local v19, "rectPos":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-virtual/range {v25 .. v25}, Lcom/smartisanos/launcher/view/TitleView;->getRenderRect()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v3

    move-object/from16 v0, v19

    iget v4, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move-object/from16 v0, v19

    iget v5, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move-object/from16 v0, v17

    iget v6, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_title_height:F

    move-object/from16 v0, v17

    iget v7, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->title_page_spacing:F

    add-float/2addr v6, v7

    sub-float/2addr v5, v6

    move-object/from16 v0, v19

    iget v6, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-virtual {v3, v4, v5, v6}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 91
    invoke-virtual/range {v25 .. v25}, Lcom/smartisanos/launcher/view/TitleView;->getRenderRect()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v16

    .line 92
    .local v16, "from":Lcom/smartisanos/smengine/math/Vector3f;
    new-instance v26, Lcom/smartisanos/smengine/math/Vector3f;

    move-object/from16 v0, v16

    iget v3, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move-object/from16 v0, v16

    iget v4, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move-object/from16 v0, v17

    iget v5, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_title_height:F

    move-object/from16 v0, v17

    iget v6, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->title_page_spacing:F

    add-float/2addr v5, v6

    add-float/2addr v4, v5

    move-object/from16 v0, v16

    iget v5, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    move-object/from16 v0, v26

    invoke-direct {v0, v3, v4, v5}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    .line 94
    .local v26, "to":Lcom/smartisanos/smengine/math/Vector3f;
    const/4 v2, 0x0

    move-object/from16 v0, v16

    iget v3, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move-object/from16 v0, v16

    iget v4, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move-object/from16 v0, v16

    iget v5, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    move-object/from16 v0, v26

    iget v6, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move-object/from16 v0, v26

    iget v7, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move-object/from16 v0, v26

    iget v8, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-virtual/range {v1 .. v8}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFF)V

    .line 95
    move-object/from16 v0, v23

    invoke-virtual {v0, v15, v1}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 96
    sget-boolean v3, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v3, :cond_5

    .line 97
    new-instance v2, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    invoke-virtual/range {v25 .. v25}, Lcom/smartisanos/launcher/view/TitleView;->getGaussianRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 98
    .local v2, "animGussian":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    move/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 99
    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 100
    invoke-virtual/range {v25 .. v25}, Lcom/smartisanos/launcher/view/TitleView;->getGaussianRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v3

    move-object/from16 v0, v19

    iget v4, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move-object/from16 v0, v19

    iget v5, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move-object/from16 v0, v17

    iget v6, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_title_height:F

    move-object/from16 v0, v17

    iget v7, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->title_page_spacing:F

    add-float/2addr v6, v7

    sub-float/2addr v5, v6

    move-object/from16 v0, v19

    iget v6, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-virtual {v3, v4, v5, v6}, Lcom/smartisanos/smengine/RectNode;->setTranslate(FFF)V

    .line 102
    const/4 v3, 0x0

    move-object/from16 v0, v16

    iget v4, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move-object/from16 v0, v16

    iget v5, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move-object/from16 v0, v16

    iget v6, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    move-object/from16 v0, v26

    iget v7, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move-object/from16 v0, v26

    iget v8, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move-object/from16 v0, v26

    iget v9, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-virtual/range {v2 .. v9}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFF)V

    .line 103
    move-object/from16 v0, v23

    invoke-virtual {v0, v15, v2}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 105
    .end local v2    # "animGussian":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    :cond_5
    invoke-virtual/range {v25 .. v25}, Lcom/smartisanos/launcher/view/TitleView;->updateGeometricState()V

    goto/16 :goto_0

    .line 74
    .end local v1    # "anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    .end local v16    # "from":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v17    # "prop":Lcom/smartisanos/launcher/data/LayoutProperty;
    .end local v18    # "propSingle":Lcom/smartisanos/launcher/data/LayoutProperty;
    .end local v19    # "rectPos":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v20    # "scale":F
    .end local v24    # "titlePos":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v26    # "to":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_6
    const/4 v3, 0x3

    move/from16 v0, v21

    if-ne v0, v3, :cond_4

    .line 75
    const v3, 0x3d8f5c29    # 0.07f

    int-to-float v4, v13

    const v5, 0x3ca3d70a    # 0.02f

    mul-float/2addr v4, v5

    const/high16 v5, 0x40400000    # 3.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    const v4, 0x3ca3d70a    # 0.02f

    add-float v15, v3, v4

    goto/16 :goto_1

    .line 110
    .end local v13    # "currentGroupIndex":I
    .end local v14    # "currentGroupIndexI":Ljava/lang/Integer;
    .end local v15    # "delay":F
    .end local v21    # "targetMode":I
    .end local v22    # "targetModeI":Ljava/lang/Integer;
    .end local v23    # "time_line":Lcom/smartisanos/smengine/AnimationTimeLine;
    .end local v25    # "titleView":Lcom/smartisanos/launcher/view/TitleView;
    :pswitch_1
    if-eqz p3, :cond_1

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_1

    .line 113
    const/16 v23, 0x0

    .line 114
    .restart local v23    # "time_line":Lcom/smartisanos/smengine/AnimationTimeLine;
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/smartisanos/smengine/AnimationTimeLine;

    if-eqz v3, :cond_1

    .line 115
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    .end local v23    # "time_line":Lcom/smartisanos/smengine/AnimationTimeLine;
    check-cast v23, Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 119
    .restart local v23    # "time_line":Lcom/smartisanos/smengine/AnimationTimeLine;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/animations/PageAnimation;->mPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Page;->getTitleView()Lcom/smartisanos/launcher/view/TitleView;

    move-result-object v25

    .line 120
    .restart local v25    # "titleView":Lcom/smartisanos/launcher/view/TitleView;
    if-nez v25, :cond_7

    .line 121
    sget-boolean v3, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v3, :cond_1

    sget-object v3, Lcom/smartisanos/launcher/animations/PageAnimation;->log:Lcom/smartisanos/launcher/LOG;

    const-string v4, "DEBUG"

    const-string v5, "error when handleAnimation HIDDEN_PAGE_TITLE, mTitleAreaNode is null"

    invoke-virtual {v3, v4, v5}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 125
    :cond_7
    new-instance v1, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    const/4 v3, 0x1

    move-object/from16 v0, v25

    invoke-direct {v1, v0, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;Z)V

    .line 126
    .restart local v1    # "anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    move/from16 v0, p2

    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 127
    const/16 v3, 0xe

    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 128
    const/4 v4, 0x3

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v3, v1

    invoke-virtual/range {v3 .. v12}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFFFF)V

    .line 129
    const/4 v3, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v1}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    goto/16 :goto_0

    .line 50
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public switchTitleMode(Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;Lcom/smartisanos/smengine/AnimationTimeLine;F)V
    .locals 4
    .param p1, "anim"    # Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;
    .param p2, "anim_time_line"    # Lcom/smartisanos/smengine/AnimationTimeLine;
    .param p3, "time"    # F

    .prologue
    .line 40
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/PageAnimation;->mPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Page;->getTitleView()Lcom/smartisanos/launcher/view/TitleView;

    move-result-object v0

    .line 41
    .local v0, "titleView":Lcom/smartisanos/launcher/view/TitleView;
    if-nez v0, :cond_1

    .line 42
    sget-boolean v1, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/smartisanos/launcher/animations/PageAnimation;->log:Lcom/smartisanos/launcher/LOG;

    const-string v2, "DEBUG"

    const-string v3, "error when execute switchTitleMode, mTitleAreaNode is null"

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    invoke-virtual {v0, p1, p2, p3}, Lcom/smartisanos/launcher/view/TitleView;->switchTitleMode(Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;Lcom/smartisanos/smengine/AnimationTimeLine;F)V

    goto :goto_0
.end method
