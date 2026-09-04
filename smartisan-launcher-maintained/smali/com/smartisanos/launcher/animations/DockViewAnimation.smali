.class public Lcom/smartisanos/launcher/animations/DockViewAnimation;
.super Lcom/smartisanos/launcher/animations/IAnimation;
.source "DockViewAnimation.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/launcher/animations/DockViewAnimation$STATUS;,
        Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;
    }
.end annotation


.field private static final log:Lcom/smartisanos/launcher/LOG;


.field private brightness_color:Lcom/smartisanos/smengine/math/Vector4f;

.field private dark_color:Lcom/smartisanos/smengine/math/Vector4f;

.field private mView:Lcom/smartisanos/launcher/view/DockView;

.field private sortBubbleTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/smartisanos/launcher/animations/DockViewAnimation;

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->log:Lcom/smartisanos/launcher/LOG;

    return-void
.end method

.method public constructor <init>(Lcom/smartisanos/launcher/view/DockView;)V
    .locals 3
    .param p1, "dv"    # Lcom/smartisanos/launcher/view/DockView;

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 72
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/IAnimation;-><init>()V

    .line 34
    new-instance v0, Lcom/smartisanos/smengine/math/Vector4f;

    invoke-direct {v0, v2, v2, v2, v2}, Lcom/smartisanos/smengine/math/Vector4f;-><init>(FFFF)V

    iput-object v0, p0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->brightness_color:Lcom/smartisanos/smengine/math/Vector4f;

    .line 35
    new-instance v0, Lcom/smartisanos/smengine/math/Vector4f;

    const v1, 0x3e4ccccd    # 0.2f

    invoke-direct {v0, v2, v2, v2, v1}, Lcom/smartisanos/smengine/math/Vector4f;-><init>(FFFF)V

    iput-object v0, p0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->dark_color:Lcom/smartisanos/smengine/math/Vector4f;

    .line 1000
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->sortBubbleTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 73
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->mView:Lcom/smartisanos/launcher/view/DockView;

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/smartisanos/launcher/animations/DockViewAnimation;)Lcom/smartisanos/launcher/view/DockView;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/animations/DockViewAnimation;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->mView:Lcom/smartisanos/launcher/view/DockView;

    return-object v0
.end method

.method static synthetic access$100()Lcom/smartisanos/launcher/LOG;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->log:Lcom/smartisanos/launcher/LOG;

    return-object v0
.end method

.method static synthetic access$202(Lcom/smartisanos/launcher/animations/DockViewAnimation;Lcom/smartisanos/smengine/AnimationTimeLine;)Lcom/smartisanos/smengine/AnimationTimeLine;
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/animations/DockViewAnimation;
    .param p1, "x1"    # Lcom/smartisanos/smengine/AnimationTimeLine;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->sortBubbleTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    return-object p1
.end method

.method private runAppToBrightness(FLjava/util/List;)V
    .locals 14
    .param p1, "time"    # F
    .param p2, "params"    # Ljava/util/List;

    .prologue
    .line 705
    const/4 v13, 0x0

    .line 707
    .local v13, "time_line":Lcom/smartisanos/smengine/AnimationTimeLine;
    const/4 v1, 0x0

    :try_start_0
    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/smartisanos/smengine/AnimationTimeLine;

    move-object v13, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 711
    if-nez v13, :cond_1

    .line 712
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "APP_TO_BRIGHTNESS lose time line !"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 708
    :catch_0
    move-exception v11

    .line 744
    :cond_0
    return-void

    .line 714
    :cond_1
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->mView:Lcom/smartisanos/launcher/view/DockView;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/DockView;->getAllCellsOnDock()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 715
    .local v10, "count":I
    sget-boolean v1, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/smartisanos/launcher/animations/DockViewAnimation;->log:Lcom/smartisanos/launcher/LOG;

    const-string v2, "DEBUG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "APP_TO_BRIGHTNESS begin, dock cell count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    :cond_2
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    if-ge v12, v10, :cond_0

    .line 717
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->mView:Lcom/smartisanos/launcher/view/DockView;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/DockView;->getAllCellsOnDock()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/smartisanos/launcher/view/Cell;

    .line 718
    .local v9, "cell":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/Cell;->getForegroundRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 719
    const/4 v1, 0x5

    invoke-virtual {v9, v1}, Lcom/smartisanos/launcher/view/Cell;->setForegroundRectBlendMode(I)V

    .line 720
    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/Cell;->getForegroundRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v2

    const/4 v3, 0x3

    const/16 v5, 0xd

    iget-object v6, p0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->dark_color:Lcom/smartisanos/smengine/math/Vector4f;

    iget-object v7, p0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->brightness_color:Lcom/smartisanos/smengine/math/Vector4f;

    move-object v1, p0

    move v4, p1

    invoke-virtual/range {v1 .. v7}, Lcom/smartisanos/launcher/animations/DockViewAnimation;->anim(Lcom/smartisanos/smengine/SceneNode;IFILcom/smartisanos/smengine/math/Vector4f;Lcom/smartisanos/smengine/math/Vector4f;)Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-result-object v8

    .line 722
    .local v8, "anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    new-instance v1, Lcom/smartisanos/launcher/animations/DockViewAnimation$4;

    invoke-direct {v1, p0, v9}, Lcom/smartisanos/launcher/animations/DockViewAnimation$4;-><init>(Lcom/smartisanos/launcher/animations/DockViewAnimation;Lcom/smartisanos/launcher/view/Cell;)V

    invoke-virtual {v8, v1}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 729
    const/4 v1, 0x0

    invoke-virtual {v13, v1, v8}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 731
    .end local v8    # "anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    :cond_3
    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/Cell;->getForegroundOverlapRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 732
    const/4 v1, 0x5

    invoke-virtual {v9, v1}, Lcom/smartisanos/launcher/view/Cell;->setForegroundRectBlendMode(I)V

    .line 733
    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/Cell;->getForegroundOverlapRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v2

    const/4 v3, 0x3

    const/16 v5, 0xd

    iget-object v6, p0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->dark_color:Lcom/smartisanos/smengine/math/Vector4f;

    iget-object v7, p0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->brightness_color:Lcom/smartisanos/smengine/math/Vector4f;

    move-object v1, p0

    move v4, p1

    invoke-virtual/range {v1 .. v7}, Lcom/smartisanos/launcher/animations/DockViewAnimation;->anim(Lcom/smartisanos/smengine/SceneNode;IFILcom/smartisanos/smengine/math/Vector4f;Lcom/smartisanos/smengine/math/Vector4f;)Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-result-object v8

    .line 735
    .restart local v8    # "anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    new-instance v1, Lcom/smartisanos/launcher/animations/DockViewAnimation$5;

    invoke-direct {v1, p0, v9}, Lcom/smartisanos/launcher/animations/DockViewAnimation$5;-><init>(Lcom/smartisanos/launcher/animations/DockViewAnimation;Lcom/smartisanos/launcher/view/Cell;)V

    invoke-virtual {v8, v1}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 741
    const/4 v1, 0x0

    invoke-virtual {v13, v1, v8}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 716
    .end local v8    # "anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_0
.end method

.method private runAppToDark(FLjava/util/List;)V
    .locals 14
    .param p1, "time"    # F
    .param p2, "params"    # Ljava/util/List;

    .prologue
    .line 674
    const/4 v13, 0x0

    .line 676
    .local v13, "time_line":Lcom/smartisanos/smengine/AnimationTimeLine;
    const/4 v1, 0x0

    :try_start_0
    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/smartisanos/smengine/AnimationTimeLine;

    move-object v13, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 680
    if-nez v13, :cond_1

    .line 681
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "APP_TO_DARK lose time line !"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 677
    :catch_0
    move-exception v11

    .line 701
    :cond_0
    return-void

    .line 683
    :cond_1
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->mView:Lcom/smartisanos/launcher/view/DockView;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/DockView;->getAllCellsOnDock()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 684
    .local v10, "count":I
    sget-boolean v1, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/smartisanos/launcher/animations/DockViewAnimation;->log:Lcom/smartisanos/launcher/LOG;

    const-string v2, "DEBUG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "APP_TO_DARK begin, dock cell count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    :cond_2
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    if-ge v12, v10, :cond_0

    .line 686
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->mView:Lcom/smartisanos/launcher/view/DockView;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/DockView;->getAllCellsOnDock()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/smartisanos/launcher/view/Cell;

    .line 687
    .local v9, "cell":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/Cell;->getForegroundRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 688
    const/4 v1, 0x5

    invoke-virtual {v9, v1}, Lcom/smartisanos/launcher/view/Cell;->setForegroundRectBlendMode(I)V

    .line 689
    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/Cell;->getForegroundRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v2

    const/4 v3, 0x3

    const/16 v5, 0xe

    iget-object v6, p0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->brightness_color:Lcom/smartisanos/smengine/math/Vector4f;

    iget-object v7, p0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->dark_color:Lcom/smartisanos/smengine/math/Vector4f;

    move-object v1, p0

    move v4, p1

    invoke-virtual/range {v1 .. v7}, Lcom/smartisanos/launcher/animations/DockViewAnimation;->anim(Lcom/smartisanos/smengine/SceneNode;IFILcom/smartisanos/smengine/math/Vector4f;Lcom/smartisanos/smengine/math/Vector4f;)Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-result-object v8

    .line 690
    .local v8, "anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    const/4 v1, 0x0

    invoke-virtual {v13, v1, v8}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 692
    .end local v8    # "anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    :cond_3
    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/Cell;->getForegroundOverlapRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 693
    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/Cell;->getForegroundRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 694
    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/Cell;->getForegroundRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    .line 696
    :cond_4
    const/4 v1, 0x5

    invoke-virtual {v9, v1}, Lcom/smartisanos/launcher/view/Cell;->setForegroundRectBlendMode(I)V

    .line 697
    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/Cell;->getForegroundOverlapRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v2

    const/4 v3, 0x3

    const v4, 0x3e99999a    # 0.3f

    const/16 v5, 0xe

    iget-object v6, p0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->brightness_color:Lcom/smartisanos/smengine/math/Vector4f;

    iget-object v7, p0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->dark_color:Lcom/smartisanos/smengine/math/Vector4f;

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/smartisanos/launcher/animations/DockViewAnimation;->anim(Lcom/smartisanos/smengine/SceneNode;IFILcom/smartisanos/smengine/math/Vector4f;Lcom/smartisanos/smengine/math/Vector4f;)Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-result-object v8

    .line 698
    .restart local v8    # "anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    const/4 v1, 0x0

    invoke-virtual {v13, v1, v8}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 685
    .end local v8    # "anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_0
.end method

.method private runCellBroaded(FLjava/util/List;)V
    .locals 13
    .param p1, "time"    # F
    .param p2, "params"    # Ljava/util/List;

    .prologue
    .line 231
    sget v1, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    sget v3, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    if-ne v1, v3, :cond_5

    .line 232
    sget-boolean v1, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/smartisanos/launcher/animations/DockViewAnimation;->log:Lcom/smartisanos/launcher/LOG;

    const-string v3, "DEBUG"

    const-string v4, "CELL_BROADED begin !"

    invoke-virtual {v1, v3, v4}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    :cond_0
    const/4 v12, 0x0

    .line 235
    .local v12, "timeLine":Lcom/smartisanos/smengine/AnimationTimeLine;
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/smartisanos/smengine/AnimationTimeLine;

    move-object v12, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    :goto_0
    if-nez v12, :cond_2

    .line 238
    sget-boolean v1, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/smartisanos/launcher/animations/DockViewAnimation;->log:Lcom/smartisanos/launcher/LOG;

    const-string v3, "DEBUG"

    const-string v4, "CELL_BROADED timeLine is null"

    invoke-virtual {v1, v3, v4}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "CELL_BROADED lose time line !"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 241
    :cond_2
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->mView:Lcom/smartisanos/launcher/view/DockView;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/DockView;->getAllCellsOnDock()Ljava/util/ArrayList;

    move-result-object v10

    .line 242
    .local v10, "dockCells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 243
    .local v9, "count":I
    new-instance v6, Lcom/smartisanos/smengine/math/Vector3f;

    const v1, 0x3f4ccccd    # 0.8f

    const v3, 0x3f4ccccd    # 0.8f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v6, v1, v3, v4}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    .line 244
    .local v6, "from":Lcom/smartisanos/smengine/math/Vector3f;
    new-instance v7, Lcom/smartisanos/smengine/math/Vector3f;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v7, v1, v3, v4}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    .line 245
    .local v7, "to":Lcom/smartisanos/smengine/math/Vector3f;
    if-lez v9, :cond_5

    .line 246
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    if-ge v11, v9, :cond_5

    .line 247
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/Cell;

    .line 248
    .local v2, "cell":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Cell;->getCellDockStatus()Lcom/smartisanos/launcher/view/CellStatusForDock;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/CellStatusForDock;->getNarrowed()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 249
    sget-boolean v1, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/smartisanos/launcher/animations/DockViewAnimation;->log:Lcom/smartisanos/launcher/LOG;

    const-string v3, "DEBUG"

    const-string v4, "getNarrowed true !!!"

    invoke-virtual {v1, v3, v4}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    :cond_3
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Cell;->getCellDockStatus()Lcom/smartisanos/launcher/view/CellStatusForDock;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/smartisanos/launcher/view/CellStatusForDock;->setNarrowed(Z)V

    .line 251
    const/4 v3, 0x1

    const/16 v5, 0xe

    move-object v1, p0

    move v4, p1

    invoke-virtual/range {v1 .. v7}, Lcom/smartisanos/launcher/animations/DockViewAnimation;->anim(Lcom/smartisanos/smengine/SceneNode;IFILcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-result-object v8

    .line 252
    .local v8, "anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    new-instance v1, Lcom/smartisanos/launcher/animations/DockViewAnimation$1;

    invoke-direct {v1, p0, v2}, Lcom/smartisanos/launcher/animations/DockViewAnimation$1;-><init>(Lcom/smartisanos/launcher/animations/DockViewAnimation;Lcom/smartisanos/launcher/view/Cell;)V

    invoke-virtual {v8, v1}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 260
    const/4 v1, 0x0

    invoke-virtual {v12, v1, v8}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 261
    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->SHOW_APP_NAME:Z

    if-eqz v1, :cond_4

    .line 262
    const v1, 0x3dcccccd    # 0.1f

    const v3, 0x3dcccccd    # 0.1f

    invoke-virtual {v2, v12, v1, v3}, Lcom/smartisanos/launcher/view/Cell;->justShowAppAndFlagNameAnimation(Lcom/smartisanos/smengine/AnimationTimeLine;FF)V

    .line 246
    .end local v8    # "anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 268
    .end local v2    # "cell":Lcom/smartisanos/launcher/view/Cell;
    .end local v6    # "from":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v7    # "to":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v9    # "count":I
    .end local v10    # "dockCells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    .end local v11    # "i":I
    .end local v12    # "timeLine":Lcom/smartisanos/smengine/AnimationTimeLine;
    :cond_5
    return-void

    .line 236
    .restart local v12    # "timeLine":Lcom/smartisanos/smengine/AnimationTimeLine;
    :catch_0
    move-exception v1

    goto/16 :goto_0
.end method

.method private runCellNarrowed(FLjava/util/List;)V
    .locals 18
    .param p1, "time"    # F
    .param p2, "params"    # Ljava/util/List;

    .prologue
    .line 182
    sget v1, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    sget v3, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    if-ne v1, v3, :cond_7

    .line 183
    sget-boolean v1, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/smartisanos/launcher/animations/DockViewAnimation;->log:Lcom/smartisanos/launcher/LOG;

    const-string v3, "DEBUG"

    const-string v4, "CELL_NARROWED begin !"

    invoke-virtual {v1, v3, v4}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :cond_0
    const/16 v16, 0x0

    .line 186
    .local v16, "timeLine":Lcom/smartisanos/smengine/AnimationTimeLine;
    const/4 v1, 0x0

    :try_start_0
    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/smartisanos/smengine/AnimationTimeLine;

    move-object/from16 v16, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 188
    :goto_0
    if-nez v16, :cond_2

    .line 189
    sget-boolean v1, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/smartisanos/launcher/animations/DockViewAnimation;->log:Lcom/smartisanos/launcher/LOG;

    const-string v3, "DEBUG"

    const-string v4, "CELL_NARROWED timeLine is null"

    invoke-virtual {v1, v3, v4}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "CELL_NARROWED lose time line !"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 192
    :cond_2
    const/4 v10, 0x0

    .line 194
    .local v10, "cellOnDock":Lcom/smartisanos/launcher/view/Cell;
    :try_start_1
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x1

    if-le v1, v3, :cond_3

    .line 195
    const/4 v1, 0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/smartisanos/launcher/view/Cell;

    move-object v10, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 199
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->mView:Lcom/smartisanos/launcher/view/DockView;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/DockView;->getAllCellsOnDock()Ljava/util/ArrayList;

    move-result-object v12

    .line 200
    .local v12, "dockCells":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/view/Cell;>;"
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v11

    .line 202
    .local v11, "count":I
    if-lez v11, :cond_7

    .line 203
    sget v1, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    invoke-static {v1}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v15

    .line 204
    .local v15, "prop":Lcom/smartisanos/launcher/data/LayoutProperty;
    iget v0, v15, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_size_with_shadow:F

    move/from16 v17, v0

    .line 205
    .local v17, "width":F
    iget v1, v15, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_height:F

    const/high16 v3, 0x3fa00000    # 1.25f

    mul-float v13, v1, v3

    .line 206
    .local v13, "dockHeight":F
    new-instance v6, Lcom/smartisanos/smengine/math/Vector3f;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v6, v1, v3, v4}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    .line 207
    .local v6, "from":Lcom/smartisanos/smengine/math/Vector3f;
    new-instance v7, Lcom/smartisanos/smengine/math/Vector3f;

    const v1, 0x3f4ccccd    # 0.8f

    const v3, 0x3f4ccccd    # 0.8f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v7, v1, v3, v4}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    .line 208
    .local v7, "to":Lcom/smartisanos/smengine/math/Vector3f;
    new-instance v9, Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-direct {v9}, Lcom/smartisanos/smengine/AnimationTimeLine;-><init>()V

    .line 209
    .local v9, "cellNarrowedTimeLine":Lcom/smartisanos/smengine/AnimationTimeLine;
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_2
    if-ge v14, v11, :cond_6

    .line 210
    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/Cell;

    .line 211
    .local v2, "cell":Lcom/smartisanos/launcher/view/Cell;
    if-eqz v10, :cond_5

    invoke-virtual {v10, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 209
    :cond_4
    :goto_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 214
    :cond_5
    move/from16 v0, v17

    neg-float v1, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    neg-float v3, v13

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v17, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v13, v5

    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/smartisanos/launcher/view/Cell;->setLocalBoundingVolume(FFFF)V

    .line 215
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Cell;->updateGeometricState()V

    .line 216
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Cell;->getCellDockStatus()Lcom/smartisanos/launcher/view/CellStatusForDock;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/smartisanos/launcher/view/CellStatusForDock;->setNarrowed(Z)V

    .line 217
    const/4 v3, 0x1

    const/16 v5, 0xe

    move-object/from16 v1, p0

    move/from16 v4, p1

    invoke-virtual/range {v1 .. v7}, Lcom/smartisanos/launcher/animations/DockViewAnimation;->anim(Lcom/smartisanos/smengine/SceneNode;IFILcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-result-object v8

    .line 218
    .local v8, "anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    const/4 v1, 0x0

    invoke-virtual {v9, v1, v8}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 220
    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->SHOW_APP_NAME:Z

    if-eqz v1, :cond_4

    .line 221
    const v1, 0x3dcccccd    # 0.1f

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v1, v3}, Lcom/smartisanos/launcher/view/Cell;->justHideAppNameAnimation(Lcom/smartisanos/smengine/AnimationTimeLine;FF)V

    goto :goto_3

    .line 224
    .end local v2    # "cell":Lcom/smartisanos/launcher/view/Cell;
    .end local v8    # "anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    :cond_6
    const/4 v1, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v9}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 227
    .end local v6    # "from":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v7    # "to":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v9    # "cellNarrowedTimeLine":Lcom/smartisanos/smengine/AnimationTimeLine;
    .end local v10    # "cellOnDock":Lcom/smartisanos/launcher/view/Cell;
    .end local v11    # "count":I
    .end local v12    # "dockCells":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/view/Cell;>;"
    .end local v13    # "dockHeight":F
    .end local v14    # "i":I
    .end local v15    # "prop":Lcom/smartisanos/launcher/data/LayoutProperty;
    .end local v16    # "timeLine":Lcom/smartisanos/smengine/AnimationTimeLine;
    .end local v17    # "width":F
    :cond_7
    return-void

    .line 197
    .restart local v10    # "cellOnDock":Lcom/smartisanos/launcher/view/Cell;
    .restart local v16    # "timeLine":Lcom/smartisanos/smengine/AnimationTimeLine;
    :catch_0
    move-exception v1

    goto/16 :goto_1

    .line 187
    .end local v10    # "cellOnDock":Lcom/smartisanos/launcher/view/Cell;
    :catch_1
    move-exception v1

    goto/16 :goto_0
.end method

.method private runDockCellRelayout(FLjava/util/List;)V
    .locals 24
    .param p1, "time"    # F
    .param p2, "params"    # Ljava/util/List;

    .prologue
    .line 748
    const/16 v22, 0x0

    .line 750
    .local v22, "timeLine":Lcom/smartisanos/smengine/AnimationTimeLine;
    const/4 v2, 0x0

    :try_start_0
    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/smartisanos/smengine/AnimationTimeLine;

    move-object/from16 v22, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 753
    :goto_0
    if-nez v22, :cond_0

    .line 754
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "DOCK_CELL_RELAYOUT lose time line !"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 756
    :cond_0
    const/16 v23, 0x0

    .line 758
    .local v23, "trashAppear":Z
    const/4 v2, 0x1

    :try_start_1
    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v23

    .line 762
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->mView:Lcom/smartisanos/launcher/view/DockView;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/DockView;->updateDockCellIndex()V

    .line 763
    new-instance v21, Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-direct/range {v21 .. v21}, Lcom/smartisanos/smengine/AnimationTimeLine;-><init>()V

    .line 764
    .local v21, "relayoutTimeLine":Lcom/smartisanos/smengine/AnimationTimeLine;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->mView:Lcom/smartisanos/launcher/view/DockView;

    sget v4, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    move/from16 v0, v23

    invoke-virtual {v2, v0, v4}, Lcom/smartisanos/launcher/view/DockView;->getCellLocation(ZI)[Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v20

    .line 765
    .local v20, "locs":[Lcom/smartisanos/smengine/math/Vector3f;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->mView:Lcom/smartisanos/launcher/view/DockView;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/DockView;->getDockCellCount()I

    move-result v17

    .line 766
    .local v17, "count":I
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_2
    move/from16 v0, v19

    move/from16 v1, v17

    if-ge v0, v1, :cond_2

    .line 767
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->mView:Lcom/smartisanos/launcher/view/DockView;

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/smartisanos/launcher/view/DockView;->getCellByIndex(I)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v3

    .line 768
    .local v3, "cell":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Cell;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v7

    .line 769
    .local v7, "from":Lcom/smartisanos/smengine/math/Vector3f;
    aget-object v8, v20, v19

    .line 770
    .local v8, "to":Lcom/smartisanos/smengine/math/Vector3f;
    const/4 v4, 0x0

    const/16 v6, 0xf

    move-object/from16 v2, p0

    move/from16 v5, p1

    invoke-virtual/range {v2 .. v8}, Lcom/smartisanos/launcher/animations/DockViewAnimation;->anim(Lcom/smartisanos/smengine/SceneNode;IFILcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-result-object v16

    .line 771
    .local v16, "anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    sget-boolean v2, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/smartisanos/launcher/animations/DockViewAnimation;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cell ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Cell;->getItemInfo()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/data/ItemInfo;->id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "], move to x ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v8, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "], y ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v8, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 772
    :cond_1
    const/4 v2, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v2, v1}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 766
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .line 759
    .end local v3    # "cell":Lcom/smartisanos/launcher/view/Cell;
    .end local v7    # "from":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v8    # "to":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v16    # "anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    .end local v17    # "count":I
    .end local v19    # "i":I
    .end local v20    # "locs":[Lcom/smartisanos/smengine/math/Vector3f;
    .end local v21    # "relayoutTimeLine":Lcom/smartisanos/smengine/AnimationTimeLine;
    :catch_0
    move-exception v18

    .line 760
    .local v18, "e":Ljava/lang/Exception;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 774
    .end local v18    # "e":Ljava/lang/Exception;
    .restart local v17    # "count":I
    .restart local v19    # "i":I
    .restart local v20    # "locs":[Lcom/smartisanos/smengine/math/Vector3f;
    .restart local v21    # "relayoutTimeLine":Lcom/smartisanos/smengine/AnimationTimeLine;
    :cond_2
    sget v2, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    sget v4, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    if-ne v2, v4, :cond_3

    .line 775
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->mView:Lcom/smartisanos/launcher/view/DockView;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/DockView;->getSettingButton()Lcom/smartisanos/launcher/view/SettingButton;

    move-result-object v10

    .line 776
    .local v10, "button":Lcom/smartisanos/launcher/view/SettingButton;
    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/SettingButton;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v7

    .line 777
    .restart local v7    # "from":Lcom/smartisanos/smengine/math/Vector3f;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->mView:Lcom/smartisanos/launcher/view/DockView;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/DockView;->getSettingButtonShowLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v8

    .line 778
    .restart local v8    # "to":Lcom/smartisanos/smengine/math/Vector3f;
    const/4 v11, 0x0

    const/16 v13, 0xf

    move-object/from16 v9, p0

    move/from16 v12, p1

    move-object v14, v7

    move-object v15, v8

    invoke-virtual/range {v9 .. v15}, Lcom/smartisanos/launcher/animations/DockViewAnimation;->anim(Lcom/smartisanos/smengine/SceneNode;IFILcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-result-object v16

    .line 779
    .restart local v16    # "anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    const/4 v2, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v2, v1}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 780
    sget-object v2, Lcom/smartisanos/launcher/animations/DockViewAnimation;->log:Lcom/smartisanos/launcher/LOG;

    const-string v4, "DEBUG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DOCK_CELL_RELAYOUT  setting move from ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/SettingButton;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "], to ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    .end local v7    # "from":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v8    # "to":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v10    # "button":Lcom/smartisanos/launcher/view/SettingButton;
    .end local v16    # "anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    :cond_3
    const/4 v2, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v2, v1}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 783
    return-void

    .line 751
    .end local v17    # "count":I
    .end local v19    # "i":I
    .end local v20    # "locs":[Lcom/smartisanos/smengine/math/Vector3f;
    .end local v21    # "relayoutTimeLine":Lcom/smartisanos/smengine/AnimationTimeLine;
    .end local v23    # "trashAppear":Z
    :catch_1
    move-exception v2

    goto/16 :goto_0
.end method

.method private runDockFall(FLjava/util/List;)V
    .locals 14
    .param p1, "time"    # F
    .param p2, "params"    # Ljava/util/List;

    .prologue
    const/4 v3, 0x0

    .line 273
    const/4 v13, 0x0

    .line 275
    .local v13, "timeLine":Lcom/smartisanos/smengine/AnimationTimeLine;
    const/4 v1, 0x0

    :try_start_0
    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/smartisanos/smengine/AnimationTimeLine;

    move-object v13, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    if-nez v13, :cond_0

    .line 281
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "DOCK_FALL lose time line !"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 276
    :catch_0
    move-exception v12

    .line 277
    .local v12, "e":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    .line 305
    .end local v12    # "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 283
    :cond_0
    sget v1, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static {v1}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v1

    iget v10, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_height:F

    .line 284
    .local v10, "dockHeight":F
    sget v1, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    invoke-static {v1}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v1

    iget v11, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_height:F

    .line 285
    .local v11, "dockHeightReduced":F
    sub-float v9, v10, v11

    .line 286
    .local v9, "delta":F
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->mView:Lcom/smartisanos/launcher/view/DockView;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/DockView;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v6

    .line 287
    .local v6, "loc":Lcom/smartisanos/smengine/math/Vector3f;
    new-instance v7, Lcom/smartisanos/smengine/math/Vector3f;

    iget v1, v6, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v2, v6, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    sub-float/2addr v2, v9

    iget v4, v6, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-direct {v7, v1, v2, v4}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    .line 288
    .local v7, "to":Lcom/smartisanos/smengine/math/Vector3f;
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->mView:Lcom/smartisanos/launcher/view/DockView;

    const/16 v5, 0xe

    move-object v1, p0

    move v4, p1

    invoke-virtual/range {v1 .. v7}, Lcom/smartisanos/launcher/animations/DockViewAnimation;->anim(Lcom/smartisanos/smengine/SceneNode;IFILcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-result-object v8

    .line 289
    .local v8, "back_ground_anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    new-instance v1, Lcom/smartisanos/launcher/animations/DockViewAnimation$2;

    invoke-direct {v1, p0}, Lcom/smartisanos/launcher/animations/DockViewAnimation$2;-><init>(Lcom/smartisanos/launcher/animations/DockViewAnimation;)V

    invoke-virtual {v8, v1}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 304
    const/4 v1, 0x0

    invoke-virtual {v13, v1, v8}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    goto :goto_0
.end method

.method private runDockUp(FLjava/util/List;)V
    .locals 15
    .param p1, "time"    # F
    .param p2, "params"    # Ljava/util/List;

    .prologue
    .line 310
    const/4 v13, 0x0

    .line 312
    .local v13, "timeLine":Lcom/smartisanos/smengine/AnimationTimeLine;
    const/4 v1, 0x0

    :try_start_0
    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/smartisanos/smengine/AnimationTimeLine;

    move-object v13, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    if-nez v13, :cond_0

    .line 318
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "DOCK_UP lose time line !"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 313
    :catch_0
    move-exception v12

    .line 314
    .local v12, "e":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    .line 336
    .end local v12    # "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 320
    :cond_0
    sget v1, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static {v1}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v1

    iget v9, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_height:F

    .line 321
    .local v9, "dockHeight":F
    sget v1, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v9, v2

    sub-float v11, v1, v2

    .line 322
    .local v11, "dockY":F
    const/4 v10, 0x0

    .line 323
    .local v10, "dockX":F
    new-instance v14, Lcom/smartisanos/smengine/math/Vector2f;

    invoke-direct {v14}, Lcom/smartisanos/smengine/math/Vector2f;-><init>()V

    .line 324
    .local v14, "v":Lcom/smartisanos/smengine/math/Vector2f;
    sget v1, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v1, v1

    sget v2, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    int-to-float v2, v2

    invoke-static {v10, v11, v1, v2, v14}, Lcom/smartisanos/smengine/util/GeomUtil;->convertLeftTopPointToMidPointCoordinate(FFFFLcom/smartisanos/smengine/math/Vector2f;)Lcom/smartisanos/smengine/math/Vector2f;

    .line 325
    iget v11, v14, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    .line 326
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->mView:Lcom/smartisanos/launcher/view/DockView;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/DockView;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v6

    .line 327
    .local v6, "loc":Lcom/smartisanos/smengine/math/Vector3f;
    new-instance v7, Lcom/smartisanos/smengine/math/Vector3f;

    iget v1, v6, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v2, v6, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-direct {v7, v1, v11, v2}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    .line 328
    .local v7, "to":Lcom/smartisanos/smengine/math/Vector3f;
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->mView:Lcom/smartisanos/launcher/view/DockView;

    const/4 v3, 0x0

    const/16 v5, 0xe

    move-object v1, p0

    move/from16 v4, p1

    invoke-virtual/range {v1 .. v7}, Lcom/smartisanos/launcher/animations/DockViewAnimation;->anim(Lcom/smartisanos/smengine/SceneNode;IFILcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-result-object v8

    .line 329
    .local v8, "anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    new-instance v1, Lcom/smartisanos/launcher/animations/DockViewAnimation$3;

    invoke-direct {v1, p0}, Lcom/smartisanos/launcher/animations/DockViewAnimation$3;-><init>(Lcom/smartisanos/launcher/animations/DockViewAnimation;)V

    invoke-virtual {v8, v1}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 335
    const/4 v1, 0x0

    invoke-virtual {v13, v1, v8}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    goto :goto_0
.end method

.method private runHideBubbleForSort(FLjava/util/List;)V
    .locals 27
    .param p1, "time"    # F
    .param p2, "params"    # Ljava/util/List;

    .prologue
    .line 1044
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->sortBubbleTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    if-eqz v1, :cond_0

    .line 1045
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->sortBubbleTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/AnimationTimeLine;->forceFinish()V

    .line 1047
    :cond_0
    new-instance v1, Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-direct {v1}, Lcom/smartisanos/smengine/AnimationTimeLine;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->sortBubbleTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 1048
    new-instance v7, Lcom/smartisanos/smengine/math/Vector4f;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v7, v1, v3, v4, v5}, Lcom/smartisanos/smengine/math/Vector4f;-><init>(FFFF)V

    .line 1049
    .local v7, "dark":Lcom/smartisanos/smengine/math/Vector4f;
    new-instance v6, Lcom/smartisanos/smengine/math/Vector4f;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v6, v1, v3, v4, v5}, Lcom/smartisanos/smengine/math/Vector4f;-><init>(FFFF)V

    .line 1050
    .local v6, "brightness":Lcom/smartisanos/smengine/math/Vector4f;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->mView:Lcom/smartisanos/launcher/view/DockView;

    iget-object v2, v1, Lcom/smartisanos/launcher/view/DockView;->mSortBubble:Lcom/smartisanos/smengine/RectNode;

    .line 1051
    .local v2, "bubble":Lcom/smartisanos/smengine/RectNode;
    const/4 v3, 0x3

    const/4 v5, 0x3

    move-object/from16 v1, p0

    move/from16 v4, p1

    invoke-virtual/range {v1 .. v7}, Lcom/smartisanos/launcher/animations/DockViewAnimation;->anim(Lcom/smartisanos/smengine/SceneNode;IFILcom/smartisanos/smengine/math/Vector4f;Lcom/smartisanos/smengine/math/Vector4f;)Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-result-object v22

    .line 1052
    .local v22, "colorAnim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->sortBubbleTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    const/4 v3, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v1, v3, v0}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 1053
    invoke-virtual {v2}, Lcom/smartisanos/smengine/RectNode;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v13

    .line 1054
    .local v13, "transFrom":Lcom/smartisanos/smengine/math/Vector3f;
    new-instance v14, Lcom/smartisanos/smengine/math/Vector3f;

    iget v1, v13, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v3, v13, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    const/high16 v4, 0x41200000    # 10.0f

    sub-float/2addr v3, v4

    iget v4, v13, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-direct {v14, v1, v3, v4}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    .line 1055
    .local v14, "transTo":Lcom/smartisanos/smengine/math/Vector3f;
    const/4 v10, 0x0

    const/4 v12, 0x3

    move-object/from16 v8, p0

    move-object v9, v2

    move/from16 v11, p1

    invoke-virtual/range {v8 .. v14}, Lcom/smartisanos/launcher/animations/DockViewAnimation;->anim(Lcom/smartisanos/smengine/SceneNode;IFILcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-result-object v25

    .line 1056
    .local v25, "transAnim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->sortBubbleTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    const/4 v3, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v1, v3, v0}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 1057
    invoke-virtual {v2}, Lcom/smartisanos/smengine/RectNode;->getWidth()F

    move-result v26

    .line 1058
    .local v26, "w":F
    invoke-virtual {v2}, Lcom/smartisanos/smengine/RectNode;->getHeight()F

    move-result v23

    .line 1059
    .local v23, "h":F
    new-instance v20, Lcom/smartisanos/smengine/math/Vector3f;

    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v26, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v23, v3

    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-direct {v0, v1, v3, v4}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    .line 1060
    .local v20, "scaleFrom":Lcom/smartisanos/smengine/math/Vector3f;
    const v1, 0x3f75c28f    # 0.96f

    mul-float v26, v26, v1

    .line 1061
    const v1, 0x3f75c28f    # 0.96f

    mul-float v23, v23, v1

    .line 1062
    new-instance v21, Lcom/smartisanos/smengine/math/Vector3f;

    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v26, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v23, v3

    const/4 v4, 0x0

    move-object/from16 v0, v21

    invoke-direct {v0, v1, v3, v4}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    .line 1063
    .local v21, "scaleTo":Lcom/smartisanos/smengine/math/Vector3f;
    const/16 v17, 0x1

    const/16 v19, 0x3

    move-object/from16 v15, p0

    move-object/from16 v16, v2

    move/from16 v18, p1

    invoke-virtual/range {v15 .. v21}, Lcom/smartisanos/launcher/animations/DockViewAnimation;->anim(Lcom/smartisanos/smengine/SceneNode;IFILcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-result-object v24

    .line 1064
    .local v24, "scaleAnim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->sortBubbleTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    const/4 v3, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v1, v3, v0}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 1065
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->sortBubbleTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    new-instance v3, Lcom/smartisanos/launcher/animations/DockViewAnimation$10;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/smartisanos/launcher/animations/DockViewAnimation$10;-><init>(Lcom/smartisanos/launcher/animations/DockViewAnimation;)V

    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 1072
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->sortBubbleTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/AnimationTimeLine;->start()V

    .line 1073
    return-void
.end method

.method private runHideSortButton(FLjava/util/List;)V
    .locals 46
    .param p1, "time"    # F
    .param p2, "params"    # Ljava/util/List;

    .prologue
    .line 916
    const/16 v44, 0x0

    .line 918
    .local v44, "timeLine":Lcom/smartisanos/smengine/AnimationTimeLine;
    const/4 v3, 0x0

    :try_start_0
    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/smartisanos/smengine/AnimationTimeLine;

    move-object/from16 v44, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 920
    :goto_0
    new-instance v15, Lcom/smartisanos/smengine/math/Vector4f;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    invoke-direct {v15, v3, v5, v7, v10}, Lcom/smartisanos/smengine/math/Vector4f;-><init>(FFFF)V

    .line 921
    .local v15, "dark":Lcom/smartisanos/smengine/math/Vector4f;
    new-instance v16, Lcom/smartisanos/smengine/math/Vector4f;

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    move-object/from16 v0, v16

    invoke-direct {v0, v3, v5, v7, v10}, Lcom/smartisanos/smengine/math/Vector4f;-><init>(FFFF)V

    .line 922
    .local v16, "brightness":Lcom/smartisanos/smengine/math/Vector4f;
    const/high16 v6, 0x3e800000    # 0.25f

    .line 923
    .local v6, "dockIconTime":F
    const/high16 v43, 0x3e800000    # 0.25f

    .line 924
    .local v43, "sortIconTime":F
    const v34, 0x3d23d70a    # 0.04f

    .line 925
    .local v34, "delayTime":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->mView:Lcom/smartisanos/launcher/view/DockView;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/DockView;->getAllCellsOnDock()Ljava/util/ArrayList;

    move-result-object v30

    .line 926
    .local v30, "cells":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/view/Cell;>;"
    invoke-interface/range {v30 .. v30}, Ljava/util/List;->size()I

    move-result v31

    .line 927
    .local v31, "count":I
    const/16 v37, 0x0

    .line 928
    .local v37, "layer":I
    if-lez v31, :cond_3

    .line 929
    const/16 v35, 0x0

    .local v35, "i":I
    :goto_1
    move/from16 v0, v35

    move/from16 v1, v31

    if-ge v0, v1, :cond_3

    .line 930
    move-object/from16 v0, v30

    move/from16 v1, v35

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/view/Cell;

    .line 931
    .local v4, "cell":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Cell;->getItemInfo()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v3

    iget v0, v3, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    move/from16 v36, v0

    .line 932
    .local v36, "index":I
    sub-int v3, v31, v36

    add-int/lit8 v3, v3, -0x1

    int-to-float v0, v3

    move/from16 v32, v0

    .line 933
    .local v32, "delay":F
    sget-object v3, Lcom/smartisanos/launcher/data/Constants;->sHandHabit:Lcom/smartisanos/launcher/data/Constants$HandHabit;

    sget-object v5, Lcom/smartisanos/launcher/data/Constants$HandHabit;->RIGHT:Lcom/smartisanos/launcher/data/Constants$HandHabit;

    if-ne v3, v5, :cond_0

    .line 934
    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v32, v0

    .line 936
    :cond_0
    mul-float v32, v32, v34

    .line 937
    const/4 v3, 0x1

    invoke-virtual {v4, v3}, Lcom/smartisanos/launcher/view/Cell;->setVisibility(Z)V

    .line 938
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->mView:Lcom/smartisanos/launcher/view/DockView;

    iget-object v3, v3, Lcom/smartisanos/launcher/view/DockView;->sortButtons:[Lcom/smartisanos/smengine/RectNode;

    array-length v3, v3

    int-to-float v3, v3

    mul-float v3, v3, v34

    add-float v32, v32, v3

    .line 939
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Cell;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v8

    .line 940
    .local v8, "from":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Cell;->getSaveData()Lcom/smartisanos/launcher/view/Cell$SaveData;

    move-result-object v3

    iget-object v9, v3, Lcom/smartisanos/launcher/view/Cell$SaveData;->oldLocation:Lcom/smartisanos/smengine/math/Vector3f;

    .line 941
    .local v9, "to":Lcom/smartisanos/smengine/math/Vector3f;
    const/4 v5, 0x0

    const/4 v7, 0x2

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/smartisanos/launcher/animations/DockViewAnimation;->anim(Lcom/smartisanos/smengine/SceneNode;IFILcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-result-object v45

    .line 942
    .local v45, "transAnim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    move-object/from16 v0, v44

    move/from16 v1, v32

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 944
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Cell;->getForegroundRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v11

    .line 945
    .local v11, "foregroundRect":Lcom/smartisanos/smengine/RectNode;
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Cell;->getForegroundOverlapRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v18

    .line 946
    .local v18, "overlayRect":Lcom/smartisanos/smengine/RectNode;
    if-eqz v11, :cond_1

    .line 947
    const/4 v3, 0x2

    invoke-virtual {v4, v3}, Lcom/smartisanos/launcher/view/Cell;->setForegroundRectBlendMode(I)V

    .line 948
    const/4 v12, 0x3

    const/4 v14, 0x2

    move-object/from16 v10, p0

    move/from16 v13, p1

    invoke-virtual/range {v10 .. v16}, Lcom/smartisanos/launcher/animations/DockViewAnimation;->anim(Lcom/smartisanos/smengine/SceneNode;IFILcom/smartisanos/smengine/math/Vector4f;Lcom/smartisanos/smengine/math/Vector4f;)Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-result-object v28

    .line 949
    .local v28, "alphaAnim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    new-instance v3, Lcom/smartisanos/launcher/animations/DockViewAnimation$7;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/smartisanos/launcher/animations/DockViewAnimation$7;-><init>(Lcom/smartisanos/launcher/animations/DockViewAnimation;Lcom/smartisanos/launcher/view/Cell;)V

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 956
    move-object/from16 v0, v44

    move/from16 v1, v32

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 958
    .end local v28    # "alphaAnim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    :cond_1
    if-eqz v18, :cond_2

    .line 959
    const/4 v3, 0x2

    invoke-virtual {v4, v3}, Lcom/smartisanos/launcher/view/Cell;->setForegroundRectBlendMode(I)V

    .line 960
    const/16 v19, 0x3

    const/16 v21, 0x2

    move-object/from16 v17, p0

    move/from16 v20, p1

    move-object/from16 v22, v15

    move-object/from16 v23, v16

    invoke-virtual/range {v17 .. v23}, Lcom/smartisanos/launcher/animations/DockViewAnimation;->anim(Lcom/smartisanos/smengine/SceneNode;IFILcom/smartisanos/smengine/math/Vector4f;Lcom/smartisanos/smengine/math/Vector4f;)Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-result-object v28

    .line 961
    .restart local v28    # "alphaAnim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    new-instance v3, Lcom/smartisanos/launcher/animations/DockViewAnimation$8;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/smartisanos/launcher/animations/DockViewAnimation$8;-><init>(Lcom/smartisanos/launcher/animations/DockViewAnimation;Lcom/smartisanos/launcher/view/Cell;)V

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 967
    move-object/from16 v0, v44

    move/from16 v1, v32

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 929
    .end local v28    # "alphaAnim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    :cond_2
    add-int/lit8 v35, v35, 0x1

    goto/16 :goto_1

    .line 971
    .end local v4    # "cell":Lcom/smartisanos/launcher/view/Cell;
    .end local v8    # "from":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v9    # "to":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v11    # "foregroundRect":Lcom/smartisanos/smengine/RectNode;
    .end local v18    # "overlayRect":Lcom/smartisanos/smengine/RectNode;
    .end local v32    # "delay":F
    .end local v35    # "i":I
    .end local v36    # "index":I
    .end local v45    # "transAnim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->mView:Lcom/smartisanos/launcher/view/DockView;

    iget-object v0, v3, Lcom/smartisanos/launcher/view/DockView;->sortButtons:[Lcom/smartisanos/smengine/RectNode;

    move-object/from16 v39, v0

    .line 972
    .local v39, "nodes":[Lcom/smartisanos/smengine/RectNode;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->mView:Lcom/smartisanos/launcher/view/DockView;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/DockView;->getSortButtonShowLoc()[Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v42

    .line 973
    .local v42, "showLocs":[Lcom/smartisanos/smengine/math/Vector3f;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->mView:Lcom/smartisanos/launcher/view/DockView;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/DockView;->getSettingButtonShowLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v40

    .line 974
    .local v40, "settingLoc":Lcom/smartisanos/smengine/math/Vector3f;
    move-object/from16 v0, v39

    array-length v0, v0

    move/from16 v38, v0

    .line 975
    .local v38, "length":I
    add-int/lit8 v35, v38, -0x1

    .restart local v35    # "i":I
    :goto_2
    if-ltz v35, :cond_5

    .line 976
    sub-int v3, v38, v35

    add-int/lit8 v3, v3, -0x1

    int-to-float v0, v3

    move/from16 v32, v0

    .line 977
    .restart local v32    # "delay":F
    sget-object v3, Lcom/smartisanos/launcher/data/Constants;->sHandHabit:Lcom/smartisanos/launcher/data/Constants$HandHabit;

    sget-object v5, Lcom/smartisanos/launcher/data/Constants$HandHabit;->RIGHT:Lcom/smartisanos/launcher/data/Constants$HandHabit;

    if-ne v3, v5, :cond_4

    .line 978
    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v32, v0

    .line 980
    :cond_4
    mul-float v32, v32, v34

    .line 981
    aget-object v20, v39, v35

    .line 982
    .local v20, "node":Lcom/smartisanos/smengine/RectNode;
    aget-object v8, v42, v35

    .line 983
    .restart local v8    # "from":Lcom/smartisanos/smengine/math/Vector3f;
    move-object/from16 v9, v40

    .line 984
    .restart local v9    # "to":Lcom/smartisanos/smengine/math/Vector3f;
    const/16 v21, 0x0

    const/16 v23, 0x2

    move-object/from16 v19, p0

    move/from16 v22, v43

    move-object/from16 v24, v8

    move-object/from16 v25, v9

    invoke-virtual/range {v19 .. v25}, Lcom/smartisanos/launcher/animations/DockViewAnimation;->anim(Lcom/smartisanos/smengine/SceneNode;IFILcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-result-object v29

    .line 985
    .local v29, "anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    move-object/from16 v0, v44

    move/from16 v1, v32

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 987
    const/16 v21, 0x3

    const/16 v23, 0x2

    move-object/from16 v19, p0

    move/from16 v22, v6

    move-object/from16 v24, v16

    move-object/from16 v25, v15

    invoke-virtual/range {v19 .. v25}, Lcom/smartisanos/launcher/animations/DockViewAnimation;->anim(Lcom/smartisanos/smengine/SceneNode;IFILcom/smartisanos/smengine/math/Vector4f;Lcom/smartisanos/smengine/math/Vector4f;)Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-result-object v28

    .line 988
    .restart local v28    # "alphaAnim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    move-object/from16 v0, v44

    move/from16 v1, v32

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 975
    add-int/lit8 v35, v35, -0x1

    goto :goto_2

    .line 991
    .end local v8    # "from":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v9    # "to":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v20    # "node":Lcom/smartisanos/smengine/RectNode;
    .end local v28    # "alphaAnim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    .end local v29    # "anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    .end local v32    # "delay":F
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->mView:Lcom/smartisanos/launcher/view/DockView;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/DockView;->getSettingButton()Lcom/smartisanos/launcher/view/SettingButton;

    move-result-object v22

    .line 992
    .local v22, "settingButton":Lcom/smartisanos/launcher/view/SettingButton;
    invoke-virtual/range {v22 .. v22}, Lcom/smartisanos/launcher/view/SettingButton;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v8

    .line 993
    .restart local v8    # "from":Lcom/smartisanos/smengine/math/Vector3f;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->mView:Lcom/smartisanos/launcher/view/DockView;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/DockView;->getSettingButtonShowLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v9

    .line 994
    .restart local v9    # "to":Lcom/smartisanos/smengine/math/Vector3f;
    const/16 v23, 0x0

    const/16 v25, 0x2

    move-object/from16 v21, p0

    move/from16 v24, p1

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    invoke-virtual/range {v21 .. v27}, Lcom/smartisanos/launcher/animations/DockViewAnimation;->anim(Lcom/smartisanos/smengine/SceneNode;IFILcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-result-object v41

    .line 995
    .local v41, "setting_move_anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->mView:Lcom/smartisanos/launcher/view/DockView;

    iget-object v3, v3, Lcom/smartisanos/launcher/view/DockView;->sortButtons:[Lcom/smartisanos/smengine/RectNode;

    array-length v3, v3

    add-int v3, v3, v31

    add-int/lit8 v3, v3, -0x1

    int-to-float v0, v3

    move/from16 v33, v0

    .line 996
    .local v33, "delayBase":F
    mul-float v33, v33, v34

    .line 997
    move-object/from16 v0, v44

    move/from16 v1, v33

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 998
    return-void

    .line 919
    .end local v6    # "dockIconTime":F
    .end local v8    # "from":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v9    # "to":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v15    # "dark":Lcom/smartisanos/smengine/math/Vector4f;
    .end local v16    # "brightness":Lcom/smartisanos/smengine/math/Vector4f;
    .end local v22    # "settingButton":Lcom/smartisanos/launcher/view/SettingButton;
    .end local v30    # "cells":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/view/Cell;>;"
    .end local v31    # "count":I
    .end local v33    # "delayBase":F
    .end local v34    # "delayTime":F
    .end local v35    # "i":I
    .end local v37    # "layer":I
    .end local v38    # "length":I
    .end local v39    # "nodes":[Lcom/smartisanos/smengine/RectNode;
    .end local v40    # "settingLoc":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v41    # "setting_move_anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    .end local v42    # "showLocs":[Lcom/smartisanos/smengine/math/Vector3f;
    .end local v43    # "sortIconTime":F
    :catch_0
    move-exception v3

    goto/16 :goto_0
.end method

.method private runIconSortConfirmAnim(FLjava/util/List;)V
    .locals 6
    .param p1, "time"    # F
    .param p2, "params"    # Ljava/util/List;

    .prologue
    const/4 v5, 0x0

    .line 1235
    const/4 v3, 0x0

    .line 1237
    .local v3, "timeLine":Lcom/smartisanos/smengine/AnimationTimeLine;
    const/4 v4, 0x0

    :try_start_0
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/smartisanos/smengine/AnimationTimeLine;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1240
    :goto_0
    if-nez v3, :cond_0

    .line 1241
    sget-object v4, Lcom/smartisanos/launcher/animations/DockViewAnimation;->log:Lcom/smartisanos/launcher/LOG;

    const-string v5, "runIconSortConfirmAnim return by timeLine is null"

    invoke-virtual {v4, v5}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 1255
    :goto_1
    return-void

    .line 1245
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1246
    .local v1, "confirmButtonAnimParams":Ljava/util/List;
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1247
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1248
    sget-object v4, Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;->SWITCH_SORT_CONFIRM_BUTTON_STATUS:Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;

    invoke-virtual {p0, v4, p1, v1}, Lcom/smartisanos/launcher/animations/DockViewAnimation;->handleAnimation(Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;FLjava/util/List;)V

    .line 1250
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1251
    .local v2, "sortButtonAnimParams":Ljava/util/List;
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1252
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1253
    const v4, 0x3e99999a    # 0.3f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1254
    sget-object v4, Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;->SWITCH_SORT_BUTTON_STATUS:Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;

    invoke-virtual {p0, v4, p1, v2}, Lcom/smartisanos/launcher/animations/DockViewAnimation;->handleAnimation(Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;FLjava/util/List;)V

    goto :goto_1

    .line 1238
    .end local v1    # "confirmButtonAnimParams":Ljava/util/List;
    .end local v2    # "sortButtonAnimParams":Ljava/util/List;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private runReduceDockViewSize(FLjava/util/List;)V
    .locals 32
    .param p1, "time"    # F
    .param p2, "params"    # Ljava/util/List;

    .prologue
    .line 570
    const/16 v31, 0x0

    .line 572
    .local v31, "timeLine":Lcom/smartisanos/smengine/AnimationTimeLine;
    const/4 v3, 0x0

    :try_start_0
    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/smartisanos/smengine/AnimationTimeLine;

    move-object/from16 v31, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 577
    if-nez v31, :cond_0

    .line 578
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v5, "REDUCE_DOCK_VIEW_SIZE lose time line !"

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 573
    :catch_0
    move-exception v21

    .line 574
    .local v21, "e":Ljava/lang/Exception;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Exception;->printStackTrace()V

    .line 618
    .end local v21    # "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 580
    :cond_0
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 581
    .local v23, "list":Ljava/util/ArrayList;
    move-object/from16 v0, v23

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 582
    sget-object v3, Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;->DOCK_FALL:Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v23

    invoke-virtual {v0, v3, v1, v2}, Lcom/smartisanos/launcher/animations/DockViewAnimation;->handleAnimation(Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;FLjava/util/List;)V

    .line 583
    sget-object v3, Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;->SETTING_BTN_MOVE_APPEAR:Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v23

    invoke-virtual {v0, v3, v1, v2}, Lcom/smartisanos/launcher/animations/DockViewAnimation;->handleAnimation(Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;FLjava/util/List;)V

    .line 586
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->mView:Lcom/smartisanos/launcher/view/DockView;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/DockView;->getDockCellCount()I

    move-result v18

    .line 587
    .local v18, "cell_count":I
    sget v3, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    invoke-static {v3}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v24

    .line 588
    .local v24, "multiPageLP":Lcom/smartisanos/launcher/data/LayoutProperty;
    sget v3, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static {v3}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v30

    .line 589
    .local v30, "singlePageLP":Lcom/smartisanos/launcher/data/LayoutProperty;
    move-object/from16 v0, v24

    iget v3, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    move-object/from16 v0, v30

    iget v5, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    div-float v28, v3, v5

    .line 590
    .local v28, "scalex":F
    move-object/from16 v0, v24

    iget v3, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    move-object/from16 v0, v30

    iget v5, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    div-float v29, v3, v5

    .line 591
    .local v29, "scaley":F
    new-instance v15, Lcom/smartisanos/smengine/math/Vector3f;

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v15, v3, v5, v6}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    .line 592
    .local v15, "scaleFrom":Lcom/smartisanos/smengine/math/Vector3f;
    new-instance v16, Lcom/smartisanos/smengine/math/Vector3f;

    const/high16 v3, 0x3f800000    # 1.0f

    move-object/from16 v0, v16

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v2, v3}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    .line 593
    .local v16, "scaleTo":Lcom/smartisanos/smengine/math/Vector3f;
    if-lez v18, :cond_1

    .line 595
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->mView:Lcom/smartisanos/launcher/view/DockView;

    const/4 v5, 0x0

    sget v6, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    invoke-virtual {v3, v5, v6}, Lcom/smartisanos/launcher/view/DockView;->getCellLocation(ZI)[Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v17

    .line 596
    .local v17, "cellLocs":[Lcom/smartisanos/smengine/math/Vector3f;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->mView:Lcom/smartisanos/launcher/view/DockView;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/DockView;->updateDockCellIndex()V

    .line 597
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_1
    move/from16 v0, v22

    move/from16 v1, v18

    if-ge v0, v1, :cond_1

    .line 598
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->mView:Lcom/smartisanos/launcher/view/DockView;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/DockView;->getAllCellsOnDock()Ljava/util/ArrayList;

    move-result-object v3

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/view/Cell;

    .line 599
    .local v4, "cell":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Cell;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v8

    .line 600
    .local v8, "from":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Cell;->getCellIndex()I

    move-result v3

    aget-object v9, v17, v3

    .line 601
    .local v9, "to":Lcom/smartisanos/smengine/math/Vector3f;
    const/4 v5, 0x0

    const/16 v7, 0xe

    move-object/from16 v3, p0

    move/from16 v6, p1

    invoke-virtual/range {v3 .. v9}, Lcom/smartisanos/launcher/animations/DockViewAnimation;->anim(Lcom/smartisanos/smengine/SceneNode;IFILcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-result-object v19

    .line 602
    .local v19, "cell_move_anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    const/4 v3, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v19

    invoke-virtual {v0, v3, v1}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 603
    const/4 v12, 0x1

    const/16 v14, 0xe

    move-object/from16 v10, p0

    move-object v11, v4

    move/from16 v13, p1

    invoke-virtual/range {v10 .. v16}, Lcom/smartisanos/launcher/animations/DockViewAnimation;->anim(Lcom/smartisanos/smengine/SceneNode;IFILcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-result-object v20

    .line 604
    .local v20, "cell_scale_anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    const/4 v3, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v20

    invoke-virtual {v0, v3, v1}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 597
    add-int/lit8 v22, v22, 0x1

    goto :goto_1

    .line 608
    .end local v4    # "cell":Lcom/smartisanos/launcher/view/Cell;
    .end local v8    # "from":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v9    # "to":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v17    # "cellLocs":[Lcom/smartisanos/smengine/math/Vector3f;
    .end local v19    # "cell_move_anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    .end local v20    # "cell_scale_anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    .end local v22    # "i":I
    :cond_1
    sget v3, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    invoke-static {v3}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v26

    .line 609
    .local v26, "prop":Lcom/smartisanos/launcher/data/LayoutProperty;
    move-object/from16 v0, v26

    iget v3, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->setting_button:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float v27, v3, v5

    .line 610
    .local v27, "scale":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->mView:Lcom/smartisanos/launcher/view/DockView;

    iget-object v5, v3, Lcom/smartisanos/launcher/view/DockView;->sortButtons:[Lcom/smartisanos/smengine/RectNode;

    array-length v6, v5

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v6, :cond_2

    aget-object v25, v5, v3

    .line 611
    .local v25, "node":Lcom/smartisanos/smengine/RectNode;
    const/4 v7, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v27

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2, v7}, Lcom/smartisanos/smengine/RectNode;->setScale(FFF)V

    .line 612
    invoke-virtual/range {v25 .. v25}, Lcom/smartisanos/smengine/RectNode;->updateGeometricState()V

    .line 610
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 614
    .end local v25    # "node":Lcom/smartisanos/smengine/RectNode;
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->mView:Lcom/smartisanos/launcher/view/DockView;

    iget-object v3, v3, Lcom/smartisanos/launcher/view/DockView;->mSortConfirmButton:Lcom/smartisanos/smengine/RectNode;

    const/4 v5, 0x0

    move/from16 v0, v27

    move/from16 v1, v27

    invoke-virtual {v3, v0, v1, v5}, Lcom/smartisanos/smengine/RectNode;->setScale(FFF)V

    .line 615
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->mView:Lcom/smartisanos/launcher/view/DockView;

    iget-object v3, v3, Lcom/smartisanos/launcher/view/DockView;->mSortConfirmButton:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/RectNode;->updateGeometricState()V

    .line 616
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->mView:Lcom/smartisanos/launcher/view/DockView;

    iget-object v3, v3, Lcom/smartisanos/launcher/view/DockView;->mSortCancelButton:Lcom/smartisanos/smengine/RectNode;

    const/4 v5, 0x0

    move/from16 v0, v27

    move/from16 v1, v27

    invoke-virtual {v3, v0, v1, v5}, Lcom/smartisanos/smengine/RectNode;->setScale(FFF)V

    .line 617
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->mView:Lcom/smartisanos/launcher/view/DockView;

    iget-object v3, v3, Lcom/smartisanos/launcher/view/DockView;->mSortCancelButton:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/RectNode;->updateGeometricState()V

    goto/16 :goto_0
.end method

.method private runRelayoutByEnterOrExitCellArea(FLjava/util/List;)V
    .locals 21
    .param p1, "time"    # F
    .param p2, "params"    # Ljava/util/List;

    .prologue
    .line 787
    const/16 v20, 0x0

    .line 789
    .local v20, "timeLine":Lcom/smartisanos/smengine/AnimationTimeLine;
    const/4 v2, 0x0

    :try_start_0
    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/smartisanos/smengine/AnimationTimeLine;

    move-object/from16 v20, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 791
    :goto_0
    const/4 v13, 0x0

    .line 793
    .local v13, "collider":Lcom/smartisanos/launcher/view/Cell;
    const/4 v2, 0x1

    :try_start_1
    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/smartisanos/launcher/view/Cell;

    move-object v13, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 795
    :goto_1
    if-nez v20, :cond_0

    .line 796
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "RELAYOUT_BY_ENTER_OR_EXIT_CELL_AREA lose time line !"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 798
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->mView:Lcom/smartisanos/launcher/view/DockView;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/DockView;->getDockCellCount()I

    move-result v10

    .line 799
    .local v10, "cellCount":I
    if-eqz v10, :cond_1

    const/4 v2, 0x1

    if-ne v10, v2, :cond_2

    .line 800
    :cond_1
    sget-object v2, Lcom/smartisanos/launcher/animations/DockViewAnimation;->log:Lcom/smartisanos/launcher/LOG;

    const-string v4, "RELAYOUT_BY_ENTER_OR_EXIT_CELL_AREA nothing to do by cellCount is 0 or 1"

    invoke-virtual {v2, v4}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 827
    :goto_2
    return-void

    .line 804
    :cond_2
    new-instance v11, Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-direct {v11}, Lcom/smartisanos/smengine/AnimationTimeLine;-><init>()V

    .line 805
    .local v11, "cellMoveTimeLine":Lcom/smartisanos/smengine/AnimationTimeLine;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->mView:Lcom/smartisanos/launcher/view/DockView;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/DockView;->updateDockCellIndex()V

    .line 806
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->mView:Lcom/smartisanos/launcher/view/DockView;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/DockView;->getAllCellsOnDock()Ljava/util/ArrayList;

    move-result-object v12

    .line 807
    .local v12, "cells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    sget-boolean v2, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v2, :cond_3

    sget-object v2, Lcom/smartisanos/launcher/animations/DockViewAnimation;->log:Lcom/smartisanos/launcher/LOG;

    const-string v4, "DEBUG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cells size ===> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->mView:Lcom/smartisanos/launcher/view/DockView;

    const/4 v4, 0x1

    sget v5, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    const/4 v6, 0x1

    invoke-virtual {v2, v4, v5, v6}, Lcom/smartisanos/launcher/view/DockView;->getCellLocation(ZIZ)[Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v17

    .line 809
    .local v17, "locs":[Lcom/smartisanos/smengine/math/Vector3f;
    const-wide/16 v14, -0x1

    .line 810
    .local v14, "handCellId":J
    if-eqz v13, :cond_4

    .line 811
    invoke-virtual {v13}, Lcom/smartisanos/launcher/view/Cell;->getItemInfo()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v2

    iget-wide v14, v2, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    .line 813
    :cond_4
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_3
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v16

    if-ge v0, v2, :cond_6

    .line 814
    move/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/Cell;

    .line 815
    .local v3, "cell":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Cell;->getItemInfo()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v2

    iget-wide v0, v2, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    move-wide/from16 v18, v0

    .line 816
    .local v18, "id":J
    cmp-long v2, v14, v18

    if-eqz v2, :cond_5

    .line 817
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Cell;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v7

    .line 818
    .local v7, "from":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Cell;->getCellIndex()I

    move-result v2

    aget-object v8, v17, v2

    .line 819
    .local v8, "to":Lcom/smartisanos/smengine/math/Vector3f;
    const/4 v4, 0x0

    const/16 v6, 0xe

    move-object/from16 v2, p0

    move/from16 v5, p1

    invoke-virtual/range {v2 .. v8}, Lcom/smartisanos/launcher/animations/DockViewAnimation;->anim(Lcom/smartisanos/smengine/SceneNode;IFILcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-result-object v9

    .line 820
    .local v9, "anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    const/4 v2, 0x0

    invoke-virtual {v11, v2, v9}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 821
    sget-boolean v2, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v2, :cond_5

    sget-object v2, Lcom/smartisanos/launcher/animations/DockViewAnimation;->log:Lcom/smartisanos/launcher/LOG;

    const-string v4, "A140"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "i="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", index="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Cell;->getCellIndex()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    .end local v7    # "from":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v8    # "to":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v9    # "anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    :cond_5
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 826
    .end local v3    # "cell":Lcom/smartisanos/launcher/view/Cell;
    .end local v18    # "id":J
    :cond_6
    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v11}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    goto/16 :goto_2

    .line 794
    .end local v10    # "cellCount":I
    .end local v11    # "cellMoveTimeLine":Lcom/smartisanos/smengine/AnimationTimeLine;
    .end local v12    # "cells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    .end local v14    # "handCellId":J
    .end local v16    # "i":I
    .end local v17    # "locs":[Lcom/smartisanos/smengine/math/Vector3f;
    :catch_0
    move-exception v2

    goto/16 :goto_1

    .line 790
    .end local v13    # "collider":Lcom/smartisanos/launcher/view/Cell;
    :catch_1
    move-exception v2

    goto/16 :goto_0
.end method

.method private runRelayoutByLongPress(FLjava/util/List;)V
    .locals 22
    .param p1, "time"    # F
    .param p2, "params"    # Ljava/util/List;

    .prologue
    .line 461
    if-eqz p2, :cond_0

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 462
    :cond_0
    sget-boolean v2, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/smartisanos/launcher/animations/DockViewAnimation;->log:Lcom/smartisanos/launcher/LOG;

    const-string v4, "DEBUG"

    const-string v5, "RELAYOUT_BY_LONG_PRESSED break by params is null"

    invoke-virtual {v2, v4, v5}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    :cond_1
    :goto_0
    return-void

    .line 465
    :cond_2
    const/4 v10, 0x0

    .line 466
    .local v10, "handler":Lcom/smartisanos/launcher/view/Cell;
    const/16 v17, 0x0

    .line 467
    .local v17, "timeLine":Lcom/smartisanos/smengine/AnimationTimeLine;
    if-eqz p2, :cond_3

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 469
    const/4 v2, 0x0

    :try_start_0
    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/smartisanos/smengine/AnimationTimeLine;

    move-object/from16 v17, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 471
    :goto_1
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x1

    if-le v2, v4, :cond_3

    .line 472
    const/4 v2, 0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    .line 473
    .local v16, "obj":Ljava/lang/Object;
    if-eqz v16, :cond_3

    invoke-static/range {v16 .. v16}, Lcom/smartisanos/launcher/view/Cell;->sIsInstanceFromCell(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v10, v16

    .line 475
    check-cast v10, Lcom/smartisanos/launcher/view/Cell;

    .line 479
    .end local v16    # "obj":Ljava/lang/Object;
    :cond_3
    if-nez v17, :cond_4

    .line 480
    sget-object v2, Lcom/smartisanos/launcher/animations/DockViewAnimation;->log:Lcom/smartisanos/launcher/LOG;

    const-string v4, "DEBUG"

    const-string v5, "RELAYOUT_BY_LONG_PRESSED timeLine is null !"

    invoke-virtual {v2, v4, v5}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "RELAYOUT_BY_LONG_PRESSED lose time line !"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 483
    :cond_4
    const/4 v14, 0x0

    .line 484
    .local v14, "locArr":[Lcom/smartisanos/smengine/math/Vector3f;
    if-eqz v10, :cond_6

    sget v2, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    sget v4, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    if-ne v2, v4, :cond_6

    .line 485
    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/Cell;->getCellIndex()I

    move-result v12

    .line 486
    .local v12, "index":I
    if-eqz v12, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->mView:Lcom/smartisanos/launcher/view/DockView;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/DockView;->getDockCellCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v12, v2, :cond_6

    .line 487
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->mView:Lcom/smartisanos/launcher/view/DockView;

    invoke-virtual {v2, v12}, Lcom/smartisanos/launcher/view/DockView;->getCellLocationWhenDockCellUp(I)[Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v14

    .line 490
    .end local v12    # "index":I
    :cond_6
    if-nez v14, :cond_7

    .line 491
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->mView:Lcom/smartisanos/launcher/view/DockView;

    const/4 v4, 0x1

    sget v5, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    invoke-virtual {v2, v4, v5}, Lcom/smartisanos/launcher/view/DockView;->getCellLocation(ZI)[Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v14

    .line 493
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->mView:Lcom/smartisanos/launcher/view/DockView;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/DockView;->updateDockCellIndex()V

    .line 494
    new-instance v15, Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-direct {v15}, Lcom/smartisanos/smengine/AnimationTimeLine;-><init>()V

    .line 495
    .local v15, "longPressTimeLine":Lcom/smartisanos/smengine/AnimationTimeLine;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->mView:Lcom/smartisanos/launcher/view/DockView;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/DockView;->getDockCellCount()I

    move-result v9

    .line 496
    .local v9, "count":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_2
    if-ge v11, v9, :cond_b

    .line 497
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->mView:Lcom/smartisanos/launcher/view/DockView;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/DockView;->getAllCellsOnDock()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/Cell;

    .line 498
    .local v3, "cell":Lcom/smartisanos/launcher/view/Cell;
    if-eqz v10, :cond_8

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Cell;->getItemInfo()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v2

    iget-wide v4, v2, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/Cell;->getItemInfo()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v2

    iget-wide v0, v2, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    move-wide/from16 v20, v0

    cmp-long v2, v4, v20

    if-eqz v2, :cond_9

    .line 499
    :cond_8
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Cell;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v7

    .line 500
    .local v7, "from":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Cell;->getCellIndex()I

    move-result v2

    aget-object v8, v14, v2

    .line 501
    .local v8, "to":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Cell;->getSaveData()Lcom/smartisanos/launcher/view/Cell$SaveData;

    move-result-object v2

    iput-object v8, v2, Lcom/smartisanos/launcher/view/Cell$SaveData;->oldLocation:Lcom/smartisanos/smengine/math/Vector3f;

    .line 502
    const/4 v4, 0x0

    const/16 v6, 0xe

    move-object/from16 v2, p0

    move/from16 v5, p1

    invoke-virtual/range {v2 .. v8}, Lcom/smartisanos/launcher/animations/DockViewAnimation;->anim(Lcom/smartisanos/smengine/SceneNode;IFILcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-result-object v18

    .line 503
    .local v18, "translate_anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v15, v2, v0}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 505
    .end local v7    # "from":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v8    # "to":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v18    # "translate_anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    :cond_9
    if-eqz v10, :cond_a

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Cell;->getItemInfo()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v2

    iget-wide v4, v2, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/Cell;->getItemInfo()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v2

    iget-wide v0, v2, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    move-wide/from16 v20, v0

    cmp-long v2, v4, v20

    if-nez v2, :cond_a

    .line 506
    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/Cell;->getSaveData()Lcom/smartisanos/launcher/view/Cell$SaveData;

    move-result-object v2

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Cell;->getCellIndex()I

    move-result v4

    aget-object v4, v14, v4

    iput-object v4, v2, Lcom/smartisanos/launcher/view/Cell$SaveData;->oldLocation:Lcom/smartisanos/smengine/math/Vector3f;

    .line 496
    :cond_a
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 509
    .end local v3    # "cell":Lcom/smartisanos/launcher/view/Cell;
    :cond_b
    sget v2, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    sget v4, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    if-ne v2, v4, :cond_c

    .line 511
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 512
    .local v13, "list":Ljava/util/ArrayList;
    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 513
    sget-object v2, Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;->SETTING_BTN_SCALE_DISAPPEAR:Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v2, v1, v13}, Lcom/smartisanos/launcher/animations/DockViewAnimation;->handleAnimation(Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;FLjava/util/List;)V

    .line 515
    .end local v13    # "list":Ljava/util/ArrayList;
    :cond_c
    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v15}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    goto/16 :goto_0

    .line 470
    .end local v9    # "count":I
    .end local v11    # "i":I
    .end local v14    # "locArr":[Lcom/smartisanos/smengine/math/Vector3f;
    .end local v15    # "longPressTimeLine":Lcom/smartisanos/smengine/AnimationTimeLine;
    :catch_0
    move-exception v2

    goto/16 :goto_1
.end method

.method private runRelayoutByUp(FLjava/util/List;)V
    .locals 20
    .param p1, "time"    # F
    .param p2, "params"    # Ljava/util/List;

    .prologue
    .line 520
    if-eqz p2, :cond_0

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 521
    :cond_0
    sget-object v2, Lcom/smartisanos/launcher/animations/DockViewAnimation;->log:Lcom/smartisanos/launcher/LOG;

    const-string v4, "DEBUG"

    const-string v5, "RELAYOUT_BY_UP break by params is null !"

    invoke-virtual {v2, v4, v5}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    :goto_0
    return-void

    .line 524
    :cond_1
    const/16 v16, 0x0

    .line 525
    .local v16, "timeLine":Lcom/smartisanos/smengine/AnimationTimeLine;
    const/4 v10, 0x0

    .line 526
    .local v10, "handler":Lcom/smartisanos/launcher/view/Cell;
    if-eqz p2, :cond_2

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 528
    const/4 v2, 0x0

    :try_start_0
    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/smartisanos/smengine/AnimationTimeLine;

    move-object/from16 v16, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 530
    :goto_1
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x1

    if-le v2, v4, :cond_2

    .line 531
    const/4 v2, 0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    .line 532
    .local v14, "obj":Ljava/lang/Object;
    if-eqz v14, :cond_2

    invoke-static {v14}, Lcom/smartisanos/launcher/view/Cell;->sIsInstanceFromCell(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v10, v14

    .line 533
    check-cast v10, Lcom/smartisanos/launcher/view/Cell;

    .line 537
    .end local v14    # "obj":Ljava/lang/Object;
    :cond_2
    if-nez v16, :cond_3

    .line 538
    sget-object v2, Lcom/smartisanos/launcher/animations/DockViewAnimation;->log:Lcom/smartisanos/launcher/LOG;

    const-string v4, "DEBUG"

    const-string v5, "RELAYOUT_BY_UP timeLine is null !"

    invoke-virtual {v2, v4, v5}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "RELAYOUT_BY_UP lose time line !"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 542
    :cond_3
    new-instance v15, Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-direct {v15}, Lcom/smartisanos/smengine/AnimationTimeLine;-><init>()V

    .line 543
    .local v15, "relayoutTimeLine":Lcom/smartisanos/smengine/AnimationTimeLine;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->mView:Lcom/smartisanos/launcher/view/DockView;

    const/4 v4, 0x0

    sget v5, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    invoke-virtual {v2, v4, v5}, Lcom/smartisanos/launcher/view/DockView;->getCellLocation(ZI)[Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v13

    .line 544
    .local v13, "locs":[Lcom/smartisanos/smengine/math/Vector3f;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->mView:Lcom/smartisanos/launcher/view/DockView;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/DockView;->updateDockCellIndex()V

    .line 545
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->mView:Lcom/smartisanos/launcher/view/DockView;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/DockView;->getDockCellCount()I

    move-result v9

    .line 546
    .local v9, "count":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_2
    if-ge v11, v9, :cond_7

    .line 547
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->mView:Lcom/smartisanos/launcher/view/DockView;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/DockView;->getAllCellsOnDock()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/Cell;

    .line 548
    .local v3, "cell":Lcom/smartisanos/launcher/view/Cell;
    if-eqz v10, :cond_4

    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/Cell;->getItemInfo()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v2

    iget-wide v4, v2, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Cell;->getItemInfo()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v2

    iget-wide v0, v2, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    move-wide/from16 v18, v0

    cmp-long v2, v4, v18

    if-eqz v2, :cond_6

    .line 549
    :cond_4
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Cell;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v7

    .line 550
    .local v7, "from":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Cell;->getCellIndex()I

    move-result v2

    aget-object v8, v13, v2

    .line 551
    .local v8, "to":Lcom/smartisanos/smengine/math/Vector3f;
    const/4 v4, 0x0

    const/16 v6, 0xe

    move-object/from16 v2, p0

    move/from16 v5, p1

    invoke-virtual/range {v2 .. v8}, Lcom/smartisanos/launcher/animations/DockViewAnimation;->anim(Lcom/smartisanos/smengine/SceneNode;IFILcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-result-object v17

    .line 552
    .local v17, "translate_anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v15, v2, v0}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 546
    .end local v7    # "from":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v8    # "to":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v17    # "translate_anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    :cond_5
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 554
    :cond_6
    if-eqz v10, :cond_5

    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/Cell;->getItemInfo()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v2

    iget-wide v4, v2, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Cell;->getItemInfo()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v2

    iget-wide v0, v2, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    move-wide/from16 v18, v0

    cmp-long v2, v4, v18

    if-nez v2, :cond_5

    .line 555
    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/Cell;->getSaveData()Lcom/smartisanos/launcher/view/Cell$SaveData;

    move-result-object v2

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Cell;->getCellIndex()I

    move-result v4

    aget-object v4, v13, v4

    iput-object v4, v2, Lcom/smartisanos/launcher/view/Cell$SaveData;->oldLocation:Lcom/smartisanos/smengine/math/Vector3f;

    goto :goto_3

    .line 559
    .end local v3    # "cell":Lcom/smartisanos/launcher/view/Cell;
    :cond_7
    sget v2, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    sget v4, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    if-ne v2, v4, :cond_8

    .line 561
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 562
    .local v12, "list":Ljava/util/ArrayList;
    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 563
    sget-object v2, Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;->SETTING_BTN_SCALE_APPEAR:Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v2, v1, v12}, Lcom/smartisanos/launcher/animations/DockViewAnimation;->handleAnimation(Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;FLjava/util/List;)V

    .line 565
    .end local v12    # "list":Ljava/util/ArrayList;
    :cond_8
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v15}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    goto/16 :goto_0

    .line 529
    .end local v9    # "count":I
    .end local v11    # "i":I
    .end local v13    # "locs":[Lcom/smartisanos/smengine/math/Vector3f;
    .end local v15    # "relayoutTimeLine":Lcom/smartisanos/smengine/AnimationTimeLine;
    :catch_0
    move-exception v2

    goto/16 :goto_1
.end method

.method private runRevertDockViewSize(FLjava/util/List;)V
    .locals 32
    .param p1, "time"    # F
    .param p2, "params"    # Ljava/util/List;

    .prologue
    .line 622
    const/16 v31, 0x0

    .line 624
    .local v31, "timeLine":Lcom/smartisanos/smengine/AnimationTimeLine;
    const/4 v3, 0x0

    :try_start_0
    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/smartisanos/smengine/AnimationTimeLine;

    move-object/from16 v31, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 629
    if-nez v31, :cond_0

    .line 630
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v5, "REVERT_DOCK_VIEW_SIZE lose time line !"

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 625
    :catch_0
    move-exception v21

    .line 626
    .local v21, "e":Ljava/lang/Exception;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Exception;->printStackTrace()V

    .line 670
    .end local v21    # "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 632
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->mView:Lcom/smartisanos/launcher/view/DockView;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/DockView;->getTrashView()Lcom/smartisanos/launcher/view/TrashView;

    move-result-object v3

    sget v5, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-virtual {v3, v5}, Lcom/smartisanos/launcher/view/TrashView;->updateTrashByMode(I)V

    .line 633
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->mView:Lcom/smartisanos/launcher/view/DockView;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/DockView;->updateGeometricState()V

    .line 634
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 635
    .local v23, "list":Ljava/util/ArrayList;
    move-object/from16 v0, v23

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 636
    sget-object v3, Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;->DOCK_UP:Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v23

    invoke-virtual {v0, v3, v1, v2}, Lcom/smartisanos/launcher/animations/DockViewAnimation;->handleAnimation(Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;FLjava/util/List;)V

    .line 637
    sget-object v3, Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;->SETTING_BTN_MOVE_DISAPPEAR:Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v23

    invoke-virtual {v0, v3, v1, v2}, Lcom/smartisanos/launcher/animations/DockViewAnimation;->handleAnimation(Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;FLjava/util/List;)V

    .line 639
    sget v3, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    invoke-static {v3}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v24

    .line 640
    .local v24, "multiPageLP":Lcom/smartisanos/launcher/data/LayoutProperty;
    sget v3, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static {v3}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v30

    .line 641
    .local v30, "singlePageLP":Lcom/smartisanos/launcher/data/LayoutProperty;
    move-object/from16 v0, v24

    iget v3, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    move-object/from16 v0, v30

    iget v5, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    div-float v28, v3, v5

    .line 642
    .local v28, "scalex":F
    move-object/from16 v0, v24

    iget v3, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    move-object/from16 v0, v30

    iget v5, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    div-float v29, v3, v5

    .line 644
    .local v29, "scaley":F
    new-instance v15, Lcom/smartisanos/smengine/math/Vector3f;

    const/high16 v3, 0x3f800000    # 1.0f

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-direct {v15, v0, v1, v3}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    .line 645
    .local v15, "scaleFrom":Lcom/smartisanos/smengine/math/Vector3f;
    new-instance v16, Lcom/smartisanos/smengine/math/Vector3f;

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    move-object/from16 v0, v16

    invoke-direct {v0, v3, v5, v6}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    .line 646
    .local v16, "scaleTo":Lcom/smartisanos/smengine/math/Vector3f;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->mView:Lcom/smartisanos/launcher/view/DockView;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/DockView;->getDockCellCount()I

    move-result v18

    .line 647
    .local v18, "cell_count":I
    if-lez v18, :cond_1

    .line 648
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->mView:Lcom/smartisanos/launcher/view/DockView;

    const/4 v5, 0x0

    sget v6, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-virtual {v3, v5, v6}, Lcom/smartisanos/launcher/view/DockView;->getCellLocation(ZI)[Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v17

    .line 649
    .local v17, "cellLocs":[Lcom/smartisanos/smengine/math/Vector3f;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->mView:Lcom/smartisanos/launcher/view/DockView;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/DockView;->updateDockCellIndex()V

    .line 650
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_1
    move/from16 v0, v22

    move/from16 v1, v18

    if-ge v0, v1, :cond_1

    .line 651
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->mView:Lcom/smartisanos/launcher/view/DockView;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/DockView;->getAllCellsOnDock()Ljava/util/ArrayList;

    move-result-object v3

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/view/Cell;

    .line 652
    .local v4, "cell":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Cell;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v8

    .line 653
    .local v8, "from":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Cell;->getCellIndex()I

    move-result v3

    aget-object v9, v17, v3

    .line 654
    .local v9, "to":Lcom/smartisanos/smengine/math/Vector3f;
    const/4 v5, 0x0

    const/16 v7, 0xe

    move-object/from16 v3, p0

    move/from16 v6, p1

    invoke-virtual/range {v3 .. v9}, Lcom/smartisanos/launcher/animations/DockViewAnimation;->anim(Lcom/smartisanos/smengine/SceneNode;IFILcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-result-object v19

    .line 655
    .local v19, "cell_move_anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    const/4 v3, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v19

    invoke-virtual {v0, v3, v1}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 656
    const/4 v12, 0x1

    const/16 v14, 0xe

    move-object/from16 v10, p0

    move-object v11, v4

    move/from16 v13, p1

    invoke-virtual/range {v10 .. v16}, Lcom/smartisanos/launcher/animations/DockViewAnimation;->anim(Lcom/smartisanos/smengine/SceneNode;IFILcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-result-object v20

    .line 657
    .local v20, "cell_scale_anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    const/4 v3, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v20

    invoke-virtual {v0, v3, v1}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 650
    add-int/lit8 v22, v22, 0x1

    goto :goto_1

    .line 660
    .end local v4    # "cell":Lcom/smartisanos/launcher/view/Cell;
    .end local v8    # "from":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v9    # "to":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v17    # "cellLocs":[Lcom/smartisanos/smengine/math/Vector3f;
    .end local v19    # "cell_move_anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    .end local v20    # "cell_scale_anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    .end local v22    # "i":I
    :cond_1
    sget v3, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    invoke-static {v3}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v26

    .line 661
    .local v26, "prop":Lcom/smartisanos/launcher/data/LayoutProperty;
    move-object/from16 v0, v26

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->setting_button:F

    move/from16 v27, v0

    .line 662
    .local v27, "scale":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->mView:Lcom/smartisanos/launcher/view/DockView;

    iget-object v5, v3, Lcom/smartisanos/launcher/view/DockView;->sortButtons:[Lcom/smartisanos/smengine/RectNode;

    array-length v6, v5

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v6, :cond_2

    aget-object v25, v5, v3

    .line 663
    .local v25, "node":Lcom/smartisanos/smengine/RectNode;
    const/4 v7, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v27

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2, v7}, Lcom/smartisanos/smengine/RectNode;->setScale(FFF)V

    .line 664
    invoke-virtual/range {v25 .. v25}, Lcom/smartisanos/smengine/RectNode;->updateGeometricState()V

    .line 662
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 666
    .end local v25    # "node":Lcom/smartisanos/smengine/RectNode;
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->mView:Lcom/smartisanos/launcher/view/DockView;

    iget-object v3, v3, Lcom/smartisanos/launcher/view/DockView;->mSortConfirmButton:Lcom/smartisanos/smengine/RectNode;

    const/4 v5, 0x0

    move/from16 v0, v27

    move/from16 v1, v27

    invoke-virtual {v3, v0, v1, v5}, Lcom/smartisanos/smengine/RectNode;->setScale(FFF)V

    .line 667
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->mView:Lcom/smartisanos/launcher/view/DockView;

    iget-object v3, v3, Lcom/smartisanos/launcher/view/DockView;->mSortConfirmButton:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/RectNode;->updateGeometricState()V

    .line 668
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->mView:Lcom/smartisanos/launcher/view/DockView;

    iget-object v3, v3, Lcom/smartisanos/launcher/view/DockView;->mSortCancelButton:Lcom/smartisanos/smengine/RectNode;

    const/4 v5, 0x0

    move/from16 v0, v27

    move/from16 v1, v27

    invoke-virtual {v3, v0, v1, v5}, Lcom/smartisanos/smengine/RectNode;->setScale(FFF)V

    .line 669
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->mView:Lcom/smartisanos/launcher/view/DockView;

    iget-object v3, v3, Lcom/smartisanos/launcher/view/DockView;->mSortCancelButton:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/RectNode;->updateGeometricState()V

    goto/16 :goto_0
.end method

.method private runSettingBtnMoveAppear(FLjava/util/List;)V
    .locals 27
    .param p1, "time"    # F
    .param p2, "params"    # Ljava/util/List;

    .prologue
    .line 431
    const/16 v26, 0x0

    .line 433
    .local v26, "timeLine":Lcom/smartisanos/smengine/AnimationTimeLine;
    const/4 v2, 0x0

    :try_start_0
    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/smartisanos/smengine/AnimationTimeLine;

    move-object/from16 v26, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 437
    :goto_0
    if-nez v26, :cond_0

    .line 438
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "SETTING_BTN_MOVE_APPEAR lose time line !"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 434
    :catch_0
    move-exception v17

    .line 435
    .local v17, "e":Ljava/lang/Exception;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 440
    .end local v17    # "e":Ljava/lang/Exception;
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->mView:Lcom/smartisanos/launcher/view/DockView;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/DockView;->getSettingButton()Lcom/smartisanos/launcher/view/SettingButton;

    move-result-object v3

    .line 441
    .local v3, "settingButton":Lcom/smartisanos/launcher/view/SettingButton;
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/SettingButton;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v7

    .line 442
    .local v7, "from":Lcom/smartisanos/smengine/math/Vector3f;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->mView:Lcom/smartisanos/launcher/view/DockView;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/DockView;->getSettingButtonShowLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v8

    .line 443
    .local v8, "to":Lcom/smartisanos/smengine/math/Vector3f;
    const/4 v4, 0x0

    const/16 v6, 0xe

    move-object/from16 v2, p0

    move/from16 v5, p1

    invoke-virtual/range {v2 .. v8}, Lcom/smartisanos/launcher/animations/DockViewAnimation;->anim(Lcom/smartisanos/smengine/SceneNode;IFILcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-result-object v22

    .line 444
    .local v22, "setting_move_anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    const/4 v2, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v2, v1}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 446
    sget v2, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    invoke-static {v2}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v18

    .line 447
    .local v18, "multiPageLP":Lcom/smartisanos/launcher/data/LayoutProperty;
    sget v2, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static {v2}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v24

    .line 448
    .local v24, "singlePageLP":Lcom/smartisanos/launcher/data/LayoutProperty;
    move-object/from16 v0, v18

    iget v2, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    move-object/from16 v0, v24

    iget v4, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    div-float v20, v2, v4

    .line 449
    .local v20, "scalex":F
    move-object/from16 v0, v18

    iget v2, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    move-object/from16 v0, v24

    iget v4, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    div-float v21, v2, v4

    .line 450
    .local v21, "scaley":F
    sget v2, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    invoke-static {v2}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v2

    iget v0, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->setting_button:F

    move/from16 v19, v0

    .line 451
    .local v19, "multiPageModeSize":F
    sget v2, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static {v2}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v2

    iget v0, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->setting_button:F

    move/from16 v25, v0

    .line 452
    .local v25, "singlePageModeSize":F
    div-float v23, v19, v25

    .line 453
    .local v23, "showScale":F
    new-instance v14, Lcom/smartisanos/smengine/math/Vector3f;

    const/high16 v2, 0x3f800000    # 1.0f

    div-float v2, v2, v20

    const/high16 v4, 0x3f800000    # 1.0f

    div-float v4, v4, v21

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v14, v2, v4, v5}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    .line 454
    .local v14, "scaleFrom":Lcom/smartisanos/smengine/math/Vector3f;
    new-instance v15, Lcom/smartisanos/smengine/math/Vector3f;

    const/high16 v2, 0x3f800000    # 1.0f

    move/from16 v0, v23

    move/from16 v1, v23

    invoke-direct {v15, v0, v1, v2}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    .line 455
    .local v15, "scaleTo":Lcom/smartisanos/smengine/math/Vector3f;
    const/4 v11, 0x1

    const/16 v13, 0xe

    move-object/from16 v9, p0

    move-object v10, v3

    move/from16 v12, p1

    invoke-virtual/range {v9 .. v15}, Lcom/smartisanos/launcher/animations/DockViewAnimation;->anim(Lcom/smartisanos/smengine/SceneNode;IFILcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-result-object v16

    .line 456
    .local v16, "cell_scale_anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    const/4 v2, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-virtual {v0, v2, v1}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 457
    return-void
.end method

.method private runSettingBtnMoveDisappear(FLjava/util/List;)V
    .locals 27
    .param p1, "time"    # F
    .param p2, "params"    # Ljava/util/List;

    .prologue
    .line 399
    const/16 v26, 0x0

    .line 401
    .local v26, "timeLine":Lcom/smartisanos/smengine/AnimationTimeLine;
    const/4 v2, 0x0

    :try_start_0
    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/smartisanos/smengine/AnimationTimeLine;

    move-object/from16 v26, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 405
    :goto_0
    if-nez v26, :cond_0

    .line 406
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "SETTING_BTN_MOVE_DISAPPEAR lose time line !"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 402
    :catch_0
    move-exception v17

    .line 403
    .local v17, "e":Ljava/lang/Exception;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 408
    .end local v17    # "e":Ljava/lang/Exception;
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->mView:Lcom/smartisanos/launcher/view/DockView;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/DockView;->getSettingButton()Lcom/smartisanos/launcher/view/SettingButton;

    move-result-object v3

    .line 409
    .local v3, "settingButton":Lcom/smartisanos/launcher/view/SettingButton;
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/SettingButton;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v7

    .line 410
    .local v7, "from":Lcom/smartisanos/smengine/math/Vector3f;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->mView:Lcom/smartisanos/launcher/view/DockView;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/DockView;->getSettingButtonHiddenLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v8

    .line 411
    .local v8, "to":Lcom/smartisanos/smengine/math/Vector3f;
    const/4 v4, 0x0

    const/16 v6, 0xe

    move-object/from16 v2, p0

    move/from16 v5, p1

    invoke-virtual/range {v2 .. v8}, Lcom/smartisanos/launcher/animations/DockViewAnimation;->anim(Lcom/smartisanos/smengine/SceneNode;IFILcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-result-object v23

    .line 412
    .local v23, "setting_move_anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    const/4 v2, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v2, v1}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 414
    sget v2, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    invoke-static {v2}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v18

    .line 415
    .local v18, "multiPageLP":Lcom/smartisanos/launcher/data/LayoutProperty;
    sget v2, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static {v2}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v24

    .line 416
    .local v24, "singlePageLP":Lcom/smartisanos/launcher/data/LayoutProperty;
    move-object/from16 v0, v18

    iget v2, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    move-object/from16 v0, v24

    iget v4, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    div-float v21, v2, v4

    .line 417
    .local v21, "scalex":F
    move-object/from16 v0, v18

    iget v2, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    move-object/from16 v0, v24

    iget v4, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    div-float v22, v2, v4

    .line 418
    .local v22, "scaley":F
    sget v2, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    invoke-static {v2}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v2

    iget v0, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->setting_button:F

    move/from16 v19, v0

    .line 419
    .local v19, "multiPageModeSize":F
    sget v2, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static {v2}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v2

    iget v0, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->setting_button:F

    move/from16 v25, v0

    .line 420
    .local v25, "singlePageModeSize":F
    div-float v20, v19, v25

    .line 422
    .local v20, "scale":F
    new-instance v14, Lcom/smartisanos/smengine/math/Vector3f;

    const/high16 v2, 0x3f800000    # 1.0f

    move/from16 v0, v20

    move/from16 v1, v20

    invoke-direct {v14, v0, v1, v2}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    .line 423
    .local v14, "scaleFrom":Lcom/smartisanos/smengine/math/Vector3f;
    new-instance v15, Lcom/smartisanos/smengine/math/Vector3f;

    const/high16 v2, 0x3f800000    # 1.0f

    div-float v2, v2, v21

    const/high16 v4, 0x3f800000    # 1.0f

    div-float v4, v4, v22

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v15, v2, v4, v5}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    .line 424
    .local v15, "scaleTo":Lcom/smartisanos/smengine/math/Vector3f;
    const/4 v11, 0x1

    const/16 v13, 0xe

    move-object/from16 v9, p0

    move-object v10, v3

    move/from16 v12, p1

    invoke-virtual/range {v9 .. v15}, Lcom/smartisanos/launcher/animations/DockViewAnimation;->anim(Lcom/smartisanos/smengine/SceneNode;IFILcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-result-object v16

    .line 425
    .local v16, "cell_scale_anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    const/4 v2, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-virtual {v0, v2, v1}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 426
    return-void
.end method

.method private runSettingBtnScaleAppear(FLjava/util/List;)V
    .locals 15
    .param p1, "time"    # F
    .param p2, "params"    # Ljava/util/List;

    .prologue
    .line 361
    const/4 v14, 0x0

    .line 363
    .local v14, "timeLine":Lcom/smartisanos/smengine/AnimationTimeLine;
    const/4 v1, 0x0

    :try_start_0
    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/smartisanos/smengine/AnimationTimeLine;

    move-object v14, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    if-nez v14, :cond_0

    .line 369
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "SETTING_BTN_SCALE_APPEAR lose time line !"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 364
    :catch_0
    move-exception v8

    .line 365
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 394
    .end local v8    # "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 371
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->mView:Lcom/smartisanos/launcher/view/DockView;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/DockView;->getSettingButton()Lcom/smartisanos/launcher/view/SettingButton;

    move-result-object v2

    .line 372
    .local v2, "settingButton":Lcom/smartisanos/launcher/view/SettingButton;
    sget v1, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    sget v3, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    if-ne v1, v3, :cond_2

    .line 373
    const/4 v7, 0x0

    .line 374
    .local v7, "to":Lcom/smartisanos/smengine/math/Vector3f;
    iget-boolean v1, v2, Lcom/smartisanos/launcher/view/SettingButton;->buttonAlreadyDown:Z

    if-nez v1, :cond_3

    .line 375
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->mView:Lcom/smartisanos/launcher/view/DockView;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/DockView;->getSettingButtonShowLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v7

    .line 376
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->mView:Lcom/smartisanos/launcher/view/DockView;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/DockView;->getAllCellsOnDock()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 377
    const/4 v1, 0x0

    iput v1, v7, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 384
    :cond_1
    :goto_1
    iget v1, v7, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v3, v7, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v4, v7, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-virtual {v2, v1, v3, v4}, Lcom/smartisanos/launcher/view/SettingButton;->setTranslate(FFF)V

    .line 386
    .end local v7    # "to":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_2
    const v10, 0x38d1b717    # 1.0E-4f

    .line 387
    .local v10, "scale":F
    sget v1, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    invoke-static {v1}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v1

    iget v9, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->setting_button:F

    .line 388
    .local v9, "multiPageModeSize":F
    sget v1, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static {v1}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v1

    iget v13, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->setting_button:F

    .line 389
    .local v13, "singlePageModeSize":F
    div-float v12, v9, v13

    .line 390
    .local v12, "showScale":F
    new-instance v6, Lcom/smartisanos/smengine/math/Vector3f;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v6, v10, v10, v1}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    .line 391
    .local v6, "from":Lcom/smartisanos/smengine/math/Vector3f;
    new-instance v7, Lcom/smartisanos/smengine/math/Vector3f;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v7, v12, v12, v1}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    .line 392
    .restart local v7    # "to":Lcom/smartisanos/smengine/math/Vector3f;
    const/4 v3, 0x1

    const/16 v5, 0xe

    move-object v1, p0

    move/from16 v4, p1

    invoke-virtual/range {v1 .. v7}, Lcom/smartisanos/launcher/animations/DockViewAnimation;->anim(Lcom/smartisanos/smengine/SceneNode;IFILcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-result-object v11

    .line 393
    .local v11, "scale_anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    const/4 v1, 0x0

    invoke-virtual {v14, v1, v11}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    goto :goto_0

    .line 381
    .end local v6    # "from":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v9    # "multiPageModeSize":F
    .end local v10    # "scale":F
    .end local v11    # "scale_anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    .end local v12    # "showScale":F
    .end local v13    # "singlePageModeSize":F
    :cond_3
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->mView:Lcom/smartisanos/launcher/view/DockView;

    iget-object v3, p0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->mView:Lcom/smartisanos/launcher/view/DockView;

    iget-object v3, v3, Lcom/smartisanos/launcher/view/DockView;->sortButtons:[Lcom/smartisanos/smengine/RectNode;

    array-length v3, v3

    invoke-virtual {v1, v3}, Lcom/smartisanos/launcher/view/DockView;->getSettingButtonShowLocation(I)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v7

    goto :goto_1
.end method

.method private runSettingBtnScaleDisappear(FLjava/util/List;)V
    .locals 12
    .param p1, "time"    # F
    .param p2, "params"    # Ljava/util/List;

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 341
    const/4 v11, 0x0

    .line 343
    .local v11, "timeLine":Lcom/smartisanos/smengine/AnimationTimeLine;
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/smartisanos/smengine/AnimationTimeLine;

    move-object v11, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->mView:Lcom/smartisanos/launcher/view/DockView;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/DockView;->getSettingButton()Lcom/smartisanos/launcher/view/SettingButton;

    move-result-object v10

    .line 349
    .local v10, "settingButton":Lcom/smartisanos/launcher/view/SettingButton;
    new-instance v1, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    invoke-direct {v1, v10}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 350
    .local v1, "scale_anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    invoke-virtual {v1, p1}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 351
    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 352
    const v6, 0x38d1b717    # 1.0E-4f

    .line 353
    .local v6, "scale":F
    const/high16 v3, 0x3f800000    # 1.0f

    .line 354
    .local v3, "showScale":F
    const/4 v2, 0x1

    move v4, v3

    move v7, v6

    move v8, v5

    invoke-virtual/range {v1 .. v8}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFF)V

    .line 355
    const/4 v2, 0x0

    invoke-virtual {v11, v2, v1}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 356
    .end local v1    # "scale_anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    .end local v3    # "showScale":F
    .end local v6    # "scale":F
    .end local v10    # "settingButton":Lcom/smartisanos/launcher/view/SettingButton;
    :goto_0
    return-void

    .line 344
    :catch_0
    move-exception v9

    .line 345
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private runShowBubbleForSort(FLjava/util/List;)V
    .locals 28
    .param p1, "time"    # F
    .param p2, "params"    # Ljava/util/List;

    .prologue
    .line 1004
    const/16 v22, -0x1

    .line 1006
    .local v22, "bubbleIndex":I
    const/4 v1, 0x0

    :try_start_0
    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v22

    .line 1008
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->sortBubbleTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    if-eqz v1, :cond_0

    .line 1009
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->sortBubbleTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/AnimationTimeLine;->forceFinish()V

    .line 1010
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->sortBubbleTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 1012
    :cond_0
    new-instance v1, Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-direct {v1}, Lcom/smartisanos/smengine/AnimationTimeLine;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->sortBubbleTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 1014
    new-instance v6, Lcom/smartisanos/smengine/math/Vector4f;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v6, v1, v3, v4, v5}, Lcom/smartisanos/smengine/math/Vector4f;-><init>(FFFF)V

    .line 1015
    .local v6, "dark":Lcom/smartisanos/smengine/math/Vector4f;
    new-instance v7, Lcom/smartisanos/smengine/math/Vector4f;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v7, v1, v3, v4, v5}, Lcom/smartisanos/smengine/math/Vector4f;-><init>(FFFF)V

    .line 1016
    .local v7, "brightness":Lcom/smartisanos/smengine/math/Vector4f;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->mView:Lcom/smartisanos/launcher/view/DockView;

    move/from16 v0, v22

    invoke-virtual {v1, v0}, Lcom/smartisanos/launcher/view/DockView;->initSortBubble(I)V

    .line 1017
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->mView:Lcom/smartisanos/launcher/view/DockView;

    iget-object v2, v1, Lcom/smartisanos/launcher/view/DockView;->mSortBubble:Lcom/smartisanos/smengine/RectNode;

    .line 1018
    .local v2, "bubble":Lcom/smartisanos/smengine/RectNode;
    const/4 v3, 0x3

    const/4 v5, 0x2

    move-object/from16 v1, p0

    move/from16 v4, p1

    invoke-virtual/range {v1 .. v7}, Lcom/smartisanos/launcher/animations/DockViewAnimation;->anim(Lcom/smartisanos/smengine/SceneNode;IFILcom/smartisanos/smengine/math/Vector4f;Lcom/smartisanos/smengine/math/Vector4f;)Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-result-object v23

    .line 1019
    .local v23, "colorAnim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->sortBubbleTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    const/4 v3, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v1, v3, v0}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 1020
    invoke-virtual {v2}, Lcom/smartisanos/smengine/RectNode;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v13

    .line 1021
    .local v13, "transFrom":Lcom/smartisanos/smengine/math/Vector3f;
    new-instance v14, Lcom/smartisanos/smengine/math/Vector3f;

    iget v1, v13, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v3, v13, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    const/high16 v4, 0x41200000    # 10.0f

    add-float/2addr v3, v4

    iget v4, v13, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-direct {v14, v1, v3, v4}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    .line 1022
    .local v14, "transTo":Lcom/smartisanos/smengine/math/Vector3f;
    const/4 v10, 0x0

    const/4 v12, 0x2

    move-object/from16 v8, p0

    move-object v9, v2

    move/from16 v11, p1

    invoke-virtual/range {v8 .. v14}, Lcom/smartisanos/launcher/animations/DockViewAnimation;->anim(Lcom/smartisanos/smengine/SceneNode;IFILcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-result-object v26

    .line 1023
    .local v26, "transAnim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->sortBubbleTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    const/4 v3, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v1, v3, v0}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 1024
    invoke-virtual {v2}, Lcom/smartisanos/smengine/RectNode;->getWidth()F

    move-result v27

    .line 1025
    .local v27, "w":F
    invoke-virtual {v2}, Lcom/smartisanos/smengine/RectNode;->getHeight()F

    move-result v24

    .line 1026
    .local v24, "h":F
    new-instance v21, Lcom/smartisanos/smengine/math/Vector3f;

    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v27, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v24, v3

    const/4 v4, 0x0

    move-object/from16 v0, v21

    invoke-direct {v0, v1, v3, v4}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    .line 1027
    .local v21, "scaleTo":Lcom/smartisanos/smengine/math/Vector3f;
    const v1, 0x3f75c28f    # 0.96f

    mul-float v27, v27, v1

    .line 1028
    const v1, 0x3f75c28f    # 0.96f

    mul-float v24, v24, v1

    .line 1029
    new-instance v20, Lcom/smartisanos/smengine/math/Vector3f;

    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v27, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v24, v3

    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-direct {v0, v1, v3, v4}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    .line 1030
    .local v20, "scaleFrom":Lcom/smartisanos/smengine/math/Vector3f;
    const/16 v17, 0x1

    const/16 v19, 0x2

    move-object/from16 v15, p0

    move-object/from16 v16, v2

    move/from16 v18, p1

    invoke-virtual/range {v15 .. v21}, Lcom/smartisanos/launcher/animations/DockViewAnimation;->anim(Lcom/smartisanos/smengine/SceneNode;IFILcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-result-object v25

    .line 1031
    .local v25, "scaleAnim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->sortBubbleTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    const/4 v3, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v1, v3, v0}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 1032
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->sortBubbleTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    new-instance v3, Lcom/smartisanos/launcher/animations/DockViewAnimation$9;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/smartisanos/launcher/animations/DockViewAnimation$9;-><init>(Lcom/smartisanos/launcher/animations/DockViewAnimation;)V

    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 1038
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->mView:Lcom/smartisanos/launcher/view/DockView;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/DockView;->updateGeometricState()V

    .line 1039
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->sortBubbleTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/AnimationTimeLine;->start()V

    .line 1040
    return-void

    .line 1007
    .end local v2    # "bubble":Lcom/smartisanos/smengine/RectNode;
    .end local v6    # "dark":Lcom/smartisanos/smengine/math/Vector4f;
    .end local v7    # "brightness":Lcom/smartisanos/smengine/math/Vector4f;
    .end local v13    # "transFrom":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v14    # "transTo":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v20    # "scaleFrom":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v21    # "scaleTo":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v23    # "colorAnim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    .end local v24    # "h":F
    .end local v25    # "scaleAnim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    .end local v26    # "transAnim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    .end local v27    # "w":F
    :catch_0
    move-exception v1

    goto/16 :goto_0
.end method

.method private runShowSortButton(FLjava/util/List;)V
    .locals 46
    .param p1, "time"    # F
    .param p2, "params"    # Ljava/util/List;

    .prologue
    .line 831
    const/16 v45, 0x0

    .line 833
    .local v45, "timeLine":Lcom/smartisanos/smengine/AnimationTimeLine;
    const/4 v3, 0x0

    :try_start_0
    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/smartisanos/smengine/AnimationTimeLine;

    move-object/from16 v45, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 835
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->mView:Lcom/smartisanos/launcher/view/DockView;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/DockView;->updateDockCellIndex()V

    .line 836
    const/high16 v6, 0x3e800000    # 0.25f

    .line 837
    .local v6, "dockIconTime":F
    const/high16 v44, 0x3e800000    # 0.25f

    .line 838
    .local v44, "sortIconTime":F
    const v33, 0x3d23d70a    # 0.04f

    .line 839
    .local v33, "delayTime":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->mView:Lcom/smartisanos/launcher/view/DockView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->mView:Lcom/smartisanos/launcher/view/DockView;

    iget-object v5, v5, Lcom/smartisanos/launcher/view/DockView;->sortButtons:[Lcom/smartisanos/smengine/RectNode;

    array-length v5, v5

    invoke-virtual {v3, v5}, Lcom/smartisanos/launcher/view/DockView;->getSettingButtonShowLocation(I)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v41

    .line 840
    .local v41, "settingTargetLoc":Lcom/smartisanos/smengine/math/Vector3f;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->mView:Lcom/smartisanos/launcher/view/DockView;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/DockView;->getSortButtonHideLoc()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v34

    .line 841
    .local v34, "hideLoc":Lcom/smartisanos/smengine/math/Vector3f;
    new-instance v16, Lcom/smartisanos/smengine/math/Vector4f;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, v16

    invoke-direct {v0, v3, v5, v7, v10}, Lcom/smartisanos/smengine/math/Vector4f;-><init>(FFFF)V

    .line 842
    .local v16, "dark":Lcom/smartisanos/smengine/math/Vector4f;
    new-instance v15, Lcom/smartisanos/smengine/math/Vector4f;

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v15, v3, v5, v7, v10}, Lcom/smartisanos/smengine/math/Vector4f;-><init>(FFFF)V

    .line 843
    .local v15, "brightness":Lcom/smartisanos/smengine/math/Vector4f;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->mView:Lcom/smartisanos/launcher/view/DockView;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/DockView;->getAllCellsOnDock()Ljava/util/ArrayList;

    move-result-object v30

    .line 844
    .local v30, "cells":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/view/Cell;>;"
    invoke-interface/range {v30 .. v30}, Ljava/util/List;->size()I

    move-result v31

    .line 845
    .local v31, "count":I
    if-lez v31, :cond_4

    .line 846
    const/16 v35, 0x0

    .local v35, "i":I
    :goto_1
    move/from16 v0, v35

    move/from16 v1, v31

    if-ge v0, v1, :cond_4

    .line 847
    move-object/from16 v0, v30

    move/from16 v1, v35

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/view/Cell;

    .line 848
    .local v4, "cell":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Cell;->getItemInfo()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v3

    iget v0, v3, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    move/from16 v36, v0

    .line 850
    .local v36, "index":I
    move/from16 v0, v36

    int-to-float v3, v0

    mul-float v32, v3, v33

    .line 851
    .local v32, "delay":F
    sget-object v3, Lcom/smartisanos/launcher/data/Constants;->sHandHabit:Lcom/smartisanos/launcher/data/Constants$HandHabit;

    sget-object v5, Lcom/smartisanos/launcher/data/Constants$HandHabit;->RIGHT:Lcom/smartisanos/launcher/data/Constants$HandHabit;

    if-ne v3, v5, :cond_0

    .line 852
    sub-int v3, v31, v36

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    mul-float v32, v3, v33

    .line 854
    :cond_0
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Cell;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v8

    .line 855
    .local v8, "from":Lcom/smartisanos/smengine/math/Vector3f;
    move-object/from16 v9, v34

    .line 856
    .local v9, "to":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Cell;->getSaveData()Lcom/smartisanos/launcher/view/Cell$SaveData;

    move-result-object v3

    iput-object v8, v3, Lcom/smartisanos/launcher/view/Cell$SaveData;->oldLocation:Lcom/smartisanos/smengine/math/Vector3f;

    .line 857
    const/4 v5, 0x0

    const/4 v7, 0x2

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/smartisanos/launcher/animations/DockViewAnimation;->anim(Lcom/smartisanos/smengine/SceneNode;IFILcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-result-object v38

    .line 858
    .local v38, "moveAnim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    new-instance v3, Lcom/smartisanos/launcher/animations/DockViewAnimation$6;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/smartisanos/launcher/animations/DockViewAnimation$6;-><init>(Lcom/smartisanos/launcher/animations/DockViewAnimation;Lcom/smartisanos/launcher/view/Cell;)V

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 865
    move-object/from16 v0, v45

    move/from16 v1, v32

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 867
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Cell;->getForegroundRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v11

    .line 868
    .local v11, "foregroundRect":Lcom/smartisanos/smengine/RectNode;
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Cell;->getForegroundOverlapRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v18

    .line 869
    .local v18, "overlayRect":Lcom/smartisanos/smengine/RectNode;
    if-eqz v11, :cond_1

    .line 870
    const/4 v3, 0x2

    invoke-virtual {v4, v3}, Lcom/smartisanos/launcher/view/Cell;->setForegroundRectBlendMode(I)V

    .line 871
    const/4 v12, 0x3

    const/16 v14, 0xe

    move-object/from16 v10, p0

    move/from16 v13, p1

    invoke-virtual/range {v10 .. v16}, Lcom/smartisanos/launcher/animations/DockViewAnimation;->anim(Lcom/smartisanos/smengine/SceneNode;IFILcom/smartisanos/smengine/math/Vector4f;Lcom/smartisanos/smengine/math/Vector4f;)Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-result-object v29

    .line 872
    .local v29, "anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    move-object/from16 v0, v45

    move/from16 v1, v32

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 874
    .end local v29    # "anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    :cond_1
    if-eqz v18, :cond_3

    .line 875
    if-eqz v11, :cond_2

    .line 876
    const/4 v3, 0x0

    invoke-virtual {v11, v3}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    .line 878
    :cond_2
    const/4 v3, 0x2

    invoke-virtual {v4, v3}, Lcom/smartisanos/launcher/view/Cell;->setForegroundRectBlendMode(I)V

    .line 879
    const/16 v19, 0x3

    const/16 v21, 0xe

    move-object/from16 v17, p0

    move/from16 v20, p1

    move-object/from16 v22, v15

    move-object/from16 v23, v16

    invoke-virtual/range {v17 .. v23}, Lcom/smartisanos/launcher/animations/DockViewAnimation;->anim(Lcom/smartisanos/smengine/SceneNode;IFILcom/smartisanos/smengine/math/Vector4f;Lcom/smartisanos/smengine/math/Vector4f;)Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-result-object v29

    .line 880
    .restart local v29    # "anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    const/4 v3, 0x0

    move-object/from16 v0, v45

    move-object/from16 v1, v29

    invoke-virtual {v0, v3, v1}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 846
    .end local v29    # "anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    :cond_3
    add-int/lit8 v35, v35, 0x1

    goto/16 :goto_1

    .line 885
    .end local v4    # "cell":Lcom/smartisanos/launcher/view/Cell;
    .end local v8    # "from":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v9    # "to":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v11    # "foregroundRect":Lcom/smartisanos/smengine/RectNode;
    .end local v18    # "overlayRect":Lcom/smartisanos/smengine/RectNode;
    .end local v32    # "delay":F
    .end local v35    # "i":I
    .end local v36    # "index":I
    .end local v38    # "moveAnim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->mView:Lcom/smartisanos/launcher/view/DockView;

    iget-object v0, v3, Lcom/smartisanos/launcher/view/DockView;->sortButtons:[Lcom/smartisanos/smengine/RectNode;

    move-object/from16 v39, v0

    .line 886
    .local v39, "nodes":[Lcom/smartisanos/smengine/RectNode;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->mView:Lcom/smartisanos/launcher/view/DockView;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/DockView;->getSortButtonShowLoc()[Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v43

    .line 887
    .local v43, "showLocs":[Lcom/smartisanos/smengine/math/Vector3f;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->mView:Lcom/smartisanos/launcher/view/DockView;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/DockView;->getSettingButton()Lcom/smartisanos/launcher/view/SettingButton;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/SettingButton;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/smengine/math/Vector3f;->clone()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v40

    .line 888
    .local v40, "settingLoc":Lcom/smartisanos/smengine/math/Vector3f;
    move-object/from16 v0, v39

    array-length v0, v0

    move/from16 v37, v0

    .line 889
    .local v37, "length":I
    const/16 v35, 0x0

    .restart local v35    # "i":I
    :goto_2
    move/from16 v0, v35

    move/from16 v1, v37

    if-ge v0, v1, :cond_6

    .line 890
    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v32, v0

    .line 891
    .restart local v32    # "delay":F
    sget-object v3, Lcom/smartisanos/launcher/data/Constants;->sHandHabit:Lcom/smartisanos/launcher/data/Constants$HandHabit;

    sget-object v5, Lcom/smartisanos/launcher/data/Constants$HandHabit;->RIGHT:Lcom/smartisanos/launcher/data/Constants$HandHabit;

    if-ne v3, v5, :cond_5

    .line 892
    sub-int v3, v37, v35

    add-int/lit8 v3, v3, -0x1

    int-to-float v0, v3

    move/from16 v32, v0

    .line 894
    :cond_5
    mul-float v32, v32, v33

    .line 895
    move/from16 v0, v31

    int-to-float v3, v0

    mul-float v3, v3, v33

    add-float v32, v32, v3

    .line 896
    aget-object v20, v39, v35

    .line 897
    .local v20, "node":Lcom/smartisanos/smengine/RectNode;
    move-object/from16 v8, v40

    .line 898
    .restart local v8    # "from":Lcom/smartisanos/smengine/math/Vector3f;
    aget-object v9, v43, v35

    .line 899
    .restart local v9    # "to":Lcom/smartisanos/smengine/math/Vector3f;
    const/16 v21, 0x0

    const/16 v23, 0x2

    move-object/from16 v19, p0

    move/from16 v22, v44

    move-object/from16 v24, v8

    move-object/from16 v25, v9

    invoke-virtual/range {v19 .. v25}, Lcom/smartisanos/launcher/animations/DockViewAnimation;->anim(Lcom/smartisanos/smengine/SceneNode;IFILcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-result-object v38

    .line 900
    .restart local v38    # "moveAnim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    move-object/from16 v0, v45

    move/from16 v1, v32

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 902
    const/16 v21, 0x3

    const/16 v23, 0x2

    move-object/from16 v19, p0

    move/from16 v22, v44

    move-object/from16 v24, v16

    move-object/from16 v25, v15

    invoke-virtual/range {v19 .. v25}, Lcom/smartisanos/launcher/animations/DockViewAnimation;->anim(Lcom/smartisanos/smengine/SceneNode;IFILcom/smartisanos/smengine/math/Vector4f;Lcom/smartisanos/smengine/math/Vector4f;)Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-result-object v28

    .line 903
    .local v28, "alphaAnim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    move-object/from16 v0, v45

    move/from16 v1, v32

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 889
    add-int/lit8 v35, v35, 0x1

    goto :goto_2

    .line 907
    .end local v8    # "from":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v9    # "to":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v20    # "node":Lcom/smartisanos/smengine/RectNode;
    .end local v28    # "alphaAnim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    .end local v32    # "delay":F
    .end local v38    # "moveAnim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->mView:Lcom/smartisanos/launcher/view/DockView;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/DockView;->getSettingButton()Lcom/smartisanos/launcher/view/SettingButton;

    move-result-object v22

    .line 908
    .local v22, "settingButton":Lcom/smartisanos/launcher/view/SettingButton;
    invoke-virtual/range {v22 .. v22}, Lcom/smartisanos/launcher/view/SettingButton;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v8

    .line 909
    .restart local v8    # "from":Lcom/smartisanos/smengine/math/Vector3f;
    move-object/from16 v9, v41

    .line 910
    .restart local v9    # "to":Lcom/smartisanos/smengine/math/Vector3f;
    const/16 v23, 0x0

    const/16 v25, 0x2

    move-object/from16 v21, p0

    move/from16 v24, p1

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    invoke-virtual/range {v21 .. v27}, Lcom/smartisanos/launcher/animations/DockViewAnimation;->anim(Lcom/smartisanos/smengine/SceneNode;IFILcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-result-object v42

    .line 911
    .local v42, "setting_move_anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    const/4 v3, 0x0

    move-object/from16 v0, v45

    move-object/from16 v1, v42

    invoke-virtual {v0, v3, v1}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 912
    return-void

    .line 834
    .end local v6    # "dockIconTime":F
    .end local v8    # "from":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v9    # "to":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v15    # "brightness":Lcom/smartisanos/smengine/math/Vector4f;
    .end local v16    # "dark":Lcom/smartisanos/smengine/math/Vector4f;
    .end local v22    # "settingButton":Lcom/smartisanos/launcher/view/SettingButton;
    .end local v30    # "cells":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/view/Cell;>;"
    .end local v31    # "count":I
    .end local v33    # "delayTime":F
    .end local v34    # "hideLoc":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v35    # "i":I
    .end local v37    # "length":I
    .end local v39    # "nodes":[Lcom/smartisanos/smengine/RectNode;
    .end local v40    # "settingLoc":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v41    # "settingTargetLoc":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v42    # "setting_move_anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    .end local v43    # "showLocs":[Lcom/smartisanos/smengine/math/Vector3f;
    .end local v44    # "sortIconTime":F
    :catch_0
    move-exception v3

    goto/16 :goto_0
.end method

.method private runSwitchSortButtonStatus(FLjava/util/List;)V
    .locals 36
    .param p1, "time"    # F
    .param p2, "params"    # Ljava/util/List;

    .prologue
    .line 1079
    const/16 v31, 0x0

    .line 1080
    .local v31, "timeLine":Lcom/smartisanos/smengine/AnimationTimeLine;
    const/16 v34, 0x0

    .line 1081
    .local v34, "visible":Z
    const/4 v14, 0x0

    .line 1083
    .local v14, "delay":F
    const/4 v2, 0x0

    :try_start_0
    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/smartisanos/smengine/AnimationTimeLine;

    move-object/from16 v31, v0

    .line 1084
    const/4 v2, 0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v34

    .line 1085
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x2

    if-le v2, v4, :cond_0

    .line 1086
    const/4 v2, 0x2

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v14

    .line 1091
    :cond_0
    :goto_0
    if-nez v31, :cond_2

    .line 1092
    sget-object v2, Lcom/smartisanos/launcher/animations/DockViewAnimation;->log:Lcom/smartisanos/launcher/LOG;

    const-string v4, "runSwitchSortButtonStatus return by time line is null"

    invoke-virtual {v2, v4}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 1152
    :cond_1
    return-void

    .line 1088
    :catch_0
    move-exception v17

    .line 1089
    .local v17, "e":Ljava/lang/Exception;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1096
    .end local v17    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v6, 0x0

    .line 1097
    .local v6, "inOut":I
    const/high16 v11, -0x40800000    # -1.0f

    .line 1098
    .local v11, "buttonFromLocY":F
    const/high16 v13, -0x40800000    # -1.0f

    .line 1099
    .local v13, "buttonToLocY":F
    const/high16 v19, -0x40800000    # -1.0f

    .line 1100
    .local v19, "fromLocLeftTopY":F
    const/high16 v33, -0x40800000    # -1.0f

    .line 1101
    .local v33, "toLocLeftTopY":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->mView:Lcom/smartisanos/launcher/view/DockView;

    iget-object v2, v2, Lcom/smartisanos/launcher/view/DockView;->sortButtons:[Lcom/smartisanos/smengine/RectNode;

    const/4 v4, 0x0

    aget-object v25, v2, v4

    .line 1102
    .local v25, "rectNode":Lcom/smartisanos/smengine/RectNode;
    new-instance v26, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct/range {v26 .. v26}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 1103
    .local v26, "rectSize":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-virtual/range {v25 .. v26}, Lcom/smartisanos/smengine/RectNode;->getSize(Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 1104
    sget v2, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    invoke-static {v2}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v2

    iget v0, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_height:F

    move/from16 v16, v0

    .line 1105
    .local v16, "dockMultiModeHeight":F
    if-eqz v34, :cond_3

    .line 1106
    const/16 v6, 0xe

    .line 1107
    move-object/from16 v0, v26

    iget v2, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    add-float v19, v16, v2

    .line 1108
    move-object/from16 v0, v26

    iget v2, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float v12, v2, v4

    .line 1109
    .local v12, "buttonH":F
    add-float v19, v19, v12

    .line 1110
    const/high16 v2, 0x40000000    # 2.0f

    div-float v33, v16, v2

    .line 1118
    :goto_1
    new-instance v18, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct/range {v18 .. v18}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 1119
    .local v18, "fromLoc":Lcom/smartisanos/smengine/math/Vector3f;
    new-instance v32, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct/range {v32 .. v32}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 1120
    .local v32, "toLoc":Lcom/smartisanos/smengine/math/Vector3f;
    sget v2, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static {v2}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v2

    iget v15, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_height:F

    .line 1121
    .local v15, "dockHeight":F
    const/4 v2, 0x0

    sget v4, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v4, v4

    move/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v2, v0, v4, v15, v1}, Lcom/smartisanos/smengine/util/GeomUtil;->convertLeftTopPointToMidPointCoordinate(FFFFLcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    .line 1122
    move-object/from16 v0, v18

    iget v11, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 1123
    const/4 v2, 0x0

    sget v4, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v4, v4

    move/from16 v0, v33

    move-object/from16 v1, v32

    invoke-static {v2, v0, v4, v15, v1}, Lcom/smartisanos/smengine/util/GeomUtil;->convertLeftTopPointToMidPointCoordinate(FFFFLcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    .line 1124
    move-object/from16 v0, v32

    iget v13, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 1126
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->mView:Lcom/smartisanos/launcher/view/DockView;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/DockView;->getSettingButton()Lcom/smartisanos/launcher/view/SettingButton;

    move-result-object v28

    .line 1127
    .local v28, "settingButton":Lcom/smartisanos/launcher/view/SettingButton;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->mView:Lcom/smartisanos/launcher/view/DockView;

    iget-object v0, v2, Lcom/smartisanos/launcher/view/DockView;->sortButtons:[Lcom/smartisanos/smengine/RectNode;

    move-object/from16 v30, v0

    .line 1128
    .local v30, "sortButtons":[Lcom/smartisanos/smengine/RectNode;
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 1129
    .local v24, "objects":Ljava/util/List;
    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v21, v0

    .line 1130
    .local v21, "length":I
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_2
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_4

    .line 1131
    aget-object v9, v30, v20

    .line 1132
    .local v9, "button":Lcom/smartisanos/smengine/RectNode;
    move-object/from16 v0, v24

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1130
    add-int/lit8 v20, v20, 0x1

    goto :goto_2

    .line 1112
    .end local v9    # "button":Lcom/smartisanos/smengine/RectNode;
    .end local v12    # "buttonH":F
    .end local v15    # "dockHeight":F
    .end local v18    # "fromLoc":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v20    # "i":I
    .end local v21    # "length":I
    .end local v24    # "objects":Ljava/util/List;
    .end local v28    # "settingButton":Lcom/smartisanos/launcher/view/SettingButton;
    .end local v30    # "sortButtons":[Lcom/smartisanos/smengine/RectNode;
    .end local v32    # "toLoc":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_3
    const/16 v6, 0xd

    .line 1113
    const/high16 v2, 0x40000000    # 2.0f

    div-float v19, v16, v2

    .line 1114
    move/from16 v33, v16

    .line 1115
    move-object/from16 v0, v26

    iget v2, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float v12, v2, v4

    .line 1116
    .restart local v12    # "buttonH":F
    add-float v33, v33, v12

    goto :goto_1

    .line 1134
    .restart local v15    # "dockHeight":F
    .restart local v18    # "fromLoc":Lcom/smartisanos/smengine/math/Vector3f;
    .restart local v20    # "i":I
    .restart local v21    # "length":I
    .restart local v24    # "objects":Ljava/util/List;
    .restart local v28    # "settingButton":Lcom/smartisanos/launcher/view/SettingButton;
    .restart local v30    # "sortButtons":[Lcom/smartisanos/smengine/RectNode;
    .restart local v32    # "toLoc":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_4
    sget-object v2, Lcom/smartisanos/launcher/data/Constants;->sHandHabit:Lcom/smartisanos/launcher/data/Constants$HandHabit;

    sget-object v4, Lcom/smartisanos/launcher/data/Constants$HandHabit;->RIGHT:Lcom/smartisanos/launcher/data/Constants$HandHabit;

    if-ne v2, v4, :cond_5

    .line 1135
    const/4 v2, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1139
    :goto_3
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v29

    .line 1140
    .local v29, "size":I
    move/from16 v27, v34

    .line 1141
    .local v27, "setToVisible":Z
    const/16 v20, 0x0

    :goto_4
    move/from16 v0, v20

    move/from16 v1, v29

    if-ge v0, v1, :cond_1

    .line 1142
    const v2, 0x3e4ccccd    # 0.2f

    move/from16 v0, v20

    int-to-float v4, v0

    const v35, 0x3da3d70a    # 0.08f

    mul-float v4, v4, v35

    add-float v5, v2, v4

    .line 1143
    .local v5, "t":F
    const/16 v22, 0x0

    .line 1144
    .local v22, "loc":Lcom/smartisanos/smengine/math/Vector3f;
    move-object/from16 v0, v24

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    .local v23, "obj":Ljava/lang/Object;
    move-object/from16 v3, v23

    .line 1145
    check-cast v3, Lcom/smartisanos/smengine/SceneNode;

    .line 1146
    .local v3, "node":Lcom/smartisanos/smengine/SceneNode;
    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v22

    .line 1147
    new-instance v7, Lcom/smartisanos/smengine/math/Vector3f;

    move-object/from16 v0, v22

    iget v2, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move-object/from16 v0, v22

    iget v4, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-direct {v7, v2, v11, v4}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    .line 1148
    .local v7, "from":Lcom/smartisanos/smengine/math/Vector3f;
    new-instance v8, Lcom/smartisanos/smengine/math/Vector3f;

    move-object/from16 v0, v22

    iget v2, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move-object/from16 v0, v22

    iget v4, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-direct {v8, v2, v13, v4}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    .line 1149
    .local v8, "to":Lcom/smartisanos/smengine/math/Vector3f;
    const/4 v4, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/smartisanos/launcher/animations/DockViewAnimation;->anim(Lcom/smartisanos/smengine/SceneNode;IFILcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-result-object v10

    .line 1150
    .local v10, "buttonAnim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    move-object/from16 v0, v31

    invoke-virtual {v0, v14, v10}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 1141
    add-int/lit8 v20, v20, 0x1

    goto :goto_4

    .line 1137
    .end local v3    # "node":Lcom/smartisanos/smengine/SceneNode;
    .end local v5    # "t":F
    .end local v7    # "from":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v8    # "to":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v10    # "buttonAnim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    .end local v22    # "loc":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v23    # "obj":Ljava/lang/Object;
    .end local v27    # "setToVisible":Z
    .end local v29    # "size":I
    :cond_5
    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method private runSwitchSortConfirmButtonStatus(FLjava/util/List;)V
    .locals 29
    .param p1, "time"    # F
    .param p2, "params"    # Ljava/util/List;

    .prologue
    .line 1156
    const/16 v25, 0x0

    .line 1157
    .local v25, "timeLine":Lcom/smartisanos/smengine/AnimationTimeLine;
    const/16 v28, 0x0

    .line 1159
    .local v28, "visible":Z
    const/4 v2, 0x0

    :try_start_0
    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/smartisanos/smengine/AnimationTimeLine;

    move-object/from16 v25, v0

    .line 1160
    const/4 v2, 0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v28

    .line 1165
    if-nez v25, :cond_1

    .line 1166
    sget-object v2, Lcom/smartisanos/launcher/animations/DockViewAnimation;->log:Lcom/smartisanos/launcher/LOG;

    const-string v4, "runSwitchSortConfirmButtonStatus return by time line is null"

    invoke-virtual {v2, v4}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 1231
    :cond_0
    :goto_0
    return-void

    .line 1161
    :catch_0
    move-exception v16

    .line 1162
    .local v16, "e":Ljava/lang/Exception;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1169
    .end local v16    # "e":Ljava/lang/Exception;
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->mView:Lcom/smartisanos/launcher/view/DockView;

    iget-object v2, v2, Lcom/smartisanos/launcher/view/DockView;->mSortCancelButton:Lcom/smartisanos/smengine/RectNode;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    .line 1170
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->mView:Lcom/smartisanos/launcher/view/DockView;

    iget-object v2, v2, Lcom/smartisanos/launcher/view/DockView;->mSortConfirmButton:Lcom/smartisanos/smengine/RectNode;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    .line 1172
    const/4 v6, 0x0

    .line 1173
    .local v6, "inOut":I
    sget v2, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    invoke-static {v2}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v2

    iget v15, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_height:F

    .line 1174
    .local v15, "dockMultiModeHeight":F
    const/high16 v10, -0x40800000    # -1.0f

    .line 1175
    .local v10, "buttonFromLocY":F
    const/high16 v12, -0x40800000    # -1.0f

    .line 1176
    .local v12, "buttonToLocY":F
    const/high16 v18, -0x40800000    # -1.0f

    .line 1177
    .local v18, "fromLocLeftTopY":F
    const/high16 v27, -0x40800000    # -1.0f

    .line 1178
    .local v27, "toLocLeftTopY":F
    new-instance v22, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct/range {v22 .. v22}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 1179
    .local v22, "rectSize":Lcom/smartisanos/smengine/math/Vector3f;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->mView:Lcom/smartisanos/launcher/view/DockView;

    iget-object v2, v2, Lcom/smartisanos/launcher/view/DockView;->mSortCancelButton:Lcom/smartisanos/smengine/RectNode;

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Lcom/smartisanos/smengine/RectNode;->getSize(Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 1180
    if-eqz v28, :cond_2

    .line 1181
    const/16 v6, 0xe

    .line 1182
    move-object/from16 v0, v22

    iget v2, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    add-float v18, v15, v2

    .line 1183
    move-object/from16 v0, v22

    iget v2, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float v11, v2, v4

    .line 1184
    .local v11, "buttonH":F
    add-float v18, v18, v11

    .line 1185
    const/high16 v2, 0x40000000    # 2.0f

    div-float v27, v15, v2

    .line 1193
    :goto_1
    new-instance v17, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct/range {v17 .. v17}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 1194
    .local v17, "fromLoc":Lcom/smartisanos/smengine/math/Vector3f;
    new-instance v26, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct/range {v26 .. v26}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 1195
    .local v26, "toLoc":Lcom/smartisanos/smengine/math/Vector3f;
    sget v2, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static {v2}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v2

    iget v14, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_height:F

    .line 1196
    .local v14, "dockHeight":F
    const/4 v2, 0x0

    sget v4, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v4, v4

    move/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v2, v0, v4, v14, v1}, Lcom/smartisanos/smengine/util/GeomUtil;->convertLeftTopPointToMidPointCoordinate(FFFFLcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    .line 1197
    move-object/from16 v0, v17

    iget v10, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 1198
    const/4 v2, 0x0

    sget v4, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v4, v4

    move/from16 v0, v27

    move-object/from16 v1, v26

    invoke-static {v2, v0, v4, v14, v1}, Lcom/smartisanos/smengine/util/GeomUtil;->convertLeftTopPointToMidPointCoordinate(FFFFLcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    .line 1199
    move-object/from16 v0, v26

    iget v12, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 1201
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 1202
    .local v21, "nodes":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/smengine/SceneNode;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->mView:Lcom/smartisanos/launcher/view/DockView;

    iget-object v2, v2, Lcom/smartisanos/launcher/view/DockView;->mSortCancelButton:Lcom/smartisanos/smengine/RectNode;

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1203
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->mView:Lcom/smartisanos/launcher/view/DockView;

    iget-object v2, v2, Lcom/smartisanos/launcher/view/DockView;->mSortConfirmButton:Lcom/smartisanos/smengine/RectNode;

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1205
    move/from16 v23, v28

    .line 1206
    .local v23, "setNodeVisible":Z
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v24

    .line 1207
    .local v24, "size":I
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_2
    move/from16 v0, v19

    move/from16 v1, v24

    if-ge v0, v1, :cond_0

    .line 1208
    const v5, 0x3e4ccccd    # 0.2f

    .line 1209
    .local v5, "t":F
    if-nez v19, :cond_3

    .line 1210
    move/from16 v0, v19

    int-to-float v2, v0

    const v4, 0x3da3d70a    # 0.08f

    mul-float/2addr v2, v4

    add-float/2addr v5, v2

    .line 1214
    :goto_3
    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/smengine/SceneNode;

    .line 1215
    .local v3, "node":Lcom/smartisanos/smengine/SceneNode;
    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v20

    .line 1216
    .local v20, "loc":Lcom/smartisanos/smengine/math/Vector3f;
    new-instance v7, Lcom/smartisanos/smengine/math/Vector3f;

    move-object/from16 v0, v20

    iget v2, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move-object/from16 v0, v20

    iget v4, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-direct {v7, v2, v10, v4}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    .line 1217
    .local v7, "from":Lcom/smartisanos/smengine/math/Vector3f;
    new-instance v8, Lcom/smartisanos/smengine/math/Vector3f;

    move-object/from16 v0, v20

    iget v2, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move-object/from16 v0, v20

    iget v4, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-direct {v8, v2, v12, v4}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    .line 1218
    .local v8, "to":Lcom/smartisanos/smengine/math/Vector3f;
    const/4 v4, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/smartisanos/launcher/animations/DockViewAnimation;->anim(Lcom/smartisanos/smengine/SceneNode;IFILcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-result-object v9

    .line 1219
    .local v9, "anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    new-instance v2, Lcom/smartisanos/launcher/animations/DockViewAnimation$11;

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v2, v0, v1, v3}, Lcom/smartisanos/launcher/animations/DockViewAnimation$11;-><init>(Lcom/smartisanos/launcher/animations/DockViewAnimation;ZLcom/smartisanos/smengine/SceneNode;)V

    invoke-virtual {v9, v2}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 1228
    const/4 v13, 0x0

    .line 1229
    .local v13, "delay":F
    move-object/from16 v0, v25

    invoke-virtual {v0, v13, v9}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 1207
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .line 1187
    .end local v3    # "node":Lcom/smartisanos/smengine/SceneNode;
    .end local v5    # "t":F
    .end local v7    # "from":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v8    # "to":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v9    # "anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    .end local v11    # "buttonH":F
    .end local v13    # "delay":F
    .end local v14    # "dockHeight":F
    .end local v17    # "fromLoc":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v19    # "i":I
    .end local v20    # "loc":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v21    # "nodes":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/smengine/SceneNode;>;"
    .end local v23    # "setNodeVisible":Z
    .end local v24    # "size":I
    .end local v26    # "toLoc":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_2
    const/16 v6, 0xd

    .line 1188
    const/high16 v2, 0x40000000    # 2.0f

    div-float v18, v15, v2

    .line 1189
    move/from16 v27, v15

    .line 1190
    move-object/from16 v0, v22

    iget v2, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float v11, v2, v4

    .line 1191
    .restart local v11    # "buttonH":F
    add-float v27, v27, v11

    goto/16 :goto_1

    .line 1212
    .restart local v5    # "t":F
    .restart local v14    # "dockHeight":F
    .restart local v17    # "fromLoc":Lcom/smartisanos/smengine/math/Vector3f;
    .restart local v19    # "i":I
    .restart local v21    # "nodes":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/smengine/SceneNode;>;"
    .restart local v23    # "setNodeVisible":Z
    .restart local v24    # "size":I
    .restart local v26    # "toLoc":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_3
    move/from16 v0, v19

    int-to-float v2, v0

    const/high16 v4, 0x3fc00000    # 1.5f

    add-float/2addr v2, v4

    const v4, 0x3da3d70a    # 0.08f

    mul-float/2addr v2, v4

    add-float/2addr v5, v2

    goto :goto_3
.end method


.method public handleAnimation(Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;FLjava/util/List;)V
    .locals 4
    .param p1, "animation"    # Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;
    .param p2, "time"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;",
            "F",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p3, "params":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->log:Lcom/smartisanos/launcher/LOG;

    const-string v1, "DEBUG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleAnimation ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :cond_0
    sget-object v0, Lcom/smartisanos/launcher/animations/DockViewAnimation$12;->$SwitchMap$com$smartisanos$launcher$animations$DockViewAnimation$DOCK_VIEW_ANIMATION:[I

    invoke-virtual {p1}, Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 178
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 80
    :pswitch_1
    invoke-direct {p0, p2, p3}, Lcom/smartisanos/launcher/animations/DockViewAnimation;->runCellNarrowed(FLjava/util/List;)V

    goto :goto_0

    .line 84
    :pswitch_2
    invoke-direct {p0, p2, p3}, Lcom/smartisanos/launcher/animations/DockViewAnimation;->runCellBroaded(FLjava/util/List;)V

    goto :goto_0

    .line 88
    :pswitch_3
    invoke-direct {p0, p2, p3}, Lcom/smartisanos/launcher/animations/DockViewAnimation;->runDockFall(FLjava/util/List;)V

    goto :goto_0

    .line 92
    :pswitch_4
    invoke-direct {p0, p2, p3}, Lcom/smartisanos/launcher/animations/DockViewAnimation;->runDockUp(FLjava/util/List;)V

    goto :goto_0

    .line 96
    :pswitch_5
    invoke-direct {p0, p2, p3}, Lcom/smartisanos/launcher/animations/DockViewAnimation;->runSettingBtnScaleDisappear(FLjava/util/List;)V

    goto :goto_0

    .line 100
    :pswitch_6
    invoke-direct {p0, p2, p3}, Lcom/smartisanos/launcher/animations/DockViewAnimation;->runSettingBtnScaleAppear(FLjava/util/List;)V

    goto :goto_0

    .line 104
    :pswitch_7
    invoke-direct {p0, p2, p3}, Lcom/smartisanos/launcher/animations/DockViewAnimation;->runSettingBtnMoveDisappear(FLjava/util/List;)V

    goto :goto_0

    .line 108
    :pswitch_8
    invoke-direct {p0, p2, p3}, Lcom/smartisanos/launcher/animations/DockViewAnimation;->runSettingBtnMoveAppear(FLjava/util/List;)V

    goto :goto_0

    .line 113
    :pswitch_9
    invoke-direct {p0, p2, p3}, Lcom/smartisanos/launcher/animations/DockViewAnimation;->runRelayoutByLongPress(FLjava/util/List;)V

    goto :goto_0

    .line 117
    :pswitch_a
    invoke-direct {p0, p2, p3}, Lcom/smartisanos/launcher/animations/DockViewAnimation;->runRelayoutByUp(FLjava/util/List;)V

    goto :goto_0

    .line 121
    :pswitch_b
    invoke-direct {p0, p2, p3}, Lcom/smartisanos/launcher/animations/DockViewAnimation;->runReduceDockViewSize(FLjava/util/List;)V

    goto :goto_0

    .line 125
    :pswitch_c
    invoke-direct {p0, p2, p3}, Lcom/smartisanos/launcher/animations/DockViewAnimation;->runRevertDockViewSize(FLjava/util/List;)V

    goto :goto_0

    .line 137
    :pswitch_d
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/DockViewAnimation;->mView:Lcom/smartisanos/launcher/view/DockView;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/DockView;->getDockCellCount()I

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    invoke-direct {p0, p2, p3}, Lcom/smartisanos/launcher/animations/DockViewAnimation;->runDockCellRelayout(FLjava/util/List;)V

    goto :goto_0

    .line 144
    :pswitch_e
    invoke-direct {p0, p2, p3}, Lcom/smartisanos/launcher/animations/DockViewAnimation;->runRelayoutByEnterOrExitCellArea(FLjava/util/List;)V

    goto :goto_0

    .line 148
    :pswitch_f
    invoke-direct {p0, p2, p3}, Lcom/smartisanos/launcher/animations/DockViewAnimation;->runShowSortButton(FLjava/util/List;)V

    goto :goto_0

    .line 152
    :pswitch_10
    invoke-direct {p0, p2, p3}, Lcom/smartisanos/launcher/animations/DockViewAnimation;->runHideSortButton(FLjava/util/List;)V

    goto :goto_0

    .line 156
    :pswitch_11
    invoke-direct {p0, p2, p3}, Lcom/smartisanos/launcher/animations/DockViewAnimation;->runShowBubbleForSort(FLjava/util/List;)V

    goto :goto_0

    .line 160
    :pswitch_12
    invoke-direct {p0, p2, p3}, Lcom/smartisanos/launcher/animations/DockViewAnimation;->runHideBubbleForSort(FLjava/util/List;)V

    goto :goto_0

    .line 164
    :pswitch_13
    invoke-direct {p0, p2, p3}, Lcom/smartisanos/launcher/animations/DockViewAnimation;->runSwitchSortButtonStatus(FLjava/util/List;)V

    goto :goto_0

    .line 168
    :pswitch_14
    invoke-direct {p0, p2, p3}, Lcom/smartisanos/launcher/animations/DockViewAnimation;->runSwitchSortConfirmButtonStatus(FLjava/util/List;)V

    goto :goto_0

    .line 172
    :pswitch_15
    invoke-direct {p0, p2, p3}, Lcom/smartisanos/launcher/animations/DockViewAnimation;->runIconSortConfirmAnim(FLjava/util/List;)V

    goto :goto_0

    .line 78
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch
.end method
