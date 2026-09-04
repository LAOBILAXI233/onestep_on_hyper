.class public Lcom/smartisanos/launcher/view/Page;
.super Lcom/smartisanos/launcher/view/BaseNode;
.source "Page.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/launcher/view/Page$SortByIndex;
    }
.end annotation


.field public static final CELL_CAMERA_NAME:Ljava/lang/String; = "cellCamera"

.field private static final GAP_DELTA:F = 2.0f

.field private static final GAUSSIAN_EYE_LOCK_COVER_COLOR:F = 0.0f

.field private static final GAUSSIAN_PAGE_COLOR_DARK:F = 0.2f

.field private static final GAUSSIAN_PAGE_COLOR_LIGHT:F = 0.1f

.field public static final INVALID_PAGE_INDEX:I = -0x1

.field public static final INVISIBLE:I = 0x1

.field public static final LOCKED:I = 0x2

.field public static final NORMAL_PAGE:I = 0x0

.field public static final VISIBLE:I = 0x0

.field public static final WIDGET_PAGE:I = 0x1

.field static create:Z

.field private static final log:Lcom/smartisanos/launcher/LOG;


.field private animation:Lcom/smartisanos/launcher/animations/PageAnimation;

.field public id:I

.field protected mBatchBackground:Lcom/smartisanos/launcher/view/BatchBackground;

.field protected mBatchShadowRect:Lcom/smartisanos/launcher/view/BatchShadow;

.field protected mCellCamera:Lcom/smartisanos/smengine/Camera;

.field private mCurrentPageNoSpaceRect:Lcom/smartisanos/launcher/view/TextView;

.field private mDrawWithBatch:Z

.field private mEyeCoverPos:Lcom/smartisanos/smengine/math/Vector3f;

.field private mEyePageCoverImage:Lcom/smartisanos/smengine/RectNode;

.field private mGaussianEyeMeshName:Ljava/lang/String;

.field private mGaussianLockMeshName:Ljava/lang/String;

.field private mGaussianPos:Lcom/smartisanos/smengine/math/Vector3f;

.field private mGaussianSize:Lcom/smartisanos/smengine/math/Vector3f;

.field private mGaussianUV:[F

.field protected mIsPageContentInited:Z

.field protected mItemInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/launcher/data/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLayerChanged:I

.field private mLayerStatus:I

.field protected mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

.field protected mLightPos:Lcom/smartisanos/smengine/math/Vector3f;

.field private mLongAlphaMeshName:Ljava/lang/String;

.field private mLongGaussianMeshName:Ljava/lang/String;

.field private mLongPressAlphaRect:Lcom/smartisanos/smengine/RectNode;

.field private mLongPressGaussianRect:Lcom/smartisanos/smengine/RectNode;

.field private mLongPressPageShadowRect:Lcom/smartisanos/smengine/RectNode;

.field private mMultiSelectedPageCanDropCoverRect:Lcom/smartisanos/smengine/RectNode;

.field private mMultiSelectedPageCanNotDropCoverRect:Lcom/smartisanos/smengine/RectNode;

.field private mPageStatus:I

.field private mPointsForFloatPageMode:[Lcom/smartisanos/smengine/math/Vector3f;

.field private mSetBatchShadowLayerCount:I

.field private mSetGaussianRectLayerCount:I

.field private mShadowRectList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/smengine/RectNode;",
            ">;"
        }
    .end annotation
.end field

.field private mTimeLineForEye:Lcom/smartisanos/smengine/AnimationTimeLine;

.field private mTimeLineForLock:Lcom/smartisanos/smengine/AnimationTimeLine;

.field private mTitleAreaNode:Lcom/smartisanos/launcher/view/TitleView;

.field private mTitleName:Ljava/lang/String;

.field protected mZ:F

.field public pageIndex:I

.field public readOnlyPage:Z


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcom/smartisanos/launcher/view/Page;

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/view/Page;->log:Lcom/smartisanos/launcher/LOG;

    .line 3176
    const/4 v0, 0x0

    sput-boolean v0, Lcom/smartisanos/launcher/view/Page;->create:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "titleName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/launcher/data/ItemInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "ccList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 186
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/BaseNode;-><init>(Ljava/lang/String;)V

    .line 65
    iput-boolean v1, p0, Lcom/smartisanos/launcher/view/Page;->readOnlyPage:Z

    .line 66
    iput-boolean v1, p0, Lcom/smartisanos/launcher/view/Page;->mIsPageContentInited:Z

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/Page;->mLightPos:Lcom/smartisanos/smengine/math/Vector3f;

    .line 102
    iput v1, p0, Lcom/smartisanos/launcher/view/Page;->mPageStatus:I

    .line 104
    iput v2, p0, Lcom/smartisanos/launcher/view/Page;->id:I

    .line 105
    iput v2, p0, Lcom/smartisanos/launcher/view/Page;->pageIndex:I

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/Page;->mItemInfoList:Ljava/util/ArrayList;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/Page;->mShadowRectList:Ljava/util/ArrayList;

    .line 111
    iput-boolean v1, p0, Lcom/smartisanos/launcher/view/Page;->mDrawWithBatch:Z

    .line 120
    const-string v0, "pageGaussianMask_long.press.blur"

    iput-object v0, p0, Lcom/smartisanos/launcher/view/Page;->mLongGaussianMeshName:Ljava/lang/String;

    .line 124
    new-instance v0, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v0}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/Page;->mGaussianPos:Lcom/smartisanos/smengine/math/Vector3f;

    .line 125
    new-instance v0, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v0}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/Page;->mGaussianSize:Lcom/smartisanos/smengine/math/Vector3f;

    .line 127
    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/smartisanos/launcher/view/Page;->mGaussianUV:[F

    .line 207
    iput v1, p0, Lcom/smartisanos/launcher/view/Page;->mSetBatchShadowLayerCount:I

    .line 208
    iput v1, p0, Lcom/smartisanos/launcher/view/Page;->mSetGaussianRectLayerCount:I

    .line 2991
    iput v1, p0, Lcom/smartisanos/launcher/view/Page;->mLayerStatus:I

    .line 2992
    iput v1, p0, Lcom/smartisanos/launcher/view/Page;->mLayerChanged:I

    .line 187
    iput-object p3, p0, Lcom/smartisanos/launcher/view/Page;->mTitleName:Ljava/lang/String;

    .line 188
    sget v0, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/Page;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    .line 189
    invoke-virtual {p0, p2}, Lcom/smartisanos/launcher/view/Page;->setItemInfo(Ljava/util/ArrayList;)V

    .line 190
    new-instance v0, Lcom/smartisanos/launcher/animations/PageAnimation;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/animations/PageAnimation;-><init>(Lcom/smartisanos/launcher/view/Page;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/Page;->animation:Lcom/smartisanos/launcher/animations/PageAnimation;

    .line 191
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Page;->initListener()V

    .line 193
    invoke-virtual {p0, v1}, Lcom/smartisanos/launcher/view/Page;->setLayerStatus(I)V

    .line 194
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/Page;->setZ(F)V

    .line 195
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->createCellCamera()V

    .line 196
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->createCellsInList()V

    .line 197
    return-void
.end method

.method static synthetic access$000()Lcom/smartisanos/launcher/LOG;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/smartisanos/launcher/view/Page;->log:Lcom/smartisanos/launcher/LOG;

    return-object v0
.end method

.method static synthetic access$100(Lcom/smartisanos/launcher/view/Page;)Lcom/smartisanos/smengine/RectNode;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/Page;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Page;->mEyePageCoverImage:Lcom/smartisanos/smengine/RectNode;

    return-object v0
.end method

.method static synthetic access$202(Lcom/smartisanos/launcher/view/Page;Lcom/smartisanos/smengine/AnimationTimeLine;)Lcom/smartisanos/smengine/AnimationTimeLine;
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/Page;
    .param p1, "x1"    # Lcom/smartisanos/smengine/AnimationTimeLine;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/smartisanos/launcher/view/Page;->mTimeLineForEye:Lcom/smartisanos/smengine/AnimationTimeLine;

    return-object p1
.end method

.method static synthetic access$300(Lcom/smartisanos/launcher/view/Page;)Lcom/smartisanos/smengine/RectNode;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/Page;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Page;->mLongPressAlphaRect:Lcom/smartisanos/smengine/RectNode;

    return-object v0
.end method

.method static synthetic access$302(Lcom/smartisanos/launcher/view/Page;Lcom/smartisanos/smengine/RectNode;)Lcom/smartisanos/smengine/RectNode;
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/Page;
    .param p1, "x1"    # Lcom/smartisanos/smengine/RectNode;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/smartisanos/launcher/view/Page;->mLongPressAlphaRect:Lcom/smartisanos/smengine/RectNode;

    return-object p1
.end method

.method static synthetic access$402(Lcom/smartisanos/launcher/view/Page;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/Page;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/smartisanos/launcher/view/Page;->mLongAlphaMeshName:Ljava/lang/String;

    return-object p1
.end method

.method private calculatePageSizeAndPos(Z)Lcom/smartisanos/smengine/math/Vector3f;
    .locals 6
    .param p1, "withinTitle"    # Z

    .prologue
    .line 2352
    new-instance v2, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v2}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 2354
    .local v2, "size":Lcom/smartisanos/smengine/math/Vector3f;
    new-instance v1, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v1}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 2355
    .local v1, "pageSize":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-virtual {p0, v1}, Lcom/smartisanos/launcher/view/Page;->getSize(Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 2356
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->getScale()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v0

    .line 2358
    .local v0, "pageScale":Lcom/smartisanos/smengine/math/Vector3f;
    new-instance v3, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v3}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 2359
    .local v3, "titleSize":Lcom/smartisanos/smengine/math/Vector3f;
    if-eqz p1, :cond_0

    iget-object v4, p0, Lcom/smartisanos/launcher/view/Page;->mTitleAreaNode:Lcom/smartisanos/launcher/view/TitleView;

    if-eqz v4, :cond_0

    .line 2360
    iget-object v4, p0, Lcom/smartisanos/launcher/view/Page;->mTitleAreaNode:Lcom/smartisanos/launcher/view/TitleView;

    invoke-virtual {v4, v3}, Lcom/smartisanos/launcher/view/TitleView;->getSize(Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 2363
    :cond_0
    iget v4, v1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v5, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    div-float/2addr v4, v5

    iput v4, v2, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 2364
    iget v4, v1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v5, v3, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    add-float/2addr v4, v5

    iget v5, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    div-float/2addr v4, v5

    iput v4, v2, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 2366
    iget v4, v3, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v5, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    div-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    iput v4, v2, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    .line 2367
    return-object v2
.end method

.method private createPageShadow()V
    .locals 13

    .prologue
    .line 2547
    iget-object v9, p0, Lcom/smartisanos/launcher/view/Page;->mLongPressPageShadowRect:Lcom/smartisanos/smengine/RectNode;

    if-eqz v9, :cond_0

    .line 2593
    :goto_0
    return-void

    .line 2550
    :cond_0
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/smartisanos/launcher/view/Page;->calculatePageSizeAndPos(Z)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v8

    .line 2551
    .local v8, "size":Lcom/smartisanos/smengine/math/Vector3f;
    sget v9, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    invoke-static {v9}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v5

    .line 2554
    .local v5, "prop":Lcom/smartisanos/launcher/data/LayoutProperty;
    iget v9, v5, Lcom/smartisanos/launcher/data/LayoutProperty;->page_up_shadow_image_width:F

    iget v10, v5, Lcom/smartisanos/launcher/data/LayoutProperty;->page_up_shadow_image_paddingleft:F

    sub-float/2addr v9, v10

    iget v10, v5, Lcom/smartisanos/launcher/data/LayoutProperty;->page_up_shadow_image_paddingright:F

    sub-float v1, v9, v10

    .line 2556
    .local v1, "contentw":F
    iget v9, v5, Lcom/smartisanos/launcher/data/LayoutProperty;->page_up_shadow_image_height:F

    iget v10, v5, Lcom/smartisanos/launcher/data/LayoutProperty;->page_up_shadow_image_padingtop:F

    sub-float/2addr v9, v10

    iget v10, v5, Lcom/smartisanos/launcher/data/LayoutProperty;->page_up_shadow_image_paddingbottom:F

    sub-float v0, v9, v10

    .line 2558
    .local v0, "contenth":F
    iget v9, v8, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v10, v5, Lcom/smartisanos/launcher/data/LayoutProperty;->page_up_shadow_image_width:F

    div-float/2addr v10, v1

    mul-float/2addr v9, v10

    iput v9, v8, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 2559
    iget v9, v8, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v10, v5, Lcom/smartisanos/launcher/data/LayoutProperty;->page_up_shadow_image_height:F

    div-float/2addr v10, v0

    mul-float/2addr v9, v10

    iput v9, v8, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 2561
    sget-boolean v9, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v9, :cond_1

    .line 2562
    iget v9, v8, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    iget v10, v5, Lcom/smartisanos/launcher/data/LayoutProperty;->page_up_shadow_image_padingtop:F

    iget v11, v5, Lcom/smartisanos/launcher/data/LayoutProperty;->page_up_shadow_image_paddingbottom:F

    div-float/2addr v10, v11

    mul-float/2addr v9, v10

    const/high16 v10, 0x40a00000    # 5.0f

    sub-float/2addr v9, v10

    iput v9, v8, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    .line 2568
    :goto_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "_PageShadow"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2570
    .local v3, "name":Ljava/lang/String;
    iget v9, v8, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v10, v8, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-static {v3, v9, v10, v11, v12}, Lcom/smartisanos/smengine/RectNode;->createSimpleTextureRect(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/RectNode;

    move-result-object v6

    .line 2571
    .local v6, "rect":Lcom/smartisanos/smengine/RectNode;
    const-string v9, "TextureModularColorMaterial"

    invoke-static {v9}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v2

    .line 2572
    .local v2, "m":Lcom/smartisanos/smengine/mymaterial/Material;
    invoke-virtual {v6, v2}, Lcom/smartisanos/smengine/RectNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 2573
    invoke-virtual {v6}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v7

    .line 2575
    .local v7, "rs":Lcom/smartisanos/smengine/RenderState;
    const/4 v9, 0x0

    iget v10, v8, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    const/4 v11, 0x0

    invoke-virtual {v6, v9, v10, v11}, Lcom/smartisanos/smengine/RectNode;->setTranslate(FFF)V

    .line 2576
    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-virtual {v6, v9, v10, v11, v12}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 2577
    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Lcom/smartisanos/smengine/RenderState;->setIsEnableBlend(Z)V

    .line 2578
    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Lcom/smartisanos/smengine/RenderState;->setIsPolygonOffset(Z)V

    .line 2579
    const/high16 v9, -0x40800000    # -1.0f

    const/high16 v10, -0x40000000    # -2.0f

    invoke-virtual {v7, v9, v10}, Lcom/smartisanos/smengine/RenderState;->setPolygonOffsetFactorUnits(FF)V

    .line 2580
    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Lcom/smartisanos/smengine/RenderState;->setIsEnableDepthTest(Z)V

    .line 2581
    const-string v9, "folder_shadow.png"

    const/4 v10, 0x1

    invoke-static {v9, v10}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/smartisanos/smengine/RectNode;->setImageName(Ljava/lang/String;)V

    .line 2582
    sget-boolean v9, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v9, :cond_2

    .line 2583
    const/4 v9, 0x3

    invoke-virtual {v6, v9}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    .line 2587
    :goto_2
    iput-object v6, p0, Lcom/smartisanos/launcher/view/Page;->mLongPressPageShadowRect:Lcom/smartisanos/smengine/RectNode;

    .line 2588
    iget-object v9, p0, Lcom/smartisanos/launcher/view/Page;->mLongPressPageShadowRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {p0, v9}, Lcom/smartisanos/launcher/view/Page;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 2589
    iget-object v9, p0, Lcom/smartisanos/launcher/view/Page;->mLongPressPageShadowRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v9}, Lcom/smartisanos/smengine/RectNode;->updateGeometricState()V

    .line 2590
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->updateGeometricState()V

    .line 2591
    invoke-static {}, Lcom/smartisanos/launcher/view/LayerManager;->getInstance()Lcom/smartisanos/launcher/view/LayerManager;

    move-result-object v9

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->getLayStatus()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/smartisanos/launcher/view/LayerManager;->getPageLayer(I)Lcom/smartisanos/launcher/view/LayerManager$PageLayer;

    move-result-object v4

    .line 2592
    .local v4, "pageLayer":Lcom/smartisanos/launcher/view/LayerManager$PageLayer;
    iget-object v9, p0, Lcom/smartisanos/launcher/view/Page;->mLongPressPageShadowRect:Lcom/smartisanos/smengine/RectNode;

    iget v10, v4, Lcom/smartisanos/launcher/view/LayerManager$PageLayer;->PAGE_IN_SWITCH_PAGE_MODE_OUTER_SHADOW_LAYER:I

    invoke-virtual {v9, v10}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    goto/16 :goto_0

    .line 2564
    .end local v2    # "m":Lcom/smartisanos/smengine/mymaterial/Material;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "pageLayer":Lcom/smartisanos/launcher/view/LayerManager$PageLayer;
    .end local v6    # "rect":Lcom/smartisanos/smengine/RectNode;
    .end local v7    # "rs":Lcom/smartisanos/smengine/RenderState;
    :cond_1
    iget v9, v8, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    iget v10, v5, Lcom/smartisanos/launcher/data/LayoutProperty;->page_up_shadow_image_padingtop:F

    const/high16 v11, 0x40000000    # 2.0f

    div-float v11, v0, v11

    add-float/2addr v10, v11

    iget v11, v5, Lcom/smartisanos/launcher/data/LayoutProperty;->page_up_shadow_image_paddingbottom:F

    const/high16 v12, 0x40000000    # 2.0f

    div-float v12, v0, v12

    add-float/2addr v11, v12

    div-float/2addr v10, v11

    mul-float/2addr v9, v10

    iput v9, v8, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    goto/16 :goto_1

    .line 2585
    .restart local v2    # "m":Lcom/smartisanos/smengine/mymaterial/Material;
    .restart local v3    # "name":Ljava/lang/String;
    .restart local v6    # "rect":Lcom/smartisanos/smengine/RectNode;
    .restart local v7    # "rs":Lcom/smartisanos/smengine/RenderState;
    :cond_2
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    goto :goto_2
.end method

.method private createPageTitle(FFZ)V
    .locals 11
    .param p1, "title_w"    # F
    .param p2, "title_h"    # F
    .param p3, "showTitle"    # Z

    .prologue
    const/high16 v10, 0x40000000    # 2.0f

    const/4 v5, 0x0

    .line 1164
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    sget v1, Lcom/smartisanos/launcher/ResIds$string;->page_default_title:I

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/MainView;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1165
    .local v2, "defaultTitle":Ljava/lang/String;
    new-instance v0, Lcom/smartisanos/launcher/view/TitleView;

    const-string v1, "TitleView"

    move v3, p1

    move v4, p2

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/smartisanos/launcher/view/TitleView;-><init>(Ljava/lang/String;Ljava/lang/String;FFFLcom/smartisanos/launcher/view/Page;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/Page;->mTitleAreaNode:Lcom/smartisanos/launcher/view/TitleView;

    .line 1167
    sget v0, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v7

    .line 1168
    .local v7, "lp":Lcom/smartisanos/launcher/data/LayoutProperty;
    sget v0, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v8

    .line 1169
    .local v8, "multiProp":Lcom/smartisanos/launcher/data/LayoutProperty;
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Page;->mTitleAreaNode:Lcom/smartisanos/launcher/view/TitleView;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/TitleView;->create()V

    .line 1170
    iget v0, v7, Lcom/smartisanos/launcher/data/LayoutProperty;->page_width:F

    iget v1, v8, Lcom/smartisanos/launcher/data/LayoutProperty;->page_width:F

    div-float v9, v0, v1

    .line 1171
    .local v9, "scale":F
    if-eqz p3, :cond_1

    .line 1172
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Page;->mTitleAreaNode:Lcom/smartisanos/launcher/view/TitleView;

    iget v1, v7, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    div-float/2addr v1, v10

    mul-float v3, p2, v9

    div-float/2addr v3, v10

    add-float/2addr v1, v3

    iget v3, v8, Lcom/smartisanos/launcher/data/LayoutProperty;->title_page_spacing:F

    mul-float/2addr v3, v9

    add-float/2addr v1, v3

    invoke-virtual {v0, v5, v1, v5}, Lcom/smartisanos/launcher/view/TitleView;->setTranslate(FFF)V

    .line 1176
    :goto_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Page;->mTitleAreaNode:Lcom/smartisanos/launcher/view/TitleView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v9, v9, v1}, Lcom/smartisanos/launcher/view/TitleView;->setScale(FFF)V

    .line 1177
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Page;->mTitleAreaNode:Lcom/smartisanos/launcher/view/TitleView;

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/Page;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 1178
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1179
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Page;->mTitleAreaNode:Lcom/smartisanos/launcher/view/TitleView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/TitleView;->setDisplayIconAndText(Z)V

    .line 1183
    :goto_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Page;->mTitleAreaNode:Lcom/smartisanos/launcher/view/TitleView;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/TitleView;->updateGeometricState()V

    .line 1184
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1185
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Page;->mTitleAreaNode:Lcom/smartisanos/launcher/view/TitleView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/TitleView;->setMode(I)V

    .line 1187
    :cond_0
    return-void

    .line 1174
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Page;->mTitleAreaNode:Lcom/smartisanos/launcher/view/TitleView;

    iget v1, v7, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    div-float/2addr v1, v10

    mul-float v3, p2, v9

    div-float/2addr v3, v10

    sub-float/2addr v1, v3

    invoke-virtual {v0, v5, v1, v5}, Lcom/smartisanos/launcher/view/TitleView;->setTranslate(FFF)V

    goto :goto_0

    .line 1181
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Page;->mTitleAreaNode:Lcom/smartisanos/launcher/view/TitleView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/TitleView;->setDisplayIconAndText(Z)V

    goto :goto_1
.end method

.method public static createRowAndColIndexFromIndex(I)Lcom/smartisanos/smengine/math/Vector2f;
    .locals 8
    .param p0, "cellIndex"    # I

    .prologue
    .line 1037
    if-gez p0, :cond_0

    .line 1038
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "### error,cellindex < 0"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1040
    :cond_0
    new-instance v4, Lcom/smartisanos/smengine/math/Vector2f;

    invoke-direct {v4}, Lcom/smartisanos/smengine/math/Vector2f;-><init>()V

    .line 1042
    .local v4, "result":Lcom/smartisanos/smengine/math/Vector2f;
    sget v5, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    invoke-static {v5}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v3

    .line 1043
    .local v3, "prop":Lcom/smartisanos/launcher/data/LayoutProperty;
    int-to-float v5, p0

    iget v6, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_row_num:I

    int-to-float v6, v6

    div-float v0, v5, v6

    .line 1044
    .local v0, "floor":F
    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v2, v6

    .line 1047
    .local v2, "newRowIndex":I
    iget v5, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_col_num:I

    rem-int v1, p0, v5

    .line 1048
    .local v1, "newColIndex":I
    int-to-float v5, v2

    int-to-float v6, v1

    invoke-virtual {v4, v5, v6}, Lcom/smartisanos/smengine/math/Vector2f;->set(FF)Lcom/smartisanos/smengine/math/Vector2f;

    .line 1049
    return-object v4
.end method

.method public static getAfterOfIndex(I)I
    .locals 4
    .param p0, "index"    # I

    .prologue
    .line 1449
    add-int/lit8 v1, p0, 0x1

    .line 1450
    .local v1, "result":I
    sget v2, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static {v2}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v2

    iget v2, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_row_num:I

    add-int/lit8 v2, v2, -0x1

    sget v3, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static {v3}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v3

    iget v3, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_col_num:I

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Lcom/smartisanos/launcher/view/Page;->getCellIndex(II)I

    move-result v0

    .line 1451
    .local v0, "max":I
    if-le v1, v0, :cond_0

    .line 1452
    const/4 v1, 0x0

    .line 1454
    :cond_0
    return v1
.end method

.method public static getBackgroundImageName(II)Ljava/lang/String;
    .locals 4
    .param p0, "i"    # I
    .param p1, "j"    # I

    .prologue
    const/4 v3, 0x1

    .line 1515
    sget v1, Lcom/smartisanos/launcher/data/Constants;->sPageStyle:I

    if-ne v1, v3, :cond_0

    .line 1516
    sget v1, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    invoke-static {v1}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v1

    iget v1, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_col_num:I

    mul-int/2addr v1, p0

    add-int/2addr v1, p1

    rem-int/lit8 v1, v1, 0x9

    add-int/lit8 v0, v1, 0x1

    .line 1517
    .local v0, "index":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "back"

    invoke-static {v2, v3}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1520
    :goto_0
    return-object v1

    .line 1519
    .end local v0    # "index":I
    :cond_0
    sget v1, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    invoke-static {v1}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v1

    iget v1, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_col_num:I

    mul-int/2addr v1, p0

    add-int/2addr v1, p1

    rem-int/lit8 v1, v1, 0x10

    add-int/lit8 v0, v1, 0x1

    .line 1520
    .restart local v0    # "index":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "back"

    invoke-static {v2, v3}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getBeforeOfIndex(I)I
    .locals 3
    .param p0, "index"    # I

    .prologue
    .line 1442
    add-int/lit8 v0, p0, -0x1

    .line 1443
    .local v0, "result":I
    if-gez v0, :cond_0

    .line 1444
    sget v1, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static {v1}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v1

    iget v1, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_row_num:I

    add-int/lit8 v1, v1, -0x1

    sget v2, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static {v2}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v2

    iget v2, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_col_num:I

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Lcom/smartisanos/launcher/view/Page;->getCellIndex(II)I

    move-result v0

    .line 1446
    :cond_0
    return v0
.end method

.method public static getCellIndex(II)I
    .locals 1
    .param p0, "i"    # I
    .param p1, "j"    # I

    .prologue
    .line 1438
    sget v0, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v0

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_col_num:I

    mul-int/2addr v0, p0

    add-int/2addr v0, p1

    return v0
.end method

.method public static getDefaultPageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    const-string v0, ""

    return-object v0
.end method

.method public static getStatusName(I)Ljava/lang/String;
    .locals 1
    .param p0, "status"    # I

    .prologue
    .line 73
    if-nez p0, :cond_0

    .line 74
    const-string v0, "VISIBLE"

    .line 80
    :goto_0
    return-object v0

    .line 75
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 76
    const-string v0, "INVISIBLE"

    goto :goto_0

    .line 77
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 78
    const-string v0, "LOCKED"

    goto :goto_0

    .line 80
    :cond_2
    const-string v0, "unknown status"

    goto :goto_0
.end method

.method private initListener()V
    .locals 1

    .prologue
    .line 1375
    new-instance v0, Lcom/smartisanos/launcher/view/Page$6;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/view/Page$6;-><init>(Lcom/smartisanos/launcher/view/Page;)V

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/Page;->setOnClickListener(Lcom/smartisanos/smengine/SceneNode$OnClickListener;)V

    .line 1406
    return-void
.end method

.method private setScissor(Lcom/smartisanos/smengine/RectNode;Lcom/smartisanos/smengine/math/Vector3f;)V
    .locals 9
    .param p1, "rect"    # Lcom/smartisanos/smengine/RectNode;
    .param p2, "loc"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    .line 1082
    sget v5, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v1, v5

    .line 1083
    .local v1, "mWindowWidth":F
    sget v5, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    int-to-float v0, v5

    .line 1084
    .local v0, "mWindowHeight":F
    iget v5, p2, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    div-float v6, v1, v7

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/smartisanos/launcher/view/Page;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v6, v6, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    div-float/2addr v6, v7

    sub-float v3, v5, v6

    .line 1085
    .local v3, "x":F
    iget v5, p2, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    div-float v6, v0, v7

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/smartisanos/launcher/view/Page;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v6, v6, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    div-float/2addr v6, v7

    sub-float v4, v5, v6

    .line 1086
    .local v4, "y":F
    invoke-virtual {p1}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v2

    .line 1087
    .local v2, "rs":Lcom/smartisanos/smengine/RenderState;
    float-to-int v5, v3

    float-to-int v6, v4

    iget-object v7, p0, Lcom/smartisanos/launcher/view/Page;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v7, v7, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    float-to-int v7, v7

    iget-object v8, p0, Lcom/smartisanos/launcher/view/Page;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v8, v8, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    float-to-int v8, v8

    invoke-virtual {v2, v5, v6, v7, v8}, Lcom/smartisanos/smengine/RenderState;->setScissor(IIII)V

    .line 1088
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lcom/smartisanos/smengine/RenderState;->setIsScissor(Z)V

    .line 1089
    return-void
.end method

.method private swapTwoCell(Lcom/smartisanos/launcher/view/Cell;Lcom/smartisanos/launcher/view/Cell;)V
    .locals 4
    .param p1, "pc1"    # Lcom/smartisanos/launcher/view/Cell;
    .param p2, "pc2"    # Lcom/smartisanos/launcher/view/Cell;

    .prologue
    .line 990
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Cell;->getRowIndex()I

    move-result v1

    .line 991
    .local v1, "pc1Row":I
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Cell;->getColIndex()I

    move-result v0

    .line 993
    .local v0, "pc1Col":I
    invoke-virtual {p2}, Lcom/smartisanos/launcher/view/Cell;->getRowIndex()I

    move-result v2

    invoke-virtual {p2}, Lcom/smartisanos/launcher/view/Cell;->getColIndex()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/smartisanos/launcher/view/Cell;->setRowCol(II)V

    .line 994
    invoke-virtual {p2, v1, v0}, Lcom/smartisanos/launcher/view/Cell;->setRowCol(II)V

    .line 995
    return-void
.end method

.method private updatePageCoverFromEyeIcon(ZZ)Lcom/smartisanos/smengine/AnimationTimeLine;
    .locals 30
    .param p1, "handleLockKey"    # Z
    .param p2, "noAnim"    # Z

    .prologue
    .line 1679
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/Page;->mEyePageCoverImage:Lcom/smartisanos/smengine/RectNode;

    if-nez v3, :cond_0

    .line 1680
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/Page;->createPageCoverForEye()V

    .line 1682
    :cond_0
    sget v3, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static {v3}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v3

    iget v0, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    move/from16 v24, v0

    .line 1683
    .local v24, "height":F
    const/high16 v26, 0x3f800000    # 1.0f

    .line 1684
    .local v26, "scale_y":F
    move/from16 v23, p1

    .line 1685
    .local v23, "handleLockHardKey":Z
    move-object/from16 v0, p0

    iget v3, v0, Lcom/smartisanos/launcher/view/Page;->mPageStatus:I

    if-nez v3, :cond_9

    .line 1686
    const v27, 0x3e99999a    # 0.3f

    .line 1687
    .local v27, "time":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/Page;->mTimeLineForEye:Lcom/smartisanos/smengine/AnimationTimeLine;

    if-eqz v3, :cond_1

    .line 1688
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/Page;->mTimeLineForEye:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/AnimationTimeLine;->forceFinish()V

    .line 1689
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/smartisanos/launcher/view/Page;->mTimeLineForEye:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 1691
    :cond_1
    new-instance v3, Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-direct {v3}, Lcom/smartisanos/smengine/AnimationTimeLine;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/smartisanos/launcher/view/Page;->mTimeLineForEye:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 1699
    new-instance v29, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/Page;->mEyePageCoverImage:Lcom/smartisanos/smengine/RectNode;

    move-object/from16 v0, v29

    invoke-direct {v0, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 1700
    .local v29, "trans_anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    move-object/from16 v0, v29

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 1701
    const/16 v3, 0xe

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 1702
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/Page;->mEyePageCoverImage:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/RectNode;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v22

    .line 1703
    .local v22, "from":Lcom/smartisanos/smengine/math/Vector3f;
    new-instance v28, Lcom/smartisanos/smengine/math/Vector3f;

    move-object/from16 v0, v22

    iget v3, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move-object/from16 v0, v22

    iget v5, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    sub-float v5, v5, v24

    const/high16 v6, 0x40000000    # 2.0f

    sub-float/2addr v5, v6

    move-object/from16 v0, v22

    iget v6, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    move-object/from16 v0, v28

    invoke-direct {v0, v3, v5, v6}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    .line 1709
    .local v28, "to":Lcom/smartisanos/smengine/math/Vector3f;
    sget-boolean v3, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v3, :cond_6

    .line 1710
    const/high16 v4, 0x3f800000    # 1.0f

    .line 1711
    .local v4, "fromc":F
    const v8, 0x3dcccccd    # 0.1f

    .line 1712
    .local v8, "toc":F
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/Page;->getAllPageCell()Ljava/util/ArrayList;

    move-result-object v21

    .line 1713
    .local v21, "cells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_2
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/smartisanos/launcher/view/Cell;

    .line 1714
    .local v20, "cell":Lcom/smartisanos/launcher/view/Cell;
    if-eqz v20, :cond_2

    .line 1715
    const/high16 v4, 0x3f800000    # 1.0f

    .line 1716
    invoke-virtual/range {v20 .. v20}, Lcom/smartisanos/launcher/view/Cell;->getBackgroundRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1717
    new-instance v2, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    invoke-virtual/range {v20 .. v20}, Lcom/smartisanos/launcher/view/Cell;->getBackgroundRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 1718
    .local v2, "cellAnim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    move/from16 v0, v27

    invoke-virtual {v2, v0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 1719
    const/16 v3, 0xe

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 1720
    const/4 v3, 0x3

    move v5, v4

    move v6, v4

    move v7, v4

    move v9, v8

    move v10, v8

    move v11, v8

    invoke-virtual/range {v2 .. v11}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFFFF)V

    .line 1723
    new-instance v3, Lcom/smartisanos/launcher/view/Page$7;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v3, v0, v1}, Lcom/smartisanos/launcher/view/Page$7;-><init>(Lcom/smartisanos/launcher/view/Page;Lcom/smartisanos/launcher/view/Cell;)V

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 1729
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/Page;->mTimeLineForEye:Lcom/smartisanos/smengine/AnimationTimeLine;

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v2}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 1731
    .end local v2    # "cellAnim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    :cond_3
    const v4, 0x3ee66666    # 0.45f

    .line 1732
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/MainView;->isEditMode()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1733
    const/high16 v4, 0x3f800000    # 1.0f

    .line 1735
    :cond_4
    invoke-virtual/range {v20 .. v20}, Lcom/smartisanos/launcher/view/Cell;->getForegroundRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 1736
    new-instance v2, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    invoke-virtual/range {v20 .. v20}, Lcom/smartisanos/launcher/view/Cell;->getForegroundRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 1737
    .restart local v2    # "cellAnim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    move/from16 v0, v27

    invoke-virtual {v2, v0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 1738
    const/16 v3, 0xe

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 1739
    const/4 v3, 0x3

    move v5, v4

    move v6, v4

    move v7, v4

    move v9, v8

    move v10, v8

    move v11, v8

    invoke-virtual/range {v2 .. v11}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFFFF)V

    .line 1741
    new-instance v3, Lcom/smartisanos/launcher/view/Page$8;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v3, v0, v1}, Lcom/smartisanos/launcher/view/Page$8;-><init>(Lcom/smartisanos/launcher/view/Page;Lcom/smartisanos/launcher/view/Cell;)V

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 1747
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/Page;->mTimeLineForEye:Lcom/smartisanos/smengine/AnimationTimeLine;

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v2}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 1749
    .end local v2    # "cellAnim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    :cond_5
    invoke-virtual/range {v20 .. v20}, Lcom/smartisanos/launcher/view/Cell;->getForegroundOverlapRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1750
    new-instance v2, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    invoke-virtual/range {v20 .. v20}, Lcom/smartisanos/launcher/view/Cell;->getForegroundOverlapRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 1751
    .restart local v2    # "cellAnim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    move/from16 v0, v27

    invoke-virtual {v2, v0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 1752
    const/16 v3, 0xe

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 1753
    const/4 v3, 0x3

    move v5, v4

    move v6, v4

    move v7, v4

    move v9, v8

    move v10, v8

    move v11, v8

    invoke-virtual/range {v2 .. v11}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFFFF)V

    .line 1755
    new-instance v3, Lcom/smartisanos/launcher/view/Page$9;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v3, v0, v1}, Lcom/smartisanos/launcher/view/Page$9;-><init>(Lcom/smartisanos/launcher/view/Page;Lcom/smartisanos/launcher/view/Cell;)V

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 1761
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/Page;->mTimeLineForEye:Lcom/smartisanos/smengine/AnimationTimeLine;

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v2}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    goto/16 :goto_0

    .line 1766
    .end local v2    # "cellAnim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    .end local v4    # "fromc":F
    .end local v8    # "toc":F
    .end local v20    # "cell":Lcom/smartisanos/launcher/view/Cell;
    .end local v21    # "cells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    :cond_6
    const-string v3, "SimpleTextureClipPlaneMaterial"

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v3, v5, v6}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;ILjava/util/ArrayList;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v25

    .line 1768
    .local v25, "m":Lcom/smartisanos/smengine/mymaterial/Material;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/Page;->mEyePageCoverImage:Lcom/smartisanos/smengine/RectNode;

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Lcom/smartisanos/smengine/RectNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 1769
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/Page;->mEyePageCoverImage:Lcom/smartisanos/smengine/RectNode;

    sget v5, Lcom/smartisanos/launcher/data/Constants;->sEyeCoverPageColor:F

    sget v6, Lcom/smartisanos/launcher/data/Constants;->sEyeCoverPageColor:F

    sget v7, Lcom/smartisanos/launcher/data/Constants;->sEyeCoverPageColor:F

    sget v10, Lcom/smartisanos/launcher/data/Constants;->sEyeCoverPageColor:F

    invoke-virtual {v3, v5, v6, v7, v10}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 1771
    const/16 v3, 0x11

    new-instance v5, Lcom/smartisanos/smengine/math/Vector4f;

    const/4 v6, 0x0

    const/high16 v7, -0x40800000    # -1.0f

    const/4 v10, 0x0

    const/high16 v11, 0x40000000    # 2.0f

    div-float v11, v24, v11

    invoke-direct {v5, v6, v7, v10, v11}, Lcom/smartisanos/smengine/math/Vector4f;-><init>(FFFF)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v3, v5}, Lcom/smartisanos/smengine/mymaterial/Material;->setParam(ILjava/lang/Object;)V

    .line 1772
    const/16 v3, 0x13

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v24, v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-virtual {v0, v3, v5}, Lcom/smartisanos/smengine/mymaterial/Material;->setParam(ILjava/lang/Object;)V

    .line 1773
    const/4 v10, 0x0

    move-object/from16 v0, v22

    iget v11, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move-object/from16 v0, v22

    iget v12, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move-object/from16 v0, v22

    iget v13, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    move-object/from16 v0, v28

    iget v14, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move-object/from16 v0, v28

    iget v15, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move-object/from16 v0, v28

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    move/from16 v16, v0

    move-object/from16 v9, v29

    invoke-virtual/range {v9 .. v16}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFF)V

    .line 1774
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/Page;->mTimeLineForEye:Lcom/smartisanos/smengine/AnimationTimeLine;

    const/4 v5, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v3, v5, v0}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 1775
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/Page;->mTimeLineForEye:Lcom/smartisanos/smengine/AnimationTimeLine;

    new-instance v5, Lcom/smartisanos/launcher/view/Page$10;

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v5, v0, v1}, Lcom/smartisanos/launcher/view/Page$10;-><init>(Lcom/smartisanos/launcher/view/Page;Z)V

    invoke-virtual {v3, v5}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 1793
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/Page;->mTimeLineForEye:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/AnimationTimeLine;->start()V

    .line 1794
    if-eqz p2, :cond_7

    .line 1795
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/Page;->mTimeLineForEye:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/AnimationTimeLine;->forceFinish()V

    .line 1796
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/smartisanos/launcher/view/Page;->mTimeLineForEye:Lcom/smartisanos/smengine/AnimationTimeLine;

    :cond_7
    move-object/from16 v9, v29

    .line 1903
    .end local v28    # "to":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v29    # "trans_anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    .local v9, "trans_anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    :cond_8
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/Page;->mTimeLineForEye:Lcom/smartisanos/smengine/AnimationTimeLine;

    return-object v3

    .line 1799
    .end local v9    # "trans_anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    .end local v22    # "from":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v25    # "m":Lcom/smartisanos/smengine/mymaterial/Material;
    .end local v27    # "time":F
    :cond_9
    const v27, 0x3e99999a    # 0.3f

    .line 1800
    .restart local v27    # "time":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/Page;->mTimeLineForEye:Lcom/smartisanos/smengine/AnimationTimeLine;

    if-eqz v3, :cond_a

    .line 1801
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/Page;->mTimeLineForEye:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/AnimationTimeLine;->forceFinish()V

    .line 1802
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/smartisanos/launcher/view/Page;->mTimeLineForEye:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 1804
    :cond_a
    new-instance v3, Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-direct {v3}, Lcom/smartisanos/smengine/AnimationTimeLine;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/smartisanos/launcher/view/Page;->mTimeLineForEye:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 1812
    new-instance v9, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/Page;->mEyePageCoverImage:Lcom/smartisanos/smengine/RectNode;

    invoke-direct {v9, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 1813
    .restart local v9    # "trans_anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    move/from16 v0, v27

    invoke-virtual {v9, v0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 1814
    const/16 v3, 0xe

    invoke-virtual {v9, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 1815
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/Page;->mEyePageCoverImage:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/RectNode;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v22

    .line 1816
    .restart local v22    # "from":Lcom/smartisanos/smengine/math/Vector3f;
    const-string v3, "SimpleTextureClipPlaneMaterial"

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v3, v5, v6}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;ILjava/util/ArrayList;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v25

    .line 1817
    .restart local v25    # "m":Lcom/smartisanos/smengine/mymaterial/Material;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/Page;->mEyePageCoverImage:Lcom/smartisanos/smengine/RectNode;

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Lcom/smartisanos/smengine/RectNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 1818
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/Page;->mEyePageCoverImage:Lcom/smartisanos/smengine/RectNode;

    sget v5, Lcom/smartisanos/launcher/data/Constants;->sEyeCoverPageColor:F

    sget v6, Lcom/smartisanos/launcher/data/Constants;->sEyeCoverPageColor:F

    sget v7, Lcom/smartisanos/launcher/data/Constants;->sEyeCoverPageColor:F

    sget v10, Lcom/smartisanos/launcher/data/Constants;->sEyeCoverPageColor:F

    invoke-virtual {v3, v5, v6, v7, v10}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 1820
    const/16 v3, 0x11

    new-instance v5, Lcom/smartisanos/smengine/math/Vector4f;

    const/4 v6, 0x0

    const/high16 v7, -0x40800000    # -1.0f

    const/4 v10, 0x0

    const/high16 v11, 0x40000000    # 2.0f

    div-float v11, v24, v11

    invoke-direct {v5, v6, v7, v10, v11}, Lcom/smartisanos/smengine/math/Vector4f;-><init>(FFFF)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v3, v5}, Lcom/smartisanos/smengine/mymaterial/Material;->setParam(ILjava/lang/Object;)V

    .line 1821
    const/16 v3, 0x13

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v24, v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-virtual {v0, v3, v5}, Lcom/smartisanos/smengine/mymaterial/Material;->setParam(ILjava/lang/Object;)V

    .line 1822
    const/4 v10, 0x0

    move-object/from16 v0, v22

    iget v11, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move-object/from16 v0, v22

    iget v12, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move-object/from16 v0, v22

    iget v13, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    move-object/from16 v0, v22

    iget v14, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move-object/from16 v0, v22

    iget v3, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    add-float v3, v3, v24

    const/high16 v5, 0x40000000    # 2.0f

    add-float v15, v3, v5

    move-object/from16 v0, v22

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    move/from16 v16, v0

    invoke-virtual/range {v9 .. v16}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFF)V

    .line 1823
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/Page;->mTimeLineForEye:Lcom/smartisanos/smengine/AnimationTimeLine;

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v9}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 1824
    sget-boolean v3, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v3, :cond_f

    .line 1825
    const v4, 0x3dcccccd    # 0.1f

    .line 1826
    .restart local v4    # "fromc":F
    const/high16 v8, 0x3f800000    # 1.0f

    .line 1827
    .restart local v8    # "toc":F
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/Page;->getAllPageCell()Ljava/util/ArrayList;

    move-result-object v21

    .line 1828
    .restart local v21    # "cells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_b
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/smartisanos/launcher/view/Cell;

    .line 1829
    .restart local v20    # "cell":Lcom/smartisanos/launcher/view/Cell;
    if-eqz v20, :cond_b

    .line 1830
    const/high16 v8, 0x3f800000    # 1.0f

    .line 1831
    invoke-virtual/range {v20 .. v20}, Lcom/smartisanos/launcher/view/Cell;->getBackgroundRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v5

    if-eqz v5, :cond_c

    .line 1832
    new-instance v2, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    invoke-virtual/range {v20 .. v20}, Lcom/smartisanos/launcher/view/Cell;->getBackgroundRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 1833
    .restart local v2    # "cellAnim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v27, v5

    invoke-virtual {v2, v5}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 1834
    const/16 v5, 0xe

    invoke-virtual {v2, v5}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 1835
    const/4 v11, 0x3

    move-object v10, v2

    move v12, v4

    move v13, v4

    move v14, v4

    move v15, v4

    move/from16 v16, v8

    move/from16 v17, v8

    move/from16 v18, v8

    move/from16 v19, v8

    invoke-virtual/range {v10 .. v19}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFFFF)V

    .line 1837
    new-instance v5, Lcom/smartisanos/launcher/view/Page$11;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v5, v0, v1}, Lcom/smartisanos/launcher/view/Page$11;-><init>(Lcom/smartisanos/launcher/view/Page;Lcom/smartisanos/launcher/view/Cell;)V

    invoke-virtual {v2, v5}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 1843
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/Page;->mTimeLineForEye:Lcom/smartisanos/smengine/AnimationTimeLine;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v2}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 1845
    .end local v2    # "cellAnim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    :cond_c
    const v8, 0x3ee66666    # 0.45f

    .line 1846
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/MainView;->isEditMode()Z

    move-result v5

    if-nez v5, :cond_d

    .line 1847
    const/high16 v8, 0x3f800000    # 1.0f

    .line 1849
    :cond_d
    invoke-virtual/range {v20 .. v20}, Lcom/smartisanos/launcher/view/Cell;->getForegroundRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v5

    if-eqz v5, :cond_e

    .line 1850
    new-instance v2, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    invoke-virtual/range {v20 .. v20}, Lcom/smartisanos/launcher/view/Cell;->getForegroundRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 1851
    .restart local v2    # "cellAnim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v27, v5

    invoke-virtual {v2, v5}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 1852
    const/16 v5, 0xe

    invoke-virtual {v2, v5}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 1853
    const/4 v11, 0x3

    move-object v10, v2

    move v12, v4

    move v13, v4

    move v14, v4

    move v15, v4

    move/from16 v16, v8

    move/from16 v17, v8

    move/from16 v18, v8

    move/from16 v19, v8

    invoke-virtual/range {v10 .. v19}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFFFF)V

    .line 1855
    new-instance v5, Lcom/smartisanos/launcher/view/Page$12;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v5, v0, v1}, Lcom/smartisanos/launcher/view/Page$12;-><init>(Lcom/smartisanos/launcher/view/Page;Lcom/smartisanos/launcher/view/Cell;)V

    invoke-virtual {v2, v5}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 1861
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/Page;->mTimeLineForEye:Lcom/smartisanos/smengine/AnimationTimeLine;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v2}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 1863
    .end local v2    # "cellAnim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    :cond_e
    invoke-virtual/range {v20 .. v20}, Lcom/smartisanos/launcher/view/Cell;->getForegroundOverlapRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v5

    if-eqz v5, :cond_b

    .line 1864
    new-instance v2, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    invoke-virtual/range {v20 .. v20}, Lcom/smartisanos/launcher/view/Cell;->getForegroundOverlapRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 1865
    .restart local v2    # "cellAnim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    move/from16 v0, v27

    invoke-virtual {v2, v0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 1866
    const/16 v5, 0xe

    invoke-virtual {v2, v5}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 1867
    const/4 v11, 0x3

    move-object v10, v2

    move v12, v4

    move v13, v4

    move v14, v4

    move v15, v4

    move/from16 v16, v8

    move/from16 v17, v8

    move/from16 v18, v8

    move/from16 v19, v8

    invoke-virtual/range {v10 .. v19}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFFFF)V

    .line 1869
    new-instance v5, Lcom/smartisanos/launcher/view/Page$13;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v5, v0, v1}, Lcom/smartisanos/launcher/view/Page$13;-><init>(Lcom/smartisanos/launcher/view/Page;Lcom/smartisanos/launcher/view/Cell;)V

    invoke-virtual {v2, v5}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 1875
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/Page;->mTimeLineForEye:Lcom/smartisanos/smengine/AnimationTimeLine;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v2}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    goto/16 :goto_2

    .line 1880
    .end local v2    # "cellAnim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    .end local v4    # "fromc":F
    .end local v8    # "toc":F
    .end local v20    # "cell":Lcom/smartisanos/launcher/view/Cell;
    .end local v21    # "cells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/Page;->mTimeLineForEye:Lcom/smartisanos/smengine/AnimationTimeLine;

    new-instance v5, Lcom/smartisanos/launcher/view/Page$14;

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v5, v0, v1}, Lcom/smartisanos/launcher/view/Page$14;-><init>(Lcom/smartisanos/launcher/view/Page;Z)V

    invoke-virtual {v3, v5}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 1897
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/Page;->mTimeLineForEye:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/AnimationTimeLine;->start()V

    .line 1898
    if-eqz p2, :cond_8

    .line 1899
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/Page;->mTimeLineForEye:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/AnimationTimeLine;->forceFinish()V

    .line 1900
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/smartisanos/launcher/view/Page;->mTimeLineForEye:Lcom/smartisanos/smengine/AnimationTimeLine;

    goto/16 :goto_1
.end method


.method public adjustIconForMode(I)V
    .locals 4
    .param p1, "targetMode"    # I

    .prologue
    .line 2885
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->getAllPageCell()Ljava/util/ArrayList;

    move-result-object v0

    .line 2886
    .local v0, "allpcs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 2887
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/Cell;

    .line 2888
    .local v2, "pc":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v2, p1}, Lcom/smartisanos/launcher/view/Cell;->adjustIconForMode(I)V

    .line 2886
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2890
    .end local v2    # "pc":Lcom/smartisanos/launcher/view/Cell;
    :cond_0
    return-void
.end method

.method protected afterCreatePage()V
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Page;->mItemInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 399
    return-void
.end method

.method public allPageCellAreEmpty()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2266
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->getAllEmptyCell()Ljava/util/ArrayList;

    move-result-object v0

    .line 2267
    .local v0, "cells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    sget v3, Lcom/smartisanos/launcher/data/Constants;->sPageStyle:I

    if-ne v3, v1, :cond_2

    .line 2268
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v4, 0x9

    if-ne v3, v4, :cond_1

    .line 2270
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 2268
    goto :goto_0

    .line 2269
    :cond_2
    sget v3, Lcom/smartisanos/launcher/data/Constants;->sPageStyle:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 2270
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v4, 0x10

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0

    .line 2272
    :cond_3
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "### Unknown page style!!!!!!!!!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public applyGaussianDarkLight()V
    .locals 4

    .prologue
    .line 2236
    iget-object v2, p0, Lcom/smartisanos/launcher/view/Page;->mTitleAreaNode:Lcom/smartisanos/launcher/view/TitleView;

    if-eqz v2, :cond_0

    .line 2237
    iget-object v2, p0, Lcom/smartisanos/launcher/view/Page;->mTitleAreaNode:Lcom/smartisanos/launcher/view/TitleView;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/TitleView;->applyGaussianDarkLight()V

    .line 2239
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->getAllPageCell()Ljava/util/ArrayList;

    move-result-object v1

    .line 2240
    .local v1, "cells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/Cell;

    .line 2241
    .local v0, "cell":Lcom/smartisanos/launcher/view/Cell;
    if-eqz v0, :cond_1

    .line 2242
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->applyGaussianDarkLight()V

    goto :goto_0

    .line 2245
    .end local v0    # "cell":Lcom/smartisanos/launcher/view/Cell;
    :cond_2
    return-void
.end method

.method public applyTheme()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    .line 2196
    invoke-virtual {p0, v3}, Lcom/smartisanos/launcher/view/Page;->setDrawWithBatch(Z)V

    .line 2197
    sget-boolean v2, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v2, :cond_0

    .line 2215
    :cond_0
    iget-object v2, p0, Lcom/smartisanos/launcher/view/Page;->mEyePageCoverImage:Lcom/smartisanos/smengine/RectNode;

    if-eqz v2, :cond_1

    .line 2216
    iget-object v2, p0, Lcom/smartisanos/launcher/view/Page;->mEyePageCoverImage:Lcom/smartisanos/smengine/RectNode;

    sget v4, Lcom/smartisanos/launcher/data/Constants;->sEyeCoverPageColor:F

    sget v5, Lcom/smartisanos/launcher/data/Constants;->sEyeCoverPageColor:F

    sget v6, Lcom/smartisanos/launcher/data/Constants;->sEyeCoverPageColor:F

    sget v7, Lcom/smartisanos/launcher/data/Constants;->sEyeCoverPageColor:F

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 2219
    :cond_1
    instance-of v2, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;

    if-eqz v2, :cond_2

    .line 2220
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->initPageContent()V

    move-object v2, p0

    .line 2221
    check-cast v2, Lcom/smartisanos/launcher/view/PageWithRenderTarget;

    sget-boolean v4, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    invoke-virtual {v2, v4}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->setUseStaticGaussian(Z)V

    .line 2223
    :cond_2
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v4

    sget-boolean v2, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-nez v2, :cond_5

    move v2, v3

    :goto_0
    invoke-virtual {v4, v2}, Lcom/smartisanos/smengine/RenderState;->setIsUseVBO(Z)V

    .line 2224
    iget-object v2, p0, Lcom/smartisanos/launcher/view/Page;->mTitleAreaNode:Lcom/smartisanos/launcher/view/TitleView;

    if-eqz v2, :cond_3

    .line 2225
    iget-object v2, p0, Lcom/smartisanos/launcher/view/Page;->mTitleAreaNode:Lcom/smartisanos/launcher/view/TitleView;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/TitleView;->applyTheme()V

    .line 2227
    :cond_3
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->getAllPageCell()Ljava/util/ArrayList;

    move-result-object v1

    .line 2228
    .local v1, "cells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/Cell;

    .line 2229
    .local v0, "cell":Lcom/smartisanos/launcher/view/Cell;
    if-eqz v0, :cond_4

    .line 2230
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->applyTheme()V

    goto :goto_1

    .line 2223
    .end local v0    # "cell":Lcom/smartisanos/launcher/view/Cell;
    .end local v1    # "cells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    :cond_5
    const/4 v2, 0x0

    goto :goto_0

    .line 2233
    .restart local v1    # "cells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    :cond_6
    return-void
.end method

.method public autoGenerateAllEmpty()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 934
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->getAllNonEmptyCellList()Ljava/util/ArrayList;

    move-result-object v0

    .line 935
    .local v0, "allNonEmptyPcList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 947
    :goto_0
    return v4

    .line 940
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->removeAllEmptyCell()V

    .line 941
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 942
    .local v3, "start":I
    move v1, v3

    .local v1, "i":I
    :goto_1
    iget-object v5, p0, Lcom/smartisanos/launcher/view/Page;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v5, v5, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_row_num:I

    iget-object v6, p0, Lcom/smartisanos/launcher/view/Page;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v6, v6, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_col_num:I

    mul-int/2addr v5, v6

    if-ge v1, v5, :cond_1

    .line 943
    invoke-static {v1}, Lcom/smartisanos/launcher/view/Page;->createRowAndColIndexFromIndex(I)Lcom/smartisanos/smengine/math/Vector2f;

    move-result-object v2

    .line 944
    .local v2, "newIndex":Lcom/smartisanos/smengine/math/Vector2f;
    iget v5, v2, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    float-to-int v5, v5

    iget v6, v2, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    float-to-int v6, v6

    const/4 v7, 0x0

    invoke-virtual {p0, v5, v6, v4, v7}, Lcom/smartisanos/launcher/view/Page;->createEmptyCell(IIZLcom/smartisanos/smengine/Animation$AnimationListener;)Lcom/smartisanos/launcher/view/Cell;

    .line 942
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 946
    .end local v2    # "newIndex":Lcom/smartisanos/smengine/math/Vector2f;
    :cond_1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->reSortChildren()V

    .line 947
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public canDropAllCell(I)Z
    .locals 4
    .param p1, "cellCount"    # I

    .prologue
    .line 2371
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/PageView;->getCurrentPageCellCount()I

    move-result v2

    .line 2372
    .local v2, "pageCellCount":I
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->getAllNonEmptyCellList()Ljava/util/ArrayList;

    move-result-object v0

    .line 2373
    .local v0, "currentCellList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int v1, v2, v3

    .line 2374
    .local v1, "currentFreeCount":I
    if-lt v1, p1, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public changeCellIndexAndLocation(Lcom/smartisanos/launcher/view/Cell;I)V
    .locals 5
    .param p1, "pc"    # Lcom/smartisanos/launcher/view/Cell;
    .param p2, "index"    # I

    .prologue
    .line 961
    invoke-static {p2}, Lcom/smartisanos/launcher/view/Page;->createRowAndColIndexFromIndex(I)Lcom/smartisanos/smengine/math/Vector2f;

    move-result-object v0

    .line 962
    .local v0, "newIndex":Lcom/smartisanos/smengine/math/Vector2f;
    iget v2, v0, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    float-to-int v2, v2

    iget v3, v0, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    float-to-int v3, v3

    invoke-virtual {p1, v2, v3}, Lcom/smartisanos/launcher/view/Cell;->setRowCol(II)V

    .line 964
    sget-object v2, Lcom/smartisanos/launcher/data/Constants;->pageCellCenterPoints:[Lcom/smartisanos/smengine/math/Vector3f;

    aget-object v1, v2, p2

    .line 965
    .local v1, "pos":Lcom/smartisanos/smengine/math/Vector3f;
    iget v2, v1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v3, v1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v4, v1, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-virtual {p1, v2, v3, v4}, Lcom/smartisanos/launcher/view/Cell;->setTranslate(FFF)V

    .line 966
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Cell;->updateGeometricState()V

    .line 968
    return-void
.end method

.method public clear(Z)V
    .locals 1
    .param p1, "cleanHardwareResource"    # Z

    .prologue
    .line 387
    invoke-super {p0, p1}, Lcom/smartisanos/launcher/view/BaseNode;->clear(Z)V

    .line 388
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Page;->mTitleAreaNode:Lcom/smartisanos/launcher/view/TitleView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartisanos/launcher/view/Page;->mTitleAreaNode:Lcom/smartisanos/launcher/view/TitleView;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/TitleView;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Page;->mTitleAreaNode:Lcom/smartisanos/launcher/view/TitleView;

    invoke-virtual {v0, p1}, Lcom/smartisanos/launcher/view/TitleView;->clear(Z)V

    .line 391
    :cond_0
    return-void
.end method

.method public clearCellSelected()V
    .locals 4

    .prologue
    .line 2869
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->getAllNonEmptyCellList()Ljava/util/ArrayList;

    move-result-object v0

    .line 2870
    .local v0, "allpcs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 2871
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/Cell;

    .line 2872
    .local v2, "pc":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Cell;->clearCellSelected()I

    .line 2870
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2874
    .end local v2    # "pc":Lcom/smartisanos/launcher/view/Cell;
    :cond_0
    return-void
.end method

.method public clearPageStatusBySort(Z)V
    .locals 3
    .param p1, "noAnim"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1116
    iget v0, p0, Lcom/smartisanos/launcher/view/Page;->mPageStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1117
    invoke-virtual {p0, v2, v2, v2, p1}, Lcom/smartisanos/launcher/view/Page;->setPageStatus(IZZZ)V

    .line 1118
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->getTitleView()Lcom/smartisanos/launcher/view/TitleView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/TitleView;->setLockState(Z)V

    .line 1120
    :cond_0
    iget v0, p0, Lcom/smartisanos/launcher/view/Page;->mPageStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1121
    invoke-virtual {p0, v2, v2, v2, p1}, Lcom/smartisanos/launcher/view/Page;->setPageStatus(IZZZ)V

    .line 1122
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->getTitleView()Lcom/smartisanos/launcher/view/TitleView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/TitleView;->setEyeState(Z)V

    .line 1124
    :cond_1
    return-void
.end method

.method public computeInsertCellIndexUseFirstUnoccupied(Lcom/smartisanos/launcher/view/Cell;Z)Z
    .locals 7
    .param p1, "insertPc"    # Lcom/smartisanos/launcher/view/Cell;
    .param p2, "needUpdatePos"    # Z

    .prologue
    .line 998
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->getAllNonEmptyCellIndex()Ljava/util/ArrayList;

    move-result-object v1

    .line 999
    .local v1, "indexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/smartisanos/launcher/view/Page;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v4, v4, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_row_num:I

    iget-object v5, p0, Lcom/smartisanos/launcher/view/Page;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v5, v5, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_col_num:I

    mul-int/2addr v4, v5

    if-ge v0, v4, :cond_2

    .line 1001
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    .line 1002
    invoke-static {v0}, Lcom/smartisanos/launcher/view/Page;->createRowAndColIndexFromIndex(I)Lcom/smartisanos/smengine/math/Vector2f;

    move-result-object v2

    .line 1003
    .local v2, "newIndex":Lcom/smartisanos/smengine/math/Vector2f;
    iget v4, v2, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    float-to-int v4, v4

    iget v5, v2, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    float-to-int v5, v5

    invoke-virtual {p1, v4, v5}, Lcom/smartisanos/launcher/view/Cell;->setRowCol(II)V

    .line 1005
    if-eqz p2, :cond_0

    .line 1006
    sget-object v4, Lcom/smartisanos/launcher/data/Constants;->pageCellCenterPoints:[Lcom/smartisanos/smengine/math/Vector3f;

    aget-object v3, v4, v0

    .line 1007
    .local v3, "pos":Lcom/smartisanos/smengine/math/Vector3f;
    iget v4, v3, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v5, v3, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v6, v3, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-virtual {p1, v4, v5, v6}, Lcom/smartisanos/launcher/view/Cell;->setTranslate(FFF)V

    .line 1008
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Cell;->updateGeometricState()V

    .line 1011
    .end local v3    # "pos":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_0
    const/4 v4, 0x1

    .line 1015
    .end local v2    # "newIndex":Lcom/smartisanos/smengine/math/Vector2f;
    :goto_1
    return v4

    .line 999
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1015
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public create()V
    .locals 0

    .prologue
    .line 394
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->createPage()V

    .line 395
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->afterCreatePage()V

    .line 396
    return-void
.end method

.method public createAndShowPageTitle(Z)V
    .locals 9
    .param p1, "show"    # Z

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    .line 1132
    iget-object v4, p0, Lcom/smartisanos/launcher/view/Page;->mTitleAreaNode:Lcom/smartisanos/launcher/view/TitleView;

    if-nez v4, :cond_0

    .line 1134
    sget v4, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    invoke-static {v4}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v2

    .line 1136
    .local v2, "prop":Lcom/smartisanos/launcher/data/LayoutProperty;
    iget v4, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->page_title_width:F

    iget v5, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->page_title_height:F

    invoke-direct {p0, v4, v5, p1}, Lcom/smartisanos/launcher/view/Page;->createPageTitle(FFZ)V

    .line 1151
    .end local v2    # "prop":Lcom/smartisanos/launcher/data/LayoutProperty;
    :goto_0
    return-void

    .line 1138
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->updateTitle()V

    .line 1139
    iget-object v4, p0, Lcom/smartisanos/launcher/view/Page;->mTitleAreaNode:Lcom/smartisanos/launcher/view/TitleView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/smartisanos/launcher/view/TitleView;->setVisibility(Z)V

    .line 1140
    iget-object v4, p0, Lcom/smartisanos/launcher/view/Page;->mTitleAreaNode:Lcom/smartisanos/launcher/view/TitleView;

    new-instance v5, Lcom/smartisanos/smengine/math/Vector4f;

    invoke-direct {v5, v6, v6, v6, v6}, Lcom/smartisanos/smengine/math/Vector4f;-><init>(FFFF)V

    invoke-virtual {v4, v5}, Lcom/smartisanos/launcher/view/TitleView;->onUpdateModulateColor(Lcom/smartisanos/smengine/math/Vector4f;)V

    .line 1141
    sget v4, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static {v4}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v0

    .line 1142
    .local v0, "lp":Lcom/smartisanos/launcher/data/LayoutProperty;
    sget v4, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    invoke-static {v4}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v1

    .line 1143
    .local v1, "multiProp":Lcom/smartisanos/launcher/data/LayoutProperty;
    iget v4, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_width:F

    iget v5, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->page_width:F

    div-float v3, v4, v5

    .line 1144
    .local v3, "scale":F
    if-eqz p1, :cond_1

    .line 1145
    iget-object v4, p0, Lcom/smartisanos/launcher/view/Page;->mTitleAreaNode:Lcom/smartisanos/launcher/view/TitleView;

    iget v5, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    div-float/2addr v5, v8

    iget v6, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->page_title_height:F

    mul-float/2addr v6, v3

    div-float/2addr v6, v8

    add-float/2addr v5, v6

    iget v6, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->title_page_spacing:F

    mul-float/2addr v6, v3

    add-float/2addr v5, v6

    invoke-virtual {v4, v7, v5, v7}, Lcom/smartisanos/launcher/view/TitleView;->setTranslate(FFF)V

    .line 1149
    :goto_1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->updateGeometricState()V

    goto :goto_0

    .line 1147
    :cond_1
    iget-object v4, p0, Lcom/smartisanos/launcher/view/Page;->mTitleAreaNode:Lcom/smartisanos/launcher/view/TitleView;

    iget v5, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    div-float/2addr v5, v8

    iget v6, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->page_title_height:F

    mul-float/2addr v6, v3

    div-float/2addr v6, v8

    sub-float/2addr v5, v6

    invoke-virtual {v4, v7, v5, v7}, Lcom/smartisanos/launcher/view/TitleView;->setTranslate(FFF)V

    goto :goto_1
.end method

.method protected createCell(IILcom/smartisanos/launcher/data/ItemInfo;Lcom/smartisanos/launcher/data/LayoutProperty;)Lcom/smartisanos/launcher/view/Cell;
    .locals 8
    .param p1, "i"    # I
    .param p2, "j"    # I
    .param p3, "cc"    # Lcom/smartisanos/launcher/data/ItemInfo;
    .param p4, "prop"    # Lcom/smartisanos/launcher/data/LayoutProperty;

    .prologue
    .line 1503
    const/4 v1, 0x0

    .line 1504
    .local v1, "cellName":Ljava/lang/String;
    if-nez p3, :cond_0

    .line 1505
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cell_empty"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1510
    :goto_0
    new-instance v0, Lcom/smartisanos/launcher/view/Cell;

    const/4 v2, 0x1

    iget v5, p0, Lcom/smartisanos/launcher/view/Page;->mZ:F

    iget-object v7, p0, Lcom/smartisanos/launcher/view/Page;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    move v3, p1

    move v4, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/smartisanos/launcher/view/Cell;-><init>(Ljava/lang/String;ZIIFLcom/smartisanos/launcher/data/ItemInfo;Lcom/smartisanos/launcher/data/LayoutProperty;)V

    return-object v0

    .line 1508
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cell "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p3, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected createCellCamera()V
    .locals 8

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/4 v7, 0x0

    .line 1486
    iget-object v3, p0, Lcom/smartisanos/launcher/view/Page;->mCellCamera:Lcom/smartisanos/smengine/Camera;

    if-nez v3, :cond_1

    .line 1487
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/smengine/World;->getCameraManager()Lcom/smartisanos/smengine/CameraManager;

    move-result-object v3

    const-string v4, "cellCamera"

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/CameraManager;->getCamera(Ljava/lang/String;)Lcom/smartisanos/smengine/Camera;

    move-result-object v0

    .line 1488
    .local v0, "c":Lcom/smartisanos/smengine/Camera;
    if-nez v0, :cond_0

    .line 1489
    new-instance v0, Lcom/smartisanos/smengine/Camera;

    .end local v0    # "c":Lcom/smartisanos/smengine/Camera;
    iget-object v3, p0, Lcom/smartisanos/launcher/view/Page;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v3, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    float-to-int v3, v3

    iget-object v4, p0, Lcom/smartisanos/launcher/view/Page;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v4, v4, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    float-to-int v4, v4

    invoke-direct {v0, v3, v4}, Lcom/smartisanos/smengine/Camera;-><init>(II)V

    .line 1490
    .restart local v0    # "c":Lcom/smartisanos/smengine/Camera;
    const/high16 v1, 0x41a00000    # 20.0f

    .line 1491
    .local v1, "distance":F
    const v3, 0x42652ee0

    iget-object v4, p0, Lcom/smartisanos/launcher/view/Page;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v4, v4, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    div-float/2addr v4, v5

    invoke-static {v4, v1}, Lcom/smartisanos/smengine/math/FastMath;->atan2(FF)F

    move-result v4

    mul-float v2, v3, v4

    .line 1493
    .local v2, "theta":F
    mul-float v3, v2, v5

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Camera;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Camera;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x42480000    # 50.0f

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/smartisanos/smengine/Camera;->setFrustumPerspective(FFFF)V

    .line 1494
    new-instance v3, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v3, v7, v7, v1}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/Camera;->setLocation(Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 1495
    new-instance v3, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v3, v7, v7, v7}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    sget-object v4, Lcom/smartisanos/smengine/math/Vector3f;->UNIT_Y:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {v0, v3, v4}, Lcom/smartisanos/smengine/Camera;->lookAt(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 1496
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/smengine/World;->getCameraManager()Lcom/smartisanos/smengine/CameraManager;

    move-result-object v3

    const-string v4, "cellCamera"

    invoke-virtual {v3, v4, v0}, Lcom/smartisanos/smengine/CameraManager;->setCamera(Ljava/lang/String;Lcom/smartisanos/smengine/Camera;)V

    .line 1498
    .end local v1    # "distance":F
    .end local v2    # "theta":F
    :cond_0
    iput-object v0, p0, Lcom/smartisanos/launcher/view/Page;->mCellCamera:Lcom/smartisanos/smengine/Camera;

    .line 1500
    .end local v0    # "c":Lcom/smartisanos/smengine/Camera;
    :cond_1
    return-void
.end method

.method protected createCellsInList()V
    .locals 10

    .prologue
    .line 3178
    iget-object v7, p0, Lcom/smartisanos/launcher/view/Page;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v0, v7, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_col_num:I

    .line 3179
    .local v0, "colNum":I
    iget-object v7, p0, Lcom/smartisanos/launcher/view/Page;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v5, v7, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_row_num:I

    .line 3181
    .local v5, "rowNum":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_1

    .line 3182
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, v0, :cond_0

    .line 3183
    invoke-virtual {p0, v1, v3}, Lcom/smartisanos/launcher/view/Page;->getIndex(II)I

    move-result v2

    .line 3193
    .local v2, "index":I
    invoke-virtual {p0, v1, v3}, Lcom/smartisanos/launcher/view/Page;->getItemInfo(II)Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v7

    iget-object v8, p0, Lcom/smartisanos/launcher/view/Page;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    invoke-virtual {p0, v1, v3, v7, v8}, Lcom/smartisanos/launcher/view/Page;->createCell(IILcom/smartisanos/launcher/data/ItemInfo;Lcom/smartisanos/launcher/data/LayoutProperty;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v4

    .line 3194
    .local v4, "pc":Lcom/smartisanos/launcher/view/Cell;
    sget-object v7, Lcom/smartisanos/launcher/data/Constants;->pageCellCenterPoints:[Lcom/smartisanos/smengine/math/Vector3f;

    aget-object v6, v7, v2

    .line 3195
    .local v6, "v":Lcom/smartisanos/smengine/math/Vector3f;
    iget v7, v6, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v8, v6, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v9, p0, Lcom/smartisanos/launcher/view/Page;->mZ:F

    invoke-virtual {v4, v7, v8, v9}, Lcom/smartisanos/launcher/view/Cell;->setTranslate(FFF)V

    .line 3196
    invoke-virtual {p0, v4}, Lcom/smartisanos/launcher/view/Page;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 3197
    iget-object v7, p0, Lcom/smartisanos/launcher/view/Page;->mCellCamera:Lcom/smartisanos/smengine/Camera;

    invoke-virtual {v4, v7}, Lcom/smartisanos/launcher/view/Cell;->setCamera(Lcom/smartisanos/smengine/Camera;)V

    .line 3198
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Cell;->updateGeometricState()V

    .line 3182
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3181
    .end local v2    # "index":I
    .end local v4    # "pc":Lcom/smartisanos/launcher/view/Cell;
    .end local v6    # "v":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3203
    .end local v3    # "j":I
    :cond_1
    iget-object v7, p0, Lcom/smartisanos/launcher/view/Page;->mItemInfoList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 3204
    return-void
.end method

.method public createEmptyCell(IIZLcom/smartisanos/smengine/Animation$AnimationListener;)Lcom/smartisanos/launcher/view/Cell;
    .locals 31
    .param p1, "rowindex"    # I
    .param p2, "colindex"    # I
    .param p3, "needAnimation"    # Z
    .param p4, "whenCreateCellAnimation"    # Lcom/smartisanos/smengine/Animation$AnimationListener;

    .prologue
    .line 793
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/smartisanos/launcher/view/Page;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2, v5, v6}, Lcom/smartisanos/launcher/view/Page;->createCell(IILcom/smartisanos/launcher/data/ItemInfo;Lcom/smartisanos/launcher/data/LayoutProperty;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v24

    .line 794
    .local v24, "pc":Lcom/smartisanos/launcher/view/Cell;
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/smartisanos/launcher/view/Page;->mDrawWithBatch:Z

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Lcom/smartisanos/launcher/view/Cell;->setDrawBatch(Z)V

    .line 796
    invoke-virtual/range {p0 .. p2}, Lcom/smartisanos/launcher/view/Page;->getIndex(II)I

    move-result v20

    .line 797
    .local v20, "index":I
    sget-object v5, Lcom/smartisanos/launcher/data/Constants;->pageCellCenterPoints:[Lcom/smartisanos/smengine/math/Vector3f;

    aget-object v30, v5, v20

    .line 798
    .local v30, "v":Lcom/smartisanos/smengine/math/Vector3f;
    move-object/from16 v0, v30

    iget v5, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move-object/from16 v0, v30

    iget v6, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/smartisanos/launcher/view/Page;->mZ:F

    move-object/from16 v0, v24

    invoke-virtual {v0, v5, v6, v7}, Lcom/smartisanos/launcher/view/Cell;->setTranslate(FFF)V

    .line 799
    invoke-virtual/range {v24 .. v24}, Lcom/smartisanos/launcher/view/Cell;->setNeedDisplay()V

    .line 800
    sget v5, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    sget v6, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    if-ne v5, v6, :cond_0

    .line 801
    sget v5, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    invoke-static {v5}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v21

    .line 802
    .local v21, "lp":Lcom/smartisanos/launcher/data/LayoutProperty;
    move-object/from16 v0, v21

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_width:F

    move/from16 v18, v0

    .line 803
    .local v18, "currentPageWidth":F
    move-object/from16 v0, v21

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    move/from16 v17, v0

    .line 805
    .local v17, "currentPageHeight":F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/Page;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v0, v5, Lcom/smartisanos/launcher/data/LayoutProperty;->page_width:F

    move/from16 v23, v0

    .line 806
    .local v23, "pageWidth":F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/Page;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v0, v5, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    move/from16 v22, v0

    .line 807
    .local v22, "pageHeight":F
    div-float v25, v23, v18

    .line 808
    .local v25, "scalex":F
    div-float v26, v22, v17

    .line 810
    .local v26, "scaley":F
    move-object/from16 v0, v21

    iget v5, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    mul-float v15, v5, v25

    .line 811
    .local v15, "cellWidth":F
    move-object/from16 v0, v21

    iget v5, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    mul-float v14, v5, v26

    .line 813
    .local v14, "cellHeight":F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/Page;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v0, v5, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    move/from16 v28, v0

    .line 814
    .local v28, "singleCellWidth":F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/Page;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v0, v5, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    move/from16 v27, v0

    .line 816
    .local v27, "singleCellHeight":F
    div-float v25, v15, v28

    .line 817
    div-float v26, v14, v27

    .line 819
    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2, v5}, Lcom/smartisanos/launcher/view/Cell;->setScale(FFF)V

    .line 821
    .end local v14    # "cellHeight":F
    .end local v15    # "cellWidth":F
    .end local v17    # "currentPageHeight":F
    .end local v18    # "currentPageWidth":F
    .end local v21    # "lp":Lcom/smartisanos/launcher/data/LayoutProperty;
    .end local v22    # "pageHeight":F
    .end local v23    # "pageWidth":F
    .end local v25    # "scalex":F
    .end local v26    # "scaley":F
    .end local v27    # "singleCellHeight":F
    .end local v28    # "singleCellWidth":F
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Page;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 822
    invoke-virtual/range {v24 .. v24}, Lcom/smartisanos/launcher/view/Cell;->updateGeometricState()V

    .line 824
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/MainView;->isEditMode()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/DockView;->getSettingButton()Lcom/smartisanos/launcher/view/SettingButton;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/SettingButton;->animationIsRunning()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 825
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/MainView;->isEditMode()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/DockView;->getSettingButton()Lcom/smartisanos/launcher/view/SettingButton;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/SettingButton;->animationIsRunning()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 826
    :cond_2
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v5, v6}, Lcom/smartisanos/launcher/view/Cell;->showCellIntoPageEditModeAnimationCover(Lcom/smartisanos/smengine/AnimationTimeLine;F)V

    .line 829
    :cond_3
    if-eqz p3, :cond_5

    .line 832
    const/4 v5, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Lcom/smartisanos/launcher/view/Cell;->setRenderBgToRenderTarget(Z)V

    .line 834
    invoke-virtual/range {v24 .. v24}, Lcom/smartisanos/launcher/view/Cell;->getScale()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/smengine/math/Vector3f;->clone()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v19

    .line 836
    .local v19, "currentScale":Lcom/smartisanos/smengine/math/Vector3f;
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    move-object/from16 v0, v24

    invoke-virtual {v0, v5, v6, v7}, Lcom/smartisanos/launcher/view/Cell;->setScale(FFF)V

    .line 837
    invoke-virtual/range {v24 .. v24}, Lcom/smartisanos/launcher/view/Cell;->updateGeometricState()V

    .line 838
    const/4 v5, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Lcom/smartisanos/launcher/view/Cell;->setVisibility(Z)V

    .line 840
    new-instance v29, Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-direct/range {v29 .. v29}, Lcom/smartisanos/smengine/AnimationTimeLine;-><init>()V

    .line 843
    .local v29, "timeline":Lcom/smartisanos/smengine/AnimationTimeLine;
    new-instance v3, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-object/from16 v0, v24

    invoke-direct {v3, v0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 844
    .local v3, "anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    const v5, 0x3dcccccd    # 0.1f

    invoke-virtual {v3, v5}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 845
    const/16 v5, 0xf

    invoke-virtual {v3, v5}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 846
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setPreserveNodeScale(Z)V

    .line 847
    const/4 v4, 0x1

    move-object/from16 v0, v19

    iget v5, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    const v6, 0x3ecccccd    # 0.4f

    mul-float/2addr v5, v6

    move-object/from16 v0, v19

    iget v6, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    const v7, 0x3ecccccd    # 0.4f

    mul-float/2addr v6, v7

    const/high16 v7, 0x3f800000    # 1.0f

    move-object/from16 v0, v19

    iget v8, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move-object/from16 v0, v19

    iget v9, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move-object/from16 v0, v19

    iget v10, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-virtual/range {v3 .. v10}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFF)V

    .line 848
    new-instance v5, Lcom/smartisanos/launcher/view/Page$4;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v5, v0, v1}, Lcom/smartisanos/launcher/view/Page$4;-><init>(Lcom/smartisanos/launcher/view/Page;Lcom/smartisanos/launcher/view/Cell;)V

    invoke-virtual {v3, v5}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 861
    const/4 v5, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v5, v3}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 865
    new-instance v4, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    invoke-virtual/range {v24 .. v24}, Lcom/smartisanos/launcher/view/Cell;->getBackgroundRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 866
    .local v4, "animAlpha":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    invoke-virtual/range {v24 .. v24}, Lcom/smartisanos/launcher/view/Cell;->getBackgroundRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/smartisanos/smengine/RectNode;->setIsEnableBlend(Z)V

    .line 867
    new-instance v16, Lcom/smartisanos/smengine/math/Vector4f;

    invoke-direct/range {v16 .. v16}, Lcom/smartisanos/smengine/math/Vector4f;-><init>()V

    .line 868
    .local v16, "currentColor":Lcom/smartisanos/smengine/math/Vector4f;
    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Cell;->getColor(Lcom/smartisanos/smengine/math/Vector4f;)V

    .line 869
    sget-boolean v5, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v5, :cond_4

    sget v5, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    sget v6, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    if-ne v5, v6, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/Page;->getPageStatus()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    .line 870
    const v5, 0x3dcccccd    # 0.1f

    const v6, 0x3dcccccd    # 0.1f

    const v7, 0x3dcccccd    # 0.1f

    const v8, 0x3dcccccd    # 0.1f

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v6, v7, v8}, Lcom/smartisanos/smengine/math/Vector4f;->set(FFFF)Lcom/smartisanos/smengine/math/Vector4f;

    .line 872
    :cond_4
    const v5, 0x3dcccccd    # 0.1f

    invoke-virtual {v4, v5}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 873
    const/16 v5, 0xf

    invoke-virtual {v4, v5}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 876
    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, v16

    iget v10, v0, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    move-object/from16 v0, v16

    iget v11, v0, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    move-object/from16 v0, v16

    iget v12, v0, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    move-object/from16 v0, v16

    iget v13, v0, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    invoke-virtual/range {v4 .. v13}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFFFF)V

    .line 879
    const/4 v5, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v5, v4}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 881
    new-instance v5, Lcom/smartisanos/launcher/view/Page$5;

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, v24

    invoke-direct {v5, v0, v1, v2}, Lcom/smartisanos/launcher/view/Page$5;-><init>(Lcom/smartisanos/launcher/view/Page;Lcom/smartisanos/smengine/Animation$AnimationListener;Lcom/smartisanos/launcher/view/Cell;)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 899
    invoke-virtual/range {v29 .. v29}, Lcom/smartisanos/smengine/AnimationTimeLine;->start()V

    .line 901
    .end local v3    # "anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    .end local v4    # "animAlpha":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    .end local v16    # "currentColor":Lcom/smartisanos/smengine/math/Vector4f;
    .end local v19    # "currentScale":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v29    # "timeline":Lcom/smartisanos/smengine/AnimationTimeLine;
    :cond_5
    return-object v24
.end method

.method public createEmptyCellAtUnoccupied(Z)V
    .locals 8
    .param p1, "displayNow"    # Z

    .prologue
    const/4 v7, 0x0

    .line 1019
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->getAllCellIndex()Ljava/util/ArrayList;

    move-result-object v1

    .line 1020
    .local v1, "indexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/smartisanos/launcher/view/Page;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v4, v4, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_row_num:I

    iget-object v5, p0, Lcom/smartisanos/launcher/view/Page;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v5, v5, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_col_num:I

    mul-int/2addr v4, v5

    if-ge v0, v4, :cond_1

    .line 1021
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 1023
    invoke-static {v0}, Lcom/smartisanos/launcher/view/Page;->createRowAndColIndexFromIndex(I)Lcom/smartisanos/smengine/math/Vector2f;

    move-result-object v2

    .line 1024
    .local v2, "newIndex":Lcom/smartisanos/smengine/math/Vector2f;
    iget v4, v2, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    float-to-int v4, v4

    iget v5, v2, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    float-to-int v5, v5

    const/4 v6, 0x0

    invoke-virtual {p0, v4, v5, v7, v6}, Lcom/smartisanos/launcher/view/Page;->createEmptyCell(IIZLcom/smartisanos/smengine/Animation$AnimationListener;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v3

    .line 1026
    .local v3, "pc":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v3, p1}, Lcom/smartisanos/launcher/view/Cell;->setVisibility(Z)V

    .line 1027
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->isDrawWithBatch()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1028
    invoke-virtual {v3, v7}, Lcom/smartisanos/launcher/view/Cell;->setVisibilityForBatchDrawShadow(Z)V

    .line 1029
    invoke-virtual {v3, v7}, Lcom/smartisanos/launcher/view/Cell;->setVisibilityForBatchDrawTarget(Z)V

    .line 1020
    .end local v2    # "newIndex":Lcom/smartisanos/smengine/math/Vector2f;
    .end local v3    # "pc":Lcom/smartisanos/launcher/view/Cell;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1034
    :cond_1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->reSortChildren()V

    .line 1035
    return-void
.end method

.method protected createEmptyCellReturnTimeLine(IIZFLcom/smartisanos/smengine/Animation$AnimationListener;Lcom/smartisanos/smengine/AnimationTimeLine;)Lcom/smartisanos/launcher/view/Cell;
    .locals 30
    .param p1, "rowindex"    # I
    .param p2, "colindex"    # I
    .param p3, "needAnimation"    # Z
    .param p4, "delayDuration"    # F
    .param p5, "whenCreateCellAnimation"    # Lcom/smartisanos/smengine/Animation$AnimationListener;
    .param p6, "timeline"    # Lcom/smartisanos/smengine/AnimationTimeLine;

    .prologue
    .line 649
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/smartisanos/launcher/view/Page;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2, v5, v6}, Lcom/smartisanos/launcher/view/Page;->createCell(IILcom/smartisanos/launcher/data/ItemInfo;Lcom/smartisanos/launcher/data/LayoutProperty;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v24

    .line 650
    .local v24, "pc":Lcom/smartisanos/launcher/view/Cell;
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/smartisanos/launcher/view/Page;->mDrawWithBatch:Z

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Lcom/smartisanos/launcher/view/Cell;->setDrawBatch(Z)V

    .line 652
    invoke-virtual/range {p0 .. p2}, Lcom/smartisanos/launcher/view/Page;->getIndex(II)I

    move-result v20

    .line 653
    .local v20, "index":I
    sget-object v5, Lcom/smartisanos/launcher/data/Constants;->pageCellCenterPoints:[Lcom/smartisanos/smengine/math/Vector3f;

    aget-object v29, v5, v20

    .line 654
    .local v29, "v":Lcom/smartisanos/smengine/math/Vector3f;
    move-object/from16 v0, v29

    iget v5, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move-object/from16 v0, v29

    iget v6, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/smartisanos/launcher/view/Page;->mZ:F

    move-object/from16 v0, v24

    invoke-virtual {v0, v5, v6, v7}, Lcom/smartisanos/launcher/view/Cell;->setTranslate(FFF)V

    .line 655
    sget v5, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    sget v6, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    if-ne v5, v6, :cond_0

    .line 656
    sget v5, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    invoke-static {v5}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v21

    .line 657
    .local v21, "lp":Lcom/smartisanos/launcher/data/LayoutProperty;
    move-object/from16 v0, v21

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_width:F

    move/from16 v18, v0

    .line 658
    .local v18, "currentPageWidth":F
    move-object/from16 v0, v21

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    move/from16 v17, v0

    .line 660
    .local v17, "currentPageHeight":F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/Page;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v0, v5, Lcom/smartisanos/launcher/data/LayoutProperty;->page_width:F

    move/from16 v23, v0

    .line 661
    .local v23, "pageWidth":F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/Page;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v0, v5, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    move/from16 v22, v0

    .line 662
    .local v22, "pageHeight":F
    div-float v25, v23, v18

    .line 663
    .local v25, "scalex":F
    div-float v26, v22, v17

    .line 665
    .local v26, "scaley":F
    move-object/from16 v0, v21

    iget v5, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    mul-float v15, v5, v25

    .line 666
    .local v15, "cellWidth":F
    move-object/from16 v0, v21

    iget v5, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    mul-float v14, v5, v26

    .line 668
    .local v14, "cellHeight":F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/Page;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v0, v5, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    move/from16 v28, v0

    .line 669
    .local v28, "singleCellWidth":F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/Page;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v0, v5, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    move/from16 v27, v0

    .line 671
    .local v27, "singleCellHeight":F
    div-float v25, v15, v28

    .line 672
    div-float v26, v14, v27

    .line 674
    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2, v5}, Lcom/smartisanos/launcher/view/Cell;->setScale(FFF)V

    .line 676
    .end local v14    # "cellHeight":F
    .end local v15    # "cellWidth":F
    .end local v17    # "currentPageHeight":F
    .end local v18    # "currentPageWidth":F
    .end local v21    # "lp":Lcom/smartisanos/launcher/data/LayoutProperty;
    .end local v22    # "pageHeight":F
    .end local v23    # "pageWidth":F
    .end local v25    # "scalex":F
    .end local v26    # "scaley":F
    .end local v27    # "singleCellHeight":F
    .end local v28    # "singleCellWidth":F
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Page;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 677
    invoke-virtual/range {v24 .. v24}, Lcom/smartisanos/launcher/view/Cell;->updateGeometricState()V

    .line 679
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/MainView;->isEditMode()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/DockView;->getSettingButton()Lcom/smartisanos/launcher/view/SettingButton;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/SettingButton;->animationIsRunning()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 680
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/MainView;->isEditMode()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/DockView;->getSettingButton()Lcom/smartisanos/launcher/view/SettingButton;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/SettingButton;->animationIsRunning()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 681
    :cond_2
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v5, v6}, Lcom/smartisanos/launcher/view/Cell;->showCellIntoPageEditModeAnimationCover(Lcom/smartisanos/smengine/AnimationTimeLine;F)V

    .line 684
    :cond_3
    if-eqz p3, :cond_4

    .line 686
    const/4 v5, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Lcom/smartisanos/launcher/view/Cell;->setRenderBgToRenderTarget(Z)V

    .line 688
    new-instance v3, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-object/from16 v0, v24

    invoke-direct {v3, v0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 689
    .local v3, "anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    invoke-virtual/range {v24 .. v24}, Lcom/smartisanos/launcher/view/Cell;->getScale()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/smengine/math/Vector3f;->clone()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v19

    .line 690
    .local v19, "currentScale":Lcom/smartisanos/smengine/math/Vector3f;
    const v5, 0x3e4ccccd    # 0.2f

    invoke-virtual {v3, v5}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 691
    const/16 v5, 0xe

    invoke-virtual {v3, v5}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 692
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setPreserveNodeScale(Z)V

    .line 693
    const/4 v4, 0x1

    move-object/from16 v0, v19

    iget v5, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    const v6, 0x3ecccccd    # 0.4f

    mul-float/2addr v5, v6

    move-object/from16 v0, v19

    iget v6, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    const v7, 0x3ecccccd    # 0.4f

    mul-float/2addr v6, v7

    const/high16 v7, 0x3f800000    # 1.0f

    move-object/from16 v0, v19

    iget v8, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move-object/from16 v0, v19

    iget v9, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move-object/from16 v0, v19

    iget v10, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-virtual/range {v3 .. v10}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFF)V

    .line 695
    new-instance v5, Lcom/smartisanos/launcher/view/Page$2;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v5, v0, v1}, Lcom/smartisanos/launcher/view/Page$2;-><init>(Lcom/smartisanos/launcher/view/Page;Lcom/smartisanos/launcher/view/Cell;)V

    invoke-virtual {v3, v5}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 708
    move-object/from16 v0, p6

    move/from16 v1, p4

    invoke-virtual {v0, v1, v3}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 710
    new-instance v4, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    invoke-virtual/range {v24 .. v24}, Lcom/smartisanos/launcher/view/Cell;->getBackgroundRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 711
    .local v4, "animAlpha":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    invoke-virtual/range {v24 .. v24}, Lcom/smartisanos/launcher/view/Cell;->getBackgroundRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/smartisanos/smengine/RectNode;->setIsEnableBlend(Z)V

    .line 712
    new-instance v16, Lcom/smartisanos/smengine/math/Vector4f;

    invoke-direct/range {v16 .. v16}, Lcom/smartisanos/smengine/math/Vector4f;-><init>()V

    .line 713
    .local v16, "currentColor":Lcom/smartisanos/smengine/math/Vector4f;
    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Cell;->getColor(Lcom/smartisanos/smengine/math/Vector4f;)V

    .line 714
    const v5, 0x3e4ccccd    # 0.2f

    invoke-virtual {v4, v5}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 715
    const/16 v5, 0xe

    invoke-virtual {v4, v5}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 718
    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, v16

    iget v10, v0, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    move-object/from16 v0, v16

    iget v11, v0, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    move-object/from16 v0, v16

    iget v12, v0, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-virtual/range {v4 .. v13}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFFFF)V

    .line 721
    move-object/from16 v0, p6

    move/from16 v1, p4

    invoke-virtual {v0, v1, v4}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 724
    new-instance v5, Lcom/smartisanos/launcher/view/Page$3;

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, v24

    invoke-direct {v5, v0, v1, v2}, Lcom/smartisanos/launcher/view/Page$3;-><init>(Lcom/smartisanos/launcher/view/Page;Lcom/smartisanos/smengine/Animation$AnimationListener;Lcom/smartisanos/launcher/view/Cell;)V

    move-object/from16 v0, p6

    invoke-virtual {v0, v5}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 745
    .end local v3    # "anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    .end local v4    # "animAlpha":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    .end local v16    # "currentColor":Lcom/smartisanos/smengine/math/Vector4f;
    .end local v19    # "currentScale":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_4
    return-object v24
.end method

.method public createEmptyCellWithoutParent(IILcom/smartisanos/smengine/RenderTarget;Ljava/lang/String;)Lcom/smartisanos/launcher/view/Cell;
    .locals 22
    .param p1, "row"    # I
    .param p2, "col"    # I
    .param p3, "rt"    # Lcom/smartisanos/smengine/RenderTarget;
    .param p4, "rtName"    # Ljava/lang/String;

    .prologue
    .line 749
    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/Page;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/smartisanos/launcher/view/Page;->createCell(IILcom/smartisanos/launcher/data/ItemInfo;Lcom/smartisanos/launcher/data/LayoutProperty;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v5

    .line 750
    .local v5, "cell":Lcom/smartisanos/launcher/view/Cell;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/smartisanos/launcher/view/Page;->mDrawWithBatch:Z

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/smartisanos/launcher/view/Cell;->setDrawBatch(Z)V

    .line 751
    invoke-virtual/range {p0 .. p2}, Lcom/smartisanos/launcher/view/Page;->getIndex(II)I

    move-result v10

    .line 752
    .local v10, "index":I
    sget-object v19, Lcom/smartisanos/launcher/data/Constants;->pageCellCenterPoints:[Lcom/smartisanos/smengine/math/Vector3f;

    aget-object v18, v19, v10

    .line 753
    .local v18, "v":Lcom/smartisanos/smengine/math/Vector3f;
    move-object/from16 v0, v18

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v19, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/launcher/view/Page;->mZ:F

    move/from16 v21, v0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v5, v0, v1, v2}, Lcom/smartisanos/launcher/view/Cell;->setTranslate(FFF)V

    .line 754
    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Cell;->setNeedDisplay()V

    .line 755
    sget v19, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    sget v20, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    .line 756
    sget v19, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    invoke-static/range {v19 .. v19}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v11

    .line 757
    .local v11, "lp":Lcom/smartisanos/launcher/data/LayoutProperty;
    iget v9, v11, Lcom/smartisanos/launcher/data/LayoutProperty;->page_width:F

    .line 758
    .local v9, "currentPageWidth":F
    iget v8, v11, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    .line 760
    .local v8, "currentPageHeight":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/Page;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v13, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_width:F

    .line 761
    .local v13, "pageWidth":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/Page;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v12, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    .line 762
    .local v12, "pageHeight":F
    div-float v14, v13, v9

    .line 763
    .local v14, "scalex":F
    div-float v15, v12, v8

    .line 765
    .local v15, "scaley":F
    iget v0, v11, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    move/from16 v19, v0

    mul-float v7, v19, v14

    .line 766
    .local v7, "cellWidth":F
    iget v0, v11, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    move/from16 v19, v0

    mul-float v6, v19, v15

    .line 768
    .local v6, "cellHeight":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/Page;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    move/from16 v17, v0

    .line 769
    .local v17, "singleCellWidth":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/Page;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    move/from16 v16, v0

    .line 771
    .local v16, "singleCellHeight":F
    div-float v14, v7, v17

    .line 772
    div-float v15, v6, v16

    .line 774
    const/high16 v19, 0x3f800000    # 1.0f

    move/from16 v0, v19

    invoke-virtual {v5, v14, v15, v0}, Lcom/smartisanos/launcher/view/Cell;->setScale(FFF)V

    .line 776
    .end local v6    # "cellHeight":F
    .end local v7    # "cellWidth":F
    .end local v8    # "currentPageHeight":F
    .end local v9    # "currentPageWidth":F
    .end local v11    # "lp":Lcom/smartisanos/launcher/data/LayoutProperty;
    .end local v12    # "pageHeight":F
    .end local v13    # "pageWidth":F
    .end local v14    # "scalex":F
    .end local v15    # "scaley":F
    .end local v16    # "singleCellHeight":F
    .end local v17    # "singleCellWidth":F
    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/smartisanos/launcher/view/Page;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 777
    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Cell;->updateGeometricState()V

    .line 779
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/smartisanos/launcher/view/MainView;->isEditMode()Z

    move-result v19

    if-eqz v19, :cond_1

    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/smartisanos/launcher/view/DockView;->getSettingButton()Lcom/smartisanos/launcher/view/SettingButton;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/smartisanos/launcher/view/SettingButton;->animationIsRunning()Z

    move-result v19

    if-eqz v19, :cond_2

    .line 780
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/smartisanos/launcher/view/MainView;->isEditMode()Z

    move-result v19

    if-nez v19, :cond_3

    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/smartisanos/launcher/view/DockView;->getSettingButton()Lcom/smartisanos/launcher/view/SettingButton;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/smartisanos/launcher/view/SettingButton;->animationIsRunning()Z

    move-result v19

    if-eqz v19, :cond_3

    .line 781
    :cond_2
    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Lcom/smartisanos/launcher/view/Cell;->showCellIntoPageEditModeAnimationCover(Lcom/smartisanos/smengine/AnimationTimeLine;F)V

    .line 783
    :cond_3
    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Lcom/smartisanos/launcher/view/Cell;->setRenderTarget(Lcom/smartisanos/smengine/RenderTarget;)V

    .line 784
    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Lcom/smartisanos/launcher/view/Cell;->setRenderTargetName(Ljava/lang/String;)V

    .line 785
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/smartisanos/smengine/World;->getCameraManager()Lcom/smartisanos/smengine/CameraManager;

    move-result-object v19

    const-string v20, "cellCamera"

    invoke-virtual/range {v19 .. v20}, Lcom/smartisanos/smengine/CameraManager;->getCamera(Ljava/lang/String;)Lcom/smartisanos/smengine/Camera;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/smartisanos/launcher/view/Cell;->setCamera(Lcom/smartisanos/smengine/Camera;)V

    .line 786
    move/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/smartisanos/launcher/view/Cell;->setOriginRowIndex(I)V

    .line 787
    move/from16 v0, p2

    invoke-virtual {v5, v0}, Lcom/smartisanos/launcher/view/Cell;->setOriginColIndex(I)V

    .line 788
    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Cell;->setNeedDisplay()V

    .line 789
    return-object v5
.end method

.method protected createPage()V
    .locals 0

    .prologue
    .line 1356
    return-void
.end method

.method protected createPageBoundingRect()V
    .locals 7

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 1368
    sget v3, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static {v3}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v1

    .line 1369
    .local v1, "prop":Lcom/smartisanos/launcher/data/LayoutProperty;
    iget v2, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->page_width:F

    .line 1370
    .local v2, "width":F
    iget v0, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    .line 1371
    .local v0, "height":F
    neg-float v3, v2

    div-float/2addr v3, v6

    neg-float v4, v0

    div-float/2addr v4, v6

    div-float v5, v2, v6

    div-float v6, v0, v6

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/smartisanos/launcher/view/Page;->setLocalBoundingVolume(FFFF)V

    .line 1372
    return-void
.end method

.method public createPageCoverForEye()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1259
    iget-object v3, p0, Lcom/smartisanos/launcher/view/Page;->mEyePageCoverImage:Lcom/smartisanos/smengine/RectNode;

    if-nez v3, :cond_0

    .line 1260
    sget v3, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static {v3}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v2

    .line 1262
    .local v2, "prop":Lcom/smartisanos/launcher/data/LayoutProperty;
    const-string v3, "eye_cover.png"

    invoke-static {v3, v8}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    iget v5, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->page_width:F

    add-float/2addr v4, v5

    iget v5, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    invoke-static {v3, v4, v5, v9, v8}, Lcom/smartisanos/smengine/RectNode;->createSimpleTextureRect(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/RectNode;

    move-result-object v3

    iput-object v3, p0, Lcom/smartisanos/launcher/view/Page;->mEyePageCoverImage:Lcom/smartisanos/smengine/RectNode;

    .line 1267
    iget-object v3, p0, Lcom/smartisanos/launcher/view/Page;->mEyePageCoverImage:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {p0, v3}, Lcom/smartisanos/launcher/view/Page;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 1268
    const-string v3, "TextureModularColorMaterial"

    invoke-static {v3}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v0

    .line 1269
    .local v0, "m":Lcom/smartisanos/smengine/mymaterial/Material;
    iget-object v3, p0, Lcom/smartisanos/launcher/view/Page;->mEyePageCoverImage:Lcom/smartisanos/smengine/RectNode;

    const-string v4, "eye_cover.png"

    invoke-static {v4, v8}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/RectNode;->setImageName(Ljava/lang/String;)V

    .line 1270
    iget-object v3, p0, Lcom/smartisanos/launcher/view/Page;->mEyePageCoverImage:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v3, v0}, Lcom/smartisanos/smengine/RectNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 1271
    iget-object v3, p0, Lcom/smartisanos/launcher/view/Page;->mEyePageCoverImage:Lcom/smartisanos/smengine/RectNode;

    sget v4, Lcom/smartisanos/launcher/data/Constants;->sEyeCoverPageColor:F

    sget v5, Lcom/smartisanos/launcher/data/Constants;->sEyeCoverPageColor:F

    sget v6, Lcom/smartisanos/launcher/data/Constants;->sEyeCoverPageColor:F

    sget v7, Lcom/smartisanos/launcher/data/Constants;->sEyeCoverPageColor:F

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 1273
    iget-object v3, p0, Lcom/smartisanos/launcher/view/Page;->mEyePageCoverImage:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v3, v8}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    .line 1274
    iget-object v3, p0, Lcom/smartisanos/launcher/view/Page;->mEyePageCoverImage:Lcom/smartisanos/smengine/RectNode;

    const-string v4, "eye_cover.png"

    invoke-static {v4, v8}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/RectNode;->setImageName(Ljava/lang/String;)V

    .line 1275
    iget-object v3, p0, Lcom/smartisanos/launcher/view/Page;->mEyePageCoverImage:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/smartisanos/smengine/RenderState;->setIsPolygonOffset(Z)V

    .line 1276
    iget-object v3, p0, Lcom/smartisanos/launcher/view/Page;->mEyePageCoverImage:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v3

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, -0x40000000    # -2.0f

    invoke-virtual {v3, v4, v5}, Lcom/smartisanos/smengine/RenderState;->setPolygonOffsetFactorUnits(FF)V

    .line 1277
    iget-object v3, p0, Lcom/smartisanos/launcher/view/Page;->mEyePageCoverImage:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/smartisanos/smengine/RenderState;->setIsEnableBlend(Z)V

    .line 1278
    iget-object v3, p0, Lcom/smartisanos/launcher/view/Page;->mEyePageCoverImage:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/RenderState;->setBlendMode(I)V

    .line 1279
    iget-object v3, p0, Lcom/smartisanos/launcher/view/Page;->mEyePageCoverImage:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/smartisanos/smengine/RenderState;->setIsEnableDepthTest(Z)V

    .line 1280
    iget-object v3, p0, Lcom/smartisanos/launcher/view/Page;->mEyePageCoverImage:Lcom/smartisanos/smengine/RectNode;

    iget v4, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    invoke-virtual {v3, v9, v4, v9}, Lcom/smartisanos/smengine/RectNode;->setTranslate(FFF)V

    .line 1282
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->updateGeometricState()V

    .line 1283
    invoke-static {}, Lcom/smartisanos/launcher/view/LayerManager;->getInstance()Lcom/smartisanos/launcher/view/LayerManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->getLayStatus()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/view/LayerManager;->getPageLayer(I)Lcom/smartisanos/launcher/view/LayerManager$PageLayer;

    move-result-object v1

    .line 1284
    .local v1, "pageLayer":Lcom/smartisanos/launcher/view/LayerManager$PageLayer;
    iget-object v3, p0, Lcom/smartisanos/launcher/view/Page;->mEyePageCoverImage:Lcom/smartisanos/smengine/RectNode;

    iget v4, v1, Lcom/smartisanos/launcher/view/LayerManager$PageLayer;->PAGE_COVER_EYE_LAYER:I

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 1285
    iget-object v3, p0, Lcom/smartisanos/launcher/view/Page;->mEyePageCoverImage:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/RectNode;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v3

    iput-object v3, p0, Lcom/smartisanos/launcher/view/Page;->mEyeCoverPos:Lcom/smartisanos/smengine/math/Vector3f;

    .line 1287
    .end local v0    # "m":Lcom/smartisanos/smengine/mymaterial/Material;
    .end local v1    # "pageLayer":Lcom/smartisanos/launcher/view/LayerManager$PageLayer;
    .end local v2    # "prop":Lcom/smartisanos/launcher/data/LayoutProperty;
    :cond_0
    return-void
.end method

.method public cull(Lcom/smartisanos/smengine/Camera;)Z
    .locals 1
    .param p1, "camera"    # Lcom/smartisanos/smengine/Camera;

    .prologue
    .line 1110
    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/Page;->cullWithCameraRect(Lcom/smartisanos/smengine/Camera;)Z

    move-result v0

    return v0
.end method

.method public doLayout()V
    .locals 0

    .prologue
    .line 1359
    return-void
.end method

.method public enableShowAppName(Z)V
    .locals 4
    .param p1, "en"    # Z

    .prologue
    .line 1476
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 1477
    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/Page;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v2

    .line 1478
    .local v2, "sn":Lcom/smartisanos/smengine/SceneNode;
    invoke-static {v2}, Lcom/smartisanos/launcher/view/Cell;->sIsInstanceFromCell(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, v2

    .line 1479
    check-cast v1, Lcom/smartisanos/launcher/view/Cell;

    .line 1480
    .local v1, "pc":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v1, p1}, Lcom/smartisanos/launcher/view/Cell;->enableShowAppName(Z)V

    .line 1476
    .end local v1    # "pc":Lcom/smartisanos/launcher/view/Cell;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1483
    .end local v2    # "sn":Lcom/smartisanos/smengine/SceneNode;
    :cond_1
    return-void
.end method

.method public forceFinishAllPageResetBackgroundAnimation()V
    .locals 4

    .prologue
    .line 2116
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->getAllPageCell()Ljava/util/ArrayList;

    move-result-object v0

    .line 2118
    .local v0, "allpc":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 2119
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/Cell;

    .line 2120
    .local v1, "c":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Cell;->forceFinishResetBackgroundAlphaAnimation()V

    .line 2118
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2123
    .end local v1    # "c":Lcom/smartisanos/launcher/view/Cell;
    :cond_0
    return-void
.end method

.method public getAllCellIndex()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 971
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 972
    .local v2, "indexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->getAllPageCell()Ljava/util/ArrayList;

    move-result-object v0

    .line 973
    .local v0, "celllist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/Cell;

    .line 974
    .local v3, "pc":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Cell;->getRowIndex()I

    move-result v5

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Cell;->getColIndex()I

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/smartisanos/launcher/view/Page;->getIndex(II)I

    move-result v1

    .line 975
    .local v1, "index":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 977
    .end local v1    # "index":I
    .end local v3    # "pc":Lcom/smartisanos/launcher/view/Cell;
    :cond_0
    return-object v2
.end method

.method public getAllEmptyCell()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/launcher/view/Cell;",
            ">;"
        }
    .end annotation

    .prologue
    .line 469
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 470
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 471
    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/Page;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v3

    .line 472
    .local v3, "sn":Lcom/smartisanos/smengine/SceneNode;
    invoke-static {v3}, Lcom/smartisanos/launcher/view/Cell;->sIsInstanceFromCell(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v2, v3

    .line 473
    check-cast v2, Lcom/smartisanos/launcher/view/Cell;

    .line 474
    .local v2, "pc":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Cell;->isEmptyCell()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 475
    check-cast v3, Lcom/smartisanos/launcher/view/Cell;

    .end local v3    # "sn":Lcom/smartisanos/smengine/SceneNode;
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 470
    .end local v2    # "pc":Lcom/smartisanos/launcher/view/Cell;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 479
    :cond_1
    return-object v1
.end method

.method public getAllEmptyCellIndex()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 980
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 981
    .local v2, "indexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->getAllEmptyCell()Ljava/util/ArrayList;

    move-result-object v0

    .line 982
    .local v0, "celllist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/Cell;

    .line 983
    .local v3, "pc":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Cell;->getRowIndex()I

    move-result v5

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Cell;->getColIndex()I

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/smartisanos/launcher/view/Page;->getIndex(II)I

    move-result v1

    .line 984
    .local v1, "index":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 986
    .end local v1    # "index":I
    .end local v3    # "pc":Lcom/smartisanos/launcher/view/Cell;
    :cond_0
    return-object v2
.end method

.method public getAllNonEmptyCellIndex()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 951
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 952
    .local v2, "indexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->getAllNonEmptyCellList()Ljava/util/ArrayList;

    move-result-object v0

    .line 953
    .local v0, "celllist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/Cell;

    .line 954
    .local v3, "pc":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Cell;->getRowIndex()I

    move-result v5

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Cell;->getColIndex()I

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/smartisanos/launcher/view/Page;->getIndex(II)I

    move-result v1

    .line 955
    .local v1, "index":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 957
    .end local v1    # "index":I
    .end local v3    # "pc":Lcom/smartisanos/launcher/view/Cell;
    :cond_0
    return-object v2
.end method

.method public getAllNonEmptyCellList()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/launcher/view/Cell;",
            ">;"
        }
    .end annotation

    .prologue
    .line 922
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 923
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->getAllPageCell()Ljava/util/ArrayList;

    move-result-object v0

    .line 924
    .local v0, "allpc":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 925
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/Cell;

    .line 926
    .local v3, "pc":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Cell;->isEmptyCell()Z

    move-result v4

    if-nez v4, :cond_0

    .line 927
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 924
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 930
    .end local v3    # "pc":Lcom/smartisanos/launcher/view/Cell;
    :cond_1
    return-object v2
.end method

.method public getAllPageCell()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/launcher/view/Cell;",
            ">;"
        }
    .end annotation

    .prologue
    .line 457
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 458
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 459
    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/Page;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v3

    .line 460
    .local v3, "sn":Lcom/smartisanos/smengine/SceneNode;
    invoke-static {v3}, Lcom/smartisanos/launcher/view/Cell;->sIsInstanceFromCell(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v2, v3

    .line 461
    check-cast v2, Lcom/smartisanos/launcher/view/Cell;

    .line 462
    .local v2, "pc":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 458
    .end local v2    # "pc":Lcom/smartisanos/launcher/view/Cell;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 465
    .end local v3    # "sn":Lcom/smartisanos/smengine/SceneNode;
    :cond_1
    return-object v1
.end method

.method public getAnimation()Lcom/smartisanos/launcher/animations/PageAnimation;
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Page;->animation:Lcom/smartisanos/launcher/animations/PageAnimation;

    return-object v0
.end method

.method public getAppsPackageNameList()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 287
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 288
    .local v2, "packageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->getAllPageCell()Ljava/util/ArrayList;

    move-result-object v1

    .line 289
    .local v1, "cells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 308
    :cond_0
    return-object v2

    .line 292
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/Cell;

    .line 293
    .local v0, "cell":Lcom/smartisanos/launcher/view/Cell;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->getItemInfo()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 296
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->getItemInfo()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v5

    iget-wide v6, v5, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-ltz v5, :cond_2

    .line 299
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->getItemInfo()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v5

    iget-object v3, v5, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    .line 300
    .local v3, "pkgName":Ljava/lang/String;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_4

    .line 301
    :cond_3
    sget-object v5, Lcom/smartisanos/launcher/view/Page;->log:Lcom/smartisanos/launcher/LOG;

    const-string v6, "DEBUG"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setCellItemInfoLockStatus cell package name is empty ! by id ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->getItemInfo()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v8

    iget-wide v8, v8, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 304
    :cond_4
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 305
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getBatchBackground()Lcom/smartisanos/smengine/SceneNode;
    .locals 1

    .prologue
    .line 204
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBatchShadow()Lcom/smartisanos/smengine/SceneNode;
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCell(I)Lcom/smartisanos/launcher/view/Cell;
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 2449
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->getAllPageCell()Ljava/util/ArrayList;

    move-result-object v0

    .line 2451
    .local v0, "allcell":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 2452
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/Cell;

    .line 2453
    .local v2, "pc":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Cell;->getRowIndex()I

    move-result v3

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Cell;->getColIndex()I

    move-result v4

    invoke-static {v3, v4}, Lcom/smartisanos/launcher/view/Page;->getCellIndex(II)I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 2457
    .end local v2    # "pc":Lcom/smartisanos/launcher/view/Cell;
    :goto_1
    return-object v2

    .line 2451
    .restart local v2    # "pc":Lcom/smartisanos/launcher/view/Cell;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2457
    .end local v2    # "pc":Lcom/smartisanos/launcher/view/Cell;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getCellByTouchPoint(Lcom/smartisanos/smengine/TouchEvent;)Lcom/smartisanos/launcher/view/Cell;
    .locals 5
    .param p1, "event"    # Lcom/smartisanos/smengine/TouchEvent;

    .prologue
    .line 1540
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TouchEvent;->getWorldCoordinateX()F

    move-result v2

    .line 1541
    .local v2, "worldx":F
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TouchEvent;->getWorldCoordinateY()F

    move-result v3

    .line 1542
    .local v3, "worldy":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 1543
    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/Page;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    .line 1544
    .local v1, "sn":Lcom/smartisanos/smengine/SceneNode;
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/smartisanos/smengine/SceneNode;->isPointInBoundingVolume(FFF)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1545
    invoke-static {v1}, Lcom/smartisanos/launcher/view/Cell;->sIsInstanceFromCell(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1546
    check-cast v1, Lcom/smartisanos/launcher/view/Cell;

    .line 1550
    .end local v1    # "sn":Lcom/smartisanos/smengine/SceneNode;
    :goto_1
    return-object v1

    .line 1542
    .restart local v1    # "sn":Lcom/smartisanos/smengine/SceneNode;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1550
    .end local v1    # "sn":Lcom/smartisanos/smengine/SceneNode;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getCellUnderCurrentSelectedCell()Lcom/smartisanos/launcher/view/Cell;
    .locals 7

    .prologue
    .line 1553
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/PageView;->getSelectedCell()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v2

    .line 1555
    .local v2, "selected":Lcom/smartisanos/launcher/view/Cell;
    if-eqz v2, :cond_2

    .line 1556
    new-instance v1, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v1}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 1557
    .local v1, "pos":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-virtual {v2, v1}, Lcom/smartisanos/launcher/view/Cell;->getWorldTranslate(Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 1558
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 1559
    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/Page;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v3

    .line 1560
    .local v3, "sn":Lcom/smartisanos/smengine/SceneNode;
    if-ne v3, v2, :cond_1

    .line 1558
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1564
    :cond_1
    iget v4, v1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v5, v1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/smartisanos/smengine/SceneNode;->isPointInBoundingVolume(FFF)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1565
    invoke-static {v3}, Lcom/smartisanos/launcher/view/Cell;->sIsInstanceFromCell(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1566
    check-cast v3, Lcom/smartisanos/launcher/view/Cell;

    .line 1571
    .end local v0    # "i":I
    .end local v1    # "pos":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v3    # "sn":Lcom/smartisanos/smengine/SceneNode;
    :goto_1
    return-object v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getCellUnderCurrentSelectedCell(FF)Lcom/smartisanos/launcher/view/Cell;
    .locals 4
    .param p1, "worldx"    # F
    .param p2, "worldy"    # F

    .prologue
    .line 1575
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/PageView;->getSelectedCell()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v1

    .line 1576
    .local v1, "selected":Lcom/smartisanos/launcher/view/Cell;
    if-eqz v1, :cond_2

    .line 1577
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 1578
    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/Page;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v2

    .line 1579
    .local v2, "sn":Lcom/smartisanos/smengine/SceneNode;
    if-ne v2, v1, :cond_1

    .line 1577
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1583
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v2, p1, p2, v3}, Lcom/smartisanos/smengine/SceneNode;->isPointInBoundingVolume(FFF)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1584
    invoke-static {v2}, Lcom/smartisanos/launcher/view/Cell;->sIsInstanceFromCell(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1585
    check-cast v2, Lcom/smartisanos/launcher/view/Cell;

    .line 1590
    .end local v0    # "i":I
    .end local v2    # "sn":Lcom/smartisanos/smengine/SceneNode;
    :goto_1
    return-object v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getFirstEmptyCell()Lcom/smartisanos/launcher/view/Cell;
    .locals 4

    .prologue
    .line 414
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 415
    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/Page;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v2

    .line 416
    .local v2, "sn":Lcom/smartisanos/smengine/SceneNode;
    invoke-static {v2}, Lcom/smartisanos/launcher/view/Cell;->sIsInstanceFromCell(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, v2

    .line 417
    check-cast v1, Lcom/smartisanos/launcher/view/Cell;

    .line 418
    .local v1, "pc":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Cell;->isEmptyCell()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 423
    .end local v1    # "pc":Lcom/smartisanos/launcher/view/Cell;
    .end local v2    # "sn":Lcom/smartisanos/smengine/SceneNode;
    :goto_1
    return-object v1

    .line 414
    .restart local v2    # "sn":Lcom/smartisanos/smengine/SceneNode;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 423
    .end local v2    # "sn":Lcom/smartisanos/smengine/SceneNode;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getGaussianBackAnimForIconSort(ZF)Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    .locals 18
    .param p1, "show"    # Z
    .param p2, "du"    # F

    .prologue
    .line 2702
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/Page;->getAllPageCell()Ljava/util/ArrayList;

    move-result-object v13

    .line 2703
    .local v13, "cells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    if-nez p1, :cond_3

    .line 2704
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/Page;->mLongPressAlphaRect:Lcom/smartisanos/smengine/RectNode;

    if-eqz v3, :cond_0

    .line 2705
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/Page;->mLongPressAlphaRect:Lcom/smartisanos/smengine/RectNode;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/smartisanos/smengine/RectNode;->clear(Z)V

    .line 2706
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/Page;->mLongPressAlphaRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/RectNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 2707
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/smartisanos/launcher/view/Page;->mLongPressAlphaRect:Lcom/smartisanos/smengine/RectNode;

    .line 2709
    :cond_0
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/smartisanos/launcher/view/Page;->calculatePageSizeAndPos(Z)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v17

    .line 2710
    .local v17, "size":Lcom/smartisanos/smengine/math/Vector3f;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2711
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/Page;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "_longGaussianAlpha"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    iget v5, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move-object/from16 v0, v17

    iget v6, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    const/4 v7, 0x0

    const/4 v9, 0x1

    .line 2710
    invoke-static {v3, v5, v6, v7, v9}, Lcom/smartisanos/smengine/RectNode;->createSimpleTextureRect(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/RectNode;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/smartisanos/launcher/view/Page;->mLongPressAlphaRect:Lcom/smartisanos/smengine/RectNode;

    .line 2712
    const-string v3, "TextureMaskModularMaterial"

    invoke-static {v3}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v15

    .line 2713
    .local v15, "mt":Lcom/smartisanos/smengine/mymaterial/Material;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/Page;->mLongPressAlphaRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v3, v15}, Lcom/smartisanos/smengine/RectNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 2714
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/Page;->mLongPressAlphaRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/smartisanos/smengine/RenderState;->setIsPolygonOffset(Z)V

    .line 2715
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/Page;->mLongPressAlphaRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v3

    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v6, -0x40000000    # -2.0f

    invoke-virtual {v3, v5, v6}, Lcom/smartisanos/smengine/RenderState;->setPolygonOffsetFactorUnits(FF)V

    .line 2716
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/Page;->mLongPressAlphaRect:Lcom/smartisanos/smengine/RectNode;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    .line 2717
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/Page;->mLongPressAlphaRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/smartisanos/smengine/RenderState;->setIsEnableBlend(Z)V

    .line 2718
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/Page;->mLongPressAlphaRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v3

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Lcom/smartisanos/smengine/RenderState;->setBlendMode(I)V

    .line 2719
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/Page;->mLongPressAlphaRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/smartisanos/smengine/RenderState;->setIsEnableDepthTest(Z)V

    .line 2720
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/Page;->mLongPressAlphaRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/smartisanos/smengine/RenderState;->setIsUseVBO(Z)V

    .line 2721
    invoke-static {}, Lcom/smartisanos/launcher/view/LayerManager;->getInstance()Lcom/smartisanos/launcher/view/LayerManager;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/Page;->getLayStatus()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/smartisanos/launcher/view/LayerManager;->getPageLayer(I)Lcom/smartisanos/launcher/view/LayerManager$PageLayer;

    move-result-object v16

    .line 2722
    .local v16, "pageLayer":Lcom/smartisanos/launcher/view/LayerManager$PageLayer;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/Page;->mLongPressAlphaRect:Lcom/smartisanos/smengine/RectNode;

    move-object/from16 v0, v16

    iget v5, v0, Lcom/smartisanos/launcher/view/LayerManager$PageLayer;->PAGE_BATCH_RENDER_OUTER_SHADOW:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3, v5}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 2723
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/Page;->mLongPressAlphaRect:Lcom/smartisanos/smengine/RectNode;

    const/4 v5, 0x0

    const-string v6, "t_blur_background"

    invoke-virtual {v3, v5, v6}, Lcom/smartisanos/smengine/RectNode;->setTextureName(ILjava/lang/String;)V

    .line 2724
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/Page;->mLongPressAlphaRect:Lcom/smartisanos/smengine/RectNode;

    const/4 v5, 0x1

    const-string v6, "page_mask.png"

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/smartisanos/smengine/RectNode;->setTextureName(ILjava/lang/String;)V

    .line 2725
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/Page;->mLongPressAlphaRect:Lcom/smartisanos/smengine/RectNode;

    const/4 v5, 0x0

    move-object/from16 v0, v17

    iget v6, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    const/4 v7, 0x0

    invoke-virtual {v3, v5, v6, v7}, Lcom/smartisanos/smengine/RectNode;->setTranslate(FFF)V

    .line 2726
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/Page;->mLongPressAlphaRect:Lcom/smartisanos/smengine/RectNode;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/smartisanos/launcher/view/Page;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 2727
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/Page;->mLongPressAlphaRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/RectNode;->updateGeometricState()V

    .line 2728
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/Page;->mLongAlphaMeshName:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 2729
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pageAlphaMask_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/smartisanos/launcher/view/Page;->pageIndex:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "long.press.blur"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/smartisanos/launcher/view/Page;->mLongAlphaMeshName:Ljava/lang/String;

    .line 2731
    :cond_1
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/smengine/World;->getMeshManager()Lcom/smartisanos/smengine/MeshManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/Page;->mLongAlphaMeshName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/smartisanos/smengine/MeshManager;->getMesh(Ljava/lang/String;)Lcom/smartisanos/smengine/Mesh;

    move-result-object v14

    .line 2732
    .local v14, "gmesh":Lcom/smartisanos/smengine/Mesh;
    if-nez v14, :cond_2

    .line 2733
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/Page;->mLongPressAlphaRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/RectNode;->getMesh()Lcom/smartisanos/smengine/Mesh;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/smengine/Mesh;->clone()Lcom/smartisanos/smengine/Mesh;

    move-result-object v14

    .line 2734
    const/4 v3, 0x3

    const/16 v5, 0x8

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    invoke-virtual {v14, v3, v5}, Lcom/smartisanos/smengine/Mesh;->setTexVertexArray(I[F)V

    .line 2735
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/smengine/World;->getMeshManager()Lcom/smartisanos/smengine/MeshManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/Page;->mLongAlphaMeshName:Ljava/lang/String;

    invoke-virtual {v3, v5, v14}, Lcom/smartisanos/smengine/MeshManager;->addMesh(Ljava/lang/String;Lcom/smartisanos/smengine/Mesh;)Lcom/smartisanos/smengine/Mesh;

    .line 2737
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/Page;->mLongPressAlphaRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v3, v14}, Lcom/smartisanos/smengine/RectNode;->setMesh(Lcom/smartisanos/smengine/Mesh;)V

    .line 2738
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/smartisanos/launcher/view/Cell;

    .line 2739
    .local v12, "cell":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v12}, Lcom/smartisanos/launcher/view/Cell;->getDisplayRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/smartisanos/smengine/RectNode;->setIsEnableBlend(Z)V

    .line 2740
    invoke-virtual {v12}, Lcom/smartisanos/launcher/view/Cell;->getDisplayRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/smartisanos/smengine/RenderState;->setBlendMode(I)V

    goto :goto_0

    .line 2758
    .end local v12    # "cell":Lcom/smartisanos/launcher/view/Cell;
    .end local v14    # "gmesh":Lcom/smartisanos/smengine/Mesh;
    .end local v15    # "mt":Lcom/smartisanos/smengine/mymaterial/Material;
    .end local v16    # "pageLayer":Lcom/smartisanos/launcher/view/LayerManager$PageLayer;
    .end local v17    # "size":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_3
    const/high16 v4, 0x3f800000    # 1.0f

    .line 2759
    .local v4, "fromC":F
    const/4 v8, 0x0

    .line 2760
    .local v8, "toC":F
    if-eqz p1, :cond_4

    .line 2761
    const/4 v4, 0x0

    .line 2762
    const/high16 v8, 0x3f800000    # 1.0f

    .line 2764
    :cond_4
    new-instance v2, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/Page;->mLongPressAlphaRect:Lcom/smartisanos/smengine/RectNode;

    invoke-direct {v2, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 2765
    .local v2, "anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    const/4 v3, 0x3

    move v5, v4

    move v6, v4

    move v7, v4

    move v9, v8

    move v10, v8

    move v11, v8

    invoke-virtual/range {v2 .. v11}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFFFF)V

    .line 2767
    move/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 2768
    new-instance v3, Lcom/smartisanos/launcher/view/Page$18;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v3, v0, v1, v13}, Lcom/smartisanos/launcher/view/Page$18;-><init>(Lcom/smartisanos/launcher/view/Page;ZLjava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 2796
    return-object v2

    .line 2734
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public getIndex(II)I
    .locals 1
    .param p1, "i"    # I
    .param p2, "j"    # I

    .prologue
    .line 1434
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Page;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_col_num:I

    mul-int/2addr v0, p1

    add-int/2addr v0, p2

    return v0
.end method

.method public getItemInfo(II)Lcom/smartisanos/launcher/data/ItemInfo;
    .locals 2
    .param p1, "i"    # I
    .param p2, "j"    # I

    .prologue
    .line 1361
    invoke-virtual {p0, p1, p2}, Lcom/smartisanos/launcher/view/Page;->getIndex(II)I

    move-result v0

    .line 1362
    .local v0, "index":I
    iget-object v1, p0, Lcom/smartisanos/launcher/view/Page;->mItemInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 1363
    const/4 v1, 0x0

    .line 1365
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/smartisanos/launcher/view/Page;->mItemInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/data/ItemInfo;

    goto :goto_0
.end method

.method public getLastNonEmptyCell()Lcom/smartisanos/launcher/view/Cell;
    .locals 5

    .prologue
    .line 426
    const/4 v1, 0x0

    .line 427
    .local v1, "lastNonEmptyCell":Lcom/smartisanos/launcher/view/Cell;
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 428
    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/Page;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v3

    .line 429
    .local v3, "sn":Lcom/smartisanos/smengine/SceneNode;
    invoke-static {v3}, Lcom/smartisanos/launcher/view/Cell;->sIsInstanceFromCell(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v2, v3

    .line 430
    check-cast v2, Lcom/smartisanos/launcher/view/Cell;

    .line 431
    .local v2, "pc":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Cell;->isEmptyCell()Z

    move-result v4

    if-nez v4, :cond_1

    .line 432
    move-object v1, v2

    .line 427
    .end local v2    # "pc":Lcom/smartisanos/launcher/view/Cell;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 439
    .end local v3    # "sn":Lcom/smartisanos/smengine/SceneNode;
    :cond_1
    return-object v1
.end method

.method public getLayStatus()I
    .locals 1

    .prologue
    .line 2995
    iget v0, p0, Lcom/smartisanos/launcher/view/Page;->mLayerStatus:I

    return v0
.end method

.method public getLongPressGaussianRect()Lcom/smartisanos/smengine/RectNode;
    .locals 1

    .prologue
    .line 3100
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Page;->mLongPressGaussianRect:Lcom/smartisanos/smengine/RectNode;

    return-object v0
.end method

.method public getPageCellAt(II)Lcom/smartisanos/launcher/view/Cell;
    .locals 4
    .param p1, "rowIndex"    # I
    .param p2, "colIndex"    # I

    .prologue
    .line 403
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->getAllPageCell()Ljava/util/ArrayList;

    move-result-object v0

    .line 404
    .local v0, "allCell":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 405
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/Cell;

    .line 406
    .local v2, "pc":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Cell;->getRowIndex()I

    move-result v3

    if-ne v3, p1, :cond_0

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Cell;->getColIndex()I

    move-result v3

    if-ne v3, p2, :cond_0

    .line 410
    .end local v2    # "pc":Lcom/smartisanos/launcher/view/Cell;
    :goto_1
    return-object v2

    .line 404
    .restart local v2    # "pc":Lcom/smartisanos/launcher/view/Cell;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 410
    .end local v2    # "pc":Lcom/smartisanos/launcher/view/Cell;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getPageCellById(J)Lcom/smartisanos/launcher/view/Cell;
    .locals 9
    .param p1, "id"    # J

    .prologue
    .line 261
    const/4 v0, 0x0

    .line 262
    .local v0, "cell":Lcom/smartisanos/launcher/view/Cell;
    const-wide/16 v6, 0x0

    cmp-long v5, p1, v6

    if-gez v5, :cond_0

    move-object v1, v0

    .line 279
    .end local v0    # "cell":Lcom/smartisanos/launcher/view/Cell;
    .local v1, "cell":Lcom/smartisanos/launcher/view/Cell;
    :goto_0
    return-object v1

    .line 265
    .end local v1    # "cell":Lcom/smartisanos/launcher/view/Cell;
    .restart local v0    # "cell":Lcom/smartisanos/launcher/view/Cell;
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->getAllNonEmptyCellList()Ljava/util/ArrayList;

    move-result-object v2

    .line 266
    .local v2, "cells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    move-object v1, v0

    .line 267
    .end local v0    # "cell":Lcom/smartisanos/launcher/view/Cell;
    .restart local v1    # "cell":Lcom/smartisanos/launcher/view/Cell;
    goto :goto_0

    .line 269
    .end local v1    # "cell":Lcom/smartisanos/launcher/view/Cell;
    .restart local v0    # "cell":Lcom/smartisanos/launcher/view/Cell;
    :cond_2
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_5

    .line 270
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/view/Cell;

    .line 271
    .local v4, "pc":Lcom/smartisanos/launcher/view/Cell;
    if-nez v4, :cond_4

    .line 269
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 274
    :cond_4
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Cell;->getItemInfo()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Cell;->getItemInfo()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v5

    iget-wide v6, v5, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    cmp-long v5, v6, p1

    if-nez v5, :cond_3

    .line 275
    move-object v0, v4

    .end local v4    # "pc":Lcom/smartisanos/launcher/view/Cell;
    :cond_5
    move-object v1, v0

    .line 279
    .end local v0    # "cell":Lcom/smartisanos/launcher/view/Cell;
    .restart local v1    # "cell":Lcom/smartisanos/launcher/view/Cell;
    goto :goto_0
.end method

.method public getPageCover()Lcom/smartisanos/smengine/RectNode;
    .locals 2

    .prologue
    .line 1239
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->getPageStatus()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1240
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Page;->mEyePageCoverImage:Lcom/smartisanos/smengine/RectNode;

    .line 1244
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPageCover(I)Lcom/smartisanos/smengine/RectNode;
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 1249
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1250
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Page;->mEyePageCoverImage:Lcom/smartisanos/smengine/RectNode;

    .line 1254
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPageStatus()I
    .locals 1

    .prologue
    .line 2042
    iget v0, p0, Lcom/smartisanos/launcher/view/Page;->mPageStatus:I

    return v0
.end method

.method public getPointsForFloatPageMode()[Lcom/smartisanos/smengine/math/Vector3f;
    .locals 1

    .prologue
    .line 2820
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Page;->mPointsForFloatPageMode:[Lcom/smartisanos/smengine/math/Vector3f;

    return-object v0
.end method

.method public getShadowRect()Lcom/smartisanos/smengine/RectNode;
    .locals 1

    .prologue
    .line 2536
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Page;->mLongPressPageShadowRect:Lcom/smartisanos/smengine/RectNode;

    return-object v0
.end method

.method public getTitleForDB()Ljava/lang/String;
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Page;->mTitleName:Ljava/lang/String;

    .line 130
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 131
    const-string v0, ""

    .line 133
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 134
    const-string v0, ""

    .line 136
    :cond_1
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 137
    const-string v0, ""

    .line 139
    :cond_2
    return-object v0
.end method

.method public getTitleForRect()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Page;->mTitleName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 143
    const-string v0, " "

    iput-object v0, p0, Lcom/smartisanos/launcher/view/Page;->mTitleName:Ljava/lang/String;

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Page;->mTitleName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 146
    const-string v0, " "

    iput-object v0, p0, Lcom/smartisanos/launcher/view/Page;->mTitleName:Ljava/lang/String;

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Page;->mTitleName:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleView()Lcom/smartisanos/launcher/view/TitleView;
    .locals 1

    .prologue
    .line 1127
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Page;->mTitleAreaNode:Lcom/smartisanos/launcher/view/TitleView;

    return-object v0
.end method

.method public hideAllCover()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2378
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Page;->mMultiSelectedPageCanDropCoverRect:Lcom/smartisanos/smengine/RectNode;

    if-eqz v0, :cond_0

    .line 2379
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Page;->mMultiSelectedPageCanDropCoverRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 2380
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Page;->mMultiSelectedPageCanDropCoverRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RectNode;->clear(Z)V

    .line 2382
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Page;->mMultiSelectedPageCanNotDropCoverRect:Lcom/smartisanos/smengine/RectNode;

    if-eqz v0, :cond_1

    .line 2383
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Page;->mMultiSelectedPageCanNotDropCoverRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 2384
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Page;->mMultiSelectedPageCanNotDropCoverRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RectNode;->clear(Z)V

    .line 2386
    :cond_1
    iput-object v2, p0, Lcom/smartisanos/launcher/view/Page;->mMultiSelectedPageCanDropCoverRect:Lcom/smartisanos/smengine/RectNode;

    .line 2387
    iput-object v2, p0, Lcom/smartisanos/launcher/view/Page;->mMultiSelectedPageCanNotDropCoverRect:Lcom/smartisanos/smengine/RectNode;

    .line 2388
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->hidePageNoSpaceText()V

    .line 2389
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->updateGeometricState()V

    .line 2390
    return-void
.end method

.method public hideAppTextAndFlag(Lcom/smartisanos/smengine/AnimationTimeLine;FF)V
    .locals 4
    .param p1, "al"    # Lcom/smartisanos/smengine/AnimationTimeLine;
    .param p2, "appNametime"    # F
    .param p3, "flagTime"    # F

    .prologue
    .line 1466
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 1467
    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/Page;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v2

    .line 1468
    .local v2, "sn":Lcom/smartisanos/smengine/SceneNode;
    invoke-static {v2}, Lcom/smartisanos/launcher/view/Cell;->sIsInstanceFromCell(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, v2

    .line 1469
    check-cast v1, Lcom/smartisanos/launcher/view/Cell;

    .line 1470
    .local v1, "pc":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v1, p1, p2, p3}, Lcom/smartisanos/launcher/view/Cell;->hideAppNameAndFlagAnimation(Lcom/smartisanos/smengine/AnimationTimeLine;FF)V

    .line 1466
    .end local v1    # "pc":Lcom/smartisanos/launcher/view/Cell;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1473
    .end local v2    # "sn":Lcom/smartisanos/smengine/SceneNode;
    :cond_1
    return-void
.end method

.method public hideLongPressGaussianRect()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2472
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Page;->mLongPressGaussianRect:Lcom/smartisanos/smengine/RectNode;

    if-eqz v0, :cond_0

    .line 2473
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Page;->mLongPressGaussianRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 2474
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Page;->mLongPressGaussianRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RectNode;->clear(Z)V

    .line 2476
    :cond_0
    iput-object v2, p0, Lcom/smartisanos/launcher/view/Page;->mLongPressGaussianRect:Lcom/smartisanos/smengine/RectNode;

    .line 2477
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Page;->mLongPressAlphaRect:Lcom/smartisanos/smengine/RectNode;

    if-eqz v0, :cond_1

    .line 2478
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Page;->mLongPressAlphaRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 2479
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Page;->mLongPressAlphaRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RectNode;->clear(Z)V

    .line 2480
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/World;->getMeshManager()Lcom/smartisanos/smengine/MeshManager;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/Page;->mLongPressAlphaRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/RectNode;->getMesh()Lcom/smartisanos/smengine/Mesh;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/MeshManager;->removeMesh(Lcom/smartisanos/smengine/Mesh;)V

    .line 2481
    iput-object v2, p0, Lcom/smartisanos/launcher/view/Page;->mLongPressAlphaRect:Lcom/smartisanos/smengine/RectNode;

    .line 2482
    iput-object v2, p0, Lcom/smartisanos/launcher/view/Page;->mLongAlphaMeshName:Ljava/lang/String;

    .line 2484
    :cond_1
    return-void
.end method

.method public hidePageNoSpaceText()V
    .locals 2

    .prologue
    .line 2439
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Page;->mCurrentPageNoSpaceRect:Lcom/smartisanos/launcher/view/TextView;

    if-nez v0, :cond_0

    .line 2445
    :goto_0
    return-void

    .line 2442
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Page;->mCurrentPageNoSpaceRect:Lcom/smartisanos/launcher/view/TextView;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/TextView;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 2443
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Page;->mCurrentPageNoSpaceRect:Lcom/smartisanos/launcher/view/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/TextView;->clear(Z)V

    .line 2444
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/Page;->mCurrentPageNoSpaceRect:Lcom/smartisanos/launcher/view/TextView;

    goto :goto_0
.end method

.method public hidePageShadow()V
    .locals 2

    .prologue
    .line 2461
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Page;->mLongPressPageShadowRect:Lcom/smartisanos/smengine/RectNode;

    if-eqz v0, :cond_0

    .line 2462
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Page;->mLongPressPageShadowRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 2463
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Page;->mLongPressPageShadowRect:Lcom/smartisanos/smengine/RectNode;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RectNode;->clear(Z)V

    .line 2465
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/Page;->mLongPressPageShadowRect:Lcom/smartisanos/smengine/RectNode;

    .line 2466
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v0, :cond_1

    .line 2467
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->hideLongPressGaussianRect()V

    .line 2469
    :cond_1
    return-void
.end method

.method public hidePageShadow(Lcom/smartisanos/smengine/AnimationTimeLine;FF)V
    .locals 11
    .param p1, "timeLine"    # Lcom/smartisanos/smengine/AnimationTimeLine;
    .param p2, "duration"    # F
    .param p3, "delay"    # F

    .prologue
    .line 2487
    new-instance v0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    iget-object v2, p0, Lcom/smartisanos/launcher/view/Page;->mLongPressPageShadowRect:Lcom/smartisanos/smengine/RectNode;

    invoke-direct {v0, v2}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 2488
    .local v0, "anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    invoke-virtual {v0, p2}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 2489
    const/4 v1, 0x3

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v9}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFFFF)V

    .line 2491
    const/16 v2, 0xe

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 2492
    invoke-virtual {p1, p3, v0}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 2493
    sget-boolean v2, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v2, :cond_0

    .line 2494
    iget-object v2, p0, Lcom/smartisanos/launcher/view/Page;->mLongPressAlphaRect:Lcom/smartisanos/smengine/RectNode;

    if-eqz v2, :cond_0

    .line 2495
    iget-object v2, p0, Lcom/smartisanos/launcher/view/Page;->mLongPressAlphaRect:Lcom/smartisanos/smengine/RectNode;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    .line 2496
    new-instance v1, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    iget-object v2, p0, Lcom/smartisanos/launcher/view/Page;->mLongPressAlphaRect:Lcom/smartisanos/smengine/RectNode;

    invoke-direct {v1, v2}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 2497
    .local v1, "guassianAlpha":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    invoke-virtual {v1, p2}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 2498
    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 2499
    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual/range {v1 .. v10}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFFFF)V

    .line 2500
    invoke-virtual {p1, p3, v1}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 2501
    new-instance v2, Lcom/smartisanos/launcher/view/Page$16;

    invoke-direct {v2, p0}, Lcom/smartisanos/launcher/view/Page$16;-><init>(Lcom/smartisanos/launcher/view/Page;)V

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 2533
    .end local v1    # "guassianAlpha":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    :cond_0
    return-void
.end method

.method public initPageContent()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 3111
    iget-boolean v5, p0, Lcom/smartisanos/launcher/view/Page;->mIsPageContentInited:Z

    if-nez v5, :cond_7

    .line 3112
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->create()V

    .line 3113
    iget v5, p0, Lcom/smartisanos/launcher/view/Page;->mPageStatus:I

    if-ne v5, v10, :cond_8

    .line 3114
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->showPageCoverForEye()V

    .line 3115
    sget v5, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static {v5}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v5

    iget v2, v5, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    .line 3116
    .local v2, "height":F
    new-instance v3, Lcom/smartisanos/smengine/math/Vector3f;

    iget-object v5, p0, Lcom/smartisanos/launcher/view/Page;->mEyeCoverPos:Lcom/smartisanos/smengine/math/Vector3f;

    iget v5, v5, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget-object v6, p0, Lcom/smartisanos/launcher/view/Page;->mEyeCoverPos:Lcom/smartisanos/smengine/math/Vector3f;

    iget v6, v6, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    sub-float/2addr v6, v2

    const/high16 v7, 0x40000000    # 2.0f

    sub-float/2addr v6, v7

    iget-object v7, p0, Lcom/smartisanos/launcher/view/Page;->mEyeCoverPos:Lcom/smartisanos/smengine/math/Vector3f;

    iget v7, v7, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-direct {v3, v5, v6, v7}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    .line 3117
    .local v3, "to":Lcom/smartisanos/smengine/math/Vector3f;
    iget-object v5, p0, Lcom/smartisanos/launcher/view/Page;->mEyePageCoverImage:Lcom/smartisanos/smengine/RectNode;

    iget v6, v3, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v7, v3, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v8, v3, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-virtual {v5, v6, v7, v8}, Lcom/smartisanos/smengine/RectNode;->setTranslate(FFF)V

    .line 3118
    iget-object v5, p0, Lcom/smartisanos/launcher/view/Page;->mEyePageCoverImage:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v5, v10}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    .line 3119
    sget-boolean v5, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v5, :cond_4

    .line 3120
    const v4, 0x3dcccccd    # 0.1f

    .line 3121
    .local v4, "toc":F
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->getAllPageCell()Ljava/util/ArrayList;

    move-result-object v1

    .line 3122
    .local v1, "cells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/Cell;

    .line 3123
    .local v0, "cell":Lcom/smartisanos/launcher/view/Cell;
    if-eqz v0, :cond_0

    .line 3124
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->getBackgroundRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 3125
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->getBackgroundRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v6

    invoke-virtual {v6, v4, v4, v4, v4}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 3127
    :cond_1
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->getForegroundRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 3128
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->getForegroundRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v6

    invoke-virtual {v6, v4, v4, v4, v4}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 3130
    :cond_2
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->getForegroundOverlapRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 3131
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->getForegroundOverlapRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v6

    invoke-virtual {v6, v4, v4, v4, v4}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    goto :goto_0

    .line 3135
    .end local v0    # "cell":Lcom/smartisanos/launcher/view/Cell;
    :cond_3
    iget-object v5, p0, Lcom/smartisanos/launcher/view/Page;->mEyePageCoverImage:Lcom/smartisanos/smengine/RectNode;

    sget v6, Lcom/smartisanos/launcher/data/Constants;->sEyeCoverPageColor:F

    sget v7, Lcom/smartisanos/launcher/data/Constants;->sEyeCoverPageColor:F

    sget v8, Lcom/smartisanos/launcher/data/Constants;->sEyeCoverPageColor:F

    sget v9, Lcom/smartisanos/launcher/data/Constants;->sEyeCoverPageColor:F

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 3147
    .end local v1    # "cells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    .end local v2    # "height":F
    .end local v3    # "to":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v4    # "toc":F
    :cond_4
    :goto_1
    sget v5, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    sget v6, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    if-ne v5, v6, :cond_5

    .line 3148
    invoke-virtual {p0, v10}, Lcom/smartisanos/launcher/view/Page;->createAndShowPageTitle(Z)V

    .line 3150
    :cond_5
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->doLayout()V

    .line 3151
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->initSpecialsForPage()V

    .line 3154
    sget v5, Lcom/smartisanos/launcher/data/Constants;->SCROLL_ANIMATION_TYPE:I

    const/4 v6, 0x6

    if-ne v5, v6, :cond_6

    .line 3155
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/smartisanos/launcher/view/Page;->setLayerStatus(I)V

    .line 3158
    :cond_6
    iput-boolean v10, p0, Lcom/smartisanos/launcher/view/Page;->mIsPageContentInited:Z

    .line 3160
    :cond_7
    return-void

    .line 3138
    :cond_8
    iget v5, p0, Lcom/smartisanos/launcher/view/Page;->mPageStatus:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_4

    .line 3145
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->noneCoverToShow()V

    goto :goto_1
.end method

.method protected initSpecialsForPage()V
    .locals 0

    .prologue
    .line 3164
    return-void
.end method

.method public isDrawWithBatch()Z
    .locals 1

    .prologue
    .line 258
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/Page;->mDrawWithBatch:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 344
    iget-boolean v1, p0, Lcom/smartisanos/launcher/view/Page;->readOnlyPage:Z

    if-eqz v1, :cond_1

    .line 345
    const/4 v0, 0x0

    .line 359
    :cond_0
    :goto_0
    return v0

    .line 347
    :cond_1
    const/4 v0, 0x1

    .line 348
    .local v0, "isEmpty":Z
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->pageCellCount()I

    move-result v1

    if-eqz v1, :cond_2

    .line 349
    const/4 v0, 0x0

    .line 350
    goto :goto_0

    .line 352
    :cond_2
    iget-boolean v1, p0, Lcom/smartisanos/launcher/view/Page;->mIsPageContentInited:Z

    if-nez v1, :cond_0

    .line 353
    iget-object v1, p0, Lcom/smartisanos/launcher/view/Page;->mItemInfoList:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/smartisanos/launcher/view/Page;->mItemInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_4

    .line 354
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 356
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPageContentInited()Z
    .locals 1

    .prologue
    .line 3107
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/Page;->mIsPageContentInited:Z

    return v0
.end method

.method public isPageHidden()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 364
    iget v1, p0, Lcom/smartisanos/launcher/view/Page;->mPageStatus:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPageLock()Z
    .locals 2

    .prologue
    .line 368
    iget v0, p0, Lcom/smartisanos/launcher/view/Page;->mPageStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTransformedTouchPointInView(FF)Z
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1426
    invoke-super {p0, p1, p2}, Lcom/smartisanos/launcher/view/BaseNode;->isTransformedTouchPointInView(FF)Z

    move-result v0

    .line 1427
    .local v0, "res":Z
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->getTitleView()Lcom/smartisanos/launcher/view/TitleView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1428
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->getTitleView()Lcom/smartisanos/launcher/view/TitleView;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/smartisanos/launcher/view/TitleView;->isTransformedTouchPointInView(FF)Z

    move-result v0

    .line 1431
    :cond_0
    return v0
.end method

.method public isVisiblePage()Z
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/smartisanos/launcher/view/Page;->mPageStatus:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lockPageByEvent()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 443
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v0

    sget-object v1, Lcom/smartisanos/home/Launcher$RUNNING_ENV;->GL:Lcom/smartisanos/home/Launcher$RUNNING_ENV;

    invoke-virtual {v0, v1}, Lcom/smartisanos/home/Launcher;->verifyThread(Lcom/smartisanos/home/Launcher$RUNNING_ENV;)V

    .line 444
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v2, v1}, Lcom/smartisanos/launcher/view/Page;->setPageStatus(IZZZ)V

    .line 445
    invoke-virtual {p0, v2}, Lcom/smartisanos/launcher/view/Page;->setCellItemInfoLockStatus(Z)V

    .line 446
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->getTitleView()Lcom/smartisanos/launcher/view/TitleView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/TitleView;->setLockState(Z)V

    .line 447
    return-void
.end method

.method public noneCoverToShow()V
    .locals 1

    .prologue
    .line 1291
    const/4 v0, 0x0

    iput v0, p0, Lcom/smartisanos/launcher/view/Page;->mPageStatus:I

    .line 1292
    return-void
.end method

.method public onInterceptTouchEvent(Lcom/smartisanos/smengine/TMotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Lcom/smartisanos/smengine/TMotionEvent;

    .prologue
    const/4 v0, 0x0

    .line 1410
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 1412
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->getTitleView()Lcom/smartisanos/launcher/view/TitleView;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->getTitleView()Lcom/smartisanos/launcher/view/TitleView;

    move-result-object v1

    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/launcher/view/TitleView;->isTransformedTouchPointInView(FF)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1420
    :cond_0
    :goto_0
    return v0

    .line 1416
    :cond_1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->isPageHidden()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->isPageLock()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1417
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onTouchEvent(Lcom/smartisanos/smengine/TouchEvent;)Z
    .locals 8
    .param p1, "event"    # Lcom/smartisanos/smengine/TouchEvent;

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1595
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TouchEvent;->getType()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    :cond_0
    :pswitch_0
    move v4, v5

    .line 1675
    :cond_1
    :goto_0
    return v4

    .line 1598
    :pswitch_1
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TouchEvent;->getWorldCoordinateX()F

    move-result v2

    .line 1599
    .local v2, "worldx":F
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TouchEvent;->getWorldCoordinateY()F

    move-result v3

    .line 1600
    .local v3, "worldy":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->getChildCount()I

    move-result v6

    if-ge v0, v6, :cond_0

    .line 1601
    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/Page;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    .line 1602
    .local v1, "sn":Lcom/smartisanos/smengine/SceneNode;
    invoke-virtual {v1, v2, v3, v7}, Lcom/smartisanos/smengine/SceneNode;->isPointInBoundingVolume(FFF)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1603
    invoke-static {v1}, Lcom/smartisanos/launcher/view/Cell;->sIsInstanceFromCell(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1605
    sget v6, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    sget v7, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    if-eq v6, v7, :cond_5

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->isVisiblePage()Z

    move-result v6

    if-nez v6, :cond_5

    .line 1606
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/MainView;->isEditMode()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1607
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->isPageHidden()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1608
    invoke-virtual {p0, v5, v4, v4, v5}, Lcom/smartisanos/launcher/view/Page;->setPageStatus(IZZZ)V

    .line 1609
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->getTitleView()Lcom/smartisanos/launcher/view/TitleView;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/smartisanos/launcher/view/TitleView;->setEyeState(Z)V

    goto :goto_0

    .line 1611
    :cond_2
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->isPageLock()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1612
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/MainView;->isVerifyPassword()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1613
    invoke-virtual {p0, v5, v4, v4, v5}, Lcom/smartisanos/launcher/view/Page;->setPageStatus(IZZZ)V

    .line 1614
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->getTitleView()Lcom/smartisanos/launcher/view/TitleView;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/smartisanos/launcher/view/TitleView;->setLockState(Z)V

    goto :goto_0

    .line 1616
    :cond_3
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->getTitleView()Lcom/smartisanos/launcher/view/TitleView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/TitleView;->verifyPassword()V

    goto :goto_0

    .line 1621
    :cond_4
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->pageToFloat()V

    goto :goto_0

    .line 1626
    :cond_5
    invoke-virtual {v1, p1}, Lcom/smartisanos/smengine/SceneNode;->onTouchEvent(Lcom/smartisanos/smengine/TouchEvent;)Z

    goto :goto_0

    .line 1600
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1634
    .end local v0    # "i":I
    .end local v1    # "sn":Lcom/smartisanos/smengine/SceneNode;
    .end local v2    # "worldx":F
    .end local v3    # "worldy":F
    :pswitch_2
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TouchEvent;->getWorldCoordinateX()F

    move-result v2

    .line 1635
    .restart local v2    # "worldx":F
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TouchEvent;->getWorldCoordinateY()F

    move-result v3

    .line 1636
    .restart local v3    # "worldy":F
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->getChildCount()I

    move-result v6

    if-ge v0, v6, :cond_0

    .line 1637
    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/Page;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    .line 1638
    .restart local v1    # "sn":Lcom/smartisanos/smengine/SceneNode;
    new-instance v6, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v6, v2, v3, v7}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    invoke-virtual {v1, v6}, Lcom/smartisanos/smengine/SceneNode;->isPointInBoundingVolume(Lcom/smartisanos/smengine/math/Vector3f;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1639
    invoke-static {v1}, Lcom/smartisanos/launcher/view/Cell;->sIsInstanceFromCell(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1641
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->isPageHidden()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->isPageLock()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1645
    :cond_7
    invoke-virtual {v1, p1}, Lcom/smartisanos/smengine/SceneNode;->onTouchEvent(Lcom/smartisanos/smengine/TouchEvent;)Z

    goto/16 :goto_0

    .line 1636
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1595
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public pageCellAdjustScaleForSpacing(FF)V
    .locals 25
    .param p1, "pageScaleX"    # F
    .param p2, "pageScaleY"    # F

    .prologue
    .line 2825
    sget v22, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static/range {v22 .. v22}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v20

    .line 2827
    .local v20, "propSingle":Lcom/smartisanos/launcher/data/LayoutProperty;
    move-object/from16 v0, v20

    iget v11, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    .line 2828
    .local v11, "cellWidthSingle":F
    move-object/from16 v0, v20

    iget v6, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    .line 2830
    .local v6, "cellHeightSingle":F
    move-object/from16 v0, v20

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_width:F

    move/from16 v18, v0

    .line 2831
    .local v18, "pageWidthSingle":F
    move-object/from16 v0, v20

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    move/from16 v16, v0

    .line 2833
    .local v16, "pageHeightSingle":F
    mul-float v17, v18, p1

    .line 2834
    .local v17, "pageWidthCurrent":F
    mul-float v15, v16, p2

    .line 2836
    .local v15, "pageHeightCurrent":F
    move v10, v11

    .line 2837
    .local v10, "cellWidthCurrent":F
    move v5, v6

    .line 2839
    .local v5, "cellHeightCurrent":F
    move-object/from16 v0, v20

    iget v13, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_spacing_h:F

    .line 2840
    .local v13, "h":F
    move-object/from16 v0, v20

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_spacing_v:F

    move/from16 v21, v0

    .line 2841
    .local v21, "v":F
    move-object/from16 v0, v20

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_row_num:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, -0x1

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    mul-float v22, v22, v13

    sub-float v22, v17, v22

    move-object/from16 v0, v20

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_row_num:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v12, v22, v23

    .line 2842
    .local v12, "cellWidthTarget":F
    move-object/from16 v0, v20

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_col_num:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, -0x1

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    mul-float v22, v22, v21

    sub-float v22, v15, v22

    move-object/from16 v0, v20

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_col_num:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v7, v22, v23

    .line 2844
    .local v7, "cellHeightTarget":F
    div-float v12, v12, p1

    .line 2845
    div-float v7, v7, p2

    .line 2847
    div-float v8, v12, v10

    .line 2848
    .local v8, "cellScaleX":F
    div-float v9, v7, v5

    .line 2852
    .local v9, "cellScaleY":F
    invoke-static/range {p1 .. p2}, Lcom/smartisanos/launcher/data/Constants;->pageCellAdjustScaleForSpacing(FF)V

    .line 2853
    sget v22, Lcom/smartisanos/launcher/data/Constants;->sPageStyle:I

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1

    .line 2854
    const/16 v22, 0x6

    invoke-static/range {v22 .. v22}, Lcom/smartisanos/launcher/data/Constants;->updatePageCellCenterPoints(I)V

    .line 2858
    :cond_0
    :goto_0
    sget-object v22, Lcom/smartisanos/launcher/data/Constants;->pageCellCenterPoints:[Lcom/smartisanos/smengine/math/Vector3f;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/smartisanos/launcher/view/Page;->mPointsForFloatPageMode:[Lcom/smartisanos/smengine/math/Vector3f;

    .line 2859
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/Page;->getAllPageCell()Ljava/util/ArrayList;

    move-result-object v4

    .line 2860
    .local v4, "allpc":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v14, v0, :cond_2

    .line 2861
    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/smartisanos/launcher/view/Cell;

    .line 2862
    .local v19, "pc":Lcom/smartisanos/launcher/view/Cell;
    const/high16 v22, 0x3f800000    # 1.0f

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v8, v9, v1}, Lcom/smartisanos/launcher/view/Cell;->setScale(FFF)V

    .line 2863
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/Page;->mPointsForFloatPageMode:[Lcom/smartisanos/smengine/math/Vector3f;

    move-object/from16 v22, v0

    aget-object v22, v22, v14

    move-object/from16 v0, v22

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/Page;->mPointsForFloatPageMode:[Lcom/smartisanos/smengine/math/Vector3f;

    move-object/from16 v23, v0

    aget-object v23, v23, v14

    move-object/from16 v0, v23

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/Page;->mPointsForFloatPageMode:[Lcom/smartisanos/smengine/math/Vector3f;

    move-object/from16 v24, v0

    aget-object v24, v24, v14

    move-object/from16 v0, v24

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    move/from16 v24, v0

    move-object/from16 v0, v19

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/smartisanos/launcher/view/Cell;->setTranslate(FFF)V

    .line 2864
    invoke-virtual/range {v19 .. v19}, Lcom/smartisanos/launcher/view/Cell;->updateGeometricState()V

    .line 2860
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 2855
    .end local v4    # "allpc":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    .end local v14    # "i":I
    .end local v19    # "pc":Lcom/smartisanos/launcher/view/Cell;
    :cond_1
    sget v22, Lcom/smartisanos/launcher/data/Constants;->sPageStyle:I

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_0

    .line 2856
    const/16 v22, 0x7

    invoke-static/range {v22 .. v22}, Lcom/smartisanos/launcher/data/Constants;->updatePageCellCenterPoints(I)V

    goto :goto_0

    .line 2866
    .restart local v4    # "allpc":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    .restart local v14    # "i":I
    :cond_2
    return-void
.end method

.method public pageCellCount()I
    .locals 5

    .prologue
    .line 330
    const/4 v3, 0x0

    .line 331
    .local v3, "sum":I
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->getChildCount()I

    move-result v0

    .line 332
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 333
    invoke-virtual {p0, v1}, Lcom/smartisanos/launcher/view/Page;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v4

    invoke-static {v4}, Lcom/smartisanos/launcher/view/Cell;->sIsInstanceFromCell(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 334
    invoke-virtual {p0, v1}, Lcom/smartisanos/launcher/view/Page;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/Cell;

    .line 335
    .local v2, "pc":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Cell;->isItemInfoNull()Z

    move-result v4

    if-nez v4, :cond_0

    .line 336
    add-int/lit8 v3, v3, 0x1

    .line 332
    .end local v2    # "pc":Lcom/smartisanos/launcher/view/Cell;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 340
    :cond_1
    return v3
.end method

.method public pageToFloat()V
    .locals 5

    .prologue
    .line 1528
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/MainView;->isVerifyPassword()Z

    move-result v1

    .line 1529
    .local v1, "passwordAlreadyVerify":Z
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->isPageHidden()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->isPageLock()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    .line 1530
    :cond_0
    new-instance v0, Lcom/smartisanos/smengine/Notification;

    invoke-direct {v0}, Lcom/smartisanos/smengine/Notification;-><init>()V

    .line 1531
    .local v0, "n":Lcom/smartisanos/smengine/Notification;
    invoke-virtual {v0, p0}, Lcom/smartisanos/smengine/Notification;->addData(Ljava/lang/Object;)V

    .line 1532
    invoke-static {}, Lcom/smartisanos/smengine/NotificationManager;->getCurrentNotificationManager()Lcom/smartisanos/smengine/NotificationManager;

    move-result-object v2

    const-string v3, "CoverPageClicked"

    invoke-virtual {v2, v3, v0}, Lcom/smartisanos/smengine/NotificationManager;->postNotification(Ljava/lang/String;Lcom/smartisanos/smengine/Notification;)V

    .line 1533
    sget-boolean v2, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/smartisanos/launcher/view/Page;->log:Lcom/smartisanos/launcher/LOG;

    const-string v3, "cgh"

    const-string v4, "this page is Hidden or Lock@@@@@@@@@@@@@@@"

    invoke-virtual {v2, v3, v4}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1537
    .end local v0    # "n":Lcom/smartisanos/smengine/Notification;
    :cond_1
    :goto_0
    return-void

    .line 1534
    :cond_2
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->isPageLock()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1535
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->getTitleView()Lcom/smartisanos/launcher/view/TitleView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/TitleView;->justVerifyPassword()V

    goto :goto_0
.end method

.method public playCellFlagDismissAnimation(Laurelienribon/tweenengine/Timeline;)V
    .locals 4
    .param p1, "timeline"    # Laurelienribon/tweenengine/Timeline;

    .prologue
    .line 2187
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->getAllPageCell()Ljava/util/ArrayList;

    move-result-object v1

    .line 2188
    .local v1, "cells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/Cell;

    .line 2189
    .local v0, "cell":Lcom/smartisanos/launcher/view/Cell;
    if-eqz v0, :cond_0

    .line 2190
    invoke-virtual {v0, p1}, Lcom/smartisanos/launcher/view/Cell;->playCellFlagDismissAnimation(Laurelienribon/tweenengine/Timeline;)V

    goto :goto_0

    .line 2193
    .end local v0    # "cell":Lcom/smartisanos/launcher/view/Cell;
    :cond_1
    return-void
.end method

.method public reSetBackgroundImage()Lcom/smartisanos/smengine/AnimationTimeLine;
    .locals 7

    .prologue
    .line 2128
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->getAllPageCell()Ljava/util/ArrayList;

    move-result-object v0

    .line 2130
    .local v0, "allpc":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/smengine/World;->getCameraManager()Lcom/smartisanos/smengine/CameraManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/smengine/CameraManager;->getMainCamera()Lcom/smartisanos/smengine/Camera;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/smartisanos/launcher/view/Page;->cull(Lcom/smartisanos/smengine/Camera;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2131
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/Cell;

    .line 2132
    .local v2, "pc":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Cell;->reSetBackgroundNoAnimation()V

    goto :goto_0

    .line 2137
    .end local v2    # "pc":Lcom/smartisanos/launcher/view/Cell;
    :cond_0
    new-instance v1, Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-direct {v1}, Lcom/smartisanos/smengine/AnimationTimeLine;-><init>()V

    .line 2139
    .local v1, "pageResetBackgroundTimeline":Lcom/smartisanos/smengine/AnimationTimeLine;
    sget v5, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    sget v6, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    if-ne v5, v6, :cond_1

    .line 2140
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->getTitleView()Lcom/smartisanos/launcher/view/TitleView;

    move-result-object v4

    .line 2141
    .local v4, "tv":Lcom/smartisanos/launcher/view/TitleView;
    if-eqz v4, :cond_1

    .line 2146
    .end local v4    # "tv":Lcom/smartisanos/launcher/view/TitleView;
    :cond_1
    new-instance v5, Lcom/smartisanos/launcher/view/Page$15;

    invoke-direct {v5, p0}, Lcom/smartisanos/launcher/view/Page$15;-><init>(Lcom/smartisanos/launcher/view/Page;)V

    invoke-virtual {v1, v5}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 2158
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/Cell;

    .line 2159
    .restart local v2    # "pc":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Cell;->isCellIsPushDown()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2161
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Cell;->reSetBackgroundNoAnimation()V

    goto :goto_1

    .line 2163
    :cond_3
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Cell;->reSetBackground()Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v3

    .line 2164
    .local v3, "pcResetBackgroundTimeline":Lcom/smartisanos/smengine/AnimationTimeLine;
    if-eqz v3, :cond_2

    .line 2165
    const/4 v6, 0x0

    invoke-virtual {v1, v6, v3}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    goto :goto_1

    .line 2173
    .end local v1    # "pageResetBackgroundTimeline":Lcom/smartisanos/smengine/AnimationTimeLine;
    .end local v2    # "pc":Lcom/smartisanos/launcher/view/Cell;
    .end local v3    # "pcResetBackgroundTimeline":Lcom/smartisanos/smengine/AnimationTimeLine;
    :cond_4
    const/4 v1, 0x0

    :cond_5
    return-object v1
.end method

.method public reSetBackgroundImageNoAnimation()V
    .locals 4

    .prologue
    .line 2178
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->getAllPageCell()Ljava/util/ArrayList;

    move-result-object v0

    .line 2180
    .local v0, "allpc":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/Cell;

    .line 2181
    .local v1, "pc":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Cell;->reSetBackgroundNoAnimation()V

    goto :goto_0

    .line 2184
    .end local v1    # "pc":Lcom/smartisanos/launcher/view/Cell;
    :cond_0
    return-void
.end method

.method public reSortChildren()V
    .locals 1

    .prologue
    .line 1053
    new-instance v0, Lcom/smartisanos/launcher/view/Page$SortByIndex;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/view/Page$SortByIndex;-><init>(Lcom/smartisanos/launcher/view/Page;)V

    invoke-super {p0, v0}, Lcom/smartisanos/launcher/view/BaseNode;->reSortChildren(Ljava/util/Comparator;)V

    .line 1054
    return-void
.end method

.method public refreshAppName()V
    .locals 4

    .prologue
    .line 2248
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->getAllPageCell()Ljava/util/ArrayList;

    move-result-object v1

    .line 2249
    .local v1, "cells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/Cell;

    .line 2250
    .local v0, "cell":Lcom/smartisanos/launcher/view/Cell;
    if-eqz v0, :cond_0

    .line 2251
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->refreshAppName()V

    goto :goto_0

    .line 2254
    .end local v0    # "cell":Lcom/smartisanos/launcher/view/Cell;
    :cond_1
    return-void
.end method

.method public releasePageContent()V
    .locals 2

    .prologue
    .line 3167
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/Page;->mIsPageContentInited:Z

    if-eqz v0, :cond_1

    .line 3168
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Page;->mTitleAreaNode:Lcom/smartisanos/launcher/view/TitleView;

    if-eqz v0, :cond_0

    .line 3169
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Page;->mTitleAreaNode:Lcom/smartisanos/launcher/view/TitleView;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/TitleView;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 3170
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Page;->mTitleAreaNode:Lcom/smartisanos/launcher/view/TitleView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/TitleView;->clear(Z)V

    .line 3171
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/Page;->mTitleAreaNode:Lcom/smartisanos/launcher/view/TitleView;

    .line 3173
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/Page;->mIsPageContentInited:Z

    .line 3175
    :cond_1
    return-void
.end method

.method public removeAllEmptyCell()V
    .locals 7

    .prologue
    .line 905
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 906
    .local v3, "removeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->getChildCount()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 907
    invoke-virtual {p0, v1}, Lcom/smartisanos/launcher/view/Page;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v4

    .line 908
    .local v4, "sn":Lcom/smartisanos/smengine/SceneNode;
    invoke-static {v4}, Lcom/smartisanos/launcher/view/Cell;->sIsInstanceFromCell(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v2, v4

    .line 909
    check-cast v2, Lcom/smartisanos/launcher/view/Cell;

    .line 910
    .local v2, "pc":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Cell;->isEmptyCell()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 911
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 906
    .end local v2    # "pc":Lcom/smartisanos/launcher/view/Cell;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 916
    .end local v4    # "sn":Lcom/smartisanos/smengine/SceneNode;
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_2

    .line 917
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/smengine/SceneNode;

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/smartisanos/launcher/view/Page;->removePageCell(Lcom/smartisanos/smengine/SceneNode;Z)V

    .line 916
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 919
    :cond_2
    return-void
.end method

.method public removePageCell(Lcom/smartisanos/smengine/SceneNode;Z)V
    .locals 24
    .param p1, "pc"    # Lcom/smartisanos/smengine/SceneNode;
    .param p2, "needAnimation"    # Z

    .prologue
    .line 575
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/PageView;->getAnimationController()Lcom/smartisanos/launcher/view/AnimationController;

    move-result-object v14

    .line 577
    .local v14, "ac":Lcom/smartisanos/launcher/view/AnimationController;
    if-eqz p2, :cond_1

    .line 578
    sget-boolean v5, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v5, :cond_0

    sget-object v5, Lcom/smartisanos/launcher/view/Page;->log:Lcom/smartisanos/launcher/LOG;

    const-string v6, "cgh"

    const-string v7, "animation remove page cell!!!!!!!!!!!!!"

    invoke-virtual {v5, v6, v7}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    :cond_0
    new-instance v17, Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-direct/range {v17 .. v17}, Lcom/smartisanos/smengine/AnimationTimeLine;-><init>()V

    .local v17, "removeTimeLine":Lcom/smartisanos/smengine/AnimationTimeLine;
    move-object/from16 v18, p1

    .line 582
    check-cast v18, Lcom/smartisanos/launcher/view/Cell;

    .line 583
    .local v18, "removed":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual/range {v18 .. v18}, Lcom/smartisanos/launcher/view/Cell;->getWorldTransform()Lcom/smartisanos/smengine/math/Transform;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/smengine/math/Transform;->getScale()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v23

    .line 584
    .local v23, "worldScale":Lcom/smartisanos/smengine/math/Vector3f;
    new-instance v22, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct/range {v22 .. v22}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 585
    .local v22, "worldPos":Lcom/smartisanos/smengine/math/Vector3f;
    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Cell;->getWorldTranslate(Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 586
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/smengine/World;->getSceneManager()Lcom/smartisanos/smengine/SceneManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/smengine/SceneManager;->getRootNode()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/smengine/SceneNode;->getWorldTransform()Lcom/smartisanos/smengine/math/Transform;

    move-result-object v20

    .line 587
    .local v20, "t":Lcom/smartisanos/smengine/math/Transform;
    invoke-virtual/range {v20 .. v20}, Lcom/smartisanos/smengine/math/Transform;->inverse()Lcom/smartisanos/smengine/math/Transform;

    move-result-object v21

    .line 588
    .local v21, "tinv":Lcom/smartisanos/smengine/math/Transform;
    new-instance v19, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct/range {v19 .. v19}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 589
    .local v19, "result":Lcom/smartisanos/smengine/math/Vector3f;
    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/smengine/math/Transform;->transformVector(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v19

    .line 590
    move-object/from16 v0, v19

    iget v5, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move-object/from16 v0, v19

    iget v6, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move-object/from16 v0, v19

    iget v7, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v6, v7}, Lcom/smartisanos/launcher/view/Cell;->setTranslate(FFF)V

    .line 591
    invoke-virtual/range {v18 .. v18}, Lcom/smartisanos/launcher/view/Cell;->updateGeometricState()V

    .line 593
    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/smengine/math/Transform;->transformVector(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v19

    .line 594
    move-object/from16 v0, v19

    iget v5, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move-object/from16 v0, v19

    iget v6, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move-object/from16 v0, v19

    iget v7, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v6, v7}, Lcom/smartisanos/launcher/view/Cell;->setScale(FFF)V

    .line 595
    invoke-virtual/range {v18 .. v18}, Lcom/smartisanos/launcher/view/Cell;->updateGeometricState()V

    .line 597
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/smengine/World;->getSceneManager()Lcom/smartisanos/smengine/SceneManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/smengine/SceneManager;->getRootNode()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 601
    const/4 v5, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lcom/smartisanos/launcher/view/Cell;->setRenderBgToRenderTarget(Z)V

    .line 604
    new-instance v3, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 605
    .local v3, "anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    invoke-virtual/range {p1 .. p1}, Lcom/smartisanos/smengine/SceneNode;->getScale()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/smengine/math/Vector3f;->clone()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v16

    .line 606
    .local v16, "currentScale":Lcom/smartisanos/smengine/math/Vector3f;
    const v5, 0x3e4ccccd    # 0.2f

    invoke-virtual {v3, v5}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 607
    const/16 v5, 0xf

    invoke-virtual {v3, v5}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 608
    const/4 v4, 0x1

    move-object/from16 v0, v16

    iget v5, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move-object/from16 v0, v16

    iget v6, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move-object/from16 v0, v16

    iget v7, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    move-object/from16 v0, v16

    iget v8, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    const v9, 0x3ecccccd    # 0.4f

    mul-float/2addr v8, v9

    move-object/from16 v0, v16

    iget v9, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    const v10, 0x3ecccccd    # 0.4f

    mul-float/2addr v9, v10

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual/range {v3 .. v10}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFF)V

    .line 609
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setPreserveNodeScale(Z)V

    .line 611
    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v3}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 615
    new-instance v4, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-object/from16 v5, p1

    check-cast v5, Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Cell;->getBackgroundRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .local v4, "animAlpha":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    move-object/from16 v5, p1

    .line 616
    check-cast v5, Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Cell;->getBackgroundRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/smartisanos/smengine/RectNode;->setIsEnableBlend(Z)V

    .line 618
    const v5, 0x3e4ccccd    # 0.2f

    invoke-virtual {v4, v5}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 619
    new-instance v15, Lcom/smartisanos/smengine/math/Vector4f;

    invoke-direct {v15}, Lcom/smartisanos/smengine/math/Vector4f;-><init>()V

    .line 620
    .local v15, "currentColor":Lcom/smartisanos/smengine/math/Vector4f;
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/smartisanos/smengine/SceneNode;->getColor(Lcom/smartisanos/smengine/math/Vector4f;)V

    .line 621
    const/16 v5, 0xf

    invoke-virtual {v4, v5}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 624
    const/4 v5, 0x3

    iget v6, v15, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    iget v7, v15, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    iget v8, v15, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    iget v9, v15, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v4 .. v13}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFFFF)V

    .line 626
    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v4}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 628
    new-instance v5, Lcom/smartisanos/launcher/view/Page$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v5, v0, v1}, Lcom/smartisanos/launcher/view/Page$1;-><init>(Lcom/smartisanos/launcher/view/Page;Lcom/smartisanos/launcher/view/Cell;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 642
    invoke-virtual/range {v17 .. v17}, Lcom/smartisanos/smengine/AnimationTimeLine;->start()V

    .line 646
    .end local v3    # "anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    .end local v4    # "animAlpha":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    .end local v15    # "currentColor":Lcom/smartisanos/smengine/math/Vector4f;
    .end local v16    # "currentScale":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v17    # "removeTimeLine":Lcom/smartisanos/smengine/AnimationTimeLine;
    .end local v18    # "removed":Lcom/smartisanos/launcher/view/Cell;
    .end local v19    # "result":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v20    # "t":Lcom/smartisanos/smengine/math/Transform;
    .end local v21    # "tinv":Lcom/smartisanos/smengine/math/Transform;
    .end local v22    # "worldPos":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v23    # "worldScale":Lcom/smartisanos/smengine/math/Vector3f;
    :goto_0
    return-void

    .line 644
    :cond_1
    invoke-super/range {p0 .. p1}, Lcom/smartisanos/launcher/view/BaseNode;->removeChild(Lcom/smartisanos/smengine/SceneNode;)I

    goto :goto_0
.end method

.method public removePageTitle()V
    .locals 2

    .prologue
    .line 1156
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Page;->mTitleAreaNode:Lcom/smartisanos/launcher/view/TitleView;

    if-eqz v0, :cond_0

    .line 1157
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Page;->mTitleAreaNode:Lcom/smartisanos/launcher/view/TitleView;

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/Page;->removeChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 1158
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Page;->mTitleAreaNode:Lcom/smartisanos/launcher/view/TitleView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/TitleView;->clear(Z)V

    .line 1160
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/Page;->mTitleAreaNode:Lcom/smartisanos/launcher/view/TitleView;

    .line 1161
    return-void
.end method

.method public resetCollisionListenerForPageCell()V
    .locals 4

    .prologue
    .line 2877
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->getAllPageCell()Ljava/util/ArrayList;

    move-result-object v0

    .line 2878
    .local v0, "allpcs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 2879
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/Cell;

    .line 2880
    .local v2, "pc":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Cell;->getCellPageStatus()Lcom/smartisanos/launcher/view/CellStatusForPage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/CellStatusForPage;->resetCollisionListenerForPageCell()V

    .line 2878
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2882
    .end local v2    # "pc":Lcom/smartisanos/launcher/view/Cell;
    :cond_0
    return-void
.end method

.method public setBatchBackgroundLayer(IZ)V
    .locals 3
    .param p1, "layer"    # I
    .param p2, "reset"    # Z

    .prologue
    .line 232
    iget v1, p0, Lcom/smartisanos/launcher/view/Page;->mSetBatchShadowLayerCount:I

    if-lez v1, :cond_0

    .line 233
    iget-object v1, p0, Lcom/smartisanos/launcher/view/Page;->mBatchBackground:Lcom/smartisanos/launcher/view/BatchBackground;

    invoke-virtual {v1, p1}, Lcom/smartisanos/launcher/view/BatchBackground;->setLayer(I)V

    .line 238
    :goto_0
    return-void

    .line 235
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/view/LayerManager;->getInstance()Lcom/smartisanos/launcher/view/LayerManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->getLayStatus()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/view/LayerManager;->getPageLayer(I)Lcom/smartisanos/launcher/view/LayerManager$PageLayer;

    move-result-object v0

    .line 236
    .local v0, "pageLayer":Lcom/smartisanos/launcher/view/LayerManager$PageLayer;
    iget-object v1, p0, Lcom/smartisanos/launcher/view/Page;->mBatchBackground:Lcom/smartisanos/launcher/view/BatchBackground;

    iget v2, v0, Lcom/smartisanos/launcher/view/LayerManager$PageLayer;->PAGE_IN_GAUSSIAN_BATCH_BACK_GROUND_LAYER:I

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/view/BatchBackground;->setLayer(I)V

    goto :goto_0
.end method

.method public setBatchShadowLayer(IZ)V
    .locals 3
    .param p1, "layer"    # I
    .param p2, "reset"    # Z

    .prologue
    .line 214
    if-eqz p2, :cond_1

    .line 215
    iget v1, p0, Lcom/smartisanos/launcher/view/Page;->mSetBatchShadowLayerCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/smartisanos/launcher/view/Page;->mSetBatchShadowLayerCount:I

    .line 219
    :goto_0
    iget-object v1, p0, Lcom/smartisanos/launcher/view/Page;->mBatchShadowRect:Lcom/smartisanos/launcher/view/BatchShadow;

    if-eqz v1, :cond_0

    .line 220
    iget v1, p0, Lcom/smartisanos/launcher/view/Page;->mSetBatchShadowLayerCount:I

    if-lez v1, :cond_2

    .line 222
    iget-object v1, p0, Lcom/smartisanos/launcher/view/Page;->mBatchShadowRect:Lcom/smartisanos/launcher/view/BatchShadow;

    invoke-virtual {v1, p1}, Lcom/smartisanos/launcher/view/BatchShadow;->setLayer(I)V

    .line 229
    :cond_0
    :goto_1
    return-void

    .line 217
    :cond_1
    iget v1, p0, Lcom/smartisanos/launcher/view/Page;->mSetBatchShadowLayerCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/smartisanos/launcher/view/Page;->mSetBatchShadowLayerCount:I

    goto :goto_0

    .line 225
    :cond_2
    invoke-static {}, Lcom/smartisanos/launcher/view/LayerManager;->getInstance()Lcom/smartisanos/launcher/view/LayerManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->getLayStatus()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/view/LayerManager;->getPageLayer(I)Lcom/smartisanos/launcher/view/LayerManager$PageLayer;

    move-result-object v0

    .line 226
    .local v0, "pageLayer":Lcom/smartisanos/launcher/view/LayerManager$PageLayer;
    iget-object v1, p0, Lcom/smartisanos/launcher/view/Page;->mBatchShadowRect:Lcom/smartisanos/launcher/view/BatchShadow;

    iget v2, v0, Lcom/smartisanos/launcher/view/LayerManager$PageLayer;->PAGE_BATCH_RENDER_OUTER_SHADOW:I

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/view/BatchShadow;->setLayer(I)V

    goto :goto_1
.end method

.method public setCellItemInfoLockStatus(Z)V
    .locals 7
    .param p1, "lock"    # Z

    .prologue
    .line 312
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->getAllNonEmptyCellList()Ljava/util/ArrayList;

    move-result-object v1

    .line 313
    .local v1, "cells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 314
    .local v5, "size":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 315
    .local v4, "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_0

    .line 316
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/Cell;

    .line 317
    .local v0, "cell":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->getItemInfo()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v6

    iget-object v3, v6, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    .line 318
    .local v3, "pkgName":Ljava/lang/String;
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 320
    .end local v0    # "cell":Lcom/smartisanos/launcher/view/Cell;
    .end local v3    # "pkgName":Ljava/lang/String;
    :cond_0
    if-lez v5, :cond_1

    .line 321
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v6

    invoke-virtual {v6, p1, v4}, Lcom/smartisanos/home/Launcher;->setPackageLockStatus(ZLjava/util/List;)V

    .line 323
    :cond_1
    return-void
.end method

.method public setDrawWithBatch(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 255
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/Page;->mDrawWithBatch:Z

    .line 256
    return-void
.end method

.method public setGaussianRectLayer(IZ)V
    .locals 1
    .param p1, "layer"    # I
    .param p2, "invoke"    # Z

    .prologue
    .line 241
    if-eqz p2, :cond_0

    .line 242
    iget v0, p0, Lcom/smartisanos/launcher/view/Page;->mSetGaussianRectLayerCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/smartisanos/launcher/view/Page;->mSetGaussianRectLayerCount:I

    .line 252
    :goto_0
    return-void

    .line 244
    :cond_0
    iget v0, p0, Lcom/smartisanos/launcher/view/Page;->mSetGaussianRectLayerCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/smartisanos/launcher/view/Page;->mSetGaussianRectLayerCount:I

    goto :goto_0
.end method

.method public setItemInfo(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/launcher/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 371
    .local p1, "ccList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    iget-object v2, p0, Lcom/smartisanos/launcher/view/Page;->mItemInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 372
    if-nez p1, :cond_1

    .line 381
    :cond_0
    return-void

    .line 375
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 376
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 377
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 378
    .local v0, "cc":Lcom/smartisanos/launcher/data/ItemInfo;
    iget-object v2, p0, Lcom/smartisanos/launcher/view/Page;->mItemInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setLayerStatus(I)V
    .locals 2
    .param p1, "status"    # I

    .prologue
    const/4 v1, 0x0

    .line 2999
    iget v0, p0, Lcom/smartisanos/launcher/view/Page;->mLayerStatus:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/smartisanos/launcher/view/Page;->mLayerChanged:I

    if-eqz v0, :cond_1

    .line 3000
    :cond_0
    iput v1, p0, Lcom/smartisanos/launcher/view/Page;->mLayerChanged:I

    .line 3001
    iput p1, p0, Lcom/smartisanos/launcher/view/Page;->mLayerStatus:I

    .line 3002
    invoke-virtual {p0, v1}, Lcom/smartisanos/launcher/view/Page;->updateLayer(I)V

    .line 3004
    :cond_1
    return-void
.end method

.method public setLayerStatus(II)V
    .locals 1
    .param p1, "status"    # I
    .param p2, "change"    # I

    .prologue
    .line 3007
    iget v0, p0, Lcom/smartisanos/launcher/view/Page;->mLayerStatus:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/smartisanos/launcher/view/Page;->mLayerChanged:I

    if-eq v0, p2, :cond_1

    .line 3008
    :cond_0
    iput p2, p0, Lcom/smartisanos/launcher/view/Page;->mLayerChanged:I

    .line 3009
    iput p1, p0, Lcom/smartisanos/launcher/view/Page;->mLayerStatus:I

    .line 3010
    invoke-virtual {p0, p2}, Lcom/smartisanos/launcher/view/Page;->updateLayer(I)V

    .line 3012
    :cond_1
    return-void
.end method

.method protected setPageMesh()V
    .locals 0

    .prologue
    .line 1525
    return-void
.end method

.method public setPageStatus(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 2046
    iput p1, p0, Lcom/smartisanos/launcher/view/Page;->mPageStatus:I

    .line 2047
    return-void
.end method

.method public setPageStatus(IZZZ)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "updateDB"    # Z
    .param p3, "handleLockHardKey"    # Z
    .param p4, "noAnim"    # Z

    .prologue
    .line 2050
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/smartisanos/launcher/view/Page;->setPageStatusWithAnim(IZZZ)Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 2051
    return-void
.end method

.method public setPageStatusWithAnim(IZZZ)Lcom/smartisanos/smengine/AnimationTimeLine;
    .locals 8
    .param p1, "status"    # I
    .param p2, "updateDB"    # Z
    .param p3, "handleLockHardKey"    # Z
    .param p4, "noAnim"    # Z

    .prologue
    const/4 v5, 0x1

    .line 2054
    const/4 v0, 0x0

    .line 2055
    .local v0, "anim":Lcom/smartisanos/smengine/AnimationTimeLine;
    iget v4, p0, Lcom/smartisanos/launcher/view/Page;->mPageStatus:I

    packed-switch v4, :pswitch_data_0

    .line 2088
    :cond_0
    :goto_0
    const/4 v2, 0x0

    .line 2089
    .local v2, "eyeStatusChanged":Z
    iget v4, p0, Lcom/smartisanos/launcher/view/Page;->mPageStatus:I

    if-eq v4, v5, :cond_1

    if-ne p1, v5, :cond_2

    .line 2091
    :cond_1
    const/4 v2, 0x1

    .line 2094
    :cond_2
    iput p1, p0, Lcom/smartisanos/launcher/view/Page;->mPageStatus:I

    .line 2095
    if-eqz p2, :cond_5

    .line 2096
    if-eqz v2, :cond_3

    .line 2097
    invoke-static {}, Lcom/smartisanos/launcher/data/Utils;->sendInvisiblePageIntent()V

    .line 2100
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2101
    .local v1, "data":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 2102
    .local v3, "values":Landroid/content/ContentValues;
    const-string v4, "pageIndex"

    iget v5, p0, Lcom/smartisanos/launcher/view/Page;->pageIndex:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2103
    const-string v4, "status"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2104
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2105
    sget-boolean v4, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v4, :cond_4

    sget-object v4, Lcom/smartisanos/launcher/view/Page;->log:Lcom/smartisanos/launcher/LOG;

    const-string v5, "DEBUG"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "update page ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/smartisanos/launcher/view/Page;->pageIndex:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] status to ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 2106
    :cond_4
    sget-object v4, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->EVENT_UPDATE_PAGE:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    invoke-static {v4, v1}, Lcom/smartisanos/launcher/data/DatabaseUpdater;->updateDatabase(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;Ljava/util/List;)V

    .line 2108
    .end local v1    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v3    # "values":Landroid/content/ContentValues;
    :cond_5
    if-eqz p4, :cond_6

    if-eqz v0, :cond_6

    .line 2109
    const/4 v0, 0x0

    .line 2111
    .end local v0    # "anim":Lcom/smartisanos/smengine/AnimationTimeLine;
    :cond_6
    return-object v0

    .line 2057
    .end local v2    # "eyeStatusChanged":Z
    .restart local v0    # "anim":Lcom/smartisanos/smengine/AnimationTimeLine;
    :pswitch_0
    if-ne v5, p1, :cond_7

    .line 2058
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->clearCellSelected()V

    .line 2059
    invoke-direct {p0, p3, p4}, Lcom/smartisanos/launcher/view/Page;->updatePageCoverFromEyeIcon(ZZ)Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v0

    .line 2060
    if-eqz p4, :cond_0

    if-eqz v0, :cond_0

    .line 2061
    invoke-virtual {v0}, Lcom/smartisanos/smengine/AnimationTimeLine;->forceFinish()V

    goto :goto_0

    .line 2063
    :cond_7
    const/4 v4, 0x2

    if-ne v4, p1, :cond_0

    goto/16 :goto_0

    .line 2073
    :pswitch_1
    invoke-direct {p0, p3, p4}, Lcom/smartisanos/launcher/view/Page;->updatePageCoverFromEyeIcon(ZZ)Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v0

    .line 2074
    if-eqz p4, :cond_0

    if-eqz v0, :cond_0

    .line 2075
    invoke-virtual {v0}, Lcom/smartisanos/smengine/AnimationTimeLine;->forceFinish()V

    goto/16 :goto_0

    .line 2055
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setSceneNodeForceRender(Z)V
    .locals 4
    .param p1, "set"    # Z

    .prologue
    .line 3090
    invoke-super {p0, p1}, Lcom/smartisanos/launcher/view/BaseNode;->setSceneNodeForceRender(Z)V

    .line 3092
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->getAllPageCell()Ljava/util/ArrayList;

    move-result-object v0

    .line 3093
    .local v0, "allcells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 3094
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/Cell;

    .line 3095
    .local v1, "c":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v1, p1}, Lcom/smartisanos/launcher/view/Cell;->setSceneNodeForceRender(Z)V

    .line 3093
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3097
    .end local v1    # "c":Lcom/smartisanos/launcher/view/Cell;
    :cond_0
    return-void
.end method

.method public setScissorForFolder()V
    .locals 12

    .prologue
    const v9, 0x3f4ccccd    # 0.8f

    const/4 v7, 0x0

    const/4 v11, 0x1

    const/high16 v8, 0x40000000    # 2.0f

    .line 3243
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v2

    .line 3244
    .local v2, "rs":Lcom/smartisanos/smengine/RenderState;
    sget v6, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static {v6}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v1

    .line 3245
    .local v1, "prop":Lcom/smartisanos/launcher/data/LayoutProperty;
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v0

    .line 3246
    .local v0, "pos":Lcom/smartisanos/smengine/math/Vector3f;
    iget v6, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->page_width:F

    div-float/2addr v6, v8

    add-float v4, v7, v6

    .line 3247
    .local v4, "x":F
    iget v6, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    div-float/2addr v6, v8

    add-float/2addr v6, v7

    iget v7, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_height:F

    add-float v5, v6, v7

    .line 3248
    .local v5, "y":F
    new-instance v3, Lcom/smartisanos/smengine/math/Vector4f;

    iget v6, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->page_width:F

    div-float/2addr v6, v8

    mul-float/2addr v6, v9

    sub-float v6, v4, v6

    float-to-int v6, v6

    int-to-float v6, v6

    iget v7, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    div-float/2addr v7, v8

    sub-float v7, v5, v7

    float-to-int v7, v7

    int-to-float v7, v7

    iget v8, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->page_width:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    int-to-float v8, v8

    iget v9, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    float-to-int v9, v9

    int-to-float v9, v9

    invoke-direct {v3, v6, v7, v8, v9}, Lcom/smartisanos/smengine/math/Vector4f;-><init>(FFFF)V

    .line 3252
    .local v3, "sci":Lcom/smartisanos/smengine/math/Vector4f;
    iget v6, v3, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    float-to-int v6, v6

    iget v7, v3, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    float-to-int v7, v7

    iget v8, v3, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    float-to-int v8, v8

    iget v9, v3, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    float-to-int v9, v9

    invoke-virtual {v2, v6, v7, v8, v9}, Lcom/smartisanos/smengine/RenderState;->setScissor(IIII)V

    .line 3253
    invoke-virtual {v2, v11}, Lcom/smartisanos/smengine/RenderState;->setIsScissor(Z)V

    .line 3254
    iget-object v6, p0, Lcom/smartisanos/launcher/view/Page;->mBatchBackground:Lcom/smartisanos/launcher/view/BatchBackground;

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/BatchBackground;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v6

    iget v7, v3, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    float-to-int v7, v7

    iget v8, v3, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    float-to-int v8, v8

    iget v9, v3, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    float-to-int v9, v9

    iget v10, v3, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    float-to-int v10, v10

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/smartisanos/smengine/RenderState;->setScissor(IIII)V

    .line 3255
    iget-object v6, p0, Lcom/smartisanos/launcher/view/Page;->mBatchBackground:Lcom/smartisanos/launcher/view/BatchBackground;

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/BatchBackground;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v6

    invoke-virtual {v6, v11}, Lcom/smartisanos/smengine/RenderState;->setIsScissor(Z)V

    .line 3256
    iget-object v6, p0, Lcom/smartisanos/launcher/view/Page;->mBatchShadowRect:Lcom/smartisanos/launcher/view/BatchShadow;

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/BatchShadow;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v6

    iget v7, v3, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    float-to-int v7, v7

    iget v8, v3, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    float-to-int v8, v8

    iget v9, v3, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    float-to-int v9, v9

    iget v10, v3, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    float-to-int v10, v10

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/smartisanos/smengine/RenderState;->setScissor(IIII)V

    .line 3257
    iget-object v6, p0, Lcom/smartisanos/launcher/view/Page;->mBatchShadowRect:Lcom/smartisanos/launcher/view/BatchShadow;

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/BatchShadow;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v6

    invoke-virtual {v6, v11}, Lcom/smartisanos/smengine/RenderState;->setIsScissor(Z)V

    .line 3258
    return-void
.end method

.method public setShowCellIntoPageEditModeCover()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 560
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->getAllPageCell()Ljava/util/ArrayList;

    move-result-object v0

    .line 561
    .local v0, "allpc":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/Cell;

    .line 562
    .local v1, "pc":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Cell;->getActiveIconView()Lcom/smartisanos/launcher/view/ActiveIconView;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 563
    invoke-virtual {v1, v4}, Lcom/smartisanos/launcher/view/Cell;->setShowCellIntoPageEditModeAnimationCover(Z)V

    .line 564
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/smartisanos/launcher/view/Cell;->setShowCellIntoPageEditModeCover(Z)V

    goto :goto_0

    .line 567
    :cond_0
    invoke-virtual {v1, v4}, Lcom/smartisanos/launcher/view/Cell;->setShowCellIntoPageEditModeCover(Z)V

    goto :goto_0

    .line 570
    .end local v1    # "pc":Lcom/smartisanos/launcher/view/Cell;
    :cond_1
    return-void
.end method

.method public setTitleEmpty()V
    .locals 2

    .prologue
    .line 1190
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Page;->mTitleAreaNode:Lcom/smartisanos/launcher/view/TitleView;

    if-nez v0, :cond_0

    .line 1195
    :goto_0
    return-void

    .line 1193
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Page;->mTitleAreaNode:Lcom/smartisanos/launcher/view/TitleView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/TitleView;->setText(Ljava/lang/String;)V

    .line 1194
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Page;->mTitleAreaNode:Lcom/smartisanos/launcher/view/TitleView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/TitleView;->setDisplayIconAndText(Z)V

    goto :goto_0
.end method

.method public setTitleName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/smartisanos/launcher/view/Page;->mTitleName:Ljava/lang/String;

    .line 157
    return-void
.end method

.method public setZ(F)V
    .locals 0
    .param p1, "z"    # F

    .prologue
    .line 383
    iput p1, p0, Lcom/smartisanos/launcher/view/Page;->mZ:F

    .line 384
    return-void
.end method

.method public showAppTextAndFlag(Lcom/smartisanos/smengine/AnimationTimeLine;FF)V
    .locals 4
    .param p1, "al"    # Lcom/smartisanos/smengine/AnimationTimeLine;
    .param p2, "appNametime"    # F
    .param p3, "flagTime"    # F

    .prologue
    .line 1457
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 1458
    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/Page;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v2

    .line 1459
    .local v2, "sn":Lcom/smartisanos/smengine/SceneNode;
    invoke-static {v2}, Lcom/smartisanos/launcher/view/Cell;->sIsInstanceFromCell(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, v2

    .line 1460
    check-cast v1, Lcom/smartisanos/launcher/view/Cell;

    .line 1461
    .local v1, "pc":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v1, p1, p2, p3}, Lcom/smartisanos/launcher/view/Cell;->showAppNameAndFlagAnimation(Lcom/smartisanos/smengine/AnimationTimeLine;FF)V

    .line 1457
    .end local v1    # "pc":Lcom/smartisanos/launcher/view/Cell;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1464
    .end local v2    # "sn":Lcom/smartisanos/smengine/SceneNode;
    :cond_1
    return-void
.end method

.method public showCanDropCover()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v10, 0x1

    .line 2315
    iget-object v7, p0, Lcom/smartisanos/launcher/view/Page;->mMultiSelectedPageCanDropCoverRect:Lcom/smartisanos/smengine/RectNode;

    if-eqz v7, :cond_0

    .line 2345
    :goto_0
    return-void

    .line 2318
    :cond_0
    invoke-direct {p0, v10}, Lcom/smartisanos/launcher/view/Page;->calculatePageSizeAndPos(Z)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v6

    .line 2319
    .local v6, "size":Lcom/smartisanos/smengine/math/Vector3f;
    sget v7, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    invoke-static {v7}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v3

    .line 2322
    .local v3, "prop":Lcom/smartisanos/launcher/data/LayoutProperty;
    iget v7, v6, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v8, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->page_green_cover_image_width:F

    iget v9, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->page_green_cover_image_content_width:F

    div-float/2addr v8, v9

    mul-float/2addr v7, v8

    iput v7, v6, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 2323
    iget v7, v6, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v8, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->page_green_cover_image_height:F

    iget v9, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->page_green_cover_image_content_height:F

    div-float/2addr v8, v9

    mul-float/2addr v7, v8

    iput v7, v6, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 2324
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_CanDropCell"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2326
    .local v1, "name":Ljava/lang/String;
    iget v7, v6, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v8, v6, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    invoke-static {v1, v7, v8, v12, v10}, Lcom/smartisanos/smengine/RectNode;->createSimpleTextureRect(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/RectNode;

    move-result-object v4

    .line 2327
    .local v4, "rect":Lcom/smartisanos/smengine/RectNode;
    const-string v7, "TextureModularColorMaterial"

    invoke-static {v7}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v0

    .line 2328
    .local v0, "m":Lcom/smartisanos/smengine/mymaterial/Material;
    invoke-virtual {v4, v0}, Lcom/smartisanos/smengine/RectNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 2329
    invoke-virtual {v4}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v5

    .line 2330
    .local v5, "rs":Lcom/smartisanos/smengine/RenderState;
    invoke-virtual {v4, v11, v11, v11, v11}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 2331
    invoke-virtual {v5, v10}, Lcom/smartisanos/smengine/RenderState;->setIsEnableBlend(Z)V

    .line 2332
    const/4 v7, 0x2

    invoke-virtual {v5, v7}, Lcom/smartisanos/smengine/RenderState;->setBlendMode(I)V

    .line 2333
    invoke-virtual {v5, v10}, Lcom/smartisanos/smengine/RenderState;->setIsPolygonOffset(Z)V

    .line 2334
    const/high16 v7, -0x40800000    # -1.0f

    const/high16 v8, -0x40000000    # -2.0f

    invoke-virtual {v5, v7, v8}, Lcom/smartisanos/smengine/RenderState;->setPolygonOffsetFactorUnits(FF)V

    .line 2335
    invoke-virtual {v5, v10}, Lcom/smartisanos/smengine/RenderState;->setIsEnableDepthTest(Z)V

    .line 2336
    const-string v7, "green_overlay.png"

    invoke-static {v7, v10}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/smartisanos/smengine/RectNode;->setImageName(Ljava/lang/String;)V

    .line 2337
    invoke-virtual {v4, v10}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    .line 2338
    iput-object v4, p0, Lcom/smartisanos/launcher/view/Page;->mMultiSelectedPageCanDropCoverRect:Lcom/smartisanos/smengine/RectNode;

    .line 2339
    invoke-static {}, Lcom/smartisanos/launcher/view/LayerManager;->getInstance()Lcom/smartisanos/launcher/view/LayerManager;

    move-result-object v7

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->getLayStatus()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/smartisanos/launcher/view/LayerManager;->getPageLayer(I)Lcom/smartisanos/launcher/view/LayerManager$PageLayer;

    move-result-object v2

    .line 2340
    .local v2, "pageLayer":Lcom/smartisanos/launcher/view/LayerManager$PageLayer;
    iget-object v7, p0, Lcom/smartisanos/launcher/view/Page;->mMultiSelectedPageCanDropCoverRect:Lcom/smartisanos/smengine/RectNode;

    iget v8, v2, Lcom/smartisanos/launcher/view/LayerManager$PageLayer;->PAGE_IN_MULTI_SELECT_NODE_CAN_DROP_COVER_LAYER:I

    invoke-virtual {v7, v8}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 2341
    iget-object v7, p0, Lcom/smartisanos/launcher/view/Page;->mMultiSelectedPageCanDropCoverRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {p0, v7}, Lcom/smartisanos/launcher/view/Page;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 2342
    iget-object v7, p0, Lcom/smartisanos/launcher/view/Page;->mMultiSelectedPageCanDropCoverRect:Lcom/smartisanos/smengine/RectNode;

    iget v8, v6, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-virtual {v7, v12, v8, v12}, Lcom/smartisanos/smengine/RectNode;->setTranslate(FFF)V

    .line 2343
    iget-object v7, p0, Lcom/smartisanos/launcher/view/Page;->mMultiSelectedPageCanDropCoverRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v7}, Lcom/smartisanos/smengine/RectNode;->updateGeometricState()V

    .line 2344
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->updateGeometricState()V

    goto/16 :goto_0
.end method

.method public showCanNotDropCover()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v10, 0x1

    .line 2279
    iget-object v7, p0, Lcom/smartisanos/launcher/view/Page;->mMultiSelectedPageCanNotDropCoverRect:Lcom/smartisanos/smengine/RectNode;

    if-eqz v7, :cond_0

    .line 2309
    :goto_0
    return-void

    .line 2282
    :cond_0
    invoke-direct {p0, v10}, Lcom/smartisanos/launcher/view/Page;->calculatePageSizeAndPos(Z)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v6

    .line 2283
    .local v6, "size":Lcom/smartisanos/smengine/math/Vector3f;
    sget v7, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    invoke-static {v7}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v3

    .line 2286
    .local v3, "prop":Lcom/smartisanos/launcher/data/LayoutProperty;
    iget v7, v6, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v8, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->page_green_cover_image_width:F

    iget v9, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->page_green_cover_image_content_width:F

    div-float/2addr v8, v9

    mul-float/2addr v7, v8

    iput v7, v6, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 2287
    iget v7, v6, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v8, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->page_green_cover_image_height:F

    iget v9, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->page_green_cover_image_content_height:F

    div-float/2addr v8, v9

    mul-float/2addr v7, v8

    iput v7, v6, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 2288
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_CanNotDropCell"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2289
    .local v1, "name":Ljava/lang/String;
    iget v7, v6, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v8, v6, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    invoke-static {v1, v7, v8, v12, v10}, Lcom/smartisanos/smengine/RectNode;->createSimpleTextureRect(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/RectNode;

    move-result-object v4

    .line 2290
    .local v4, "rect":Lcom/smartisanos/smengine/RectNode;
    const-string v7, "TextureModularColorMaterial"

    invoke-static {v7}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v0

    .line 2291
    .local v0, "m":Lcom/smartisanos/smengine/mymaterial/Material;
    invoke-virtual {v4, v0}, Lcom/smartisanos/smengine/RectNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 2292
    invoke-virtual {v4}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v5

    .line 2293
    .local v5, "rs":Lcom/smartisanos/smengine/RenderState;
    invoke-virtual {v4, v11, v11, v11, v11}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 2295
    invoke-virtual {v5, v10}, Lcom/smartisanos/smengine/RenderState;->setIsEnableBlend(Z)V

    .line 2296
    const/4 v7, 0x2

    invoke-virtual {v5, v7}, Lcom/smartisanos/smengine/RenderState;->setBlendMode(I)V

    .line 2297
    invoke-virtual {v5, v10}, Lcom/smartisanos/smengine/RenderState;->setIsPolygonOffset(Z)V

    .line 2298
    const/high16 v7, -0x40800000    # -1.0f

    const/high16 v8, -0x40000000    # -2.0f

    invoke-virtual {v5, v7, v8}, Lcom/smartisanos/smengine/RenderState;->setPolygonOffsetFactorUnits(FF)V

    .line 2299
    invoke-virtual {v5, v10}, Lcom/smartisanos/smengine/RenderState;->setIsEnableDepthTest(Z)V

    .line 2300
    const-string v7, "red_overlay.png"

    invoke-static {v7, v10}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/smartisanos/smengine/RectNode;->setImageName(Ljava/lang/String;)V

    .line 2301
    invoke-virtual {v4, v10}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    .line 2302
    iput-object v4, p0, Lcom/smartisanos/launcher/view/Page;->mMultiSelectedPageCanNotDropCoverRect:Lcom/smartisanos/smengine/RectNode;

    .line 2303
    invoke-static {}, Lcom/smartisanos/launcher/view/LayerManager;->getInstance()Lcom/smartisanos/launcher/view/LayerManager;

    move-result-object v7

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->getLayStatus()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/smartisanos/launcher/view/LayerManager;->getPageLayer(I)Lcom/smartisanos/launcher/view/LayerManager$PageLayer;

    move-result-object v2

    .line 2304
    .local v2, "pageLayer":Lcom/smartisanos/launcher/view/LayerManager$PageLayer;
    iget-object v7, p0, Lcom/smartisanos/launcher/view/Page;->mMultiSelectedPageCanNotDropCoverRect:Lcom/smartisanos/smengine/RectNode;

    iget v8, v2, Lcom/smartisanos/launcher/view/LayerManager$PageLayer;->PAGE_IN_MULTI_SELECT_NODE_CAN_NOT_DROP_COVER_LAYER:I

    invoke-virtual {v7, v8}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 2305
    iget-object v7, p0, Lcom/smartisanos/launcher/view/Page;->mMultiSelectedPageCanNotDropCoverRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {p0, v7}, Lcom/smartisanos/launcher/view/Page;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 2306
    iget-object v7, p0, Lcom/smartisanos/launcher/view/Page;->mMultiSelectedPageCanNotDropCoverRect:Lcom/smartisanos/smengine/RectNode;

    iget v8, v6, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-virtual {v7, v12, v8, v12}, Lcom/smartisanos/smengine/RectNode;->setTranslate(FFF)V

    .line 2307
    iget-object v7, p0, Lcom/smartisanos/launcher/view/Page;->mMultiSelectedPageCanNotDropCoverRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v7}, Lcom/smartisanos/smengine/RectNode;->updateGeometricState()V

    .line 2308
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->updateGeometricState()V

    goto/16 :goto_0
.end method

.method public showLongPressGaussianRect(Lcom/smartisanos/smengine/AnimationTimeLine;FF)V
    .locals 24
    .param p1, "timeline"    # Lcom/smartisanos/smengine/AnimationTimeLine;
    .param p2, "duration"    # F
    .param p3, "delay"    # F

    .prologue
    .line 2596
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/Page;->mLongPressGaussianRect:Lcom/smartisanos/smengine/RectNode;

    if-eqz v3, :cond_0

    .line 2699
    :goto_0
    return-void

    .line 2600
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/Page;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_longPressGaussian"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 2601
    .local v19, "name":Ljava/lang/String;
    sget v3, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    invoke-static {v3}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v22

    .line 2602
    .local v22, "prop":Lcom/smartisanos/launcher/data/LayoutProperty;
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/smartisanos/launcher/view/Page;->calculatePageSizeAndPos(Z)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v23

    .line 2603
    .local v23, "size":Lcom/smartisanos/smengine/math/Vector3f;
    move-object/from16 v0, v23

    iget v3, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move-object/from16 v0, v23

    iget v4, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, v19

    invoke-static {v0, v3, v4, v5, v6}, Lcom/smartisanos/smengine/RectNode;->createSimpleTextureRect(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/RectNode;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/smartisanos/launcher/view/Page;->mLongPressGaussianRect:Lcom/smartisanos/smengine/RectNode;

    .line 2604
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/Page;->mLongPressGaussianRect:Lcom/smartisanos/smengine/RectNode;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    .line 2605
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/Page;->mLongPressGaussianRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/RenderState;->setIsEnableBlend(Z)V

    .line 2606
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/Page;->mLongPressGaussianRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/RenderState;->setBlendMode(I)V

    .line 2607
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/Page;->mLongPressGaussianRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/RenderState;->setIsPolygonOffset(Z)V

    .line 2608
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/Page;->mLongPressGaussianRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v3

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, -0x40000000    # -2.0f

    invoke-virtual {v3, v4, v5}, Lcom/smartisanos/smengine/RenderState;->setPolygonOffsetFactorUnits(FF)V

    .line 2609
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/Page;->mLongPressGaussianRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/RenderState;->setIsEnableDepthTest(Z)V

    .line 2610
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/Page;->mLongPressGaussianRect:Lcom/smartisanos/smengine/RectNode;

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 2611
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/Page;->mLongPressGaussianRect:Lcom/smartisanos/smengine/RectNode;

    const/4 v4, 0x1

    const-string v5, "page_mask.png"

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/smartisanos/smengine/RectNode;->setTextureName(ILjava/lang/String;)V

    .line 2612
    invoke-static {}, Lcom/smartisanos/launcher/view/LayerManager;->getInstance()Lcom/smartisanos/launcher/view/LayerManager;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/view/LayerManager;->getPageLayer(I)Lcom/smartisanos/launcher/view/LayerManager$PageLayer;

    move-result-object v20

    .line 2613
    .local v20, "pageLayer":Lcom/smartisanos/launcher/view/LayerManager$PageLayer;
    if-nez p1, :cond_5

    .line 2614
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/Page;->mLongPressGaussianRect:Lcom/smartisanos/smengine/RectNode;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 2618
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/Page;->mLongPressGaussianRect:Lcom/smartisanos/smengine/RectNode;

    const/4 v4, 0x0

    move-object/from16 v0, v23

    iget v5, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/smartisanos/smengine/RectNode;->setTranslate(FFF)V

    .line 2620
    const/16 v12, 0xf

    .line 2621
    .local v12, "blurSize":I
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 2622
    .local v21, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v12}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2623
    const-string v3, "GaussianBlurEffectMaterial"

    move-object/from16 v0, v21

    invoke-static {v3, v12, v0}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;ILjava/util/ArrayList;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v14

    check-cast v14, Lcom/smartisanos/smengine/mymaterial/GaussianBlurEffectMaterial;

    .line 2625
    .local v14, "m":Lcom/smartisanos/smengine/mymaterial/GaussianBlurEffectMaterial;
    const-string v3, "TextureMaskModularMaterial"

    invoke-static {v3}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v17

    .line 2626
    .local v17, "ml":Lcom/smartisanos/smengine/mymaterial/Material;
    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/smartisanos/smengine/mymaterial/GaussianBlurEffectMaterial;->setLastMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 2627
    move-object/from16 v0, v22

    iget v3, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_width:F

    const/high16 v4, 0x40900000    # 4.5f

    div-float/2addr v3, v4

    float-to-int v3, v3

    move-object/from16 v0, v22

    iget v4, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    const/high16 v5, 0x40900000    # 4.5f

    div-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v14, v3, v4}, Lcom/smartisanos/smengine/mymaterial/GaussianBlurEffectMaterial;->setSize(II)V

    .line 2628
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/Page;->mLongPressGaussianRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v3, v14}, Lcom/smartisanos/smengine/RectNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 2629
    const-string v16, "pageBackMask_long.press.blur"

    .line 2630
    .local v16, "meshName":Ljava/lang/String;
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/smengine/World;->getMeshManager()Lcom/smartisanos/smengine/MeshManager;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/smartisanos/smengine/MeshManager;->getMesh(Ljava/lang/String;)Lcom/smartisanos/smengine/Mesh;

    move-result-object v15

    .line 2631
    .local v15, "mesh":Lcom/smartisanos/smengine/Mesh;
    if-nez v15, :cond_1

    .line 2632
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/Page;->mLongPressGaussianRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/RectNode;->getMesh()Lcom/smartisanos/smengine/Mesh;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/smengine/Mesh;->clone()Lcom/smartisanos/smengine/Mesh;

    move-result-object v15

    .line 2633
    const/4 v3, 0x3

    const/16 v4, 0x8

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-virtual {v15, v3, v4}, Lcom/smartisanos/smengine/Mesh;->setTexVertexArray(I[F)V

    .line 2634
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/smengine/World;->getMeshManager()Lcom/smartisanos/smengine/MeshManager;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0, v15}, Lcom/smartisanos/smengine/MeshManager;->addMesh(Ljava/lang/String;Lcom/smartisanos/smengine/Mesh;)Lcom/smartisanos/smengine/Mesh;

    .line 2636
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/Page;->mLongPressGaussianRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v3, v15}, Lcom/smartisanos/smengine/RectNode;->setMesh(Lcom/smartisanos/smengine/Mesh;)V

    .line 2638
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/Page;->mLongPressGaussianRect:Lcom/smartisanos/smengine/RectNode;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/smartisanos/launcher/view/Page;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 2639
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/Page;->mLongPressGaussianRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/RectNode;->updateGeometricState()V

    .line 2640
    if-eqz p1, :cond_4

    .line 2641
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2642
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/Page;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_longGaussianAlpha"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v23

    iget v4, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move-object/from16 v0, v23

    iget v5, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 2641
    invoke-static {v3, v4, v5, v6, v7}, Lcom/smartisanos/smengine/RectNode;->createSimpleTextureRect(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/RectNode;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/smartisanos/launcher/view/Page;->mLongPressAlphaRect:Lcom/smartisanos/smengine/RectNode;

    .line 2643
    const-string v3, "TextureMaskModularMaterial"

    invoke-static {v3}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v18

    .line 2644
    .local v18, "mt":Lcom/smartisanos/smengine/mymaterial/Material;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/Page;->mLongPressAlphaRect:Lcom/smartisanos/smengine/RectNode;

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/smartisanos/smengine/RectNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 2645
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/Page;->mLongPressAlphaRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/RenderState;->setIsPolygonOffset(Z)V

    .line 2646
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/Page;->mLongPressAlphaRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v3

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, -0x40000000    # -2.0f

    invoke-virtual {v3, v4, v5}, Lcom/smartisanos/smengine/RenderState;->setPolygonOffsetFactorUnits(FF)V

    .line 2647
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/Page;->mLongPressAlphaRect:Lcom/smartisanos/smengine/RectNode;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    .line 2648
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/Page;->mLongPressAlphaRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/RenderState;->setIsEnableBlend(Z)V

    .line 2649
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/Page;->mLongPressAlphaRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/RenderState;->setBlendMode(I)V

    .line 2650
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/Page;->mLongPressAlphaRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/RenderState;->setIsEnableDepthTest(Z)V

    .line 2651
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/Page;->mLongPressAlphaRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/RenderState;->setIsUseVBO(Z)V

    .line 2652
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/Page;->mLongPressAlphaRect:Lcom/smartisanos/smengine/RectNode;

    move-object/from16 v0, v20

    iget v4, v0, Lcom/smartisanos/launcher/view/LayerManager$PageLayer;->PAGE_IN_SWITCH_PAGE_MODE_ALPHA_LAYER:I

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 2653
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/Page;->mLongPressAlphaRect:Lcom/smartisanos/smengine/RectNode;

    const/4 v4, 0x0

    const-string v5, "t_blur_background"

    invoke-virtual {v3, v4, v5}, Lcom/smartisanos/smengine/RectNode;->setTextureName(ILjava/lang/String;)V

    .line 2654
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/Page;->mLongPressAlphaRect:Lcom/smartisanos/smengine/RectNode;

    const/4 v4, 0x1

    const-string v5, "page_mask.png"

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/smartisanos/smengine/RectNode;->setTextureName(ILjava/lang/String;)V

    .line 2655
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/Page;->mLongPressAlphaRect:Lcom/smartisanos/smengine/RectNode;

    const/4 v4, 0x0

    move-object/from16 v0, v23

    iget v5, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/smartisanos/smengine/RectNode;->setTranslate(FFF)V

    .line 2656
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/Page;->mLongPressAlphaRect:Lcom/smartisanos/smengine/RectNode;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/smartisanos/launcher/view/Page;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 2657
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/Page;->mLongPressAlphaRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/RectNode;->updateGeometricState()V

    .line 2658
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/Page;->mLongAlphaMeshName:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 2659
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pageAlphaMask_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/smartisanos/launcher/view/Page;->pageIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "long.press.blur"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/smartisanos/launcher/view/Page;->mLongAlphaMeshName:Ljava/lang/String;

    .line 2661
    :cond_2
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/smengine/World;->getMeshManager()Lcom/smartisanos/smengine/MeshManager;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/smartisanos/smengine/MeshManager;->getMesh(Ljava/lang/String;)Lcom/smartisanos/smengine/Mesh;

    move-result-object v13

    .line 2662
    .local v13, "gmesh":Lcom/smartisanos/smengine/Mesh;
    if-nez v13, :cond_3

    .line 2663
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/Page;->mLongPressAlphaRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/RectNode;->getMesh()Lcom/smartisanos/smengine/Mesh;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/smengine/Mesh;->clone()Lcom/smartisanos/smengine/Mesh;

    move-result-object v13

    .line 2664
    const/4 v3, 0x3

    const/16 v4, 0x8

    new-array v4, v4, [F

    fill-array-data v4, :array_1

    invoke-virtual {v13, v3, v4}, Lcom/smartisanos/smengine/Mesh;->setTexVertexArray(I[F)V

    .line 2665
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/smengine/World;->getMeshManager()Lcom/smartisanos/smengine/MeshManager;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0, v13}, Lcom/smartisanos/smengine/MeshManager;->addMesh(Ljava/lang/String;Lcom/smartisanos/smengine/Mesh;)Lcom/smartisanos/smengine/Mesh;

    .line 2667
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/Page;->mLongPressAlphaRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v3, v13}, Lcom/smartisanos/smengine/RectNode;->setMesh(Lcom/smartisanos/smengine/Mesh;)V

    .line 2668
    new-instance v2, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/Page;->mLongPressAlphaRect:Lcom/smartisanos/smengine/RectNode;

    invoke-direct {v2, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 2669
    .local v2, "guassianAlpha":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    move/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 2670
    const/16 v3, 0xe

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 2671
    const/4 v3, 0x3

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v2 .. v11}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFFFF)V

    .line 2672
    new-instance v3, Lcom/smartisanos/launcher/view/Page$17;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/smartisanos/launcher/view/Page$17;-><init>(Lcom/smartisanos/launcher/view/Page;)V

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 2677
    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 2697
    .end local v2    # "guassianAlpha":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    .end local v13    # "gmesh":Lcom/smartisanos/smengine/Mesh;
    .end local v18    # "mt":Lcom/smartisanos/smengine/mymaterial/Material;
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/Page;->updateGeometricState()V

    .line 2698
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/Page;->updateGaussianUV()V

    goto/16 :goto_0

    .line 2616
    .end local v12    # "blurSize":I
    .end local v14    # "m":Lcom/smartisanos/smengine/mymaterial/GaussianBlurEffectMaterial;
    .end local v15    # "mesh":Lcom/smartisanos/smengine/Mesh;
    .end local v16    # "meshName":Ljava/lang/String;
    .end local v17    # "ml":Lcom/smartisanos/smengine/mymaterial/Material;
    .end local v21    # "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/Page;->mLongPressGaussianRect:Lcom/smartisanos/smengine/RectNode;

    move-object/from16 v0, v20

    iget v4, v0, Lcom/smartisanos/launcher/view/LayerManager$PageLayer;->PAGE_IN_SWITCH_PAGE_MODE_GAUSSIAN_LAYER:I

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    goto/16 :goto_1

    .line 2633
    :array_0
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 2664
    :array_1
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public showOrHideGaussianBatchBackground(Z)V
    .locals 0
    .param p1, "showOrHide"    # Z

    .prologue
    .line 3104
    return-void
.end method

.method public showPageCoverForEye()V
    .locals 1

    .prologue
    .line 1295
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Page;->mEyePageCoverImage:Lcom/smartisanos/smengine/RectNode;

    if-nez v0, :cond_0

    .line 1296
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->createPageCoverForEye()V

    .line 1299
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Page;->mEyePageCoverImage:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->updateGeometricState()V

    .line 1300
    const/4 v0, 0x1

    iput v0, p0, Lcom/smartisanos/launcher/view/Page;->mPageStatus:I

    .line 1302
    :cond_0
    return-void
.end method

.method public showPageNoSpaceText()V
    .locals 18

    .prologue
    .line 2393
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/smartisanos/launcher/view/Page;->mCurrentPageNoSpaceRect:Lcom/smartisanos/launcher/view/TextView;

    if-eqz v1, :cond_0

    .line 2436
    :goto_0
    return-void

    .line 2396
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v1

    sget v2, Lcom/smartisanos/launcher/ResIds$string;->insufficient_space:I

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/view/MainView;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2397
    .local v3, "s":Ljava/lang/String;
    sget v1, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static {v1}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v1

    iget v1, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->page_width:F

    float-to-int v6, v1

    .line 2398
    .local v6, "cellWidth":I
    sget v1, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static {v1}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v1

    iget v1, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    float-to-int v7, v1

    .line 2399
    .local v7, "cellHeight":I
    new-instance v1, Lcom/smartisanos/launcher/view/TextView;

    const-string v2, "Multi-SelectMode-NoSpace"

    const/4 v4, 0x0

    sget-object v5, Lcom/smartisanos/launcher/view/TextView;->sEnoughSpacePaint:Landroid/graphics/Paint;

    invoke-direct/range {v1 .. v7}, Lcom/smartisanos/launcher/view/TextView;-><init>(Ljava/lang/String;Ljava/lang/String;FLandroid/graphics/Paint;II)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/smartisanos/launcher/view/Page;->mCurrentPageNoSpaceRect:Lcom/smartisanos/launcher/view/TextView;

    .line 2404
    sget v1, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    invoke-static {v1}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v12

    .line 2406
    .local v12, "prop":Lcom/smartisanos/launcher/data/LayoutProperty;
    const/high16 v8, -0x40800000    # -1.0f

    .line 2407
    .local v8, "deltaY":F
    sget v1, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    sget v2, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    if-ne v1, v2, :cond_1

    .line 2408
    iget v1, v12, Lcom/smartisanos/launcher/data/LayoutProperty;->page_title_height:F

    iget v2, v12, Lcom/smartisanos/launcher/data/LayoutProperty;->title_page_spacing:F

    add-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v8, v1, v2

    .line 2411
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/Page;->getScale()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v1

    iget v15, v1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 2412
    .local v15, "scaleY":F
    div-float/2addr v8, v15

    .line 2414
    sget v1, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 2417
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v13

    .line 2418
    .local v13, "prop36":Lcom/smartisanos/launcher/data/LayoutProperty;
    const/4 v1, 0x3

    invoke-static {v1}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v14

    .line 2420
    .local v14, "prop81":Lcom/smartisanos/launcher/data/LayoutProperty;
    iget v0, v13, Lcom/smartisanos/launcher/data/LayoutProperty;->page_width:F

    move/from16 v16, v0

    .line 2421
    .local v16, "width36":F
    iget v9, v13, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    .line 2423
    .local v9, "height36":F
    iget v0, v14, Lcom/smartisanos/launcher/data/LayoutProperty;->page_width:F

    move/from16 v17, v0

    .line 2424
    .local v17, "width81":F
    iget v10, v12, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    .line 2426
    .local v10, "height81":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/smartisanos/launcher/view/Page;->mCurrentPageNoSpaceRect:Lcom/smartisanos/launcher/view/TextView;

    div-float v2, v16, v17

    div-float v4, v9, v10

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v4, v5}, Lcom/smartisanos/launcher/view/TextView;->setScale(FFF)V

    .line 2429
    .end local v9    # "height36":F
    .end local v10    # "height81":F
    .end local v13    # "prop36":Lcom/smartisanos/launcher/data/LayoutProperty;
    .end local v14    # "prop81":Lcom/smartisanos/launcher/data/LayoutProperty;
    .end local v16    # "width36":F
    .end local v17    # "width81":F
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/smartisanos/launcher/view/Page;->mCurrentPageNoSpaceRect:Lcom/smartisanos/launcher/view/TextView;

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v8, v4}, Lcom/smartisanos/launcher/view/TextView;->setTranslate(FFF)V

    .line 2430
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/smartisanos/launcher/view/Page;->mCurrentPageNoSpaceRect:Lcom/smartisanos/launcher/view/TextView;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/TextView;->updateGeometricState()V

    .line 2431
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/smartisanos/launcher/view/Page;->mCurrentPageNoSpaceRect:Lcom/smartisanos/launcher/view/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Page;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 2432
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/smartisanos/launcher/view/Page;->mCurrentPageNoSpaceRect:Lcom/smartisanos/launcher/view/TextView;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/TextView;->updateGeometricState()V

    .line 2433
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/smartisanos/launcher/view/Page;->mCurrentPageNoSpaceRect:Lcom/smartisanos/launcher/view/TextView;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/TextView;->getTextView()Lcom/smartisanos/smengine/RectNode;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(IZ)V

    .line 2434
    invoke-static {}, Lcom/smartisanos/launcher/view/LayerManager;->getInstance()Lcom/smartisanos/launcher/view/LayerManager;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/Page;->getLayStatus()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/view/LayerManager;->getPageLayer(I)Lcom/smartisanos/launcher/view/LayerManager$PageLayer;

    move-result-object v11

    .line 2435
    .local v11, "pageLayer":Lcom/smartisanos/launcher/view/LayerManager$PageLayer;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/smartisanos/launcher/view/Page;->mCurrentPageNoSpaceRect:Lcom/smartisanos/launcher/view/TextView;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/TextView;->getTextView()Lcom/smartisanos/smengine/RectNode;

    move-result-object v1

    iget v2, v11, Lcom/smartisanos/launcher/view/LayerManager$PageLayer;->PAGE_IN_MULTI_SELECT_NODE_NO_SPACE_TEXT_LAYER:I

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    goto/16 :goto_0
.end method

.method public showPageShadow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2540
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Page;->createPageShadow()V

    .line 2541
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v0, :cond_0

    .line 2542
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/smartisanos/launcher/view/Page;->showLongPressGaussianRect(Lcom/smartisanos/smengine/AnimationTimeLine;FF)V

    .line 2544
    :cond_0
    return-void
.end method

.method public showPageShadow(Lcom/smartisanos/smengine/AnimationTimeLine;FF)V
    .locals 10
    .param p1, "timeline"    # Lcom/smartisanos/smengine/AnimationTimeLine;
    .param p2, "duration"    # F
    .param p3, "delay"    # F

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 2800
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Page;->createPageShadow()V

    .line 2801
    new-instance v0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/Page;->mLongPressPageShadowRect:Lcom/smartisanos/smengine/RectNode;

    invoke-direct {v0, v1}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 2802
    .local v0, "anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    invoke-virtual {v0, p2}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 2803
    const/4 v1, 0x3

    const/4 v5, 0x0

    move v3, v2

    move v4, v2

    move v6, v2

    move v7, v2

    move v8, v2

    move v9, v2

    invoke-virtual/range {v0 .. v9}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFFFF)V

    .line 2805
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 2806
    invoke-virtual {p1, p3, v0}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 2814
    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v1, :cond_0

    .line 2815
    invoke-virtual {p0, p1, p2, p3}, Lcom/smartisanos/launcher/view/Page;->showLongPressGaussianRect(Lcom/smartisanos/smengine/AnimationTimeLine;FF)V

    .line 2817
    :cond_0
    return-void
.end method

.method public startShadowAnimation()V
    .locals 13

    .prologue
    const v5, 0x3f99999a    # 1.2f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 1094
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->getChildCount()I

    move-result v8

    .line 1095
    .local v8, "count":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v8, :cond_1

    .line 1096
    invoke-virtual {p0, v9}, Lcom/smartisanos/launcher/view/Page;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v12

    .line 1098
    .local v12, "sn":Lcom/smartisanos/smengine/SceneNode;
    invoke-virtual {v12}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object v11

    .line 1099
    .local v11, "name":Ljava/lang/String;
    const-string v1, "shadow"

    invoke-virtual {v11, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    .line 1100
    .local v10, "index":I
    if-ltz v10, :cond_0

    .line 1101
    new-instance v0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    invoke-direct {v0, v12}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 1102
    .local v0, "ssna":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 1103
    const/4 v1, 0x1

    move v3, v2

    move v4, v2

    move v6, v5

    move v7, v5

    invoke-virtual/range {v0 .. v7}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFF)V

    .line 1104
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->start()V

    .line 1095
    .end local v0    # "ssna":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1107
    .end local v10    # "index":I
    .end local v11    # "name":Ljava/lang/String;
    .end local v12    # "sn":Lcom/smartisanos/smengine/SceneNode;
    :cond_1
    return-void
.end method

.method protected testcreateFolder(IILcom/smartisanos/launcher/data/ItemInfo;Lcom/smartisanos/launcher/data/LayoutProperty;)Lcom/smartisanos/launcher/view/FolderCell;
    .locals 15
    .param p1, "i"    # I
    .param p2, "j"    # I
    .param p3, "cc"    # Lcom/smartisanos/launcher/data/ItemInfo;
    .param p4, "prop"    # Lcom/smartisanos/launcher/data/LayoutProperty;

    .prologue
    .line 3207
    new-instance v8, Lcom/smartisanos/launcher/data/FolderInfo;

    invoke-direct {v8}, Lcom/smartisanos/launcher/data/FolderInfo;-><init>()V

    .line 3208
    .local v8, "folderInfo":Lcom/smartisanos/launcher/data/FolderInfo;
    const-wide/16 v4, 0x3e8

    iput-wide v4, v8, Lcom/smartisanos/launcher/data/FolderInfo;->id:J

    .line 3209
    const-string v2, "aaaaa"

    iput-object v2, v8, Lcom/smartisanos/launcher/data/FolderInfo;->title:Ljava/lang/String;

    .line 3210
    const-string v2, "com.smartisan.folder"

    iput-object v2, v8, Lcom/smartisanos/launcher/data/FolderInfo;->packageName:Ljava/lang/String;

    .line 3211
    const-string v2, "com.smartisan.folder.folder"

    iput-object v2, v8, Lcom/smartisanos/launcher/data/FolderInfo;->componentName:Ljava/lang/String;

    .line 3212
    const/4 v2, 0x0

    iput v2, v8, Lcom/smartisanos/launcher/data/FolderInfo;->pageIndex:I

    .line 3213
    const/4 v2, 0x0

    iput v2, v8, Lcom/smartisanos/launcher/data/FolderInfo;->cellIndex:I

    .line 3214
    const/4 v2, 0x0

    iput v2, v8, Lcom/smartisanos/launcher/data/FolderInfo;->messagesNumber:I

    .line 3215
    const/4 v2, 0x0

    iput-boolean v2, v8, Lcom/smartisanos/launcher/data/FolderInfo;->isNewlyInstalled:Z

    .line 3216
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v8, Lcom/smartisanos/launcher/data/FolderInfo;->contents:Ljava/util/ArrayList;

    .line 3217
    const/16 v10, 0x10

    .line 3218
    .local v10, "count":I
    const/16 v13, 0x3e9

    .line 3219
    .local v13, "startId":I
    const-string v14, "folderCell_"

    .line 3220
    .local v14, "title":Ljava/lang/String;
    const/4 v12, 0x0

    .local v12, "n":I
    :goto_0
    if-ge v12, v10, :cond_0

    .line 3221
    iget-object v2, p0, Lcom/smartisanos/launcher/view/Page;->mItemInfoList:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/data/ItemInfo;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/data/ItemInfo;->clone()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v11

    .line 3222
    .local v11, "in":Lcom/smartisanos/launcher/data/ItemInfo;
    add-int v2, v13, v12

    int-to-long v4, v2

    iput-wide v4, v11, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    .line 3223
    div-int/lit8 v2, v12, 0x9

    iput v2, v11, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    .line 3224
    rem-int/lit8 v2, v12, 0x9

    iput v2, v11, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    .line 3225
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v11, Lcom/smartisanos/launcher/data/ItemInfo;->title:Ljava/lang/String;

    .line 3226
    iget-object v2, v8, Lcom/smartisanos/launcher/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3220
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 3228
    .end local v11    # "in":Lcom/smartisanos/launcher/data/ItemInfo;
    :cond_0
    const/4 v3, 0x0

    .line 3229
    .local v3, "cellName":Ljava/lang/String;
    if-nez p3, :cond_1

    .line 3230
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cell_empty"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3235
    :goto_1
    new-instance v2, Lcom/smartisanos/launcher/view/FolderCell;

    const/4 v4, 0x0

    iget v7, p0, Lcom/smartisanos/launcher/view/Page;->mZ:F

    iget-object v9, p0, Lcom/smartisanos/launcher/view/Page;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    move/from16 v5, p1

    move/from16 v6, p2

    invoke-direct/range {v2 .. v9}, Lcom/smartisanos/launcher/view/FolderCell;-><init>(Ljava/lang/String;ZIIFLcom/smartisanos/launcher/data/ItemInfo;Lcom/smartisanos/launcher/data/LayoutProperty;)V

    return-object v2

    .line 3233
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cell "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    iget-wide v4, v0, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method public toPageInfo()Lcom/smartisanos/launcher/data/PageInfo;
    .locals 2

    .prologue
    .line 160
    new-instance v0, Lcom/smartisanos/launcher/data/PageInfo;

    invoke-direct {v0}, Lcom/smartisanos/launcher/data/PageInfo;-><init>()V

    .line 161
    .local v0, "pageInfo":Lcom/smartisanos/launcher/data/PageInfo;
    iget v1, p0, Lcom/smartisanos/launcher/view/Page;->pageIndex:I

    iput v1, v0, Lcom/smartisanos/launcher/data/PageInfo;->pageIndex:I

    .line 162
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->getTitleForDB()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/data/PageInfo;->setPageName(Ljava/lang/String;)V

    .line 163
    iget v1, p0, Lcom/smartisanos/launcher/view/Page;->mPageStatus:I

    iput v1, v0, Lcom/smartisanos/launcher/data/PageInfo;->status:I

    .line 164
    return-object v0
.end method

.method public unLockPageByEvent()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 450
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v0

    sget-object v1, Lcom/smartisanos/home/Launcher$RUNNING_ENV;->GL:Lcom/smartisanos/home/Launcher$RUNNING_ENV;

    invoke-virtual {v0, v1}, Lcom/smartisanos/home/Launcher;->verifyThread(Lcom/smartisanos/home/Launcher$RUNNING_ENV;)V

    .line 451
    invoke-virtual {p0, v2, v3, v3, v2}, Lcom/smartisanos/launcher/view/Page;->setPageStatus(IZZZ)V

    .line 452
    invoke-virtual {p0, v2}, Lcom/smartisanos/launcher/view/Page;->setCellItemInfoLockStatus(Z)V

    .line 453
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->getTitleView()Lcom/smartisanos/launcher/view/TitleView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/TitleView;->setLockState(Z)V

    .line 454
    return-void
.end method

.method protected updateCellContent()V
    .locals 0

    .prologue
    .line 3240
    return-void
.end method

.method public updateCover()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1221
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1222
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->getPageStatus()I

    move-result v0

    if-ne v3, v0, :cond_0

    .line 1223
    invoke-virtual {p0, v2, v3, v3, v2}, Lcom/smartisanos/launcher/view/Page;->setPageStatus(IZZZ)V

    .line 1224
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->getTitleView()Lcom/smartisanos/launcher/view/TitleView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1225
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->getTitleView()Lcom/smartisanos/launcher/view/TitleView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/TitleView;->setEyeState(Z)V

    .line 1228
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->getPageStatus()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 1229
    invoke-virtual {p0, v2, v3, v3, v2}, Lcom/smartisanos/launcher/view/Page;->setPageStatus(IZZZ)V

    .line 1230
    invoke-virtual {p0, v2}, Lcom/smartisanos/launcher/view/Page;->setCellItemInfoLockStatus(Z)V

    .line 1231
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->getTitleView()Lcom/smartisanos/launcher/view/TitleView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1232
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->getTitleView()Lcom/smartisanos/launcher/view/TitleView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/TitleView;->setLockState(Z)V

    .line 1236
    :cond_1
    return-void
.end method

.method public updateFlagVisibility()V
    .locals 4

    .prologue
    .line 2257
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->getAllPageCell()Ljava/util/ArrayList;

    move-result-object v1

    .line 2258
    .local v1, "cells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/Cell;

    .line 2259
    .local v0, "cell":Lcom/smartisanos/launcher/view/Cell;
    if-eqz v0, :cond_0

    .line 2260
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->updateFlagVisibility()V

    goto :goto_0

    .line 2263
    .end local v0    # "cell":Lcom/smartisanos/launcher/view/Cell;
    :cond_1
    return-void
.end method

.method public updateGaussianUV()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 2920
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Page;->mLongPressGaussianRect:Lcom/smartisanos/smengine/RectNode;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/smartisanos/launcher/view/Page;->mLongPressGaussianRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2921
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Page;->mLongPressGaussianRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->getMaterial()Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v7

    check-cast v7, Lcom/smartisanos/smengine/mymaterial/GaussianBlurEffectMaterial;

    .line 2922
    .local v7, "m":Lcom/smartisanos/smengine/mymaterial/GaussianBlurEffectMaterial;
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/World;->getMeshManager()Lcom/smartisanos/smengine/MeshManager;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/Page;->mLongGaussianMeshName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/MeshManager;->getMesh(Ljava/lang/String;)Lcom/smartisanos/smengine/Mesh;

    move-result-object v9

    .line 2923
    .local v9, "newMesh":Lcom/smartisanos/smengine/Mesh;
    if-nez v9, :cond_0

    .line 2924
    invoke-virtual {v7}, Lcom/smartisanos/smengine/mymaterial/GaussianBlurEffectMaterial;->getFirstPassMesh()Lcom/smartisanos/smengine/Mesh;

    move-result-object v8

    .line 2925
    .local v8, "mesh":Lcom/smartisanos/smengine/Mesh;
    invoke-virtual {v8}, Lcom/smartisanos/smengine/Mesh;->clone()Lcom/smartisanos/smengine/Mesh;

    move-result-object v9

    .line 2926
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/World;->getMeshManager()Lcom/smartisanos/smengine/MeshManager;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/Page;->mLongGaussianMeshName:Ljava/lang/String;

    invoke-virtual {v0, v1, v9}, Lcom/smartisanos/smengine/MeshManager;->addMesh(Ljava/lang/String;Lcom/smartisanos/smengine/Mesh;)Lcom/smartisanos/smengine/Mesh;

    .line 2928
    .end local v8    # "mesh":Lcom/smartisanos/smengine/Mesh;
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Page;->mLongPressGaussianRect:Lcom/smartisanos/smengine/RectNode;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/Page;->mGaussianPos:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RectNode;->getWorldTranslate(Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 2929
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Page;->mLongPressGaussianRect:Lcom/smartisanos/smengine/RectNode;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/Page;->mGaussianSize:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RectNode;->getSize(Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 2930
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Page;->mGaussianPos:Lcom/smartisanos/smengine/math/Vector3f;

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget-object v1, p0, Lcom/smartisanos/launcher/view/Page;->mGaussianPos:Lcom/smartisanos/smengine/math/Vector3f;

    iget v1, v1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget-object v2, p0, Lcom/smartisanos/launcher/view/Page;->mGaussianPos:Lcom/smartisanos/smengine/math/Vector3f;

    iget v2, v2, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/smartisanos/launcher/view/Page;->mGaussianSize:Lcom/smartisanos/smengine/math/Vector3f;

    iget v4, v4, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget-object v5, p0, Lcom/smartisanos/launcher/view/Page;->mGaussianSize:Lcom/smartisanos/smengine/math/Vector3f;

    iget v5, v5, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget-object v6, p0, Lcom/smartisanos/launcher/view/Page;->mGaussianUV:[F

    invoke-static/range {v0 .. v6}, Lcom/smartisanos/launcher/data/Utils;->getUVOnScreen(FFFZFF[F)V

    .line 2934
    invoke-virtual {v9, v10}, Lcom/smartisanos/smengine/Mesh;->getTexVertexArray(I)[F

    move-result-object v0

    if-nez v0, :cond_4

    .line 2935
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Page;->mGaussianUV:[F

    invoke-virtual {v9, v10, v0}, Lcom/smartisanos/smengine/Mesh;->setTexVertexArray(I[F)V

    .line 2939
    :goto_0
    invoke-virtual {v7, v9}, Lcom/smartisanos/smengine/mymaterial/GaussianBlurEffectMaterial;->setFirstPassMesh(Lcom/smartisanos/smengine/Mesh;)V

    .line 2941
    .end local v7    # "m":Lcom/smartisanos/smengine/mymaterial/GaussianBlurEffectMaterial;
    .end local v9    # "newMesh":Lcom/smartisanos/smengine/Mesh;
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Page;->mLongPressAlphaRect:Lcom/smartisanos/smengine/RectNode;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/smartisanos/launcher/view/Page;->mLongPressAlphaRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/smartisanos/launcher/view/Page;->mLongPressAlphaRect:Lcom/smartisanos/smengine/RectNode;

    .line 2942
    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2943
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/World;->getMeshManager()Lcom/smartisanos/smengine/MeshManager;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/Page;->mLongAlphaMeshName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/MeshManager;->getMesh(Ljava/lang/String;)Lcom/smartisanos/smengine/Mesh;

    move-result-object v9

    .line 2944
    .restart local v9    # "newMesh":Lcom/smartisanos/smengine/Mesh;
    if-nez v9, :cond_2

    .line 2945
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Page;->mLongPressAlphaRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->getMesh()Lcom/smartisanos/smengine/Mesh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Mesh;->clone()Lcom/smartisanos/smengine/Mesh;

    move-result-object v9

    .line 2946
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/World;->getMeshManager()Lcom/smartisanos/smengine/MeshManager;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/Page;->mLongAlphaMeshName:Ljava/lang/String;

    invoke-virtual {v0, v1, v9}, Lcom/smartisanos/smengine/MeshManager;->addMesh(Ljava/lang/String;Lcom/smartisanos/smengine/Mesh;)Lcom/smartisanos/smengine/Mesh;

    .line 2947
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Page;->mLongPressAlphaRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0, v9}, Lcom/smartisanos/smengine/RectNode;->setMesh(Lcom/smartisanos/smengine/Mesh;)V

    .line 2949
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Page;->mLongPressAlphaRect:Lcom/smartisanos/smengine/RectNode;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/Page;->mGaussianPos:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RectNode;->getWorldTranslate(Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 2950
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Page;->mLongPressAlphaRect:Lcom/smartisanos/smengine/RectNode;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/Page;->mGaussianSize:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RectNode;->getSize(Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 2951
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Page;->mGaussianPos:Lcom/smartisanos/smengine/math/Vector3f;

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget-object v1, p0, Lcom/smartisanos/launcher/view/Page;->mGaussianPos:Lcom/smartisanos/smengine/math/Vector3f;

    iget v1, v1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget-object v2, p0, Lcom/smartisanos/launcher/view/Page;->mGaussianPos:Lcom/smartisanos/smengine/math/Vector3f;

    iget v2, v2, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    iget-object v3, p0, Lcom/smartisanos/launcher/view/Page;->mGaussianSize:Lcom/smartisanos/smengine/math/Vector3f;

    iget v4, v3, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget-object v3, p0, Lcom/smartisanos/launcher/view/Page;->mGaussianSize:Lcom/smartisanos/smengine/math/Vector3f;

    iget v5, v3, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget-object v6, p0, Lcom/smartisanos/launcher/view/Page;->mGaussianUV:[F

    move v3, v10

    invoke-static/range {v0 .. v6}, Lcom/smartisanos/launcher/data/Utils;->getUVOnScreen(FFFZFF[F)V

    .line 2954
    invoke-virtual {v9, v10}, Lcom/smartisanos/smengine/Mesh;->getTexVertexArray(I)[F

    move-result-object v0

    if-nez v0, :cond_5

    .line 2955
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Page;->mGaussianUV:[F

    invoke-virtual {v9, v10, v0}, Lcom/smartisanos/smengine/Mesh;->setTexVertexArray(I[F)V

    .line 2989
    .end local v9    # "newMesh":Lcom/smartisanos/smengine/Mesh;
    :cond_3
    :goto_1
    return-void

    .line 2937
    .restart local v7    # "m":Lcom/smartisanos/smengine/mymaterial/GaussianBlurEffectMaterial;
    .restart local v9    # "newMesh":Lcom/smartisanos/smengine/Mesh;
    :cond_4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Page;->mGaussianUV:[F

    invoke-virtual {v9, v10, v0}, Lcom/smartisanos/smengine/Mesh;->updateTexVertexFloatBuffer(I[F)V

    goto :goto_0

    .line 2957
    .end local v7    # "m":Lcom/smartisanos/smengine/mymaterial/GaussianBlurEffectMaterial;
    :cond_5
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Page;->mGaussianUV:[F

    invoke-virtual {v9, v10, v0}, Lcom/smartisanos/smengine/Mesh;->updateTexVertexFloatBuffer(I[F)V

    .line 2958
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Page;->mLongPressAlphaRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0, v9}, Lcom/smartisanos/smengine/RectNode;->updateMesh(Lcom/smartisanos/smengine/Mesh;)V

    goto :goto_1
.end method

.method public updateLayer(I)V
    .locals 7
    .param p1, "change"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x2

    .line 3020
    invoke-super {p0, p1}, Lcom/smartisanos/launcher/view/BaseNode;->updateLayer(I)V

    .line 3021
    invoke-static {}, Lcom/smartisanos/launcher/view/LayerManager;->getInstance()Lcom/smartisanos/launcher/view/LayerManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->getLayStatus()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/view/LayerManager;->getPageLayer(I)Lcom/smartisanos/launcher/view/LayerManager$PageLayer;

    move-result-object v2

    .line 3022
    .local v2, "pageLayer":Lcom/smartisanos/launcher/view/LayerManager$PageLayer;
    iget-object v3, p0, Lcom/smartisanos/launcher/view/Page;->mBatchShadowRect:Lcom/smartisanos/launcher/view/BatchShadow;

    if-eqz v3, :cond_0

    .line 3023
    iget-object v3, p0, Lcom/smartisanos/launcher/view/Page;->mBatchShadowRect:Lcom/smartisanos/launcher/view/BatchShadow;

    iget v4, v2, Lcom/smartisanos/launcher/view/LayerManager$PageLayer;->PAGE_BATCH_RENDER_OUTER_SHADOW:I

    add-int/2addr v4, p1

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/view/BatchShadow;->setLayer(I)V

    .line 3030
    :cond_0
    iget-object v3, p0, Lcom/smartisanos/launcher/view/Page;->mLongPressGaussianRect:Lcom/smartisanos/smengine/RectNode;

    if-eqz v3, :cond_1

    .line 3031
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/MainView;->getFloatPageNode()Lcom/smartisanos/launcher/view/FloatPageNode;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 3032
    iget-object v3, p0, Lcom/smartisanos/launcher/view/Page;->mLongPressGaussianRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v3, v5}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 3038
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/smartisanos/launcher/view/Page;->mBatchBackground:Lcom/smartisanos/launcher/view/BatchBackground;

    if-eqz v3, :cond_2

    .line 3039
    iget-object v3, p0, Lcom/smartisanos/launcher/view/Page;->mBatchBackground:Lcom/smartisanos/launcher/view/BatchBackground;

    iget v4, v2, Lcom/smartisanos/launcher/view/LayerManager$PageLayer;->PAGE_IN_GAUSSIAN_BATCH_BACK_GROUND_LAYER:I

    add-int/2addr v4, p1

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/view/BatchBackground;->setLayer(I)V

    .line 3042
    :cond_2
    iget-object v3, p0, Lcom/smartisanos/launcher/view/Page;->mTitleAreaNode:Lcom/smartisanos/launcher/view/TitleView;

    if-eqz v3, :cond_3

    .line 3043
    iget-object v3, p0, Lcom/smartisanos/launcher/view/Page;->mTitleAreaNode:Lcom/smartisanos/launcher/view/TitleView;

    invoke-virtual {v3, p1}, Lcom/smartisanos/launcher/view/TitleView;->updateLayer(I)V

    .line 3045
    :cond_3
    iget-object v3, p0, Lcom/smartisanos/launcher/view/Page;->mLongPressPageShadowRect:Lcom/smartisanos/smengine/RectNode;

    if-eqz v3, :cond_4

    .line 3046
    iget-object v3, p0, Lcom/smartisanos/launcher/view/Page;->mLongPressPageShadowRect:Lcom/smartisanos/smengine/RectNode;

    iget v4, v2, Lcom/smartisanos/launcher/view/LayerManager$PageLayer;->PAGE_IN_SWITCH_PAGE_MODE_OUTER_SHADOW_LAYER:I

    add-int/2addr v4, p1

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 3049
    :cond_4
    iget-object v3, p0, Lcom/smartisanos/launcher/view/Page;->mCurrentPageNoSpaceRect:Lcom/smartisanos/launcher/view/TextView;

    if-eqz v3, :cond_5

    .line 3050
    iget-object v3, p0, Lcom/smartisanos/launcher/view/Page;->mCurrentPageNoSpaceRect:Lcom/smartisanos/launcher/view/TextView;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/TextView;->getTextView()Lcom/smartisanos/smengine/RectNode;

    move-result-object v3

    iget v4, v2, Lcom/smartisanos/launcher/view/LayerManager$PageLayer;->PAGE_IN_MULTI_SELECT_NODE_NO_SPACE_TEXT_LAYER:I

    add-int/2addr v4, p1

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 3052
    :cond_5
    iget-object v3, p0, Lcom/smartisanos/launcher/view/Page;->mMultiSelectedPageCanDropCoverRect:Lcom/smartisanos/smengine/RectNode;

    if-eqz v3, :cond_6

    .line 3053
    iget-object v3, p0, Lcom/smartisanos/launcher/view/Page;->mMultiSelectedPageCanDropCoverRect:Lcom/smartisanos/smengine/RectNode;

    iget v4, v2, Lcom/smartisanos/launcher/view/LayerManager$PageLayer;->PAGE_IN_MULTI_SELECT_NODE_CAN_DROP_COVER_LAYER:I

    add-int/2addr v4, p1

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 3055
    :cond_6
    iget-object v3, p0, Lcom/smartisanos/launcher/view/Page;->mMultiSelectedPageCanNotDropCoverRect:Lcom/smartisanos/smengine/RectNode;

    if-eqz v3, :cond_7

    .line 3056
    iget-object v3, p0, Lcom/smartisanos/launcher/view/Page;->mMultiSelectedPageCanNotDropCoverRect:Lcom/smartisanos/smengine/RectNode;

    iget v4, v2, Lcom/smartisanos/launcher/view/LayerManager$PageLayer;->PAGE_IN_MULTI_SELECT_NODE_CAN_NOT_DROP_COVER_LAYER:I

    add-int/2addr v4, p1

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 3061
    :cond_7
    iget-object v3, p0, Lcom/smartisanos/launcher/view/Page;->mEyePageCoverImage:Lcom/smartisanos/smengine/RectNode;

    if-eqz v3, :cond_8

    .line 3062
    iget-object v3, p0, Lcom/smartisanos/launcher/view/Page;->mEyePageCoverImage:Lcom/smartisanos/smengine/RectNode;

    iget v4, v2, Lcom/smartisanos/launcher/view/LayerManager$PageLayer;->PAGE_COVER_EYE_LAYER:I

    add-int/2addr v4, p1

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 3064
    :cond_8
    iget v3, p0, Lcom/smartisanos/launcher/view/Page;->mLayerStatus:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_a

    .line 3065
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->getAllPageCell()Ljava/util/ArrayList;

    move-result-object v0

    .line 3066
    .local v0, "allCell":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/Cell;

    .line 3067
    .local v1, "cell":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v1, v5, p1}, Lcom/smartisanos/launcher/view/Cell;->setLayerStatus(II)V

    goto :goto_1

    .line 3034
    .end local v0    # "allCell":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    .end local v1    # "cell":Lcom/smartisanos/launcher/view/Cell;
    :cond_9
    iget-object v3, p0, Lcom/smartisanos/launcher/view/Page;->mLongPressGaussianRect:Lcom/smartisanos/smengine/RectNode;

    iget v4, v2, Lcom/smartisanos/launcher/view/LayerManager$PageLayer;->PAGE_IN_SWITCH_PAGE_MODE_GAUSSIAN_LAYER:I

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    goto :goto_0

    .line 3069
    :cond_a
    iget v3, p0, Lcom/smartisanos/launcher/view/Page;->mLayerStatus:I

    if-ne v3, v5, :cond_b

    .line 3070
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->getAllPageCell()Ljava/util/ArrayList;

    move-result-object v0

    .line 3071
    .restart local v0    # "allCell":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/Cell;

    .line 3072
    .restart local v1    # "cell":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v1, v6, p1}, Lcom/smartisanos/launcher/view/Cell;->setLayerStatus(II)V

    goto :goto_2

    .line 3074
    .end local v0    # "allCell":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    .end local v1    # "cell":Lcom/smartisanos/launcher/view/Cell;
    :cond_b
    iget v3, p0, Lcom/smartisanos/launcher/view/Page;->mLayerStatus:I

    if-ne v3, v6, :cond_c

    .line 3075
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->getAllPageCell()Ljava/util/ArrayList;

    move-result-object v0

    .line 3076
    .restart local v0    # "allCell":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/Cell;

    .line 3077
    .restart local v1    # "cell":Lcom/smartisanos/launcher/view/Cell;
    const/4 v4, 0x5

    invoke-virtual {v1, v4, p1}, Lcom/smartisanos/launcher/view/Cell;->setLayerStatus(II)V

    goto :goto_3

    .line 3079
    .end local v0    # "allCell":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    .end local v1    # "cell":Lcom/smartisanos/launcher/view/Cell;
    :cond_c
    iget v3, p0, Lcom/smartisanos/launcher/view/Page;->mLayerStatus:I

    if-nez v3, :cond_d

    .line 3080
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->getAllPageCell()Ljava/util/ArrayList;

    move-result-object v0

    .line 3081
    .restart local v0    # "allCell":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/Cell;

    .line 3082
    .restart local v1    # "cell":Lcom/smartisanos/launcher/view/Cell;
    const/4 v4, 0x0

    invoke-virtual {v1, v4, p1}, Lcom/smartisanos/launcher/view/Cell;->setLayerStatus(II)V

    goto :goto_4

    .line 3085
    .end local v0    # "allCell":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    .end local v1    # "cell":Lcom/smartisanos/launcher/view/Cell;
    :cond_d
    return-void
.end method

.method public updateMeshWhenPageIndexChange()V
    .locals 0

    .prologue
    .line 3016
    return-void
.end method

.method public updatePageIndexInCell()V
    .locals 5

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->getAllNonEmptyCellList()Ljava/util/ArrayList;

    move-result-object v1

    .line 90
    .local v1, "cellList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 97
    :cond_0
    return-void

    .line 93
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 94
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/Cell;

    .line 95
    .local v0, "cell":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->getItemInfo()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v3

    iget v4, p0, Lcom/smartisanos/launcher/view/Page;->pageIndex:I

    iput v4, v3, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    .line 93
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public updatePageTitleName(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1198
    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/Page;->setTitleName(Ljava/lang/String;)V

    .line 1199
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Page;->mTitleAreaNode:Lcom/smartisanos/launcher/view/TitleView;

    if-eqz v0, :cond_0

    .line 1200
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Page;->mTitleAreaNode:Lcom/smartisanos/launcher/view/TitleView;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/Page;->mTitleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/TitleView;->setText(Ljava/lang/String;)V

    .line 1202
    :cond_0
    return-void
.end method

.method public updateTitle()V
    .locals 2

    .prologue
    .line 1205
    const/4 v0, 0x0

    .line 1206
    .local v0, "showTitleInfo":Z
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1207
    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/smartisanos/launcher/view/Page;->setTitleName(Ljava/lang/String;)V

    .line 1208
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->getTitleForRect()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/smartisanos/launcher/view/Page;->updatePageTitleName(Ljava/lang/String;)V

    .line 1209
    const/4 v0, 0x0

    .line 1213
    :goto_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->getTitleView()Lcom/smartisanos/launcher/view/TitleView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1214
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->getTitleView()Lcom/smartisanos/launcher/view/TitleView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/TitleView;->updateGaussianMeshName()V

    .line 1215
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->getTitleView()Lcom/smartisanos/launcher/view/TitleView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/smartisanos/launcher/view/TitleView;->setDisplayIconAndText(Z)V

    .line 1216
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->getTitleView()Lcom/smartisanos/launcher/view/TitleView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/TitleView;->setNeedDisplay()V

    .line 1218
    :cond_0
    return-void

    .line 1211
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public updateWorldBoundingVolume()V
    .locals 7

    .prologue
    .line 505
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->updateSelfWorldBoundingVolume()V

    .line 506
    sget v5, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    invoke-static {v5}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v2

    .line 507
    .local v2, "lp":Lcom/smartisanos/launcher/data/LayoutProperty;
    const v4, 0x3f4ccccd    # 0.8f

    .line 508
    .local v4, "value":F
    sget v5, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    .line 509
    const v4, 0x3f8ccccd    # 1.1f

    .line 511
    :cond_0
    iget v5, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->page_width:F

    sget v6, Lcom/smartisanos/launcher/data/Constants;->screen_width:I

    int-to-float v6, v6

    invoke-virtual {p0, v5, v6, v4}, Lcom/smartisanos/launcher/view/Page;->isInWindow(FFF)Z

    move-result v0

    .line 512
    .local v0, "currentInWindow":Z
    if-eqz v0, :cond_1

    .line 513
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->getChildCount()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 514
    invoke-virtual {p0, v1}, Lcom/smartisanos/launcher/view/Page;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v3

    .line 515
    .local v3, "sn":Lcom/smartisanos/smengine/SceneNode;
    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->updateWorldBoundingVolume()V

    .line 513
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 518
    .end local v1    # "i":I
    .end local v3    # "sn":Lcom/smartisanos/smengine/SceneNode;
    :cond_1
    return-void
.end method

.method public updateWorldTransforms()V
    .locals 7

    .prologue
    .line 534
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->updateSelfWorldTranform()V

    .line 544
    sget v5, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    invoke-static {v5}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v2

    .line 545
    .local v2, "lp":Lcom/smartisanos/launcher/data/LayoutProperty;
    const v4, 0x3f4ccccd    # 0.8f

    .line 546
    .local v4, "value":F
    sget v5, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    .line 547
    const v4, 0x3f8ccccd    # 1.1f

    .line 550
    :cond_0
    iget v5, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->page_width:F

    sget v6, Lcom/smartisanos/launcher/data/Constants;->screen_width:I

    int-to-float v6, v6

    invoke-virtual {p0, v5, v6, v4}, Lcom/smartisanos/launcher/view/Page;->isInWindow(FFF)Z

    move-result v0

    .line 551
    .local v0, "currentInWindow":Z
    if-eqz v0, :cond_1

    .line 552
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Page;->getChildCount()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 553
    invoke-virtual {p0, v1}, Lcom/smartisanos/launcher/view/Page;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v3

    .line 554
    .local v3, "node":Lcom/smartisanos/smengine/SceneNode;
    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->updateWorldTransforms()V

    .line 552
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 557
    .end local v1    # "i":I
    .end local v3    # "node":Lcom/smartisanos/smengine/SceneNode;
    :cond_1
    return-void
.end method

.method public writeXML(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;)V
    .locals 4
    .param p1, "parent"    # Lorg/w3c/dom/Element;
    .param p2, "document"    # Lorg/w3c/dom/Document;

    .prologue
    .line 2893
    const-string v1, "Page"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 2894
    .local v0, "element":Lorg/w3c/dom/Element;
    const-string v1, "readOnlyPage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/smartisanos/launcher/view/Page;->readOnlyPage:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 2895
    const-string v1, "mPageStatus"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/smartisanos/launcher/view/Page;->mPageStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 2896
    const-string v1, "id"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/smartisanos/launcher/view/Page;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 2897
    const-string v1, "pagIndex"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/smartisanos/launcher/view/Page;->pageIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 2898
    const-string v1, "mCellCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/smartisanos/launcher/view/Page;->mCellCamera:Lcom/smartisanos/smengine/Camera;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 2899
    const-string v1, "mZ"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/smartisanos/launcher/view/Page;->mZ:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 2900
    const-string v1, "mItemInfoListSize"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/smartisanos/launcher/view/Page;->mItemInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 2901
    const-string v1, "mDrawWithBatch"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/smartisanos/launcher/view/Page;->mDrawWithBatch:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 2902
    const-string v1, "mTitleAreaNode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/smartisanos/launcher/view/Page;->mTitleAreaNode:Lcom/smartisanos/launcher/view/TitleView;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 2903
    const-string v1, "mTitleName"

    iget-object v2, p0, Lcom/smartisanos/launcher/view/Page;->mTitleName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 2904
    const-string v1, "mTimeLineForEye"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/smartisanos/launcher/view/Page;->mTimeLineForEye:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 2905
    const-string v1, "mTileLineForLock"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/smartisanos/launcher/view/Page;->mTimeLineForLock:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 2906
    const-string v2, "mLongPressPageShadowRect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/smartisanos/launcher/view/Page;->mLongPressPageShadowRect:Lcom/smartisanos/smengine/RectNode;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/Page;->mLongPressPageShadowRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/RectNode;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 2907
    const-string v2, "mEyePageCoverImage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/smartisanos/launcher/view/Page;->mEyePageCoverImage:Lcom/smartisanos/smengine/RectNode;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/smartisanos/launcher/view/Page;->mEyePageCoverImage:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/RectNode;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 2909
    const-string v1, "animation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/smartisanos/launcher/view/Page;->animation:Lcom/smartisanos/launcher/animations/PageAnimation;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 2910
    const-string v2, "mCurrentPageNoSpaceRect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/smartisanos/launcher/view/Page;->mCurrentPageNoSpaceRect:Lcom/smartisanos/launcher/view/TextView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/smartisanos/launcher/view/Page;->mCurrentPageNoSpaceRect:Lcom/smartisanos/launcher/view/TextView;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/TextView;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 2911
    const-string v1, "mMultiSelectedPageCanDropCoverRect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/smartisanos/launcher/view/Page;->mMultiSelectedPageCanDropCoverRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 2912
    const-string v1, "mMultiSelectedPageCanNotDropCoverRect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/smartisanos/launcher/view/Page;->mMultiSelectedPageCanNotDropCoverRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 2913
    const-string v1, "mBachShadowRect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/smartisanos/launcher/view/Page;->mBatchShadowRect:Lcom/smartisanos/launcher/view/BatchShadow;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 2914
    invoke-super {p0, v0, p2}, Lcom/smartisanos/launcher/view/BaseNode;->writeXML(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;)V

    .line 2915
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 2916
    return-void

    .line 2906
    :cond_0
    const-string v1, "null"

    goto/16 :goto_0

    .line 2907
    :cond_1
    const-string v1, "null"

    goto/16 :goto_1

    .line 2910
    :cond_2
    const-string v1, "null"

    goto :goto_2
.end method
