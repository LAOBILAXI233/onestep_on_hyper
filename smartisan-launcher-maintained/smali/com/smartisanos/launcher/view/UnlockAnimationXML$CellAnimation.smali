.class Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;
.super Ljava/lang/Object;
.source "UnlockAnimationXML.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/view/UnlockAnimationXML;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CellAnimation"
.end annotation


.field private mCellPassDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellPassData;",
            ">;"
        }
    .end annotation
.end field

.field private mDelayDuration:F

.field private mDelayFrame:F

.field private mInitAlpha:F

.field private mInitScale:F

.field private mPC:Lcom/smartisanos/smengine/SceneNode;

.field private mRealFrame:I

.field final synthetic this$0:Lcom/smartisanos/launcher/view/UnlockAnimationXML;


.method public constructor <init>(Lcom/smartisanos/launcher/view/UnlockAnimationXML;Lcom/smartisanos/launcher/view/Cell;F)V
    .locals 2
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/UnlockAnimationXML;
    .param p2, "pc"    # Lcom/smartisanos/launcher/view/Cell;
    .param p3, "delayFrame"    # F

    .prologue
    .line 351
    iput-object p1, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->this$0:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 343
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mCellPassDataList:Ljava/util/ArrayList;

    .line 344
    const/4 v0, 0x0

    iput v0, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mDelayDuration:F

    .line 352
    iput-object p2, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mPC:Lcom/smartisanos/smengine/SceneNode;

    .line 353
    invoke-static {p1}, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->access$200(Lcom/smartisanos/launcher/view/UnlockAnimationXML;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mPC:Lcom/smartisanos/smengine/SceneNode;

    check-cast v0, Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    invoke-static {p1}, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->access$700(Lcom/smartisanos/launcher/view/UnlockAnimationXML;)F

    move-result v0

    mul-float/2addr v0, p3

    iput v0, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mDelayDuration:F

    .line 355
    iput p3, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mDelayFrame:F

    .line 356
    return-void
.end method

.method public constructor <init>(Lcom/smartisanos/launcher/view/UnlockAnimationXML;Lcom/smartisanos/smengine/SceneNode;F)V
    .locals 2
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/UnlockAnimationXML;
    .param p2, "node"    # Lcom/smartisanos/smengine/SceneNode;
    .param p3, "delayFrame"    # F

    .prologue
    .line 358
    iput-object p1, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->this$0:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 343
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mCellPassDataList:Ljava/util/ArrayList;

    .line 344
    const/4 v0, 0x0

    iput v0, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mDelayDuration:F

    .line 359
    iput-object p2, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mPC:Lcom/smartisanos/smengine/SceneNode;

    .line 360
    invoke-static {p2}, Lcom/smartisanos/launcher/view/Cell;->sIsInstanceFromCell(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    invoke-static {p1}, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->access$200(Lcom/smartisanos/launcher/view/UnlockAnimationXML;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mPC:Lcom/smartisanos/smengine/SceneNode;

    check-cast v0, Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    :cond_0
    invoke-static {p1}, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->access$700(Lcom/smartisanos/launcher/view/UnlockAnimationXML;)F

    move-result v0

    mul-float/2addr v0, p3

    iput v0, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mDelayDuration:F

    .line 364
    iput p3, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mDelayFrame:F

    .line 367
    return-void
.end method

.method static synthetic access$1300(Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;)Lcom/smartisanos/smengine/SceneNode;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;

    .prologue
    .line 341
    iget-object v0, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mPC:Lcom/smartisanos/smengine/SceneNode;

    return-object v0
.end method

.method static synthetic access$402(Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;F)F
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;
    .param p1, "x1"    # F

    .prologue
    .line 341
    iput p1, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mInitAlpha:F

    return p1
.end method

.method static synthetic access$502(Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;F)F
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;
    .param p1, "x1"    # F

    .prologue
    .line 341
    iput p1, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mInitScale:F

    return p1
.end method

.method static synthetic access$600(Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;

    .prologue
    .line 341
    iget-object v0, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mCellPassDataList:Ljava/util/ArrayList;

    return-object v0
.end method


.method public generateAnimation()V
    .locals 30

    .prologue
    .line 643
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mPC:Lcom/smartisanos/smengine/SceneNode;

    check-cast v4, Lcom/smartisanos/launcher/view/Cell;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/smartisanos/launcher/view/Cell;->setVisibilityForBatchDrawShadow(Z)V

    .line 644
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mPC:Lcom/smartisanos/smengine/SceneNode;

    check-cast v4, Lcom/smartisanos/launcher/view/Cell;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->this$0:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    invoke-static {v6}, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->access$1500(Lcom/smartisanos/launcher/view/UnlockAnimationXML;)Lcom/smartisanos/smengine/math/Vector4f;

    move-result-object v6

    iget v6, v6, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->this$0:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    invoke-static {v7}, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->access$1500(Lcom/smartisanos/launcher/view/UnlockAnimationXML;)Lcom/smartisanos/smengine/math/Vector4f;

    move-result-object v7

    iget v7, v7, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->this$0:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    invoke-static {v8}, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->access$1500(Lcom/smartisanos/launcher/view/UnlockAnimationXML;)Lcom/smartisanos/smengine/math/Vector4f;

    move-result-object v8

    iget v8, v8, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->this$0:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    invoke-static {v11}, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->access$1500(Lcom/smartisanos/launcher/view/UnlockAnimationXML;)Lcom/smartisanos/smengine/math/Vector4f;

    move-result-object v11

    iget v11, v11, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    invoke-virtual {v4, v6, v7, v8, v11}, Lcom/smartisanos/launcher/view/Cell;->showUnlockShadow(FFFF)V

    .line 647
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->this$0:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    invoke-static {v4}, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->access$1000(Lcom/smartisanos/launcher/view/UnlockAnimationXML;)Lcom/smartisanos/launcher/view/PageView;

    move-result-object v4

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->this$0:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    invoke-static {v8}, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->access$900(Lcom/smartisanos/launcher/view/UnlockAnimationXML;)F

    move-result v8

    move-object/from16 v0, p0

    iget v11, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mInitScale:F

    invoke-virtual {v4, v6, v7, v8, v11}, Lcom/smartisanos/launcher/view/PageView;->createZFromScale(FFFF)F

    move-result v25

    .line 648
    .local v25, "initZ":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mPC:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v23

    .line 649
    .local v23, "currpos":Lcom/smartisanos/smengine/math/Vector3f;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mPC:Lcom/smartisanos/smengine/SceneNode;

    move-object/from16 v0, v23

    iget v6, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move-object/from16 v0, v23

    iget v7, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v0, v25

    invoke-virtual {v4, v6, v7, v0}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 650
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mPC:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 652
    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v6, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mInitAlpha:F

    sub-float v5, v4, v6

    .line 653
    .local v5, "currentColor":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mPC:Lcom/smartisanos/smengine/SceneNode;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->this$0:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    invoke-static {v6}, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->access$1600(Lcom/smartisanos/launcher/view/UnlockAnimationXML;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v6

    iget v6, v6, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    mul-float/2addr v6, v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->this$0:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    invoke-static {v7}, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->access$1600(Lcom/smartisanos/launcher/view/UnlockAnimationXML;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v7

    iget v7, v7, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    mul-float/2addr v7, v5

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->this$0:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    invoke-static {v8}, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->access$1600(Lcom/smartisanos/launcher/view/UnlockAnimationXML;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v8

    iget v8, v8, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    mul-float/2addr v8, v5

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v4, v6, v7, v8, v11}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 656
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mRealFrame:I

    .line 657
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mPC:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v4

    iget v0, v4, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    move/from16 v27, v0

    .line 658
    .local v27, "preTargetZ":F
    const/16 v24, 0x0

    .local v24, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mCellPassDataList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v24

    if-ge v0, v4, :cond_0

    .line 660
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mCellPassDataList:Ljava/util/ArrayList;

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellPassData;

    .line 662
    .local v21, "cpd":Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellPassData;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->this$0:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    invoke-static {v4}, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->access$700(Lcom/smartisanos/launcher/view/UnlockAnimationXML;)F

    move-result v4

    move-object/from16 v0, v21

    iget v6, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellPassData;->mDuration_frame:I

    int-to-float v6, v6

    mul-float v26, v4, v6

    .line 665
    .local v26, "passDuration":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->this$0:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    invoke-static {v4}, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->access$1000(Lcom/smartisanos/launcher/view/UnlockAnimationXML;)Lcom/smartisanos/launcher/view/PageView;

    move-result-object v4

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->this$0:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    invoke-static {v8}, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->access$900(Lcom/smartisanos/launcher/view/UnlockAnimationXML;)F

    move-result v8

    move-object/from16 v0, v21

    iget v11, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellPassData;->mTargetScale:F

    invoke-virtual {v4, v6, v7, v8, v11}, Lcom/smartisanos/launcher/view/PageView;->createZFromScale(FFFF)F

    move-result v22

    .line 668
    .local v22, "currentTargetZ":F
    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, v21

    iget v6, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellPassData;->mTargetAlpha:F

    sub-float v9, v4, v6

    .line 671
    .local v9, "currentTargetAlpha":F
    new-instance v20, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mPC:Lcom/smartisanos/smengine/SceneNode;

    move-object/from16 v0, v20

    invoke-direct {v0, v4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 672
    .local v20, "anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    move-object/from16 v0, v21

    iget v4, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellPassData;->mInterpolator:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 673
    const/4 v4, 0x6

    move-object/from16 v0, v20

    move/from16 v1, v27

    move/from16 v2, v22

    invoke-virtual {v0, v4, v1, v2}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFF)V

    .line 674
    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 675
    const/4 v4, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setUpdateSceneNode(Z)V

    .line 677
    new-instance v3, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mPC:Lcom/smartisanos/smengine/SceneNode;

    invoke-direct {v3, v4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 678
    .local v3, "coloranim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    move-object/from16 v0, v21

    iget v4, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellPassData;->mInterpolator:I

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 679
    const/4 v4, 0x3

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    move v6, v5

    move v7, v5

    move v10, v9

    move v11, v9

    invoke-virtual/range {v3 .. v12}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFFFF)V

    .line 681
    move/from16 v0, v26

    invoke-virtual {v3, v0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 683
    new-instance v4, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation$4;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation$4;-><init>(Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 698
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->this$0:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    iget-object v4, v4, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->mTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mDelayDuration:F

    move-object/from16 v0, v20

    invoke-virtual {v4, v6, v0}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 699
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->this$0:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    iget-object v4, v4, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->mTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mDelayDuration:F

    invoke-virtual {v4, v6, v3}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 701
    move/from16 v27, v22

    .line 702
    move-object/from16 v0, p0

    iget v4, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mDelayDuration:F

    add-float v4, v4, v26

    move-object/from16 v0, p0

    iput v4, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mDelayDuration:F

    .line 703
    move v5, v9

    .line 704
    move-object/from16 v0, p0

    iget v4, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mRealFrame:I

    int-to-float v4, v4

    move-object/from16 v0, v21

    iget v6, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellPassData;->mDuration_frame:I

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mDelayFrame:F

    add-float/2addr v6, v7

    add-float/2addr v4, v6

    float-to-int v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mRealFrame:I

    .line 658
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_0

    .line 709
    .end local v3    # "coloranim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    .end local v9    # "currentTargetAlpha":F
    .end local v20    # "anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    .end local v21    # "cpd":Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellPassData;
    .end local v22    # "currentTargetZ":F
    .end local v26    # "passDuration":F
    :cond_0
    move-object/from16 v0, p0

    iget v4, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mRealFrame:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->this$0:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    invoke-static {v6}, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->access$800(Lcom/smartisanos/launcher/view/UnlockAnimationXML;)I

    move-result v6

    if-ge v4, v6, :cond_1

    .line 710
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->this$0:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    invoke-static {v4}, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->access$800(Lcom/smartisanos/launcher/view/UnlockAnimationXML;)I

    move-result v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mRealFrame:I

    sub-int v28, v4, v6

    .line 711
    .local v28, "replenishFrame":I
    move/from16 v0, v28

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->this$0:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    invoke-static {v6}, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->access$700(Lcom/smartisanos/launcher/view/UnlockAnimationXML;)F

    move-result v6

    mul-float v29, v4, v6

    .line 713
    .local v29, "replenishTime":F
    new-instance v20, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mPC:Lcom/smartisanos/smengine/SceneNode;

    move-object/from16 v0, v20

    invoke-direct {v0, v4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 714
    .restart local v20    # "anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    const/16 v4, 0x13

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 715
    const/4 v4, 0x6

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v6, v7}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFF)V

    .line 716
    move-object/from16 v0, v20

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 717
    const/4 v4, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setUpdateSceneNode(Z)V

    .line 718
    new-instance v4, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation$5;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation$5;-><init>(Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 731
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->this$0:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    iget-object v4, v4, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->mTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mDelayDuration:F

    move-object/from16 v0, v20

    invoke-virtual {v4, v6, v0}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 735
    .end local v20    # "anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    .end local v28    # "replenishFrame":I
    .end local v29    # "replenishTime":F
    :cond_1
    new-instance v10, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mPC:Lcom/smartisanos/smengine/SceneNode;

    invoke-direct {v10, v4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 736
    .local v10, "modulateColorAnim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    const/16 v4, 0x13

    invoke-virtual {v10, v4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 737
    const/4 v11, 0x3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->this$0:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    invoke-static {v4}, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->access$1600(Lcom/smartisanos/launcher/view/UnlockAnimationXML;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v4

    iget v12, v4, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->this$0:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    .line 738
    invoke-static {v4}, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->access$1600(Lcom/smartisanos/launcher/view/UnlockAnimationXML;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v4

    iget v13, v4, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->this$0:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    .line 739
    invoke-static {v4}, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->access$1600(Lcom/smartisanos/launcher/view/UnlockAnimationXML;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v4

    iget v14, v4, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v18, 0x3f800000    # 1.0f

    const/high16 v19, 0x3f800000    # 1.0f

    .line 737
    invoke-virtual/range {v10 .. v19}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFFFF)V

    .line 741
    move-object/from16 v0, p0

    iget v4, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mRealFrame:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->this$0:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    invoke-static {v6}, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->access$700(Lcom/smartisanos/launcher/view/UnlockAnimationXML;)F

    move-result v6

    mul-float/2addr v4, v6

    invoke-virtual {v10, v4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 745
    const/4 v4, 0x1

    invoke-virtual {v10, v4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setPreserveNodeColor(Z)V

    .line 748
    new-instance v4, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation$6;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation$6;-><init>(Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;)V

    invoke-virtual {v10, v4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 755
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->this$0:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    iget-object v4, v4, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->mTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v10}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 757
    return-void
.end method

.method public generateBackgroundAnimation()V
    .locals 21

    .prologue
    .line 428
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->this$0:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    invoke-static {v2}, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->access$1000(Lcom/smartisanos/launcher/view/UnlockAnimationXML;)Lcom/smartisanos/launcher/view/PageView;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->this$0:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    invoke-static {v5}, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->access$900(Lcom/smartisanos/launcher/view/UnlockAnimationXML;)F

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mInitScale:F

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/smartisanos/launcher/view/PageView;->createZFromScale(FFFF)F

    move-result v18

    .line 429
    .local v18, "initZ":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mPC:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v16

    .line 430
    .local v16, "currpos":Lcom/smartisanos/smengine/math/Vector3f;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mPC:Lcom/smartisanos/smengine/SceneNode;

    move-object/from16 v0, v16

    iget v3, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move-object/from16 v0, v16

    iget v4, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v0, v18

    invoke-virtual {v2, v3, v4, v0}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 431
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mPC:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 433
    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mInitAlpha:F

    sub-float v13, v2, v3

    .line 434
    .local v13, "currentColor":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mPC:Lcom/smartisanos/smengine/SceneNode;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v13, v13, v13, v3}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 436
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mRealFrame:I

    .line 437
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mPC:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v2

    iget v0, v2, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    move/from16 v20, v0

    .line 439
    .local v20, "preTargetZ":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mPC:Lcom/smartisanos/smengine/SceneNode;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->this$0:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    invoke-static {v3}, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->access$1100(Lcom/smartisanos/launcher/view/UnlockAnimationXML;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v3

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->this$0:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    invoke-static {v4}, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->access$1100(Lcom/smartisanos/launcher/view/UnlockAnimationXML;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v4

    iget v4, v4, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->this$0:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    invoke-static {v5}, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->access$1100(Lcom/smartisanos/launcher/view/UnlockAnimationXML;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v5

    iget v5, v5, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 441
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mCellPassDataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v17

    if-ge v0, v2, :cond_0

    .line 443
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mCellPassDataList:Ljava/util/ArrayList;

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellPassData;

    .line 445
    .local v12, "cpd":Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellPassData;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->this$0:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    invoke-static {v2}, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->access$700(Lcom/smartisanos/launcher/view/UnlockAnimationXML;)F

    move-result v2

    iget v3, v12, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellPassData;->mDuration_frame:I

    int-to-float v3, v3

    mul-float v19, v2, v3

    .line 448
    .local v19, "passDuration":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->this$0:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    invoke-static {v2}, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->access$1000(Lcom/smartisanos/launcher/view/UnlockAnimationXML;)Lcom/smartisanos/launcher/view/PageView;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->this$0:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    invoke-static {v5}, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->access$900(Lcom/smartisanos/launcher/view/UnlockAnimationXML;)F

    move-result v5

    iget v6, v12, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellPassData;->mTargetScale:F

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/smartisanos/launcher/view/PageView;->createZFromScale(FFFF)F

    move-result v15

    .line 451
    .local v15, "currentTargetZ":F
    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, v12, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellPassData;->mTargetAlpha:F

    sub-float v14, v2, v3

    .line 454
    .local v14, "currentTargetAlpha":F
    new-instance v11, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mPC:Lcom/smartisanos/smengine/SceneNode;

    invoke-direct {v11, v2}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 455
    .local v11, "anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    iget v2, v12, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellPassData;->mInterpolator:I

    invoke-virtual {v11, v2}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 456
    const/4 v2, 0x6

    move/from16 v0, v20

    invoke-virtual {v11, v2, v0, v15}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFF)V

    .line 457
    move/from16 v0, v19

    invoke-virtual {v11, v0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 458
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setUpdateSceneNode(Z)V

    .line 460
    new-instance v1, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mPC:Lcom/smartisanos/smengine/SceneNode;

    invoke-direct {v1, v2}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 461
    .local v1, "coloranim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    iget v2, v12, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellPassData;->mInterpolator:I

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 462
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->this$0:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    invoke-static {v3}, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->access$1100(Lcom/smartisanos/launcher/view/UnlockAnimationXML;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v3

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->this$0:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    invoke-static {v4}, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->access$1100(Lcom/smartisanos/launcher/view/UnlockAnimationXML;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v4

    iget v4, v4, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->this$0:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    invoke-static {v5}, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->access$1100(Lcom/smartisanos/launcher/view/UnlockAnimationXML;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v5

    iget v5, v5, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    const/high16 v6, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->this$0:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    .line 463
    invoke-static {v7}, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->access$1200(Lcom/smartisanos/launcher/view/UnlockAnimationXML;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v7

    iget v7, v7, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->this$0:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    invoke-static {v8}, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->access$1200(Lcom/smartisanos/launcher/view/UnlockAnimationXML;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v8

    iget v8, v8, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->this$0:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    invoke-static {v9}, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->access$1200(Lcom/smartisanos/launcher/view/UnlockAnimationXML;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v9

    iget v9, v9, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    const/high16 v10, 0x3f800000    # 1.0f

    .line 462
    invoke-virtual/range {v1 .. v10}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFFFF)V

    .line 464
    move/from16 v0, v19

    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 467
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->this$0:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    iget-object v2, v2, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->mTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mDelayDuration:F

    invoke-virtual {v2, v3, v11}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 468
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->this$0:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    iget-object v2, v2, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->mTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mDelayDuration:F

    invoke-virtual {v2, v3, v1}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 470
    move/from16 v20, v15

    .line 471
    move-object/from16 v0, p0

    iget v2, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mDelayDuration:F

    add-float v2, v2, v19

    move-object/from16 v0, p0

    iput v2, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mDelayDuration:F

    .line 472
    move v13, v14

    .line 473
    move-object/from16 v0, p0

    iget v2, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mRealFrame:I

    int-to-float v2, v2

    iget v3, v12, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellPassData;->mDuration_frame:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mDelayFrame:F

    add-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mRealFrame:I

    .line 475
    new-instance v2, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation$2;-><init>(Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;)V

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 441
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_0

    .line 484
    .end local v1    # "coloranim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    .end local v11    # "anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    .end local v12    # "cpd":Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellPassData;
    .end local v14    # "currentTargetAlpha":F
    .end local v15    # "currentTargetZ":F
    .end local v19    # "passDuration":F
    :cond_0
    return-void
.end method

.method public generateBatchShadow()V
    .locals 18

    .prologue
    .line 370
    sget-boolean v2, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v2, :cond_1

    .line 371
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mPC:Lcom/smartisanos/smengine/SceneNode;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 425
    :cond_0
    :goto_0
    return-void

    .line 375
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mPC:Lcom/smartisanos/smengine/SceneNode;

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v6, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mInitAlpha:F

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 376
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mPC:Lcom/smartisanos/smengine/SceneNode;

    check-cast v2, Lcom/smartisanos/launcher/view/BatchShadow;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/view/BatchShadow;->setUseSelfColor(Z)V

    .line 377
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mPC:Lcom/smartisanos/smengine/SceneNode;

    check-cast v2, Lcom/smartisanos/launcher/view/BatchShadow;

    const/4 v3, 0x1

    const v4, 0x3f333333    # 0.7f

    invoke-virtual {v2, v3, v4}, Lcom/smartisanos/launcher/view/BatchShadow;->setUseSelfZ(ZF)V

    .line 379
    const/4 v13, 0x0

    .line 380
    .local v13, "currentTotalFrame":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mCellPassDataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v14, v2, :cond_2

    .line 382
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mCellPassDataList:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellPassData;

    .line 384
    .local v12, "cpd":Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellPassData;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->this$0:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    invoke-static {v2}, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->access$700(Lcom/smartisanos/launcher/view/UnlockAnimationXML;)F

    move-result v2

    iget v3, v12, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellPassData;->mDuration_frame:I

    int-to-float v3, v3

    mul-float v15, v2, v3

    .line 388
    .local v15, "passDuration":F
    new-instance v1, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mPC:Lcom/smartisanos/smengine/SceneNode;

    invoke-direct {v1, v2}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 389
    .local v1, "coloranim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    iget v2, v12, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellPassData;->mInterpolator:I

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 390
    const/4 v2, 0x3

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v6, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mInitAlpha:F

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual/range {v1 .. v10}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFFFF)V

    .line 392
    invoke-virtual {v1, v15}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 394
    new-instance v2, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation$1;-><init>(Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;)V

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 406
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->this$0:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    iget-object v2, v2, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->mTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mDelayDuration:F

    invoke-virtual {v2, v3, v1}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 408
    move-object/from16 v0, p0

    iget v2, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mDelayDuration:F

    add-float/2addr v2, v15

    move-object/from16 v0, p0

    iput v2, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mDelayDuration:F

    .line 409
    int-to-float v2, v13

    iget v3, v12, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellPassData;->mDuration_frame:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mDelayFrame:F

    add-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v13, v2

    .line 380
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 414
    .end local v1    # "coloranim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    .end local v12    # "cpd":Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellPassData;
    .end local v15    # "passDuration":F
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->this$0:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    invoke-static {v2}, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->access$800(Lcom/smartisanos/launcher/view/UnlockAnimationXML;)I

    move-result v2

    if-ge v13, v2, :cond_0

    .line 415
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->this$0:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    invoke-static {v2}, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->access$800(Lcom/smartisanos/launcher/view/UnlockAnimationXML;)I

    move-result v2

    sub-int v16, v2, v13

    .line 416
    .local v16, "replenishFrame":I
    move/from16 v0, v16

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->this$0:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    invoke-static {v3}, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->access$700(Lcom/smartisanos/launcher/view/UnlockAnimationXML;)F

    move-result v3

    mul-float v17, v2, v3

    .line 418
    .local v17, "replenishTime":F
    new-instance v11, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mPC:Lcom/smartisanos/smengine/SceneNode;

    invoke-direct {v11, v2}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 419
    .local v11, "anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    const/16 v2, 0x13

    invoke-virtual {v11, v2}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 420
    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v11, v2, v3, v4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFF)V

    .line 421
    move/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 422
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setUpdateSceneNode(Z)V

    .line 423
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->this$0:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    iget-object v2, v2, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->mTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mDelayDuration:F

    invoke-virtual {v2, v3, v11}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    goto/16 :goto_0
.end method

.method public generateDockAnimation()V
    .locals 30

    .prologue
    .line 489
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->this$0:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    invoke-static {v4}, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->access$1000(Lcom/smartisanos/launcher/view/UnlockAnimationXML;)Lcom/smartisanos/launcher/view/PageView;

    move-result-object v4

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->this$0:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    invoke-static {v8}, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->access$900(Lcom/smartisanos/launcher/view/UnlockAnimationXML;)F

    move-result v8

    move-object/from16 v0, p0

    iget v11, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mInitScale:F

    invoke-virtual {v4, v6, v7, v8, v11}, Lcom/smartisanos/launcher/view/PageView;->createZFromScale(FFFF)F

    move-result v25

    .line 490
    .local v25, "initZ":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mPC:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v23

    .line 491
    .local v23, "currpos":Lcom/smartisanos/smengine/math/Vector3f;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mPC:Lcom/smartisanos/smengine/SceneNode;

    move-object/from16 v0, v23

    iget v6, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move-object/from16 v0, v23

    iget v7, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v0, v25

    invoke-virtual {v4, v6, v7, v0}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 492
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mPC:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 494
    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v6, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mInitAlpha:F

    sub-float v5, v4, v6

    .line 496
    .local v5, "currentColor":F
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mRealFrame:I

    .line 497
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mPC:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v4

    iget v0, v4, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    move/from16 v27, v0

    .line 499
    .local v27, "preTargetZ":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mPC:Lcom/smartisanos/smengine/SceneNode;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->this$0:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    invoke-static {v6}, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->access$1400(Lcom/smartisanos/launcher/view/UnlockAnimationXML;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v6

    iget v6, v6, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    mul-float/2addr v6, v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->this$0:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    invoke-static {v7}, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->access$1400(Lcom/smartisanos/launcher/view/UnlockAnimationXML;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v7

    iget v7, v7, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    mul-float/2addr v7, v5

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->this$0:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    invoke-static {v8}, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->access$1400(Lcom/smartisanos/launcher/view/UnlockAnimationXML;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v8

    iget v8, v8, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    mul-float/2addr v8, v5

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v4, v6, v7, v8, v11}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 501
    const/16 v24, 0x0

    .local v24, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mCellPassDataList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v24

    if-ge v0, v4, :cond_0

    .line 503
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mCellPassDataList:Ljava/util/ArrayList;

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellPassData;

    .line 505
    .local v21, "cpd":Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellPassData;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->this$0:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    invoke-static {v4}, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->access$700(Lcom/smartisanos/launcher/view/UnlockAnimationXML;)F

    move-result v4

    move-object/from16 v0, v21

    iget v6, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellPassData;->mDuration_frame:I

    int-to-float v6, v6

    mul-float v26, v4, v6

    .line 508
    .local v26, "passDuration":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->this$0:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    invoke-static {v4}, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->access$1000(Lcom/smartisanos/launcher/view/UnlockAnimationXML;)Lcom/smartisanos/launcher/view/PageView;

    move-result-object v4

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->this$0:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    invoke-static {v8}, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->access$900(Lcom/smartisanos/launcher/view/UnlockAnimationXML;)F

    move-result v8

    move-object/from16 v0, v21

    iget v11, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellPassData;->mTargetScale:F

    invoke-virtual {v4, v6, v7, v8, v11}, Lcom/smartisanos/launcher/view/PageView;->createZFromScale(FFFF)F

    move-result v22

    .line 511
    .local v22, "currentTargetZ":F
    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, v21

    iget v6, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellPassData;->mTargetAlpha:F

    sub-float v9, v4, v6

    .line 514
    .local v9, "currentTargetAlpha":F
    new-instance v20, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mPC:Lcom/smartisanos/smengine/SceneNode;

    move-object/from16 v0, v20

    invoke-direct {v0, v4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 515
    .local v20, "anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    move-object/from16 v0, v21

    iget v4, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellPassData;->mInterpolator:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 516
    const/4 v4, 0x6

    move-object/from16 v0, v20

    move/from16 v1, v27

    move/from16 v2, v22

    invoke-virtual {v0, v4, v1, v2}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFF)V

    .line 517
    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 518
    const/4 v4, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setUpdateSceneNode(Z)V

    .line 520
    new-instance v3, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mPC:Lcom/smartisanos/smengine/SceneNode;

    invoke-direct {v3, v4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 521
    .local v3, "coloranim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    move-object/from16 v0, v21

    iget v4, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellPassData;->mInterpolator:I

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 522
    const/4 v4, 0x3

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    move v6, v5

    move v7, v5

    move v10, v9

    move v11, v9

    invoke-virtual/range {v3 .. v12}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFFFF)V

    .line 524
    move/from16 v0, v26

    invoke-virtual {v3, v0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 527
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->this$0:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    iget-object v4, v4, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->mTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mDelayDuration:F

    move-object/from16 v0, v20

    invoke-virtual {v4, v6, v0}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 528
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->this$0:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    iget-object v4, v4, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->mTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mDelayDuration:F

    invoke-virtual {v4, v6, v3}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 530
    move/from16 v27, v22

    .line 531
    move-object/from16 v0, p0

    iget v4, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mDelayDuration:F

    add-float v4, v4, v26

    move-object/from16 v0, p0

    iput v4, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mDelayDuration:F

    .line 532
    move v5, v9

    .line 533
    move-object/from16 v0, p0

    iget v4, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mRealFrame:I

    int-to-float v4, v4

    move-object/from16 v0, v21

    iget v6, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellPassData;->mDuration_frame:I

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mDelayFrame:F

    add-float/2addr v6, v7

    add-float/2addr v4, v6

    float-to-int v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mRealFrame:I

    .line 501
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_0

    .line 538
    .end local v3    # "coloranim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    .end local v9    # "currentTargetAlpha":F
    .end local v20    # "anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    .end local v21    # "cpd":Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellPassData;
    .end local v22    # "currentTargetZ":F
    .end local v26    # "passDuration":F
    :cond_0
    move-object/from16 v0, p0

    iget v4, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mRealFrame:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->this$0:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    invoke-static {v6}, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->access$800(Lcom/smartisanos/launcher/view/UnlockAnimationXML;)I

    move-result v6

    if-ge v4, v6, :cond_1

    .line 539
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->this$0:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    invoke-static {v4}, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->access$800(Lcom/smartisanos/launcher/view/UnlockAnimationXML;)I

    move-result v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mRealFrame:I

    sub-int v28, v4, v6

    .line 540
    .local v28, "replenishFrame":I
    move/from16 v0, v28

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->this$0:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    invoke-static {v6}, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->access$700(Lcom/smartisanos/launcher/view/UnlockAnimationXML;)F

    move-result v6

    mul-float v29, v4, v6

    .line 542
    .local v29, "replenishTime":F
    new-instance v20, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mPC:Lcom/smartisanos/smengine/SceneNode;

    move-object/from16 v0, v20

    invoke-direct {v0, v4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 543
    .restart local v20    # "anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    const/16 v4, 0x13

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 544
    const/4 v4, 0x6

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v6, v7}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFF)V

    .line 545
    move-object/from16 v0, v20

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 546
    const/4 v4, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setUpdateSceneNode(Z)V

    .line 547
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->this$0:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    iget-object v4, v4, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->mTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mDelayDuration:F

    move-object/from16 v0, v20

    invoke-virtual {v4, v6, v0}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 554
    .end local v20    # "anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    .end local v28    # "replenishFrame":I
    .end local v29    # "replenishTime":F
    :cond_1
    new-instance v10, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mPC:Lcom/smartisanos/smengine/SceneNode;

    check-cast v4, Lcom/smartisanos/launcher/view/DockView;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/DockView;->getBackgroundNode()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v4

    invoke-direct {v10, v4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 555
    .local v10, "modulateColorAnim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    const/16 v4, 0x13

    invoke-virtual {v10, v4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 556
    const/4 v11, 0x3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->this$0:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    invoke-static {v4}, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->access$1400(Lcom/smartisanos/launcher/view/UnlockAnimationXML;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v4

    iget v12, v4, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->this$0:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    .line 557
    invoke-static {v4}, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->access$1400(Lcom/smartisanos/launcher/view/UnlockAnimationXML;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v4

    iget v13, v4, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->this$0:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    .line 558
    invoke-static {v4}, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->access$1400(Lcom/smartisanos/launcher/view/UnlockAnimationXML;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v4

    iget v14, v4, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v18, 0x3f800000    # 1.0f

    const/high16 v19, 0x3f800000    # 1.0f

    .line 556
    invoke-virtual/range {v10 .. v19}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFFFF)V

    .line 560
    move-object/from16 v0, p0

    iget v4, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mRealFrame:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->this$0:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    invoke-static {v6}, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->access$700(Lcom/smartisanos/launcher/view/UnlockAnimationXML;)F

    move-result v6

    mul-float/2addr v4, v6

    invoke-virtual {v10, v4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 564
    const/4 v4, 0x1

    invoke-virtual {v10, v4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setPreserveNodeColor(Z)V

    .line 567
    new-instance v4, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation$3;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation$3;-><init>(Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;)V

    invoke-virtual {v10, v4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 574
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->this$0:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    iget-object v4, v4, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->mTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v10}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 576
    return-void
.end method

.method public generateNonPageCellAnimation()V
    .locals 21

    .prologue
    .line 580
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->this$0:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    invoke-static {v2}, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->access$1000(Lcom/smartisanos/launcher/view/UnlockAnimationXML;)Lcom/smartisanos/launcher/view/PageView;

    move-result-object v2

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->this$0:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    invoke-static {v6}, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->access$900(Lcom/smartisanos/launcher/view/UnlockAnimationXML;)F

    move-result v6

    move-object/from16 v0, p0

    iget v8, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mInitScale:F

    invoke-virtual {v2, v4, v5, v6, v8}, Lcom/smartisanos/launcher/view/PageView;->createZFromScale(FFFF)F

    move-result v16

    .line 581
    .local v16, "initZ":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mPC:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v14

    .line 582
    .local v14, "currpos":Lcom/smartisanos/smengine/math/Vector3f;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mPC:Lcom/smartisanos/smengine/SceneNode;

    iget v4, v14, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v5, v14, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v0, v16

    invoke-virtual {v2, v4, v5, v0}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 583
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mPC:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 585
    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mInitAlpha:F

    sub-float v3, v2, v4

    .line 586
    .local v3, "currentColor":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mPC:Lcom/smartisanos/smengine/SceneNode;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3, v3, v3, v4}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 588
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mRealFrame:I

    .line 589
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mPC:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v2

    iget v0, v2, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    move/from16 v18, v0

    .line 591
    .local v18, "preTargetZ":F
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mCellPassDataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v15, v2, :cond_0

    .line 593
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mCellPassDataList:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellPassData;

    .line 595
    .local v12, "cpd":Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellPassData;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->this$0:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    invoke-static {v2}, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->access$700(Lcom/smartisanos/launcher/view/UnlockAnimationXML;)F

    move-result v2

    iget v4, v12, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellPassData;->mDuration_frame:I

    int-to-float v4, v4

    mul-float v17, v2, v4

    .line 598
    .local v17, "passDuration":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->this$0:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    invoke-static {v2}, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->access$1000(Lcom/smartisanos/launcher/view/UnlockAnimationXML;)Lcom/smartisanos/launcher/view/PageView;

    move-result-object v2

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->this$0:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    invoke-static {v6}, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->access$900(Lcom/smartisanos/launcher/view/UnlockAnimationXML;)F

    move-result v6

    iget v8, v12, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellPassData;->mTargetScale:F

    invoke-virtual {v2, v4, v5, v6, v8}, Lcom/smartisanos/launcher/view/PageView;->createZFromScale(FFFF)F

    move-result v13

    .line 601
    .local v13, "currentTargetZ":F
    const/high16 v2, 0x3f800000    # 1.0f

    iget v4, v12, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellPassData;->mTargetAlpha:F

    sub-float v7, v2, v4

    .line 604
    .local v7, "currentTargetAlpha":F
    new-instance v11, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mPC:Lcom/smartisanos/smengine/SceneNode;

    invoke-direct {v11, v2}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 605
    .local v11, "anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    iget v2, v12, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellPassData;->mInterpolator:I

    invoke-virtual {v11, v2}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 606
    const/4 v2, 0x6

    move/from16 v0, v18

    invoke-virtual {v11, v2, v0, v13}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFF)V

    .line 607
    move/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 608
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setUpdateSceneNode(Z)V

    .line 610
    new-instance v1, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mPC:Lcom/smartisanos/smengine/SceneNode;

    invoke-direct {v1, v2}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 611
    .local v1, "coloranim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    iget v2, v12, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellPassData;->mInterpolator:I

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 612
    const/4 v2, 0x3

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    move v4, v3

    move v5, v3

    move v8, v7

    move v9, v7

    invoke-virtual/range {v1 .. v10}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFFFF)V

    .line 614
    move/from16 v0, v17

    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 617
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->this$0:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    iget-object v2, v2, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->mTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mDelayDuration:F

    invoke-virtual {v2, v4, v11}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 618
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->this$0:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    iget-object v2, v2, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->mTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mDelayDuration:F

    invoke-virtual {v2, v4, v1}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 620
    move/from16 v18, v13

    .line 621
    move-object/from16 v0, p0

    iget v2, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mDelayDuration:F

    add-float v2, v2, v17

    move-object/from16 v0, p0

    iput v2, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mDelayDuration:F

    .line 622
    move v3, v7

    .line 623
    move-object/from16 v0, p0

    iget v2, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mRealFrame:I

    int-to-float v2, v2

    iget v4, v12, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellPassData;->mDuration_frame:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mDelayFrame:F

    add-float/2addr v4, v5

    add-float/2addr v2, v4

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mRealFrame:I

    .line 591
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_0

    .line 628
    .end local v1    # "coloranim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    .end local v7    # "currentTargetAlpha":F
    .end local v11    # "anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    .end local v12    # "cpd":Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellPassData;
    .end local v13    # "currentTargetZ":F
    .end local v17    # "passDuration":F
    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mRealFrame:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->this$0:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    invoke-static {v4}, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->access$800(Lcom/smartisanos/launcher/view/UnlockAnimationXML;)I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 629
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->this$0:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    invoke-static {v2}, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->access$800(Lcom/smartisanos/launcher/view/UnlockAnimationXML;)I

    move-result v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mRealFrame:I

    sub-int v19, v2, v4

    .line 630
    .local v19, "replenishFrame":I
    move/from16 v0, v19

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->this$0:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    invoke-static {v4}, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->access$700(Lcom/smartisanos/launcher/view/UnlockAnimationXML;)F

    move-result v4

    mul-float v20, v2, v4

    .line 632
    .local v20, "replenishTime":F
    new-instance v11, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mPC:Lcom/smartisanos/smengine/SceneNode;

    invoke-direct {v11, v2}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 633
    .restart local v11    # "anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    const/16 v2, 0x13

    invoke-virtual {v11, v2}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 634
    const/4 v2, 0x6

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v11, v2, v4, v5}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFF)V

    .line 635
    move/from16 v0, v20

    invoke-virtual {v11, v0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 636
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setUpdateSceneNode(Z)V

    .line 637
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->this$0:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    iget-object v2, v2, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->mTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->mDelayDuration:F

    invoke-virtual {v2, v4, v11}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 639
    .end local v11    # "anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    .end local v19    # "replenishFrame":I
    .end local v20    # "replenishTime":F
    :cond_1
    return-void
.end method
