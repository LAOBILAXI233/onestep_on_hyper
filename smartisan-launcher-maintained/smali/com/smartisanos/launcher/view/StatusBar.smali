.class public Lcom/smartisanos/launcher/view/StatusBar;
.super Lcom/smartisanos/smengine/SceneNode;
.source "StatusBar.java"


.field private mGaussianBackRect:Lcom/smartisanos/smengine/RectNode;

.field private mLayerStatus:I

.field private mNodes:[Lcom/smartisanos/launcher/view/StatusBar;

.field private mRotateParent:Lcom/smartisanos/smengine/SceneNode;

.field public mSortType:I

.field private mStatusBarLongPressText:Lcom/smartisanos/launcher/view/TextView;

.field private mStatusBarText:Lcom/smartisanos/launcher/view/TextView;

.field private mStatusbar:Lcom/smartisanos/smengine/RectNode;

.field private mText:Lcom/smartisanos/launcher/view/TextView;


.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/SceneNode;-><init>(Ljava/lang/String;)V

    .line 40
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/smartisanos/launcher/view/StatusBar;

    iput-object v0, p0, Lcom/smartisanos/launcher/view/StatusBar;->mNodes:[Lcom/smartisanos/launcher/view/StatusBar;

    .line 538
    const/4 v0, 0x0

    iput v0, p0, Lcom/smartisanos/launcher/view/StatusBar;->mLayerStatus:I

    .line 579
    const/4 v0, -0x1

    iput v0, p0, Lcom/smartisanos/launcher/view/StatusBar;->mSortType:I

    .line 50
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/StatusBar;->createStatusBar()V

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/smartisanos/launcher/view/StatusBar;)Lcom/smartisanos/smengine/RectNode;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/StatusBar;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/smartisanos/launcher/view/StatusBar;->mGaussianBackRect:Lcom/smartisanos/smengine/RectNode;

    return-object v0
.end method

.method static synthetic access$002(Lcom/smartisanos/launcher/view/StatusBar;Lcom/smartisanos/smengine/RectNode;)Lcom/smartisanos/smengine/RectNode;
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/StatusBar;
    .param p1, "x1"    # Lcom/smartisanos/smengine/RectNode;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/smartisanos/launcher/view/StatusBar;->mGaussianBackRect:Lcom/smartisanos/smengine/RectNode;

    return-object p1
.end method

.method static synthetic access$100(Lcom/smartisanos/launcher/view/StatusBar;)Lcom/smartisanos/launcher/view/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/StatusBar;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/smartisanos/launcher/view/StatusBar;->mStatusBarText:Lcom/smartisanos/launcher/view/TextView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/smartisanos/launcher/view/StatusBar;Lcom/smartisanos/launcher/view/TextView;)Lcom/smartisanos/launcher/view/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/StatusBar;
    .param p1, "x1"    # Lcom/smartisanos/launcher/view/TextView;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/smartisanos/launcher/view/StatusBar;->mStatusBarText:Lcom/smartisanos/launcher/view/TextView;

    return-object p1
.end method

.method static synthetic access$200(Lcom/smartisanos/launcher/view/StatusBar;)Lcom/smartisanos/smengine/RectNode;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/StatusBar;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/smartisanos/launcher/view/StatusBar;->mStatusbar:Lcom/smartisanos/smengine/RectNode;

    return-object v0
.end method

.method static synthetic access$300(Lcom/smartisanos/launcher/view/StatusBar;)[Lcom/smartisanos/launcher/view/StatusBar;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/StatusBar;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/smartisanos/launcher/view/StatusBar;->mNodes:[Lcom/smartisanos/launcher/view/StatusBar;

    return-object v0
.end method

.method static synthetic access$400(Lcom/smartisanos/launcher/view/StatusBar;)Lcom/smartisanos/launcher/view/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/StatusBar;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/smartisanos/launcher/view/StatusBar;->mText:Lcom/smartisanos/launcher/view/TextView;

    return-object v0
.end method

.method static synthetic access$402(Lcom/smartisanos/launcher/view/StatusBar;Lcom/smartisanos/launcher/view/TextView;)Lcom/smartisanos/launcher/view/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/StatusBar;
    .param p1, "x1"    # Lcom/smartisanos/launcher/view/TextView;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/smartisanos/launcher/view/StatusBar;->mText:Lcom/smartisanos/launcher/view/TextView;

    return-object p1
.end method

.method private createStatusBar()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x1

    .line 56
    iget-object v6, p0, Lcom/smartisanos/launcher/view/StatusBar;->mStatusbar:Lcom/smartisanos/smengine/RectNode;

    if-eqz v6, :cond_0

    .line 88
    :goto_0
    return-void

    .line 59
    :cond_0
    sget v6, Lcom/smartisanos/launcher/data/Constants;->status_bar_height:I

    int-to-float v0, v6

    .line 60
    .local v0, "height":F
    sget v6, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v5, v6

    .line 61
    .local v5, "width":F
    sget v6, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    int-to-float v2, v6

    .line 62
    .local v2, "screenH":F
    sget v6, Lcom/smartisanos/launcher/data/Constants;->bgZ:I

    neg-int v6, v6

    add-int/lit8 v6, v6, 0xa

    int-to-float v4, v6

    .line 63
    .local v4, "sz":F
    const-string v6, "background"

    const/4 v7, 0x0

    invoke-static {v6, v5, v0, v7, v9}, Lcom/smartisanos/smengine/RectNode;->createSimpleTextureRect(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/RectNode;

    move-result-object v6

    iput-object v6, p0, Lcom/smartisanos/launcher/view/StatusBar;->mStatusbar:Lcom/smartisanos/smengine/RectNode;

    .line 65
    const-string v6, "TextureModularColorMaterial"

    invoke-static {v6}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v1

    .line 66
    .local v1, "m":Lcom/smartisanos/smengine/mymaterial/Material;
    sget-boolean v6, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v6, :cond_1

    .line 67
    const-string v6, "TwoTexDifferentTexcoordMaterial"

    invoke-static {v6}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v1

    .line 69
    :cond_1
    iget-object v6, p0, Lcom/smartisanos/launcher/view/StatusBar;->mStatusbar:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v6, v1}, Lcom/smartisanos/smengine/RectNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 70
    iget-object v6, p0, Lcom/smartisanos/launcher/view/StatusBar;->mStatusbar:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v6, v8, v8, v8, v8}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 71
    sget-boolean v6, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v6, :cond_2

    .line 72
    iget-object v6, p0, Lcom/smartisanos/launcher/view/StatusBar;->mStatusbar:Lcom/smartisanos/smengine/RectNode;

    const-string v7, "status_bar.png"

    invoke-static {v7}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v10, v7}, Lcom/smartisanos/smengine/RectNode;->setTextureName(ILjava/lang/String;)V

    .line 73
    iget-object v6, p0, Lcom/smartisanos/launcher/view/StatusBar;->mStatusbar:Lcom/smartisanos/smengine/RectNode;

    const-string v7, "t_blur_background"

    invoke-virtual {v6, v9, v7}, Lcom/smartisanos/smengine/RectNode;->setTextureName(ILjava/lang/String;)V

    .line 74
    iget-object v6, p0, Lcom/smartisanos/launcher/view/StatusBar;->mStatusbar:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v6}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v6

    invoke-virtual {v6, v10}, Lcom/smartisanos/smengine/RenderState;->setIsUseVBO(Z)V

    .line 80
    :goto_1
    iget-object v6, p0, Lcom/smartisanos/launcher/view/StatusBar;->mStatusbar:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v6}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/smartisanos/smengine/RenderState;->setIsEnableBlend(Z)V

    .line 81
    iget-object v6, p0, Lcom/smartisanos/launcher/view/StatusBar;->mStatusbar:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v6}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/smartisanos/smengine/RenderState;->setIsPolygonOffset(Z)V

    .line 82
    iget-object v6, p0, Lcom/smartisanos/launcher/view/StatusBar;->mStatusbar:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v6}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v6

    const/high16 v7, -0x40800000    # -1.0f

    const/high16 v8, -0x40000000    # -2.0f

    invoke-virtual {v6, v7, v8}, Lcom/smartisanos/smengine/RenderState;->setPolygonOffsetFactorUnits(FF)V

    .line 83
    iget-object v6, p0, Lcom/smartisanos/launcher/view/StatusBar;->mStatusbar:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v6, v9}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    .line 84
    iget-object v6, p0, Lcom/smartisanos/launcher/view/StatusBar;->mStatusbar:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {p0, v6}, Lcom/smartisanos/launcher/view/StatusBar;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 85
    iget-object v6, p0, Lcom/smartisanos/launcher/view/StatusBar;->mStatusbar:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v6}, Lcom/smartisanos/smengine/RectNode;->updateGeometricState()V

    .line 86
    invoke-static {}, Lcom/smartisanos/launcher/view/LayerManager;->getInstance()Lcom/smartisanos/launcher/view/LayerManager;

    move-result-object v6

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/StatusBar;->getLayStatus()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/smartisanos/launcher/view/LayerManager;->getStatusBarLayer(I)Lcom/smartisanos/launcher/view/LayerManager$StatusBarLayer;

    move-result-object v3

    .line 87
    .local v3, "statusBarLayer":Lcom/smartisanos/launcher/view/LayerManager$StatusBarLayer;
    iget-object v6, p0, Lcom/smartisanos/launcher/view/StatusBar;->mStatusbar:Lcom/smartisanos/smengine/RectNode;

    iget v7, v3, Lcom/smartisanos/launcher/view/LayerManager$StatusBarLayer;->STATUS_BAR_BG:I

    invoke-virtual {v6, v7}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    goto/16 :goto_0

    .line 76
    .end local v3    # "statusBarLayer":Lcom/smartisanos/launcher/view/LayerManager$StatusBarLayer;
    :cond_2
    iget-object v6, p0, Lcom/smartisanos/launcher/view/StatusBar;->mStatusbar:Lcom/smartisanos/smengine/RectNode;

    const-string v7, "status_bar.png"

    invoke-static {v7}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/smartisanos/smengine/RectNode;->setImageName(Ljava/lang/String;)V

    goto :goto_1
.end method


.method public applyTheme()V
    .locals 2

    .prologue
    .line 480
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v0, :cond_1

    .line 481
    iget-object v0, p0, Lcom/smartisanos/launcher/view/StatusBar;->mStatusbar:Lcom/smartisanos/smengine/RectNode;

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/smartisanos/launcher/view/StatusBar;->mStatusbar:Lcom/smartisanos/smengine/RectNode;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    .line 484
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/StatusBar;->removeChangeThemeNode()V

    .line 486
    :cond_1
    return-void
.end method

.method public changeToLongPressText()V
    .locals 2

    .prologue
    .line 212
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/launcher/view/StatusBar;->hideStatusBarText(Lcom/smartisanos/smengine/AnimationTimeLine;F)V

    .line 213
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/StatusBar;->setLongPressBarText()V

    .line 214
    return-void
.end method

.method public draw(Lcom/smartisanos/smengine/Camera;)V
    .locals 2
    .param p1, "camera"    # Lcom/smartisanos/smengine/Camera;

    .prologue
    .line 569
    invoke-super {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->draw(Lcom/smartisanos/smengine/Camera;)V

    .line 570
    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v1, :cond_0

    .line 571
    iget-object v1, p0, Lcom/smartisanos/launcher/view/StatusBar;->mStatusbar:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/RectNode;->getMaterial()Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v0

    .line 572
    .local v0, "m":Lcom/smartisanos/smengine/mymaterial/Material;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/smartisanos/smengine/mymaterial/TwoTextureDifferentTexCoordMaterial;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/StatusBar;->mStatusbar:Lcom/smartisanos/smengine/RectNode;

    .line 573
    invoke-virtual {v1}, Lcom/smartisanos/smengine/RectNode;->getMesh()Lcom/smartisanos/smengine/Mesh;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/Mesh;->getShadowTexVertexArray()[F

    move-result-object v1

    if-nez v1, :cond_0

    .line 574
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/StatusBar;->updateUV()V

    .line 577
    .end local v0    # "m":Lcom/smartisanos/smengine/mymaterial/Material;
    :cond_0
    return-void
.end method

.method public getChangeThemeAnim(ZF)Lcom/smartisanos/smengine/AnimationTimeLine;
    .locals 13
    .param p1, "withAnim"    # Z
    .param p2, "duration"    # F

    .prologue
    .line 326
    if-eqz p1, :cond_9

    .line 327
    sget-boolean v3, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    .line 328
    .local v3, "isNewGaussianTheme":Z
    iget-object v8, p0, Lcom/smartisanos/launcher/view/StatusBar;->mStatusbar:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v8}, Lcom/smartisanos/smengine/RectNode;->getMaterial()Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v8

    instance-of v4, v8, Lcom/smartisanos/smengine/mymaterial/TwoTextureDifferentTexCoordMaterial;

    .line 329
    .local v4, "isOldThemeGaussian":Z
    if-eqz v4, :cond_0

    .line 330
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/smartisanos/launcher/view/StatusBar;->setUseStaticGaussian(Z)V

    .line 333
    :cond_0
    if-eqz v3, :cond_1

    .line 334
    const/4 v8, 0x0

    sput-boolean v8, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    .line 336
    :cond_1
    new-instance v7, Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-direct {v7}, Lcom/smartisanos/smengine/AnimationTimeLine;-><init>()V

    .line 338
    .local v7, "timeline":Lcom/smartisanos/smengine/AnimationTimeLine;
    sget v8, Lcom/smartisanos/launcher/data/Constants;->status_bar_height:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v2, v8

    .line 340
    .local v2, "halfHeight":F
    iget-object v8, p0, Lcom/smartisanos/launcher/view/StatusBar;->mNodes:[Lcom/smartisanos/launcher/view/StatusBar;

    const/4 v9, 0x0

    new-instance v10, Lcom/smartisanos/launcher/view/StatusBar;

    const-string v11, "origin"

    invoke-direct {v10, v11}, Lcom/smartisanos/launcher/view/StatusBar;-><init>(Ljava/lang/String;)V

    aput-object v10, v8, v9

    .line 341
    iget-object v8, p0, Lcom/smartisanos/launcher/view/StatusBar;->mNodes:[Lcom/smartisanos/launcher/view/StatusBar;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    iget-object v8, v8, Lcom/smartisanos/launcher/view/StatusBar;->mStatusBarText:Lcom/smartisanos/launcher/view/TextView;

    if-eqz v8, :cond_2

    .line 342
    iget-object v8, p0, Lcom/smartisanos/launcher/view/StatusBar;->mNodes:[Lcom/smartisanos/launcher/view/StatusBar;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    iget-object v8, v8, Lcom/smartisanos/launcher/view/StatusBar;->mStatusBarText:Lcom/smartisanos/launcher/view/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/smartisanos/launcher/view/TextView;->setVisibility(Z)V

    .line 345
    :cond_2
    iget-object v8, p0, Lcom/smartisanos/launcher/view/StatusBar;->mNodes:[Lcom/smartisanos/launcher/view/StatusBar;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    iget-object v8, v8, Lcom/smartisanos/launcher/view/StatusBar;->mStatusbar:Lcom/smartisanos/smengine/RectNode;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 346
    iget-object v8, p0, Lcom/smartisanos/launcher/view/StatusBar;->mNodes:[Lcom/smartisanos/launcher/view/StatusBar;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    iget-object v8, v8, Lcom/smartisanos/launcher/view/StatusBar;->mStatusbar:Lcom/smartisanos/smengine/RectNode;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/smartisanos/smengine/RectNode;->setIsEnableDepthTest(Z)V

    .line 347
    iget-object v8, p0, Lcom/smartisanos/launcher/view/StatusBar;->mNodes:[Lcom/smartisanos/launcher/view/StatusBar;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    iget-object v8, v8, Lcom/smartisanos/launcher/view/StatusBar;->mStatusbar:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v8}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/smartisanos/smengine/RenderState;->setIsPostRender(Z)V

    .line 348
    if-eqz v4, :cond_3

    .line 349
    const/4 v8, 0x0

    sput-boolean v8, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    .line 378
    :cond_3
    iget-object v8, p0, Lcom/smartisanos/launcher/view/StatusBar;->mNodes:[Lcom/smartisanos/launcher/view/StatusBar;

    const/4 v9, 0x1

    new-instance v10, Lcom/smartisanos/launcher/view/StatusBar;

    const-string v11, "target"

    invoke-direct {v10, v11}, Lcom/smartisanos/launcher/view/StatusBar;-><init>(Ljava/lang/String;)V

    aput-object v10, v8, v9

    .line 379
    iget-object v8, p0, Lcom/smartisanos/launcher/view/StatusBar;->mNodes:[Lcom/smartisanos/launcher/view/StatusBar;

    const/4 v9, 0x1

    aget-object v8, v8, v9

    iget-object v8, v8, Lcom/smartisanos/launcher/view/StatusBar;->mStatusbar:Lcom/smartisanos/smengine/RectNode;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "target/--/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "status_bar.png"

    .line 380
    invoke-static {v10}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 379
    invoke-virtual {v8, v9}, Lcom/smartisanos/smengine/RectNode;->setImageName(Ljava/lang/String;)V

    .line 381
    iget-object v8, p0, Lcom/smartisanos/launcher/view/StatusBar;->mNodes:[Lcom/smartisanos/launcher/view/StatusBar;

    const/4 v9, 0x1

    aget-object v8, v8, v9

    iget-object v8, v8, Lcom/smartisanos/launcher/view/StatusBar;->mStatusbar:Lcom/smartisanos/smengine/RectNode;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/smartisanos/smengine/RectNode;->setIsEnableDepthTest(Z)V

    .line 382
    iget-object v8, p0, Lcom/smartisanos/launcher/view/StatusBar;->mNodes:[Lcom/smartisanos/launcher/view/StatusBar;

    const/4 v9, 0x1

    aget-object v8, v8, v9

    iget-object v8, v8, Lcom/smartisanos/launcher/view/StatusBar;->mStatusbar:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v8}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/smartisanos/smengine/RenderState;->setIsPostRender(Z)V

    .line 385
    iget-object v8, p0, Lcom/smartisanos/launcher/view/StatusBar;->mNodes:[Lcom/smartisanos/launcher/view/StatusBar;

    const/4 v9, 0x1

    aget-object v8, v8, v9

    iget-object v8, v8, Lcom/smartisanos/launcher/view/StatusBar;->mStatusbar:Lcom/smartisanos/smengine/RectNode;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 386
    iget-object v8, p0, Lcom/smartisanos/launcher/view/StatusBar;->mNodes:[Lcom/smartisanos/launcher/view/StatusBar;

    const/4 v9, 0x1

    aget-object v8, v8, v9

    iget-object v8, v8, Lcom/smartisanos/launcher/view/StatusBar;->mStatusBarText:Lcom/smartisanos/launcher/view/TextView;

    if-eqz v8, :cond_4

    .line 387
    iget-object v8, p0, Lcom/smartisanos/launcher/view/StatusBar;->mNodes:[Lcom/smartisanos/launcher/view/StatusBar;

    const/4 v9, 0x1

    aget-object v8, v8, v9

    iget-object v8, v8, Lcom/smartisanos/launcher/view/StatusBar;->mStatusBarText:Lcom/smartisanos/launcher/view/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/smartisanos/launcher/view/TextView;->setVisibility(Z)V

    .line 389
    :cond_4
    iget-object v8, p0, Lcom/smartisanos/launcher/view/StatusBar;->mNodes:[Lcom/smartisanos/launcher/view/StatusBar;

    const/4 v9, 0x2

    new-instance v10, Lcom/smartisanos/launcher/view/StatusBar;

    const-string v11, "next"

    invoke-direct {v10, v11}, Lcom/smartisanos/launcher/view/StatusBar;-><init>(Ljava/lang/String;)V

    aput-object v10, v8, v9

    .line 390
    iget-object v8, p0, Lcom/smartisanos/launcher/view/StatusBar;->mNodes:[Lcom/smartisanos/launcher/view/StatusBar;

    const/4 v9, 0x2

    aget-object v8, v8, v9

    iget-object v8, v8, Lcom/smartisanos/launcher/view/StatusBar;->mStatusbar:Lcom/smartisanos/smengine/RectNode;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "target/--/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "status_bar.png"

    .line 391
    invoke-static {v10}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 390
    invoke-virtual {v8, v9}, Lcom/smartisanos/smengine/RectNode;->setImageName(Ljava/lang/String;)V

    .line 393
    iget-object v8, p0, Lcom/smartisanos/launcher/view/StatusBar;->mNodes:[Lcom/smartisanos/launcher/view/StatusBar;

    const/4 v9, 0x2

    aget-object v8, v8, v9

    iget-object v8, v8, Lcom/smartisanos/launcher/view/StatusBar;->mStatusbar:Lcom/smartisanos/smengine/RectNode;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 394
    iget-object v8, p0, Lcom/smartisanos/launcher/view/StatusBar;->mNodes:[Lcom/smartisanos/launcher/view/StatusBar;

    const/4 v9, 0x2

    aget-object v8, v8, v9

    iget-object v8, v8, Lcom/smartisanos/launcher/view/StatusBar;->mStatusbar:Lcom/smartisanos/smengine/RectNode;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/smartisanos/smengine/RectNode;->setIsEnableDepthTest(Z)V

    .line 395
    iget-object v8, p0, Lcom/smartisanos/launcher/view/StatusBar;->mNodes:[Lcom/smartisanos/launcher/view/StatusBar;

    const/4 v9, 0x2

    aget-object v8, v8, v9

    iget-object v8, v8, Lcom/smartisanos/launcher/view/StatusBar;->mStatusbar:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v8}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/smartisanos/smengine/RenderState;->setIsPostRender(Z)V

    .line 397
    iget-object v8, p0, Lcom/smartisanos/launcher/view/StatusBar;->mNodes:[Lcom/smartisanos/launcher/view/StatusBar;

    const/4 v9, 0x2

    aget-object v8, v8, v9

    iget-object v8, v8, Lcom/smartisanos/launcher/view/StatusBar;->mStatusBarText:Lcom/smartisanos/launcher/view/TextView;

    if-eqz v8, :cond_5

    .line 398
    iget-object v8, p0, Lcom/smartisanos/launcher/view/StatusBar;->mNodes:[Lcom/smartisanos/launcher/view/StatusBar;

    const/4 v9, 0x2

    aget-object v8, v8, v9

    iget-object v8, v8, Lcom/smartisanos/launcher/view/StatusBar;->mStatusBarText:Lcom/smartisanos/launcher/view/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/smartisanos/launcher/view/TextView;->setVisibility(Z)V

    .line 401
    :cond_5
    new-instance v6, Lcom/smartisanos/smengine/SceneNode;

    const-string v8, "rotate90"

    invoke-direct {v6, v8}, Lcom/smartisanos/smengine/SceneNode;-><init>(Ljava/lang/String;)V

    .line 402
    .local v6, "rotate90Node":Lcom/smartisanos/smengine/SceneNode;
    iget-object v8, p0, Lcom/smartisanos/launcher/view/StatusBar;->mNodes:[Lcom/smartisanos/launcher/view/StatusBar;

    const/4 v9, 0x1

    aget-object v8, v8, v9

    invoke-virtual {v6, v8}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 403
    const/high16 v0, 0x42b40000    # 90.0f

    .line 404
    .local v0, "angle":F
    const v8, 0x3c8efa35

    mul-float/2addr v8, v0

    new-instance v9, Lcom/smartisanos/smengine/math/Vector3f;

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v9, v10, v11, v12}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    invoke-virtual {v6, v8, v9}, Lcom/smartisanos/smengine/SceneNode;->setRotation(FLcom/smartisanos/smengine/math/Vector3f;)V

    .line 405
    const/4 v8, 0x0

    neg-float v9, v2

    neg-float v10, v2

    invoke-virtual {v6, v8, v9, v10}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 407
    new-instance v5, Lcom/smartisanos/smengine/SceneNode;

    const-string v8, "rotate180"

    invoke-direct {v5, v8}, Lcom/smartisanos/smengine/SceneNode;-><init>(Ljava/lang/String;)V

    .line 408
    .local v5, "rotate180Node":Lcom/smartisanos/smengine/SceneNode;
    iget-object v8, p0, Lcom/smartisanos/launcher/view/StatusBar;->mNodes:[Lcom/smartisanos/launcher/view/StatusBar;

    const/4 v9, 0x2

    aget-object v8, v8, v9

    invoke-virtual {v5, v8}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 409
    const/high16 v0, 0x43340000    # 180.0f

    .line 410
    const v8, 0x3c8efa35

    mul-float/2addr v8, v0

    new-instance v9, Lcom/smartisanos/smengine/math/Vector3f;

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v9, v10, v11, v12}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    invoke-virtual {v5, v8, v9}, Lcom/smartisanos/smengine/SceneNode;->setRotation(FLcom/smartisanos/smengine/math/Vector3f;)V

    .line 411
    const/4 v8, 0x0

    const/4 v9, 0x0

    sget v10, Lcom/smartisanos/launcher/data/Constants;->status_bar_height:I

    neg-int v10, v10

    int-to-float v10, v10

    invoke-virtual {v5, v8, v9, v10}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 413
    new-instance v8, Lcom/smartisanos/smengine/SceneNode;

    const-string v9, "rotateParent"

    invoke-direct {v8, v9}, Lcom/smartisanos/smengine/SceneNode;-><init>(Ljava/lang/String;)V

    iput-object v8, p0, Lcom/smartisanos/launcher/view/StatusBar;->mRotateParent:Lcom/smartisanos/smengine/SceneNode;

    .line 414
    iget-object v8, p0, Lcom/smartisanos/launcher/view/StatusBar;->mRotateParent:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v8, v6}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 415
    iget-object v8, p0, Lcom/smartisanos/launcher/view/StatusBar;->mRotateParent:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v8, v5}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 416
    iget-object v8, p0, Lcom/smartisanos/launcher/view/StatusBar;->mRotateParent:Lcom/smartisanos/smengine/SceneNode;

    iget-object v9, p0, Lcom/smartisanos/launcher/view/StatusBar;->mNodes:[Lcom/smartisanos/launcher/view/StatusBar;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 418
    iget-object v8, p0, Lcom/smartisanos/launcher/view/StatusBar;->mRotateParent:Lcom/smartisanos/smengine/SceneNode;

    const/4 v9, 0x0

    const/4 v10, 0x0

    neg-float v11, v2

    invoke-virtual {v8, v9, v10, v11}, Lcom/smartisanos/smengine/SceneNode;->setScaleRotatePivot(FFF)V

    .line 419
    iget-object v8, p0, Lcom/smartisanos/launcher/view/StatusBar;->mRotateParent:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {p0, v8}, Lcom/smartisanos/launcher/view/StatusBar;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 420
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/StatusBar;->updateGeometricState()V

    .line 422
    const/high16 v0, 0x42b40000    # 90.0f

    .line 423
    new-instance v1, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    iget-object v8, p0, Lcom/smartisanos/launcher/view/StatusBar;->mRotateParent:Lcom/smartisanos/smengine/SceneNode;

    invoke-direct {v1, v8}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 424
    .local v1, "animR":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    invoke-virtual {v1, p2}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 425
    new-instance v8, Lcom/smartisanos/smengine/math/Vector3f;

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {v8, v9, v10, v11}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    invoke-virtual {v1, v8}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setRotateAxis(Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 426
    const/16 v8, 0x1e

    invoke-virtual {v1, v8}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 427
    const/4 v8, 0x2

    new-instance v9, Ljava/lang/Float;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    new-instance v10, Ljava/lang/Float;

    neg-float v11, v0

    const v12, 0x3c8efa35

    mul-float/2addr v11, v12

    invoke-direct {v10, v11}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    invoke-virtual {v1, v8, v9, v10}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFF)V

    .line 429
    const/4 v8, 0x0

    invoke-virtual {v7, v8, v1}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 430
    if-eqz v3, :cond_6

    .line 431
    const/4 v8, 0x1

    sput-boolean v8, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    .line 433
    :cond_6
    iget-object v8, p0, Lcom/smartisanos/launcher/view/StatusBar;->mNodes:[Lcom/smartisanos/launcher/view/StatusBar;

    const/4 v9, 0x1

    aget-object v8, v8, v9

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/smartisanos/launcher/view/StatusBar;->setVisibility(Z)V

    .line 434
    iget-object v8, p0, Lcom/smartisanos/launcher/view/StatusBar;->mNodes:[Lcom/smartisanos/launcher/view/StatusBar;

    const/4 v9, 0x2

    aget-object v8, v8, v9

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/smartisanos/launcher/view/StatusBar;->setVisibility(Z)V

    .line 435
    sget-boolean v8, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v8, :cond_7

    .line 436
    iget-object v8, p0, Lcom/smartisanos/launcher/view/StatusBar;->mNodes:[Lcom/smartisanos/launcher/view/StatusBar;

    const/4 v9, 0x1

    aget-object v8, v8, v9

    iget-object v8, v8, Lcom/smartisanos/launcher/view/StatusBar;->mStatusbar:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v8}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Lcom/smartisanos/smengine/RenderState;->setBlendMode(I)V

    .line 438
    :cond_7
    if-eqz v4, :cond_8

    .line 439
    iget-object v8, p0, Lcom/smartisanos/launcher/view/StatusBar;->mNodes:[Lcom/smartisanos/launcher/view/StatusBar;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    iget-object v8, v8, Lcom/smartisanos/launcher/view/StatusBar;->mStatusbar:Lcom/smartisanos/smengine/RectNode;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/smartisanos/smengine/RectNode;->setIsEnableDepthTest(Z)V

    .line 441
    iget-object v8, p0, Lcom/smartisanos/launcher/view/StatusBar;->mNodes:[Lcom/smartisanos/launcher/view/StatusBar;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    iget-object v8, v8, Lcom/smartisanos/launcher/view/StatusBar;->mStatusbar:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v8}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Lcom/smartisanos/smengine/RenderState;->setBlendMode(I)V

    .line 443
    :cond_8
    new-instance v8, Lcom/smartisanos/launcher/view/StatusBar$3;

    invoke-direct {v8, p0}, Lcom/smartisanos/launcher/view/StatusBar$3;-><init>(Lcom/smartisanos/launcher/view/StatusBar;)V

    invoke-virtual {v1, v8}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 475
    .end local v0    # "angle":F
    .end local v1    # "animR":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    .end local v2    # "halfHeight":F
    .end local v3    # "isNewGaussianTheme":Z
    .end local v4    # "isOldThemeGaussian":Z
    .end local v5    # "rotate180Node":Lcom/smartisanos/smengine/SceneNode;
    .end local v6    # "rotate90Node":Lcom/smartisanos/smengine/SceneNode;
    .end local v7    # "timeline":Lcom/smartisanos/smengine/AnimationTimeLine;
    :goto_0
    return-object v7

    :cond_9
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public getGaussianBackAnimForIconSort(ZF)Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    .locals 25
    .param p1, "show"    # Z
    .param p2, "du"    # F

    .prologue
    .line 140
    const-string v20, "statusgaussian_two.texture.cell"

    .line 141
    .local v20, "meshName":Ljava/lang/String;
    if-nez p1, :cond_2

    .line 142
    sget v2, Lcom/smartisanos/launcher/data/Constants;->status_bar_height:I

    int-to-float v7, v2

    .line 143
    .local v7, "height":F
    sget v2, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v6, v2

    .line 144
    .local v6, "width":F
    const-string v2, "background"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v2, v6, v7, v3, v4}, Lcom/smartisanos/smengine/RectNode;->createSimpleTextureRect(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/RectNode;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/smartisanos/launcher/view/StatusBar;->mGaussianBackRect:Lcom/smartisanos/smengine/RectNode;

    .line 146
    const-string v2, "TextureModularColorMaterial"

    invoke-static {v2}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v19

    .line 147
    .local v19, "m":Lcom/smartisanos/smengine/mymaterial/Material;
    sget-boolean v2, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v2, :cond_0

    .line 148
    const-string v2, "TwoTexDifferentTexcoordMaterial"

    invoke-static {v2}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v19

    .line 150
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/view/StatusBar;->mGaussianBackRect:Lcom/smartisanos/smengine/RectNode;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/smartisanos/smengine/RectNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 151
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/view/StatusBar;->mGaussianBackRect:Lcom/smartisanos/smengine/RectNode;

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3, v4, v10, v12}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 152
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/view/StatusBar;->mGaussianBackRect:Lcom/smartisanos/smengine/RectNode;

    const-string v3, "t_blur_background"

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/RectNode;->setImageName(Ljava/lang/String;)V

    .line 153
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/view/StatusBar;->mGaussianBackRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/RenderState;->setIsUseVBO(Z)V

    .line 155
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/view/StatusBar;->mGaussianBackRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/RenderState;->setIsEnableBlend(Z)V

    .line 156
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/view/StatusBar;->mGaussianBackRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/RenderState;->setIsPolygonOffset(Z)V

    .line 157
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/view/StatusBar;->mGaussianBackRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v2

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, -0x40000000    # -2.0f

    invoke-virtual {v2, v3, v4}, Lcom/smartisanos/smengine/RenderState;->setPolygonOffsetFactorUnits(FF)V

    .line 158
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/view/StatusBar;->mGaussianBackRect:Lcom/smartisanos/smengine/RectNode;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    .line 159
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/view/StatusBar;->mGaussianBackRect:Lcom/smartisanos/smengine/RectNode;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/StatusBar;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 160
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/view/StatusBar;->mGaussianBackRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/RectNode;->updateGeometricState()V

    .line 161
    invoke-static {}, Lcom/smartisanos/launcher/view/LayerManager;->getInstance()Lcom/smartisanos/launcher/view/LayerManager;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/StatusBar;->getLayStatus()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/view/LayerManager;->getStatusBarLayer(I)Lcom/smartisanos/launcher/view/LayerManager$StatusBarLayer;

    move-result-object v24

    .line 162
    .local v24, "statusBarLayer":Lcom/smartisanos/launcher/view/LayerManager$StatusBarLayer;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/view/StatusBar;->mGaussianBackRect:Lcom/smartisanos/smengine/RectNode;

    move-object/from16 v0, v24

    iget v3, v0, Lcom/smartisanos/launcher/view/LayerManager$StatusBarLayer;->STATUS_BAR_BG:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 163
    const/4 v5, 0x0

    .line 164
    .local v5, "flip":Z
    move-object/from16 v22, p0

    .line 165
    .local v22, "node":Lcom/smartisanos/smengine/SceneNode;
    new-instance v23, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct/range {v23 .. v23}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 166
    .local v23, "pos":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-virtual/range {v22 .. v23}, Lcom/smartisanos/smengine/SceneNode;->getWorldTranslate(Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 167
    const/16 v2, 0x8

    new-array v8, v2, [F

    .line 168
    .local v8, "uvStatus":[F
    move-object/from16 v0, v23

    iget v2, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move-object/from16 v0, v23

    iget v3, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move-object/from16 v0, v23

    iget v4, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-static/range {v2 .. v8}, Lcom/smartisanos/launcher/data/Utils;->getUVOnScreen(FFFZFF[F)V

    .line 169
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/World;->getMeshManager()Lcom/smartisanos/smengine/MeshManager;

    move-result-object v2

    const-string v3, "statusgaussian_two.texture.cell"

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/MeshManager;->getMesh(Ljava/lang/String;)Lcom/smartisanos/smengine/Mesh;

    move-result-object v21

    .line 170
    .local v21, "newMesh":Lcom/smartisanos/smengine/Mesh;
    if-nez v21, :cond_1

    .line 171
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/view/StatusBar;->mGaussianBackRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/RectNode;->getMesh()Lcom/smartisanos/smengine/Mesh;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/Mesh;->clone()Lcom/smartisanos/smengine/Mesh;

    move-result-object v21

    .line 172
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/view/StatusBar;->mGaussianBackRect:Lcom/smartisanos/smengine/RectNode;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Lcom/smartisanos/smengine/RectNode;->setMesh(Lcom/smartisanos/smengine/Mesh;)V

    .line 173
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/World;->getMeshManager()Lcom/smartisanos/smengine/MeshManager;

    move-result-object v2

    const-string v3, "statusgaussian_two.texture.cell"

    move-object/from16 v0, v21

    invoke-virtual {v2, v3, v0}, Lcom/smartisanos/smengine/MeshManager;->addMesh(Ljava/lang/String;Lcom/smartisanos/smengine/Mesh;)Lcom/smartisanos/smengine/Mesh;

    .line 175
    :cond_1
    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/Mesh;->getTexVertexArray(I)[F

    move-result-object v2

    if-nez v2, :cond_4

    .line 176
    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v8}, Lcom/smartisanos/smengine/Mesh;->setTexVertexArray(I[F)V

    .line 181
    .end local v5    # "flip":Z
    .end local v6    # "width":F
    .end local v7    # "height":F
    .end local v8    # "uvStatus":[F
    .end local v19    # "m":Lcom/smartisanos/smengine/mymaterial/Material;
    .end local v21    # "newMesh":Lcom/smartisanos/smengine/Mesh;
    .end local v22    # "node":Lcom/smartisanos/smengine/SceneNode;
    .end local v23    # "pos":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v24    # "statusBarLayer":Lcom/smartisanos/launcher/view/LayerManager$StatusBarLayer;
    :cond_2
    :goto_0
    new-instance v9, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/view/StatusBar;->mGaussianBackRect:Lcom/smartisanos/smengine/RectNode;

    invoke-direct {v9, v2}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 182
    .local v9, "anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    const/high16 v11, 0x3f800000    # 1.0f

    .line 183
    .local v11, "fromC":F
    const/4 v15, 0x0

    .line 184
    .local v15, "toC":F
    if-eqz p1, :cond_3

    .line 185
    const/4 v11, 0x0

    .line 186
    const/high16 v15, 0x3f800000    # 1.0f

    .line 188
    :cond_3
    const/4 v10, 0x3

    move v12, v11

    move v13, v11

    move v14, v11

    move/from16 v16, v15

    move/from16 v17, v15

    move/from16 v18, v15

    invoke-virtual/range {v9 .. v18}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFFFF)V

    .line 190
    move/from16 v0, p2

    invoke-virtual {v9, v0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 191
    new-instance v2, Lcom/smartisanos/launcher/view/StatusBar$1;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lcom/smartisanos/launcher/view/StatusBar$1;-><init>(Lcom/smartisanos/launcher/view/StatusBar;Z)V

    invoke-virtual {v9, v2}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 203
    return-object v9

    .line 178
    .end local v9    # "anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    .end local v11    # "fromC":F
    .end local v15    # "toC":F
    .restart local v5    # "flip":Z
    .restart local v6    # "width":F
    .restart local v7    # "height":F
    .restart local v8    # "uvStatus":[F
    .restart local v19    # "m":Lcom/smartisanos/smengine/mymaterial/Material;
    .restart local v21    # "newMesh":Lcom/smartisanos/smengine/Mesh;
    .restart local v22    # "node":Lcom/smartisanos/smengine/SceneNode;
    .restart local v23    # "pos":Lcom/smartisanos/smengine/math/Vector3f;
    .restart local v24    # "statusBarLayer":Lcom/smartisanos/launcher/view/LayerManager$StatusBarLayer;
    :cond_4
    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v8}, Lcom/smartisanos/smengine/Mesh;->updateTexVertexFloatBuffer(I[F)V

    goto :goto_0
.end method

.method public getLayStatus()I
    .locals 1

    .prologue
    .line 541
    iget v0, p0, Lcom/smartisanos/launcher/view/StatusBar;->mLayerStatus:I

    return v0
.end method

.method public getStatusBar()Lcom/smartisanos/smengine/RectNode;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/smartisanos/launcher/view/StatusBar;->mStatusbar:Lcom/smartisanos/smengine/RectNode;

    return-object v0
.end method

.method public hideStatusBarText(Lcom/smartisanos/smengine/AnimationTimeLine;F)V
    .locals 12
    .param p1, "timeline"    # Lcom/smartisanos/smengine/AnimationTimeLine;
    .param p2, "duration"    # F

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    .line 217
    iget-object v1, p0, Lcom/smartisanos/launcher/view/StatusBar;->mStatusBarText:Lcom/smartisanos/launcher/view/TextView;

    if-eqz v1, :cond_0

    .line 218
    if-eqz p1, :cond_2

    .line 219
    new-instance v0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/StatusBar;->mStatusBarText:Lcom/smartisanos/launcher/view/TextView;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/TextView;->getTextView()Lcom/smartisanos/smengine/RectNode;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 220
    .local v0, "anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    invoke-virtual {v0, p2}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 221
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 222
    const/4 v1, 0x3

    move v3, v2

    move v4, v2

    move v5, v2

    move v7, v6

    move v8, v6

    move v9, v6

    invoke-virtual/range {v0 .. v9}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFFFF)V

    .line 223
    new-instance v1, Lcom/smartisanos/launcher/view/StatusBar$2;

    invoke-direct {v1, p0}, Lcom/smartisanos/launcher/view/StatusBar$2;-><init>(Lcom/smartisanos/launcher/view/StatusBar;)V

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 230
    invoke-virtual {p1, v6, v0}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 238
    .end local v0    # "anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/smartisanos/launcher/view/StatusBar;->mStatusBarLongPressText:Lcom/smartisanos/launcher/view/TextView;

    if-eqz v1, :cond_1

    .line 239
    iget-object v1, p0, Lcom/smartisanos/launcher/view/StatusBar;->mStatusBarLongPressText:Lcom/smartisanos/launcher/view/TextView;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/TextView;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 240
    iget-object v1, p0, Lcom/smartisanos/launcher/view/StatusBar;->mStatusBarLongPressText:Lcom/smartisanos/launcher/view/TextView;

    invoke-virtual {v1, v10}, Lcom/smartisanos/launcher/view/TextView;->clear(Z)V

    .line 241
    iput-object v11, p0, Lcom/smartisanos/launcher/view/StatusBar;->mStatusBarLongPressText:Lcom/smartisanos/launcher/view/TextView;

    .line 243
    :cond_1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/StatusBar;->updateGeometricState()V

    .line 245
    return-void

    .line 232
    :cond_2
    iget-object v1, p0, Lcom/smartisanos/launcher/view/StatusBar;->mStatusBarText:Lcom/smartisanos/launcher/view/TextView;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/TextView;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 233
    iget-object v1, p0, Lcom/smartisanos/launcher/view/StatusBar;->mStatusBarText:Lcom/smartisanos/launcher/view/TextView;

    invoke-virtual {v1, v10}, Lcom/smartisanos/launcher/view/TextView;->clear(Z)V

    .line 234
    iput-object v11, p0, Lcom/smartisanos/launcher/view/StatusBar;->mStatusBarText:Lcom/smartisanos/launcher/view/TextView;

    goto :goto_0
.end method

.method public hideTextOnStatusBar(Lcom/smartisanos/smengine/AnimationTimeLine;F)V
    .locals 10
    .param p1, "timeline"    # Lcom/smartisanos/smengine/AnimationTimeLine;
    .param p2, "duration"    # F

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    .line 622
    iget-object v1, p0, Lcom/smartisanos/launcher/view/StatusBar;->mText:Lcom/smartisanos/launcher/view/TextView;

    if-nez v1, :cond_0

    .line 644
    :goto_0
    return-void

    .line 625
    :cond_0
    if-eqz p1, :cond_1

    .line 626
    new-instance v0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/StatusBar;->mText:Lcom/smartisanos/launcher/view/TextView;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/TextView;->getTextView()Lcom/smartisanos/smengine/RectNode;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 627
    .local v0, "anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    invoke-virtual {v0, p2}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 628
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 629
    const/4 v1, 0x3

    move v3, v2

    move v4, v2

    move v5, v2

    move v7, v6

    move v8, v6

    move v9, v6

    invoke-virtual/range {v0 .. v9}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFFFF)V

    .line 630
    new-instance v1, Lcom/smartisanos/launcher/view/StatusBar$4;

    invoke-direct {v1, p0}, Lcom/smartisanos/launcher/view/StatusBar$4;-><init>(Lcom/smartisanos/launcher/view/StatusBar;)V

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 637
    invoke-virtual {p1, v6, v0}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 643
    .end local v0    # "anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    :goto_1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/StatusBar;->updateGeometricState()V

    goto :goto_0

    .line 639
    :cond_1
    iget-object v1, p0, Lcom/smartisanos/launcher/view/StatusBar;->mText:Lcom/smartisanos/launcher/view/TextView;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/TextView;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 640
    iget-object v1, p0, Lcom/smartisanos/launcher/view/StatusBar;->mText:Lcom/smartisanos/launcher/view/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/view/TextView;->clear(Z)V

    .line 641
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/smartisanos/launcher/view/StatusBar;->mText:Lcom/smartisanos/launcher/view/TextView;

    goto :goto_1
.end method

.method public removeChangeThemeNode()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    .line 489
    sget-boolean v5, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v5, :cond_2

    .line 490
    iget-object v5, p0, Lcom/smartisanos/launcher/view/StatusBar;->mStatusbar:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v5}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/smartisanos/smengine/RenderState;->setIsEnableBlend(Z)V

    .line 491
    const-string v5, "TwoTexDifferentTexcoordMaterial"

    invoke-static {v5}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v1

    .line 492
    .local v1, "m":Lcom/smartisanos/smengine/mymaterial/Material;
    iget-object v5, p0, Lcom/smartisanos/launcher/view/StatusBar;->mStatusbar:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v5, v1}, Lcom/smartisanos/smengine/RectNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 493
    iget-object v5, p0, Lcom/smartisanos/launcher/view/StatusBar;->mStatusbar:Lcom/smartisanos/smengine/RectNode;

    const-string v6, "status_bar.png"

    invoke-static {v6}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v9, v6}, Lcom/smartisanos/smengine/RectNode;->setTextureName(ILjava/lang/String;)V

    .line 494
    iget-object v5, p0, Lcom/smartisanos/launcher/view/StatusBar;->mStatusbar:Lcom/smartisanos/smengine/RectNode;

    const-string v6, "t_blur_background"

    invoke-virtual {v5, v7, v6}, Lcom/smartisanos/smengine/RectNode;->setTextureName(ILjava/lang/String;)V

    .line 495
    iget-object v5, p0, Lcom/smartisanos/launcher/view/StatusBar;->mStatusbar:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v5}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/smartisanos/smengine/RenderState;->setIsUseVBO(Z)V

    .line 496
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/StatusBar;->updateUV()V

    .line 508
    .end local v1    # "m":Lcom/smartisanos/smengine/mymaterial/Material;
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/smartisanos/launcher/view/StatusBar;->mNodes:[Lcom/smartisanos/launcher/view/StatusBar;

    if-eqz v5, :cond_3

    .line 509
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v5, p0, Lcom/smartisanos/launcher/view/StatusBar;->mNodes:[Lcom/smartisanos/launcher/view/StatusBar;

    array-length v5, v5

    if-ge v0, v5, :cond_3

    .line 510
    iget-object v5, p0, Lcom/smartisanos/launcher/view/StatusBar;->mNodes:[Lcom/smartisanos/launcher/view/StatusBar;

    aget-object v5, v5, v0

    if-eqz v5, :cond_1

    .line 511
    iget-object v5, p0, Lcom/smartisanos/launcher/view/StatusBar;->mNodes:[Lcom/smartisanos/launcher/view/StatusBar;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/StatusBar;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 512
    iget-object v5, p0, Lcom/smartisanos/launcher/view/StatusBar;->mNodes:[Lcom/smartisanos/launcher/view/StatusBar;

    aget-object v5, v5, v0

    invoke-virtual {v5, v7}, Lcom/smartisanos/launcher/view/StatusBar;->clear(Z)V

    .line 513
    iget-object v5, p0, Lcom/smartisanos/launcher/view/StatusBar;->mNodes:[Lcom/smartisanos/launcher/view/StatusBar;

    aput-object v8, v5, v0

    .line 509
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 498
    .end local v0    # "i":I
    :cond_2
    iget-object v5, p0, Lcom/smartisanos/launcher/view/StatusBar;->mStatusbar:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v5}, Lcom/smartisanos/smengine/RectNode;->getMaterial()Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v5

    instance-of v5, v5, Lcom/smartisanos/smengine/mymaterial/TwoTextureDifferentTexCoordMaterial;

    if-eqz v5, :cond_0

    .line 499
    iget-object v5, p0, Lcom/smartisanos/launcher/view/StatusBar;->mStatusbar:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v5}, Lcom/smartisanos/smengine/RectNode;->getMesh()Lcom/smartisanos/smengine/Mesh;

    move-result-object v2

    .line 500
    .local v2, "mesh":Lcom/smartisanos/smengine/Mesh;
    const/4 v5, 0x3

    invoke-virtual {v2, v5, v8}, Lcom/smartisanos/smengine/Mesh;->setTexVertexArray(I[F)V

    .line 501
    const-string v5, "TextureModularColorMaterial"

    invoke-static {v5}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v1

    .line 502
    .restart local v1    # "m":Lcom/smartisanos/smengine/mymaterial/Material;
    iget-object v5, p0, Lcom/smartisanos/launcher/view/StatusBar;->mStatusbar:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v5, v1}, Lcom/smartisanos/smengine/RectNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 503
    iget-object v5, p0, Lcom/smartisanos/launcher/view/StatusBar;->mStatusbar:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v5, v6, v6, v6, v6}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 504
    iget-object v5, p0, Lcom/smartisanos/launcher/view/StatusBar;->mStatusbar:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v5, v7, v8}, Lcom/smartisanos/smengine/RectNode;->setTextureName(ILjava/lang/String;)V

    .line 505
    iget-object v5, p0, Lcom/smartisanos/launcher/view/StatusBar;->mStatusbar:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v5}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/smartisanos/smengine/RenderState;->setIsUseVBO(Z)V

    goto :goto_0

    .line 517
    .end local v1    # "m":Lcom/smartisanos/smengine/mymaterial/Material;
    .end local v2    # "mesh":Lcom/smartisanos/smengine/Mesh;
    :cond_3
    iget-object v5, p0, Lcom/smartisanos/launcher/view/StatusBar;->mRotateParent:Lcom/smartisanos/smengine/SceneNode;

    if-eqz v5, :cond_4

    .line 518
    iget-object v5, p0, Lcom/smartisanos/launcher/view/StatusBar;->mRotateParent:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v5}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 519
    iget-object v5, p0, Lcom/smartisanos/launcher/view/StatusBar;->mRotateParent:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v5, v7}, Lcom/smartisanos/smengine/SceneNode;->clear(Z)V

    .line 520
    iput-object v8, p0, Lcom/smartisanos/launcher/view/StatusBar;->mRotateParent:Lcom/smartisanos/smengine/SceneNode;

    .line 522
    :cond_4
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/smengine/World;->getTextureManager()Lcom/smartisanos/smengine/TextureManager;

    move-result-object v4

    .line 523
    .local v4, "tm":Lcom/smartisanos/smengine/TextureManager;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "target/--/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "status_bar.png"

    .line 524
    invoke-static {v6}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 523
    invoke-virtual {v4, v5}, Lcom/smartisanos/smengine/TextureManager;->getTexture(Ljava/lang/String;)Lcom/smartisanos/smengine/Texture;

    move-result-object v3

    .line 525
    .local v3, "texturenew":Lcom/smartisanos/smengine/Texture;
    const-string v5, "status_bar.png"

    invoke-static {v5}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/smartisanos/smengine/TextureManager;->deleteTexture(Ljava/lang/String;)V

    .line 526
    const-string v5, "status_bar.png"

    invoke-static {v5}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lcom/smartisanos/smengine/TextureManager;->setTexture(Ljava/lang/String;Lcom/smartisanos/smengine/Texture;)V

    .line 527
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "target/--/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "status_bar.png"

    .line 528
    invoke-static {v6}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 527
    invoke-virtual {v4, v5}, Lcom/smartisanos/smengine/TextureManager;->removeTexture(Ljava/lang/String;)V

    .line 529
    iget-object v5, p0, Lcom/smartisanos/launcher/view/StatusBar;->mStatusbar:Lcom/smartisanos/smengine/RectNode;

    const-string v6, "status_bar.png"

    invoke-static {v6}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/smartisanos/smengine/RectNode;->setImageName(Ljava/lang/String;)V

    .line 530
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/smengine/World;->updateGLView()V

    .line 531
    return-void
.end method

.method public setColor(FFFF)V
    .locals 1
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F
    .param p4, "a"    # F

    .prologue
    .line 535
    iget-object v0, p0, Lcom/smartisanos/launcher/view/StatusBar;->mStatusbar:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 536
    return-void
.end method

.method public setLayerStatus(I)V
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 545
    iget v0, p0, Lcom/smartisanos/launcher/view/StatusBar;->mLayerStatus:I

    if-eq v0, p1, :cond_0

    .line 546
    iput p1, p0, Lcom/smartisanos/launcher/view/StatusBar;->mLayerStatus:I

    .line 547
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/StatusBar;->updateLayer()V

    .line 549
    :cond_0
    return-void
.end method

.method public setLongPressBarText()V
    .locals 15

    .prologue
    .line 248
    sget v0, Lcom/smartisanos/launcher/data/Constants;->status_bar_height:I

    int-to-float v7, v0

    .line 249
    .local v7, "height":F
    sget v0, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v12, v0

    .line 250
    .local v12, "width":F
    sget v0, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    int-to-float v8, v0

    .line 252
    .local v8, "screenH":F
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    sget v1, Lcom/smartisanos/launcher/ResIds$string;->selected_back:I

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/MainView;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 255
    .local v2, "s":Ljava/lang/String;
    new-instance v0, Lcom/smartisanos/launcher/view/TextView;

    const-string v1, "status_bar_long_press_text"

    const/4 v3, 0x0

    sget-object v4, Lcom/smartisanos/launcher/view/TextView;->sMultiSlectPaint:Landroid/graphics/Paint;

    float-to-int v5, v12

    float-to-int v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/smartisanos/launcher/view/TextView;-><init>(Ljava/lang/String;Ljava/lang/String;FLandroid/graphics/Paint;II)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/StatusBar;->mStatusBarLongPressText:Lcom/smartisanos/launcher/view/TextView;

    .line 257
    iget-object v0, p0, Lcom/smartisanos/launcher/view/StatusBar;->mStatusBarLongPressText:Lcom/smartisanos/launcher/view/TextView;

    if-eqz v0, :cond_0

    .line 260
    invoke-static {}, Lcom/smartisanos/smengine/util/TempVars;->get()Lcom/smartisanos/smengine/util/TempVars;

    move-result-object v10

    .line 261
    .local v10, "tmpVar":Lcom/smartisanos/smengine/util/TempVars;
    iget-object v11, v10, Lcom/smartisanos/smengine/util/TempVars;->vect1:Lcom/smartisanos/smengine/math/Vector3f;

    .line 262
    .local v11, "v":Lcom/smartisanos/smengine/math/Vector3f;
    const/high16 v0, 0x40000000    # 2.0f

    div-float v13, v12, v0

    .line 263
    .local v13, "x":F
    const/high16 v0, 0x40000000    # 2.0f

    div-float v14, v7, v0

    .line 264
    .local v14, "y":F
    invoke-static {v13, v14, v12, v8, v11}, Lcom/smartisanos/smengine/util/GeomUtil;->convertLeftTopPointToMidPointCoordinate(FFFFLcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    .line 265
    iget-object v0, p0, Lcom/smartisanos/launcher/view/StatusBar;->mStatusBarLongPressText:Lcom/smartisanos/launcher/view/TextView;

    iget v1, v11, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v4}, Lcom/smartisanos/launcher/view/TextView;->setTranslate(FFF)V

    .line 266
    invoke-virtual {v10}, Lcom/smartisanos/smengine/util/TempVars;->release()V

    .line 267
    iget-object v0, p0, Lcom/smartisanos/launcher/view/StatusBar;->mStatusBarLongPressText:Lcom/smartisanos/launcher/view/TextView;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/TextView;->updateGeometricState()V

    .line 270
    .end local v10    # "tmpVar":Lcom/smartisanos/smengine/util/TempVars;
    .end local v11    # "v":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v13    # "x":F
    .end local v14    # "y":F
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/StatusBar;->mStatusBarLongPressText:Lcom/smartisanos/launcher/view/TextView;

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/StatusBar;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 271
    iget-object v0, p0, Lcom/smartisanos/launcher/view/StatusBar;->mStatusBarLongPressText:Lcom/smartisanos/launcher/view/TextView;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/TextView;->updateGeometricState()V

    .line 272
    iget-object v0, p0, Lcom/smartisanos/launcher/view/StatusBar;->mStatusBarLongPressText:Lcom/smartisanos/launcher/view/TextView;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/TextView;->getTextView()Lcom/smartisanos/smengine/RectNode;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(IZ)V

    .line 273
    invoke-static {}, Lcom/smartisanos/launcher/view/LayerManager;->getInstance()Lcom/smartisanos/launcher/view/LayerManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/StatusBar;->getLayStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/LayerManager;->getStatusBarLayer(I)Lcom/smartisanos/launcher/view/LayerManager$StatusBarLayer;

    move-result-object v9

    .line 274
    .local v9, "statusBarLayer":Lcom/smartisanos/launcher/view/LayerManager$StatusBarLayer;
    iget-object v0, p0, Lcom/smartisanos/launcher/view/StatusBar;->mStatusBarLongPressText:Lcom/smartisanos/launcher/view/TextView;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/TextView;->getTextView()Lcom/smartisanos/smengine/RectNode;

    move-result-object v0

    iget v1, v9, Lcom/smartisanos/launcher/view/LayerManager$StatusBarLayer;->STATUS_BAR_TEXT:I

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 275
    return-void
.end method

.method public setUseStaticGaussian(Z)V
    .locals 6
    .param p1, "use"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 118
    const/4 v0, 0x0

    .line 119
    .local v0, "m":Lcom/smartisanos/smengine/mymaterial/Material;
    if-eqz p1, :cond_0

    .line 120
    const-string v1, "TwoTexDifferentTexcoordMaterial"

    invoke-static {v1}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v0

    .line 121
    iget-object v1, p0, Lcom/smartisanos/launcher/view/StatusBar;->mStatusbar:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/RectNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 122
    iget-object v1, p0, Lcom/smartisanos/launcher/view/StatusBar;->mStatusbar:Lcom/smartisanos/smengine/RectNode;

    const-string v2, "status_bar.png"

    invoke-static {v2}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lcom/smartisanos/smengine/RectNode;->setTextureName(ILjava/lang/String;)V

    .line 123
    iget-object v1, p0, Lcom/smartisanos/launcher/view/StatusBar;->mStatusbar:Lcom/smartisanos/smengine/RectNode;

    const-string v2, "t_blur_background"

    invoke-virtual {v1, v3, v2}, Lcom/smartisanos/smengine/RectNode;->setTextureName(ILjava/lang/String;)V

    .line 124
    iget-object v1, p0, Lcom/smartisanos/launcher/view/StatusBar;->mStatusbar:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/smartisanos/smengine/RenderState;->setIsUseVBO(Z)V

    .line 125
    iget-object v1, p0, Lcom/smartisanos/launcher/view/StatusBar;->mStatusbar:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v1, v4}, Lcom/smartisanos/smengine/RectNode;->setIsEnableBlend(Z)V

    .line 126
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/StatusBar;->updateUV()V

    .line 137
    :goto_0
    return-void

    .line 128
    :cond_0
    const-string v1, "TextureModularColorMaterial"

    invoke-static {v1}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v0

    .line 129
    iget-object v1, p0, Lcom/smartisanos/launcher/view/StatusBar;->mStatusbar:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/RectNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 130
    iget-object v1, p0, Lcom/smartisanos/launcher/view/StatusBar;->mStatusbar:Lcom/smartisanos/smengine/RectNode;

    const-string v2, "status_bar.png"

    invoke-static {v2}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/RectNode;->setImageName(Ljava/lang/String;)V

    .line 131
    iget-object v1, p0, Lcom/smartisanos/launcher/view/StatusBar;->mStatusbar:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v1, v3, v5}, Lcom/smartisanos/smengine/RectNode;->setTextureName(ILjava/lang/String;)V

    .line 132
    iget-object v1, p0, Lcom/smartisanos/launcher/view/StatusBar;->mStatusbar:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/RectNode;->getMesh()Lcom/smartisanos/smengine/Mesh;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v5}, Lcom/smartisanos/smengine/Mesh;->setTexVertexArray(I[F)V

    .line 133
    iget-object v1, p0, Lcom/smartisanos/launcher/view/StatusBar;->mStatusbar:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/RenderState;->setIsUseVBO(Z)V

    .line 134
    iget-object v1, p0, Lcom/smartisanos/launcher/view/StatusBar;->mStatusbar:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/RectNode;->setIsEnableBlend(Z)V

    .line 135
    iget-object v1, p0, Lcom/smartisanos/launcher/view/StatusBar;->mStatusbar:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/RenderState;->setBlendMode(I)V

    goto :goto_0
.end method

.method public showStatusBarText(Lcom/smartisanos/smengine/AnimationTimeLine;FI)V
    .locals 26
    .param p1, "timeline"    # Lcom/smartisanos/smengine/AnimationTimeLine;
    .param p2, "duration"    # F
    .param p3, "selectedAppCount"    # I

    .prologue
    .line 278
    sget v5, Lcom/smartisanos/launcher/data/Constants;->status_bar_height:I

    int-to-float v0, v5

    move/from16 v18, v0

    .line 279
    .local v18, "height":F
    sget v5, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v0, v5

    move/from16 v23, v0

    .line 280
    .local v23, "width":F
    sget v5, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    int-to-float v0, v5

    move/from16 v19, v0

    .line 282
    .local v19, "screenH":F
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v5

    sget v6, Lcom/smartisanos/launcher/ResIds$string;->multi_select_in_mode:I

    invoke-virtual {v5, v6}, Lcom/smartisanos/launcher/view/MainView;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 283
    .local v7, "s":Ljava/lang/String;
    sget v5, Lcom/smartisanos/launcher/data/Constants;->sPageStyle:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 284
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v6

    const/4 v6, 0x1

    const/16 v9, 0x9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v6

    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 291
    :goto_0
    new-instance v5, Lcom/smartisanos/launcher/view/TextView;

    const-string v6, "status_bar_text"

    const/4 v8, 0x0

    sget-object v9, Lcom/smartisanos/launcher/view/TextView;->sMultiSlectPaint:Landroid/graphics/Paint;

    move/from16 v0, v23

    float-to-int v10, v0

    move/from16 v0, v18

    float-to-int v11, v0

    invoke-direct/range {v5 .. v11}, Lcom/smartisanos/launcher/view/TextView;-><init>(Ljava/lang/String;Ljava/lang/String;FLandroid/graphics/Paint;II)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/smartisanos/launcher/view/StatusBar;->mStatusBarText:Lcom/smartisanos/launcher/view/TextView;

    .line 293
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/StatusBar;->mStatusBarText:Lcom/smartisanos/launcher/view/TextView;

    if-eqz v5, :cond_0

    .line 296
    invoke-static {}, Lcom/smartisanos/smengine/util/TempVars;->get()Lcom/smartisanos/smengine/util/TempVars;

    move-result-object v21

    .line 297
    .local v21, "tmpVar":Lcom/smartisanos/smengine/util/TempVars;
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/smartisanos/smengine/util/TempVars;->vect1:Lcom/smartisanos/smengine/math/Vector3f;

    move-object/from16 v22, v0

    .line 298
    .local v22, "v":Lcom/smartisanos/smengine/math/Vector3f;
    const/high16 v5, 0x40000000    # 2.0f

    div-float v24, v23, v5

    .line 299
    .local v24, "x":F
    const/high16 v5, 0x40000000    # 2.0f

    div-float v25, v18, v5

    .line 300
    .local v25, "y":F
    move/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v23

    move/from16 v3, v19

    move-object/from16 v4, v22

    invoke-static {v0, v1, v2, v3, v4}, Lcom/smartisanos/smengine/util/GeomUtil;->convertLeftTopPointToMidPointCoordinate(FFFFLcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    .line 301
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/StatusBar;->mStatusBarText:Lcom/smartisanos/launcher/view/TextView;

    move-object/from16 v0, v22

    iget v6, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v5, v6, v9, v10}, Lcom/smartisanos/launcher/view/TextView;->setTranslate(FFF)V

    .line 302
    invoke-virtual/range {v21 .. v21}, Lcom/smartisanos/smengine/util/TempVars;->release()V

    .line 303
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/StatusBar;->mStatusBarText:Lcom/smartisanos/launcher/view/TextView;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/TextView;->updateGeometricState()V

    .line 306
    .end local v21    # "tmpVar":Lcom/smartisanos/smengine/util/TempVars;
    .end local v22    # "v":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v24    # "x":F
    .end local v25    # "y":F
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/StatusBar;->mStatusBarText:Lcom/smartisanos/launcher/view/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/smartisanos/launcher/view/StatusBar;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 307
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/StatusBar;->mStatusBarText:Lcom/smartisanos/launcher/view/TextView;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/TextView;->updateGeometricState()V

    .line 308
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/StatusBar;->mStatusBarText:Lcom/smartisanos/launcher/view/TextView;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/TextView;->getTextView()Lcom/smartisanos/smengine/RectNode;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v9, 0x1

    invoke-virtual {v5, v6, v9}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(IZ)V

    .line 309
    if-eqz p1, :cond_1

    .line 310
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/StatusBar;->mStatusBarText:Lcom/smartisanos/launcher/view/TextView;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/TextView;->getTextView()Lcom/smartisanos/smengine/RectNode;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v5, v6, v9, v10, v11}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 311
    new-instance v8, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/StatusBar;->mStatusBarText:Lcom/smartisanos/launcher/view/TextView;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/TextView;->getTextView()Lcom/smartisanos/smengine/RectNode;

    move-result-object v5

    invoke-direct {v8, v5}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 312
    .local v8, "anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    move/from16 v0, p2

    invoke-virtual {v8, v0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 313
    const/16 v5, 0xd

    invoke-virtual {v8, v5}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 314
    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    const/high16 v17, 0x3f800000    # 1.0f

    invoke-virtual/range {v8 .. v17}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFFFF)V

    .line 315
    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v8}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 317
    .end local v8    # "anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/view/LayerManager;->getInstance()Lcom/smartisanos/launcher/view/LayerManager;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/StatusBar;->getLayStatus()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/smartisanos/launcher/view/LayerManager;->getStatusBarLayer(I)Lcom/smartisanos/launcher/view/LayerManager$StatusBarLayer;

    move-result-object v20

    .line 318
    .local v20, "statusBarLayer":Lcom/smartisanos/launcher/view/LayerManager$StatusBarLayer;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/StatusBar;->mStatusBarText:Lcom/smartisanos/launcher/view/TextView;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/TextView;->getTextView()Lcom/smartisanos/smengine/RectNode;

    move-result-object v5

    move-object/from16 v0, v20

    iget v6, v0, Lcom/smartisanos/launcher/view/LayerManager$StatusBarLayer;->STATUS_BAR_TEXT:I

    invoke-virtual {v5, v6}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 319
    return-void

    .line 285
    .end local v20    # "statusBarLayer":Lcom/smartisanos/launcher/view/LayerManager$StatusBarLayer;
    :cond_2
    sget v5, Lcom/smartisanos/launcher/data/Constants;->sPageStyle:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    .line 286
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v6

    const/4 v6, 0x1

    const/16 v9, 0x10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v6

    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 288
    :cond_3
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v9, -0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v6

    const/4 v6, 0x1

    const/4 v9, -0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v6

    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0
.end method

.method public showTextOnStatusBar(Lcom/smartisanos/smengine/AnimationTimeLine;FLjava/lang/String;)V
    .locals 22
    .param p1, "timeline"    # Lcom/smartisanos/smengine/AnimationTimeLine;
    .param p2, "duration"    # F
    .param p3, "text"    # Ljava/lang/String;

    .prologue
    .line 582
    if-eqz p3, :cond_0

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 619
    :cond_0
    :goto_0
    return-void

    .line 585
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/StatusBar;->mText:Lcom/smartisanos/launcher/view/TextView;

    if-eqz v5, :cond_2

    .line 586
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/smartisanos/launcher/view/StatusBar;->hideTextOnStatusBar(Lcom/smartisanos/smengine/AnimationTimeLine;F)V

    .line 588
    :cond_2
    sget v5, Lcom/smartisanos/launcher/data/Constants;->status_bar_height:I

    int-to-float v14, v5

    .line 589
    .local v14, "height":F
    sget v5, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v0, v5

    move/from16 v19, v0

    .line 590
    .local v19, "width":F
    sget v5, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    int-to-float v15, v5

    .line 591
    .local v15, "screenH":F
    new-instance v4, Lcom/smartisanos/launcher/view/TextView;

    const-string v5, "status_bar_center_text"

    const/4 v7, 0x0

    sget-object v8, Lcom/smartisanos/launcher/view/TextView;->sMultiSlectPaint:Landroid/graphics/Paint;

    move/from16 v0, v19

    float-to-int v9, v0

    float-to-int v10, v14

    move-object/from16 v6, p3

    invoke-direct/range {v4 .. v10}, Lcom/smartisanos/launcher/view/TextView;-><init>(Ljava/lang/String;Ljava/lang/String;FLandroid/graphics/Paint;II)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/smartisanos/launcher/view/StatusBar;->mText:Lcom/smartisanos/launcher/view/TextView;

    .line 593
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/StatusBar;->mText:Lcom/smartisanos/launcher/view/TextView;

    if-eqz v5, :cond_3

    .line 596
    invoke-static {}, Lcom/smartisanos/smengine/util/TempVars;->get()Lcom/smartisanos/smengine/util/TempVars;

    move-result-object v17

    .line 597
    .local v17, "tmpVar":Lcom/smartisanos/smengine/util/TempVars;
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/smartisanos/smengine/util/TempVars;->vect1:Lcom/smartisanos/smengine/math/Vector3f;

    move-object/from16 v18, v0

    .line 598
    .local v18, "v":Lcom/smartisanos/smengine/math/Vector3f;
    const/high16 v5, 0x40000000    # 2.0f

    div-float v20, v19, v5

    .line 599
    .local v20, "x":F
    const/high16 v5, 0x40000000    # 2.0f

    div-float v21, v14, v5

    .line 600
    .local v21, "y":F
    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v19

    move-object/from16 v3, v18

    invoke-static {v0, v1, v2, v15, v3}, Lcom/smartisanos/smengine/util/GeomUtil;->convertLeftTopPointToMidPointCoordinate(FFFFLcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    .line 601
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/StatusBar;->mText:Lcom/smartisanos/launcher/view/TextView;

    move-object/from16 v0, v18

    iget v6, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Lcom/smartisanos/launcher/view/TextView;->setTranslate(FFF)V

    .line 602
    invoke-virtual/range {v17 .. v17}, Lcom/smartisanos/smengine/util/TempVars;->release()V

    .line 603
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/StatusBar;->mText:Lcom/smartisanos/launcher/view/TextView;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/TextView;->updateGeometricState()V

    .line 606
    .end local v17    # "tmpVar":Lcom/smartisanos/smengine/util/TempVars;
    .end local v18    # "v":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v20    # "x":F
    .end local v21    # "y":F
    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/StatusBar;->mText:Lcom/smartisanos/launcher/view/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/smartisanos/launcher/view/StatusBar;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 607
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/StatusBar;->mText:Lcom/smartisanos/launcher/view/TextView;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/TextView;->updateGeometricState()V

    .line 608
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/StatusBar;->mText:Lcom/smartisanos/launcher/view/TextView;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/TextView;->getTextView()Lcom/smartisanos/smengine/RectNode;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(IZ)V

    .line 609
    if-eqz p1, :cond_4

    .line 610
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/StatusBar;->mText:Lcom/smartisanos/launcher/view/TextView;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/TextView;->getTextView()Lcom/smartisanos/smengine/RectNode;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 611
    new-instance v4, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/StatusBar;->mText:Lcom/smartisanos/launcher/view/TextView;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/TextView;->getTextView()Lcom/smartisanos/smengine/RectNode;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 612
    .local v4, "anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    move/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 613
    const/16 v5, 0xd

    invoke-virtual {v4, v5}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 614
    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-virtual/range {v4 .. v13}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFFFF)V

    .line 615
    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v4}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 617
    .end local v4    # "anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    :cond_4
    invoke-static {}, Lcom/smartisanos/launcher/view/LayerManager;->getInstance()Lcom/smartisanos/launcher/view/LayerManager;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/StatusBar;->getLayStatus()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/smartisanos/launcher/view/LayerManager;->getStatusBarLayer(I)Lcom/smartisanos/launcher/view/LayerManager$StatusBarLayer;

    move-result-object v16

    .line 618
    .local v16, "statusBarLayer":Lcom/smartisanos/launcher/view/LayerManager$StatusBarLayer;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/StatusBar;->mText:Lcom/smartisanos/launcher/view/TextView;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/TextView;->getTextView()Lcom/smartisanos/smengine/RectNode;

    move-result-object v5

    move-object/from16 v0, v16

    iget v6, v0, Lcom/smartisanos/launcher/view/LayerManager$StatusBarLayer;->STATUS_BAR_TEXT:I

    invoke-virtual {v5, v6}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    goto/16 :goto_0
.end method

.method public updateLayer()V
    .locals 3

    .prologue
    .line 553
    invoke-super {p0}, Lcom/smartisanos/smengine/SceneNode;->updateLayer()V

    .line 554
    invoke-static {}, Lcom/smartisanos/launcher/view/LayerManager;->getInstance()Lcom/smartisanos/launcher/view/LayerManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/StatusBar;->getLayStatus()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/view/LayerManager;->getStatusBarLayer(I)Lcom/smartisanos/launcher/view/LayerManager$StatusBarLayer;

    move-result-object v0

    .line 555
    .local v0, "statusBarLayer":Lcom/smartisanos/launcher/view/LayerManager$StatusBarLayer;
    iget-object v1, p0, Lcom/smartisanos/launcher/view/StatusBar;->mStatusbar:Lcom/smartisanos/smengine/RectNode;

    if-eqz v1, :cond_0

    .line 556
    iget-object v1, p0, Lcom/smartisanos/launcher/view/StatusBar;->mStatusbar:Lcom/smartisanos/smengine/RectNode;

    iget v2, v0, Lcom/smartisanos/launcher/view/LayerManager$StatusBarLayer;->STATUS_BAR_BG:I

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 558
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/launcher/view/StatusBar;->mStatusBarLongPressText:Lcom/smartisanos/launcher/view/TextView;

    if-eqz v1, :cond_1

    .line 560
    iget-object v1, p0, Lcom/smartisanos/launcher/view/StatusBar;->mStatusBarLongPressText:Lcom/smartisanos/launcher/view/TextView;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/TextView;->getTextView()Lcom/smartisanos/smengine/RectNode;

    move-result-object v1

    iget v2, v0, Lcom/smartisanos/launcher/view/LayerManager$StatusBarLayer;->STATUS_BAR_TEXT:I

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 562
    :cond_1
    iget-object v1, p0, Lcom/smartisanos/launcher/view/StatusBar;->mStatusBarText:Lcom/smartisanos/launcher/view/TextView;

    if-eqz v1, :cond_2

    .line 564
    iget-object v1, p0, Lcom/smartisanos/launcher/view/StatusBar;->mStatusBarText:Lcom/smartisanos/launcher/view/TextView;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/TextView;->getTextView()Lcom/smartisanos/smengine/RectNode;

    move-result-object v1

    iget v2, v0, Lcom/smartisanos/launcher/view/LayerManager$StatusBarLayer;->STATUS_BAR_TEXT:I

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 566
    :cond_2
    return-void
.end method

.method public updateStatusBarText(I)V
    .locals 2
    .param p1, "selectedAppCount"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 207
    invoke-virtual {p0, v1, v0}, Lcom/smartisanos/launcher/view/StatusBar;->hideStatusBarText(Lcom/smartisanos/smengine/AnimationTimeLine;F)V

    .line 208
    invoke-virtual {p0, v1, v0, p1}, Lcom/smartisanos/launcher/view/StatusBar;->showStatusBarText(Lcom/smartisanos/smengine/AnimationTimeLine;FI)V

    .line 209
    return-void
.end method

.method public updateUV()V
    .locals 13

    .prologue
    const/4 v12, 0x3

    .line 91
    iget-object v0, p0, Lcom/smartisanos/launcher/view/StatusBar;->mStatusbar:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->getMaterial()Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v7

    .line 92
    .local v7, "m":Lcom/smartisanos/smengine/mymaterial/Material;
    if-eqz v7, :cond_1

    instance-of v0, v7, Lcom/smartisanos/smengine/mymaterial/TwoTextureDifferentTexCoordMaterial;

    if-eqz v0, :cond_1

    .line 93
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/World;->updateGLView()V

    .line 94
    sget v0, Lcom/smartisanos/launcher/data/Constants;->status_bar_height:I

    int-to-float v5, v0

    .line 95
    .local v5, "height":F
    sget v0, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v4, v0

    .line 96
    .local v4, "width":F
    const/4 v3, 0x0

    .line 97
    .local v3, "flip":Z
    move-object v10, p0

    .line 98
    .local v10, "node":Lcom/smartisanos/smengine/SceneNode;
    new-instance v11, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v11}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 99
    .local v11, "pos":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-virtual {v10, v11}, Lcom/smartisanos/smengine/SceneNode;->getWorldTranslate(Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 100
    const/16 v0, 0x8

    new-array v6, v0, [F

    .line 101
    .local v6, "uvStatus":[F
    iget v0, v11, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v1, v11, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v2, v11, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-static/range {v0 .. v6}, Lcom/smartisanos/launcher/data/Utils;->getUVOnScreen(FFFZFF[F)V

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "statusbar_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/StatusBar;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "two.texture.cell"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 103
    .local v8, "meshName":Ljava/lang/String;
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/World;->getMeshManager()Lcom/smartisanos/smengine/MeshManager;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/smartisanos/smengine/MeshManager;->getMesh(Ljava/lang/String;)Lcom/smartisanos/smengine/Mesh;

    move-result-object v9

    .line 104
    .local v9, "newMesh":Lcom/smartisanos/smengine/Mesh;
    if-nez v9, :cond_0

    .line 105
    iget-object v0, p0, Lcom/smartisanos/launcher/view/StatusBar;->mStatusbar:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->getMesh()Lcom/smartisanos/smengine/Mesh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Mesh;->clone()Lcom/smartisanos/smengine/Mesh;

    move-result-object v9

    .line 106
    iget-object v0, p0, Lcom/smartisanos/launcher/view/StatusBar;->mStatusbar:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0, v9}, Lcom/smartisanos/smengine/RectNode;->setMesh(Lcom/smartisanos/smengine/Mesh;)V

    .line 107
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/World;->getMeshManager()Lcom/smartisanos/smengine/MeshManager;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Lcom/smartisanos/smengine/MeshManager;->addMesh(Ljava/lang/String;Lcom/smartisanos/smengine/Mesh;)Lcom/smartisanos/smengine/Mesh;

    .line 109
    :cond_0
    invoke-virtual {v9, v12}, Lcom/smartisanos/smengine/Mesh;->getTexVertexArray(I)[F

    move-result-object v0

    if-nez v0, :cond_2

    .line 110
    invoke-virtual {v9, v12, v6}, Lcom/smartisanos/smengine/Mesh;->setTexVertexArray(I[F)V

    .line 115
    .end local v3    # "flip":Z
    .end local v4    # "width":F
    .end local v5    # "height":F
    .end local v6    # "uvStatus":[F
    .end local v8    # "meshName":Ljava/lang/String;
    .end local v9    # "newMesh":Lcom/smartisanos/smengine/Mesh;
    .end local v10    # "node":Lcom/smartisanos/smengine/SceneNode;
    .end local v11    # "pos":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_1
    :goto_0
    return-void

    .line 112
    .restart local v3    # "flip":Z
    .restart local v4    # "width":F
    .restart local v5    # "height":F
    .restart local v6    # "uvStatus":[F
    .restart local v8    # "meshName":Ljava/lang/String;
    .restart local v9    # "newMesh":Lcom/smartisanos/smengine/Mesh;
    .restart local v10    # "node":Lcom/smartisanos/smengine/SceneNode;
    .restart local v11    # "pos":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_2
    invoke-virtual {v9, v12, v6}, Lcom/smartisanos/smengine/Mesh;->updateTexVertexFloatBuffer(I[F)V

    goto :goto_0
.end method
