.class public Lcom/smartisanos/launcher/view/DownloadView;
.super Lcom/smartisanos/launcher/view/ActiveIconView;
.source "DownloadView.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/launcher/view/DownloadView$DownloadState;
    }
.end annotation


.field private static final log:Lcom/smartisanos/launcher/LOG;

.field private static sUserData:B


.field private PERCENT_INTERVAL:F

.field private mBaseLayer:I

.field private mDownloadPercent:F

.field private mDownloadState:Lcom/smartisanos/launcher/view/DownloadView$DownloadState;

.field private mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

.field private mPackageName:Ljava/lang/String;

.field private mPercentIconIndex:I

.field private mPrevDownloadState:Lcom/smartisanos/launcher/view/DownloadView$DownloadState;

.field private mProgressAnimation:Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

.field private mProgressLayer:I

.field private mProgressRect:Lcom/smartisanos/smengine/RectNode;

.field private mStaticLayer:I

.field private mStaticRect:Lcom/smartisanos/smengine/RectNode;

.field private mUserData:B


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/16 v0, 0x64

    sput-byte v0, Lcom/smartisanos/launcher/view/DownloadView;->sUserData:B

    .line 26
    const-class v0, Lcom/smartisanos/launcher/view/DownloadView;

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/view/DownloadView;->log:Lcom/smartisanos/launcher/LOG;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/smartisanos/launcher/view/Cell;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "boundingCell"    # Lcom/smartisanos/launcher/view/Cell;

    .prologue
    .line 58
    invoke-direct {p0, p1, p3}, Lcom/smartisanos/launcher/view/ActiveIconView;-><init>(Ljava/lang/String;Lcom/smartisanos/launcher/view/Cell;)V

    .line 38
    sget-object v0, Lcom/smartisanos/launcher/view/DownloadView$DownloadState;->NONE:Lcom/smartisanos/launcher/view/DownloadView$DownloadState;

    iput-object v0, p0, Lcom/smartisanos/launcher/view/DownloadView;->mPrevDownloadState:Lcom/smartisanos/launcher/view/DownloadView$DownloadState;

    .line 39
    sget-object v0, Lcom/smartisanos/launcher/view/DownloadView$DownloadState;->NONE:Lcom/smartisanos/launcher/view/DownloadView$DownloadState;

    iput-object v0, p0, Lcom/smartisanos/launcher/view/DownloadView;->mDownloadState:Lcom/smartisanos/launcher/view/DownloadView$DownloadState;

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/smartisanos/launcher/view/DownloadView;->mDownloadPercent:F

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/smartisanos/launcher/view/DownloadView;->mPercentIconIndex:I

    .line 47
    const v0, 0x3cf837b5    # 0.0303f

    iput v0, p0, Lcom/smartisanos/launcher/view/DownloadView;->PERCENT_INTERVAL:F

    .line 55
    const/16 v0, 0x64

    iput-byte v0, p0, Lcom/smartisanos/launcher/view/DownloadView;->mUserData:B

    .line 59
    iput-object p2, p0, Lcom/smartisanos/launcher/view/DownloadView;->mPackageName:Ljava/lang/String;

    .line 60
    sget v0, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/DownloadView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    .line 61
    return-void
.end method

.method private createBoundingVolume()V
    .locals 5

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 71
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DownloadView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->download_back_size:F

    neg-float v0, v0

    div-float/2addr v0, v4

    iget-object v1, p0, Lcom/smartisanos/launcher/view/DownloadView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v1, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->download_back_size:F

    neg-float v1, v1

    iget-object v2, p0, Lcom/smartisanos/launcher/view/DownloadView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v2, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->download_back_size:F

    div-float/2addr v2, v4

    iget-object v3, p0, Lcom/smartisanos/launcher/view/DownloadView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v3, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->download_back_size:F

    div-float/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/smartisanos/launcher/view/DownloadView;->setLocalBoundingVolume(FFFF)V

    .line 73
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/DownloadView;->updateGeometricState()V

    .line 74
    return-void
.end method

.method private createProgressRect()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 77
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DownloadView;->mProgressRect:Lcom/smartisanos/smengine/RectNode;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/smartisanos/launcher/view/DownloadView;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_downpro"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/DownloadView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v1, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->download_back_size:F

    iget-object v2, p0, Lcom/smartisanos/launcher/view/DownloadView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v2, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->download_back_size:F

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/smartisanos/smengine/RectNode;->createSimpleTextureRect(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/RectNode;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/DownloadView;->mProgressRect:Lcom/smartisanos/smengine/RectNode;

    .line 80
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DownloadView;->mProgressRect:Lcom/smartisanos/smengine/RectNode;

    const-string v1, "download/app_download_cycle.png"

    invoke-static {v1}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RectNode;->setImageName(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DownloadView;->mProgressRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/RectNode;->setIsEnableBlend(Z)V

    .line 82
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DownloadView;->mProgressRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RenderState;->setBlendMode(I)V

    .line 83
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DownloadView;->mProgressRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/RenderState;->setIsEnableDepthTest(Z)V

    .line 84
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DownloadView;->mProgressRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/RenderState;->setIsPolygonOffset(Z)V

    .line 85
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DownloadView;->mProgressRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v0

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, -0x40000000    # -2.0f

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/smengine/RenderState;->setPolygonOffsetFactorUnits(FF)V

    .line 86
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DownloadView;->mProgressRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    .line 87
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DownloadView;->mProgressRect:Lcom/smartisanos/smengine/RectNode;

    iget v1, p0, Lcom/smartisanos/launcher/view/DownloadView;->mProgressLayer:I

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 88
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DownloadView;->mProgressRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/DownloadView;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DownloadView;->mProgressRect:Lcom/smartisanos/smengine/RectNode;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    .line 91
    return-void
.end method

.method private createStaticRect()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 95
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DownloadView;->mStaticRect:Lcom/smartisanos/smengine/RectNode;

    if-nez v1, :cond_0

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/smartisanos/launcher/view/DownloadView;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_downstatic"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/smartisanos/launcher/view/DownloadView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v2, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->download_back_size:F

    iget-object v3, p0, Lcom/smartisanos/launcher/view/DownloadView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v3, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->download_back_size:F

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/smartisanos/smengine/RectNode;->createSimpleTextureRect(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/RectNode;

    move-result-object v1

    iput-object v1, p0, Lcom/smartisanos/launcher/view/DownloadView;->mStaticRect:Lcom/smartisanos/smengine/RectNode;

    .line 98
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/DownloadView;->updatePageCell()V

    .line 99
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/DownloadView;->getComposeTextureName()Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "imageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DownloadView;->mStaticRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/RectNode;->setImageName(Ljava/lang/String;)V

    .line 101
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DownloadView;->mStaticRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v1, v5}, Lcom/smartisanos/smengine/RectNode;->setIsEnableBlend(Z)V

    .line 102
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DownloadView;->mStaticRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/RenderState;->setBlendMode(I)V

    .line 103
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DownloadView;->mStaticRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/smartisanos/smengine/RenderState;->setIsEnableDepthTest(Z)V

    .line 104
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DownloadView;->mStaticRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/smartisanos/smengine/RenderState;->setIsPolygonOffset(Z)V

    .line 105
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DownloadView;->mStaticRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v1

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, -0x40000000    # -2.0f

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/smengine/RenderState;->setPolygonOffsetFactorUnits(FF)V

    .line 106
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DownloadView;->mStaticRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v1, v5}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    .line 107
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DownloadView;->mStaticRect:Lcom/smartisanos/smengine/RectNode;

    iget v2, p0, Lcom/smartisanos/launcher/view/DownloadView;->mStaticLayer:I

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 109
    .end local v0    # "imageName":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DownloadView;->mStaticRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v1, v5}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    .line 110
    return-void
.end method

.method private runProgressAnimation(Z)V
    .locals 6
    .param p1, "run"    # Z

    .prologue
    const/16 v5, 0x64

    .line 113
    if-eqz p1, :cond_3

    .line 114
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DownloadView;->mProgressAnimation:Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    if-nez v0, :cond_2

    .line 115
    new-instance v0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/DownloadView;->mProgressRect:Lcom/smartisanos/smengine/RectNode;

    invoke-direct {v0, v1}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/DownloadView;->mProgressAnimation:Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    .line 116
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DownloadView;->mProgressAnimation:Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    const/4 v1, 0x2

    new-instance v2, Ljava/lang/Float;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/lang/Float;-><init>(F)V

    .line 117
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    new-instance v3, Ljava/lang/Float;

    const v4, -0x3f380e1a

    invoke-direct {v3, v4}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 116
    invoke-virtual {v0, v1, v2, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFF)V

    .line 118
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DownloadView;->mProgressAnimation:Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 119
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DownloadView;->mProgressAnimation:Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    const v1, 0xf4240

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setRepeatCount(I)V

    .line 120
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DownloadView;->mProgressAnimation:Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 121
    iget-byte v0, p0, Lcom/smartisanos/launcher/view/DownloadView;->mUserData:B

    if-gt v0, v5, :cond_1

    .line 122
    sget-byte v0, Lcom/smartisanos/launcher/view/DownloadView;->sUserData:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    sput-byte v0, Lcom/smartisanos/launcher/view/DownloadView;->sUserData:B

    .line 123
    sget-byte v0, Lcom/smartisanos/launcher/view/DownloadView;->sUserData:B

    if-gt v0, v5, :cond_0

    .line 124
    const/16 v0, 0x65

    sput-byte v0, Lcom/smartisanos/launcher/view/DownloadView;->sUserData:B

    .line 126
    :cond_0
    sget-byte v0, Lcom/smartisanos/launcher/view/DownloadView;->sUserData:B

    iput-byte v0, p0, Lcom/smartisanos/launcher/view/DownloadView;->mUserData:B

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DownloadView;->mProgressAnimation:Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    iget-byte v1, p0, Lcom/smartisanos/launcher/view/DownloadView;->mUserData:B

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setUserData(B)V

    .line 130
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DownloadView;->mProgressAnimation:Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->start()V

    .line 141
    :goto_0
    return-void

    .line 132
    :cond_3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DownloadView;->mProgressAnimation:Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/smartisanos/launcher/view/DownloadView;->mProgressAnimation:Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    .line 133
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->isFinished()Z

    move-result v0

    if-nez v0, :cond_4

    iget-byte v0, p0, Lcom/smartisanos/launcher/view/DownloadView;->mUserData:B

    iget-object v1, p0, Lcom/smartisanos/launcher/view/DownloadView;->mProgressAnimation:Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    .line 135
    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->getUserData()B

    move-result v1

    if-ne v0, v1, :cond_4

    .line 136
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DownloadView;->mProgressAnimation:Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->kill()V

    .line 137
    iput-byte v5, p0, Lcom/smartisanos/launcher/view/DownloadView;->mUserData:B

    .line 139
    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/DownloadView;->mProgressAnimation:Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    goto :goto_0
.end method


.method public clear(Z)V
    .locals 3
    .param p1, "cleanHardwareResource"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 309
    invoke-direct {p0, v0}, Lcom/smartisanos/launcher/view/DownloadView;->runProgressAnimation(Z)V

    .line 310
    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/DownloadView;->setVisibility(Z)V

    .line 311
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DownloadView;->mStaticRect:Lcom/smartisanos/smengine/RectNode;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DownloadView;->mStaticRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 313
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DownloadView;->mStaticRect:Lcom/smartisanos/smengine/RectNode;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RectNode;->clear(Z)V

    .line 315
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/DownloadView;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 316
    invoke-super {p0, p1}, Lcom/smartisanos/launcher/view/ActiveIconView;->clear(Z)V

    .line 317
    iput-object v2, p0, Lcom/smartisanos/launcher/view/DownloadView;->mStaticRect:Lcom/smartisanos/smengine/RectNode;

    .line 318
    iput-object v2, p0, Lcom/smartisanos/launcher/view/DownloadView;->mProgressRect:Lcom/smartisanos/smengine/RectNode;

    .line 319
    return-void
.end method

.method public create()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/DownloadView;->createBoundingVolume()V

    .line 65
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/DownloadView;->createStaticRect()V

    .line 66
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/DownloadView;->createProgressRect()V

    .line 67
    sget-object v0, Lcom/smartisanos/launcher/view/DownloadView$DownloadState;->NONE:Lcom/smartisanos/launcher/view/DownloadView$DownloadState;

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/DownloadView;->setDownloadState(Lcom/smartisanos/launcher/view/DownloadView$DownloadState;)V

    .line 68
    return-void
.end method

.method public createComposedBitmap()Landroid/graphics/Bitmap;
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 211
    const/4 v7, 0x0

    .line 212
    .local v7, "result":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 213
    .local v3, "p":Landroid/graphics/Paint;
    invoke-virtual {v3, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 214
    invoke-virtual {v3, v13}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 215
    sget-object v8, Lcom/smartisanos/launcher/view/DownloadView$1;->$SwitchMap$com$smartisanos$launcher$view$DownloadView$DownloadState:[I

    iget-object v9, p0, Lcom/smartisanos/launcher/view/DownloadView;->mDownloadState:Lcom/smartisanos/launcher/view/DownloadView$DownloadState;

    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/DownloadView$DownloadState;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 297
    :goto_0
    return-object v7

    .line 218
    :pswitch_0
    iget-object v8, p0, Lcom/smartisanos/launcher/view/DownloadView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v8, v8, Lcom/smartisanos/launcher/data/LayoutProperty;->download_back_size:F

    float-to-int v8, v8

    iget-object v9, p0, Lcom/smartisanos/launcher/view/DownloadView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v9, v9, Lcom/smartisanos/launcher/data/LayoutProperty;->download_back_size:F

    float-to-int v9, v9

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 220
    const-string v8, "download/mark_download_bg.png"

    invoke-static {v8}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/smartisanos/smengine/Image;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 221
    .local v1, "bg":Landroid/graphics/Bitmap;
    const-string v8, "download/app_download_arrow.png"

    invoke-static {v8}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/smartisanos/smengine/Image;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 223
    .local v0, "arrow":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 224
    .local v2, "canvas":Landroid/graphics/Canvas;
    new-instance v8, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-direct {v8, v12, v12, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v9, Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/smartisanos/launcher/view/DownloadView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v10, v10, Lcom/smartisanos/launcher/data/LayoutProperty;->download_back_size:F

    float-to-int v10, v10

    iget-object v11, p0, Lcom/smartisanos/launcher/view/DownloadView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v11, v11, Lcom/smartisanos/launcher/data/LayoutProperty;->download_back_size:F

    float-to-int v11, v11

    invoke-direct {v9, v12, v12, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v1, v8, v9, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 226
    new-instance v8, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-direct {v8, v12, v12, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v9, Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/smartisanos/launcher/view/DownloadView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v10, v10, Lcom/smartisanos/launcher/data/LayoutProperty;->download_back_size:F

    float-to-int v10, v10

    iget-object v11, p0, Lcom/smartisanos/launcher/view/DownloadView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v11, v11, Lcom/smartisanos/launcher/data/LayoutProperty;->download_back_size:F

    float-to-int v11, v11

    invoke-direct {v9, v12, v12, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v0, v8, v9, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 231
    .end local v0    # "arrow":Landroid/graphics/Bitmap;
    .end local v1    # "bg":Landroid/graphics/Bitmap;
    .end local v2    # "canvas":Landroid/graphics/Canvas;
    :pswitch_1
    iget-object v8, p0, Lcom/smartisanos/launcher/view/DownloadView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v8, v8, Lcom/smartisanos/launcher/data/LayoutProperty;->download_back_size:F

    float-to-int v8, v8

    iget-object v9, p0, Lcom/smartisanos/launcher/view/DownloadView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v9, v9, Lcom/smartisanos/launcher/data/LayoutProperty;->download_back_size:F

    float-to-int v9, v9

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 233
    const-string v8, "download/mark_download_bg.png"

    invoke-static {v8}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/smartisanos/smengine/Image;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 236
    .restart local v1    # "bg":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 237
    .restart local v2    # "canvas":Landroid/graphics/Canvas;
    new-instance v8, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-direct {v8, v12, v12, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v9, Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/smartisanos/launcher/view/DownloadView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v10, v10, Lcom/smartisanos/launcher/data/LayoutProperty;->download_back_size:F

    float-to-int v10, v10

    iget-object v11, p0, Lcom/smartisanos/launcher/view/DownloadView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v11, v11, Lcom/smartisanos/launcher/data/LayoutProperty;->download_back_size:F

    float-to-int v11, v11

    invoke-direct {v9, v12, v12, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v1, v8, v9, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 246
    .end local v1    # "bg":Landroid/graphics/Bitmap;
    .end local v2    # "canvas":Landroid/graphics/Canvas;
    :pswitch_2
    iget-object v8, p0, Lcom/smartisanos/launcher/view/DownloadView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v8, v8, Lcom/smartisanos/launcher/data/LayoutProperty;->download_back_size:F

    float-to-int v8, v8

    iget-object v9, p0, Lcom/smartisanos/launcher/view/DownloadView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v9, v9, Lcom/smartisanos/launcher/data/LayoutProperty;->download_back_size:F

    float-to-int v9, v9

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 248
    const-string v8, "download/mark_download_bg.png"

    invoke-static {v8}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/smartisanos/smengine/Image;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 249
    .restart local v1    # "bg":Landroid/graphics/Bitmap;
    const-string v8, "download/pause.png"

    invoke-static {v8}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/smartisanos/smengine/Image;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 251
    .local v6, "progress":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 252
    .restart local v2    # "canvas":Landroid/graphics/Canvas;
    new-instance v8, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-direct {v8, v12, v12, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v9, Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/smartisanos/launcher/view/DownloadView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v10, v10, Lcom/smartisanos/launcher/data/LayoutProperty;->download_back_size:F

    float-to-int v10, v10

    iget-object v11, p0, Lcom/smartisanos/launcher/view/DownloadView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v11, v11, Lcom/smartisanos/launcher/data/LayoutProperty;->download_back_size:F

    float-to-int v11, v11

    invoke-direct {v9, v12, v12, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v1, v8, v9, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 254
    new-instance v8, Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-direct {v8, v12, v12, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v9, Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/smartisanos/launcher/view/DownloadView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v10, v10, Lcom/smartisanos/launcher/data/LayoutProperty;->download_back_size:F

    float-to-int v10, v10

    iget-object v11, p0, Lcom/smartisanos/launcher/view/DownloadView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v11, v11, Lcom/smartisanos/launcher/data/LayoutProperty;->download_back_size:F

    float-to-int v11, v11

    invoke-direct {v9, v12, v12, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v6, v8, v9, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 259
    .end local v1    # "bg":Landroid/graphics/Bitmap;
    .end local v2    # "canvas":Landroid/graphics/Canvas;
    .end local v6    # "progress":Landroid/graphics/Bitmap;
    :pswitch_3
    iget v8, p0, Lcom/smartisanos/launcher/view/DownloadView;->mPercentIconIndex:I

    if-nez v8, :cond_0

    .line 260
    const-string v8, "download/mark_download_bg.png"

    invoke-static {v8}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/smartisanos/smengine/Image;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    goto/16 :goto_0

    .line 263
    :cond_0
    iget-object v8, p0, Lcom/smartisanos/launcher/view/DownloadView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v8, v8, Lcom/smartisanos/launcher/data/LayoutProperty;->download_back_size:F

    float-to-int v8, v8

    iget-object v9, p0, Lcom/smartisanos/launcher/view/DownloadView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v9, v9, Lcom/smartisanos/launcher/data/LayoutProperty;->download_back_size:F

    float-to-int v9, v9

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 266
    const-string v8, "download/mark_download_bg.png"

    invoke-static {v8}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/smartisanos/smengine/Image;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 267
    .restart local v1    # "bg":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 268
    .restart local v2    # "canvas":Landroid/graphics/Canvas;
    new-instance v8, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-direct {v8, v12, v12, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v9, Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/smartisanos/launcher/view/DownloadView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v10, v10, Lcom/smartisanos/launcher/data/LayoutProperty;->download_back_size:F

    float-to-int v10, v10

    iget-object v11, p0, Lcom/smartisanos/launcher/view/DownloadView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v11, v11, Lcom/smartisanos/launcher/data/LayoutProperty;->download_back_size:F

    float-to-int v11, v11

    invoke-direct {v9, v12, v12, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v1, v8, v9, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 271
    const-string v8, "download/loading_%s.png"

    new-array v9, v13, [Ljava/lang/Object;

    iget v10, p0, Lcom/smartisanos/launcher/view/DownloadView;->mPercentIconIndex:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 272
    .local v5, "percentName":Ljava/lang/String;
    invoke-static {v5}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/smartisanos/smengine/Image;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 273
    .local v4, "percentBg":Landroid/graphics/Bitmap;
    new-instance v8, Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-direct {v8, v12, v12, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v9, Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/smartisanos/launcher/view/DownloadView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v10, v10, Lcom/smartisanos/launcher/data/LayoutProperty;->download_back_size:F

    float-to-int v10, v10

    iget-object v11, p0, Lcom/smartisanos/launcher/view/DownloadView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v11, v11, Lcom/smartisanos/launcher/data/LayoutProperty;->download_back_size:F

    float-to-int v11, v11

    invoke-direct {v9, v12, v12, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v4, v8, v9, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 279
    .end local v1    # "bg":Landroid/graphics/Bitmap;
    .end local v2    # "canvas":Landroid/graphics/Canvas;
    .end local v4    # "percentBg":Landroid/graphics/Bitmap;
    .end local v5    # "percentName":Ljava/lang/String;
    :pswitch_4
    iget-object v8, p0, Lcom/smartisanos/launcher/view/DownloadView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v8, v8, Lcom/smartisanos/launcher/data/LayoutProperty;->download_back_size:F

    float-to-int v8, v8

    iget-object v9, p0, Lcom/smartisanos/launcher/view/DownloadView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v9, v9, Lcom/smartisanos/launcher/data/LayoutProperty;->download_back_size:F

    float-to-int v9, v9

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 281
    const-string v8, "download/mark_download_bg.png"

    invoke-static {v8}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/smartisanos/smengine/Image;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 282
    .restart local v1    # "bg":Landroid/graphics/Bitmap;
    const-string v8, "download/app_download_cycle.png"

    invoke-static {v8}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/smartisanos/smengine/Image;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 284
    .restart local v6    # "progress":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 285
    .restart local v2    # "canvas":Landroid/graphics/Canvas;
    new-instance v8, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-direct {v8, v12, v12, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v9, Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/smartisanos/launcher/view/DownloadView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v10, v10, Lcom/smartisanos/launcher/data/LayoutProperty;->download_back_size:F

    float-to-int v10, v10

    iget-object v11, p0, Lcom/smartisanos/launcher/view/DownloadView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v11, v11, Lcom/smartisanos/launcher/data/LayoutProperty;->download_back_size:F

    float-to-int v11, v11

    invoke-direct {v9, v12, v12, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v1, v8, v9, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 287
    new-instance v8, Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-direct {v8, v12, v12, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v9, Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/smartisanos/launcher/view/DownloadView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v10, v10, Lcom/smartisanos/launcher/data/LayoutProperty;->download_back_size:F

    float-to-int v10, v10

    iget-object v11, p0, Lcom/smartisanos/launcher/view/DownloadView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v11, v11, Lcom/smartisanos/launcher/data/LayoutProperty;->download_back_size:F

    float-to-int v11, v11

    invoke-direct {v9, v12, v12, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v6, v8, v9, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 292
    .end local v1    # "bg":Landroid/graphics/Bitmap;
    .end local v2    # "canvas":Landroid/graphics/Canvas;
    .end local v6    # "progress":Landroid/graphics/Bitmap;
    :pswitch_5
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v13, v13, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 293
    invoke-static {v12}, Landroid/graphics/Color;->alpha(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Bitmap;->eraseColor(I)V

    goto/16 :goto_0

    .line 215
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method

.method public draw(Lcom/smartisanos/smengine/Camera;)V
    .locals 2
    .param p1, "c"    # Lcom/smartisanos/smengine/Camera;

    .prologue
    .line 374
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/DownloadView;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 384
    :cond_0
    :goto_0
    return-void

    .line 377
    :cond_1
    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/DownloadView;->cullWithCameraRect(Lcom/smartisanos/smengine/Camera;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 380
    sget-object v0, Lcom/smartisanos/launcher/view/DownloadView$DownloadState;->NEED_DOWNLOAD:Lcom/smartisanos/launcher/view/DownloadView$DownloadState;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/DownloadView;->mDownloadState:Lcom/smartisanos/launcher/view/DownloadView$DownloadState;

    if-eq v0, v1, :cond_2

    sget-object v0, Lcom/smartisanos/launcher/view/DownloadView$DownloadState;->INSTALLING:Lcom/smartisanos/launcher/view/DownloadView$DownloadState;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/DownloadView;->mDownloadState:Lcom/smartisanos/launcher/view/DownloadView$DownloadState;

    if-eq v0, v1, :cond_2

    sget-object v0, Lcom/smartisanos/launcher/view/DownloadView$DownloadState;->DOWNLOADING:Lcom/smartisanos/launcher/view/DownloadView$DownloadState;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/DownloadView;->mDownloadState:Lcom/smartisanos/launcher/view/DownloadView$DownloadState;

    if-ne v0, v1, :cond_0

    .line 382
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DownloadView;->mProgressRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/RectNode;->draw(Lcom/smartisanos/smengine/Camera;)V

    goto :goto_0
.end method

.method public getComposeTextureName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/DownloadView;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_compose_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/DownloadView;->mDownloadState:Lcom/smartisanos/launcher/view/DownloadView$DownloadState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/smartisanos/launcher/view/DownloadView;->mPercentIconIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadState()Lcom/smartisanos/launcher/view/DownloadView$DownloadState;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DownloadView;->mDownloadState:Lcom/smartisanos/launcher/view/DownloadView$DownloadState;

    return-object v0
.end method

.method public getPrevDownloadState()Lcom/smartisanos/launcher/view/DownloadView$DownloadState;
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DownloadView;->mPrevDownloadState:Lcom/smartisanos/launcher/view/DownloadView$DownloadState;

    return-object v0
.end method

.method public getProgressRect()Lcom/smartisanos/smengine/RectNode;
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DownloadView;->mProgressRect:Lcom/smartisanos/smengine/RectNode;

    return-object v0
.end method

.method public getStaticRect()Lcom/smartisanos/smengine/RectNode;
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DownloadView;->mStaticRect:Lcom/smartisanos/smengine/RectNode;

    return-object v0
.end method

.method public isTransformedTouchPointInView(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 322
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 305
    invoke-super {p0}, Lcom/smartisanos/launcher/view/ActiveIconView;->onPause()V

    .line 306
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 301
    invoke-super {p0}, Lcom/smartisanos/launcher/view/ActiveIconView;->onResume()V

    .line 302
    return-void
.end method

.method public setDownloadPercent(F)V
    .locals 1
    .param p1, "percent"    # F

    .prologue
    .line 362
    const/4 v0, 0x0

    cmpl-float v0, v0, p1

    if-gtz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, v0, p1

    if-gez v0, :cond_1

    .line 367
    :cond_0
    :goto_0
    return-void

    .line 365
    :cond_1
    iget v0, p0, Lcom/smartisanos/launcher/view/DownloadView;->PERCENT_INTERVAL:F

    div-float v0, p1, v0

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/smartisanos/launcher/view/DownloadView;->mPercentIconIndex:I

    .line 366
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/DownloadView;->updatePageCell()V

    goto :goto_0
.end method

.method public setDownloadState(Lcom/smartisanos/launcher/view/DownloadView$DownloadState;)V
    .locals 4
    .param p1, "state"    # Lcom/smartisanos/launcher/view/DownloadView$DownloadState;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 148
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DownloadView;->mDownloadState:Lcom/smartisanos/launcher/view/DownloadView$DownloadState;

    if-ne p1, v0, :cond_0

    .line 189
    :goto_0
    return-void

    .line 151
    :cond_0
    invoke-virtual {p0, v3}, Lcom/smartisanos/launcher/view/DownloadView;->setVisibility(Z)V

    .line 152
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DownloadView;->mDownloadState:Lcom/smartisanos/launcher/view/DownloadView$DownloadState;

    iput-object v0, p0, Lcom/smartisanos/launcher/view/DownloadView;->mPrevDownloadState:Lcom/smartisanos/launcher/view/DownloadView$DownloadState;

    .line 153
    sget-object v0, Lcom/smartisanos/launcher/view/DownloadView$1;->$SwitchMap$com$smartisanos$launcher$view$DownloadView$DownloadState:[I

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/DownloadView$DownloadState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 187
    :cond_1
    :goto_1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/DownloadView;->mDownloadState:Lcom/smartisanos/launcher/view/DownloadView$DownloadState;

    .line 188
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/DownloadView;->updatePageCell()V

    goto :goto_0

    .line 155
    :pswitch_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DownloadView;->mProgressRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    .line 156
    invoke-direct {p0, v2}, Lcom/smartisanos/launcher/view/DownloadView;->runProgressAnimation(Z)V

    goto :goto_1

    .line 160
    :pswitch_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DownloadView;->mProgressRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    .line 161
    invoke-direct {p0, v3}, Lcom/smartisanos/launcher/view/DownloadView;->runProgressAnimation(Z)V

    goto :goto_1

    .line 165
    :pswitch_2
    sget-object v0, Lcom/smartisanos/launcher/view/DownloadView$DownloadState;->COMPLETE:Lcom/smartisanos/launcher/view/DownloadView$DownloadState;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/DownloadView;->mDownloadState:Lcom/smartisanos/launcher/view/DownloadView$DownloadState;

    if-eq v0, v1, :cond_1

    .line 166
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DownloadView;->mProgressRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    .line 167
    invoke-direct {p0, v3}, Lcom/smartisanos/launcher/view/DownloadView;->runProgressAnimation(Z)V

    goto :goto_1

    .line 177
    :pswitch_3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DownloadView;->mProgressRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    .line 178
    invoke-direct {p0, v2}, Lcom/smartisanos/launcher/view/DownloadView;->runProgressAnimation(Z)V

    goto :goto_1

    .line 182
    :pswitch_4
    invoke-direct {p0, v2}, Lcom/smartisanos/launcher/view/DownloadView;->runProgressAnimation(Z)V

    .line 183
    invoke-virtual {p0, v2}, Lcom/smartisanos/launcher/view/DownloadView;->setVisibility(Z)V

    goto :goto_1

    .line 153
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setLayer(I)V
    .locals 2
    .param p1, "layer"    # I

    .prologue
    .line 192
    invoke-super {p0, p1}, Lcom/smartisanos/launcher/view/ActiveIconView;->setLayer(I)V

    .line 193
    iput p1, p0, Lcom/smartisanos/launcher/view/DownloadView;->mBaseLayer:I

    .line 194
    iget v0, p0, Lcom/smartisanos/launcher/view/DownloadView;->mBaseLayer:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/smartisanos/launcher/view/DownloadView;->mStaticLayer:I

    .line 195
    iget v0, p0, Lcom/smartisanos/launcher/view/DownloadView;->mBaseLayer:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/smartisanos/launcher/view/DownloadView;->mProgressLayer:I

    .line 196
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DownloadView;->mStaticRect:Lcom/smartisanos/smengine/RectNode;

    iget v1, p0, Lcom/smartisanos/launcher/view/DownloadView;->mStaticLayer:I

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 197
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DownloadView;->mProgressRect:Lcom/smartisanos/smengine/RectNode;

    iget v1, p0, Lcom/smartisanos/launcher/view/DownloadView;->mProgressLayer:I

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 198
    return-void
.end method

.method public setTranslate(FFF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 201
    invoke-super {p0, p1, p2, p3}, Lcom/smartisanos/launcher/view/ActiveIconView;->setTranslate(FFF)V

    .line 202
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DownloadView;->mStaticRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0, p1, p2, p3}, Lcom/smartisanos/smengine/RectNode;->setTranslate(FFF)V

    .line 203
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DownloadView;->mStaticRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->updateWorldTransforms()V

    .line 204
    return-void
.end method

.method public setVisibility(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 334
    invoke-super {p0, p1}, Lcom/smartisanos/launcher/view/ActiveIconView;->setVisibility(Z)V

    .line 335
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DownloadView;->mStaticRect:Lcom/smartisanos/smengine/RectNode;

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DownloadView;->mStaticRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DownloadView;->mProgressRect:Lcom/smartisanos/smengine/RectNode;

    if-eqz v0, :cond_1

    .line 339
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DownloadView;->mProgressRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    .line 341
    :cond_1
    return-void
.end method

.method public updatePageCell()V
    .locals 5

    .prologue
    .line 344
    iget-object v4, p0, Lcom/smartisanos/launcher/view/DownloadView;->mStaticRect:Lcom/smartisanos/smengine/RectNode;

    if-eqz v4, :cond_1

    .line 345
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/DownloadView;->getComposeTextureName()Ljava/lang/String;

    move-result-object v1

    .line 346
    .local v1, "imageName":Ljava/lang/String;
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/smengine/World;->getTextureManager()Lcom/smartisanos/smengine/TextureManager;

    move-result-object v3

    .line 347
    .local v3, "tm":Lcom/smartisanos/smengine/TextureManager;
    invoke-virtual {v3, v1}, Lcom/smartisanos/smengine/TextureManager;->getTexture(Ljava/lang/String;)Lcom/smartisanos/smengine/Texture;

    move-result-object v2

    .line 348
    .local v2, "t":Lcom/smartisanos/smengine/Texture;
    if-nez v2, :cond_0

    .line 349
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/DownloadView;->createComposedBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 350
    .local v0, "bmap":Landroid/graphics/Bitmap;
    new-instance v2, Lcom/smartisanos/smengine/Texture;

    .end local v2    # "t":Lcom/smartisanos/smengine/Texture;
    invoke-direct {v2, v0}, Lcom/smartisanos/smengine/Texture;-><init>(Landroid/graphics/Bitmap;)V

    .line 351
    .restart local v2    # "t":Lcom/smartisanos/smengine/Texture;
    invoke-virtual {v3, v1, v2}, Lcom/smartisanos/smengine/TextureManager;->setTexture(Ljava/lang/String;Lcom/smartisanos/smengine/Texture;)V

    .line 352
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/smartisanos/smengine/Texture;->setCanRecycle(Z)V

    .line 354
    .end local v0    # "bmap":Landroid/graphics/Bitmap;
    :cond_0
    iget-object v4, p0, Lcom/smartisanos/launcher/view/DownloadView;->mStaticRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v4, v1}, Lcom/smartisanos/smengine/RectNode;->setImageName(Ljava/lang/String;)V

    .line 355
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/DownloadView;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 356
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/DownloadView;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->setNeedDisplay()V

    .line 359
    .end local v1    # "imageName":Ljava/lang/String;
    .end local v2    # "t":Lcom/smartisanos/smengine/Texture;
    .end local v3    # "tm":Lcom/smartisanos/smengine/TextureManager;
    :cond_1
    return-void
.end method
