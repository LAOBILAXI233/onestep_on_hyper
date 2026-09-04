.class public Lcom/smartisanos/launcher/view/MultiPageAnimation;
.super Ljava/lang/Object;
.source "MultiPageAnimation.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/launcher/view/MultiPageAnimation$CellAnimationPassDataGenerator;
    }
.end annotation


.field private static final TOTAL_DURATION:F = 0.4f

.field private static final TOTAL_FRAME:F = 40.0f

.field private static final afterword:I = 0x1

.field private static final preview:I


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
            "Lcom/smartisanos/launcher/view/MultiPageAnimation$CellAnimationPassDataGenerator;",
            ">;"
        }
    .end annotation
.end field

.field private mCellAnimationPassDataEndToEndList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/launcher/view/MultiPageAnimation$CellAnimationPassDataGenerator;",
            ">;"
        }
    .end annotation
.end field

.field private mCellAnimationPassDataFullList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/launcher/view/MultiPageAnimation$CellAnimationPassDataGenerator;",
            ">;"
        }
    .end annotation
.end field

.field private mCellAnimationPassDataNormalList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/launcher/view/MultiPageAnimation$CellAnimationPassDataGenerator;",
            ">;"
        }
    .end annotation
.end field

.field private mCollidedColIndex:I

.field private mCollidedPage:Lcom/smartisanos/launcher/view/Page;

.field private mCollidedRowIndex:I

.field private mColliderColIndex:I

.field private mColliderPage:Lcom/smartisanos/launcher/view/Page;

.field private mColliderRowIndex:I

.field private mFocusPage:Lcom/smartisanos/launcher/view/Page;

.field public mIsPlaying:Z

.field private mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

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

.field private mPageView:Lcom/smartisanos/launcher/view/PageView;

.field private mPreCellParentIndex:I

.field private mToward:I

.field private timeLine:Lcom/smartisanos/smengine/AnimationTimeLine;


.method public constructor <init>(Lcom/smartisanos/launcher/view/PageView;Lcom/smartisanos/launcher/view/Page;Lcom/smartisanos/launcher/view/Page;IIIILjava/util/ArrayList;Ljava/util/ArrayList;ILcom/smartisanos/smengine/Animation$AnimationListener;)V
    .locals 2
    .param p1, "pageView"    # Lcom/smartisanos/launcher/view/PageView;
    .param p2, "colliderPage"    # Lcom/smartisanos/launcher/view/Page;
    .param p3, "collidedPage"    # Lcom/smartisanos/launcher/view/Page;
    .param p4, "colliderRowIndex"    # I
    .param p5, "colliderColIndex"    # I
    .param p6, "collidedCellRowIndex"    # I
    .param p7, "collidedCellColIndex"    # I
    .param p10, "towar"    # I
    .param p11, "listener"    # Lcom/smartisanos/smengine/Animation$AnimationListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smartisanos/launcher/view/PageView;",
            "Lcom/smartisanos/launcher/view/Page;",
            "Lcom/smartisanos/launcher/view/Page;",
            "IIII",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/launcher/view/Cell;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/launcher/view/Page;",
            ">;I",
            "Lcom/smartisanos/smengine/Animation$AnimationListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 76
    .local p8, "pclist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    .local p9, "pagelist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/MultiPageAnimation;->mPageCellList:Ljava/util/ArrayList;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/MultiPageAnimation;->mAnimationCellList:Ljava/util/ArrayList;

    .line 40
    new-instance v0, Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-direct {v0}, Lcom/smartisanos/smengine/AnimationTimeLine;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/MultiPageAnimation;->timeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/MultiPageAnimation;->mCellAnimationPassDataNormalList:Ljava/util/ArrayList;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/MultiPageAnimation;->mCellAnimationPassDataEndToEndList:Ljava/util/ArrayList;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/MultiPageAnimation;->mCellAnimationPassDataChangeParentList:Ljava/util/ArrayList;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/MultiPageAnimation;->mCellAnimationPassDataFullList:Ljava/util/ArrayList;

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/MultiPageAnimation;->mIsPlaying:Z

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/MultiPageAnimation;->mIsPlaying:Z

    .line 79
    iput-object p1, p0, Lcom/smartisanos/launcher/view/MultiPageAnimation;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    .line 81
    iput-object p2, p0, Lcom/smartisanos/launcher/view/MultiPageAnimation;->mColliderPage:Lcom/smartisanos/launcher/view/Page;

    .line 82
    iput-object p3, p0, Lcom/smartisanos/launcher/view/MultiPageAnimation;->mCollidedPage:Lcom/smartisanos/launcher/view/Page;

    .line 90
    iput-object p8, p0, Lcom/smartisanos/launcher/view/MultiPageAnimation;->mAnimationCellList:Ljava/util/ArrayList;

    .line 91
    iput-object p9, p0, Lcom/smartisanos/launcher/view/MultiPageAnimation;->animationPageList:Ljava/util/ArrayList;

    .line 93
    sget v0, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/MultiPageAnimation;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    .line 94
    iput p10, p0, Lcom/smartisanos/launcher/view/MultiPageAnimation;->mToward:I

    .line 99
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MultiPageAnimation;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/MultiPageAnimation;->mColliderPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/PageView;->getPageIndex(Lcom/smartisanos/launcher/view/Page;)I

    move-result v0

    iput v0, p0, Lcom/smartisanos/launcher/view/MultiPageAnimation;->mPreCellParentIndex:I

    .line 101
    if-eqz p11, :cond_0

    .line 102
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MultiPageAnimation;->timeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v0, p11}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 104
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/MultiPageAnimation;->playAnimation()V

    .line 106
    return-void
.end method

.method static synthetic access$100(Lcom/smartisanos/launcher/view/MultiPageAnimation;)I
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/MultiPageAnimation;

    .prologue
    .line 34
    iget v0, p0, Lcom/smartisanos/launcher/view/MultiPageAnimation;->mToward:I

    return v0
.end method

.method static synthetic access$200(Lcom/smartisanos/launcher/view/MultiPageAnimation;)I
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/MultiPageAnimation;

    .prologue
    .line 34
    iget v0, p0, Lcom/smartisanos/launcher/view/MultiPageAnimation;->mPreCellParentIndex:I

    return v0
.end method

.method static synthetic access$202(Lcom/smartisanos/launcher/view/MultiPageAnimation;I)I
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/MultiPageAnimation;
    .param p1, "x1"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/smartisanos/launcher/view/MultiPageAnimation;->mPreCellParentIndex:I

    return p1
.end method

.method static synthetic access$300(Lcom/smartisanos/launcher/view/MultiPageAnimation;)Lcom/smartisanos/launcher/view/PageView;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/MultiPageAnimation;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MultiPageAnimation;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    return-object v0
.end method

.method private generateCellAnimation(Lcom/smartisanos/launcher/view/CellPassData;Lcom/smartisanos/launcher/view/Cell;Lcom/smartisanos/smengine/Animation$AnimationListener;)V
    .locals 13
    .param p1, "cpd"    # Lcom/smartisanos/launcher/view/CellPassData;
    .param p2, "pc"    # Lcom/smartisanos/launcher/view/Cell;
    .param p3, "l"    # Lcom/smartisanos/smengine/Animation$AnimationListener;

    .prologue
    .line 274
    iget-object v3, p1, Lcom/smartisanos/launcher/view/CellPassData;->passFrom:Lcom/smartisanos/smengine/math/Vector3f;

    if-eqz v3, :cond_0

    iget-object v3, p1, Lcom/smartisanos/launcher/view/CellPassData;->passTo:Lcom/smartisanos/smengine/math/Vector3f;

    if-eqz v3, :cond_0

    .line 275
    new-instance v0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    invoke-direct {v0, p2}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 276
    .local v0, "passTranslate":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    iget v3, p1, Lcom/smartisanos/launcher/view/CellPassData;->mEaseType:I

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 277
    iget v3, p1, Lcom/smartisanos/launcher/view/CellPassData;->passDuration:F

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 278
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

    .line 280
    iget-object v3, p0, Lcom/smartisanos/launcher/view/MultiPageAnimation;->timeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    iget v4, p1, Lcom/smartisanos/launcher/view/CellPassData;->passStart:F

    invoke-virtual {v3, v4, v0}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 281
    iget-object v3, p1, Lcom/smartisanos/launcher/view/CellPassData;->passListener:Lcom/smartisanos/smengine/Animation$AnimationListener;

    if-eqz v3, :cond_0

    .line 282
    iget-object v3, p1, Lcom/smartisanos/launcher/view/CellPassData;->passListener:Lcom/smartisanos/smengine/Animation$AnimationListener;

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 286
    .end local v0    # "passTranslate":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    :cond_0
    iget-object v3, p1, Lcom/smartisanos/launcher/view/CellPassData;->passScaleFrom:Lcom/smartisanos/smengine/math/Vector3f;

    if-eqz v3, :cond_1

    iget-object v3, p1, Lcom/smartisanos/launcher/view/CellPassData;->passScaleTo:Lcom/smartisanos/smengine/math/Vector3f;

    if-eqz v3, :cond_1

    .line 287
    new-instance v1, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    invoke-direct {v1, p2}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 288
    .local v1, "passScale":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    iget v3, p1, Lcom/smartisanos/launcher/view/CellPassData;->mEaseType:I

    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 289
    iget v3, p1, Lcom/smartisanos/launcher/view/CellPassData;->passDuration:F

    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 290
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

    .line 291
    iget-object v3, p0, Lcom/smartisanos/launcher/view/MultiPageAnimation;->timeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    iget v4, p1, Lcom/smartisanos/launcher/view/CellPassData;->passStart:F

    invoke-virtual {v3, v4, v1}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 294
    .end local v1    # "passScale":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    :cond_1
    iget-object v3, p1, Lcom/smartisanos/launcher/view/CellPassData;->passColorFrom:Lcom/smartisanos/smengine/math/Vector4f;

    if-eqz v3, :cond_2

    iget-object v3, p1, Lcom/smartisanos/launcher/view/CellPassData;->passColorTo:Lcom/smartisanos/smengine/math/Vector4f;

    if-eqz v3, :cond_2

    .line 295
    new-instance v2, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    invoke-direct {v2, p2}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 296
    .local v2, "passColor":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    iget v3, p1, Lcom/smartisanos/launcher/view/CellPassData;->mEaseType:I

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 297
    iget v3, p1, Lcom/smartisanos/launcher/view/CellPassData;->passDuration:F

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 298
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

    .line 300
    iget-object v3, p0, Lcom/smartisanos/launcher/view/MultiPageAnimation;->timeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    iget v4, p1, Lcom/smartisanos/launcher/view/CellPassData;->passStart:F

    invoke-virtual {v3, v4, v2}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 303
    .end local v2    # "passColor":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    :cond_2
    iget-boolean v3, p1, Lcom/smartisanos/launcher/view/CellPassData;->mJustForTimer:Z

    if-eqz v3, :cond_5

    .line 304
    new-instance v12, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    invoke-direct {v12, p2}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 305
    .local v12, "passTimer":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    iget v3, p1, Lcom/smartisanos/launcher/view/CellPassData;->mEaseType:I

    invoke-virtual {v12, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 306
    iget v3, p1, Lcom/smartisanos/launcher/view/CellPassData;->passDuration:F

    invoke-virtual {v12, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 307
    const/16 v3, 0x14

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v12, v3, v4, v5}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFF)V

    .line 309
    iget-object v3, p1, Lcom/smartisanos/launcher/view/CellPassData;->passListener:Lcom/smartisanos/smengine/Animation$AnimationListener;

    if-eqz v3, :cond_4

    .line 310
    sget-boolean v3, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v3, :cond_3

    const-string v3, "############ passlistener != null"

    invoke-static {v3}, Lcom/smartisanos/launcher/LOG;->i(Ljava/lang/String;)V

    .line 311
    :cond_3
    iget-object v3, p1, Lcom/smartisanos/launcher/view/CellPassData;->passListener:Lcom/smartisanos/smengine/Animation$AnimationListener;

    invoke-virtual {v12, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 314
    :cond_4
    iget-object v3, p0, Lcom/smartisanos/launcher/view/MultiPageAnimation;->timeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    iget v4, p1, Lcom/smartisanos/launcher/view/CellPassData;->passStart:F

    invoke-virtual {v3, v4, v12}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 319
    .end local v12    # "passTimer":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    :cond_5
    return-void
.end method

.method private generateMultiCPDList()V
    .locals 20

    .prologue
    .line 119
    const/4 v12, -0x1

    .line 120
    .local v12, "pageCellCount":I
    sget v18, Lcom/smartisanos/launcher/data/Constants;->sPageStyle:I

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    .line 121
    const/16 v12, 0x9

    .line 125
    :goto_0
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiPageAnimation;->mAnimationCellList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v8, v0, :cond_6

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiPageAnimation;->mAnimationCellList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/smartisanos/launcher/view/Cell;

    .line 129
    .local v15, "pc":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v15}, Lcom/smartisanos/launcher/view/Cell;->getRowIndex()I

    move-result v7

    .line 130
    .local v7, "currRowIndex":I
    invoke-virtual {v15}, Lcom/smartisanos/launcher/view/Cell;->getColIndex()I

    move-result v6

    .line 131
    .local v6, "currColIndex":I
    invoke-static {v7, v6}, Lcom/smartisanos/launcher/view/Page;->getCellIndex(II)I

    move-result v9

    .line 133
    .local v9, "index":I
    new-instance v3, Lcom/smartisanos/launcher/view/MultiPageAnimation$CellAnimationPassDataGenerator;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v15}, Lcom/smartisanos/launcher/view/MultiPageAnimation$CellAnimationPassDataGenerator;-><init>(Lcom/smartisanos/launcher/view/MultiPageAnimation;Lcom/smartisanos/launcher/view/Cell;)V

    .line 134
    .local v3, "capd":Lcom/smartisanos/launcher/view/MultiPageAnimation$CellAnimationPassDataGenerator;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/launcher/view/MultiPageAnimation;->mToward:I

    move/from16 v18, v0

    if-nez v18, :cond_3

    .line 135
    if-nez v9, :cond_1

    .line 137
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/MultiPageAnimation$CellAnimationPassDataGenerator;->generateChangeParentCellPassData()V

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiPageAnimation;->mCellAnimationPassDataChangeParentList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiPageAnimation;->mCellAnimationPassDataFullList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 123
    .end local v3    # "capd":Lcom/smartisanos/launcher/view/MultiPageAnimation$CellAnimationPassDataGenerator;
    .end local v6    # "currColIndex":I
    .end local v7    # "currRowIndex":I
    .end local v8    # "i":I
    .end local v9    # "index":I
    .end local v15    # "pc":Lcom/smartisanos/launcher/view/Cell;
    :cond_0
    const/16 v12, 0x10

    goto :goto_0

    .line 140
    .restart local v3    # "capd":Lcom/smartisanos/launcher/view/MultiPageAnimation$CellAnimationPassDataGenerator;
    .restart local v6    # "currColIndex":I
    .restart local v7    # "currRowIndex":I
    .restart local v8    # "i":I
    .restart local v9    # "index":I
    .restart local v15    # "pc":Lcom/smartisanos/launcher/view/Cell;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiPageAnimation;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_row_num:I

    move/from16 v18, v0

    rem-int v18, v9, v18

    if-nez v18, :cond_2

    .line 141
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/MultiPageAnimation$CellAnimationPassDataGenerator;->generateEndToEndCellPassData()V

    .line 143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiPageAnimation;->mCellAnimationPassDataEndToEndList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 146
    :cond_2
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/MultiPageAnimation$CellAnimationPassDataGenerator;->generateNormalCellPassData()V

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiPageAnimation;->mCellAnimationPassDataNormalList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 151
    :cond_3
    add-int/lit8 v18, v12, -0x1

    move/from16 v0, v18

    if-ne v9, v0, :cond_4

    .line 153
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/MultiPageAnimation$CellAnimationPassDataGenerator;->generateChangeParentCellPassData()V

    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiPageAnimation;->mCellAnimationPassDataChangeParentList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 156
    :cond_4
    add-int/lit8 v18, v9, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiPageAnimation;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_row_num:I

    move/from16 v19, v0

    rem-int v18, v18, v19

    if-nez v18, :cond_5

    .line 157
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/MultiPageAnimation$CellAnimationPassDataGenerator;->generateEndToEndCellPassData()V

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiPageAnimation;->mCellAnimationPassDataEndToEndList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 162
    :cond_5
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/MultiPageAnimation$CellAnimationPassDataGenerator;->generateNormalCellPassData()V

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiPageAnimation;->mCellAnimationPassDataNormalList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 172
    .end local v3    # "capd":Lcom/smartisanos/launcher/view/MultiPageAnimation$CellAnimationPassDataGenerator;
    .end local v6    # "currColIndex":I
    .end local v7    # "currRowIndex":I
    .end local v9    # "index":I
    .end local v15    # "pc":Lcom/smartisanos/launcher/view/Cell;
    :cond_6
    const v17, 0x3ca3d70a    # 0.02f

    .line 173
    .local v17, "timeIncrease":F
    const/16 v16, 0x0

    .line 174
    .local v16, "preParent":Lcom/smartisanos/launcher/view/Page;
    const/4 v4, 0x0

    .line 176
    .local v4, "count":I
    const/4 v8, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiPageAnimation;->mCellAnimationPassDataNormalList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v8, v0, :cond_8

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiPageAnimation;->mCellAnimationPassDataNormalList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/MultiPageAnimation$CellAnimationPassDataGenerator;

    .line 178
    .restart local v3    # "capd":Lcom/smartisanos/launcher/view/MultiPageAnimation$CellAnimationPassDataGenerator;
    invoke-static {v3}, Lcom/smartisanos/launcher/view/MultiPageAnimation$CellAnimationPassDataGenerator;->access$000(Lcom/smartisanos/launcher/view/MultiPageAnimation$CellAnimationPassDataGenerator;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/smartisanos/launcher/view/Cell;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v11

    check-cast v11, Lcom/smartisanos/launcher/view/Page;

    .line 180
    .local v11, "myParent":Lcom/smartisanos/launcher/view/Page;
    move-object/from16 v0, v16

    if-eq v11, v0, :cond_7

    .line 181
    const/4 v4, 0x0

    .line 185
    :cond_7
    iget-object v0, v3, Lcom/smartisanos/launcher/view/MultiPageAnimation$CellAnimationPassDataGenerator;->CellPassDatas:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/launcher/view/CellPassData;

    .line 187
    .local v5, "cpd":Lcom/smartisanos/launcher/view/CellPassData;
    iget v0, v5, Lcom/smartisanos/launcher/view/CellPassData;->passStart:F

    move/from16 v18, v0

    int-to-float v0, v4

    move/from16 v19, v0

    mul-float v19, v19, v17

    add-float v14, v18, v19

    .line 188
    .local v14, "passStart":F
    iput v14, v5, Lcom/smartisanos/launcher/view/CellPassData;->passStart:F

    .line 190
    invoke-static {v3}, Lcom/smartisanos/launcher/view/MultiPageAnimation$CellAnimationPassDataGenerator;->access$000(Lcom/smartisanos/launcher/view/MultiPageAnimation$CellAnimationPassDataGenerator;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v5, v1, v2}, Lcom/smartisanos/launcher/view/MultiPageAnimation;->generateCellAnimation(Lcom/smartisanos/launcher/view/CellPassData;Lcom/smartisanos/launcher/view/Cell;Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 192
    add-int/lit8 v4, v4, 0x1

    .line 193
    move-object/from16 v16, v11

    .line 176
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 197
    .end local v3    # "capd":Lcom/smartisanos/launcher/view/MultiPageAnimation$CellAnimationPassDataGenerator;
    .end local v5    # "cpd":Lcom/smartisanos/launcher/view/CellPassData;
    .end local v11    # "myParent":Lcom/smartisanos/launcher/view/Page;
    .end local v14    # "passStart":F
    :cond_8
    const/16 v16, 0x0

    .line 198
    const/4 v4, 0x0

    .line 199
    const/4 v8, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiPageAnimation;->mCellAnimationPassDataEndToEndList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v8, v0, :cond_b

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiPageAnimation;->mCellAnimationPassDataEndToEndList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/MultiPageAnimation$CellAnimationPassDataGenerator;

    .line 203
    .restart local v3    # "capd":Lcom/smartisanos/launcher/view/MultiPageAnimation$CellAnimationPassDataGenerator;
    invoke-static {v3}, Lcom/smartisanos/launcher/view/MultiPageAnimation$CellAnimationPassDataGenerator;->access$000(Lcom/smartisanos/launcher/view/MultiPageAnimation$CellAnimationPassDataGenerator;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/smartisanos/launcher/view/Cell;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v11

    check-cast v11, Lcom/smartisanos/launcher/view/Page;

    .line 205
    .restart local v11    # "myParent":Lcom/smartisanos/launcher/view/Page;
    move-object/from16 v0, v16

    if-eq v11, v0, :cond_9

    .line 206
    const/4 v4, 0x0

    .line 209
    :cond_9
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_5
    iget-object v0, v3, Lcom/smartisanos/launcher/view/MultiPageAnimation$CellAnimationPassDataGenerator;->CellPassDatas:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v10, v0, :cond_a

    .line 211
    iget-object v0, v3, Lcom/smartisanos/launcher/view/MultiPageAnimation$CellAnimationPassDataGenerator;->CellPassDatas:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/launcher/view/CellPassData;

    .line 212
    .restart local v5    # "cpd":Lcom/smartisanos/launcher/view/CellPassData;
    iget v0, v5, Lcom/smartisanos/launcher/view/CellPassData;->passStart:F

    move/from16 v18, v0

    int-to-float v0, v4

    move/from16 v19, v0

    mul-float v19, v19, v17

    add-float v14, v18, v19

    .line 213
    .restart local v14    # "passStart":F
    iput v14, v5, Lcom/smartisanos/launcher/view/CellPassData;->passStart:F

    .line 215
    invoke-static {v3}, Lcom/smartisanos/launcher/view/MultiPageAnimation$CellAnimationPassDataGenerator;->access$000(Lcom/smartisanos/launcher/view/MultiPageAnimation$CellAnimationPassDataGenerator;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v5, v1, v2}, Lcom/smartisanos/launcher/view/MultiPageAnimation;->generateCellAnimation(Lcom/smartisanos/launcher/view/CellPassData;Lcom/smartisanos/launcher/view/Cell;Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 209
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 218
    .end local v5    # "cpd":Lcom/smartisanos/launcher/view/CellPassData;
    .end local v14    # "passStart":F
    :cond_a
    add-int/lit8 v4, v4, 0x1

    .line 219
    move-object/from16 v16, v11

    .line 199
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 222
    .end local v3    # "capd":Lcom/smartisanos/launcher/view/MultiPageAnimation$CellAnimationPassDataGenerator;
    .end local v10    # "j":I
    .end local v11    # "myParent":Lcom/smartisanos/launcher/view/Page;
    :cond_b
    const/16 v16, 0x0

    .line 223
    const/4 v4, 0x0

    .line 225
    const/4 v8, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiPageAnimation;->mCellAnimationPassDataFullList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v8, v0, :cond_e

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiPageAnimation;->mCellAnimationPassDataFullList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/MultiPageAnimation$CellAnimationPassDataGenerator;

    .line 228
    .restart local v3    # "capd":Lcom/smartisanos/launcher/view/MultiPageAnimation$CellAnimationPassDataGenerator;
    invoke-static {v3}, Lcom/smartisanos/launcher/view/MultiPageAnimation$CellAnimationPassDataGenerator;->access$000(Lcom/smartisanos/launcher/view/MultiPageAnimation$CellAnimationPassDataGenerator;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/smartisanos/launcher/view/Cell;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v11

    check-cast v11, Lcom/smartisanos/launcher/view/Page;

    .line 230
    .restart local v11    # "myParent":Lcom/smartisanos/launcher/view/Page;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiPageAnimation;->mCellAnimationPassDataChangeParentList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_c

    .line 231
    iget-object v0, v3, Lcom/smartisanos/launcher/view/MultiPageAnimation$CellAnimationPassDataGenerator;->CellPassDatas:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/launcher/view/CellPassData;

    .line 232
    .restart local v5    # "cpd":Lcom/smartisanos/launcher/view/CellPassData;
    iget v0, v5, Lcom/smartisanos/launcher/view/CellPassData;->passDuration:F

    move/from16 v18, v0

    int-to-float v0, v4

    move/from16 v19, v0

    mul-float v19, v19, v17

    add-float v13, v18, v19

    .line 233
    .local v13, "passDuration":F
    iput v13, v5, Lcom/smartisanos/launcher/view/CellPassData;->passDuration:F

    .line 236
    .end local v5    # "cpd":Lcom/smartisanos/launcher/view/CellPassData;
    .end local v13    # "passDuration":F
    :cond_c
    move-object/from16 v0, v16

    if-eq v11, v0, :cond_d

    .line 237
    const/4 v4, 0x0

    .line 241
    :goto_7
    move-object/from16 v16, v11

    .line 225
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 239
    :cond_d
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 245
    .end local v3    # "capd":Lcom/smartisanos/launcher/view/MultiPageAnimation$CellAnimationPassDataGenerator;
    .end local v11    # "myParent":Lcom/smartisanos/launcher/view/Page;
    :cond_e
    const/16 v16, 0x0

    .line 246
    const/4 v4, 0x0

    .line 247
    const/4 v8, 0x0

    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiPageAnimation;->mCellAnimationPassDataChangeParentList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v8, v0, :cond_10

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiPageAnimation;->mCellAnimationPassDataChangeParentList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/MultiPageAnimation$CellAnimationPassDataGenerator;

    .line 251
    .restart local v3    # "capd":Lcom/smartisanos/launcher/view/MultiPageAnimation$CellAnimationPassDataGenerator;
    invoke-static {v3}, Lcom/smartisanos/launcher/view/MultiPageAnimation$CellAnimationPassDataGenerator;->access$000(Lcom/smartisanos/launcher/view/MultiPageAnimation$CellAnimationPassDataGenerator;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/smartisanos/launcher/view/Cell;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v11

    check-cast v11, Lcom/smartisanos/launcher/view/Page;

    .line 253
    .restart local v11    # "myParent":Lcom/smartisanos/launcher/view/Page;
    move-object/from16 v0, v16

    if-eq v11, v0, :cond_f

    .line 254
    const/4 v4, 0x0

    .line 257
    :cond_f
    iget-object v0, v3, Lcom/smartisanos/launcher/view/MultiPageAnimation$CellAnimationPassDataGenerator;->CellPassDatas:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/launcher/view/CellPassData;

    .line 259
    .restart local v5    # "cpd":Lcom/smartisanos/launcher/view/CellPassData;
    iget v0, v5, Lcom/smartisanos/launcher/view/CellPassData;->passStart:F

    move/from16 v18, v0

    int-to-float v0, v4

    move/from16 v19, v0

    mul-float v19, v19, v17

    add-float v14, v18, v19

    .line 260
    .restart local v14    # "passStart":F
    iput v14, v5, Lcom/smartisanos/launcher/view/CellPassData;->passStart:F

    .line 262
    invoke-static {v3}, Lcom/smartisanos/launcher/view/MultiPageAnimation$CellAnimationPassDataGenerator;->access$000(Lcom/smartisanos/launcher/view/MultiPageAnimation$CellAnimationPassDataGenerator;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v5, v1, v2}, Lcom/smartisanos/launcher/view/MultiPageAnimation;->generateCellAnimation(Lcom/smartisanos/launcher/view/CellPassData;Lcom/smartisanos/launcher/view/Cell;Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 264
    add-int/lit8 v4, v4, 0x1

    .line 265
    move-object/from16 v16, v11

    .line 247
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    .line 270
    .end local v3    # "capd":Lcom/smartisanos/launcher/view/MultiPageAnimation$CellAnimationPassDataGenerator;
    .end local v5    # "cpd":Lcom/smartisanos/launcher/view/CellPassData;
    .end local v11    # "myParent":Lcom/smartisanos/launcher/view/Page;
    .end local v14    # "passStart":F
    :cond_10
    return-void
.end method


.method public getTimeLine()Lcom/smartisanos/smengine/AnimationTimeLine;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MultiPageAnimation;->timeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    return-object v0
.end method

.method public playAnimation()V
    .locals 1

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/MultiPageAnimation;->generateMultiCPDList()V

    .line 115
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MultiPageAnimation;->timeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/AnimationTimeLine;->start()V

    .line 116
    return-void
.end method
