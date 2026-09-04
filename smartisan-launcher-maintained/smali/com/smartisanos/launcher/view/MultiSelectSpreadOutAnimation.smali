.class public Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation;
.super Ljava/lang/Object;
.source "MultiSelectSpreadOutAnimation.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation$CellAnimationPassDataGenerator;,
        Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation$FadeInListener;
    }
.end annotation


.field private static final TOTAL_DURATION:F = 0.3f

.field private static final TOTAL_FRAME:F = 8.0f


.field private animationPageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/launcher/view/Page;",
            ">;"
        }
    .end annotation
.end field

.field public mAnimationCellList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/launcher/view/Cell;",
            ">;"
        }
    .end annotation
.end field

.field private mCellAnimationPassDataChangeParentList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation$CellAnimationPassDataGenerator;",
            ">;"
        }
    .end annotation
.end field

.field private mCellAnimationPassDataEndToEndList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation$CellAnimationPassDataGenerator;",
            ">;"
        }
    .end annotation
.end field

.field private mCellAnimationPassDataNormalList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation$CellAnimationPassDataGenerator;",
            ">;"
        }
    .end annotation
.end field

.field public mIsPlaying:Z

.field private mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

.field private mPageView:Lcom/smartisanos/launcher/view/PageView;

.field private mPreCellColIndex:I

.field private mPreCellParentIndex:I

.field private mPreCellRowIndex:I

.field private mPreIndex:I

.field private mSelectedCellList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/launcher/view/Cell;",
            ">;"
        }
    .end annotation
.end field

.field private timeLine:Lcom/smartisanos/smengine/AnimationTimeLine;


.method public constructor <init>(Lcom/smartisanos/launcher/view/PageView;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/smartisanos/smengine/Animation$AnimationListener;)V
    .locals 3
    .param p1, "pageView"    # Lcom/smartisanos/launcher/view/PageView;
    .param p4, "listener"    # Lcom/smartisanos/smengine/Animation$AnimationListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smartisanos/launcher/view/PageView;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/launcher/view/Cell;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/launcher/view/Cell;",
            ">;",
            "Lcom/smartisanos/smengine/Animation$AnimationListener;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "pclist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    .local p3, "selectedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    const/4 v2, -0x1

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v1, Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-direct {v1}, Lcom/smartisanos/smengine/AnimationTimeLine;-><init>()V

    iput-object v1, p0, Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation;->timeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 38
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation;->mCellAnimationPassDataNormalList:Ljava/util/ArrayList;

    .line 39
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation;->mCellAnimationPassDataEndToEndList:Ljava/util/ArrayList;

    .line 40
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation;->mCellAnimationPassDataChangeParentList:Ljava/util/ArrayList;

    .line 41
    iput v2, p0, Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation;->mPreIndex:I

    .line 42
    iput v2, p0, Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation;->mPreCellRowIndex:I

    .line 43
    iput v2, p0, Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation;->mPreCellColIndex:I

    .line 44
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation;->mIsPlaying:Z

    .line 104
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation;->mIsPlaying:Z

    .line 105
    iput-object p1, p0, Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    .line 106
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    .line 107
    .local v0, "mv":Lcom/smartisanos/launcher/view/MainView;
    sget v1, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static {v1}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v1

    iput-object v1, p0, Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    .line 108
    iput-object p2, p0, Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation;->mAnimationCellList:Ljava/util/ArrayList;

    .line 109
    iput-object p3, p0, Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation;->mSelectedCellList:Ljava/util/ArrayList;

    .line 112
    if-eqz p4, :cond_0

    .line 113
    iget-object v1, p0, Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation;->timeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v1, p4}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 115
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation;->playAnimation()V

    .line 116
    return-void
.end method

.method static synthetic access$000(Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation;->mSelectedCellList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private generateCellAnimation(Lcom/smartisanos/launcher/view/CellPassData;Lcom/smartisanos/launcher/view/Cell;)V
    .locals 19
    .param p1, "cpd"    # Lcom/smartisanos/launcher/view/CellPassData;
    .param p2, "pc"    # Lcom/smartisanos/launcher/view/Cell;

    .prologue
    .line 227
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/smartisanos/launcher/view/CellPassData;->passFrom:Lcom/smartisanos/smengine/math/Vector3f;

    if-eqz v10, :cond_0

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/smartisanos/launcher/view/CellPassData;->passTo:Lcom/smartisanos/smengine/math/Vector3f;

    if-eqz v10, :cond_0

    .line 228
    new-instance v1, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-object/from16 v0, p2

    invoke-direct {v1, v0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 229
    .local v1, "passTranslate":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    move-object/from16 v0, p1

    iget v10, v0, Lcom/smartisanos/launcher/view/CellPassData;->mEaseType:I

    invoke-virtual {v1, v10}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 230
    move-object/from16 v0, p1

    iget v10, v0, Lcom/smartisanos/launcher/view/CellPassData;->passDuration:F

    invoke-virtual {v1, v10}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 231
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/smartisanos/launcher/view/CellPassData;->passFrom:Lcom/smartisanos/smengine/math/Vector3f;

    iget v3, v10, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/smartisanos/launcher/view/CellPassData;->passFrom:Lcom/smartisanos/smengine/math/Vector3f;

    iget v4, v10, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/smartisanos/launcher/view/CellPassData;->passFrom:Lcom/smartisanos/smengine/math/Vector3f;

    iget v5, v10, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/smartisanos/launcher/view/CellPassData;->passTo:Lcom/smartisanos/smengine/math/Vector3f;

    iget v6, v10, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/smartisanos/launcher/view/CellPassData;->passTo:Lcom/smartisanos/smengine/math/Vector3f;

    iget v7, v10, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/smartisanos/launcher/view/CellPassData;->passTo:Lcom/smartisanos/smengine/math/Vector3f;

    iget v8, v10, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-virtual/range {v1 .. v8}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFF)V

    .line 233
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation;->timeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    move-object/from16 v0, p1

    iget v11, v0, Lcom/smartisanos/launcher/view/CellPassData;->passStart:F

    invoke-virtual {v10, v11, v1}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 236
    .end local v1    # "passTranslate":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    :cond_0
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/smartisanos/launcher/view/CellPassData;->passScaleFrom:Lcom/smartisanos/smengine/math/Vector3f;

    if-eqz v10, :cond_1

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/smartisanos/launcher/view/CellPassData;->passScaleTo:Lcom/smartisanos/smengine/math/Vector3f;

    if-eqz v10, :cond_1

    .line 237
    new-instance v2, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-object/from16 v0, p2

    invoke-direct {v2, v0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 238
    .local v2, "passscale":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    move-object/from16 v0, p1

    iget v10, v0, Lcom/smartisanos/launcher/view/CellPassData;->mEaseType:I

    invoke-virtual {v2, v10}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 239
    move-object/from16 v0, p1

    iget v10, v0, Lcom/smartisanos/launcher/view/CellPassData;->passDuration:F

    invoke-virtual {v2, v10}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 240
    const/4 v3, 0x1

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/smartisanos/launcher/view/CellPassData;->passScaleFrom:Lcom/smartisanos/smengine/math/Vector3f;

    iget v4, v10, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/smartisanos/launcher/view/CellPassData;->passScaleFrom:Lcom/smartisanos/smengine/math/Vector3f;

    iget v5, v10, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/smartisanos/launcher/view/CellPassData;->passScaleFrom:Lcom/smartisanos/smengine/math/Vector3f;

    iget v6, v10, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/smartisanos/launcher/view/CellPassData;->passScaleTo:Lcom/smartisanos/smengine/math/Vector3f;

    iget v7, v10, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/smartisanos/launcher/view/CellPassData;->passScaleTo:Lcom/smartisanos/smengine/math/Vector3f;

    iget v8, v10, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/smartisanos/launcher/view/CellPassData;->passScaleTo:Lcom/smartisanos/smengine/math/Vector3f;

    iget v9, v10, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-virtual/range {v2 .. v9}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFF)V

    .line 242
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setPreserveNodeScale(Z)V

    .line 244
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation;->timeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    move-object/from16 v0, p1

    iget v11, v0, Lcom/smartisanos/launcher/view/CellPassData;->passStart:F

    invoke-virtual {v10, v11, v2}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 247
    .end local v2    # "passscale":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    :cond_1
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/smartisanos/launcher/view/CellPassData;->passColorFrom:Lcom/smartisanos/smengine/math/Vector4f;

    if-eqz v10, :cond_7

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/smartisanos/launcher/view/CellPassData;->passColorTo:Lcom/smartisanos/smengine/math/Vector4f;

    if-eqz v10, :cond_7

    .line 248
    invoke-virtual/range {p2 .. p2}, Lcom/smartisanos/launcher/view/Cell;->isEmptyCell()Z

    move-result v10

    if-nez v10, :cond_2

    invoke-virtual/range {p2 .. p2}, Lcom/smartisanos/launcher/view/Cell;->getForegroundRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v10

    invoke-virtual {v10}, Lcom/smartisanos/smengine/RectNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v10

    if-nez v10, :cond_8

    .line 250
    :cond_2
    new-instance v3, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-object/from16 v0, p2

    invoke-direct {v3, v0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 251
    .local v3, "passAlpha":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    move-object/from16 v0, p1

    iget v10, v0, Lcom/smartisanos/launcher/view/CellPassData;->mEaseType:I

    invoke-virtual {v3, v10}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 252
    move-object/from16 v0, p1

    iget v10, v0, Lcom/smartisanos/launcher/view/CellPassData;->passDuration:F

    invoke-virtual {v3, v10}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 254
    const/4 v4, 0x3

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/smartisanos/launcher/view/CellPassData;->passPremultAlphaColorFrom:Lcom/smartisanos/smengine/math/Vector4f;

    iget v5, v10, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/smartisanos/launcher/view/CellPassData;->passPremultAlphaColorFrom:Lcom/smartisanos/smengine/math/Vector4f;

    iget v6, v10, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/smartisanos/launcher/view/CellPassData;->passPremultAlphaColorFrom:Lcom/smartisanos/smengine/math/Vector4f;

    iget v7, v10, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/smartisanos/launcher/view/CellPassData;->passPremultAlphaColorFrom:Lcom/smartisanos/smengine/math/Vector4f;

    iget v8, v10, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/smartisanos/launcher/view/CellPassData;->passPremultAlphaColorTo:Lcom/smartisanos/smengine/math/Vector4f;

    iget v9, v10, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/smartisanos/launcher/view/CellPassData;->passPremultAlphaColorTo:Lcom/smartisanos/smengine/math/Vector4f;

    iget v10, v10, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/smartisanos/launcher/view/CellPassData;->passPremultAlphaColorTo:Lcom/smartisanos/smengine/math/Vector4f;

    iget v11, v11, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/smartisanos/launcher/view/CellPassData;->passPremultAlphaColorTo:Lcom/smartisanos/smengine/math/Vector4f;

    iget v12, v12, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    invoke-virtual/range {v3 .. v12}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFFFF)V

    .line 257
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation;->timeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    move-object/from16 v0, p1

    iget v11, v0, Lcom/smartisanos/launcher/view/CellPassData;->passStart:F

    invoke-virtual {v10, v11, v3}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 306
    .end local v3    # "passAlpha":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    :cond_3
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/smartisanos/launcher/view/Cell;->getActiveIconView()Lcom/smartisanos/launcher/view/ActiveIconView;

    move-result-object v10

    if-eqz v10, :cond_7

    .line 308
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation;->mSelectedCellList:Ljava/util/ArrayList;

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 310
    new-instance v8, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    invoke-virtual/range {p2 .. p2}, Lcom/smartisanos/launcher/view/Cell;->getForegroundOverlapRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v10

    invoke-direct {v8, v10}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 311
    .local v8, "passAlphaForForegroundOverLap":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    move-object/from16 v0, p1

    iget v10, v0, Lcom/smartisanos/launcher/view/CellPassData;->mEaseType:I

    invoke-virtual {v8, v10}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 312
    move-object/from16 v0, p1

    iget v10, v0, Lcom/smartisanos/launcher/view/CellPassData;->passDuration:F

    invoke-virtual {v8, v10}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 314
    const/4 v9, 0x3

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/smartisanos/launcher/view/CellPassData;->passPremultAlphaColorFrom:Lcom/smartisanos/smengine/math/Vector4f;

    iget v10, v10, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/smartisanos/launcher/view/CellPassData;->passPremultAlphaColorFrom:Lcom/smartisanos/smengine/math/Vector4f;

    iget v11, v11, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/smartisanos/launcher/view/CellPassData;->passPremultAlphaColorFrom:Lcom/smartisanos/smengine/math/Vector4f;

    iget v12, v12, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/smartisanos/launcher/view/CellPassData;->passPremultAlphaColorFrom:Lcom/smartisanos/smengine/math/Vector4f;

    iget v13, v13, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/smartisanos/launcher/view/CellPassData;->passPremultAlphaColorTo:Lcom/smartisanos/smengine/math/Vector4f;

    iget v14, v14, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/smartisanos/launcher/view/CellPassData;->passPremultAlphaColorTo:Lcom/smartisanos/smengine/math/Vector4f;

    iget v15, v15, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/smartisanos/launcher/view/CellPassData;->passPremultAlphaColorTo:Lcom/smartisanos/smengine/math/Vector4f;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/smartisanos/launcher/view/CellPassData;->passPremultAlphaColorTo:Lcom/smartisanos/smengine/math/Vector4f;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    move/from16 v17, v0

    invoke-virtual/range {v8 .. v17}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFFFF)V

    .line 317
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/smartisanos/launcher/view/CellPassData;->passListener:Lcom/smartisanos/smengine/Animation$AnimationListener;

    if-eqz v10, :cond_4

    .line 320
    :cond_4
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation;->timeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    move-object/from16 v0, p1

    iget v11, v0, Lcom/smartisanos/launcher/view/CellPassData;->passStart:F

    invoke-virtual {v10, v11, v8}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 322
    .end local v8    # "passAlphaForForegroundOverLap":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    :cond_5
    invoke-virtual/range {p2 .. p2}, Lcom/smartisanos/launcher/view/Cell;->getCellIntoPageEditModeAnimationCover()Lcom/smartisanos/smengine/RectNode;

    move-result-object v10

    if-eqz v10, :cond_7

    .line 324
    new-instance v9, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    invoke-virtual/range {p2 .. p2}, Lcom/smartisanos/launcher/view/Cell;->getCellIntoPageEditModeAnimationCover()Lcom/smartisanos/smengine/RectNode;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 325
    .local v9, "passAlphaForCellIntoPageEditModeAnimationCover":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    move-object/from16 v0, p1

    iget v10, v0, Lcom/smartisanos/launcher/view/CellPassData;->mEaseType:I

    invoke-virtual {v9, v10}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 326
    move-object/from16 v0, p1

    iget v10, v0, Lcom/smartisanos/launcher/view/CellPassData;->passDuration:F

    invoke-virtual {v9, v10}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 327
    const/4 v10, 0x3

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/smartisanos/launcher/view/CellPassData;->passPremultAlphaColorFrom:Lcom/smartisanos/smengine/math/Vector4f;

    iget v11, v11, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/smartisanos/launcher/view/CellPassData;->passPremultAlphaColorFrom:Lcom/smartisanos/smengine/math/Vector4f;

    iget v12, v12, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/smartisanos/launcher/view/CellPassData;->passPremultAlphaColorFrom:Lcom/smartisanos/smengine/math/Vector4f;

    iget v13, v13, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/smartisanos/launcher/view/CellPassData;->passPremultAlphaColorFrom:Lcom/smartisanos/smengine/math/Vector4f;

    iget v14, v14, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/smartisanos/launcher/view/CellPassData;->passPremultAlphaColorTo:Lcom/smartisanos/smengine/math/Vector4f;

    iget v15, v15, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/smartisanos/launcher/view/CellPassData;->passPremultAlphaColorTo:Lcom/smartisanos/smengine/math/Vector4f;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/smartisanos/launcher/view/CellPassData;->passPremultAlphaColorTo:Lcom/smartisanos/smengine/math/Vector4f;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    move/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/smartisanos/launcher/view/CellPassData;->passPremultAlphaColorTo:Lcom/smartisanos/smengine/math/Vector4f;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    move/from16 v18, v0

    invoke-virtual/range {v9 .. v18}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFFFF)V

    .line 329
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/smartisanos/launcher/view/CellPassData;->passListener:Lcom/smartisanos/smengine/Animation$AnimationListener;

    if-eqz v10, :cond_6

    .line 332
    :cond_6
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation;->timeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    move-object/from16 v0, p1

    iget v11, v0, Lcom/smartisanos/launcher/view/CellPassData;->passStart:F

    invoke-virtual {v10, v11, v9}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 337
    .end local v9    # "passAlphaForCellIntoPageEditModeAnimationCover":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    :cond_7
    return-void

    .line 259
    :cond_8
    invoke-virtual/range {p2 .. p2}, Lcom/smartisanos/launcher/view/Cell;->isEmptyCell()Z

    move-result v10

    if-nez v10, :cond_3

    invoke-virtual/range {p2 .. p2}, Lcom/smartisanos/launcher/view/Cell;->getForegroundRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v10

    invoke-virtual {v10}, Lcom/smartisanos/smengine/RectNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 265
    new-instance v4, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-object/from16 v0, p2

    invoke-direct {v4, v0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 266
    .local v4, "passAlphapc":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    move-object/from16 v0, p1

    iget v10, v0, Lcom/smartisanos/launcher/view/CellPassData;->mEaseType:I

    invoke-virtual {v4, v10}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 267
    move-object/from16 v0, p1

    iget v10, v0, Lcom/smartisanos/launcher/view/CellPassData;->passDuration:F

    invoke-virtual {v4, v10}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 268
    const/4 v5, 0x3

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/smartisanos/launcher/view/CellPassData;->passPremultAlphaColorFrom:Lcom/smartisanos/smengine/math/Vector4f;

    iget v6, v10, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/smartisanos/launcher/view/CellPassData;->passPremultAlphaColorFrom:Lcom/smartisanos/smengine/math/Vector4f;

    iget v7, v10, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/smartisanos/launcher/view/CellPassData;->passPremultAlphaColorFrom:Lcom/smartisanos/smengine/math/Vector4f;

    iget v8, v10, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/smartisanos/launcher/view/CellPassData;->passPremultAlphaColorFrom:Lcom/smartisanos/smengine/math/Vector4f;

    iget v9, v10, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/smartisanos/launcher/view/CellPassData;->passPremultAlphaColorTo:Lcom/smartisanos/smengine/math/Vector4f;

    iget v10, v10, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/smartisanos/launcher/view/CellPassData;->passPremultAlphaColorTo:Lcom/smartisanos/smengine/math/Vector4f;

    iget v11, v11, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/smartisanos/launcher/view/CellPassData;->passPremultAlphaColorTo:Lcom/smartisanos/smengine/math/Vector4f;

    iget v12, v12, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/smartisanos/launcher/view/CellPassData;->passPremultAlphaColorTo:Lcom/smartisanos/smengine/math/Vector4f;

    iget v13, v13, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    invoke-virtual/range {v4 .. v13}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFFFF)V

    .line 271
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation;->timeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    move-object/from16 v0, p1

    iget v11, v0, Lcom/smartisanos/launcher/view/CellPassData;->passStart:F

    invoke-virtual {v10, v11, v4}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 274
    new-instance v5, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    invoke-virtual/range {p2 .. p2}, Lcom/smartisanos/launcher/view/Cell;->getBackgroundRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v10

    invoke-direct {v5, v10}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 275
    .local v5, "passAlphaBackground":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    move-object/from16 v0, p1

    iget v10, v0, Lcom/smartisanos/launcher/view/CellPassData;->mEaseType:I

    invoke-virtual {v5, v10}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 276
    move-object/from16 v0, p1

    iget v10, v0, Lcom/smartisanos/launcher/view/CellPassData;->passDuration:F

    invoke-virtual {v5, v10}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 278
    const/4 v6, 0x3

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/smartisanos/launcher/view/CellPassData;->passPremultAlphaColorFrom:Lcom/smartisanos/smengine/math/Vector4f;

    iget v7, v10, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/smartisanos/launcher/view/CellPassData;->passPremultAlphaColorFrom:Lcom/smartisanos/smengine/math/Vector4f;

    iget v8, v10, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/smartisanos/launcher/view/CellPassData;->passPremultAlphaColorFrom:Lcom/smartisanos/smengine/math/Vector4f;

    iget v9, v10, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/smartisanos/launcher/view/CellPassData;->passPremultAlphaColorFrom:Lcom/smartisanos/smengine/math/Vector4f;

    iget v10, v10, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/smartisanos/launcher/view/CellPassData;->passPremultAlphaColorTo:Lcom/smartisanos/smengine/math/Vector4f;

    iget v11, v11, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/smartisanos/launcher/view/CellPassData;->passPremultAlphaColorTo:Lcom/smartisanos/smengine/math/Vector4f;

    iget v12, v12, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/smartisanos/launcher/view/CellPassData;->passPremultAlphaColorTo:Lcom/smartisanos/smengine/math/Vector4f;

    iget v13, v13, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/smartisanos/launcher/view/CellPassData;->passPremultAlphaColorTo:Lcom/smartisanos/smengine/math/Vector4f;

    iget v14, v14, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    invoke-virtual/range {v5 .. v14}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFFFF)V

    .line 282
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation;->timeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    move-object/from16 v0, p1

    iget v11, v0, Lcom/smartisanos/launcher/view/CellPassData;->passStart:F

    invoke-virtual {v10, v11, v5}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 284
    new-instance v6, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    invoke-virtual/range {p2 .. p2}, Lcom/smartisanos/launcher/view/Cell;->getForegroundRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v10

    invoke-direct {v6, v10}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 285
    .local v6, "passAlphaForeGround":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    move-object/from16 v0, p1

    iget v10, v0, Lcom/smartisanos/launcher/view/CellPassData;->mEaseType:I

    invoke-virtual {v6, v10}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 286
    move-object/from16 v0, p1

    iget v10, v0, Lcom/smartisanos/launcher/view/CellPassData;->passDuration:F

    invoke-virtual {v6, v10}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 287
    const/4 v7, 0x3

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/smartisanos/launcher/view/CellPassData;->passPremultAlphaColorFrom:Lcom/smartisanos/smengine/math/Vector4f;

    iget v8, v10, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/smartisanos/launcher/view/CellPassData;->passPremultAlphaColorFrom:Lcom/smartisanos/smengine/math/Vector4f;

    iget v9, v10, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/smartisanos/launcher/view/CellPassData;->passPremultAlphaColorFrom:Lcom/smartisanos/smengine/math/Vector4f;

    iget v10, v10, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/smartisanos/launcher/view/CellPassData;->passPremultAlphaColorFrom:Lcom/smartisanos/smengine/math/Vector4f;

    iget v11, v11, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/smartisanos/launcher/view/CellPassData;->passPremultAlphaColorTo:Lcom/smartisanos/smengine/math/Vector4f;

    iget v12, v12, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/smartisanos/launcher/view/CellPassData;->passPremultAlphaColorTo:Lcom/smartisanos/smengine/math/Vector4f;

    iget v13, v13, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/smartisanos/launcher/view/CellPassData;->passPremultAlphaColorTo:Lcom/smartisanos/smengine/math/Vector4f;

    iget v14, v14, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/smartisanos/launcher/view/CellPassData;->passPremultAlphaColorTo:Lcom/smartisanos/smengine/math/Vector4f;

    iget v15, v15, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    invoke-virtual/range {v6 .. v15}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFFFF)V

    .line 290
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/smartisanos/launcher/view/CellPassData;->passListener:Lcom/smartisanos/smengine/Animation$AnimationListener;

    if-eqz v10, :cond_9

    .line 291
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/smartisanos/launcher/view/CellPassData;->passListener:Lcom/smartisanos/smengine/Animation$AnimationListener;

    invoke-virtual {v6, v10}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 293
    :cond_9
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation;->timeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    move-object/from16 v0, p1

    iget v11, v0, Lcom/smartisanos/launcher/view/CellPassData;->passStart:F

    invoke-virtual {v10, v11, v6}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 295
    new-instance v7, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    invoke-virtual/range {p2 .. p2}, Lcom/smartisanos/launcher/view/Cell;->getCellSpreadOutRect()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v10

    invoke-direct {v7, v10}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 296
    .local v7, "passAlphaSpreadCover":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    move-object/from16 v0, p1

    iget v10, v0, Lcom/smartisanos/launcher/view/CellPassData;->mEaseType:I

    invoke-virtual {v7, v10}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 297
    move-object/from16 v0, p1

    iget v10, v0, Lcom/smartisanos/launcher/view/CellPassData;->passDuration:F

    invoke-virtual {v7, v10}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 298
    const/4 v8, 0x3

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/smartisanos/launcher/view/CellPassData;->passPremultAlphaColorFrom:Lcom/smartisanos/smengine/math/Vector4f;

    iget v9, v10, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/smartisanos/launcher/view/CellPassData;->passPremultAlphaColorFrom:Lcom/smartisanos/smengine/math/Vector4f;

    iget v10, v10, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/smartisanos/launcher/view/CellPassData;->passPremultAlphaColorFrom:Lcom/smartisanos/smengine/math/Vector4f;

    iget v11, v11, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/smartisanos/launcher/view/CellPassData;->passPremultAlphaColorFrom:Lcom/smartisanos/smengine/math/Vector4f;

    iget v12, v12, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/smartisanos/launcher/view/CellPassData;->passPremultAlphaColorTo:Lcom/smartisanos/smengine/math/Vector4f;

    iget v13, v13, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/smartisanos/launcher/view/CellPassData;->passPremultAlphaColorTo:Lcom/smartisanos/smengine/math/Vector4f;

    iget v14, v14, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/smartisanos/launcher/view/CellPassData;->passPremultAlphaColorTo:Lcom/smartisanos/smengine/math/Vector4f;

    iget v15, v15, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/smartisanos/launcher/view/CellPassData;->passPremultAlphaColorTo:Lcom/smartisanos/smengine/math/Vector4f;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    move/from16 v16, v0

    invoke-virtual/range {v7 .. v16}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFFFF)V

    .line 301
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation;->timeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    move-object/from16 v0, p1

    iget v11, v0, Lcom/smartisanos/launcher/view/CellPassData;->passStart:F

    invoke-virtual {v10, v11, v7}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    goto/16 :goto_0
.end method

.method private generateCellAnimationInGaussianTheme(Lcom/smartisanos/launcher/view/CellPassData;Lcom/smartisanos/launcher/view/Cell;)V
    .locals 13
    .param p1, "cpd"    # Lcom/smartisanos/launcher/view/CellPassData;
    .param p2, "pc"    # Lcom/smartisanos/launcher/view/Cell;

    .prologue
    .line 166
    iget-object v4, p1, Lcom/smartisanos/launcher/view/CellPassData;->passFrom:Lcom/smartisanos/smengine/math/Vector3f;

    if-eqz v4, :cond_0

    iget-object v4, p1, Lcom/smartisanos/launcher/view/CellPassData;->passTo:Lcom/smartisanos/smengine/math/Vector3f;

    if-eqz v4, :cond_0

    .line 167
    new-instance v0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    invoke-direct {v0, p2}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 168
    .local v0, "passTranslate":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    iget v4, p1, Lcom/smartisanos/launcher/view/CellPassData;->mEaseType:I

    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 169
    iget v4, p1, Lcom/smartisanos/launcher/view/CellPassData;->passDuration:F

    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 170
    const/4 v1, 0x0

    iget-object v4, p1, Lcom/smartisanos/launcher/view/CellPassData;->passFrom:Lcom/smartisanos/smengine/math/Vector3f;

    iget v2, v4, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget-object v4, p1, Lcom/smartisanos/launcher/view/CellPassData;->passFrom:Lcom/smartisanos/smengine/math/Vector3f;

    iget v3, v4, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget-object v4, p1, Lcom/smartisanos/launcher/view/CellPassData;->passFrom:Lcom/smartisanos/smengine/math/Vector3f;

    iget v4, v4, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    iget-object v5, p1, Lcom/smartisanos/launcher/view/CellPassData;->passTo:Lcom/smartisanos/smengine/math/Vector3f;

    iget v5, v5, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget-object v6, p1, Lcom/smartisanos/launcher/view/CellPassData;->passTo:Lcom/smartisanos/smengine/math/Vector3f;

    iget v6, v6, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget-object v7, p1, Lcom/smartisanos/launcher/view/CellPassData;->passTo:Lcom/smartisanos/smengine/math/Vector3f;

    iget v7, v7, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-virtual/range {v0 .. v7}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFF)V

    .line 172
    iget-object v4, p0, Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation;->timeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    iget v5, p1, Lcom/smartisanos/launcher/view/CellPassData;->passStart:F

    invoke-virtual {v4, v5, v0}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 175
    .end local v0    # "passTranslate":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    :cond_0
    iget-object v4, p1, Lcom/smartisanos/launcher/view/CellPassData;->passScaleFrom:Lcom/smartisanos/smengine/math/Vector3f;

    if-eqz v4, :cond_1

    iget-object v4, p1, Lcom/smartisanos/launcher/view/CellPassData;->passScaleTo:Lcom/smartisanos/smengine/math/Vector3f;

    if-eqz v4, :cond_1

    .line 176
    new-instance v1, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    invoke-direct {v1, p2}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 177
    .local v1, "passscale":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    iget v4, p1, Lcom/smartisanos/launcher/view/CellPassData;->mEaseType:I

    invoke-virtual {v1, v4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 178
    iget v4, p1, Lcom/smartisanos/launcher/view/CellPassData;->passDuration:F

    invoke-virtual {v1, v4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 179
    const/4 v2, 0x1

    iget-object v4, p1, Lcom/smartisanos/launcher/view/CellPassData;->passScaleFrom:Lcom/smartisanos/smengine/math/Vector3f;

    iget v3, v4, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget-object v4, p1, Lcom/smartisanos/launcher/view/CellPassData;->passScaleFrom:Lcom/smartisanos/smengine/math/Vector3f;

    iget v4, v4, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget-object v5, p1, Lcom/smartisanos/launcher/view/CellPassData;->passScaleFrom:Lcom/smartisanos/smengine/math/Vector3f;

    iget v5, v5, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    iget-object v6, p1, Lcom/smartisanos/launcher/view/CellPassData;->passScaleTo:Lcom/smartisanos/smengine/math/Vector3f;

    iget v6, v6, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget-object v7, p1, Lcom/smartisanos/launcher/view/CellPassData;->passScaleTo:Lcom/smartisanos/smengine/math/Vector3f;

    iget v7, v7, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget-object v8, p1, Lcom/smartisanos/launcher/view/CellPassData;->passScaleTo:Lcom/smartisanos/smengine/math/Vector3f;

    iget v8, v8, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-virtual/range {v1 .. v8}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFF)V

    .line 181
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setPreserveNodeScale(Z)V

    .line 183
    iget-object v4, p0, Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation;->timeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    iget v5, p1, Lcom/smartisanos/launcher/view/CellPassData;->passStart:F

    invoke-virtual {v4, v5, v1}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 186
    .end local v1    # "passscale":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    :cond_1
    iget-object v4, p1, Lcom/smartisanos/launcher/view/CellPassData;->passColorFrom:Lcom/smartisanos/smengine/math/Vector4f;

    if-eqz v4, :cond_3

    iget-object v4, p1, Lcom/smartisanos/launcher/view/CellPassData;->passColorTo:Lcom/smartisanos/smengine/math/Vector4f;

    if-eqz v4, :cond_3

    .line 187
    invoke-virtual {p2}, Lcom/smartisanos/launcher/view/Cell;->isEmptyCell()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p2}, Lcom/smartisanos/launcher/view/Cell;->getForegroundRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/smengine/RectNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v4

    if-nez v4, :cond_4

    .line 189
    :cond_2
    new-instance v2, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    invoke-direct {v2, p2}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 190
    .local v2, "passAlpha":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    iget v4, p1, Lcom/smartisanos/launcher/view/CellPassData;->mEaseType:I

    invoke-virtual {v2, v4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 191
    iget v4, p1, Lcom/smartisanos/launcher/view/CellPassData;->passDuration:F

    invoke-virtual {v2, v4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 193
    const/4 v3, 0x3

    iget-object v4, p1, Lcom/smartisanos/launcher/view/CellPassData;->passPremultAlphaColorFrom:Lcom/smartisanos/smengine/math/Vector4f;

    iget v4, v4, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    iget-object v5, p1, Lcom/smartisanos/launcher/view/CellPassData;->passPremultAlphaColorFrom:Lcom/smartisanos/smengine/math/Vector4f;

    iget v5, v5, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    iget-object v6, p1, Lcom/smartisanos/launcher/view/CellPassData;->passPremultAlphaColorFrom:Lcom/smartisanos/smengine/math/Vector4f;

    iget v6, v6, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    iget-object v7, p1, Lcom/smartisanos/launcher/view/CellPassData;->passPremultAlphaColorFrom:Lcom/smartisanos/smengine/math/Vector4f;

    iget v7, v7, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    iget-object v8, p1, Lcom/smartisanos/launcher/view/CellPassData;->passPremultAlphaColorTo:Lcom/smartisanos/smengine/math/Vector4f;

    iget v8, v8, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    iget-object v9, p1, Lcom/smartisanos/launcher/view/CellPassData;->passPremultAlphaColorTo:Lcom/smartisanos/smengine/math/Vector4f;

    iget v9, v9, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    iget-object v10, p1, Lcom/smartisanos/launcher/view/CellPassData;->passPremultAlphaColorTo:Lcom/smartisanos/smengine/math/Vector4f;

    iget v10, v10, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    iget-object v11, p1, Lcom/smartisanos/launcher/view/CellPassData;->passPremultAlphaColorTo:Lcom/smartisanos/smengine/math/Vector4f;

    iget v11, v11, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    invoke-virtual/range {v2 .. v11}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFFFF)V

    .line 196
    iget-object v4, p0, Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation;->timeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    iget v5, p1, Lcom/smartisanos/launcher/view/CellPassData;->passStart:F

    invoke-virtual {v4, v5, v2}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 224
    .end local v2    # "passAlpha":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    :cond_3
    :goto_0
    return-void

    .line 198
    :cond_4
    invoke-virtual {p2}, Lcom/smartisanos/launcher/view/Cell;->isEmptyCell()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p2}, Lcom/smartisanos/launcher/view/Cell;->getForegroundRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/smengine/RectNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 204
    new-instance v3, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    invoke-direct {v3, p2}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 205
    .local v3, "passAlphapc":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    iget v4, p1, Lcom/smartisanos/launcher/view/CellPassData;->mEaseType:I

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 206
    iget v4, p1, Lcom/smartisanos/launcher/view/CellPassData;->passDuration:F

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 207
    const/4 v4, 0x3

    iget-object v5, p1, Lcom/smartisanos/launcher/view/CellPassData;->passPremultAlphaColorFrom:Lcom/smartisanos/smengine/math/Vector4f;

    iget v5, v5, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    iget-object v6, p1, Lcom/smartisanos/launcher/view/CellPassData;->passPremultAlphaColorFrom:Lcom/smartisanos/smengine/math/Vector4f;

    iget v6, v6, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    iget-object v7, p1, Lcom/smartisanos/launcher/view/CellPassData;->passPremultAlphaColorFrom:Lcom/smartisanos/smengine/math/Vector4f;

    iget v7, v7, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    iget-object v8, p1, Lcom/smartisanos/launcher/view/CellPassData;->passPremultAlphaColorFrom:Lcom/smartisanos/smengine/math/Vector4f;

    iget v8, v8, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    iget-object v9, p1, Lcom/smartisanos/launcher/view/CellPassData;->passPremultAlphaColorTo:Lcom/smartisanos/smengine/math/Vector4f;

    iget v9, v9, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    iget-object v10, p1, Lcom/smartisanos/launcher/view/CellPassData;->passPremultAlphaColorTo:Lcom/smartisanos/smengine/math/Vector4f;

    iget v10, v10, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    iget-object v11, p1, Lcom/smartisanos/launcher/view/CellPassData;->passPremultAlphaColorTo:Lcom/smartisanos/smengine/math/Vector4f;

    iget v11, v11, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    iget-object v12, p1, Lcom/smartisanos/launcher/view/CellPassData;->passPremultAlphaColorTo:Lcom/smartisanos/smengine/math/Vector4f;

    iget v12, v12, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    invoke-virtual/range {v3 .. v12}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFFFF)V

    .line 210
    iget-object v4, p1, Lcom/smartisanos/launcher/view/CellPassData;->passListener:Lcom/smartisanos/smengine/Animation$AnimationListener;

    if-eqz v4, :cond_5

    .line 211
    iget-object v4, p1, Lcom/smartisanos/launcher/view/CellPassData;->passListener:Lcom/smartisanos/smengine/Animation$AnimationListener;

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 214
    :cond_5
    iget-object v4, p0, Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation;->timeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    iget v5, p1, Lcom/smartisanos/launcher/view/CellPassData;->passStart:F

    invoke-virtual {v4, v5, v3}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    goto :goto_0
.end method

.method private generateMultiCPDList()V
    .locals 13

    .prologue
    .line 127
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget-object v11, p0, Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation;->mAnimationCellList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v5, v11, :cond_0

    .line 129
    iget-object v11, p0, Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation;->mAnimationCellList:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/smartisanos/launcher/view/Cell;

    .line 131
    .local v9, "pc":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/Cell;->getRowIndex()I

    move-result v4

    .line 132
    .local v4, "currRowIndex":I
    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/Cell;->getColIndex()I

    move-result v3

    .line 133
    .local v3, "currColIndex":I
    iget-object v11, p0, Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v11, v11, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_row_num:I

    mul-int/2addr v11, v4

    add-int v6, v11, v3

    .line 135
    .local v6, "index":I
    new-instance v0, Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation$CellAnimationPassDataGenerator;

    invoke-direct {v0, p0, v9}, Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation$CellAnimationPassDataGenerator;-><init>(Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation;Lcom/smartisanos/launcher/view/Cell;)V

    .line 136
    .local v0, "capd":Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation$CellAnimationPassDataGenerator;
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation$CellAnimationPassDataGenerator;->generateNormalCellPassData()V

    .line 138
    iget-object v11, p0, Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation;->mCellAnimationPassDataNormalList:Ljava/util/ArrayList;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 142
    .end local v0    # "capd":Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation$CellAnimationPassDataGenerator;
    .end local v3    # "currColIndex":I
    .end local v4    # "currRowIndex":I
    .end local v6    # "index":I
    .end local v9    # "pc":Lcom/smartisanos/launcher/view/Cell;
    :cond_0
    const v10, 0x3cf5c28f    # 0.03f

    .line 143
    .local v10, "timeIncrease":F
    const/4 v1, 0x0

    .line 144
    .local v1, "count":I
    const/4 v5, 0x0

    :goto_1
    iget-object v11, p0, Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation;->mCellAnimationPassDataNormalList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v5, v11, :cond_4

    .line 145
    iget-object v11, p0, Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation;->mCellAnimationPassDataNormalList:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation$CellAnimationPassDataGenerator;

    .line 147
    .restart local v0    # "capd":Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation$CellAnimationPassDataGenerator;
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_2
    iget-object v11, v0, Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation$CellAnimationPassDataGenerator;->CellPassDatas:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v7, v11, :cond_3

    .line 148
    iget-object v11, v0, Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation$CellAnimationPassDataGenerator;->CellPassDatas:Ljava/util/ArrayList;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/CellPassData;

    .line 149
    .local v2, "cpd":Lcom/smartisanos/launcher/view/CellPassData;
    iget v11, v2, Lcom/smartisanos/launcher/view/CellPassData;->passStart:F

    int-to-float v12, v1

    mul-float/2addr v12, v10

    add-float v8, v11, v12

    .line 150
    .local v8, "passStart":F
    if-eqz v7, :cond_1

    .line 152
    iput v8, v2, Lcom/smartisanos/launcher/view/CellPassData;->passStart:F

    .line 154
    :cond_1
    sget-boolean v11, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v11, :cond_2

    .line 155
    invoke-static {v0}, Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation$CellAnimationPassDataGenerator;->access$100(Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation$CellAnimationPassDataGenerator;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v11

    invoke-direct {p0, v2, v11}, Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation;->generateCellAnimationInGaussianTheme(Lcom/smartisanos/launcher/view/CellPassData;Lcom/smartisanos/launcher/view/Cell;)V

    .line 147
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 157
    :cond_2
    invoke-static {v0}, Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation$CellAnimationPassDataGenerator;->access$100(Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation$CellAnimationPassDataGenerator;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v11

    invoke-direct {p0, v2, v11}, Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation;->generateCellAnimation(Lcom/smartisanos/launcher/view/CellPassData;Lcom/smartisanos/launcher/view/Cell;)V

    goto :goto_3

    .line 161
    .end local v2    # "cpd":Lcom/smartisanos/launcher/view/CellPassData;
    .end local v8    # "passStart":F
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 144
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 163
    .end local v0    # "capd":Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation$CellAnimationPassDataGenerator;
    .end local v7    # "j":I
    :cond_4
    return-void
.end method


.method public getTimeLine()Lcom/smartisanos/smengine/AnimationTimeLine;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation;->timeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    return-object v0
.end method

.method public playAnimation()V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation;->generateMultiCPDList()V

    .line 123
    return-void
.end method
