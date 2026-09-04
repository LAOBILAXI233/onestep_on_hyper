.class public Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;
.super Ljava/lang/Object;
.source "MultiPageHasEmptyCellRevertAnimation.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation$CellAnimationPassDataGenerator;
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
            "Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation$CellAnimationPassDataGenerator;",
            ">;"
        }
    .end annotation
.end field

.field private mCellAnimationPassDataEndToEndList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation$CellAnimationPassDataGenerator;",
            ">;"
        }
    .end annotation
.end field

.field private mCellAnimationPassDataFullList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation$CellAnimationPassDataGenerator;",
            ">;"
        }
    .end annotation
.end field

.field private mCellAnimationPassDataNormalList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation$CellAnimationPassDataGenerator;",
            ">;"
        }
    .end annotation
.end field

.field public mIsPlaying:Z

.field private mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

.field private mPageView:Lcom/smartisanos/launcher/view/PageView;

.field private mPreCellParentIndex:I

.field private mPreIndex:I

.field private mPreViewTouchedCellColIndex:I

.field private mPreViewTouchedCellRowIndex:I

.field private timeLine:Lcom/smartisanos/smengine/AnimationTimeLine;


.method public constructor <init>(Lcom/smartisanos/launcher/view/PageView;IIIILjava/util/ArrayList;Ljava/util/ArrayList;Lcom/smartisanos/smengine/Animation$AnimationListener;)V
    .locals 1
    .param p1, "pageView"    # Lcom/smartisanos/launcher/view/PageView;
    .param p2, "previewTouchedPageIndex"    # I
    .param p3, "previewTouchedCellIndex"    # I
    .param p4, "previewTouchedCellRowIndex"    # I
    .param p5, "previewTouchedCellColIndex"    # I
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
    .line 62
    .local p6, "pclist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    .local p7, "pagelist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-direct {v0}, Lcom/smartisanos/smengine/AnimationTimeLine;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;->timeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;->mCellAnimationPassDataNormalList:Ljava/util/ArrayList;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;->mCellAnimationPassDataEndToEndList:Ljava/util/ArrayList;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;->mCellAnimationPassDataChangeParentList:Ljava/util/ArrayList;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;->mCellAnimationPassDataFullList:Ljava/util/ArrayList;

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;->mPreIndex:I

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;->mIsPlaying:Z

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;->mIsPlaying:Z

    .line 64
    iput-object p1, p0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    .line 65
    sget v0, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    .line 66
    iput p4, p0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;->mPreViewTouchedCellRowIndex:I

    .line 67
    iput p5, p0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;->mPreViewTouchedCellColIndex:I

    .line 68
    iput-object p6, p0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;->mAnimationCellList:Ljava/util/ArrayList;

    .line 69
    iput-object p7, p0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;->animationPageList:Ljava/util/ArrayList;

    .line 71
    iput p3, p0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;->mPreIndex:I

    .line 74
    iput p2, p0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;->mPreCellParentIndex:I

    .line 75
    if-eqz p8, :cond_0

    .line 76
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;->timeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v0, p8}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 78
    :cond_0
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;->generateMultiCPDList()V

    .line 79
    return-void
.end method

.method static synthetic access$100(Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;)I
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;

    .prologue
    .line 34
    iget v0, p0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;->mPreCellParentIndex:I

    return v0
.end method

.method static synthetic access$102(Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;I)I
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;
    .param p1, "x1"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;->mPreCellParentIndex:I

    return p1
.end method

.method static synthetic access$200(Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;)Lcom/smartisanos/launcher/view/PageView;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    return-object v0
.end method

.method private generateCellAnimation(Lcom/smartisanos/launcher/view/CellPassData;Lcom/smartisanos/launcher/view/Cell;Lcom/smartisanos/smengine/Animation$AnimationListener;)V
    .locals 13
    .param p1, "cpd"    # Lcom/smartisanos/launcher/view/CellPassData;
    .param p2, "pc"    # Lcom/smartisanos/launcher/view/Cell;
    .param p3, "l"    # Lcom/smartisanos/smengine/Animation$AnimationListener;

    .prologue
    .line 247
    iget-object v3, p1, Lcom/smartisanos/launcher/view/CellPassData;->passFrom:Lcom/smartisanos/smengine/math/Vector3f;

    if-eqz v3, :cond_0

    iget-object v3, p1, Lcom/smartisanos/launcher/view/CellPassData;->passTo:Lcom/smartisanos/smengine/math/Vector3f;

    if-eqz v3, :cond_0

    .line 248
    new-instance v0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    invoke-direct {v0, p2}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 249
    .local v0, "passTranslate":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    iget v3, p1, Lcom/smartisanos/launcher/view/CellPassData;->mEaseType:I

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 250
    iget v3, p1, Lcom/smartisanos/launcher/view/CellPassData;->passDuration:F

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 251
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

    .line 253
    iget-object v3, p0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;->timeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    iget v4, p1, Lcom/smartisanos/launcher/view/CellPassData;->passStart:F

    invoke-virtual {v3, v4, v0}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 254
    iget-object v3, p1, Lcom/smartisanos/launcher/view/CellPassData;->passListener:Lcom/smartisanos/smengine/Animation$AnimationListener;

    if-eqz v3, :cond_0

    .line 255
    iget-object v3, p1, Lcom/smartisanos/launcher/view/CellPassData;->passListener:Lcom/smartisanos/smengine/Animation$AnimationListener;

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 259
    .end local v0    # "passTranslate":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    :cond_0
    iget-object v3, p1, Lcom/smartisanos/launcher/view/CellPassData;->passScaleFrom:Lcom/smartisanos/smengine/math/Vector3f;

    if-eqz v3, :cond_1

    iget-object v3, p1, Lcom/smartisanos/launcher/view/CellPassData;->passScaleTo:Lcom/smartisanos/smengine/math/Vector3f;

    if-eqz v3, :cond_1

    .line 260
    new-instance v1, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    invoke-direct {v1, p2}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 261
    .local v1, "passScale":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    iget v3, p1, Lcom/smartisanos/launcher/view/CellPassData;->mEaseType:I

    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 262
    iget v3, p1, Lcom/smartisanos/launcher/view/CellPassData;->passDuration:F

    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 263
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

    .line 264
    iget-object v3, p0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;->timeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    iget v4, p1, Lcom/smartisanos/launcher/view/CellPassData;->passStart:F

    invoke-virtual {v3, v4, v1}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 267
    .end local v1    # "passScale":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    :cond_1
    iget-object v3, p1, Lcom/smartisanos/launcher/view/CellPassData;->passColorFrom:Lcom/smartisanos/smengine/math/Vector4f;

    if-eqz v3, :cond_2

    iget-object v3, p1, Lcom/smartisanos/launcher/view/CellPassData;->passColorTo:Lcom/smartisanos/smengine/math/Vector4f;

    if-eqz v3, :cond_2

    .line 268
    new-instance v2, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    invoke-direct {v2, p2}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 269
    .local v2, "passColor":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    iget v3, p1, Lcom/smartisanos/launcher/view/CellPassData;->mEaseType:I

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 270
    iget v3, p1, Lcom/smartisanos/launcher/view/CellPassData;->passDuration:F

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 271
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

    .line 273
    iget-object v3, p0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;->timeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    iget v4, p1, Lcom/smartisanos/launcher/view/CellPassData;->passStart:F

    invoke-virtual {v3, v4, v2}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 276
    .end local v2    # "passColor":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    :cond_2
    iget-boolean v3, p1, Lcom/smartisanos/launcher/view/CellPassData;->mJustForTimer:Z

    if-eqz v3, :cond_5

    .line 277
    new-instance v12, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    invoke-direct {v12, p2}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 278
    .local v12, "passTimer":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    iget v3, p1, Lcom/smartisanos/launcher/view/CellPassData;->mEaseType:I

    invoke-virtual {v12, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 279
    iget v3, p1, Lcom/smartisanos/launcher/view/CellPassData;->passDuration:F

    invoke-virtual {v12, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 280
    const/16 v3, 0x14

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v12, v3, v4, v5}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFF)V

    .line 282
    iget-object v3, p1, Lcom/smartisanos/launcher/view/CellPassData;->passListener:Lcom/smartisanos/smengine/Animation$AnimationListener;

    if-eqz v3, :cond_4

    .line 283
    sget-boolean v3, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v3, :cond_3

    const-string v3, "############ passlistener != null"

    invoke-static {v3}, Lcom/smartisanos/launcher/LOG;->i(Ljava/lang/String;)V

    .line 284
    :cond_3
    iget-object v3, p1, Lcom/smartisanos/launcher/view/CellPassData;->passListener:Lcom/smartisanos/smengine/Animation$AnimationListener;

    invoke-virtual {v12, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 287
    :cond_4
    iget-object v3, p0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;->timeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    iget v4, p1, Lcom/smartisanos/launcher/view/CellPassData;->passStart:F

    invoke-virtual {v3, v4, v12}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 292
    .end local v12    # "passTimer":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    :cond_5
    return-void
.end method

.method private generateMultiCPDList()V
    .locals 20

    .prologue
    .line 93
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/smartisanos/launcher/view/PageView;->getCurrentPageCellCount()I

    move-result v12

    .line 94
    .local v12, "pageCellCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;->mAnimationCellList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v8, v0, :cond_2

    .line 96
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;->mAnimationCellList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/smartisanos/launcher/view/Cell;

    .line 98
    .local v15, "pc":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v15}, Lcom/smartisanos/launcher/view/Cell;->getRowIndex()I

    move-result v7

    .line 99
    .local v7, "currRowIndex":I
    invoke-virtual {v15}, Lcom/smartisanos/launcher/view/Cell;->getColIndex()I

    move-result v6

    .line 100
    .local v6, "currColIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_row_num:I

    move/from16 v18, v0

    mul-int v18, v18, v7

    add-int v9, v18, v6

    .line 102
    .local v9, "index":I
    new-instance v3, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation$CellAnimationPassDataGenerator;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v15}, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation$CellAnimationPassDataGenerator;-><init>(Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;Lcom/smartisanos/launcher/view/Cell;)V

    .line 105
    .local v3, "capd":Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation$CellAnimationPassDataGenerator;
    if-nez v9, :cond_0

    .line 107
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation$CellAnimationPassDataGenerator;->generateChangeParentCellPassData()V

    .line 109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;->mCellAnimationPassDataChangeParentList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;->mCellAnimationPassDataFullList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 110
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_row_num:I

    move/from16 v18, v0

    rem-int v18, v9, v18

    if-nez v18, :cond_1

    .line 111
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation$CellAnimationPassDataGenerator;->generateEndToEndCellPassData()V

    .line 113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;->mCellAnimationPassDataEndToEndList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 115
    :cond_1
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation$CellAnimationPassDataGenerator;->generateNormalCellPassData()V

    .line 117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;->mCellAnimationPassDataNormalList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 149
    .end local v3    # "capd":Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation$CellAnimationPassDataGenerator;
    .end local v6    # "currColIndex":I
    .end local v7    # "currRowIndex":I
    .end local v9    # "index":I
    .end local v15    # "pc":Lcom/smartisanos/launcher/view/Cell;
    :cond_2
    const v17, 0x3ca3d70a    # 0.02f

    .line 150
    .local v17, "timeIncrease":F
    const/16 v16, 0x0

    .line 151
    .local v16, "preParent":Lcom/smartisanos/launcher/view/Page;
    const/4 v4, 0x0

    .line 153
    .local v4, "count":I
    const/4 v8, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;->mCellAnimationPassDataEndToEndList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v8, v0, :cond_5

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;->mCellAnimationPassDataEndToEndList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation$CellAnimationPassDataGenerator;

    .line 155
    .restart local v3    # "capd":Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation$CellAnimationPassDataGenerator;
    invoke-static {v3}, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation$CellAnimationPassDataGenerator;->access$000(Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation$CellAnimationPassDataGenerator;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/smartisanos/launcher/view/Cell;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v11

    check-cast v11, Lcom/smartisanos/launcher/view/Page;

    .line 157
    .local v11, "myParent":Lcom/smartisanos/launcher/view/Page;
    move-object/from16 v0, v16

    if-eq v11, v0, :cond_3

    .line 158
    const/4 v4, 0x0

    .line 162
    :cond_3
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_3
    iget-object v0, v3, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation$CellAnimationPassDataGenerator;->CellPassDatas:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v10, v0, :cond_4

    .line 164
    iget-object v0, v3, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation$CellAnimationPassDataGenerator;->CellPassDatas:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/launcher/view/CellPassData;

    .line 166
    .local v5, "cpd":Lcom/smartisanos/launcher/view/CellPassData;
    iget v0, v5, Lcom/smartisanos/launcher/view/CellPassData;->passStart:F

    move/from16 v18, v0

    int-to-float v0, v4

    move/from16 v19, v0

    mul-float v19, v19, v17

    add-float v14, v18, v19

    .line 167
    .local v14, "passStart":F
    iput v14, v5, Lcom/smartisanos/launcher/view/CellPassData;->passStart:F

    .line 168
    invoke-static {v3}, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation$CellAnimationPassDataGenerator;->access$000(Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation$CellAnimationPassDataGenerator;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v5, v1, v2}, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;->generateCellAnimation(Lcom/smartisanos/launcher/view/CellPassData;Lcom/smartisanos/launcher/view/Cell;Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 162
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 171
    .end local v5    # "cpd":Lcom/smartisanos/launcher/view/CellPassData;
    .end local v14    # "passStart":F
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 172
    move-object/from16 v16, v11

    .line 153
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 175
    .end local v3    # "capd":Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation$CellAnimationPassDataGenerator;
    .end local v10    # "j":I
    .end local v11    # "myParent":Lcom/smartisanos/launcher/view/Page;
    :cond_5
    const/16 v16, 0x0

    .line 176
    const/4 v4, 0x0

    .line 178
    const/4 v8, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;->mCellAnimationPassDataFullList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v8, v0, :cond_8

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;->mCellAnimationPassDataFullList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation$CellAnimationPassDataGenerator;

    .line 181
    .restart local v3    # "capd":Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation$CellAnimationPassDataGenerator;
    invoke-static {v3}, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation$CellAnimationPassDataGenerator;->access$000(Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation$CellAnimationPassDataGenerator;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/smartisanos/launcher/view/Cell;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v11

    check-cast v11, Lcom/smartisanos/launcher/view/Page;

    .line 183
    .restart local v11    # "myParent":Lcom/smartisanos/launcher/view/Page;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;->mCellAnimationPassDataChangeParentList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_6

    .line 184
    iget-object v0, v3, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation$CellAnimationPassDataGenerator;->CellPassDatas:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/launcher/view/CellPassData;

    .line 185
    .restart local v5    # "cpd":Lcom/smartisanos/launcher/view/CellPassData;
    iget v0, v5, Lcom/smartisanos/launcher/view/CellPassData;->passDuration:F

    move/from16 v18, v0

    int-to-float v0, v4

    move/from16 v19, v0

    mul-float v19, v19, v17

    add-float v13, v18, v19

    .line 186
    .local v13, "passDuration":F
    iput v13, v5, Lcom/smartisanos/launcher/view/CellPassData;->passDuration:F

    .line 189
    .end local v5    # "cpd":Lcom/smartisanos/launcher/view/CellPassData;
    .end local v13    # "passDuration":F
    :cond_6
    move-object/from16 v0, v16

    if-eq v11, v0, :cond_7

    .line 190
    const/4 v4, 0x0

    .line 194
    :goto_5
    move-object/from16 v16, v11

    .line 178
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 192
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 199
    .end local v3    # "capd":Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation$CellAnimationPassDataGenerator;
    .end local v11    # "myParent":Lcom/smartisanos/launcher/view/Page;
    :cond_8
    const/16 v16, 0x0

    .line 200
    const/4 v4, 0x0

    .line 201
    const/4 v8, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;->mCellAnimationPassDataChangeParentList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v8, v0, :cond_a

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;->mCellAnimationPassDataChangeParentList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation$CellAnimationPassDataGenerator;

    .line 204
    .restart local v3    # "capd":Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation$CellAnimationPassDataGenerator;
    invoke-static {v3}, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation$CellAnimationPassDataGenerator;->access$000(Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation$CellAnimationPassDataGenerator;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/smartisanos/launcher/view/Cell;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v11

    check-cast v11, Lcom/smartisanos/launcher/view/Page;

    .line 206
    .restart local v11    # "myParent":Lcom/smartisanos/launcher/view/Page;
    move-object/from16 v0, v16

    if-eq v11, v0, :cond_9

    .line 207
    const/4 v4, 0x0

    .line 211
    :cond_9
    iget-object v0, v3, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation$CellAnimationPassDataGenerator;->CellPassDatas:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/launcher/view/CellPassData;

    .line 213
    .restart local v5    # "cpd":Lcom/smartisanos/launcher/view/CellPassData;
    iget v0, v5, Lcom/smartisanos/launcher/view/CellPassData;->passStart:F

    move/from16 v18, v0

    int-to-float v0, v4

    move/from16 v19, v0

    mul-float v19, v19, v17

    add-float v14, v18, v19

    .line 214
    .restart local v14    # "passStart":F
    iput v14, v5, Lcom/smartisanos/launcher/view/CellPassData;->passStart:F

    .line 216
    invoke-static {v3}, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation$CellAnimationPassDataGenerator;->access$000(Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation$CellAnimationPassDataGenerator;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v5, v1, v2}, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;->generateCellAnimation(Lcom/smartisanos/launcher/view/CellPassData;Lcom/smartisanos/launcher/view/Cell;Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 218
    add-int/lit8 v4, v4, 0x1

    .line 219
    move-object/from16 v16, v11

    .line 201
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 224
    .end local v3    # "capd":Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation$CellAnimationPassDataGenerator;
    .end local v5    # "cpd":Lcom/smartisanos/launcher/view/CellPassData;
    .end local v11    # "myParent":Lcom/smartisanos/launcher/view/Page;
    .end local v14    # "passStart":F
    :cond_a
    const/16 v16, 0x0

    .line 225
    const/4 v4, 0x0

    .line 226
    const/4 v8, 0x0

    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;->mCellAnimationPassDataNormalList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v8, v0, :cond_c

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;->mCellAnimationPassDataNormalList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation$CellAnimationPassDataGenerator;

    .line 228
    .restart local v3    # "capd":Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation$CellAnimationPassDataGenerator;
    invoke-static {v3}, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation$CellAnimationPassDataGenerator;->access$000(Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation$CellAnimationPassDataGenerator;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/smartisanos/launcher/view/Cell;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v11

    check-cast v11, Lcom/smartisanos/launcher/view/Page;

    .line 230
    .restart local v11    # "myParent":Lcom/smartisanos/launcher/view/Page;
    move-object/from16 v0, v16

    if-eq v11, v0, :cond_b

    .line 231
    const/4 v4, 0x0

    .line 234
    :cond_b
    iget-object v0, v3, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation$CellAnimationPassDataGenerator;->CellPassDatas:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/launcher/view/CellPassData;

    .line 235
    .restart local v5    # "cpd":Lcom/smartisanos/launcher/view/CellPassData;
    iget v0, v5, Lcom/smartisanos/launcher/view/CellPassData;->passStart:F

    move/from16 v18, v0

    int-to-float v0, v4

    move/from16 v19, v0

    mul-float v19, v19, v17

    add-float v14, v18, v19

    .line 236
    .restart local v14    # "passStart":F
    iput v14, v5, Lcom/smartisanos/launcher/view/CellPassData;->passStart:F

    .line 239
    invoke-static {v3}, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation$CellAnimationPassDataGenerator;->access$000(Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation$CellAnimationPassDataGenerator;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v5, v1, v2}, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;->generateCellAnimation(Lcom/smartisanos/launcher/view/CellPassData;Lcom/smartisanos/launcher/view/Cell;Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 240
    add-int/lit8 v4, v4, 0x1

    .line 241
    move-object/from16 v16, v11

    .line 226
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 244
    .end local v3    # "capd":Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation$CellAnimationPassDataGenerator;
    .end local v5    # "cpd":Lcom/smartisanos/launcher/view/CellPassData;
    .end local v11    # "myParent":Lcom/smartisanos/launcher/view/Page;
    .end local v14    # "passStart":F
    :cond_c
    return-void
.end method


.method public getTimeLine()Lcom/smartisanos/smengine/AnimationTimeLine;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;->timeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    return-object v0
.end method
