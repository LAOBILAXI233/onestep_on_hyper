.class public Lcom/smartisanos/launcher/view/SwitchPageAnimation;
.super Ljava/lang/Object;
.source "SwitchPageAnimation.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/launcher/view/SwitchPageAnimation$CellAnimationPassDataGenerator;
    }
.end annotation


.field private static final TOTAL_DURATION:F = 0.4f

.field private static final TOTAL_FRAME:F = 30.0f

.field private static final afterword:I = 0x1

.field private static final preview:I


.field private animationPageIndexList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

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
            "Lcom/smartisanos/launcher/view/SwitchPageAnimation$CellAnimationPassDataGenerator;",
            ">;"
        }
    .end annotation
.end field

.field private mCellAnimationPassDataEndToEndList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/launcher/view/SwitchPageAnimation$CellAnimationPassDataGenerator;",
            ">;"
        }
    .end annotation
.end field

.field private mCellAnimationPassDataNormalList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/launcher/view/SwitchPageAnimation$CellAnimationPassDataGenerator;",
            ">;"
        }
    .end annotation
.end field

.field private mCollided:Lcom/smartisanos/launcher/view/Cell;

.field private mCollidedColIndex:I

.field private mCollidedPage:Lcom/smartisanos/launcher/view/Page;

.field private mCollidedRowIndex:I

.field private mCollider:Lcom/smartisanos/launcher/view/Cell;

.field private mColliderColIndex:I

.field private mColliderPage:Lcom/smartisanos/launcher/view/Page;

.field private mColliderRowIndex:I

.field private mFocusPage:Lcom/smartisanos/launcher/view/Page;

.field public mIsPlaying:Z

.field private mPageCellList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/launcher/view/Cell;",
            ">;"
        }
    .end annotation
.end field

.field private mPageLocationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/smengine/math/Vector3f;",
            ">;"
        }
    .end annotation
.end field

.field private mPageView:Lcom/smartisanos/launcher/view/PageView;

.field private mPreCellColIndex:I

.field private mPreCellParentIndex:I

.field private mPreCellRowIndex:I

.field private mPreIndex:I

.field private mPreviewLocation:Lcom/smartisanos/smengine/math/Vector3f;

.field private mToward:I

.field private timeLine:Lcom/smartisanos/smengine/AnimationTimeLine;


.method public constructor <init>(Lcom/smartisanos/launcher/view/PageView;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/smartisanos/smengine/math/Vector3f;ILcom/smartisanos/smengine/Animation$AnimationListener;)V
    .locals 5
    .param p1, "pageView"    # Lcom/smartisanos/launcher/view/PageView;
    .param p4, "pressedPageLocation"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p5, "toward"    # I
    .param p6, "listener"    # Lcom/smartisanos/smengine/Animation$AnimationListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smartisanos/launcher/view/PageView;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/launcher/view/Page;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/smartisanos/smengine/math/Vector3f;",
            "I",
            "Lcom/smartisanos/smengine/Animation$AnimationListener;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "pagelist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    .local p3, "pageIndexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x1

    const/4 v4, -0x1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/SwitchPageAnimation;->mPageCellList:Ljava/util/ArrayList;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/SwitchPageAnimation;->mAnimationCellList:Ljava/util/ArrayList;

    .line 36
    new-instance v0, Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-direct {v0}, Lcom/smartisanos/smengine/AnimationTimeLine;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/SwitchPageAnimation;->timeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/SwitchPageAnimation;->mCellAnimationPassDataNormalList:Ljava/util/ArrayList;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/SwitchPageAnimation;->mCellAnimationPassDataEndToEndList:Ljava/util/ArrayList;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/SwitchPageAnimation;->mCellAnimationPassDataChangeParentList:Ljava/util/ArrayList;

    .line 40
    iput v4, p0, Lcom/smartisanos/launcher/view/SwitchPageAnimation;->mPreIndex:I

    .line 41
    iput v4, p0, Lcom/smartisanos/launcher/view/SwitchPageAnimation;->mPreCellRowIndex:I

    .line 42
    iput v4, p0, Lcom/smartisanos/launcher/view/SwitchPageAnimation;->mPreCellColIndex:I

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/SwitchPageAnimation;->mIsPlaying:Z

    .line 56
    new-instance v0, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v0}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/SwitchPageAnimation;->mPreviewLocation:Lcom/smartisanos/smengine/math/Vector3f;

    .line 75
    iput-boolean v1, p0, Lcom/smartisanos/launcher/view/SwitchPageAnimation;->mIsPlaying:Z

    .line 76
    iput-object p1, p0, Lcom/smartisanos/launcher/view/SwitchPageAnimation;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    .line 77
    iget-object v0, p0, Lcom/smartisanos/launcher/view/SwitchPageAnimation;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/PageView;->getAnimationController()Lcom/smartisanos/launcher/view/AnimationController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/AnimationController;->setHasAnimationPlaying(Z)V

    .line 79
    iput-object p2, p0, Lcom/smartisanos/launcher/view/SwitchPageAnimation;->animationPageList:Ljava/util/ArrayList;

    .line 80
    iget-object v0, p0, Lcom/smartisanos/launcher/view/SwitchPageAnimation;->mPreviewLocation:Lcom/smartisanos/smengine/math/Vector3f;

    iget v1, p4, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v2, p4, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v3, p4, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/smartisanos/smengine/math/Vector3f;->set(FFF)Lcom/smartisanos/smengine/math/Vector3f;

    .line 82
    iput-object p3, p0, Lcom/smartisanos/launcher/view/SwitchPageAnimation;->animationPageIndexList:Ljava/util/ArrayList;

    .line 84
    iput v4, p0, Lcom/smartisanos/launcher/view/SwitchPageAnimation;->mPreIndex:I

    .line 85
    iput p5, p0, Lcom/smartisanos/launcher/view/SwitchPageAnimation;->mToward:I

    .line 87
    if-eqz p6, :cond_0

    .line 88
    iget-object v0, p0, Lcom/smartisanos/launcher/view/SwitchPageAnimation;->timeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v0, p6}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 90
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/SwitchPageAnimation;->playAnimation()V

    .line 92
    return-void
.end method

.method static synthetic access$200(Lcom/smartisanos/launcher/view/SwitchPageAnimation;)Lcom/smartisanos/smengine/math/Vector3f;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/SwitchPageAnimation;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/smartisanos/launcher/view/SwitchPageAnimation;->mPreviewLocation:Lcom/smartisanos/smengine/math/Vector3f;

    return-object v0
.end method

.method private generateCPDList()V
    .locals 14

    .prologue
    .line 103
    const/4 v7, -0x1

    .line 104
    .local v7, "pageColCount":I
    sget v12, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    const/4 v13, 0x2

    if-eq v12, v13, :cond_0

    sget v12, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    const/4 v13, 0x5

    if-ne v12, v13, :cond_2

    .line 105
    :cond_0
    const/4 v7, 0x2

    .line 110
    :cond_1
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v12, p0, Lcom/smartisanos/launcher/view/SwitchPageAnimation;->animationPageList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v3, v12, :cond_6

    .line 113
    iget-object v12, p0, Lcom/smartisanos/launcher/view/SwitchPageAnimation;->animationPageList:Ljava/util/ArrayList;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/smartisanos/launcher/view/Page;

    .line 114
    .local v6, "page":Lcom/smartisanos/launcher/view/Page;
    iget-object v12, p0, Lcom/smartisanos/launcher/view/SwitchPageAnimation;->animationPageIndexList:Ljava/util/ArrayList;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 116
    .local v4, "index":I
    new-instance v0, Lcom/smartisanos/launcher/view/SwitchPageAnimation$CellAnimationPassDataGenerator;

    invoke-direct {v0, p0, v6, v4}, Lcom/smartisanos/launcher/view/SwitchPageAnimation$CellAnimationPassDataGenerator;-><init>(Lcom/smartisanos/launcher/view/SwitchPageAnimation;Lcom/smartisanos/launcher/view/Page;I)V

    .line 117
    .local v0, "capd":Lcom/smartisanos/launcher/view/SwitchPageAnimation$CellAnimationPassDataGenerator;
    iget v12, p0, Lcom/smartisanos/launcher/view/SwitchPageAnimation;->mToward:I

    if-nez v12, :cond_4

    .line 118
    rem-int v12, v4, v7

    if-nez v12, :cond_3

    .line 119
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/SwitchPageAnimation$CellAnimationPassDataGenerator;->generateEndToEndCellPassData()V

    .line 121
    iget-object v12, p0, Lcom/smartisanos/launcher/view/SwitchPageAnimation;->mCellAnimationPassDataEndToEndList:Ljava/util/ArrayList;

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 106
    .end local v0    # "capd":Lcom/smartisanos/launcher/view/SwitchPageAnimation$CellAnimationPassDataGenerator;
    .end local v3    # "i":I
    .end local v4    # "index":I
    .end local v6    # "page":Lcom/smartisanos/launcher/view/Page;
    :cond_2
    sget v12, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    const/4 v13, 0x3

    if-ne v12, v13, :cond_1

    .line 107
    const/4 v7, 0x3

    goto :goto_0

    .line 124
    .restart local v0    # "capd":Lcom/smartisanos/launcher/view/SwitchPageAnimation$CellAnimationPassDataGenerator;
    .restart local v3    # "i":I
    .restart local v4    # "index":I
    .restart local v6    # "page":Lcom/smartisanos/launcher/view/Page;
    :cond_3
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/SwitchPageAnimation$CellAnimationPassDataGenerator;->generateNormalCellPassData()V

    .line 126
    iget-object v12, p0, Lcom/smartisanos/launcher/view/SwitchPageAnimation;->mCellAnimationPassDataNormalList:Ljava/util/ArrayList;

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 129
    :cond_4
    add-int/lit8 v12, v4, 0x1

    rem-int/2addr v12, v7

    if-nez v12, :cond_5

    .line 130
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/SwitchPageAnimation$CellAnimationPassDataGenerator;->generateEndToEndCellPassData()V

    .line 132
    iget-object v12, p0, Lcom/smartisanos/launcher/view/SwitchPageAnimation;->mCellAnimationPassDataEndToEndList:Ljava/util/ArrayList;

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 135
    :cond_5
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/SwitchPageAnimation$CellAnimationPassDataGenerator;->generateNormalCellPassData()V

    .line 137
    iget-object v12, p0, Lcom/smartisanos/launcher/view/SwitchPageAnimation;->mCellAnimationPassDataNormalList:Ljava/util/ArrayList;

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 143
    .end local v0    # "capd":Lcom/smartisanos/launcher/view/SwitchPageAnimation$CellAnimationPassDataGenerator;
    .end local v4    # "index":I
    .end local v6    # "page":Lcom/smartisanos/launcher/view/Page;
    :cond_6
    const v11, 0x3d23d70a    # 0.04f

    .line 144
    .local v11, "timeIncrease":F
    const/4 v1, 0x0

    .line 145
    .local v1, "count":I
    const/4 v9, -0x1

    .line 147
    .local v9, "preScreen":I
    const/4 v3, 0x0

    :goto_3
    iget-object v12, p0, Lcom/smartisanos/launcher/view/SwitchPageAnimation;->mCellAnimationPassDataEndToEndList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v3, v12, :cond_9

    .line 149
    iget-object v12, p0, Lcom/smartisanos/launcher/view/SwitchPageAnimation;->mCellAnimationPassDataEndToEndList:Ljava/util/ArrayList;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/SwitchPageAnimation$CellAnimationPassDataGenerator;

    .line 151
    .restart local v0    # "capd":Lcom/smartisanos/launcher/view/SwitchPageAnimation$CellAnimationPassDataGenerator;
    iget-object v12, p0, Lcom/smartisanos/launcher/view/SwitchPageAnimation;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/SwitchPageAnimation$CellAnimationPassDataGenerator;->access$000(Lcom/smartisanos/launcher/view/SwitchPageAnimation$CellAnimationPassDataGenerator;)I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/smartisanos/launcher/view/PageView;->getScreenIndex(I)I

    move-result v10

    .line 153
    .local v10, "screenIndex":I
    if-eq v9, v10, :cond_7

    .line 154
    const/4 v1, 0x0

    .line 157
    :cond_7
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_4
    iget-object v12, v0, Lcom/smartisanos/launcher/view/SwitchPageAnimation$CellAnimationPassDataGenerator;->CellPassDatas:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v5, v12, :cond_8

    .line 158
    iget-object v12, v0, Lcom/smartisanos/launcher/view/SwitchPageAnimation$CellAnimationPassDataGenerator;->CellPassDatas:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/CellPassData;

    .line 159
    .local v2, "cpd":Lcom/smartisanos/launcher/view/CellPassData;
    iget v12, v2, Lcom/smartisanos/launcher/view/CellPassData;->passStart:F

    int-to-float v13, v1

    mul-float/2addr v13, v11

    add-float v8, v12, v13

    .line 160
    .local v8, "passStart":F
    iput v8, v2, Lcom/smartisanos/launcher/view/CellPassData;->passStart:F

    .line 161
    invoke-static {v0}, Lcom/smartisanos/launcher/view/SwitchPageAnimation$CellAnimationPassDataGenerator;->access$100(Lcom/smartisanos/launcher/view/SwitchPageAnimation$CellAnimationPassDataGenerator;)Lcom/smartisanos/launcher/view/Page;

    move-result-object v12

    invoke-direct {p0, v2, v12}, Lcom/smartisanos/launcher/view/SwitchPageAnimation;->generateCellAnimation(Lcom/smartisanos/launcher/view/CellPassData;Lcom/smartisanos/launcher/view/Page;)V

    .line 157
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 164
    .end local v2    # "cpd":Lcom/smartisanos/launcher/view/CellPassData;
    .end local v8    # "passStart":F
    :cond_8
    move v9, v10

    .line 165
    add-int/lit8 v1, v1, 0x1

    .line 147
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 171
    .end local v0    # "capd":Lcom/smartisanos/launcher/view/SwitchPageAnimation$CellAnimationPassDataGenerator;
    .end local v5    # "j":I
    .end local v10    # "screenIndex":I
    :cond_9
    const/4 v1, 0x0

    .line 172
    const/4 v9, -0x1

    .line 173
    const v11, 0x3ca3d70a    # 0.02f

    .line 174
    const/4 v3, 0x0

    :goto_5
    iget-object v12, p0, Lcom/smartisanos/launcher/view/SwitchPageAnimation;->mCellAnimationPassDataNormalList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v3, v12, :cond_b

    .line 176
    iget-object v12, p0, Lcom/smartisanos/launcher/view/SwitchPageAnimation;->mCellAnimationPassDataNormalList:Ljava/util/ArrayList;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/SwitchPageAnimation$CellAnimationPassDataGenerator;

    .line 179
    .restart local v0    # "capd":Lcom/smartisanos/launcher/view/SwitchPageAnimation$CellAnimationPassDataGenerator;
    iget-object v12, p0, Lcom/smartisanos/launcher/view/SwitchPageAnimation;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/SwitchPageAnimation$CellAnimationPassDataGenerator;->access$000(Lcom/smartisanos/launcher/view/SwitchPageAnimation$CellAnimationPassDataGenerator;)I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/smartisanos/launcher/view/PageView;->getScreenIndex(I)I

    move-result v10

    .line 181
    .restart local v10    # "screenIndex":I
    if-eq v9, v10, :cond_a

    .line 182
    const/4 v1, 0x0

    .line 185
    :cond_a
    iget-object v12, v0, Lcom/smartisanos/launcher/view/SwitchPageAnimation$CellAnimationPassDataGenerator;->CellPassDatas:Ljava/util/ArrayList;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/CellPassData;

    .line 186
    .restart local v2    # "cpd":Lcom/smartisanos/launcher/view/CellPassData;
    iget v12, v2, Lcom/smartisanos/launcher/view/CellPassData;->passStart:F

    int-to-float v13, v1

    mul-float/2addr v13, v11

    add-float v8, v12, v13

    .line 187
    .restart local v8    # "passStart":F
    iput v8, v2, Lcom/smartisanos/launcher/view/CellPassData;->passStart:F

    .line 188
    invoke-static {v0}, Lcom/smartisanos/launcher/view/SwitchPageAnimation$CellAnimationPassDataGenerator;->access$100(Lcom/smartisanos/launcher/view/SwitchPageAnimation$CellAnimationPassDataGenerator;)Lcom/smartisanos/launcher/view/Page;

    move-result-object v12

    invoke-direct {p0, v2, v12}, Lcom/smartisanos/launcher/view/SwitchPageAnimation;->generateCellAnimation(Lcom/smartisanos/launcher/view/CellPassData;Lcom/smartisanos/launcher/view/Page;)V

    .line 190
    move v9, v10

    .line 191
    add-int/lit8 v1, v1, 0x1

    .line 174
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 193
    .end local v0    # "capd":Lcom/smartisanos/launcher/view/SwitchPageAnimation$CellAnimationPassDataGenerator;
    .end local v2    # "cpd":Lcom/smartisanos/launcher/view/CellPassData;
    .end local v8    # "passStart":F
    .end local v10    # "screenIndex":I
    :cond_b
    return-void
.end method

.method private generateCellAnimation(Lcom/smartisanos/launcher/view/CellPassData;Lcom/smartisanos/launcher/view/Page;)V
    .locals 9
    .param p1, "cpd"    # Lcom/smartisanos/launcher/view/CellPassData;
    .param p2, "pg"    # Lcom/smartisanos/launcher/view/Page;

    .prologue
    .line 198
    iget-object v2, p1, Lcom/smartisanos/launcher/view/CellPassData;->passFrom:Lcom/smartisanos/smengine/math/Vector3f;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/smartisanos/launcher/view/CellPassData;->passTo:Lcom/smartisanos/smengine/math/Vector3f;

    if-eqz v2, :cond_0

    .line 199
    new-instance v0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    invoke-direct {v0, p2}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 200
    .local v0, "passTranslate":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    iget v2, p1, Lcom/smartisanos/launcher/view/CellPassData;->mEaseType:I

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 201
    iget v2, p1, Lcom/smartisanos/launcher/view/CellPassData;->passDuration:F

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 202
    const/4 v1, 0x0

    iget-object v2, p1, Lcom/smartisanos/launcher/view/CellPassData;->passFrom:Lcom/smartisanos/smengine/math/Vector3f;

    iget v2, v2, Lcom/smartisanos/smengine/math/Vector3f;->x:F

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

    .line 204
    iget-object v2, p0, Lcom/smartisanos/launcher/view/SwitchPageAnimation;->timeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    iget v3, p1, Lcom/smartisanos/launcher/view/CellPassData;->passStart:F

    invoke-virtual {v2, v3, v0}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 207
    .end local v0    # "passTranslate":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    :cond_0
    iget-object v2, p1, Lcom/smartisanos/launcher/view/CellPassData;->passScaleFrom:Lcom/smartisanos/smengine/math/Vector3f;

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/smartisanos/launcher/view/CellPassData;->passScaleTo:Lcom/smartisanos/smengine/math/Vector3f;

    if-eqz v2, :cond_1

    .line 208
    new-instance v1, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    invoke-direct {v1, p2}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 209
    .local v1, "passScale":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    iget v2, p1, Lcom/smartisanos/launcher/view/CellPassData;->mEaseType:I

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 210
    iget v2, p1, Lcom/smartisanos/launcher/view/CellPassData;->passDuration:F

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 211
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

    .line 212
    iget-object v2, p0, Lcom/smartisanos/launcher/view/SwitchPageAnimation;->timeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    iget v3, p1, Lcom/smartisanos/launcher/view/CellPassData;->passStart:F

    invoke-virtual {v2, v3, v1}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 214
    .end local v1    # "passScale":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    :cond_1
    return-void
.end method


.method public getTimeLine()Lcom/smartisanos/smengine/AnimationTimeLine;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/smartisanos/launcher/view/SwitchPageAnimation;->timeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    return-object v0
.end method

.method public playAnimation()V
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/SwitchPageAnimation;->generateCPDList()V

    .line 99
    iget-object v0, p0, Lcom/smartisanos/launcher/view/SwitchPageAnimation;->timeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/AnimationTimeLine;->start()V

    .line 100
    return-void
.end method
