.class public Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation;
.super Ljava/lang/Object;
.source "MultiSelectFadeinFadeoutAnimation.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation$CellAnimationPassDataGenerator;,
        Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation$FadeoutListener;,
        Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation$FadeInListener;,
        Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation$FadeinFadeOutPageWithRenderTargetAnimationListener;,
        Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation$FadeinFadeOutAnimationListener;
    }
.end annotation


.field private static final PASS1_DURATION:F = 0.3f

.field private static final PASS2_DURATION:F = 0.4f

.field private static final TOTAL_DURATION:F = 0.7f

.field private static final TOTAL_FRAME:F = 7.0f

.field private static final log:Lcom/smartisanos/launcher/LOG;


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
            "Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation$CellAnimationPassDataGenerator;",
            ">;"
        }
    .end annotation
.end field

.field private mCellAnimationPassDataEndToEndList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation$CellAnimationPassDataGenerator;",
            ">;"
        }
    .end annotation
.end field

.field private mCellAnimationPassDataNormalList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation$CellAnimationPassDataGenerator;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentIndex:I

.field public mIsPlaying:Z

.field private mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

.field private mPageView:Lcom/smartisanos/launcher/view/PageView;

.field private mPreCellColIndex:I

.field private mPreCellParentIndex:I

.field private mPreCellRowIndex:I

.field private mPreIndex:I

.field private timeLine:Lcom/smartisanos/smengine/AnimationTimeLine;


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation;

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation;->log:Lcom/smartisanos/launcher/LOG;

    return-void
.end method

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
            "Lcom/smartisanos/launcher/view/Page;",
            ">;",
            "Lcom/smartisanos/smengine/Animation$AnimationListener;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "pclist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    .local p3, "pageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-direct {v0}, Lcom/smartisanos/smengine/AnimationTimeLine;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation;->timeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation;->mCellAnimationPassDataNormalList:Ljava/util/ArrayList;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation;->mCellAnimationPassDataEndToEndList:Ljava/util/ArrayList;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation;->mCellAnimationPassDataChangeParentList:Ljava/util/ArrayList;

    .line 44
    iput v1, p0, Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation;->mPreIndex:I

    .line 45
    iput v1, p0, Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation;->mPreCellRowIndex:I

    .line 46
    iput v1, p0, Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation;->mPreCellColIndex:I

    .line 47
    iput-boolean v2, p0, Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation;->mIsPlaying:Z

    .line 58
    iput v2, p0, Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation;->mCurrentIndex:I

    .line 151
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation;->mIsPlaying:Z

    .line 152
    iput-object p1, p0, Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    .line 153
    iput-object p2, p0, Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation;->mAnimationCellList:Ljava/util/ArrayList;

    .line 154
    sget v0, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    .line 156
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    iget-boolean v0, v0, Lcom/smartisanos/launcher/view/MainView;->mIsBatchMode:Z

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation;->timeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    new-instance v1, Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation$FadeinFadeOutPageWithRenderTargetAnimationListener;

    invoke-direct {v1, p0}, Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation$FadeinFadeOutPageWithRenderTargetAnimationListener;-><init>(Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation;)V

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 161
    :goto_0
    iput-object p3, p0, Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation;->animationPageList:Ljava/util/ArrayList;

    .line 162
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation;->playAnimation()V

    .line 163
    return-void

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation;->timeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    new-instance v1, Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation$FadeinFadeOutAnimationListener;

    invoke-direct {v1, p0}, Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation$FadeinFadeOutAnimationListener;-><init>(Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation;)V

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation;->animationPageList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation;)Lcom/smartisanos/launcher/view/PageView;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation;)I
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation;

    .prologue
    .line 34
    iget v0, p0, Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation;->mCurrentIndex:I

    return v0
.end method

.method static synthetic access$208(Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation;)I
    .locals 2
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation;

    .prologue
    .line 34
    iget v0, p0, Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation;->mCurrentIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation;->mCurrentIndex:I

    return v0
.end method

.method static synthetic access$300()Lcom/smartisanos/launcher/LOG;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation;->log:Lcom/smartisanos/launcher/LOG;

    return-object v0
.end method

.method private generateCellAnimation(Lcom/smartisanos/launcher/view/CellPassData;Lcom/smartisanos/launcher/view/Cell;)V
    .locals 11
    .param p1, "cpd"    # Lcom/smartisanos/launcher/view/CellPassData;
    .param p2, "pc"    # Lcom/smartisanos/launcher/view/Cell;

    .prologue
    .line 202
    new-instance v0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    invoke-direct {v0, p2}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 203
    .local v0, "passscale":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    iget v2, p1, Lcom/smartisanos/launcher/view/CellPassData;->mEaseType:I

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 204
    iget v2, p1, Lcom/smartisanos/launcher/view/CellPassData;->passDuration:F

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 205
    const/4 v1, 0x1

    iget-object v2, p1, Lcom/smartisanos/launcher/view/CellPassData;->passScaleFrom:Lcom/smartisanos/smengine/math/Vector3f;

    iget v2, v2, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget-object v3, p1, Lcom/smartisanos/launcher/view/CellPassData;->passScaleFrom:Lcom/smartisanos/smengine/math/Vector3f;

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget-object v4, p1, Lcom/smartisanos/launcher/view/CellPassData;->passScaleFrom:Lcom/smartisanos/smengine/math/Vector3f;

    iget v4, v4, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    iget-object v5, p1, Lcom/smartisanos/launcher/view/CellPassData;->passScaleTo:Lcom/smartisanos/smengine/math/Vector3f;

    iget v5, v5, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget-object v6, p1, Lcom/smartisanos/launcher/view/CellPassData;->passScaleTo:Lcom/smartisanos/smengine/math/Vector3f;

    iget v6, v6, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget-object v7, p1, Lcom/smartisanos/launcher/view/CellPassData;->passScaleTo:Lcom/smartisanos/smengine/math/Vector3f;

    iget v7, v7, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-virtual/range {v0 .. v7}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFF)V

    .line 207
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setPreserveNodeScale(Z)V

    .line 209
    iget-object v2, p0, Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation;->timeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    iget v3, p1, Lcom/smartisanos/launcher/view/CellPassData;->passStart:F

    invoke-virtual {v2, v3, v0}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 211
    new-instance v1, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    invoke-direct {v1, p2}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 212
    .local v1, "passAlpha":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    iget v2, p1, Lcom/smartisanos/launcher/view/CellPassData;->mEaseType:I

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 213
    iget v2, p1, Lcom/smartisanos/launcher/view/CellPassData;->passDuration:F

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 215
    const/4 v2, 0x3

    iget-object v3, p1, Lcom/smartisanos/launcher/view/CellPassData;->passPremultAlphaColorFrom:Lcom/smartisanos/smengine/math/Vector4f;

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    iget-object v4, p1, Lcom/smartisanos/launcher/view/CellPassData;->passPremultAlphaColorFrom:Lcom/smartisanos/smengine/math/Vector4f;

    iget v4, v4, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    iget-object v5, p1, Lcom/smartisanos/launcher/view/CellPassData;->passPremultAlphaColorFrom:Lcom/smartisanos/smengine/math/Vector4f;

    iget v5, v5, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    iget-object v6, p1, Lcom/smartisanos/launcher/view/CellPassData;->passPremultAlphaColorFrom:Lcom/smartisanos/smengine/math/Vector4f;

    iget v6, v6, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    iget-object v7, p1, Lcom/smartisanos/launcher/view/CellPassData;->passPremultAlphaColorTo:Lcom/smartisanos/smengine/math/Vector4f;

    iget v7, v7, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    iget-object v8, p1, Lcom/smartisanos/launcher/view/CellPassData;->passPremultAlphaColorTo:Lcom/smartisanos/smengine/math/Vector4f;

    iget v8, v8, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    iget-object v9, p1, Lcom/smartisanos/launcher/view/CellPassData;->passPremultAlphaColorTo:Lcom/smartisanos/smengine/math/Vector4f;

    iget v9, v9, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    iget-object v10, p1, Lcom/smartisanos/launcher/view/CellPassData;->passPremultAlphaColorTo:Lcom/smartisanos/smengine/math/Vector4f;

    iget v10, v10, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    invoke-virtual/range {v1 .. v10}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFFFF)V

    .line 225
    iget-object v2, p1, Lcom/smartisanos/launcher/view/CellPassData;->passListener:Lcom/smartisanos/smengine/Animation$AnimationListener;

    if-eqz v2, :cond_0

    .line 226
    iget-object v2, p1, Lcom/smartisanos/launcher/view/CellPassData;->passListener:Lcom/smartisanos/smengine/Animation$AnimationListener;

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 228
    :cond_0
    iget-object v2, p0, Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation;->timeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    iget v3, p1, Lcom/smartisanos/launcher/view/CellPassData;->passStart:F

    invoke-virtual {v2, v3, v1}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 229
    return-void
.end method

.method private generateMultiCPDList()V
    .locals 10

    .prologue
    .line 175
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v8, p0, Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation;->mAnimationCellList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v3, v8, :cond_0

    .line 177
    iget-object v8, p0, Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation;->mAnimationCellList:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/smartisanos/launcher/view/Cell;

    .line 178
    .local v6, "pc":Lcom/smartisanos/launcher/view/Cell;
    new-instance v0, Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation$CellAnimationPassDataGenerator;

    invoke-direct {v0, p0, v6}, Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation$CellAnimationPassDataGenerator;-><init>(Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation;Lcom/smartisanos/launcher/view/Cell;)V

    .line 179
    .local v0, "capd":Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation$CellAnimationPassDataGenerator;
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation$CellAnimationPassDataGenerator;->generateNormalCellPassData()V

    .line 181
    iget-object v8, p0, Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation;->mCellAnimationPassDataNormalList:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 184
    .end local v0    # "capd":Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation$CellAnimationPassDataGenerator;
    .end local v6    # "pc":Lcom/smartisanos/launcher/view/Cell;
    :cond_0
    const/4 v1, 0x0

    .line 185
    .local v1, "count":I
    const v7, 0x3cf5c28f    # 0.03f

    .line 186
    .local v7, "timeIncrease":F
    const/4 v3, 0x0

    :goto_1
    iget-object v8, p0, Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation;->mCellAnimationPassDataNormalList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v3, v8, :cond_2

    .line 187
    iget-object v8, p0, Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation;->mCellAnimationPassDataNormalList:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation$CellAnimationPassDataGenerator;

    .line 189
    .restart local v0    # "capd":Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation$CellAnimationPassDataGenerator;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    iget-object v8, v0, Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation$CellAnimationPassDataGenerator;->CellPassDatas:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v4, v8, :cond_1

    .line 190
    iget-object v8, v0, Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation$CellAnimationPassDataGenerator;->CellPassDatas:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/CellPassData;

    .line 191
    .local v2, "cpd":Lcom/smartisanos/launcher/view/CellPassData;
    iget v8, v2, Lcom/smartisanos/launcher/view/CellPassData;->passStart:F

    int-to-float v9, v1

    mul-float/2addr v9, v7

    add-float v5, v8, v9

    .line 192
    .local v5, "passStart":F
    iput v5, v2, Lcom/smartisanos/launcher/view/CellPassData;->passStart:F

    .line 193
    invoke-static {v0}, Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation$CellAnimationPassDataGenerator;->access$400(Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation$CellAnimationPassDataGenerator;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v8

    invoke-direct {p0, v2, v8}, Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation;->generateCellAnimation(Lcom/smartisanos/launcher/view/CellPassData;Lcom/smartisanos/launcher/view/Cell;)V

    .line 189
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 196
    .end local v2    # "cpd":Lcom/smartisanos/launcher/view/CellPassData;
    .end local v5    # "passStart":F
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 186
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 199
    .end local v0    # "capd":Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation$CellAnimationPassDataGenerator;
    .end local v4    # "j":I
    :cond_2
    return-void
.end method


.method public getTimeLine()Lcom/smartisanos/smengine/AnimationTimeLine;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation;->timeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    return-object v0
.end method

.method public playAnimation()V
    .locals 0

    .prologue
    .line 169
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation;->generateMultiCPDList()V

    .line 171
    return-void
.end method
