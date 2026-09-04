.class public Lcom/smartisanos/launcher/animations/IconSortAnimation;
.super Lcom/smartisanos/launcher/animations/IAnimation;
.source "IconSortAnimation.java"


.field private static final CUBE_SHADOW_TRANSLATE_DELTA:F = 60.0f

.field private static final TITLE_SHADOW_TRANSLATE_DELTA:F = 500.0f

.field private static log:Lcom/smartisanos/launcher/LOG;


.field private CUBE_INIT_SCALE:F

.field private mActiveIconList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/launcher/view/Cell;",
            ">;"
        }
    .end annotation
.end field

.field private mAllDrawMultiTimesCubeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;",
            ">;"
        }
    .end annotation
.end field

.field private mIconSortAnimationPageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/launcher/view/Page;",
            ">;"
        }
    .end annotation
.end field

.field private mTimeline:Lcom/smartisanos/smengine/AnimationTimeLine;

.field private mTitleBackShadowScale:Lcom/smartisanos/smengine/math/Vector3f;


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/smartisanos/launcher/animations/IconSortAnimation;

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/animations/IconSortAnimation;->log:Lcom/smartisanos/launcher/LOG;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/IAnimation;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/animations/IconSortAnimation;->mActiveIconList:Ljava/util/ArrayList;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/animations/IconSortAnimation;->mAllDrawMultiTimesCubeList:Ljava/util/ArrayList;

    .line 48
    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lcom/smartisanos/launcher/animations/IconSortAnimation;->CUBE_INIT_SCALE:F

    .line 49
    new-instance v0, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v0}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/animations/IconSortAnimation;->mTitleBackShadowScale:Lcom/smartisanos/smengine/math/Vector3f;

    return-void
.end method

.method static synthetic access$000(Lcom/smartisanos/launcher/animations/IconSortAnimation;)V
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/animations/IconSortAnimation;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/IconSortAnimation;->refreshPageRenderTarget()V

    return-void
.end method

.method static synthetic access$100(Lcom/smartisanos/launcher/animations/IconSortAnimation;Z)Lcom/smartisanos/smengine/AnimationTimeLine;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/animations/IconSortAnimation;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/animations/IconSortAnimation;->getGaussianBackAnim(Z)Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/smartisanos/launcher/animations/IconSortAnimation;)V
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/animations/IconSortAnimation;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/IconSortAnimation;->doSortAnimation()V

    return-void
.end method

.method static synthetic access$402(Lcom/smartisanos/launcher/animations/IconSortAnimation;Lcom/smartisanos/smengine/AnimationTimeLine;)Lcom/smartisanos/smengine/AnimationTimeLine;
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/animations/IconSortAnimation;
    .param p1, "x1"    # Lcom/smartisanos/smengine/AnimationTimeLine;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/IconSortAnimation;->mTimeline:Lcom/smartisanos/smengine/AnimationTimeLine;

    return-object p1
.end method

.method static synthetic access$500(Lcom/smartisanos/launcher/animations/IconSortAnimation;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/animations/IconSortAnimation;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/IconSortAnimation;->mIconSortAnimationPageList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/smartisanos/launcher/animations/IconSortAnimation;)Lcom/smartisanos/smengine/math/Vector3f;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/animations/IconSortAnimation;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/IconSortAnimation;->mTitleBackShadowScale:Lcom/smartisanos/smengine/math/Vector3f;

    return-object v0
.end method

.method static synthetic access$700(Lcom/smartisanos/launcher/animations/IconSortAnimation;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/animations/IconSortAnimation;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/IconSortAnimation;->mActiveIconList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800()Lcom/smartisanos/launcher/LOG;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/smartisanos/launcher/animations/IconSortAnimation;->log:Lcom/smartisanos/launcher/LOG;

    return-object v0
.end method

.method private doSortAnimation()V
    .locals 29

    .prologue
    .line 329
    new-instance v25, Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-direct/range {v25 .. v25}, Lcom/smartisanos/smengine/AnimationTimeLine;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/smartisanos/launcher/animations/IconSortAnimation;->mTimeline:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 331
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v6

    .line 332
    .local v6, "mainView":Lcom/smartisanos/launcher/view/MainView;
    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v3

    .line 333
    .local v3, "dockView":Lcom/smartisanos/launcher/view/DockView;
    invoke-static {}, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->getInstance()Lcom/smartisanos/launcher/actions/sort/HandleIconSort;

    move-result-object v17

    .line 334
    .local v17, "sortAction":Lcom/smartisanos/launcher/actions/sort/HandleIconSort;
    move-object/from16 v0, v17

    iget v0, v0, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->sortType:I

    move/from16 v18, v0

    .line 335
    .local v18, "sortType":I
    sget-object v25, Lcom/smartisanos/launcher/animations/IconSortAnimation;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "doSortAnimation action ["

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v17

    iget v0, v0, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->actionType:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "], sortType ["

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "]"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 336
    move-object/from16 v0, v17

    iget v0, v0, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->actionType:I

    move/from16 v25, v0

    sparse-switch v25, :sswitch_data_0

    .line 364
    :goto_0
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/smartisanos/launcher/view/PageView;->getAllPagesInWindow()Ljava/util/ArrayList;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/smartisanos/launcher/animations/IconSortAnimation;->mIconSortAnimationPageList:Ljava/util/ArrayList;

    .line 367
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 368
    .local v8, "needRemovedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/IconSortAnimation;->mIconSortAnimationPageList:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v4, v0, :cond_2

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/IconSortAnimation;->mIconSortAnimationPageList:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/smartisanos/launcher/view/Page;

    .line 370
    .local v13, "p":Lcom/smartisanos/launcher/view/Page;
    invoke-virtual {v13}, Lcom/smartisanos/launcher/view/Page;->getPageStatus()I

    move-result v19

    .line 371
    .local v19, "status":I
    const/16 v25, 0x2

    move/from16 v0, v19

    move/from16 v1, v25

    if-eq v0, v1, :cond_0

    const/16 v25, 0x1

    move/from16 v0, v19

    move/from16 v1, v25

    if-ne v0, v1, :cond_1

    .line 372
    :cond_0
    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 342
    .end local v4    # "i":I
    .end local v8    # "needRemovedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    .end local v13    # "p":Lcom/smartisanos/launcher/view/Page;
    .end local v19    # "status":I
    :sswitch_0
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 343
    .local v15, "params":Ljava/util/List;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/IconSortAnimation;->mTimeline:Lcom/smartisanos/smengine/AnimationTimeLine;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 344
    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 345
    const v22, 0x3e99999a    # 0.3f

    .line 346
    .local v22, "time":F
    sget-object v25, Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;->SWITCH_SORT_BUTTON_STATUS:Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;

    move-object/from16 v0, v25

    move/from16 v1, v22

    invoke-virtual {v3, v0, v1, v15}, Lcom/smartisanos/launcher/view/DockView;->handleAnimation(Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;FLjava/util/List;)V

    goto :goto_0

    .line 351
    .end local v15    # "params":Ljava/util/List;
    .end local v22    # "time":F
    :sswitch_1
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 352
    .restart local v15    # "params":Ljava/util/List;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/IconSortAnimation;->mTimeline:Lcom/smartisanos/smengine/AnimationTimeLine;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 353
    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 354
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 355
    const v22, 0x3e99999a    # 0.3f

    .line 356
    .restart local v22    # "time":F
    sget-object v25, Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;->SWITCH_SORT_CONFIRM_BUTTON_STATUS:Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;

    move-object/from16 v0, v25

    move/from16 v1, v22

    invoke-virtual {v3, v0, v1, v15}, Lcom/smartisanos/launcher/view/DockView;->handleAnimation(Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;FLjava/util/List;)V

    goto/16 :goto_0

    .line 376
    .end local v15    # "params":Ljava/util/List;
    .end local v22    # "time":F
    .restart local v4    # "i":I
    .restart local v8    # "needRemovedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    :cond_2
    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v4, v0, :cond_3

    .line 377
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/smartisanos/launcher/view/Page;

    .line 378
    .local v7, "needRemoveP":Lcom/smartisanos/launcher/view/Page;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/IconSortAnimation;->mIconSortAnimationPageList:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 376
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 382
    .end local v7    # "needRemoveP":Lcom/smartisanos/launcher/view/Page;
    :cond_3
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/smartisanos/smengine/World;->getCameraManager()Lcom/smartisanos/smengine/CameraManager;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/smartisanos/smengine/CameraManager;->getMainCamera()Lcom/smartisanos/smengine/Camera;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/smartisanos/smengine/Camera;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v25

    move-object/from16 v0, v25

    iget v2, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    .line 384
    .local v2, "cameraZ":F
    const/4 v4, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/IconSortAnimation;->mIconSortAnimationPageList:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v4, v0, :cond_4

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/IconSortAnimation;->mIconSortAnimationPageList:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/smartisanos/launcher/view/PageWithRenderTarget;

    .line 386
    .local v13, "p":Lcom/smartisanos/launcher/view/PageWithRenderTarget;
    const/16 v25, 0x1

    move/from16 v0, v25

    invoke-virtual {v13, v0}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->setNeedDrawSpecialCube(Z)V

    .line 388
    invoke-virtual {v13}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->getTitleView()Lcom/smartisanos/launcher/view/TitleView;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/smartisanos/launcher/view/TitleView;->getRenderRect()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v25

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 389
    invoke-virtual {v13}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->getTitleView()Lcom/smartisanos/launcher/view/TitleView;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/smartisanos/launcher/view/TitleView;->getBackShadow()Lcom/smartisanos/smengine/RectNode;

    move-result-object v25

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 390
    invoke-virtual {v13}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->getTitleView()Lcom/smartisanos/launcher/view/TitleView;

    move-result-object v25

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/smartisanos/launcher/view/TitleView;->setDrawTitleShadowWithBatch(Z)V

    .line 393
    invoke-virtual {v13}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->getTitleView()Lcom/smartisanos/launcher/view/TitleView;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/smartisanos/launcher/view/TitleView;->getBackShadow()Lcom/smartisanos/smengine/RectNode;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/smartisanos/smengine/RectNode;->getScale()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/smartisanos/launcher/animations/IconSortAnimation;->mTitleBackShadowScale:Lcom/smartisanos/smengine/math/Vector3f;

    .line 394
    new-instance v24, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct/range {v24 .. v24}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 395
    .local v24, "titleShadowWorldPos":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-virtual {v13}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->getTitleView()Lcom/smartisanos/launcher/view/TitleView;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/smartisanos/launcher/view/TitleView;->getBackShadow()Lcom/smartisanos/smengine/RectNode;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RectNode;->getWorldTranslate(Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 397
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v25

    const/high16 v26, 0x43fa0000    # 500.0f

    add-float v25, v25, v26

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v26

    div-float v14, v25, v26

    .line 398
    .local v14, "para":F
    move-object/from16 v0, v24

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v25, v0

    mul-float v11, v25, v14

    .line 399
    .local v11, "newX":F
    move-object/from16 v0, v24

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v25, v0

    mul-float v12, v25, v14

    .line 400
    .local v12, "newY":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/IconSortAnimation;->mTitleBackShadowScale:Lcom/smartisanos/smengine/math/Vector3f;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v25, v0

    mul-float v9, v25, v14

    .line 401
    .local v9, "newScaleX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/IconSortAnimation;->mTitleBackShadowScale:Lcom/smartisanos/smengine/math/Vector3f;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v25, v0

    mul-float v10, v25, v14

    .line 402
    .local v10, "newScaleY":F
    invoke-virtual {v13}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->getTitleView()Lcom/smartisanos/launcher/view/TitleView;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/smartisanos/launcher/view/TitleView;->getWorldTransform()Lcom/smartisanos/smengine/math/Transform;

    move-result-object v20

    .line 403
    .local v20, "t":Lcom/smartisanos/smengine/math/Transform;
    invoke-virtual/range {v20 .. v20}, Lcom/smartisanos/smengine/math/Transform;->inverse()Lcom/smartisanos/smengine/math/Transform;

    move-result-object v23

    .line 404
    .local v23, "tinv":Lcom/smartisanos/smengine/math/Transform;
    invoke-static {}, Lcom/smartisanos/smengine/util/TempVars;->get()Lcom/smartisanos/smengine/util/TempVars;

    move-result-object v21

    .line 405
    .local v21, "tempVars":Lcom/smartisanos/smengine/util/TempVars;
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/smartisanos/smengine/util/TempVars;->vect1:Lcom/smartisanos/smengine/math/Vector3f;

    move-object/from16 v16, v0

    .line 406
    .local v16, "resultL":Lcom/smartisanos/smengine/math/Vector3f;
    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/smartisanos/smengine/util/TempVars;->vect2:Lcom/smartisanos/smengine/math/Vector3f;

    .line 407
    .local v5, "inputL":Lcom/smartisanos/smengine/math/Vector3f;
    const/high16 v25, -0x3c060000    # -500.0f

    move/from16 v0, v25

    invoke-virtual {v5, v11, v12, v0}, Lcom/smartisanos/smengine/math/Vector3f;->set(FFF)Lcom/smartisanos/smengine/math/Vector3f;

    .line 408
    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v5, v1}, Lcom/smartisanos/smengine/math/Transform;->transformVector(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v16

    .line 409
    invoke-virtual {v13}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->getTitleView()Lcom/smartisanos/launcher/view/TitleView;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/smartisanos/launcher/view/TitleView;->getBackShadow()Lcom/smartisanos/smengine/RectNode;

    move-result-object v25

    move-object/from16 v0, v16

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v26, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v27, v0

    const/high16 v28, -0x3c060000    # -500.0f

    invoke-virtual/range {v25 .. v28}, Lcom/smartisanos/smengine/RectNode;->setTranslate(FFF)V

    .line 410
    invoke-virtual {v13}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->getTitleView()Lcom/smartisanos/launcher/view/TitleView;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/smartisanos/launcher/view/TitleView;->getBackShadow()Lcom/smartisanos/smengine/RectNode;

    move-result-object v25

    const/high16 v26, 0x3f800000    # 1.0f

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v0, v9, v10, v1}, Lcom/smartisanos/smengine/RectNode;->setScale(FFF)V

    .line 411
    invoke-virtual/range {v21 .. v21}, Lcom/smartisanos/smengine/util/TempVars;->release()V

    .line 413
    invoke-virtual {v13}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->updateGeometricState()V

    .line 384
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3

    .line 417
    .end local v5    # "inputL":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v9    # "newScaleX":F
    .end local v10    # "newScaleY":F
    .end local v11    # "newX":F
    .end local v12    # "newY":F
    .end local v13    # "p":Lcom/smartisanos/launcher/view/PageWithRenderTarget;
    .end local v14    # "para":F
    .end local v16    # "resultL":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v20    # "t":Lcom/smartisanos/smengine/math/Transform;
    .end local v21    # "tempVars":Lcom/smartisanos/smengine/util/TempVars;
    .end local v23    # "tinv":Lcom/smartisanos/smengine/math/Transform;
    .end local v24    # "titleShadowWorldPos":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/smartisanos/launcher/animations/IconSortAnimation;->generateSpecialDrawMultiTimesCube()V

    .line 418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/IconSortAnimation;->mTimeline:Lcom/smartisanos/smengine/AnimationTimeLine;

    move-object/from16 v25, v0

    new-instance v26, Lcom/smartisanos/launcher/animations/IconSortAnimation$5;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/smartisanos/launcher/animations/IconSortAnimation$5;-><init>(Lcom/smartisanos/launcher/animations/IconSortAnimation;)V

    invoke-virtual/range {v25 .. v26}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/IconSortAnimation;->mTimeline:Lcom/smartisanos/smengine/AnimationTimeLine;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/smartisanos/smengine/AnimationTimeLine;->start()V

    .line 448
    return-void

    .line 336
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x64 -> :sswitch_1
    .end sparse-switch
.end method

.method private generateSpecialDrawMultiTimesCube()V
    .locals 39

    .prologue
    .line 53
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/animations/IconSortAnimation;->mIconSortAnimationPageList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 54
    sget-object v5, Lcom/smartisanos/launcher/animations/IconSortAnimation;->log:Lcom/smartisanos/launcher/LOG;

    const-string v6, "### current screen "

    invoke-virtual {v5, v6}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 215
    :cond_0
    return-void

    .line 58
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/data/Constants;->getPropertyByStyle()Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v32

    .line 59
    .local v32, "prop":Lcom/smartisanos/launcher/data/LayoutProperty;
    const/16 v16, 0x9

    .line 60
    .local v16, "cellCount":I
    sget v5, Lcom/smartisanos/launcher/data/Constants;->sPageStyle:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    .line 61
    const/16 v16, 0x10

    .line 64
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/animations/IconSortAnimation;->mIconSortAnimationPageList:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Page;->getScale()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v30

    .line 66
    .local v30, "pageScale":Lcom/smartisanos/smengine/math/Vector3f;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/animations/IconSortAnimation;->mIconSortAnimationPageList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v37

    .line 68
    .local v37, "times":I
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .local v13, "allTimesPageCellList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;>;"
    const/16 v26, 0x0

    .local v26, "i":I
    :goto_0
    move/from16 v0, v26

    move/from16 v1, v37

    if-ge v0, v1, :cond_3

    .line 71
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/animations/IconSortAnimation;->mIconSortAnimationPageList:Ljava/util/ArrayList;

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Page;->getAllPageCell()Ljava/util/ArrayList;

    move-result-object v12

    .line 73
    .local v12, "allPageCellCurrentTimes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    add-int/lit8 v26, v26, 0x1

    goto :goto_0

    .line 76
    .end local v12    # "allPageCellCurrentTimes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    :cond_3
    const/4 v5, 0x0

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Cell;->getScale()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v34

    .line 77
    .local v34, "scale":Lcom/smartisanos/smengine/math/Vector3f;
    const/16 v26, 0x0

    :goto_1
    move/from16 v0, v26

    move/from16 v1, v16

    if-ge v0, v1, :cond_7

    .line 79
    new-instance v24, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SpecailDrawMultiTimesCube"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v24

    move/from16 v1, v37

    invoke-direct {v0, v5, v1}, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;-><init>(Ljava/lang/String;I)V

    .line 82
    .local v24, "drawMultiTimesCubeNode":Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;
    invoke-virtual/range {v24 .. v24}, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;->create()V

    .line 85
    invoke-virtual/range {v24 .. v24}, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;->getCube()Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;

    move-result-object v5

    move-object/from16 v0, v34

    iget v6, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move-object/from16 v0, v34

    iget v7, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/smartisanos/launcher/animations/IconSortAnimation;->CUBE_INIT_SCALE:F

    invoke-virtual {v5, v6, v7, v8}, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;->setScale(FFF)V

    .line 88
    move-object/from16 v0, v30

    iget v5, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move-object/from16 v0, v30

    iget v6, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move-object/from16 v0, v24

    move/from16 v1, v37

    invoke-virtual {v0, v5, v6, v1}, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;->createCubeShadow(FFI)V

    .line 91
    sget-boolean v5, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-nez v5, :cond_4

    .line 92
    move-object/from16 v0, v24

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;->createOrUpdateActiveIconEditCover(I)V

    .line 96
    :cond_4
    move-object/from16 v0, v24

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;->createCubeBackFaceRect(I)V

    .line 98
    const/4 v5, 0x0

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Cell;->getOriginRowIndex()I

    move-result v33

    .line 99
    .local v33, "rowIndex":I
    const/4 v5, 0x0

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Cell;->getOriginColIndex()I

    move-result v19

    .line 100
    .local v19, "colIndex":I
    const/4 v5, 0x0

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Cell;->getRenderTarget()Lcom/smartisanos/smengine/RenderTarget;

    move-result-object v5

    move/from16 v0, v33

    move/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Lcom/smartisanos/smengine/RenderTarget;->getUV(II)Lcom/smartisanos/smengine/RenderTarget$UV;

    move-result-object v38

    .line 101
    .local v38, "uv":Lcom/smartisanos/smengine/RenderTarget$UV;
    move-object/from16 v0, v24

    move-object/from16 v1, v38

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;->createEditModeCellSnapShot(Lcom/smartisanos/smengine/RenderTarget$UV;I)V

    .line 104
    const/16 v27, 0x0

    .local v27, "j":I
    :goto_2
    move/from16 v0, v27

    move/from16 v1, v37

    if-ge v0, v1, :cond_6

    .line 106
    move/from16 v0, v27

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/smartisanos/launcher/view/Cell;

    .line 107
    .local v21, "currentCell":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual/range {v21 .. v21}, Lcom/smartisanos/launcher/view/Cell;->getBackgroundImageName()Ljava/lang/String;

    move-result-object v22

    .line 109
    .local v22, "currentTimesPageCellBackgroundName":Ljava/lang/String;
    new-instance v17, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct/range {v17 .. v17}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 110
    .local v17, "cellOffsetPos":Lcom/smartisanos/smengine/math/Vector3f;
    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Cell;->getWorldTranslate(Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 111
    invoke-virtual/range {v24 .. v24}, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;->getCube()Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;

    move-result-object v5

    move/from16 v0, v27

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;->setDrawPositionOffset(ILcom/smartisanos/smengine/math/Vector3f;)V

    .line 112
    invoke-virtual/range {v24 .. v24}, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;->getCube()Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;

    move-result-object v5

    const-string v6, "flip_anim_side.png"

    invoke-static {v6}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move/from16 v0, v27

    invoke-virtual {v5, v0, v6}, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;->setDrawImageName(ILjava/lang/String;)V

    .line 121
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/smengine/World;->getCameraManager()Lcom/smartisanos/smengine/CameraManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/smengine/CameraManager;->getMainCamera()Lcom/smartisanos/smengine/Camera;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/smengine/Camera;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v5

    iget v15, v5, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    .line 122
    .local v15, "cameraZ":F
    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x42700000    # 60.0f

    add-float/2addr v5, v6

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v6

    div-float v31, v5, v6

    .line 124
    .local v31, "para":F
    invoke-virtual/range {v24 .. v24}, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;->getCubeShadow()Lcom/smartisanos/smengine/RectNode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/smengine/RectNode;->getScale()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v35

    .line 125
    .local v35, "shadowRectScale":Lcom/smartisanos/smengine/math/Vector3f;
    move-object/from16 v0, v35

    iget v5, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    mul-float v28, v5, v31

    .line 126
    .local v28, "newScaleX":F
    move-object/from16 v0, v35

    iget v5, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    mul-float v29, v5, v31

    .line 129
    .local v29, "newScaleY":F
    invoke-virtual/range {v24 .. v24}, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;->getCubeShadow()Lcom/smartisanos/smengine/RectNode;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, -0x3d900000    # -60.0f

    invoke-virtual {v5, v6, v7, v8}, Lcom/smartisanos/smengine/RectNode;->setTranslate(FFF)V

    .line 131
    new-instance v20, Lcom/smartisanos/smengine/math/Vector3f;

    move-object/from16 v0, v17

    iget v5, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    mul-float v5, v5, v31

    move-object/from16 v0, v17

    iget v6, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    mul-float v6, v6, v31

    move-object/from16 v0, v17

    iget v7, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    move-object/from16 v0, v20

    invoke-direct {v0, v5, v6, v7}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    .line 133
    .local v20, "cubeShadowOffsetPos":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-virtual/range {v24 .. v24}, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;->getCubeShadow()Lcom/smartisanos/smengine/RectNode;

    move-result-object v5

    move/from16 v0, v27

    move-object/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Lcom/smartisanos/smengine/RectNode;->setDrawPositionOffset(ILcom/smartisanos/smengine/math/Vector3f;)V

    .line 136
    invoke-virtual/range {v24 .. v24}, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;->getCubeBackFaceRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v5

    move/from16 v0, v27

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Lcom/smartisanos/smengine/RectNode;->setDrawPositionOffset(ILcom/smartisanos/smengine/math/Vector3f;)V

    .line 137
    invoke-virtual/range {v24 .. v24}, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;->getCubeBackFaceRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v5

    move/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Lcom/smartisanos/smengine/RectNode;->setDrawImageName(ILjava/lang/String;)V

    .line 141
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/animations/IconSortAnimation;->mIconSortAnimationPageList:Ljava/util/ArrayList;

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/launcher/view/Page;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/smartisanos/launcher/view/Page;->getTextureName(I)Ljava/lang/String;

    move-result-object v18

    .line 143
    .local v18, "cellSnapShotImageName":Ljava/lang/String;
    invoke-virtual/range {v24 .. v24}, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;->getSnapShotRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v5

    move/from16 v0, v27

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Lcom/smartisanos/smengine/RectNode;->setDrawPositionOffset(ILcom/smartisanos/smengine/math/Vector3f;)V

    .line 144
    invoke-virtual/range {v24 .. v24}, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;->getSnapShotRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v5

    move/from16 v0, v27

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Lcom/smartisanos/smengine/RectNode;->setDrawImageName(ILjava/lang/String;)V

    .line 148
    invoke-virtual/range {v21 .. v21}, Lcom/smartisanos/launcher/view/Cell;->getActiveIconView()Lcom/smartisanos/launcher/view/ActiveIconView;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 149
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/animations/IconSortAnimation;->mActiveIconList:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    sget-boolean v5, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-nez v5, :cond_5

    .line 151
    const/4 v5, 0x0

    const/high16 v6, -0x40800000    # -1.0f

    move-object/from16 v0, v21

    invoke-virtual {v0, v5, v6}, Lcom/smartisanos/launcher/view/Cell;->hideCellIntoPageEditModeAnimationCover(Lcom/smartisanos/smengine/AnimationTimeLine;F)V

    .line 152
    invoke-virtual/range {v24 .. v24}, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;->getActiveIconEditModeCover()Lcom/smartisanos/smengine/RectNode;

    move-result-object v5

    move/from16 v0, v27

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Lcom/smartisanos/smengine/RectNode;->setDrawPositionOffset(ILcom/smartisanos/smengine/math/Vector3f;)V

    .line 104
    :cond_5
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_2

    .line 157
    .end local v15    # "cameraZ":F
    .end local v17    # "cellOffsetPos":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v18    # "cellSnapShotImageName":Ljava/lang/String;
    .end local v20    # "cubeShadowOffsetPos":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v21    # "currentCell":Lcom/smartisanos/launcher/view/Cell;
    .end local v22    # "currentTimesPageCellBackgroundName":Ljava/lang/String;
    .end local v28    # "newScaleX":F
    .end local v29    # "newScaleY":F
    .end local v31    # "para":F
    .end local v35    # "shadowRectScale":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_6
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/smengine/World;->getSceneManager()Lcom/smartisanos/smengine/SceneManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/smengine/SceneManager;->getRootNode()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 159
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/animations/IconSortAnimation;->mAllDrawMultiTimesCubeList:Ljava/util/ArrayList;

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/smengine/World;->getSceneManager()Lcom/smartisanos/smengine/SceneManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/smengine/SceneManager;->getRootNode()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 77
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_1

    .line 164
    .end local v19    # "colIndex":I
    .end local v24    # "drawMultiTimesCubeNode":Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;
    .end local v27    # "j":I
    .end local v33    # "rowIndex":I
    .end local v38    # "uv":Lcom/smartisanos/smengine/RenderTarget$UV;
    :cond_7
    const v23, 0x3cf5c28f    # 0.03f

    .line 165
    .local v23, "delay":F
    sget v5, Lcom/smartisanos/launcher/data/Constants;->sPageStyle:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_8

    .line 166
    const v23, 0x3c8b4396    # 0.017f

    .line 169
    :cond_8
    const v25, 0x3f4ccccd    # 0.8f

    .line 171
    .local v25, "duration":F
    const/16 v27, 0x0

    .restart local v27    # "j":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/animations/IconSortAnimation;->mAllDrawMultiTimesCubeList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move/from16 v0, v27

    if-ge v0, v5, :cond_0

    .line 173
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/animations/IconSortAnimation;->mAllDrawMultiTimesCubeList:Ljava/util/ArrayList;

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;

    .line 175
    .local v36, "sp":Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;
    new-instance v14, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    invoke-virtual/range {v36 .. v36}, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;->getCube()Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;

    move-result-object v5

    invoke-direct {v14, v5}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 176
    .local v14, "animRotate":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    const/4 v5, 0x3

    invoke-virtual {v14, v5}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 177
    new-instance v5, Lcom/smartisanos/smengine/math/Vector3f;

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    invoke-virtual {v14, v5}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setRotateAxis(Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 178
    const/4 v5, 0x2

    const/4 v6, 0x0

    const v7, 0x40490fdb    # (float)Math.PI

    invoke-virtual {v14, v5, v6, v7}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFF)V

    .line 179
    move/from16 v0, v25

    invoke-virtual {v14, v0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 182
    new-instance v5, Lcom/smartisanos/launcher/animations/IconSortAnimation$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-direct {v5, v0, v1}, Lcom/smartisanos/launcher/animations/IconSortAnimation$1;-><init>(Lcom/smartisanos/launcher/animations/IconSortAnimation;Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;)V

    invoke-virtual {v14, v5}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 196
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/animations/IconSortAnimation;->mTimeline:Lcom/smartisanos/smengine/AnimationTimeLine;

    move/from16 v0, v27

    int-to-float v6, v0

    mul-float v6, v6, v23

    invoke-virtual {v5, v6, v14}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 199
    new-instance v3, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    invoke-virtual/range {v36 .. v36}, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;->getCube()Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 200
    .local v3, "animScale":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    const/16 v5, 0xf

    invoke-virtual {v3, v5}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 201
    const/4 v4, 0x1

    move-object/from16 v0, v34

    iget v5, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move-object/from16 v0, v34

    iget v6, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/smartisanos/launcher/animations/IconSortAnimation;->CUBE_INIT_SCALE:F

    move-object/from16 v0, v34

    iget v8, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move-object/from16 v0, v34

    iget v9, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual/range {v3 .. v10}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFF)V

    .line 202
    const v5, 0x3e19999a    # 0.15f

    mul-float v5, v5, v25

    invoke-virtual {v3, v5}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 203
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setPreserveNodeScale(Z)V

    .line 204
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/animations/IconSortAnimation;->mTimeline:Lcom/smartisanos/smengine/AnimationTimeLine;

    const v6, 0x3e19999a    # 0.15f

    mul-float v6, v6, v25

    move/from16 v0, v27

    int-to-float v7, v0

    mul-float v7, v7, v23

    add-float/2addr v6, v7

    invoke-virtual {v5, v6, v3}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 207
    new-instance v4, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    invoke-virtual/range {v36 .. v36}, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;->getCube()Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 208
    .local v4, "animDelayScale":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    const/16 v5, 0xf

    invoke-virtual {v4, v5}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 209
    const/4 v5, 0x1

    move-object/from16 v0, v34

    iget v6, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move-object/from16 v0, v34

    iget v7, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    const/high16 v8, 0x3f800000    # 1.0f

    move-object/from16 v0, v34

    iget v9, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move-object/from16 v0, v34

    iget v10, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move-object/from16 v0, p0

    iget v11, v0, Lcom/smartisanos/launcher/animations/IconSortAnimation;->CUBE_INIT_SCALE:F

    invoke-virtual/range {v4 .. v11}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFF)V

    .line 210
    const v5, 0x3e19999a    # 0.15f

    mul-float v5, v5, v25

    invoke-virtual {v4, v5}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 211
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setPreserveNodeScale(Z)V

    .line 212
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/animations/IconSortAnimation;->mTimeline:Lcom/smartisanos/smengine/AnimationTimeLine;

    const v6, 0x3f333333    # 0.7f

    mul-float v6, v6, v25

    move/from16 v0, v27

    int-to-float v7, v0

    mul-float v7, v7, v23

    add-float/2addr v6, v7

    invoke-virtual {v5, v6, v4}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 171
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_3
.end method

.method private getGaussianBackAnim(Z)Lcom/smartisanos/smengine/AnimationTimeLine;
    .locals 17
    .param p1, "show"    # Z

    .prologue
    .line 589
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/PageView;->getAllPagesInWindow()Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/smartisanos/launcher/animations/IconSortAnimation;->mIconSortAnimationPageList:Ljava/util/ArrayList;

    .line 590
    const/high16 v12, 0x40400000    # 3.0f

    .line 591
    .local v12, "du":F
    new-instance v16, Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-direct/range {v16 .. v16}, Lcom/smartisanos/smengine/AnimationTimeLine;-><init>()V

    .line 593
    .local v16, "timeline":Lcom/smartisanos/smengine/AnimationTimeLine;
    new-instance v2, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/MainView;->getBackground()Lcom/smartisanos/smengine/RectNode;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 594
    .local v2, "anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    const/high16 v4, 0x3f800000    # 1.0f

    .line 595
    .local v4, "fromC":F
    const/4 v8, 0x0

    .line 596
    .local v8, "toC":F
    if-eqz p1, :cond_0

    .line 597
    const/4 v4, 0x0

    .line 598
    const/high16 v8, 0x3f800000    # 1.0f

    .line 599
    const/high16 v3, 0x3e800000    # 0.25f

    mul-float/2addr v3, v12

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 600
    const/high16 v3, 0x3f400000    # 0.75f

    mul-float/2addr v3, v12

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v2}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 605
    :goto_0
    const/4 v3, 0x3

    move v5, v4

    move v6, v4

    move v7, v4

    move v9, v8

    move v10, v8

    move v11, v8

    invoke-virtual/range {v2 .. v11}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFFFF)V

    .line 607
    const/4 v3, 0x0

    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/MainView;->getStatusBar()Lcom/smartisanos/launcher/view/StatusBar;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0, v12}, Lcom/smartisanos/launcher/view/StatusBar;->getGaussianBackAnimForIconSort(ZF)Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v5}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 608
    const/4 v3, 0x0

    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0, v12}, Lcom/smartisanos/launcher/view/DockView;->getGaussianBackAnimForIconSort(ZF)Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v5}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 609
    if-nez p1, :cond_1

    .line 610
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/MainView;->getStatusBar()Lcom/smartisanos/launcher/view/StatusBar;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/smartisanos/launcher/view/StatusBar;->setUseStaticGaussian(Z)V

    .line 611
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/smartisanos/launcher/view/DockView;->setUseStaticGaussian(Z)V

    .line 612
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/animations/IconSortAnimation;->mIconSortAnimationPageList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v13, v3, :cond_1

    .line 613
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/animations/IconSortAnimation;->mIconSortAnimationPageList:Ljava/util/ArrayList;

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/smartisanos/launcher/view/PageWithRenderTarget;

    .line 614
    .local v14, "p":Lcom/smartisanos/launcher/view/PageWithRenderTarget;
    const/4 v3, 0x0

    invoke-virtual {v14, v3}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->setUseStaticGaussian(Z)V

    .line 615
    invoke-virtual {v14}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->getTitleView()Lcom/smartisanos/launcher/view/TitleView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/TitleView;->getGaussianRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    .line 616
    invoke-virtual {v14}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->getTitleView()Lcom/smartisanos/launcher/view/TitleView;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/smartisanos/launcher/view/TitleView;->setDrawTitleShadowWithBatch(Z)V

    .line 612
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 602
    .end local v13    # "i":I
    .end local v14    # "p":Lcom/smartisanos/launcher/view/PageWithRenderTarget;
    :cond_0
    const/high16 v3, 0x3e800000    # 0.25f

    mul-float/2addr v3, v12

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 603
    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v2}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    goto/16 :goto_0

    .line 619
    :cond_1
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/animations/IconSortAnimation;->mIconSortAnimationPageList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v13, v3, :cond_2

    .line 620
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/animations/IconSortAnimation;->mIconSortAnimationPageList:Ljava/util/ArrayList;

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/smartisanos/launcher/view/PageWithRenderTarget;

    .line 621
    .restart local v14    # "p":Lcom/smartisanos/launcher/view/PageWithRenderTarget;
    const/4 v3, 0x1

    invoke-virtual {v14, v3}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->setIsEnableBlend(Z)V

    .line 622
    invoke-virtual {v14}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v3

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Lcom/smartisanos/smengine/RenderState;->setBlendMode(I)V

    .line 623
    move/from16 v0, p1

    invoke-virtual {v14, v0, v12}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->getGaussianBackAnimForIconSort(ZF)Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-result-object v15

    .line 624
    .local v15, "panim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v15}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 619
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 626
    .end local v14    # "p":Lcom/smartisanos/launcher/view/PageWithRenderTarget;
    .end local v15    # "panim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    :cond_2
    new-instance v3, Lcom/smartisanos/launcher/animations/IconSortAnimation$7;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v3, v0, v1}, Lcom/smartisanos/launcher/animations/IconSortAnimation$7;-><init>(Lcom/smartisanos/launcher/animations/IconSortAnimation;Z)V

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 643
    return-object v16
.end method

.method private refreshPageRenderTarget()V
    .locals 6

    .prologue
    .line 313
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/PageView;->getAllPagesInWindow()Ljava/util/ArrayList;

    move-result-object v1

    .line 315
    .local v1, "allPages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 317
    .local v4, "times":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 318
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Page;->getAllPageCell()Ljava/util/ArrayList;

    move-result-object v0

    .line 319
    .local v0, "allPageCellCurrentTimes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_0

    .line 320
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Cell;->resetOriIndexToIndex()V

    .line 321
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Cell;->setNeedDisplay()V

    .line 319
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 317
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 325
    .end local v0    # "allPageCellCurrentTimes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    .end local v3    # "j":I
    :cond_1
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/smengine/World;->updateGLView()V

    .line 326
    return-void
.end method

.method private updateSpecialDrawMultiTimesCube()V
    .locals 31

    .prologue
    .line 647
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/animations/IconSortAnimation;->mIconSortAnimationPageList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 743
    :cond_0
    return-void

    .line 651
    :cond_1
    const/16 v15, 0x9

    .line 652
    .local v15, "cellCount":I
    sget v4, Lcom/smartisanos/launcher/data/Constants;->sPageStyle:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 653
    const/16 v15, 0x10

    .line 655
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/animations/IconSortAnimation;->mIconSortAnimationPageList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v29

    .line 656
    .local v29, "times":I
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 658
    .local v12, "allTimesPageCellList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;>;"
    const/16 v24, 0x0

    .local v24, "i":I
    :goto_0
    move/from16 v0, v24

    move/from16 v1, v29

    if-ge v0, v1, :cond_3

    .line 659
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/animations/IconSortAnimation;->mIconSortAnimationPageList:Ljava/util/ArrayList;

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Page;->getAllPageCell()Ljava/util/ArrayList;

    move-result-object v11

    .line 660
    .local v11, "allPageCellCurrentTimes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 658
    add-int/lit8 v24, v24, 0x1

    goto :goto_0

    .line 663
    .end local v11    # "allPageCellCurrentTimes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    :cond_3
    const/16 v24, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/animations/IconSortAnimation;->mAllDrawMultiTimesCubeList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v24

    if-ge v0, v4, :cond_8

    .line 664
    const/4 v4, 0x0

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/smartisanos/launcher/view/Cell;

    .line 665
    .local v14, "c":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v14}, Lcom/smartisanos/launcher/view/Cell;->getOriginRowIndex()I

    move-result v27

    .line 666
    .local v27, "oriRow":I
    invoke-virtual {v14}, Lcom/smartisanos/launcher/view/Cell;->getOriginColIndex()I

    move-result v26

    .line 667
    .local v26, "oriCol":I
    invoke-virtual {v14}, Lcom/smartisanos/launcher/view/Cell;->getRenderTarget()Lcom/smartisanos/smengine/RenderTarget;

    move-result-object v4

    move/from16 v0, v27

    move/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Lcom/smartisanos/smengine/RenderTarget;->getUV(II)Lcom/smartisanos/smengine/RenderTarget$UV;

    move-result-object v30

    .line 668
    .local v30, "uv":Lcom/smartisanos/smengine/RenderTarget$UV;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/animations/IconSortAnimation;->mAllDrawMultiTimesCubeList:Ljava/util/ArrayList;

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;->updateCellSnapShotUV(Lcom/smartisanos/smengine/RenderTarget$UV;)V

    .line 669
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/animations/IconSortAnimation;->mAllDrawMultiTimesCubeList:Ljava/util/ArrayList;

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;

    .line 670
    .local v22, "drawMultiTimesCubeNode":Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;
    const/16 v25, 0x0

    .local v25, "j":I
    :goto_2
    move/from16 v0, v25

    move/from16 v1, v29

    if-ge v0, v1, :cond_7

    .line 671
    move/from16 v0, v25

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/smartisanos/launcher/view/Cell;

    .line 672
    .local v18, "currentCell":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual/range {v18 .. v18}, Lcom/smartisanos/launcher/view/Cell;->getBackgroundImageName()Ljava/lang/String;

    move-result-object v20

    .line 673
    .local v20, "currentTimesPageCellBackgroundName":Ljava/lang/String;
    new-instance v16, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct/range {v16 .. v16}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 674
    .local v16, "cellOffsetPos":Lcom/smartisanos/smengine/math/Vector3f;
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Cell;->getWorldTranslate(Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 675
    invoke-virtual/range {v22 .. v22}, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;->getCube()Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;

    move-result-object v4

    move/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v4, v0, v1}, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;->setDrawPositionOffset(ILcom/smartisanos/smengine/math/Vector3f;)V

    .line 676
    invoke-virtual/range {v22 .. v22}, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;->getCube()Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;

    move-result-object v4

    const-string v5, "flip_anim_side.png"

    invoke-static {v5}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move/from16 v0, v25

    invoke-virtual {v4, v0, v5}, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;->setDrawImageName(ILjava/lang/String;)V

    .line 677
    invoke-virtual/range {v22 .. v22}, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;->getCubeBackFaceRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v4

    move/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v4, v0, v1}, Lcom/smartisanos/smengine/RectNode;->setDrawPositionOffset(ILcom/smartisanos/smengine/math/Vector3f;)V

    .line 680
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/animations/IconSortAnimation;->mIconSortAnimationPageList:Ljava/util/ArrayList;

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/view/Page;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/smartisanos/launcher/view/Page;->getTextureName(I)Ljava/lang/String;

    move-result-object v17

    .line 681
    .local v17, "cellSnapShotImageName":Ljava/lang/String;
    invoke-virtual/range {v22 .. v22}, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;->getSnapShotRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v4

    move/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v4, v0, v1}, Lcom/smartisanos/smengine/RectNode;->setDrawPositionOffset(ILcom/smartisanos/smengine/math/Vector3f;)V

    .line 682
    invoke-virtual/range {v22 .. v22}, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;->getSnapShotRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v4

    move/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Lcom/smartisanos/smengine/RectNode;->setDrawImageName(ILjava/lang/String;)V

    .line 683
    invoke-virtual/range {v18 .. v18}, Lcom/smartisanos/launcher/view/Cell;->getActiveIconView()Lcom/smartisanos/launcher/view/ActiveIconView;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 684
    sget-boolean v4, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-nez v4, :cond_4

    .line 685
    invoke-virtual/range {v22 .. v22}, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;->getActiveIconEditModeCover()Lcom/smartisanos/smengine/RectNode;

    move-result-object v4

    move/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v4, v0, v1}, Lcom/smartisanos/smengine/RectNode;->setDrawPositionOffset(ILcom/smartisanos/smengine/math/Vector3f;)V

    .line 687
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/animations/IconSortAnimation;->mActiveIconList:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 688
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/animations/IconSortAnimation;->mActiveIconList:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 670
    :cond_5
    :goto_3
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_2

    .line 691
    :cond_6
    sget-boolean v4, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-nez v4, :cond_5

    .line 692
    invoke-virtual/range {v22 .. v22}, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;->getActiveIconEditModeCover()Lcom/smartisanos/smengine/RectNode;

    move-result-object v4

    const/4 v5, 0x0

    move/from16 v0, v25

    invoke-virtual {v4, v0, v5}, Lcom/smartisanos/smengine/RectNode;->setDrawPositionOffset(ILcom/smartisanos/smengine/math/Vector3f;)V

    goto :goto_3

    .line 663
    .end local v16    # "cellOffsetPos":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v17    # "cellSnapShotImageName":Ljava/lang/String;
    .end local v18    # "currentCell":Lcom/smartisanos/launcher/view/Cell;
    .end local v20    # "currentTimesPageCellBackgroundName":Ljava/lang/String;
    :cond_7
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_1

    .line 698
    .end local v14    # "c":Lcom/smartisanos/launcher/view/Cell;
    .end local v22    # "drawMultiTimesCubeNode":Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;
    .end local v25    # "j":I
    .end local v26    # "oriCol":I
    .end local v27    # "oriRow":I
    .end local v30    # "uv":Lcom/smartisanos/smengine/RenderTarget$UV;
    :cond_8
    const/4 v4, 0x0

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Cell;->getScale()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v19

    .line 700
    .local v19, "currentScale":Lcom/smartisanos/smengine/math/Vector3f;
    const v21, 0x3cf5c28f    # 0.03f

    .line 701
    .local v21, "delay":F
    sget v4, Lcom/smartisanos/launcher/data/Constants;->sPageStyle:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_9

    .line 702
    const v21, 0x3c8b4396    # 0.017f

    .line 704
    :cond_9
    const/high16 v23, 0x3f800000    # 1.0f

    .line 705
    .local v23, "duration":F
    const/16 v25, 0x0

    .restart local v25    # "j":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/animations/IconSortAnimation;->mAllDrawMultiTimesCubeList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v25

    if-ge v0, v4, :cond_0

    .line 707
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/animations/IconSortAnimation;->mAllDrawMultiTimesCubeList:Ljava/util/ArrayList;

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;

    .line 708
    .local v28, "sp":Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;
    new-instance v13, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    invoke-virtual/range {v28 .. v28}, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;->getCube()Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;

    move-result-object v4

    invoke-direct {v13, v4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 709
    .local v13, "animRotate":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    const/4 v4, 0x3

    invoke-virtual {v13, v4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 710
    new-instance v4, Lcom/smartisanos/smengine/math/Vector3f;

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    invoke-virtual {v13, v4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setRotateAxis(Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 711
    const/4 v4, 0x2

    const v5, -0x3fb6f025

    const/4 v6, 0x0

    invoke-virtual {v13, v4, v5, v6}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFF)V

    .line 712
    move/from16 v0, v23

    invoke-virtual {v13, v0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 713
    new-instance v4, Lcom/smartisanos/launcher/animations/IconSortAnimation$8;

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v4, v0, v1}, Lcom/smartisanos/launcher/animations/IconSortAnimation$8;-><init>(Lcom/smartisanos/launcher/animations/IconSortAnimation;Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;)V

    invoke-virtual {v13, v4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 726
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/animations/IconSortAnimation;->mTimeline:Lcom/smartisanos/smengine/AnimationTimeLine;

    move/from16 v0, v25

    int-to-float v5, v0

    mul-float v5, v5, v21

    invoke-virtual {v4, v5, v13}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 728
    new-instance v2, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    invoke-virtual/range {v28 .. v28}, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;->getCube()Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 729
    .local v2, "animScale":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    const/16 v4, 0xe

    invoke-virtual {v2, v4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 730
    const/4 v3, 0x1

    move-object/from16 v0, v19

    iget v4, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move-object/from16 v0, v19

    iget v5, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/smartisanos/launcher/animations/IconSortAnimation;->CUBE_INIT_SCALE:F

    move-object/from16 v0, v19

    iget v7, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move-object/from16 v0, v19

    iget v8, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual/range {v2 .. v9}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFF)V

    .line 731
    const v4, 0x3dcccccd    # 0.1f

    mul-float v4, v4, v23

    invoke-virtual {v2, v4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 732
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setPreserveNodeScale(Z)V

    .line 733
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/animations/IconSortAnimation;->mTimeline:Lcom/smartisanos/smengine/AnimationTimeLine;

    const v5, 0x3e19999a    # 0.15f

    mul-float v5, v5, v23

    move/from16 v0, v25

    int-to-float v6, v0

    mul-float v6, v6, v21

    add-float/2addr v5, v6

    invoke-virtual {v4, v5, v2}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 736
    new-instance v3, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    invoke-virtual/range {v28 .. v28}, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;->getCube()Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 737
    .local v3, "animDelayScale":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    const/16 v4, 0xd

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 738
    const/4 v4, 0x1

    move-object/from16 v0, v19

    iget v5, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move-object/from16 v0, v19

    iget v6, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    const/high16 v7, 0x3f800000    # 1.0f

    move-object/from16 v0, v19

    iget v8, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move-object/from16 v0, v19

    iget v9, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move-object/from16 v0, p0

    iget v10, v0, Lcom/smartisanos/launcher/animations/IconSortAnimation;->CUBE_INIT_SCALE:F

    invoke-virtual/range {v3 .. v10}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFF)V

    .line 739
    const v4, 0x3dcccccd    # 0.1f

    mul-float v4, v4, v23

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 740
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setPreserveNodeScale(Z)V

    .line 741
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/animations/IconSortAnimation;->mTimeline:Lcom/smartisanos/smengine/AnimationTimeLine;

    const v5, 0x3f333333    # 0.7f

    mul-float v5, v5, v23

    move/from16 v0, v25

    int-to-float v6, v0

    mul-float v6, v6, v21

    add-float/2addr v5, v6

    invoke-virtual {v4, v5, v3}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 705
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_4
.end method


.method public prepareFinishIconSort()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 452
    new-instance v9, Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-direct {v9}, Lcom/smartisanos/smengine/AnimationTimeLine;-><init>()V

    iput-object v9, p0, Lcom/smartisanos/launcher/animations/IconSortAnimation;->mTimeline:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 454
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v3

    .line 455
    .local v3, "mainView":Lcom/smartisanos/launcher/view/MainView;
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v1

    .line 456
    .local v1, "dockView":Lcom/smartisanos/launcher/view/DockView;
    invoke-static {}, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->getInstance()Lcom/smartisanos/launcher/actions/sort/HandleIconSort;

    move-result-object v6

    .line 457
    .local v6, "sortAction":Lcom/smartisanos/launcher/actions/sort/HandleIconSort;
    iget v0, v6, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->actionType:I

    .line 458
    .local v0, "actionType":I
    sparse-switch v0, :sswitch_data_0

    .line 485
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v9, p0, Lcom/smartisanos/launcher/animations/IconSortAnimation;->mIconSortAnimationPageList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v2, v9, :cond_0

    .line 486
    iget-object v9, p0, Lcom/smartisanos/launcher/animations/IconSortAnimation;->mIconSortAnimationPageList:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/view/PageWithRenderTarget;

    .line 487
    .local v4, "p":Lcom/smartisanos/launcher/view/PageWithRenderTarget;
    invoke-virtual {v4, v10}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->setNeedDrawSpecialCube(Z)V

    .line 485
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 464
    .end local v2    # "i":I
    .end local v4    # "p":Lcom/smartisanos/launcher/view/PageWithRenderTarget;
    :sswitch_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 465
    .local v5, "params":Ljava/util/List;
    iget-object v9, p0, Lcom/smartisanos/launcher/animations/IconSortAnimation;->mTimeline:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 466
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 467
    const v8, 0x3e99999a    # 0.3f

    .line 468
    .local v8, "time":F
    sget-object v9, Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;->SWITCH_SORT_CONFIRM_BUTTON_STATUS:Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;

    invoke-virtual {v1, v9, v8, v5}, Lcom/smartisanos/launcher/view/DockView;->handleAnimation(Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;FLjava/util/List;)V

    goto :goto_0

    .line 473
    .end local v5    # "params":Ljava/util/List;
    .end local v8    # "time":F
    :sswitch_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 474
    .restart local v5    # "params":Ljava/util/List;
    iget v7, v6, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->sortType:I

    .line 475
    .local v7, "sortType":I
    iget-object v9, p0, Lcom/smartisanos/launcher/animations/IconSortAnimation;->mTimeline:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 476
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 477
    const v8, 0x3e99999a    # 0.3f

    .line 478
    .restart local v8    # "time":F
    sget-object v9, Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;->SWITCH_SORT_BUTTON_STATUS:Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;

    invoke-virtual {v1, v9, v8, v5}, Lcom/smartisanos/launcher/view/DockView;->handleAnimation(Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;FLjava/util/List;)V

    goto :goto_0

    .line 489
    .end local v5    # "params":Ljava/util/List;
    .end local v7    # "sortType":I
    .end local v8    # "time":F
    .restart local v2    # "i":I
    :cond_0
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/IconSortAnimation;->updateSpecialDrawMultiTimesCube()V

    .line 490
    iget-object v9, p0, Lcom/smartisanos/launcher/animations/IconSortAnimation;->mTimeline:Lcom/smartisanos/smengine/AnimationTimeLine;

    new-instance v10, Lcom/smartisanos/launcher/animations/IconSortAnimation$6;

    invoke-direct {v10, p0}, Lcom/smartisanos/launcher/animations/IconSortAnimation$6;-><init>(Lcom/smartisanos/launcher/animations/IconSortAnimation;)V

    invoke-virtual {v9, v10}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 585
    iget-object v9, p0, Lcom/smartisanos/launcher/animations/IconSortAnimation;->mTimeline:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v9}, Lcom/smartisanos/smengine/AnimationTimeLine;->start()V

    .line 586
    return-void

    .line 458
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x64 -> :sswitch_1
    .end sparse-switch
.end method

.method public prepareGenerateSpecialCubeForIconSort()V
    .locals 10

    .prologue
    const/16 v9, 0x64

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 232
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v4

    const/high16 v5, 0x100000

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/smartisanos/launcher/StatusManager;->setLauncherStatus(IZ)V

    .line 233
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/MainView;->lockHardKey()V

    .line 234
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/MainView;->lockTouchEvent()V

    .line 236
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v4

    iget-object v4, v4, Lcom/smartisanos/launcher/view/PageView;->mMultiSelectNode:Lcom/smartisanos/launcher/view/MultiSelectNode;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/MultiSelectNode;->getAllSelectedCellList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 237
    :goto_0
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v4

    iget-object v4, v4, Lcom/smartisanos/launcher/view/PageView;->mMultiSelectNode:Lcom/smartisanos/launcher/view/MultiSelectNode;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/MultiSelectNode;->getAllSelectedCellList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 238
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v4

    iget-object v4, v4, Lcom/smartisanos/launcher/view/PageView;->mMultiSelectNode:Lcom/smartisanos/launcher/view/MultiSelectNode;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/MultiSelectNode;->getAllSelectedCellList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/Cell;

    .line 239
    .local v0, "c":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->clearCellSelected()I

    goto :goto_0

    .line 244
    .end local v0    # "c":Lcom/smartisanos/launcher/view/Cell;
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/PageView;->getScreenIndex()I

    move-result v1

    .line 245
    .local v1, "screenIndex":I
    if-lez v1, :cond_1

    .line 246
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v4

    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/PageView;->getScreenCount()I

    move-result v5

    invoke-virtual {v4, v5, v1}, Lcom/smartisanos/launcher/view/PageView;->sinkPageAndShowDotView(II)V

    .line 247
    new-instance v2, Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-direct {v2}, Lcom/smartisanos/smengine/AnimationTimeLine;-><init>()V

    .line 248
    .local v2, "scrollTimeline":Lcom/smartisanos/smengine/AnimationTimeLine;
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v4

    const v5, 0x3eb851ec    # 0.36f

    const/4 v6, 0x0

    invoke-virtual {v4, v8, v5, v8, v6}, Lcom/smartisanos/launcher/view/PageView;->scrollTo(IFZLcom/smartisanos/smengine/Animation$AnimationListener;)Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v3

    .line 250
    .local v3, "scrollto":Lcom/smartisanos/smengine/AnimationTimeLine;
    invoke-virtual {v2, v7, v3}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 252
    new-instance v4, Lcom/smartisanos/launcher/animations/IconSortAnimation$2;

    invoke-direct {v4, p0}, Lcom/smartisanos/launcher/animations/IconSortAnimation$2;-><init>(Lcom/smartisanos/launcher/animations/IconSortAnimation;)V

    invoke-virtual {v2, v4}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 281
    invoke-virtual {v2}, Lcom/smartisanos/smengine/AnimationTimeLine;->start()V

    .line 309
    .end local v2    # "scrollTimeline":Lcom/smartisanos/smengine/AnimationTimeLine;
    .end local v3    # "scrollto":Lcom/smartisanos/smengine/AnimationTimeLine;
    :goto_1
    return-void

    .line 283
    :cond_1
    sget-boolean v4, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v4, :cond_2

    .line 285
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/IconSortAnimation;->refreshPageRenderTarget()V

    .line 287
    new-instance v4, Lcom/smartisanos/launcher/animations/IconSortAnimation$3;

    invoke-direct {v4, p0, v9}, Lcom/smartisanos/launcher/animations/IconSortAnimation$3;-><init>(Lcom/smartisanos/launcher/animations/IconSortAnimation;I)V

    .line 298
    invoke-virtual {v4, v7}, Lcom/smartisanos/launcher/animations/IconSortAnimation$3;->send(F)V

    goto :goto_1

    .line 300
    :cond_2
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/IconSortAnimation;->refreshPageRenderTarget()V

    .line 301
    new-instance v4, Lcom/smartisanos/launcher/animations/IconSortAnimation$4;

    invoke-direct {v4, p0, v9}, Lcom/smartisanos/launcher/animations/IconSortAnimation$4;-><init>(Lcom/smartisanos/launcher/animations/IconSortAnimation;I)V

    .line 306
    invoke-virtual {v4, v7}, Lcom/smartisanos/launcher/animations/IconSortAnimation$4;->send(F)V

    goto :goto_1
.end method

.method public removeSpecialCube()V
    .locals 3

    .prologue
    .line 218
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/IconSortAnimation;->mAllDrawMultiTimesCubeList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 219
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/IconSortAnimation;->mAllDrawMultiTimesCubeList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;

    .line 221
    .local v0, "cube":Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;
    invoke-virtual {v0}, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 222
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;->clear(Z)V

    .line 218
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 224
    .end local v0    # "cube":Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;
    :cond_0
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/IconSortAnimation;->mAllDrawMultiTimesCubeList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 226
    sget-boolean v2, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-nez v2, :cond_1

    .line 227
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/IconSortAnimation;->mIconSortAnimationPageList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 229
    :cond_1
    return-void
.end method
