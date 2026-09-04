.class public Lcom/smartisanos/launcher/view/CalendarView;
.super Lcom/smartisanos/launcher/view/ActiveIconView;
.source "CalendarView.java"


.field private static final ANIMATION_ALPHA_DELAY:F = 0.36f

.field private static final ANIMATION_ALPHA_DURATION:F = 0.36f

.field private static final ANIMATION_DOWN_DURATION:F = 0.72f

.field private static final ANIMATION_RIGHT_DELAY:F = 0.12f

.field private static final ANIMATION_RIGHT_DURATION:F = 0.6f

.field private static final ANIMATION_ROTATION_DELAY:F = 0.12f

.field private static final ANIMATION_ROTATION_DURATION:F = 0.6f

.field private static final ANIMATION_TIMEOUT:F = 2.0f

.field private static final ANIMATION_TRANSIT_ALPHA_DURATION:F = 0.36f

.field public static final PACKAGE_NAME:Ljava/lang/String;

.field private static final count:F = 1.0f

.field private static final log:Lcom/smartisanos/launcher/LOG;


.field private mAnimBackgroundLayer:I

.field private mAnimBackgroundNode:Lcom/smartisanos/smengine/RectNode;

.field private mAnimCurrentDayChildLayer:I

.field private mAnimCurrentDayLayer:I

.field private mAnimCurrentDayNode:Lcom/smartisanos/smengine/SceneNode;

.field private mBackgroundNode:Lcom/smartisanos/smengine/RectNode;

.field private mBgLayer:I

.field private mCurrentDayLoc:Lcom/smartisanos/smengine/math/Vector3f;

.field private mFlipLoc:Lcom/smartisanos/smengine/math/Vector3f;

.field private mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

.field private mNeedSendMessage:Z

.field private mNextDayCoverChildLayer:I

.field private mNextDayCoverLayer:I

.field private mNextDayCoverNode:Lcom/smartisanos/smengine/SceneNode;

.field private mPrevioursDay:I

.field private mPreviousTime:J

.field private mRingLayer:I

.field private mRingNode:Lcom/smartisanos/smengine/RectNode;


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/smartisanos/launcher/view/CalendarView;

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/view/CalendarView;->log:Lcom/smartisanos/launcher/LOG;

    .line 41
    sget-object v0, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->CALENDAR:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    iget-object v0, v0, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;->pkg:Ljava/lang/String;

    sput-object v0, Lcom/smartisanos/launcher/view/CalendarView;->PACKAGE_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/smartisanos/launcher/view/Cell;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "boundingCell"    # Lcom/smartisanos/launcher/view/Cell;

    .prologue
    const/4 v1, 0x0

    .line 178
    invoke-direct {p0, p1, p2}, Lcom/smartisanos/launcher/view/ActiveIconView;-><init>(Ljava/lang/String;Lcom/smartisanos/launcher/view/Cell;)V

    .line 78
    iput-boolean v1, p0, Lcom/smartisanos/launcher/view/CalendarView;->mNeedSendMessage:Z

    .line 79
    iput v1, p0, Lcom/smartisanos/launcher/view/CalendarView;->mPrevioursDay:I

    .line 80
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/smartisanos/launcher/view/CalendarView;->mPreviousTime:J

    .line 179
    invoke-static {}, Lcom/smartisanos/launcher/view/LayerManager;->getInstance()Lcom/smartisanos/launcher/view/LayerManager;

    move-result-object v1

    invoke-virtual {p2}, Lcom/smartisanos/launcher/view/Cell;->getLayStatus()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/view/LayerManager;->getCellLayer(I)Lcom/smartisanos/launcher/view/LayerManager$CellLayer;

    move-result-object v0

    .line 180
    .local v0, "cellLayer":Lcom/smartisanos/launcher/view/LayerManager$CellLayer;
    iget v1, v0, Lcom/smartisanos/launcher/view/LayerManager$CellLayer;->ACTIVE_ICON_BASE_LAYER:I

    iput v1, p0, Lcom/smartisanos/launcher/view/CalendarView;->mBgLayer:I

    .line 181
    iget v1, p0, Lcom/smartisanos/launcher/view/CalendarView;->mBgLayer:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/smartisanos/launcher/view/CalendarView;->mRingLayer:I

    .line 182
    iget v1, p0, Lcom/smartisanos/launcher/view/CalendarView;->mRingLayer:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/smartisanos/launcher/view/CalendarView;->mNextDayCoverLayer:I

    .line 183
    iget v1, p0, Lcom/smartisanos/launcher/view/CalendarView;->mNextDayCoverLayer:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/smartisanos/launcher/view/CalendarView;->mNextDayCoverChildLayer:I

    .line 184
    iget v1, p0, Lcom/smartisanos/launcher/view/CalendarView;->mNextDayCoverChildLayer:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/smartisanos/launcher/view/CalendarView;->mAnimBackgroundLayer:I

    .line 185
    iget v1, p0, Lcom/smartisanos/launcher/view/CalendarView;->mAnimBackgroundLayer:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/smartisanos/launcher/view/CalendarView;->mAnimCurrentDayLayer:I

    .line 186
    iget v1, p0, Lcom/smartisanos/launcher/view/CalendarView;->mAnimCurrentDayLayer:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/smartisanos/launcher/view/CalendarView;->mAnimCurrentDayChildLayer:I

    .line 187
    sget v1, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static {v1}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v1

    iput-object v1, p0, Lcom/smartisanos/launcher/view/CalendarView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    .line 188
    invoke-static {}, Lcom/smartisanos/launcher/view/CalendarView;->getCurrentDay()I

    move-result v1

    iput v1, p0, Lcom/smartisanos/launcher/view/CalendarView;->mPrevioursDay:I

    .line 189
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/CalendarView;->getCurrentDateTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/smartisanos/launcher/view/CalendarView;->mPreviousTime:J

    .line 190
    return-void
.end method

.method static synthetic access$000(Lcom/smartisanos/launcher/view/CalendarView;)Lcom/smartisanos/smengine/SceneNode;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/CalendarView;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CalendarView;->mAnimCurrentDayNode:Lcom/smartisanos/smengine/SceneNode;

    return-object v0
.end method

.method static synthetic access$100(Lcom/smartisanos/launcher/view/CalendarView;ILcom/smartisanos/smengine/SceneNode;)V
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/CalendarView;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/smartisanos/smengine/SceneNode;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/smartisanos/launcher/view/CalendarView;->updateDayNode(ILcom/smartisanos/smengine/SceneNode;)V

    return-void
.end method

.method static synthetic access$200(Lcom/smartisanos/launcher/view/CalendarView;)Lcom/smartisanos/smengine/SceneNode;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/CalendarView;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CalendarView;->mNextDayCoverNode:Lcom/smartisanos/smengine/SceneNode;

    return-object v0
.end method

.method static synthetic access$300(Lcom/smartisanos/launcher/view/CalendarView;)I
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/CalendarView;

    .prologue
    .line 39
    iget v0, p0, Lcom/smartisanos/launcher/view/CalendarView;->mBgLayer:I

    return v0
.end method

.method static synthetic access$400(Lcom/smartisanos/launcher/view/CalendarView;)Lcom/smartisanos/smengine/RectNode;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/CalendarView;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CalendarView;->mRingNode:Lcom/smartisanos/smengine/RectNode;

    return-object v0
.end method

.method static synthetic access$500(Lcom/smartisanos/launcher/view/CalendarView;)Lcom/smartisanos/smengine/RectNode;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/CalendarView;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CalendarView;->mBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    return-object v0
.end method

.method static synthetic access$600(Lcom/smartisanos/launcher/view/CalendarView;)Lcom/smartisanos/smengine/RectNode;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/CalendarView;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CalendarView;->mAnimBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    return-object v0
.end method

.method static synthetic access$700(Lcom/smartisanos/launcher/view/CalendarView;)V
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/CalendarView;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/CalendarView;->onAnimComplete()V

    return-void
.end method

.method private createBackgroundNode()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 214
    sget v2, Lcom/smartisanos/launcher/data/Constants;->screen_density:F

    const/high16 v3, 0x40400000    # 3.0f

    div-float v1, v2, v3

    .line 215
    .local v1, "scaler":F
    const-string v2, "calenderBg"

    iget-object v3, p0, Lcom/smartisanos/launcher/view/CalendarView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v3, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->calendar_back_size:F

    mul-float/2addr v3, v1

    iget-object v4, p0, Lcom/smartisanos/launcher/view/CalendarView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v4, v4, Lcom/smartisanos/launcher/data/LayoutProperty;->calendar_back_size:F

    mul-float/2addr v4, v1

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Lcom/smartisanos/smengine/RectNode;->createSimpleTextureRect(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/RectNode;

    move-result-object v2

    iput-object v2, p0, Lcom/smartisanos/launcher/view/CalendarView;->mBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    .line 217
    const-string v2, "TextureModularColorMaterial"

    invoke-static {v2}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v0

    .line 218
    .local v0, "m":Lcom/smartisanos/smengine/mymaterial/Material;
    iget-object v2, p0, Lcom/smartisanos/launcher/view/CalendarView;->mBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v2, v0}, Lcom/smartisanos/smengine/RectNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 219
    iget-object v2, p0, Lcom/smartisanos/launcher/view/CalendarView;->mBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    const-string v3, "calendar/bg.png"

    invoke-static {v3}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/RectNode;->setImageName(Ljava/lang/String;)V

    .line 222
    iget-object v2, p0, Lcom/smartisanos/launcher/view/CalendarView;->mBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/smartisanos/smengine/RenderState;->setIsEnableBlend(Z)V

    .line 224
    iget-object v2, p0, Lcom/smartisanos/launcher/view/CalendarView;->mBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/RenderState;->setBlendMode(I)V

    .line 225
    iget-object v2, p0, Lcom/smartisanos/launcher/view/CalendarView;->mBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v2, v6}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    .line 226
    iget-object v2, p0, Lcom/smartisanos/launcher/view/CalendarView;->mBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    iget v3, p0, Lcom/smartisanos/launcher/view/CalendarView;->mBgLayer:I

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 227
    iget-object v2, p0, Lcom/smartisanos/launcher/view/CalendarView;->mBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {p0, v2}, Lcom/smartisanos/launcher/view/CalendarView;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 228
    return-void
.end method

.method private createBoundingVolume()V
    .locals 5

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 372
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CalendarView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->calendar_back_size:F

    neg-float v0, v0

    div-float/2addr v0, v4

    iget-object v1, p0, Lcom/smartisanos/launcher/view/CalendarView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v1, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->calendar_back_size:F

    neg-float v1, v1

    iget-object v2, p0, Lcom/smartisanos/launcher/view/CalendarView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v2, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->calendar_back_size:F

    div-float/2addr v2, v4

    iget-object v3, p0, Lcom/smartisanos/launcher/view/CalendarView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v3, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->calendar_back_size:F

    div-float/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/smartisanos/launcher/view/CalendarView;->setLocalBoundingVolume(FFFF)V

    .line 374
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/CalendarView;->updateGeometricState()V

    .line 375
    return-void
.end method

.method private createDayNode(I)Lcom/smartisanos/smengine/SceneNode;
    .locals 2
    .param p1, "day"    # I

    .prologue
    .line 321
    new-instance v0, Lcom/smartisanos/smengine/SceneNode;

    const-string v1, "day"

    invoke-direct {v0, v1}, Lcom/smartisanos/smengine/SceneNode;-><init>(Ljava/lang/String;)V

    .line 322
    .local v0, "sn":Lcom/smartisanos/smengine/SceneNode;
    invoke-direct {p0, p1, v0}, Lcom/smartisanos/launcher/view/CalendarView;->updateDayNode(ILcom/smartisanos/smengine/SceneNode;)V

    .line 323
    return-object v0
.end method

.method private createFlipNode()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 246
    sget v2, Lcom/smartisanos/launcher/data/Constants;->screen_density:F

    const/high16 v3, 0x40400000    # 3.0f

    div-float v1, v2, v3

    .line 247
    .local v1, "scaler":F
    const-string v2, "calenderBg"

    iget-object v3, p0, Lcom/smartisanos/launcher/view/CalendarView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v3, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->calendar_back_size:F

    mul-float/2addr v3, v1

    iget-object v4, p0, Lcom/smartisanos/launcher/view/CalendarView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v4, v4, Lcom/smartisanos/launcher/data/LayoutProperty;->calendar_back_size:F

    mul-float/2addr v4, v1

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Lcom/smartisanos/smengine/RectNode;->createSimpleTextureRect(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/RectNode;

    move-result-object v2

    iput-object v2, p0, Lcom/smartisanos/launcher/view/CalendarView;->mAnimBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    .line 249
    const-string v2, "TextureModularColorMaterial"

    invoke-static {v2}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v0

    .line 250
    .local v0, "m":Lcom/smartisanos/smengine/mymaterial/Material;
    iget-object v2, p0, Lcom/smartisanos/launcher/view/CalendarView;->mAnimBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v2, v0}, Lcom/smartisanos/smengine/RectNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 251
    iget-object v2, p0, Lcom/smartisanos/launcher/view/CalendarView;->mAnimBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    const-string v3, "calendar/flip.png"

    invoke-static {v3}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/RectNode;->setImageName(Ljava/lang/String;)V

    .line 252
    iget-object v2, p0, Lcom/smartisanos/launcher/view/CalendarView;->mAnimBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v2, v6}, Lcom/smartisanos/smengine/RectNode;->setIsEnableBlend(Z)V

    .line 253
    iget-object v2, p0, Lcom/smartisanos/launcher/view/CalendarView;->mAnimBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/RenderState;->setBlendMode(I)V

    .line 254
    iget-object v2, p0, Lcom/smartisanos/launcher/view/CalendarView;->mAnimBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/smartisanos/smengine/RenderState;->setIsEnableDepthTest(Z)V

    .line 255
    iget-object v2, p0, Lcom/smartisanos/launcher/view/CalendarView;->mAnimBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/smartisanos/smengine/RenderState;->setIsPolygonOffset(Z)V

    .line 256
    iget-object v2, p0, Lcom/smartisanos/launcher/view/CalendarView;->mAnimBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v2

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, -0x40000000    # -2.0f

    invoke-virtual {v2, v3, v4}, Lcom/smartisanos/smengine/RenderState;->setPolygonOffsetFactorUnits(FF)V

    .line 257
    iget-object v2, p0, Lcom/smartisanos/launcher/view/CalendarView;->mAnimBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v2, v6}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    .line 258
    iget-object v2, p0, Lcom/smartisanos/launcher/view/CalendarView;->mAnimBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    iget v3, p0, Lcom/smartisanos/launcher/view/CalendarView;->mAnimBackgroundLayer:I

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 259
    iget-object v2, p0, Lcom/smartisanos/launcher/view/CalendarView;->mAnimBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {p0, v2}, Lcom/smartisanos/launcher/view/CalendarView;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 260
    return-void
.end method

.method private createRingNode()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 230
    sget v2, Lcom/smartisanos/launcher/data/Constants;->screen_density:F

    const/high16 v3, 0x40400000    # 3.0f

    div-float v1, v2, v3

    .line 231
    .local v1, "scaler":F
    const-string v2, "calenderBg"

    iget-object v3, p0, Lcom/smartisanos/launcher/view/CalendarView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v3, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->calendar_back_size:F

    mul-float/2addr v3, v1

    iget-object v4, p0, Lcom/smartisanos/launcher/view/CalendarView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v4, v4, Lcom/smartisanos/launcher/data/LayoutProperty;->calendar_back_size:F

    mul-float/2addr v4, v1

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Lcom/smartisanos/smengine/RectNode;->createSimpleTextureRect(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/RectNode;

    move-result-object v2

    iput-object v2, p0, Lcom/smartisanos/launcher/view/CalendarView;->mRingNode:Lcom/smartisanos/smengine/RectNode;

    .line 233
    const-string v2, "TextureModularColorMaterial"

    invoke-static {v2}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v0

    .line 234
    .local v0, "m":Lcom/smartisanos/smengine/mymaterial/Material;
    iget-object v2, p0, Lcom/smartisanos/launcher/view/CalendarView;->mRingNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v2, v0}, Lcom/smartisanos/smengine/RectNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 235
    iget-object v2, p0, Lcom/smartisanos/launcher/view/CalendarView;->mRingNode:Lcom/smartisanos/smengine/RectNode;

    const-string v3, "calendar/ring.png"

    invoke-static {v3}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/RectNode;->setImageName(Ljava/lang/String;)V

    .line 238
    iget-object v2, p0, Lcom/smartisanos/launcher/view/CalendarView;->mRingNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/smartisanos/smengine/RenderState;->setIsEnableBlend(Z)V

    .line 240
    iget-object v2, p0, Lcom/smartisanos/launcher/view/CalendarView;->mRingNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/RenderState;->setBlendMode(I)V

    .line 241
    iget-object v2, p0, Lcom/smartisanos/launcher/view/CalendarView;->mRingNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v2, v6}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    .line 242
    iget-object v2, p0, Lcom/smartisanos/launcher/view/CalendarView;->mRingNode:Lcom/smartisanos/smengine/RectNode;

    iget v3, p0, Lcom/smartisanos/launcher/view/CalendarView;->mRingLayer:I

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 243
    iget-object v2, p0, Lcom/smartisanos/launcher/view/CalendarView;->mRingNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {p0, v2}, Lcom/smartisanos/launcher/view/CalendarView;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 244
    return-void
.end method

.method private doLayout()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/high16 v6, -0x40000000    # -2.0f

    const/high16 v5, -0x40800000    # -1.0f

    const/4 v4, 0x1

    .line 326
    iget-object v2, p0, Lcom/smartisanos/launcher/view/CalendarView;->mNextDayCoverNode:Lcom/smartisanos/smengine/SceneNode;

    iget v3, p0, Lcom/smartisanos/launcher/view/CalendarView;->mNextDayCoverLayer:I

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 327
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/smartisanos/launcher/view/CalendarView;->mNextDayCoverNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 328
    iget-object v2, p0, Lcom/smartisanos/launcher/view/CalendarView;->mNextDayCoverNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v2, v0}, Lcom/smartisanos/smengine/SceneNode;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/smengine/RectNode;

    .line 329
    .local v1, "rn":Lcom/smartisanos/smengine/RectNode;
    iget v2, p0, Lcom/smartisanos/launcher/view/CalendarView;->mNextDayCoverChildLayer:I

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 327
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 331
    .end local v1    # "rn":Lcom/smartisanos/smengine/RectNode;
    :cond_0
    iget-object v2, p0, Lcom/smartisanos/launcher/view/CalendarView;->mNextDayCoverNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/smartisanos/smengine/RenderState;->setIsEnableDepthTest(Z)V

    .line 332
    iget-object v2, p0, Lcom/smartisanos/launcher/view/CalendarView;->mNextDayCoverNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/smartisanos/smengine/RenderState;->setIsPolygonOffset(Z)V

    .line 333
    iget-object v2, p0, Lcom/smartisanos/launcher/view/CalendarView;->mNextDayCoverNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v2

    invoke-virtual {v2, v5, v6}, Lcom/smartisanos/smengine/RenderState;->setPolygonOffsetFactorUnits(FF)V

    .line 334
    iget-object v2, p0, Lcom/smartisanos/launcher/view/CalendarView;->mNextDayCoverNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v2, v4}, Lcom/smartisanos/smengine/SceneNode;->setIsEnableBlend(Z)V

    .line 335
    iget-object v2, p0, Lcom/smartisanos/launcher/view/CalendarView;->mNextDayCoverNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/smartisanos/smengine/RenderState;->setBlendMode(I)V

    .line 336
    iget-object v2, p0, Lcom/smartisanos/launcher/view/CalendarView;->mNextDayCoverNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v2, v4}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 338
    iget-object v2, p0, Lcom/smartisanos/launcher/view/CalendarView;->mAnimCurrentDayNode:Lcom/smartisanos/smengine/SceneNode;

    iget v3, p0, Lcom/smartisanos/launcher/view/CalendarView;->mAnimCurrentDayLayer:I

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 339
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/smartisanos/launcher/view/CalendarView;->mAnimCurrentDayNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 340
    iget-object v2, p0, Lcom/smartisanos/launcher/view/CalendarView;->mAnimCurrentDayNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v2, v0}, Lcom/smartisanos/smengine/SceneNode;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/smengine/RectNode;

    .line 341
    .restart local v1    # "rn":Lcom/smartisanos/smengine/RectNode;
    iget v2, p0, Lcom/smartisanos/launcher/view/CalendarView;->mAnimCurrentDayChildLayer:I

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 339
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 343
    .end local v1    # "rn":Lcom/smartisanos/smengine/RectNode;
    :cond_1
    iget-object v2, p0, Lcom/smartisanos/launcher/view/CalendarView;->mAnimCurrentDayNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/smartisanos/smengine/RenderState;->setIsEnableDepthTest(Z)V

    .line 344
    iget-object v2, p0, Lcom/smartisanos/launcher/view/CalendarView;->mAnimCurrentDayNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/smartisanos/smengine/RenderState;->setIsPolygonOffset(Z)V

    .line 345
    iget-object v2, p0, Lcom/smartisanos/launcher/view/CalendarView;->mAnimCurrentDayNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v2

    invoke-virtual {v2, v5, v6}, Lcom/smartisanos/smengine/RenderState;->setPolygonOffsetFactorUnits(FF)V

    .line 346
    iget-object v2, p0, Lcom/smartisanos/launcher/view/CalendarView;->mAnimCurrentDayNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v2, v4}, Lcom/smartisanos/smengine/SceneNode;->setIsEnableBlend(Z)V

    .line 347
    iget-object v2, p0, Lcom/smartisanos/launcher/view/CalendarView;->mAnimCurrentDayNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/smartisanos/smengine/RenderState;->setBlendMode(I)V

    .line 348
    iget-object v2, p0, Lcom/smartisanos/launcher/view/CalendarView;->mAnimCurrentDayNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v2, v4}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 350
    iget-object v2, p0, Lcom/smartisanos/launcher/view/CalendarView;->mBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/smartisanos/smengine/RenderState;->setIsEnableDepthTest(Z)V

    .line 351
    iget-object v2, p0, Lcom/smartisanos/launcher/view/CalendarView;->mBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/smartisanos/smengine/RenderState;->setIsPolygonOffset(Z)V

    .line 352
    iget-object v2, p0, Lcom/smartisanos/launcher/view/CalendarView;->mBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v2

    invoke-virtual {v2, v5, v6}, Lcom/smartisanos/smengine/RenderState;->setPolygonOffsetFactorUnits(FF)V

    .line 353
    iget-object v2, p0, Lcom/smartisanos/launcher/view/CalendarView;->mBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v2, v4}, Lcom/smartisanos/smengine/RectNode;->setIsEnableBlend(Z)V

    .line 354
    iget-object v2, p0, Lcom/smartisanos/launcher/view/CalendarView;->mBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/smartisanos/smengine/RenderState;->setBlendMode(I)V

    .line 355
    iget-object v2, p0, Lcom/smartisanos/launcher/view/CalendarView;->mBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v2, v4}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    .line 357
    iget-object v2, p0, Lcom/smartisanos/launcher/view/CalendarView;->mAnimBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/smartisanos/smengine/RenderState;->setIsEnableDepthTest(Z)V

    .line 358
    iget-object v2, p0, Lcom/smartisanos/launcher/view/CalendarView;->mAnimBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/smartisanos/smengine/RenderState;->setIsPolygonOffset(Z)V

    .line 359
    iget-object v2, p0, Lcom/smartisanos/launcher/view/CalendarView;->mAnimBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v2

    invoke-virtual {v2, v5, v6}, Lcom/smartisanos/smengine/RenderState;->setPolygonOffsetFactorUnits(FF)V

    .line 360
    iget-object v2, p0, Lcom/smartisanos/launcher/view/CalendarView;->mAnimBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v2, v4}, Lcom/smartisanos/smengine/RectNode;->setIsEnableBlend(Z)V

    .line 361
    iget-object v2, p0, Lcom/smartisanos/launcher/view/CalendarView;->mAnimBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/smartisanos/smengine/RenderState;->setBlendMode(I)V

    .line 362
    iget-object v2, p0, Lcom/smartisanos/launcher/view/CalendarView;->mAnimBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v2, v4}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    .line 364
    iget-object v2, p0, Lcom/smartisanos/launcher/view/CalendarView;->mRingNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/smartisanos/smengine/RenderState;->setIsEnableDepthTest(Z)V

    .line 365
    iget-object v2, p0, Lcom/smartisanos/launcher/view/CalendarView;->mRingNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/smartisanos/smengine/RenderState;->setIsPolygonOffset(Z)V

    .line 366
    iget-object v2, p0, Lcom/smartisanos/launcher/view/CalendarView;->mRingNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v2

    invoke-virtual {v2, v5, v6}, Lcom/smartisanos/smengine/RenderState;->setPolygonOffsetFactorUnits(FF)V

    .line 367
    iget-object v2, p0, Lcom/smartisanos/launcher/view/CalendarView;->mRingNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v2, v4}, Lcom/smartisanos/smengine/RectNode;->setIsEnableBlend(Z)V

    .line 369
    iget-object v2, p0, Lcom/smartisanos/launcher/view/CalendarView;->mRingNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v2, v4}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    .line 370
    return-void
.end method

.method private getChangeDateAnim(Z)Lcom/smartisanos/smengine/AnimationTimeLine;
    .locals 32
    .param p1, "reverse"    # Z

    .prologue
    .line 537
    new-instance v25, Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-direct/range {v25 .. v25}, Lcom/smartisanos/smengine/AnimationTimeLine;-><init>()V

    .line 538
    .local v25, "timeLine":Lcom/smartisanos/smengine/AnimationTimeLine;
    new-instance v2, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/CalendarView;->mAnimBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    invoke-direct {v2, v4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 539
    .local v2, "anim1":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/CalendarView;->mAnimBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    .line 540
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/CalendarView;->mAnimCurrentDayNode:Lcom/smartisanos/smengine/SceneNode;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 541
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/CalendarView;->mAnimBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/RectNode;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v20

    .line 542
    .local v20, "loc":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-virtual/range {v20 .. v20}, Lcom/smartisanos/smengine/math/Vector3f;->clone()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/smartisanos/launcher/view/CalendarView;->mFlipLoc:Lcom/smartisanos/smengine/math/Vector3f;

    .line 543
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/CalendarView;->mAnimCurrentDayNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v21

    .line 544
    .local v21, "loc2":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-virtual/range {v21 .. v21}, Lcom/smartisanos/smengine/math/Vector3f;->clone()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/smartisanos/launcher/view/CalendarView;->mCurrentDayLoc:Lcom/smartisanos/smengine/math/Vector3f;

    .line 554
    const v22, 0x3df5c28f    # 0.12f

    .line 555
    .local v22, "rightDelay":F
    const v24, 0x3df5c28f    # 0.12f

    .line 556
    .local v24, "rotateDelay":F
    const v13, 0x3eb851ec    # 0.36f

    .line 558
    .local v13, "alphaDelay":F
    if-nez p1, :cond_1

    .line 559
    new-instance v16, Ljava/lang/Float;

    move-object/from16 v0, v20

    iget v4, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move-object/from16 v0, v16

    invoke-direct {v0, v4}, Ljava/lang/Float;-><init>(F)V

    .line 560
    .local v16, "fromX":Ljava/lang/Float;
    new-instance v28, Ljava/lang/Float;

    move-object/from16 v0, v20

    iget v4, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/CalendarView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v5, v5, Lcom/smartisanos/launcher/data/LayoutProperty;->calendar_right_distance:F

    add-float/2addr v4, v5

    move-object/from16 v0, v28

    invoke-direct {v0, v4}, Ljava/lang/Float;-><init>(F)V

    .line 562
    .local v28, "toX":Ljava/lang/Float;
    new-instance v18, Ljava/lang/Float;

    move-object/from16 v0, v20

    iget v4, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Ljava/lang/Float;-><init>(F)V

    .line 563
    .local v18, "fromY":Ljava/lang/Float;
    new-instance v30, Ljava/lang/Float;

    move-object/from16 v0, v20

    iget v4, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/CalendarView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v5, v5, Lcom/smartisanos/launcher/data/LayoutProperty;->calendar_down_distance:F

    sub-float/2addr v4, v5

    move-object/from16 v0, v30

    invoke-direct {v0, v4}, Ljava/lang/Float;-><init>(F)V

    .line 565
    .local v30, "toY":Ljava/lang/Float;
    new-instance v14, Ljava/lang/Float;

    const/4 v4, 0x0

    invoke-direct {v14, v4}, Ljava/lang/Float;-><init>(F)V

    .line 566
    .local v14, "fromAngle":Ljava/lang/Float;
    new-instance v26, Ljava/lang/Float;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/CalendarView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v4, v4, Lcom/smartisanos/launcher/data/LayoutProperty;->calendar_rotation_angenle:F

    const v5, 0x3c8efa35

    mul-float/2addr v4, v5

    move-object/from16 v0, v26

    invoke-direct {v0, v4}, Ljava/lang/Float;-><init>(F)V

    .line 568
    .local v26, "toAngle":Ljava/lang/Float;
    new-instance v15, Lcom/smartisanos/smengine/math/Vector4f;

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v15, v4, v5, v6, v7}, Lcom/smartisanos/smengine/math/Vector4f;-><init>(FFFF)V

    .line 569
    .local v15, "fromColor":Lcom/smartisanos/smengine/math/Vector4f;
    new-instance v27, Lcom/smartisanos/smengine/math/Vector4f;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v27

    invoke-direct {v0, v4, v5, v6, v7}, Lcom/smartisanos/smengine/math/Vector4f;-><init>(FFFF)V

    .line 587
    .local v27, "toColor":Lcom/smartisanos/smengine/math/Vector4f;
    :goto_0
    new-instance v23, Lcom/smartisanos/smengine/math/Vector3f;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move-object/from16 v0, v23

    invoke-direct {v0, v4, v5, v6}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    .line 588
    .local v23, "rotateAxis":Lcom/smartisanos/smengine/math/Vector3f;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/CalendarView;->mAnimBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Float;->floatValue()F

    move-result v6

    move-object/from16 v0, v20

    iget v7, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-virtual {v4, v5, v6, v7}, Lcom/smartisanos/smengine/RectNode;->setTranslate(FFF)V

    .line 589
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/CalendarView;->mAnimBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v5

    move-object/from16 v0, v23

    invoke-virtual {v4, v5, v0}, Lcom/smartisanos/smengine/RectNode;->setRotation(FLcom/smartisanos/smengine/math/Vector3f;)V

    .line 590
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/CalendarView;->mAnimBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    iget v5, v15, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    iget v6, v15, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    iget v7, v15, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    iget v8, v15, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 592
    const/4 v4, 0x4

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {v2, v4, v5, v6}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFF)V

    .line 593
    const v4, 0x3f19999a    # 0.6f

    invoke-virtual {v2, v4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 594
    const/16 v4, 0xf

    invoke-virtual {v2, v4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 595
    move-object/from16 v0, v25

    move/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 597
    new-instance v2, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    .end local v2    # "anim1":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/CalendarView;->mAnimBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    invoke-direct {v2, v4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 598
    .restart local v2    # "anim1":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    const/4 v4, 0x5

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {v2, v4, v5, v6}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFF)V

    .line 599
    const v4, 0x3f3851ec    # 0.72f

    invoke-virtual {v2, v4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 600
    const/16 v4, 0xf

    invoke-virtual {v2, v4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 601
    const/4 v4, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v2}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 603
    new-instance v2, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    .end local v2    # "anim1":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/CalendarView;->mAnimBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    invoke-direct {v2, v4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 604
    .restart local v2    # "anim1":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    const/4 v4, 0x2

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {v2, v4, v5, v6}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFF)V

    .line 605
    const v4, 0x3f19999a    # 0.6f

    invoke-virtual {v2, v4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 606
    const/16 v4, 0xf

    invoke-virtual {v2, v4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 607
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 609
    new-instance v2, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    .end local v2    # "anim1":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/CalendarView;->mAnimBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    invoke-direct {v2, v4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 610
    .restart local v2    # "anim1":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    const/4 v3, 0x3

    iget v4, v15, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    iget v5, v15, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    iget v6, v15, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    iget v7, v15, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    move-object/from16 v0, v27

    iget v8, v0, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    move-object/from16 v0, v27

    iget v9, v0, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    move-object/from16 v0, v27

    iget v10, v0, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    move-object/from16 v0, v27

    iget v11, v0, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    invoke-virtual/range {v2 .. v11}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFFFF)V

    .line 612
    const v4, 0x3eb851ec    # 0.36f

    invoke-virtual {v2, v4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 613
    const/16 v4, 0xe

    invoke-virtual {v2, v4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 614
    move-object/from16 v0, v25

    invoke-virtual {v0, v13, v2}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 620
    if-nez p1, :cond_2

    .line 621
    new-instance v17, Ljava/lang/Float;

    move-object/from16 v0, v21

    iget v4, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move-object/from16 v0, v17

    invoke-direct {v0, v4}, Ljava/lang/Float;-><init>(F)V

    .line 622
    .local v17, "fromX1":Ljava/lang/Float;
    new-instance v29, Ljava/lang/Float;

    move-object/from16 v0, v21

    iget v4, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/CalendarView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v5, v5, Lcom/smartisanos/launcher/data/LayoutProperty;->calendar_right_distance:F

    add-float/2addr v4, v5

    move-object/from16 v0, v29

    invoke-direct {v0, v4}, Ljava/lang/Float;-><init>(F)V

    .line 624
    .local v29, "toX1":Ljava/lang/Float;
    new-instance v19, Ljava/lang/Float;

    move-object/from16 v0, v21

    iget v4, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move-object/from16 v0, v19

    invoke-direct {v0, v4}, Ljava/lang/Float;-><init>(F)V

    .line 625
    .local v19, "fromY1":Ljava/lang/Float;
    new-instance v31, Ljava/lang/Float;

    move-object/from16 v0, v21

    iget v4, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/CalendarView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v5, v5, Lcom/smartisanos/launcher/data/LayoutProperty;->calendar_down_distance:F

    sub-float/2addr v4, v5

    move-object/from16 v0, v31

    invoke-direct {v0, v4}, Ljava/lang/Float;-><init>(F)V

    .line 633
    .local v31, "toY1":Ljava/lang/Float;
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/CalendarView;->mAnimCurrentDayNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Float;->floatValue()F

    move-result v6

    move-object/from16 v0, v21

    iget v7, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-virtual {v4, v5, v6, v7}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 634
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/CalendarView;->mAnimCurrentDayNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v5

    move-object/from16 v0, v23

    invoke-virtual {v4, v5, v0}, Lcom/smartisanos/smengine/SceneNode;->setRotation(FLcom/smartisanos/smengine/math/Vector3f;)V

    .line 635
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/CalendarView;->mAnimCurrentDayNode:Lcom/smartisanos/smengine/SceneNode;

    iget v5, v15, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    iget v6, v15, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    iget v7, v15, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    iget v8, v15, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 636
    new-instance v3, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/CalendarView;->mAnimCurrentDayNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-direct {v3, v4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 637
    .local v3, "anim2":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    const/4 v4, 0x4

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFF)V

    .line 638
    const v4, 0x3f19999a    # 0.6f

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 639
    const/16 v4, 0xf

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 640
    move-object/from16 v0, v25

    move/from16 v1, v22

    invoke-virtual {v0, v1, v3}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 642
    new-instance v3, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    .end local v3    # "anim2":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/CalendarView;->mAnimCurrentDayNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-direct {v3, v4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 643
    .restart local v3    # "anim2":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    const/4 v4, 0x5

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFF)V

    .line 644
    const v4, 0x3f3851ec    # 0.72f

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 645
    const/16 v4, 0xf

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 646
    const/4 v4, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v3}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 648
    new-instance v3, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    .end local v3    # "anim2":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/CalendarView;->mAnimCurrentDayNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-direct {v3, v4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 649
    .restart local v3    # "anim2":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    const/4 v4, 0x2

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFF)V

    .line 650
    const v4, 0x3f19999a    # 0.6f

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 651
    const/16 v4, 0xf

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 652
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1, v3}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 654
    new-instance v3, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    .end local v3    # "anim2":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/CalendarView;->mAnimCurrentDayNode:Lcom/smartisanos/smengine/SceneNode;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/smartisanos/smengine/SceneNode;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 655
    .restart local v3    # "anim2":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    const/4 v4, 0x3

    iget v5, v15, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    iget v6, v15, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    iget v7, v15, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    iget v8, v15, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    move-object/from16 v0, v27

    iget v9, v0, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    move-object/from16 v0, v27

    iget v10, v0, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    move-object/from16 v0, v27

    iget v11, v0, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    move-object/from16 v0, v27

    iget v12, v0, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    invoke-virtual/range {v3 .. v12}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFFFF)V

    .line 657
    const v4, 0x3eb851ec    # 0.36f

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 658
    const/16 v4, 0xe

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 659
    move-object/from16 v0, v25

    invoke-virtual {v0, v13, v3}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 660
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/CalendarView;->mAnimCurrentDayNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v5}, Lcom/smartisanos/smengine/SceneNode;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/CalendarView;->mAnimCurrentDayNode:Lcom/smartisanos/smengine/SceneNode;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/smartisanos/smengine/SceneNode;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 661
    new-instance v3, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    .end local v3    # "anim2":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/CalendarView;->mAnimCurrentDayNode:Lcom/smartisanos/smengine/SceneNode;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/smartisanos/smengine/SceneNode;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 662
    .restart local v3    # "anim2":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    const/4 v4, 0x3

    iget v5, v15, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    iget v6, v15, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    iget v7, v15, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    iget v8, v15, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    move-object/from16 v0, v27

    iget v9, v0, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    move-object/from16 v0, v27

    iget v10, v0, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    move-object/from16 v0, v27

    iget v11, v0, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    move-object/from16 v0, v27

    iget v12, v0, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    invoke-virtual/range {v3 .. v12}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFFFF)V

    .line 664
    const v4, 0x3eb851ec    # 0.36f

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 665
    const/16 v4, 0xe

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 666
    move-object/from16 v0, v25

    invoke-virtual {v0, v13, v3}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 668
    :cond_0
    new-instance v4, Lcom/smartisanos/launcher/view/CalendarView$5;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/smartisanos/launcher/view/CalendarView$5;-><init>(Lcom/smartisanos/launcher/view/CalendarView;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 693
    return-object v25

    .line 571
    .end local v3    # "anim2":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    .end local v14    # "fromAngle":Ljava/lang/Float;
    .end local v15    # "fromColor":Lcom/smartisanos/smengine/math/Vector4f;
    .end local v16    # "fromX":Ljava/lang/Float;
    .end local v17    # "fromX1":Ljava/lang/Float;
    .end local v18    # "fromY":Ljava/lang/Float;
    .end local v19    # "fromY1":Ljava/lang/Float;
    .end local v23    # "rotateAxis":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v26    # "toAngle":Ljava/lang/Float;
    .end local v27    # "toColor":Lcom/smartisanos/smengine/math/Vector4f;
    .end local v28    # "toX":Ljava/lang/Float;
    .end local v29    # "toX1":Ljava/lang/Float;
    .end local v30    # "toY":Ljava/lang/Float;
    .end local v31    # "toY1":Ljava/lang/Float;
    :cond_1
    new-instance v28, Ljava/lang/Float;

    move-object/from16 v0, v20

    iget v4, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move-object/from16 v0, v28

    invoke-direct {v0, v4}, Ljava/lang/Float;-><init>(F)V

    .line 572
    .restart local v28    # "toX":Ljava/lang/Float;
    new-instance v16, Ljava/lang/Float;

    move-object/from16 v0, v20

    iget v4, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/CalendarView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v5, v5, Lcom/smartisanos/launcher/data/LayoutProperty;->calendar_right_distance:F

    add-float/2addr v4, v5

    move-object/from16 v0, v16

    invoke-direct {v0, v4}, Ljava/lang/Float;-><init>(F)V

    .line 574
    .restart local v16    # "fromX":Ljava/lang/Float;
    new-instance v30, Ljava/lang/Float;

    move-object/from16 v0, v20

    iget v4, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move-object/from16 v0, v30

    invoke-direct {v0, v4}, Ljava/lang/Float;-><init>(F)V

    .line 575
    .restart local v30    # "toY":Ljava/lang/Float;
    new-instance v18, Ljava/lang/Float;

    move-object/from16 v0, v20

    iget v4, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/CalendarView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v5, v5, Lcom/smartisanos/launcher/data/LayoutProperty;->calendar_down_distance:F

    sub-float/2addr v4, v5

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Ljava/lang/Float;-><init>(F)V

    .line 577
    .restart local v18    # "fromY":Ljava/lang/Float;
    new-instance v26, Ljava/lang/Float;

    const/4 v4, 0x0

    move-object/from16 v0, v26

    invoke-direct {v0, v4}, Ljava/lang/Float;-><init>(F)V

    .line 578
    .restart local v26    # "toAngle":Ljava/lang/Float;
    new-instance v14, Ljava/lang/Float;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/CalendarView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v4, v4, Lcom/smartisanos/launcher/data/LayoutProperty;->calendar_rotation_angenle:F

    const v5, 0x3c8efa35

    mul-float/2addr v4, v5

    invoke-direct {v14, v4}, Ljava/lang/Float;-><init>(F)V

    .line 580
    .restart local v14    # "fromAngle":Ljava/lang/Float;
    new-instance v27, Lcom/smartisanos/smengine/math/Vector4f;

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    move-object/from16 v0, v27

    invoke-direct {v0, v4, v5, v6, v7}, Lcom/smartisanos/smengine/math/Vector4f;-><init>(FFFF)V

    .line 581
    .restart local v27    # "toColor":Lcom/smartisanos/smengine/math/Vector4f;
    new-instance v15, Lcom/smartisanos/smengine/math/Vector4f;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v15, v4, v5, v6, v7}, Lcom/smartisanos/smengine/math/Vector4f;-><init>(FFFF)V

    .line 583
    .restart local v15    # "fromColor":Lcom/smartisanos/smengine/math/Vector4f;
    const/16 v22, 0x0

    .line 584
    const/16 v24, 0x0

    .line 585
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 627
    .restart local v23    # "rotateAxis":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_2
    new-instance v29, Ljava/lang/Float;

    move-object/from16 v0, v21

    iget v4, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move-object/from16 v0, v29

    invoke-direct {v0, v4}, Ljava/lang/Float;-><init>(F)V

    .line 628
    .restart local v29    # "toX1":Ljava/lang/Float;
    new-instance v17, Ljava/lang/Float;

    move-object/from16 v0, v21

    iget v4, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/CalendarView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v5, v5, Lcom/smartisanos/launcher/data/LayoutProperty;->calendar_right_distance:F

    add-float/2addr v4, v5

    move-object/from16 v0, v17

    invoke-direct {v0, v4}, Ljava/lang/Float;-><init>(F)V

    .line 630
    .restart local v17    # "fromX1":Ljava/lang/Float;
    new-instance v31, Ljava/lang/Float;

    move-object/from16 v0, v21

    iget v4, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move-object/from16 v0, v31

    invoke-direct {v0, v4}, Ljava/lang/Float;-><init>(F)V

    .line 631
    .restart local v31    # "toY1":Ljava/lang/Float;
    new-instance v19, Ljava/lang/Float;

    move-object/from16 v0, v21

    iget v4, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/CalendarView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v5, v5, Lcom/smartisanos/launcher/data/LayoutProperty;->calendar_down_distance:F

    sub-float/2addr v4, v5

    move-object/from16 v0, v19

    invoke-direct {v0, v4}, Ljava/lang/Float;-><init>(F)V

    .restart local v19    # "fromY1":Ljava/lang/Float;
    goto/16 :goto_1
.end method

.method private getCurrentDateTime()J
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 164
    const-wide/16 v2, 0x0

    .line 166
    .local v2, "time":J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 167
    .local v0, "cal":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 168
    const/16 v1, 0xb

    invoke-virtual {v0, v1, v6}, Ljava/util/Calendar;->set(II)V

    .line 169
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v6}, Ljava/util/Calendar;->set(II)V

    .line 170
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v6}, Ljava/util/Calendar;->set(II)V

    .line 171
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v6}, Ljava/util/Calendar;->set(II)V

    .line 172
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 174
    return-wide v2
.end method

.method private static getCurrentDay()I
    .locals 5

    .prologue
    .line 138
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 139
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 140
    .local v2, "currentMillis":J
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 141
    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 142
    .local v1, "day":I
    return v1
.end method

.method private static getDayImageName(I)Ljava/lang/String;
    .locals 2
    .param p0, "day"    # I

    .prologue
    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "calendar/"

    invoke-static {v1}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p0, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getDayImageString(I)[Ljava/lang/String;
    .locals 9
    .param p0, "day"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 193
    const/16 v5, 0xa

    if-lt p0, v5, :cond_0

    .line 194
    const/4 v5, 0x2

    new-array v2, v5, [Ljava/lang/String;

    .line 195
    .local v2, "images":[Ljava/lang/String;
    div-int/lit8 v0, p0, 0xa

    .line 196
    .local v0, "d1":I
    mul-int/lit8 v5, v0, 0xa

    sub-int v1, p0, v5

    .line 197
    .local v1, "d2":I
    const-string v5, "calendar/"

    invoke-static {v5}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 198
    .local v4, "prefix":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".png"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v7

    .line 199
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".png"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v8

    move-object v3, v2

    .line 205
    .end local v0    # "d1":I
    .end local v1    # "d2":I
    .end local v2    # "images":[Ljava/lang/String;
    .local v3, "images":[Ljava/lang/String;
    :goto_0
    return-object v3

    .line 202
    .end local v3    # "images":[Ljava/lang/String;
    .end local v4    # "prefix":Ljava/lang/String;
    :cond_0
    new-array v2, v8, [Ljava/lang/String;

    .line 203
    .restart local v2    # "images":[Ljava/lang/String;
    const-string v5, "calendar/"

    invoke-static {v5}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 204
    .restart local v4    # "prefix":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".png"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v7

    move-object v3, v2

    .line 205
    .end local v2    # "images":[Ljava/lang/String;
    .restart local v3    # "images":[Ljava/lang/String;
    goto :goto_0
.end method

.method private static getNextDay()I
    .locals 5

    .prologue
    const/4 v4, 0x5

    .line 146
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 147
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 148
    .local v2, "currentMillis":J
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 149
    const/4 v1, 0x1

    invoke-virtual {v0, v4, v1}, Ljava/util/Calendar;->add(II)V

    .line 151
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    return v1
.end method

.method private static getPrevDay()I
    .locals 5

    .prologue
    const/4 v4, 0x5

    .line 155
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 156
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 157
    .local v2, "currentMillis":J
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 158
    const/4 v1, -0x1

    invoke-virtual {v0, v4, v1}, Ljava/util/Calendar;->add(II)V

    .line 160
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    return v1
.end method

.method private getTriggerTime()J
    .locals 12

    .prologue
    .line 377
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 378
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 379
    .local v2, "currentMillis":J
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 380
    const/16 v10, 0xb

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 381
    .local v4, "hour":I
    const/16 v10, 0xc

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 382
    .local v5, "minute":I
    const/16 v10, 0xd

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 383
    .local v8, "seconds":I
    const/4 v10, 0x5

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 384
    .local v1, "day":I
    const/4 v10, 0x2

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 385
    .local v6, "month":I
    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 387
    .local v9, "year":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 388
    .local v7, "nc":Ljava/util/Calendar;
    const/4 v10, 0x1

    invoke-virtual {v7, v10, v9}, Ljava/util/Calendar;->set(II)V

    .line 389
    const/4 v10, 0x2

    invoke-virtual {v7, v10, v6}, Ljava/util/Calendar;->set(II)V

    .line 390
    const/4 v10, 0x5

    add-int/lit8 v11, v1, 0x1

    invoke-virtual {v7, v10, v11}, Ljava/util/Calendar;->set(II)V

    .line 391
    const/16 v10, 0xb

    const/4 v11, 0x0

    invoke-virtual {v7, v10, v11}, Ljava/util/Calendar;->set(II)V

    .line 392
    const/16 v10, 0xc

    const/4 v11, 0x0

    invoke-virtual {v7, v10, v11}, Ljava/util/Calendar;->set(II)V

    .line 393
    const/16 v10, 0xd

    const/4 v11, 0x0

    invoke-virtual {v7, v10, v11}, Ljava/util/Calendar;->set(II)V

    .line 397
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    return-wide v10
.end method

.method private onAnimComplete()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 697
    invoke-virtual {p0, v7}, Lcom/smartisanos/launcher/view/CalendarView;->setVisibility(Z)V

    .line 698
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CalendarView;->mAnimBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/CalendarView;->mFlipLoc:Lcom/smartisanos/smengine/math/Vector3f;

    iget v1, v1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget-object v2, p0, Lcom/smartisanos/launcher/view/CalendarView;->mFlipLoc:Lcom/smartisanos/smengine/math/Vector3f;

    iget v2, v2, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget-object v3, p0, Lcom/smartisanos/launcher/view/CalendarView;->mFlipLoc:Lcom/smartisanos/smengine/math/Vector3f;

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/smartisanos/smengine/RectNode;->setTranslate(FFF)V

    .line 699
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CalendarView;->mAnimBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    new-instance v1, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v1, v5, v5, v4}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    invoke-virtual {v0, v5, v1}, Lcom/smartisanos/smengine/RectNode;->setRotation(FLcom/smartisanos/smengine/math/Vector3f;)V

    .line 700
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CalendarView;->mAnimBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->updateGeometricState()V

    .line 701
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CalendarView;->mAnimBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0, v4, v4, v4, v4}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 703
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CalendarView;->mBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0, v4, v4, v4, v4}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 705
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CalendarView;->mAnimCurrentDayNode:Lcom/smartisanos/smengine/SceneNode;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/CalendarView;->mCurrentDayLoc:Lcom/smartisanos/smengine/math/Vector3f;

    iget v1, v1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget-object v2, p0, Lcom/smartisanos/launcher/view/CalendarView;->mCurrentDayLoc:Lcom/smartisanos/smengine/math/Vector3f;

    iget v2, v2, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget-object v3, p0, Lcom/smartisanos/launcher/view/CalendarView;->mCurrentDayLoc:Lcom/smartisanos/smengine/math/Vector3f;

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 706
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CalendarView;->mAnimCurrentDayNode:Lcom/smartisanos/smengine/SceneNode;

    new-instance v1, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v1, v5, v5, v4}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    invoke-virtual {v0, v5, v1}, Lcom/smartisanos/smengine/SceneNode;->setRotation(FLcom/smartisanos/smengine/math/Vector3f;)V

    .line 707
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CalendarView;->mAnimCurrentDayNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v0, v7}, Lcom/smartisanos/smengine/SceneNode;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    invoke-virtual {v0, v4, v4, v4, v4}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 708
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CalendarView;->mAnimCurrentDayNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getChildCount()I

    move-result v0

    if-ge v6, v0, :cond_0

    iget-object v0, p0, Lcom/smartisanos/launcher/view/CalendarView;->mAnimCurrentDayNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v0, v6}, Lcom/smartisanos/smengine/SceneNode;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 709
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CalendarView;->mAnimCurrentDayNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v0, v6}, Lcom/smartisanos/smengine/SceneNode;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    invoke-virtual {v0, v4, v4, v4, v4}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 711
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CalendarView;->mAnimCurrentDayNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 713
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CalendarView;->mNextDayCoverNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v0, v7}, Lcom/smartisanos/smengine/SceneNode;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    invoke-virtual {v0, v4, v4, v4, v4}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 714
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CalendarView;->mNextDayCoverNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getChildCount()I

    move-result v0

    if-ge v6, v0, :cond_1

    iget-object v0, p0, Lcom/smartisanos/launcher/view/CalendarView;->mNextDayCoverNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v0, v6}, Lcom/smartisanos/smengine/SceneNode;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 715
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CalendarView;->mNextDayCoverNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v0, v6}, Lcom/smartisanos/smengine/SceneNode;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    invoke-virtual {v0, v4, v4, v4, v4}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 717
    :cond_1
    return-void
.end method

.method private setTimeout()V
    .locals 4

    .prologue
    .line 863
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 864
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/home/Launcher;->getMyHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/smartisanos/launcher/view/CalendarView$7;

    invoke-direct {v1, p0}, Lcom/smartisanos/launcher/view/CalendarView$7;-><init>(Lcom/smartisanos/launcher/view/CalendarView;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 877
    :cond_0
    return-void
.end method

.method private updateDayNode(ILcom/smartisanos/smengine/SceneNode;)V
    .locals 11
    .param p1, "day"    # I
    .param p2, "dayNode"    # Lcom/smartisanos/smengine/SceneNode;

    .prologue
    const/high16 v10, 0x40400000    # 3.0f

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 263
    invoke-static {p1}, Lcom/smartisanos/launcher/view/CalendarView;->getDayImageName(I)Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, "image":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/smartisanos/smengine/SceneNode;->removeAllChildren()V

    .line 266
    sget v5, Lcom/smartisanos/launcher/data/Constants;->screen_density:F

    div-float v3, v5, v10

    .line 267
    .local v3, "scaler":F
    const-string v5, "dayRect"

    iget-object v6, p0, Lcom/smartisanos/launcher/view/CalendarView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v6, v6, Lcom/smartisanos/launcher/data/LayoutProperty;->calendar_day_w:F

    mul-float/2addr v6, v3

    iget-object v7, p0, Lcom/smartisanos/launcher/view/CalendarView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v7, v7, Lcom/smartisanos/launcher/data/LayoutProperty;->calendar_day_h:F

    mul-float/2addr v7, v3

    invoke-static {v5, v6, v7, v9, v8}, Lcom/smartisanos/smengine/RectNode;->createSimpleTextureRect(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/RectNode;

    move-result-object v2

    .line 269
    .local v2, "rect":Lcom/smartisanos/smengine/RectNode;
    invoke-virtual {v2, v0}, Lcom/smartisanos/smengine/RectNode;->setImageName(Ljava/lang/String;)V

    .line 270
    invoke-virtual {v2, v8}, Lcom/smartisanos/smengine/RectNode;->setIsEnableBlend(Z)V

    .line 271
    invoke-virtual {v2}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/smartisanos/smengine/RenderState;->setBlendMode(I)V

    .line 272
    invoke-virtual {v2}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/smartisanos/smengine/RenderState;->setIsEnableDepthTest(Z)V

    .line 273
    invoke-virtual {v2}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/smartisanos/smengine/RenderState;->setIsPolygonOffset(Z)V

    .line 274
    invoke-virtual {v2}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v5

    const/high16 v6, -0x40800000    # -1.0f

    const/high16 v7, -0x40000000    # -2.0f

    invoke-virtual {v5, v6, v7}, Lcom/smartisanos/smengine/RenderState;->setPolygonOffsetFactorUnits(FF)V

    .line 275
    invoke-virtual {v2, v8}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    .line 276
    sget-boolean v5, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/MainView;->getFloatPageNode()Lcom/smartisanos/launcher/view/FloatPageNode;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 277
    const/4 v5, 0x3

    invoke-virtual {v2, v5}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    .line 279
    :cond_0
    const-string v5, "TextureModularColorMaterial"

    invoke-static {v5}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v1

    .line 280
    .local v1, "m":Lcom/smartisanos/smengine/mymaterial/Material;
    invoke-virtual {v2, v1}, Lcom/smartisanos/smengine/RectNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 281
    invoke-virtual {p2, v2}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 282
    iget-object v5, p0, Lcom/smartisanos/launcher/view/CalendarView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v5, v5, Lcom/smartisanos/launcher/data/LayoutProperty;->calendar_back_size:F

    iget-object v6, p0, Lcom/smartisanos/launcher/view/CalendarView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v6, v6, Lcom/smartisanos/launcher/data/LayoutProperty;->calendar_day_h:F

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/smartisanos/launcher/view/CalendarView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v6, v6, Lcom/smartisanos/launcher/data/LayoutProperty;->calendar_day_offsety:F

    sub-float/2addr v5, v6

    neg-float v5, v5

    mul-float/2addr v5, v3

    div-float v4, v5, v10

    .line 283
    .local v4, "y":F
    invoke-virtual {v2, v9, v4, v9}, Lcom/smartisanos/smengine/RectNode;->setTranslate(FFF)V

    .line 284
    invoke-virtual {v2}, Lcom/smartisanos/smengine/RectNode;->updateGeometricState()V

    .line 319
    return-void
.end method


.method public create()V
    .locals 5

    .prologue
    .line 750
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/CalendarView;->createBoundingVolume()V

    .line 751
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/CalendarView;->createBackgroundNode()V

    .line 752
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/CalendarView;->createRingNode()V

    .line 753
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/CalendarView;->createFlipNode()V

    .line 754
    invoke-static {}, Lcom/smartisanos/launcher/view/CalendarView;->getCurrentDay()I

    move-result v0

    .line 755
    .local v0, "currentDay":I
    invoke-static {}, Lcom/smartisanos/launcher/view/CalendarView;->getNextDay()I

    move-result v1

    .line 756
    .local v1, "nextDay":I
    invoke-direct {p0, v0}, Lcom/smartisanos/launcher/view/CalendarView;->createDayNode(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v2

    iput-object v2, p0, Lcom/smartisanos/launcher/view/CalendarView;->mAnimCurrentDayNode:Lcom/smartisanos/smengine/SceneNode;

    .line 757
    invoke-direct {p0, v1}, Lcom/smartisanos/launcher/view/CalendarView;->createDayNode(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v2

    iput-object v2, p0, Lcom/smartisanos/launcher/view/CalendarView;->mNextDayCoverNode:Lcom/smartisanos/smengine/SceneNode;

    .line 758
    iget-object v2, p0, Lcom/smartisanos/launcher/view/CalendarView;->mNextDayCoverNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {p0, v2}, Lcom/smartisanos/launcher/view/CalendarView;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 759
    iget-object v2, p0, Lcom/smartisanos/launcher/view/CalendarView;->mAnimCurrentDayNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {p0, v2}, Lcom/smartisanos/launcher/view/CalendarView;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 760
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/CalendarView;->doLayout()V

    .line 761
    const/4 v2, 0x2

    sget v3, Lcom/smartisanos/launcher/data/Constants;->sPageStyle:I

    if-ne v2, v3, :cond_0

    .line 762
    sget v2, Lcom/smartisanos/launcher/data/Constants;->icon_scale:F

    sget v3, Lcom/smartisanos/launcher/data/Constants;->icon_scale:F

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {p0, v2, v3, v4}, Lcom/smartisanos/launcher/view/CalendarView;->setScale(FFF)V

    .line 764
    :cond_0
    return-void
.end method

.method public createComposedBitmap()Landroid/graphics/Bitmap;
    .locals 17

    .prologue
    .line 720
    const-string v10, "calendar/bg.png"

    invoke-static {v10}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/smartisanos/smengine/Image;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 721
    .local v1, "bgBitmap":Landroid/graphics/Bitmap;
    const-string v10, "calendar/ring.png"

    invoke-static {v10}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/smartisanos/smengine/Image;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 722
    .local v9, "ringBitmap":Landroid/graphics/Bitmap;
    const-string v10, "calendar/flip.png"

    invoke-static {v10}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/smartisanos/smengine/Image;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 723
    .local v5, "flipBitmap":Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/smartisanos/launcher/view/CalendarView;->getCurrentDay()I

    move-result v3

    .line 724
    .local v3, "currentDay":I
    invoke-static {v3}, Lcom/smartisanos/launcher/view/CalendarView;->getDayImageName(I)Ljava/lang/String;

    move-result-object v6

    .line 725
    .local v6, "image":Ljava/lang/String;
    invoke-static {v6}, Lcom/smartisanos/smengine/Image;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 726
    .local v4, "day":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/smartisanos/launcher/view/CalendarView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v10, v10, Lcom/smartisanos/launcher/data/LayoutProperty;->calendar_back_size:F

    float-to-int v10, v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/smartisanos/launcher/view/CalendarView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v11, v11, Lcom/smartisanos/launcher/data/LayoutProperty;->calendar_back_size:F

    float-to-int v11, v11

    .line 727
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v12

    .line 726
    invoke-static {v10, v11, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 728
    .local v7, "newBitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 729
    .local v2, "canvas":Landroid/graphics/Canvas;
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 730
    .local v8, "p":Landroid/graphics/Paint;
    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 731
    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 732
    new-instance v10, Landroid/graphics/Rect;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    invoke-direct {v10, v11, v12, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v11, Landroid/graphics/RectF;

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/smartisanos/launcher/view/CalendarView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v14, v14, Lcom/smartisanos/launcher/data/LayoutProperty;->calendar_back_size:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/smartisanos/launcher/view/CalendarView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v15, v15, Lcom/smartisanos/launcher/data/LayoutProperty;->calendar_back_size:F

    invoke-direct {v11, v12, v13, v14, v15}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v2, v1, v10, v11, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 734
    new-instance v10, Landroid/graphics/Rect;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    invoke-direct {v10, v11, v12, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v11, Landroid/graphics/RectF;

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/smartisanos/launcher/view/CalendarView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v14, v14, Lcom/smartisanos/launcher/data/LayoutProperty;->calendar_back_size:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/smartisanos/launcher/view/CalendarView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v15, v15, Lcom/smartisanos/launcher/data/LayoutProperty;->calendar_back_size:F

    invoke-direct {v11, v12, v13, v14, v15}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v2, v5, v10, v11, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 736
    new-instance v10, Landroid/graphics/Rect;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    invoke-direct {v10, v11, v12, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v11, Landroid/graphics/RectF;

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/smartisanos/launcher/view/CalendarView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v14, v14, Lcom/smartisanos/launcher/data/LayoutProperty;->calendar_back_size:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/smartisanos/launcher/view/CalendarView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v15, v15, Lcom/smartisanos/launcher/data/LayoutProperty;->calendar_back_size:F

    invoke-direct {v11, v12, v13, v14, v15}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v2, v9, v10, v11, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 738
    new-instance v10, Landroid/graphics/Rect;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    invoke-direct {v10, v11, v12, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v11, Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/view/CalendarView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v12, v12, Lcom/smartisanos/launcher/data/LayoutProperty;->calendar_day_offsetx:F

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/smartisanos/launcher/view/CalendarView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v13, v13, Lcom/smartisanos/launcher/data/LayoutProperty;->calendar_day_offsety:F

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/smartisanos/launcher/view/CalendarView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v14, v14, Lcom/smartisanos/launcher/data/LayoutProperty;->calendar_day_offsetx:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/smartisanos/launcher/view/CalendarView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v15, v15, Lcom/smartisanos/launcher/data/LayoutProperty;->calendar_day_w:F

    add-float/2addr v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/smartisanos/launcher/view/CalendarView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v15, v15, Lcom/smartisanos/launcher/data/LayoutProperty;->calendar_day_offsety:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/CalendarView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->calendar_day_h:F

    move/from16 v16, v0

    add-float v15, v15, v16

    invoke-direct {v11, v12, v13, v14, v15}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v2, v4, v10, v11, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 742
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 743
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 744
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 745
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 746
    return-object v7
.end method

.method public getHeight()F
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CalendarView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->calendar_back_size:F

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 796
    sget-object v0, Lcom/smartisanos/launcher/view/CalendarView;->PACKAGE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()F
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CalendarView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->calendar_back_size:F

    return v0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 809
    invoke-super {p0}, Lcom/smartisanos/launcher/view/ActiveIconView;->onResume()V

    .line 810
    invoke-static {}, Lcom/smartisanos/launcher/view/CalendarView;->getCurrentDay()I

    move-result v0

    .line 811
    .local v0, "newDay":I
    iget v1, p0, Lcom/smartisanos/launcher/view/CalendarView;->mPrevioursDay:I

    if-eq v0, v1, :cond_0

    .line 812
    new-instance v1, Lcom/smartisanos/launcher/view/CalendarView$6;

    const/16 v2, 0x64

    invoke-direct {v1, p0, v2}, Lcom/smartisanos/launcher/view/CalendarView$6;-><init>(Lcom/smartisanos/launcher/view/CalendarView;I)V

    const/4 v2, 0x0

    .line 817
    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/view/CalendarView$6;->send(F)V

    .line 818
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/World;->updateGLView()V

    .line 820
    :cond_0
    return-void
.end method

.method public onTimeChange()V
    .locals 2

    .prologue
    .line 801
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CalendarView;->mIconStatus:Lcom/smartisanos/launcher/view/ActiveIconView$IconStatus;

    sget-object v1, Lcom/smartisanos/launcher/view/ActiveIconView$IconStatus;->RESUME:Lcom/smartisanos/launcher/view/ActiveIconView$IconStatus;

    if-eq v0, v1, :cond_0

    .line 805
    :goto_0
    return-void

    .line 804
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/CalendarView;->updateCalendar()V

    goto :goto_0
.end method

.method public playAnimation(Z)V
    .locals 33
    .param p1, "reverse"    # Z

    .prologue
    .line 403
    sget-boolean v3, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v3, :cond_0

    .line 404
    sget-object v3, Lcom/smartisanos/launcher/view/CalendarView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v5, "DEBUG"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Update date anim, prev:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/smartisanos/launcher/view/CalendarView;->mPrevioursDay:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    :cond_0
    const/16 v27, 0x0

    .line 408
    .local v27, "needTransitAnim":Z
    sget-boolean v3, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v3, :cond_1

    sget v3, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    sget v5, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    if-ne v3, v5, :cond_1

    .line 409
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/MainView;->getFloatPageNode()Lcom/smartisanos/launcher/view/FloatPageNode;

    move-result-object v3

    if-nez v3, :cond_1

    .line 410
    const/16 v27, 0x1

    .line 412
    :cond_1
    const/16 v32, 0x0

    .line 413
    .local v32, "transShow":Lcom/smartisanos/smengine/AnimationTimeLine;
    const/16 v31, 0x0

    .line 414
    .local v31, "transHide":Lcom/smartisanos/smengine/AnimationTimeLine;
    if-eqz v27, :cond_6

    .line 415
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/CalendarView;->mRingNode:Lcom/smartisanos/smengine/RectNode;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    .line 416
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/CalendarView;->mBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    .line 417
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/CalendarView;->mNextDayCoverNode:Lcom/smartisanos/smengine/SceneNode;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 418
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/CalendarView;->mAnimCurrentDayNode:Lcom/smartisanos/smengine/SceneNode;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 419
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/CalendarView;->mAnimBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    .line 420
    const/4 v4, 0x0

    .line 421
    .local v4, "fromC":F
    const/high16 v8, 0x3f800000    # 1.0f

    .line 422
    .local v8, "toC":F
    const/16 v25, 0xe

    .line 423
    .local v25, "eq":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/CalendarView;->mAnimCurrentDayNode:Lcom/smartisanos/smengine/SceneNode;

    move-object/from16 v28, v0

    .line 424
    .local v28, "showNode":Lcom/smartisanos/smengine/SceneNode;
    if-eqz p1, :cond_2

    .line 425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/CalendarView;->mNextDayCoverNode:Lcom/smartisanos/smengine/SceneNode;

    move-object/from16 v28, v0

    .line 427
    :cond_2
    new-instance v32, Lcom/smartisanos/smengine/AnimationTimeLine;

    .end local v32    # "transShow":Lcom/smartisanos/smengine/AnimationTimeLine;
    invoke-direct/range {v32 .. v32}, Lcom/smartisanos/smengine/AnimationTimeLine;-><init>()V

    .line 428
    .restart local v32    # "transShow":Lcom/smartisanos/smengine/AnimationTimeLine;
    new-instance v2, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/CalendarView;->mRingNode:Lcom/smartisanos/smengine/RectNode;

    invoke-direct {v2, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 429
    .local v2, "tanimr":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    const/4 v3, 0x3

    move v5, v4

    move v6, v4

    move v7, v4

    move v9, v8

    move v10, v8

    move v11, v8

    invoke-virtual/range {v2 .. v11}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFFFF)V

    .line 430
    const v3, 0x3eb851ec    # 0.36f

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 431
    move/from16 v0, v25

    invoke-virtual {v2, v0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 432
    const/4 v3, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v3, v2}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 433
    new-instance v9, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/CalendarView;->mBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    invoke-direct {v9, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 434
    .local v9, "tanimb":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    const/4 v10, 0x3

    move v11, v4

    move v12, v4

    move v13, v4

    move v14, v4

    move v15, v8

    move/from16 v16, v8

    move/from16 v17, v8

    move/from16 v18, v8

    invoke-virtual/range {v9 .. v18}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFFFF)V

    .line 435
    const v3, 0x3eb851ec    # 0.36f

    invoke-virtual {v9, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 436
    move/from16 v0, v25

    invoke-virtual {v9, v0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 437
    const/4 v3, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v3, v9}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 438
    new-instance v10, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    const/4 v3, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/SceneNode;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v3

    invoke-direct {v10, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 439
    .local v10, "tanim0":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    const/4 v11, 0x3

    move v12, v4

    move v13, v4

    move v14, v4

    move v15, v4

    move/from16 v16, v8

    move/from16 v17, v8

    move/from16 v18, v8

    move/from16 v19, v8

    invoke-virtual/range {v10 .. v19}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFFFF)V

    .line 440
    const v3, 0x3eb851ec    # 0.36f

    invoke-virtual {v10, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 441
    move/from16 v0, v25

    invoke-virtual {v10, v0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 442
    const/4 v3, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v3, v10}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 443
    const/4 v3, 0x1

    invoke-virtual/range {v28 .. v28}, Lcom/smartisanos/smengine/SceneNode;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_3

    const/4 v3, 0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/SceneNode;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 444
    new-instance v11, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    const/4 v3, 0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/SceneNode;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v3

    invoke-direct {v11, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 445
    .local v11, "tanim1":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    const/4 v12, 0x3

    move v13, v4

    move v14, v4

    move v15, v4

    move/from16 v16, v4

    move/from16 v17, v8

    move/from16 v18, v8

    move/from16 v19, v8

    move/from16 v20, v8

    invoke-virtual/range {v11 .. v20}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFFFF)V

    .line 446
    const v3, 0x3eb851ec    # 0.36f

    invoke-virtual {v11, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 447
    move/from16 v0, v25

    invoke-virtual {v11, v0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 448
    const/4 v3, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v3, v11}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 450
    .end local v11    # "tanim1":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    :cond_3
    new-instance v3, Lcom/smartisanos/launcher/view/CalendarView$2;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v3, v0, v1}, Lcom/smartisanos/launcher/view/CalendarView$2;-><init>(Lcom/smartisanos/launcher/view/CalendarView;Z)V

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 470
    const/high16 v4, 0x3f800000    # 1.0f

    .line 471
    const/4 v8, 0x0

    .line 472
    const/16 v25, 0xd

    .line 473
    new-instance v31, Lcom/smartisanos/smengine/AnimationTimeLine;

    .end local v31    # "transHide":Lcom/smartisanos/smengine/AnimationTimeLine;
    invoke-direct/range {v31 .. v31}, Lcom/smartisanos/smengine/AnimationTimeLine;-><init>()V

    .line 474
    .restart local v31    # "transHide":Lcom/smartisanos/smengine/AnimationTimeLine;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/CalendarView;->mNextDayCoverNode:Lcom/smartisanos/smengine/SceneNode;

    move-object/from16 v26, v0

    .line 475
    .local v26, "hideNode":Lcom/smartisanos/smengine/SceneNode;
    if-eqz p1, :cond_4

    .line 476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/CalendarView;->mAnimCurrentDayNode:Lcom/smartisanos/smengine/SceneNode;

    move-object/from16 v26, v0

    .line 478
    :cond_4
    new-instance v12, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/CalendarView;->mRingNode:Lcom/smartisanos/smengine/RectNode;

    invoke-direct {v12, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 479
    .local v12, "tanimr1":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    const/4 v13, 0x3

    move v14, v4

    move v15, v4

    move/from16 v16, v4

    move/from16 v17, v4

    move/from16 v18, v8

    move/from16 v19, v8

    move/from16 v20, v8

    move/from16 v21, v8

    invoke-virtual/range {v12 .. v21}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFFFF)V

    .line 480
    const v3, 0x3eb851ec    # 0.36f

    invoke-virtual {v12, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 481
    move/from16 v0, v25

    invoke-virtual {v12, v0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 482
    const/4 v3, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v0, v3, v12}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 483
    new-instance v13, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/CalendarView;->mBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    invoke-direct {v13, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 484
    .local v13, "tanimb1":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    const/4 v14, 0x3

    move v15, v4

    move/from16 v16, v4

    move/from16 v17, v4

    move/from16 v18, v4

    move/from16 v19, v8

    move/from16 v20, v8

    move/from16 v21, v8

    move/from16 v22, v8

    invoke-virtual/range {v13 .. v22}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFFFF)V

    .line 485
    const v3, 0x3eb851ec    # 0.36f

    invoke-virtual {v13, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 486
    move/from16 v0, v25

    invoke-virtual {v13, v0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 487
    const/4 v3, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v0, v3, v13}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 488
    new-instance v14, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    const/4 v3, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/SceneNode;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v3

    invoke-direct {v14, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 489
    .local v14, "tanim01":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    const/4 v15, 0x3

    move/from16 v16, v4

    move/from16 v17, v4

    move/from16 v18, v4

    move/from16 v19, v4

    move/from16 v20, v8

    move/from16 v21, v8

    move/from16 v22, v8

    move/from16 v23, v8

    invoke-virtual/range {v14 .. v23}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFFFF)V

    .line 490
    const v3, 0x3eb851ec    # 0.36f

    invoke-virtual {v14, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 491
    move/from16 v0, v25

    invoke-virtual {v14, v0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 492
    const/4 v3, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v0, v3, v14}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 493
    const/4 v3, 0x1

    invoke-virtual/range {v26 .. v26}, Lcom/smartisanos/smengine/SceneNode;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_5

    const/4 v3, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/SceneNode;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 494
    new-instance v15, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    const/4 v3, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/SceneNode;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v3

    invoke-direct {v15, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 495
    .local v15, "tanim11":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    const/16 v16, 0x3

    move/from16 v17, v4

    move/from16 v18, v4

    move/from16 v19, v4

    move/from16 v20, v4

    move/from16 v21, v8

    move/from16 v22, v8

    move/from16 v23, v8

    move/from16 v24, v8

    invoke-virtual/range {v15 .. v24}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFFFF)V

    .line 496
    const v3, 0x3eb851ec    # 0.36f

    invoke-virtual {v15, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 497
    move/from16 v0, v25

    invoke-virtual {v15, v0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 498
    const/4 v3, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v0, v3, v15}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 500
    .end local v15    # "tanim11":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    :cond_5
    new-instance v3, Lcom/smartisanos/launcher/view/CalendarView$3;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v3, v0, v1}, Lcom/smartisanos/launcher/view/CalendarView$3;-><init>(Lcom/smartisanos/launcher/view/CalendarView;Z)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 513
    .end local v2    # "tanimr":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    .end local v4    # "fromC":F
    .end local v8    # "toC":F
    .end local v9    # "tanimb":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    .end local v10    # "tanim0":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    .end local v12    # "tanimr1":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    .end local v13    # "tanimb1":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    .end local v14    # "tanim01":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    .end local v25    # "eq":I
    .end local v26    # "hideNode":Lcom/smartisanos/smengine/SceneNode;
    .end local v28    # "showNode":Lcom/smartisanos/smengine/SceneNode;
    :cond_6
    if-eqz v27, :cond_9

    .line 514
    new-instance v29, Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-direct/range {v29 .. v29}, Lcom/smartisanos/smengine/AnimationTimeLine;-><init>()V

    .line 515
    .local v29, "ti":Lcom/smartisanos/smengine/AnimationTimeLine;
    if-eqz v32, :cond_7

    .line 516
    const/4 v3, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v3, v1}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 518
    :cond_7
    if-eqz v31, :cond_8

    .line 519
    const v3, 0x3f8a3d71    # 1.08f

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v3, v1}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 521
    :cond_8
    invoke-direct/range {p0 .. p1}, Lcom/smartisanos/launcher/view/CalendarView;->getChangeDateAnim(Z)Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v30

    .line 522
    .local v30, "timeLine":Lcom/smartisanos/smengine/AnimationTimeLine;
    const v3, 0x3eb851ec    # 0.36f

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v0, v3, v1}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 523
    new-instance v3, Lcom/smartisanos/launcher/view/CalendarView$4;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/smartisanos/launcher/view/CalendarView$4;-><init>(Lcom/smartisanos/launcher/view/CalendarView;)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 528
    invoke-virtual/range {v29 .. v29}, Lcom/smartisanos/smengine/AnimationTimeLine;->start()V

    .line 533
    .end local v29    # "ti":Lcom/smartisanos/smengine/AnimationTimeLine;
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/smartisanos/launcher/view/CalendarView;->setTimeout()V

    .line 534
    return-void

    .line 530
    .end local v30    # "timeLine":Lcom/smartisanos/smengine/AnimationTimeLine;
    :cond_9
    invoke-direct/range {p0 .. p1}, Lcom/smartisanos/launcher/view/CalendarView;->getChangeDateAnim(Z)Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v30

    .line 531
    .restart local v30    # "timeLine":Lcom/smartisanos/smengine/AnimationTimeLine;
    invoke-virtual/range {v30 .. v30}, Lcom/smartisanos/smengine/AnimationTimeLine;->start()V

    goto :goto_0
.end method

.method public setLayer(I)V
    .locals 4
    .param p1, "layer"    # I

    .prologue
    .line 768
    invoke-super {p0, p1}, Lcom/smartisanos/launcher/view/ActiveIconView;->setLayer(I)V

    .line 769
    iput p1, p0, Lcom/smartisanos/launcher/view/CalendarView;->mBgLayer:I

    .line 770
    iget v2, p0, Lcom/smartisanos/launcher/view/CalendarView;->mBgLayer:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/smartisanos/launcher/view/CalendarView;->mRingLayer:I

    .line 771
    iget v2, p0, Lcom/smartisanos/launcher/view/CalendarView;->mRingLayer:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/smartisanos/launcher/view/CalendarView;->mNextDayCoverLayer:I

    .line 772
    iget v2, p0, Lcom/smartisanos/launcher/view/CalendarView;->mNextDayCoverLayer:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/smartisanos/launcher/view/CalendarView;->mNextDayCoverChildLayer:I

    .line 773
    iget v2, p0, Lcom/smartisanos/launcher/view/CalendarView;->mNextDayCoverChildLayer:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/smartisanos/launcher/view/CalendarView;->mAnimBackgroundLayer:I

    .line 774
    iget v2, p0, Lcom/smartisanos/launcher/view/CalendarView;->mAnimBackgroundLayer:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/smartisanos/launcher/view/CalendarView;->mAnimCurrentDayLayer:I

    .line 775
    iget v2, p0, Lcom/smartisanos/launcher/view/CalendarView;->mAnimCurrentDayLayer:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/smartisanos/launcher/view/CalendarView;->mAnimCurrentDayChildLayer:I

    .line 777
    iget-object v2, p0, Lcom/smartisanos/launcher/view/CalendarView;->mBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    iget v3, p0, Lcom/smartisanos/launcher/view/CalendarView;->mBgLayer:I

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 778
    iget-object v2, p0, Lcom/smartisanos/launcher/view/CalendarView;->mRingNode:Lcom/smartisanos/smengine/RectNode;

    iget v3, p0, Lcom/smartisanos/launcher/view/CalendarView;->mRingLayer:I

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 780
    iget-object v2, p0, Lcom/smartisanos/launcher/view/CalendarView;->mNextDayCoverNode:Lcom/smartisanos/smengine/SceneNode;

    iget v3, p0, Lcom/smartisanos/launcher/view/CalendarView;->mNextDayCoverLayer:I

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 781
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/smartisanos/launcher/view/CalendarView;->mNextDayCoverNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 782
    iget-object v2, p0, Lcom/smartisanos/launcher/view/CalendarView;->mNextDayCoverNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v2, v0}, Lcom/smartisanos/smengine/SceneNode;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/smengine/RectNode;

    .line 783
    .local v1, "rn":Lcom/smartisanos/smengine/RectNode;
    iget v2, p0, Lcom/smartisanos/launcher/view/CalendarView;->mNextDayCoverChildLayer:I

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 781
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 786
    .end local v1    # "rn":Lcom/smartisanos/smengine/RectNode;
    :cond_0
    iget-object v2, p0, Lcom/smartisanos/launcher/view/CalendarView;->mAnimBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    iget v3, p0, Lcom/smartisanos/launcher/view/CalendarView;->mAnimBackgroundLayer:I

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 788
    iget-object v2, p0, Lcom/smartisanos/launcher/view/CalendarView;->mAnimCurrentDayNode:Lcom/smartisanos/smengine/SceneNode;

    iget v3, p0, Lcom/smartisanos/launcher/view/CalendarView;->mAnimCurrentDayLayer:I

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 789
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/smartisanos/launcher/view/CalendarView;->mAnimCurrentDayNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 790
    iget-object v2, p0, Lcom/smartisanos/launcher/view/CalendarView;->mAnimCurrentDayNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v2, v0}, Lcom/smartisanos/smengine/SceneNode;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/smengine/RectNode;

    .line 791
    .restart local v1    # "rn":Lcom/smartisanos/smengine/RectNode;
    iget v2, p0, Lcom/smartisanos/launcher/view/CalendarView;->mAnimCurrentDayChildLayer:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 789
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 793
    .end local v1    # "rn":Lcom/smartisanos/smengine/RectNode;
    :cond_1
    return-void
.end method

.method public setPostLayer(I)V
    .locals 3
    .param p1, "layer"    # I

    .prologue
    .line 843
    invoke-super {p0, p1}, Lcom/smartisanos/launcher/view/ActiveIconView;->setPostLayer(I)V

    .line 844
    iget-object v2, p0, Lcom/smartisanos/launcher/view/CalendarView;->mBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/smartisanos/smengine/RenderState;->setPostLayer(I)V

    .line 845
    iget-object v2, p0, Lcom/smartisanos/launcher/view/CalendarView;->mRingNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/smartisanos/smengine/RenderState;->setPostLayer(I)V

    .line 847
    iget-object v2, p0, Lcom/smartisanos/launcher/view/CalendarView;->mNextDayCoverNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/smartisanos/smengine/RenderState;->setPostLayer(I)V

    .line 848
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/smartisanos/launcher/view/CalendarView;->mNextDayCoverNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 849
    iget-object v2, p0, Lcom/smartisanos/launcher/view/CalendarView;->mNextDayCoverNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v2, v0}, Lcom/smartisanos/smengine/SceneNode;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/smengine/RectNode;

    .line 850
    .local v1, "rn":Lcom/smartisanos/smengine/RectNode;
    invoke-virtual {v1}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/smartisanos/smengine/RenderState;->setPostLayer(I)V

    .line 848
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 853
    .end local v1    # "rn":Lcom/smartisanos/smengine/RectNode;
    :cond_0
    iget-object v2, p0, Lcom/smartisanos/launcher/view/CalendarView;->mAnimBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/smartisanos/smengine/RenderState;->setPostLayer(I)V

    .line 855
    iget-object v2, p0, Lcom/smartisanos/launcher/view/CalendarView;->mAnimCurrentDayNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/smartisanos/smengine/RenderState;->setPostLayer(I)V

    .line 856
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/smartisanos/launcher/view/CalendarView;->mAnimCurrentDayNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 857
    iget-object v2, p0, Lcom/smartisanos/launcher/view/CalendarView;->mAnimCurrentDayNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v2, v0}, Lcom/smartisanos/smengine/SceneNode;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/smengine/RectNode;

    .line 858
    .restart local v1    # "rn":Lcom/smartisanos/smengine/RectNode;
    invoke-virtual {v1}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/smartisanos/smengine/RenderState;->setPostLayer(I)V

    .line 856
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 860
    .end local v1    # "rn":Lcom/smartisanos/smengine/RectNode;
    :cond_1
    return-void
.end method

.method public setRenderQueue(I)V
    .locals 3
    .param p1, "rq"    # I

    .prologue
    .line 823
    invoke-super {p0, p1}, Lcom/smartisanos/launcher/view/ActiveIconView;->setRenderQueue(I)V

    .line 824
    iget-object v2, p0, Lcom/smartisanos/launcher/view/CalendarView;->mBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v2, p1}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    .line 825
    iget-object v2, p0, Lcom/smartisanos/launcher/view/CalendarView;->mRingNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v2, p1}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    .line 827
    iget-object v2, p0, Lcom/smartisanos/launcher/view/CalendarView;->mNextDayCoverNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v2, p1}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 828
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/smartisanos/launcher/view/CalendarView;->mNextDayCoverNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 829
    iget-object v2, p0, Lcom/smartisanos/launcher/view/CalendarView;->mNextDayCoverNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v2, v0}, Lcom/smartisanos/smengine/SceneNode;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/smengine/RectNode;

    .line 830
    .local v1, "rn":Lcom/smartisanos/smengine/RectNode;
    invoke-virtual {v1, p1}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    .line 828
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 833
    .end local v1    # "rn":Lcom/smartisanos/smengine/RectNode;
    :cond_0
    iget-object v2, p0, Lcom/smartisanos/launcher/view/CalendarView;->mAnimBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v2, p1}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    .line 835
    iget-object v2, p0, Lcom/smartisanos/launcher/view/CalendarView;->mAnimCurrentDayNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v2, p1}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 836
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/smartisanos/launcher/view/CalendarView;->mAnimCurrentDayNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 837
    iget-object v2, p0, Lcom/smartisanos/launcher/view/CalendarView;->mAnimCurrentDayNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v2, v0}, Lcom/smartisanos/smengine/SceneNode;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/smengine/RectNode;

    .line 838
    .restart local v1    # "rn":Lcom/smartisanos/smengine/RectNode;
    invoke-virtual {v1, p1}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    .line 836
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 840
    .end local v1    # "rn":Lcom/smartisanos/smengine/RectNode;
    :cond_1
    return-void
.end method

.method public updateCalendar()V
    .locals 12

    .prologue
    .line 83
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CalendarView;->mIconStatus:Lcom/smartisanos/launcher/view/ActiveIconView$IconStatus;

    sget-object v1, Lcom/smartisanos/launcher/view/ActiveIconView$IconStatus;->RESUME:Lcom/smartisanos/launcher/view/ActiveIconView$IconStatus;

    if-eq v0, v1, :cond_1

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/view/CalendarView;->getCurrentDay()I

    move-result v7

    .line 87
    .local v7, "newDay":I
    iget v0, p0, Lcom/smartisanos/launcher/view/CalendarView;->mPrevioursDay:I

    if-eq v7, v0, :cond_0

    .line 90
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/CalendarView;->getCurrentDateTime()J

    move-result-wide v8

    .line 91
    .local v8, "newTime":J
    const/4 v11, 0x0

    .line 92
    .local v11, "reverse":Z
    iget-wide v0, p0, Lcom/smartisanos/launcher/view/CalendarView;->mPreviousTime:J

    cmp-long v0, v8, v0

    if-lez v0, :cond_3

    .line 93
    const/4 v11, 0x0

    .line 99
    :goto_1
    move v5, v11

    .line 100
    .local v5, "rev":Z
    move v6, v7

    .line 101
    .local v6, "currentDay":I
    iget v10, p0, Lcom/smartisanos/launcher/view/CalendarView;->mPrevioursDay:I

    .line 102
    .local v10, "prevDay":I
    if-eqz v5, :cond_2

    .line 103
    iget v6, p0, Lcom/smartisanos/launcher/view/CalendarView;->mPrevioursDay:I

    .line 104
    move v10, v7

    .line 106
    :cond_2
    iput v7, p0, Lcom/smartisanos/launcher/view/CalendarView;->mPrevioursDay:I

    .line 107
    iput-wide v8, p0, Lcom/smartisanos/launcher/view/CalendarView;->mPreviousTime:J

    .line 108
    move v3, v10

    .line 109
    .local v3, "prevD":I
    move v4, v6

    .line 110
    .local v4, "currentD":I
    new-instance v0, Lcom/smartisanos/launcher/view/CalendarView$1;

    const/16 v2, 0x64

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/smartisanos/launcher/view/CalendarView$1;-><init>(Lcom/smartisanos/launcher/view/CalendarView;IIIZ)V

    const/4 v1, 0x0

    .line 124
    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/CalendarView$1;->send(F)V

    goto :goto_0

    .line 94
    .end local v3    # "prevD":I
    .end local v4    # "currentD":I
    .end local v5    # "rev":Z
    .end local v6    # "currentDay":I
    .end local v10    # "prevDay":I
    :cond_3
    iget-wide v0, p0, Lcom/smartisanos/launcher/view/CalendarView;->mPreviousTime:J

    cmp-long v0, v8, v0

    if-gez v0, :cond_0

    .line 95
    const/4 v11, 0x1

    goto :goto_1
.end method
