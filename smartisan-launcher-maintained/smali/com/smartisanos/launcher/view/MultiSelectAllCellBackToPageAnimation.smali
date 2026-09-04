.class public Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation;
.super Ljava/lang/Object;
.source "MultiSelectAllCellBackToPageAnimation.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation$CellPassData;,
        Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation$CellAnimationPassDataGenerator;
    }
.end annotation


.field private static final TOTAL_DURATION:F = 0.4f

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

.field public mAnimationCellList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
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
            "Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation$CellAnimationPassDataGenerator;",
            ">;"
        }
    .end annotation
.end field

.field private mCellAnimationPassDataEndToEndList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation$CellAnimationPassDataGenerator;",
            ">;"
        }
    .end annotation
.end field

.field private mCellAnimationPassDataNormalList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation$CellAnimationPassDataGenerator;",
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


.method public constructor <init>(Lcom/smartisanos/launcher/view/PageView;Lcom/smartisanos/smengine/AnimationTimeLine;Ljava/util/List;Lcom/smartisanos/smengine/Animation$AnimationListener;)V
    .locals 3
    .param p1, "pageView"    # Lcom/smartisanos/launcher/view/PageView;
    .param p2, "timeline"    # Lcom/smartisanos/smengine/AnimationTimeLine;
    .param p4, "listener"    # Lcom/smartisanos/smengine/Animation$AnimationListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smartisanos/launcher/view/PageView;",
            "Lcom/smartisanos/smengine/AnimationTimeLine;",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/launcher/view/Cell;",
            ">;",
            "Lcom/smartisanos/smengine/Animation$AnimationListener;",
            ")V"
        }
    .end annotation

    .prologue
    .local p3, "pclist":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/view/Cell;>;"
    const/4 v2, -0x1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation;->mCellAnimationPassDataNormalList:Ljava/util/ArrayList;

    .line 22
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation;->mCellAnimationPassDataEndToEndList:Ljava/util/ArrayList;

    .line 23
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation;->mCellAnimationPassDataChangeParentList:Ljava/util/ArrayList;

    .line 24
    iput v2, p0, Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation;->mPreIndex:I

    .line 25
    iput v2, p0, Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation;->mPreCellRowIndex:I

    .line 26
    iput v2, p0, Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation;->mPreCellColIndex:I

    .line 27
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation;->mIsPlaying:Z

    .line 39
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation;->mIsPlaying:Z

    .line 40
    iput-object p1, p0, Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    .line 41
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    .line 42
    .local v0, "mv":Lcom/smartisanos/launcher/view/MainView;
    sget v1, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static {v1}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v1

    iput-object v1, p0, Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    .line 43
    iput-object p2, p0, Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation;->mTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 44
    iput-object p3, p0, Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation;->mAnimationCellList:Ljava/util/List;

    .line 47
    if-eqz p4, :cond_0

    .line 48
    iget-object v1, p0, Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation;->mTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v1, p4}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 50
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation;->playAnimation()V

    .line 51
    return-void
.end method

.method private generateCellAnimation(Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation$CellPassData;Lcom/smartisanos/launcher/view/Cell;)V
    .locals 8
    .param p1, "cpd"    # Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation$CellPassData;
    .param p2, "pc"    # Lcom/smartisanos/launcher/view/Cell;

    .prologue
    .line 86
    new-instance v0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    invoke-direct {v0, p2}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 87
    .local v0, "passTranslate":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    iget v1, p1, Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation$CellPassData;->mEaseType:I

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 88
    iget v1, p1, Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation$CellPassData;->passDuration:F

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 89
    const/4 v1, 0x0

    iget-object v2, p1, Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation$CellPassData;->passFrom:Lcom/smartisanos/smengine/math/Vector3f;

    iget v2, v2, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget-object v3, p1, Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation$CellPassData;->passFrom:Lcom/smartisanos/smengine/math/Vector3f;

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget-object v4, p1, Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation$CellPassData;->passFrom:Lcom/smartisanos/smengine/math/Vector3f;

    iget v4, v4, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    iget-object v5, p1, Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation$CellPassData;->passTo:Lcom/smartisanos/smengine/math/Vector3f;

    iget v5, v5, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget-object v6, p1, Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation$CellPassData;->passTo:Lcom/smartisanos/smengine/math/Vector3f;

    iget v6, v6, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget-object v7, p1, Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation$CellPassData;->passTo:Lcom/smartisanos/smengine/math/Vector3f;

    iget v7, v7, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-virtual/range {v0 .. v7}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFF)V

    .line 91
    iget-object v1, p0, Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation;->mTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    iget v2, p1, Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation$CellPassData;->passStart:F

    invoke-virtual {v1, v2, v0}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 92
    return-void
.end method

.method private generateMultiCPDList()V
    .locals 9

    .prologue
    .line 62
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v7, p0, Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation;->mAnimationCellList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_0

    .line 64
    iget-object v7, p0, Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation;->mAnimationCellList:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/smartisanos/launcher/view/Cell;

    .line 66
    .local v6, "pc":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/Cell;->getRowIndex()I

    move-result v3

    .line 67
    .local v3, "currRowIndex":I
    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/Cell;->getColIndex()I

    move-result v2

    .line 68
    .local v2, "currColIndex":I
    iget-object v7, p0, Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v7, v7, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_row_num:I

    mul-int/2addr v7, v3

    add-int v5, v7, v2

    .line 70
    .local v5, "index":I
    new-instance v0, Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation$CellAnimationPassDataGenerator;

    invoke-direct {v0, p0, v6}, Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation$CellAnimationPassDataGenerator;-><init>(Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation;Lcom/smartisanos/launcher/view/Cell;)V

    .line 71
    .local v0, "capd":Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation$CellAnimationPassDataGenerator;
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation$CellAnimationPassDataGenerator;->generateNormalCellPassData()V

    .line 73
    iget-object v7, p0, Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation;->mCellAnimationPassDataNormalList:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 76
    .end local v0    # "capd":Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation$CellAnimationPassDataGenerator;
    .end local v2    # "currColIndex":I
    .end local v3    # "currRowIndex":I
    .end local v5    # "index":I
    .end local v6    # "pc":Lcom/smartisanos/launcher/view/Cell;
    :cond_0
    const/4 v4, 0x0

    :goto_1
    iget-object v7, p0, Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation;->mCellAnimationPassDataNormalList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v4, v7, :cond_1

    .line 77
    iget-object v7, p0, Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation;->mCellAnimationPassDataNormalList:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation$CellAnimationPassDataGenerator;

    .line 79
    .restart local v0    # "capd":Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation$CellAnimationPassDataGenerator;
    iget-object v7, v0, Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation$CellAnimationPassDataGenerator;->CellPassDatas:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation$CellPassData;

    .line 80
    .local v1, "cpd":Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation$CellPassData;
    invoke-static {v0}, Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation$CellAnimationPassDataGenerator;->access$000(Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation$CellAnimationPassDataGenerator;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v7

    invoke-direct {p0, v1, v7}, Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation;->generateCellAnimation(Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation$CellPassData;Lcom/smartisanos/launcher/view/Cell;)V

    .line 76
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 83
    .end local v0    # "capd":Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation$CellAnimationPassDataGenerator;
    .end local v1    # "cpd":Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation$CellPassData;
    :cond_1
    return-void
.end method


.method public getTimeLine()Lcom/smartisanos/smengine/AnimationTimeLine;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation;->mTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    return-object v0
.end method

.method public playAnimation()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation;->generateMultiCPDList()V

    .line 58
    return-void
.end method
