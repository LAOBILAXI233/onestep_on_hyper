.class public Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation;
.super Ljava/lang/Object;
.source "MultiSelectConcentrateAnimation.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation$CellPassData;,
        Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation$CellAnimationPassDataGenerator;
    }
.end annotation


.field private static final TOTAL_DURATION:F = 0.4f

.field private static final TOTAL_FRAME:F = 40.0f


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

.field private mAnimationCellList:Ljava/util/ArrayList;
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
            "Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation$CellAnimationPassDataGenerator;",
            ">;"
        }
    .end annotation
.end field

.field private mCellAnimationPassDataEndToEndList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation$CellAnimationPassDataGenerator;",
            ">;"
        }
    .end annotation
.end field

.field private mCellAnimationPassDataNormalList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation$CellAnimationPassDataGenerator;",
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

.field private mTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;


.method public constructor <init>(Lcom/smartisanos/launcher/view/PageView;Lcom/smartisanos/smengine/AnimationTimeLine;Ljava/util/ArrayList;Lcom/smartisanos/smengine/Animation$AnimationListener;)V
    .locals 2
    .param p1, "pageView"    # Lcom/smartisanos/launcher/view/PageView;
    .param p2, "timeline"    # Lcom/smartisanos/smengine/AnimationTimeLine;
    .param p4, "listener"    # Lcom/smartisanos/smengine/Animation$AnimationListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smartisanos/launcher/view/PageView;",
            "Lcom/smartisanos/smengine/AnimationTimeLine;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/launcher/view/Cell;",
            ">;",
            "Lcom/smartisanos/smengine/Animation$AnimationListener;",
            ")V"
        }
    .end annotation

    .prologue
    .local p3, "pclist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    const/4 v1, -0x1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation;->mCellAnimationPassDataNormalList:Ljava/util/ArrayList;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation;->mCellAnimationPassDataEndToEndList:Ljava/util/ArrayList;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation;->mCellAnimationPassDataChangeParentList:Ljava/util/ArrayList;

    .line 39
    iput v1, p0, Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation;->mPreIndex:I

    .line 40
    iput v1, p0, Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation;->mPreCellRowIndex:I

    .line 41
    iput v1, p0, Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation;->mPreCellColIndex:I

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation;->mIsPlaying:Z

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation;->mIsPlaying:Z

    .line 54
    iput-object p1, p0, Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    .line 55
    iput-object p2, p0, Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation;->mTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 56
    iput-object p3, p0, Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation;->mAnimationCellList:Ljava/util/ArrayList;

    .line 57
    sget v0, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    .line 58
    if-eqz p4, :cond_0

    .line 59
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation;->mTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v0, p4}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 61
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation;->playAnimation()V

    .line 62
    return-void
.end method

.method static synthetic access$100(Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation;)Lcom/smartisanos/launcher/data/LayoutProperty;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    return-object v0
.end method

.method private generateCellAnimation(Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation$CellPassData;Lcom/smartisanos/launcher/view/Cell;)V
    .locals 8
    .param p1, "cpd"    # Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation$CellPassData;
    .param p2, "pc"    # Lcom/smartisanos/launcher/view/Cell;

    .prologue
    .line 101
    new-instance v0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    invoke-direct {v0, p2}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 102
    .local v0, "passTranslate":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    iget v1, p1, Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation$CellPassData;->mEaseType:I

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 103
    iget v1, p1, Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation$CellPassData;->passDuration:F

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 104
    const/4 v1, 0x0

    iget-object v2, p1, Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation$CellPassData;->passFrom:Lcom/smartisanos/smengine/math/Vector3f;

    iget v2, v2, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget-object v3, p1, Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation$CellPassData;->passFrom:Lcom/smartisanos/smengine/math/Vector3f;

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget-object v4, p1, Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation$CellPassData;->passFrom:Lcom/smartisanos/smengine/math/Vector3f;

    iget v4, v4, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    iget-object v5, p1, Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation$CellPassData;->passTo:Lcom/smartisanos/smengine/math/Vector3f;

    iget v5, v5, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget-object v6, p1, Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation$CellPassData;->passTo:Lcom/smartisanos/smengine/math/Vector3f;

    iget v6, v6, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget-object v7, p1, Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation$CellPassData;->passTo:Lcom/smartisanos/smengine/math/Vector3f;

    iget v7, v7, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-virtual/range {v0 .. v7}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFF)V

    .line 106
    iget-object v1, p0, Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation;->mTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    iget v2, p1, Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation$CellPassData;->passStart:F

    invoke-virtual {v1, v2, v0}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 107
    return-void
.end method

.method private generateMultiCPDList()V
    .locals 11

    .prologue
    .line 74
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v7, p0, Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation;->mAnimationCellList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_0

    .line 76
    iget-object v7, p0, Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation;->mAnimationCellList:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/launcher/view/Cell;

    .line 77
    .local v5, "pc":Lcom/smartisanos/launcher/view/Cell;
    new-instance v0, Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation$CellAnimationPassDataGenerator;

    invoke-direct {v0, p0, v5}, Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation$CellAnimationPassDataGenerator;-><init>(Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation;Lcom/smartisanos/launcher/view/Cell;)V

    .line 78
    .local v0, "capd":Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation$CellAnimationPassDataGenerator;
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation$CellAnimationPassDataGenerator;->generateNormalCellPassData()V

    .line 80
    iget-object v7, p0, Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation;->mCellAnimationPassDataNormalList:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 83
    .end local v0    # "capd":Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation$CellAnimationPassDataGenerator;
    .end local v5    # "pc":Lcom/smartisanos/launcher/view/Cell;
    :cond_0
    const/4 v1, 0x0

    .line 84
    .local v1, "count":I
    const/4 v3, 0x0

    :goto_1
    iget-object v7, p0, Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation;->mCellAnimationPassDataNormalList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_1

    .line 85
    iget-object v7, p0, Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation;->mCellAnimationPassDataNormalList:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation$CellAnimationPassDataGenerator;

    .line 87
    .restart local v0    # "capd":Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation$CellAnimationPassDataGenerator;
    iget-object v7, v0, Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation$CellAnimationPassDataGenerator;->CellPassDatas:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation$CellPassData;

    .line 88
    .local v2, "cpd":Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation$CellPassData;
    const/high16 v7, 0x40000000    # 2.0f

    iget v8, v2, Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation$CellPassData;->totalFrame:F

    div-float/2addr v7, v8

    iget v8, v2, Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation$CellPassData;->totalDuration:F

    mul-float v6, v7, v8

    .line 89
    .local v6, "timeIncrease":F
    iget v7, v2, Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation$CellPassData;->passStart:F

    int-to-float v8, v1

    mul-float/2addr v8, v6

    add-float v4, v7, v8

    .line 90
    .local v4, "passStart":F
    iput v4, v2, Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation$CellPassData;->passStart:F

    .line 91
    iget-object v7, v2, Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation$CellPassData;->passTo:Lcom/smartisanos/smengine/math/Vector3f;

    iget v8, v7, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget-object v9, p0, Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v9, v9, Lcom/smartisanos/launcher/data/LayoutProperty;->multi_select_distance:F

    int-to-float v10, v1

    mul-float/2addr v9, v10

    sub-float/2addr v8, v9

    iput v8, v7, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 92
    iget-object v7, v2, Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation$CellPassData;->passTo:Lcom/smartisanos/smengine/math/Vector3f;

    iget v8, v7, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget-object v9, p0, Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v9, v9, Lcom/smartisanos/launcher/data/LayoutProperty;->multi_select_distance:F

    int-to-float v10, v1

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    iput v8, v7, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 93
    invoke-static {v0}, Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation$CellAnimationPassDataGenerator;->access$000(Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation$CellAnimationPassDataGenerator;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v7

    invoke-direct {p0, v2, v7}, Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation;->generateCellAnimation(Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation$CellPassData;Lcom/smartisanos/launcher/view/Cell;)V

    .line 95
    add-int/lit8 v1, v1, 0x1

    .line 84
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 98
    .end local v0    # "capd":Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation$CellAnimationPassDataGenerator;
    .end local v2    # "cpd":Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation$CellPassData;
    .end local v4    # "passStart":F
    .end local v6    # "timeIncrease":F
    :cond_1
    return-void
.end method


.method public getTimeLine()Lcom/smartisanos/smengine/AnimationTimeLine;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation;->mTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    return-object v0
.end method

.method public playAnimation()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation;->generateMultiCPDList()V

    .line 70
    return-void
.end method
