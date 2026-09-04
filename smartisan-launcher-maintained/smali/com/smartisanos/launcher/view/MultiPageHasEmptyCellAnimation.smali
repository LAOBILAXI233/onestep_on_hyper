.class public Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation;
.super Ljava/lang/Object;
.source "MultiPageHasEmptyCellAnimation.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation$CellAnimationPassDataGenerator;
    }
.end annotation


.field private static final TOTAL_DURATION:F = 0.4f

.field private static final TOTAL_FRAME:F = 40.0f


.field public animationPageList:Ljava/util/ArrayList;
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
            "Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation$CellAnimationPassDataGenerator;",
            ">;"
        }
    .end annotation
.end field

.field private mCellAnimationPassDataEndToEndList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation$CellAnimationPassDataGenerator;",
            ">;"
        }
    .end annotation
.end field

.field private mCellAnimationPassDataFullList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation$CellAnimationPassDataGenerator;",
            ">;"
        }
    .end annotation
.end field

.field private mCellAnimationPassDataNormalList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation$CellAnimationPassDataGenerator;",
            ">;"
        }
    .end annotation
.end field

.field public mIsPlaying:Z

.field private mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

.field private mPageView:Lcom/smartisanos/launcher/view/PageView;

.field private mPreCellParentIndex:I

.field private timeLine:Lcom/smartisanos/smengine/AnimationTimeLine;


.method public constructor <init>(Lcom/smartisanos/launcher/view/PageView;IIIILjava/util/ArrayList;Ljava/util/ArrayList;Lcom/smartisanos/smengine/Animation$AnimationListener;)V
    .locals 1
    .param p1, "pageView"    # Lcom/smartisanos/launcher/view/PageView;
    .param p2, "emptyPageIndex"    # I
    .param p3, "emptyCellIndex"    # I
    .param p4, "EmptyCellRowIndex"    # I
    .param p5, "EmptyCellColIndex"    # I
    .param p8, "listener"    # Lcom/smartisanos/smengine/Animation$AnimationListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smartisanos/launcher/view/PageView;",
            "IIII",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/launcher/view/Cell;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/launcher/view/Page;",
            ">;",
            "Lcom/smartisanos/smengine/Animation$AnimationListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 65
    .local p6, "pclist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    .local p7, "pagelist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-direct {v0}, Lcom/smartisanos/smengine/AnimationTimeLine;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation;->timeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation;->mCellAnimationPassDataNormalList:Ljava/util/ArrayList;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation;->mCellAnimationPassDataEndToEndList:Ljava/util/ArrayList;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation;->mCellAnimationPassDataChangeParentList:Ljava/util/ArrayList;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation;->mCellAnimationPassDataFullList:Ljava/util/ArrayList;

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation;->mIsPlaying:Z

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation;->mIsPlaying:Z

    .line 67
    iput-object p1, p0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    .line 68
    sget v0, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    .line 72
    iput-object p6, p0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation;->mAnimationCellList:Ljava/util/ArrayList;

    .line 73
    iput-object p7, p0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation;->animationPageList:Ljava/util/ArrayList;

    .line 78
    iput p2, p0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation;->mPreCellParentIndex:I

    .line 79
    if-eqz p8, :cond_0

    .line 80
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation;->timeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v0, p8}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 87
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation;->playAnimation()V

    .line 88
    return-void
.end method

.method static synthetic access$100(Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation;)I
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation;

    .prologue
    .line 34
    iget v0, p0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation;->mPreCellParentIndex:I

    return v0
.end method

.method static synthetic access$102(Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation;I)I
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation;
    .param p1, "x1"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation;->mPreCellParentIndex:I

    return p1
.end method

.method static synthetic access$200(Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation;)Lcom/smartisanos/launcher/view/PageView;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    return-object v0
.end method

.method private generateCellAnimation(Lcom/smartisanos/launcher/view/CellPassData;Lcom/smartisanos/launcher/view/Cell;Lcom/smartisanos/smengine/Animation$AnimationListener;)V
    .locals 13
    .param p1, "cpd"    # Lcom/smartisanos/launcher/view/CellPassData;
    .param p2, "pc"    # Lcom/smartisanos/launcher/view/Cell;
    .param p3, "l"    # Lcom/smartisanos/smengine/Animation$AnimationListener;

    .prologue
    .line 258
    iget-object v3, p1, Lcom/smartisanos/launcher/view/CellPassData;->passFrom:Lcom/smartisanos/smengine/math/Vector3f;

    if-eqz v3, :cond_0

    iget-object v3, p1, Lcom/smartisanos/launcher/view/CellPassData;->passTo:Lcom/smartisanos/smengine/math/Vector3f;

    if-eqz v3, :cond_0

    .line 259
    new-instance v0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    invoke-direct {v0, p2}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 260
    .local v0, "passTranslate":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    iget v3, p1, Lcom/smartisanos/launcher/view/CellPassData;->mEaseType:I

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 261
    iget v3, p1, Lcom/smartisanos/launcher/view/CellPassData;->passDuration:F

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 262
    const/4 v1, 0x0

    iget-object v3, p1, Lcom/smartisanos/launcher/view/CellPassData;->passFrom:Lcom/smartisanos/smengine/math/Vector3f;

    iget v2, v3, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget-object v3, p1, Lcom/smartisanos/launcher/view/CellPassData;->passFrom:Lcom/smartisanos/smengine/math/Vector3f;

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget-object v4, p1, Lcom/smartisanos/launcher/view/CellPassData;->passFrom:Lcom/smartisanos/smengine/math/Vector3f;

    iget v4, v4, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    iget-object v5, p1, Lcom/smartisanos/launcher/view/CellPassData;->passTo:Lcom/smartisanos/smengine/math/Vector3f;

    iget v5, v5, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget-object v6, p1, Lcom/smartisanos/launcher/view/CellPassData;->passTo:Lcom/smartisanos/smengine/math/Vector3f;

    iget v6, v6, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget-object v7, p1, Lcom/smartisanos/launcher/view/CellPassData;->passTo:Lcom/smartisanos/smengine/math/Vector3f;

    iget v7, v7, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-virtual/range {v0 .. v7}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFF)V

    .line 264
    iget-object v3, p0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation;->timeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    iget v4, p1, Lcom/smartisanos/launcher/view/CellPassData;->passStart:F

    invoke-virtual {v3, v4, v0}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 265
    iget-object v3, p1, Lcom/smartisanos/launcher/view/CellPassData;->passListener:Lcom/smartisanos/smengine/Animation$AnimationListener;

    if-eqz v3, :cond_0

    .line 266
    iget-object v3, p1, Lcom/smartisanos/launcher/view/CellPassData;->passListener:Lcom/smartisanos/smengine/Animation$AnimationListener;

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 270
    .end local v0    # "passTranslate":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    :cond_0
    iget-object v3, p1, Lcom/smartisanos/launcher/view/CellPassData;->passScaleFrom:Lcom/smartisanos/smengine/math/Vector3f;

    if-eqz v3, :cond_1

    iget-object v3, p1, Lcom/smartisanos/launcher/view/CellPassData;->passScaleTo:Lcom/smartisanos/smengine/math/Vector3f;

    if-eqz v3, :cond_1

    .line 271
    new-instance v1, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    invoke-direct {v1, p2}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 272
    .local v1, "passScale":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    iget v3, p1, Lcom/smartisanos/launcher/view/CellPassData;->mEaseType:I

    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 273
    iget v3, p1, Lcom/smartisanos/launcher/view/CellPassData;->passDuration:F

    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 274
    const/4 v2, 0x1

    iget-object v3, p1, Lcom/smartisanos/launcher/view/CellPassData;->passScaleFrom:Lcom/smartisanos/smengine/math/Vector3f;

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->x:F

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

    .line 275
    iget-object v3, p0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation;->timeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    iget v4, p1, Lcom/smartisanos/launcher/view/CellPassData;->passStart:F

    invoke-virtual {v3, v4, v1}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 278
    .end local v1    # "passScale":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    :cond_1
    iget-object v3, p1, Lcom/smartisanos/launcher/view/CellPassData;->passColorFrom:Lcom/smartisanos/smengine/math/Vector4f;

    if-eqz v3, :cond_2

    iget-object v3, p1, Lcom/smartisanos/launcher/view/CellPassData;->passColorTo:Lcom/smartisanos/smengine/math/Vector4f;

    if-eqz v3, :cond_2

    .line 279
    new-instance v2, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    invoke-direct {v2, p2}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 280
    .local v2, "passColor":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    iget v3, p1, Lcom/smartisanos/launcher/view/CellPassData;->mEaseType:I

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 281
    iget v3, p1, Lcom/smartisanos/launcher/view/CellPassData;->passDuration:F

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 282
    const/4 v3, 0x3

    iget-object v4, p1, Lcom/smartisanos/launcher/view/CellPassData;->passColorFrom:Lcom/smartisanos/smengine/math/Vector4f;

    iget v4, v4, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    iget-object v5, p1, Lcom/smartisanos/launcher/view/CellPassData;->passColorFrom:Lcom/smartisanos/smengine/math/Vector4f;

    iget v5, v5, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    iget-object v6, p1, Lcom/smartisanos/launcher/view/CellPassData;->passColorFrom:Lcom/smartisanos/smengine/math/Vector4f;

    iget v6, v6, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    iget-object v7, p1, Lcom/smartisanos/launcher/view/CellPassData;->passColorFrom:Lcom/smartisanos/smengine/math/Vector4f;

    iget v7, v7, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    iget-object v8, p1, Lcom/smartisanos/launcher/view/CellPassData;->passColorTo:Lcom/smartisanos/smengine/math/Vector4f;

    iget v8, v8, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    iget-object v9, p1, Lcom/smartisanos/launcher/view/CellPassData;->passColorTo:Lcom/smartisanos/smengine/math/Vector4f;

    iget v9, v9, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    iget-object v10, p1, Lcom/smartisanos/launcher/view/CellPassData;->passColorTo:Lcom/smartisanos/smengine/math/Vector4f;

    iget v10, v10, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    iget-object v11, p1, Lcom/smartisanos/launcher/view/CellPassData;->passColorTo:Lcom/smartisanos/smengine/math/Vector4f;

    iget v11, v11, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    invoke-virtual/range {v2 .. v11}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFFFF)V

    .line 284
    iget-object v3, p0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation;->timeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    iget v4, p1, Lcom/smartisanos/launcher/view/CellPassData;->passStart:F

    invoke-virtual {v3, v4, v2}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 287
    .end local v2    # "passColor":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    :cond_2
    iget-boolean v3, p1, Lcom/smartisanos/launcher/view/CellPassData;->mJustForTimer:Z

    if-eqz v3, :cond_5

    .line 288
    new-instance v12, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    invoke-direct {v12, p2}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 289
    .local v12, "passTimer":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    iget v3, p1, Lcom/smartisanos/launcher/view/CellPassData;->mEaseType:I

    invoke-virtual {v12, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 290
    iget v3, p1, Lcom/smartisanos/launcher/view/CellPassData;->passDuration:F

    invoke-virtual {v12, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 291
    const/16 v3, 0x14

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v12, v3, v4, v5}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFF)V

    .line 293
    iget-object v3, p1, Lcom/smartisanos/launcher/view/CellPassData;->passListener:Lcom/smartisanos/smengine/Animation$AnimationListener;

    if-eqz v3, :cond_4

    .line 294
    sget-boolean v3, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v3, :cond_3

    const-string v3, "############ passlistener != null"

    invoke-static {v3}, Lcom/smartisanos/launcher/LOG;->i(Ljava/lang/String;)V

    .line 295
    :cond_3
    iget-object v3, p1, Lcom/smartisanos/launcher/view/CellPassData;->passListener:Lcom/smartisanos/smengine/Animation$AnimationListener;

    invoke-virtual {v12, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 298
    :cond_4
    iget-object v3, p0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation;->timeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    iget v4, p1, Lcom/smartisanos/launcher/view/CellPassData;->passStart:F

    invoke-virtual {v3, v4, v12}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 301
    .end local v12    # "passTimer":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    :cond_5
    return-void
.end method

.method private generateMultiCPDList()V
    .locals 20

    .prologue
    .line 99
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/smartisanos/launcher/view/PageView;->getCurrentPageCellCount()I

    move-result v12

    .line 100
    .local v12, "pageCellCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation;->mAnimationCellList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v8, v0, :cond_2

    .line 102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation;->mAnimationCellList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/smartisanos/launcher/view/Cell;

    .line 104
    .local v15, "pc":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v15}, Lcom/smartisanos/launcher/view/Cell;->getRowIndex()I

    move-result v7

    .line 105
    .local v7, "currRowIndex":I
    invoke-virtual {v15}, Lcom/smartisanos/launcher/view/Cell;->getColIndex()I

    move-result v6

    .line 106
    .local v6, "currColIndex":I
    invoke-static {v7, v6}, Lcom/smartisanos/launcher/view/Page;->getCellIndex(II)I

    move-result v9

    .line 108
    .local v9, "index":I
    new-instance v3, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation$CellAnimationPassDataGenerator;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v15}, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation$CellAnimationPassDataGenerator;-><init>(Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation;Lcom/smartisanos/launcher/view/Cell;)V

    .line 110
    .local v3, "capd":Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation$CellAnimationPassDataGenerator;
    add-int/lit8 v18, v12, -0x1

    move/from16 v0, v18

    if-ne v9, v0, :cond_0

    .line 112
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation$CellAnimationPassDataGenerator;->generateChangeParentCellPassData()V

    .line 114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation;->mCellAnimationPassDataChangeParentList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation;->mCellAnimationPassDataFullList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 115
    :cond_0
    add-int/lit8 v18, v9, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_row_num:I

    move/from16 v19, v0

    rem-int v18, v18, v19

    if-nez v18, :cond_1

    .line 116
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation$CellAnimationPassDataGenerator;->generateEndToEndCellPassData()V

    .line 118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation;->mCellAnimationPassDataEndToEndList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 121
    :cond_1
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation$CellAnimationPassDataGenerator;->generateNormalCellPassData()V

    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation;->mCellAnimationPassDataNormalList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 156
    .end local v3    # "capd":Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation$CellAnimationPassDataGenerator;
    .end local v6    # "currColIndex":I
    .end local v7    # "currRowIndex":I
    .end local v9    # "index":I
    .end local v15    # "pc":Lcom/smartisanos/launcher/view/Cell;
    :cond_2
    const v17, 0x3ca3d70a    # 0.02f

    .line 157
    .local v17, "timeIncrease":F
    const/16 v16, 0x0

    .line 158
    .local v16, "preParent":Lcom/smartisanos/launcher/view/Page;
    const/4 v4, 0x0

    .line 160
    .local v4, "count":I
    const/4 v8, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation;->mCellAnimationPassDataEndToEndList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v8, v0, :cond_5

    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation;->mCellAnimationPassDataEndToEndList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation$CellAnimationPassDataGenerator;

    .line 162
    .restart local v3    # "capd":Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation$CellAnimationPassDataGenerator;
    invoke-static {v3}, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation$CellAnimationPassDataGenerator;->access$000(Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation$CellAnimationPassDataGenerator;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/smartisanos/launcher/view/Cell;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v11

    check-cast v11, Lcom/smartisanos/launcher/view/Page;

    .line 164
    .local v11, "myParent":Lcom/smartisanos/launcher/view/Page;
    move-object/from16 v0, v16

    if-eq v11, v0, :cond_3

    .line 165
    const/4 v4, 0x0

    .line 168
    :cond_3
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_3
    iget-object v0, v3, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation$CellAnimationPassDataGenerator;->CellPassDatas:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v10, v0, :cond_4

    .line 170
    iget-object v0, v3, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation$CellAnimationPassDataGenerator;->CellPassDatas:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/launcher/view/CellPassData;

    .line 172
    .local v5, "cpd":Lcom/smartisanos/launcher/view/CellPassData;
    iget v0, v5, Lcom/smartisanos/launcher/view/CellPassData;->passStart:F

    move/from16 v18, v0

    int-to-float v0, v4

    move/from16 v19, v0

    mul-float v19, v19, v17

    add-float v14, v18, v19

    .line 173
    .local v14, "passStart":F
    iput v14, v5, Lcom/smartisanos/launcher/view/CellPassData;->passStart:F

    .line 175
    invoke-static {v3}, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation$CellAnimationPassDataGenerator;->access$000(Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation$CellAnimationPassDataGenerator;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v5, v1, v2}, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation;->generateCellAnimation(Lcom/smartisanos/launcher/view/CellPassData;Lcom/smartisanos/launcher/view/Cell;Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 168
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 179
    .end local v5    # "cpd":Lcom/smartisanos/launcher/view/CellPassData;
    .end local v14    # "passStart":F
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 180
    move-object/from16 v16, v11

    .line 160
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 184
    .end local v3    # "capd":Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation$CellAnimationPassDataGenerator;
    .end local v10    # "j":I
    .end local v11    # "myParent":Lcom/smartisanos/launcher/view/Page;
    :cond_5
    const/16 v16, 0x0

    .line 185
    const/4 v4, 0x0

    .line 187
    const/4 v8, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation;->mCellAnimationPassDataFullList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v8, v0, :cond_8

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation;->mCellAnimationPassDataFullList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation$CellAnimationPassDataGenerator;

    .line 190
    .restart local v3    # "capd":Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation$CellAnimationPassDataGenerator;
    invoke-static {v3}, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation$CellAnimationPassDataGenerator;->access$000(Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation$CellAnimationPassDataGenerator;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/smartisanos/launcher/view/Cell;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v11

    check-cast v11, Lcom/smartisanos/launcher/view/Page;

    .line 192
    .restart local v11    # "myParent":Lcom/smartisanos/launcher/view/Page;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation;->mCellAnimationPassDataChangeParentList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_6

    .line 193
    iget-object v0, v3, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation$CellAnimationPassDataGenerator;->CellPassDatas:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/launcher/view/CellPassData;

    .line 194
    .restart local v5    # "cpd":Lcom/smartisanos/launcher/view/CellPassData;
    iget v0, v5, Lcom/smartisanos/launcher/view/CellPassData;->passDuration:F

    move/from16 v18, v0

    int-to-float v0, v4

    move/from16 v19, v0

    mul-float v19, v19, v17

    add-float v13, v18, v19

    .line 195
    .local v13, "passDuration":F
    iput v13, v5, Lcom/smartisanos/launcher/view/CellPassData;->passDuration:F

    .line 198
    .end local v5    # "cpd":Lcom/smartisanos/launcher/view/CellPassData;
    .end local v13    # "passDuration":F
    :cond_6
    move-object/from16 v0, v16

    if-eq v11, v0, :cond_7

    .line 199
    const/4 v4, 0x0

    .line 204
    :goto_5
    move-object/from16 v16, v11

    .line 187
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 201
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 209
    .end local v3    # "capd":Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation$CellAnimationPassDataGenerator;
    .end local v11    # "myParent":Lcom/smartisanos/launcher/view/Page;
    :cond_8
    const/16 v16, 0x0

    .line 210
    const/4 v4, 0x0

    .line 211
    const/4 v8, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation;->mCellAnimationPassDataChangeParentList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v8, v0, :cond_a

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation;->mCellAnimationPassDataChangeParentList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation$CellAnimationPassDataGenerator;

    .line 214
    .restart local v3    # "capd":Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation$CellAnimationPassDataGenerator;
    invoke-static {v3}, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation$CellAnimationPassDataGenerator;->access$000(Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation$CellAnimationPassDataGenerator;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/smartisanos/launcher/view/Cell;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v11

    check-cast v11, Lcom/smartisanos/launcher/view/Page;

    .line 216
    .restart local v11    # "myParent":Lcom/smartisanos/launcher/view/Page;
    move-object/from16 v0, v16

    if-eq v11, v0, :cond_9

    .line 217
    const/4 v4, 0x0

    .line 221
    :cond_9
    iget-object v0, v3, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation$CellAnimationPassDataGenerator;->CellPassDatas:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/launcher/view/CellPassData;

    .line 223
    .restart local v5    # "cpd":Lcom/smartisanos/launcher/view/CellPassData;
    iget v0, v5, Lcom/smartisanos/launcher/view/CellPassData;->passStart:F

    move/from16 v18, v0

    int-to-float v0, v4

    move/from16 v19, v0

    mul-float v19, v19, v17

    add-float v14, v18, v19

    .line 224
    .restart local v14    # "passStart":F
    iput v14, v5, Lcom/smartisanos/launcher/view/CellPassData;->passStart:F

    .line 226
    invoke-static {v3}, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation$CellAnimationPassDataGenerator;->access$000(Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation$CellAnimationPassDataGenerator;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v5, v1, v2}, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation;->generateCellAnimation(Lcom/smartisanos/launcher/view/CellPassData;Lcom/smartisanos/launcher/view/Cell;Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 228
    add-int/lit8 v4, v4, 0x1

    .line 229
    move-object/from16 v16, v11

    .line 211
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 232
    .end local v3    # "capd":Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation$CellAnimationPassDataGenerator;
    .end local v5    # "cpd":Lcom/smartisanos/launcher/view/CellPassData;
    .end local v11    # "myParent":Lcom/smartisanos/launcher/view/Page;
    .end local v14    # "passStart":F
    :cond_a
    const/16 v16, 0x0

    .line 233
    const/4 v4, 0x0

    .line 234
    const/4 v8, 0x0

    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation;->mCellAnimationPassDataNormalList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v8, v0, :cond_c

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation;->mCellAnimationPassDataNormalList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation$CellAnimationPassDataGenerator;

    .line 237
    .restart local v3    # "capd":Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation$CellAnimationPassDataGenerator;
    invoke-static {v3}, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation$CellAnimationPassDataGenerator;->access$000(Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation$CellAnimationPassDataGenerator;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/smartisanos/launcher/view/Cell;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v11

    check-cast v11, Lcom/smartisanos/launcher/view/Page;

    .line 239
    .restart local v11    # "myParent":Lcom/smartisanos/launcher/view/Page;
    move-object/from16 v0, v16

    if-eq v11, v0, :cond_b

    .line 240
    const/4 v4, 0x0

    .line 244
    :cond_b
    iget-object v0, v3, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation$CellAnimationPassDataGenerator;->CellPassDatas:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/launcher/view/CellPassData;

    .line 246
    .restart local v5    # "cpd":Lcom/smartisanos/launcher/view/CellPassData;
    iget v0, v5, Lcom/smartisanos/launcher/view/CellPassData;->passStart:F

    move/from16 v18, v0

    int-to-float v0, v4

    move/from16 v19, v0

    mul-float v19, v19, v17

    add-float v14, v18, v19

    .line 247
    .restart local v14    # "passStart":F
    iput v14, v5, Lcom/smartisanos/launcher/view/CellPassData;->passStart:F

    .line 249
    invoke-static {v3}, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation$CellAnimationPassDataGenerator;->access$000(Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation$CellAnimationPassDataGenerator;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v5, v1, v2}, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation;->generateCellAnimation(Lcom/smartisanos/launcher/view/CellPassData;Lcom/smartisanos/launcher/view/Cell;Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 250
    add-int/lit8 v4, v4, 0x1

    .line 251
    move-object/from16 v16, v11

    .line 234
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 255
    .end local v3    # "capd":Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation$CellAnimationPassDataGenerator;
    .end local v5    # "cpd":Lcom/smartisanos/launcher/view/CellPassData;
    .end local v11    # "myParent":Lcom/smartisanos/launcher/view/Page;
    .end local v14    # "passStart":F
    :cond_c
    return-void
.end method


.method public getTimeLine()Lcom/smartisanos/smengine/AnimationTimeLine;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation;->timeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    return-object v0
.end method

.method public playAnimation()V
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation;->generateMultiCPDList()V

    .line 94
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation;->timeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/AnimationTimeLine;->start()V

    .line 95
    return-void
.end method
