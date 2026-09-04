.class public Lcom/smartisanos/launcher/view/TitleView;
.super Lcom/smartisanos/smengine/SceneNode;
.source "TitleView.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/launcher/view/TitleView$IconAnimation;
    }
.end annotation


.field public static final BOTTOM:I = 0x40

.field private static final DEFAULT_RENDER_TARGET_NAME:Ljava/lang/String; = "DefaultTitleRenderTarget"

.field private static final ICON_PRESSED_ALPHA:F = 0.8f

.field public static final LEFT:I = 0x20

.field public static final LEFT_BOTTOM_CORNER:I = 0x2

.field public static final LEFT_TOP_CORNER:I = 0x1

.field public static final MODE_COMPLEX:I = 0x1

.field public static final MODE_EDIT:I = 0x2

.field public static final RIGHT:I = 0x80

.field public static final RIGHT_BOTTOM_CORNER:I = 0x8

.field public static final RIGHT_TOP_CORNER:I = 0x4

.field public static final TOP:I = 0x10

.field public static TRANSLUCENT_SIZE:I = 0x0

.field private static hidePageToast:Landroid/widget/Toast; = null

.field private static lockPageToast:Landroid/widget/Toast; = null

.field private static final log:Lcom/smartisanos/launcher/LOG;

.field private static final mCameraName:Ljava/lang/String; = "TitleViewCamera"


.field private mBackShadowRect:Lcom/smartisanos/smengine/RectNode;

.field private mBackgroundRect:Lcom/smartisanos/smengine/RectNode;

.field private mEditIconRect:Lcom/smartisanos/smengine/RectNode;

.field private mEyeIconRect:Lcom/smartisanos/smengine/RectNode;

.field private mGaussianMeshName:Ljava/lang/String;

.field private mGaussianRect:Lcom/smartisanos/smengine/RectNode;

.field private mHasDown:I

.field private mHeight:F

.field private mIsAnimating:Z

.field private mIsDisplayIcon:Z

.field private mIsDrawShadowWithBatch:Z

.field private mIsDrawTextWithBatch:Z

.field private mIsUseStaticGaussian:Z

.field private mLayoutProperty:Lcom/smartisanos/launcher/data/LayoutProperty;

.field private mLockIconRect:Lcom/smartisanos/smengine/RectNode;

.field private mMode:I

.field private mPage:Lcom/smartisanos/launcher/view/Page;

.field private mPos:Lcom/smartisanos/smengine/math/Vector3f;

.field private mRenderRect:Lcom/smartisanos/smengine/RectNode;

.field private mRenderTarget:Lcom/smartisanos/smengine/RenderTarget;

.field private mRenderTargetCamera:Lcom/smartisanos/smengine/Camera;

.field private mRenderTargetTextureName:Ljava/lang/String;

.field private mTextRect:Lcom/smartisanos/launcher/view/TextView;

.field private mUV:[F

.field private mUseMipmap:Z

.field private mWidth:F

.field private mZ:F


.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 65
    const-class v0, Lcom/smartisanos/launcher/view/TitleView;

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/view/TitleView;->log:Lcom/smartisanos/launcher/LOG;

    .line 115
    const/16 v0, 0xa

    sput v0, Lcom/smartisanos/launcher/view/TitleView;->TRANSLUCENT_SIZE:I

    .line 133
    sput-object v1, Lcom/smartisanos/launcher/view/TitleView;->hidePageToast:Landroid/widget/Toast;

    .line 134
    sput-object v1, Lcom/smartisanos/launcher/view/TitleView;->lockPageToast:Landroid/widget/Toast;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/smartisanos/launcher/view/Page;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "page"    # Lcom/smartisanos/launcher/view/Page;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 322
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/SceneNode;-><init>(Ljava/lang/String;)V

    .line 85
    iput-boolean v2, p0, Lcom/smartisanos/launcher/view/TitleView;->mIsAnimating:Z

    .line 86
    iput-boolean v1, p0, Lcom/smartisanos/launcher/view/TitleView;->mIsDisplayIcon:Z

    .line 87
    iput-boolean v1, p0, Lcom/smartisanos/launcher/view/TitleView;->mIsDrawTextWithBatch:Z

    .line 88
    iput-boolean v1, p0, Lcom/smartisanos/launcher/view/TitleView;->mIsDrawShadowWithBatch:Z

    .line 89
    iput-boolean v1, p0, Lcom/smartisanos/launcher/view/TitleView;->mIsUseStaticGaussian:Z

    .line 91
    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mUV:[F

    .line 93
    new-instance v0, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v0}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mPos:Lcom/smartisanos/smengine/math/Vector3f;

    .line 113
    iput v1, p0, Lcom/smartisanos/launcher/view/TitleView;->mMode:I

    .line 657
    iput v2, p0, Lcom/smartisanos/launcher/view/TitleView;->mHasDown:I

    .line 323
    iput-object p2, p0, Lcom/smartisanos/launcher/view/TitleView;->mPage:Lcom/smartisanos/launcher/view/Page;

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "title"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v1

    iget-object v2, p0, Lcom/smartisanos/launcher/view/TitleView;->mPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/view/PageView;->getPageIndex(Lcom/smartisanos/launcher/view/Page;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "long.press.blur"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mGaussianMeshName:Ljava/lang/String;

    .line 325
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;FFFLcom/smartisanos/launcher/view/Page;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "width"    # F
    .param p4, "height"    # F
    .param p5, "z"    # F
    .param p6, "page"    # Lcom/smartisanos/launcher/view/Page;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 121
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/SceneNode;-><init>(Ljava/lang/String;)V

    .line 85
    iput-boolean v2, p0, Lcom/smartisanos/launcher/view/TitleView;->mIsAnimating:Z

    .line 86
    iput-boolean v1, p0, Lcom/smartisanos/launcher/view/TitleView;->mIsDisplayIcon:Z

    .line 87
    iput-boolean v1, p0, Lcom/smartisanos/launcher/view/TitleView;->mIsDrawTextWithBatch:Z

    .line 88
    iput-boolean v1, p0, Lcom/smartisanos/launcher/view/TitleView;->mIsDrawShadowWithBatch:Z

    .line 89
    iput-boolean v1, p0, Lcom/smartisanos/launcher/view/TitleView;->mIsUseStaticGaussian:Z

    .line 91
    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mUV:[F

    .line 93
    new-instance v0, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v0}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mPos:Lcom/smartisanos/smengine/math/Vector3f;

    .line 113
    iput v1, p0, Lcom/smartisanos/launcher/view/TitleView;->mMode:I

    .line 657
    iput v2, p0, Lcom/smartisanos/launcher/view/TitleView;->mHasDown:I

    .line 122
    sget v0, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mLayoutProperty:Lcom/smartisanos/launcher/data/LayoutProperty;

    .line 124
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mLayoutProperty:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_title_shadow_width:F

    iput v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mWidth:F

    .line 125
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mLayoutProperty:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_title_shadow_height:F

    iput v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mHeight:F

    .line 126
    iput p5, p0, Lcom/smartisanos/launcher/view/TitleView;->mZ:F

    .line 127
    iput-object p6, p0, Lcom/smartisanos/launcher/view/TitleView;->mPage:Lcom/smartisanos/launcher/view/Page;

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "title"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v1

    iget-object v2, p0, Lcom/smartisanos/launcher/view/TitleView;->mPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/view/PageView;->getPageIndex(Lcom/smartisanos/launcher/view/Page;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "long.press.blur"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mGaussianMeshName:Ljava/lang/String;

    .line 130
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/TitleView;->initListener()V

    .line 131
    return-void
.end method

.method static synthetic access$000()Landroid/widget/Toast;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/smartisanos/launcher/view/TitleView;->hidePageToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$002(Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0
    .param p0, "x0"    # Landroid/widget/Toast;

    .prologue
    .line 64
    sput-object p0, Lcom/smartisanos/launcher/view/TitleView;->hidePageToast:Landroid/widget/Toast;

    return-object p0
.end method

.method static synthetic access$100()Landroid/widget/Toast;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/smartisanos/launcher/view/TitleView;->lockPageToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/smartisanos/launcher/view/TitleView;)V
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/TitleView;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/TitleView;->clickOnEditModeHideIconLogic()V

    return-void
.end method

.method static synthetic access$102(Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0
    .param p0, "x0"    # Landroid/widget/Toast;

    .prologue
    .line 64
    sput-object p0, Lcom/smartisanos/launcher/view/TitleView;->lockPageToast:Landroid/widget/Toast;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/smartisanos/launcher/view/TitleView;)Lcom/smartisanos/smengine/RectNode;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/TitleView;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mBackgroundRect:Lcom/smartisanos/smengine/RectNode;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/smartisanos/launcher/view/TitleView;)Lcom/smartisanos/smengine/RectNode;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/TitleView;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mLockIconRect:Lcom/smartisanos/smengine/RectNode;

    return-object v0
.end method

.method static synthetic access$200()Lcom/smartisanos/launcher/LOG;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/smartisanos/launcher/view/TitleView;->log:Lcom/smartisanos/launcher/LOG;

    return-object v0
.end method

.method static synthetic access$300(Lcom/smartisanos/launcher/view/TitleView;)I
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/TitleView;

    .prologue
    .line 64
    iget v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mMode:I

    return v0
.end method

.method static synthetic access$400(Lcom/smartisanos/launcher/view/TitleView;)Lcom/smartisanos/smengine/RectNode;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/TitleView;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mEditIconRect:Lcom/smartisanos/smengine/RectNode;

    return-object v0
.end method

.method static synthetic access$500(Lcom/smartisanos/launcher/view/TitleView;Lcom/smartisanos/smengine/RectNode;)Lcom/smartisanos/smengine/BoundingVolume;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/TitleView;
    .param p1, "x1"    # Lcom/smartisanos/smengine/RectNode;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/TitleView;->getRectIconBV(Lcom/smartisanos/smengine/RectNode;)Lcom/smartisanos/smengine/BoundingVolume;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/smartisanos/launcher/view/TitleView;)Lcom/smartisanos/launcher/view/Page;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/TitleView;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mPage:Lcom/smartisanos/launcher/view/Page;

    return-object v0
.end method

.method static synthetic access$700(Lcom/smartisanos/launcher/view/TitleView;)V
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/TitleView;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/TitleView;->onEditTitle()V

    return-void
.end method

.method static synthetic access$800(Lcom/smartisanos/launcher/view/TitleView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/TitleView;

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mIsAnimating:Z

    return v0
.end method

.method static synthetic access$802(Lcom/smartisanos/launcher/view/TitleView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/TitleView;
    .param p1, "x1"    # Z

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/TitleView;->mIsAnimating:Z

    return p1
.end method

.method static synthetic access$900(Lcom/smartisanos/launcher/view/TitleView;)Lcom/smartisanos/smengine/RectNode;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/TitleView;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mEyeIconRect:Lcom/smartisanos/smengine/RectNode;

    return-object v0
.end method

.method private clickOnEditModeHideIconLogic()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 273
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/launcher/view/TitleView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v1, "clickOnEditModeHideIconLogic begin !"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Page;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 284
    :cond_1
    :goto_0
    return-void

    .line 277
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Page;->getPageStatus()I

    move-result v0

    if-nez v0, :cond_3

    .line 278
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v0, v2, v2, v2, v3}, Lcom/smartisanos/launcher/view/Page;->setPageStatus(IZZZ)V

    .line 279
    invoke-virtual {p0, v2}, Lcom/smartisanos/launcher/view/TitleView;->setEyeState(Z)V

    goto :goto_0

    .line 280
    :cond_3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Page;->getPageStatus()I

    move-result v0

    if-ne v2, v0, :cond_1

    .line 281
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v0, v3, v2, v2, v3}, Lcom/smartisanos/launcher/view/Page;->setPageStatus(IZZZ)V

    .line 282
    invoke-virtual {p0, v3}, Lcom/smartisanos/launcher/view/TitleView;->setEyeState(Z)V

    goto :goto_0
.end method

.method private clickOnEditModeLockIconLogic()V
    .locals 0

    .prologue
    .line 288
    return-void
.end method

.method private createBackShadowNode()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 564
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/TitleView;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_bgshadow"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/smartisanos/launcher/view/TitleView;->mWidth:F

    float-to-int v5, v5

    int-to-float v5, v5

    iget v6, p0, Lcom/smartisanos/launcher/view/TitleView;->mHeight:F

    float-to-int v6, v6

    int-to-float v6, v6

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7, v8}, Lcom/smartisanos/smengine/RectNode;->createSimpleTextureRect(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/RectNode;

    move-result-object v4

    iput-object v4, p0, Lcom/smartisanos/launcher/view/TitleView;->mBackShadowRect:Lcom/smartisanos/smengine/RectNode;

    .line 567
    const-string v4, "TextureModularColorMaterial"

    invoke-static {v4}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v1

    .line 568
    .local v1, "m":Lcom/smartisanos/smengine/mymaterial/Material;
    iget-object v4, p0, Lcom/smartisanos/launcher/view/TitleView;->mBackShadowRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v4, v1}, Lcom/smartisanos/smengine/RectNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 570
    iget-object v4, p0, Lcom/smartisanos/launcher/view/TitleView;->mBackShadowRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/smartisanos/smengine/RenderState;->setIsPolygonOffset(Z)V

    .line 571
    iget-object v4, p0, Lcom/smartisanos/launcher/view/TitleView;->mBackShadowRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v4

    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v6, -0x40000000    # -2.0f

    invoke-virtual {v4, v5, v6}, Lcom/smartisanos/smengine/RenderState;->setPolygonOffsetFactorUnits(FF)V

    .line 572
    iget-object v4, p0, Lcom/smartisanos/launcher/view/TitleView;->mBackShadowRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/smartisanos/smengine/RenderState;->setIsEnableDepthTest(Z)V

    .line 573
    iget-object v4, p0, Lcom/smartisanos/launcher/view/TitleView;->mBackShadowRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/smartisanos/smengine/RenderState;->setIsUseVBO(Z)V

    .line 574
    iget-object v4, p0, Lcom/smartisanos/launcher/view/TitleView;->mBackShadowRect:Lcom/smartisanos/smengine/RectNode;

    const-string v5, "title_shadow.png"

    invoke-static {v5, v8}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/smartisanos/smengine/RectNode;->setImageName(Ljava/lang/String;)V

    .line 575
    iget-boolean v4, p0, Lcom/smartisanos/launcher/view/TitleView;->mIsDrawShadowWithBatch:Z

    if-eqz v4, :cond_0

    .line 577
    iget-object v4, p0, Lcom/smartisanos/launcher/view/TitleView;->mBackShadowRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/smartisanos/smengine/RenderState;->setIsEnableBlend(Z)V

    .line 578
    iget-object v4, p0, Lcom/smartisanos/launcher/view/TitleView;->mBackShadowRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v4, v9}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    .line 579
    iget-object v4, p0, Lcom/smartisanos/launcher/view/TitleView;->mBackShadowRect:Lcom/smartisanos/smengine/RectNode;

    iget-object v5, p0, Lcom/smartisanos/launcher/view/TitleView;->mRenderTarget:Lcom/smartisanos/smengine/RenderTarget;

    invoke-virtual {v4, v5}, Lcom/smartisanos/smengine/RectNode;->setRenderTarget(Lcom/smartisanos/smengine/RenderTarget;)V

    .line 580
    iget-object v4, p0, Lcom/smartisanos/launcher/view/TitleView;->mRenderTarget:Lcom/smartisanos/smengine/RenderTarget;

    invoke-virtual {v4, v9, v9}, Lcom/smartisanos/smengine/RenderTarget;->getViewPort(II)Lcom/smartisanos/smengine/ViewPort;

    move-result-object v3

    .line 581
    .local v3, "vp":Lcom/smartisanos/smengine/ViewPort;
    iget-object v4, p0, Lcom/smartisanos/launcher/view/TitleView;->mBackShadowRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/ViewPort;->x()I

    move-result v5

    invoke-virtual {v3}, Lcom/smartisanos/smengine/ViewPort;->y()I

    move-result v6

    invoke-virtual {v3}, Lcom/smartisanos/smengine/ViewPort;->w()I

    move-result v7

    invoke-virtual {v3}, Lcom/smartisanos/smengine/ViewPort;->h()I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/smartisanos/smengine/RectNode;->setViewPort(IIII)V

    .line 589
    .end local v3    # "vp":Lcom/smartisanos/smengine/ViewPort;
    :goto_0
    iget-object v4, p0, Lcom/smartisanos/launcher/view/TitleView;->mPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Page;->getLayStatus()I

    move-result v0

    .line 590
    .local v0, "layerStatus":I
    invoke-static {}, Lcom/smartisanos/launcher/view/LayerManager;->getInstance()Lcom/smartisanos/launcher/view/LayerManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/smartisanos/launcher/view/LayerManager;->getPageLayer(I)Lcom/smartisanos/launcher/view/LayerManager$PageLayer;

    move-result-object v2

    .line 591
    .local v2, "pageLayer":Lcom/smartisanos/launcher/view/LayerManager$PageLayer;
    iget-object v4, p0, Lcom/smartisanos/launcher/view/TitleView;->mBackShadowRect:Lcom/smartisanos/smengine/RectNode;

    iget v5, v2, Lcom/smartisanos/launcher/view/LayerManager$PageLayer;->TITLE_BACK_SHADOW_LAYER:I

    invoke-virtual {v4, v5}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 592
    iget-object v4, p0, Lcom/smartisanos/launcher/view/TitleView;->mBackShadowRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/RectNode;->updateGeometricState()V

    .line 593
    iget-object v4, p0, Lcom/smartisanos/launcher/view/TitleView;->mBackShadowRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/smartisanos/smengine/RenderState;->setBlendMode(I)V

    .line 594
    return-void

    .line 583
    .end local v0    # "layerStatus":I
    .end local v2    # "pageLayer":Lcom/smartisanos/launcher/view/LayerManager$PageLayer;
    :cond_0
    iget-object v4, p0, Lcom/smartisanos/launcher/view/TitleView;->mBackShadowRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/smartisanos/smengine/RenderState;->setIsEnableBlend(Z)V

    .line 585
    iget-object v4, p0, Lcom/smartisanos/launcher/view/TitleView;->mBackShadowRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v4, v8}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    .line 586
    iget-object v4, p0, Lcom/smartisanos/launcher/view/TitleView;->mBackShadowRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v4, v10}, Lcom/smartisanos/smengine/RectNode;->setRenderTarget(Lcom/smartisanos/smengine/RenderTarget;)V

    .line 587
    iget-object v4, p0, Lcom/smartisanos/launcher/view/TitleView;->mBackShadowRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v4, v10}, Lcom/smartisanos/smengine/RectNode;->setViewPort(Lcom/smartisanos/smengine/ViewPort;)V

    goto :goto_0
.end method

.method private createBackgroundNode()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 597
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/TitleView;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_bg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/smartisanos/launcher/view/TitleView;->mLayoutProperty:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v5, v5, Lcom/smartisanos/launcher/data/LayoutProperty;->page_title_width:F

    iget-object v6, p0, Lcom/smartisanos/launcher/view/TitleView;->mLayoutProperty:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v6, v6, Lcom/smartisanos/launcher/data/LayoutProperty;->page_title_height:F

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7, v8}, Lcom/smartisanos/smengine/RectNode;->createSimpleTextureRect(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/RectNode;

    move-result-object v4

    iput-object v4, p0, Lcom/smartisanos/launcher/view/TitleView;->mBackgroundRect:Lcom/smartisanos/smengine/RectNode;

    .line 599
    iget-object v4, p0, Lcom/smartisanos/launcher/view/TitleView;->mBackgroundRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v4, v9}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    .line 600
    iget-object v4, p0, Lcom/smartisanos/launcher/view/TitleView;->mBackgroundRect:Lcom/smartisanos/smengine/RectNode;

    iget-object v5, p0, Lcom/smartisanos/launcher/view/TitleView;->mRenderTarget:Lcom/smartisanos/smengine/RenderTarget;

    invoke-virtual {v4, v5}, Lcom/smartisanos/smengine/RectNode;->setRenderTarget(Lcom/smartisanos/smengine/RenderTarget;)V

    .line 602
    iget-object v4, p0, Lcom/smartisanos/launcher/view/TitleView;->mBackgroundRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/smartisanos/smengine/RenderState;->setIsPolygonOffset(Z)V

    .line 603
    iget-object v4, p0, Lcom/smartisanos/launcher/view/TitleView;->mBackgroundRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v4

    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v6, -0x40000000    # -2.0f

    invoke-virtual {v4, v5, v6}, Lcom/smartisanos/smengine/RenderState;->setPolygonOffsetFactorUnits(FF)V

    .line 605
    iget-object v4, p0, Lcom/smartisanos/launcher/view/TitleView;->mBackgroundRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/smartisanos/smengine/RenderState;->setIsEnableBlend(Z)V

    .line 606
    iget-object v4, p0, Lcom/smartisanos/launcher/view/TitleView;->mBackgroundRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/smartisanos/smengine/RenderState;->setBlendMode(I)V

    .line 607
    iget-object v4, p0, Lcom/smartisanos/launcher/view/TitleView;->mBackgroundRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/smartisanos/smengine/RenderState;->setIsEnableDepthTest(Z)V

    .line 608
    iget-object v4, p0, Lcom/smartisanos/launcher/view/TitleView;->mBackgroundRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/smartisanos/smengine/RenderState;->setIsUseVBO(Z)V

    .line 610
    const-string v4, "TextureModularColorMaterial"

    invoke-static {v4}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v1

    .line 611
    .local v1, "m":Lcom/smartisanos/smengine/mymaterial/Material;
    iget-object v4, p0, Lcom/smartisanos/launcher/view/TitleView;->mBackgroundRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v4, v1}, Lcom/smartisanos/smengine/RectNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 612
    iget-object v4, p0, Lcom/smartisanos/launcher/view/TitleView;->mBackgroundRect:Lcom/smartisanos/smengine/RectNode;

    const-string v5, "title.png"

    invoke-static {v5, v8}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/smartisanos/smengine/RectNode;->setImageName(Ljava/lang/String;)V

    .line 613
    iget-object v4, p0, Lcom/smartisanos/launcher/view/TitleView;->mRenderTarget:Lcom/smartisanos/smengine/RenderTarget;

    invoke-virtual {v4, v9, v9}, Lcom/smartisanos/smengine/RenderTarget;->getViewPort(II)Lcom/smartisanos/smengine/ViewPort;

    move-result-object v3

    .line 614
    .local v3, "vp":Lcom/smartisanos/smengine/ViewPort;
    iget-object v4, p0, Lcom/smartisanos/launcher/view/TitleView;->mBackgroundRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/ViewPort;->x()I

    move-result v5

    invoke-virtual {v3}, Lcom/smartisanos/smengine/ViewPort;->y()I

    move-result v6

    invoke-virtual {v3}, Lcom/smartisanos/smengine/ViewPort;->w()I

    move-result v7

    invoke-virtual {v3}, Lcom/smartisanos/smengine/ViewPort;->h()I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/smartisanos/smengine/RectNode;->setViewPort(IIII)V

    .line 615
    iget-object v4, p0, Lcom/smartisanos/launcher/view/TitleView;->mBackgroundRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/RectNode;->updateGeometricState()V

    .line 616
    iget-object v4, p0, Lcom/smartisanos/launcher/view/TitleView;->mPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Page;->getLayStatus()I

    move-result v0

    .line 617
    .local v0, "layerStatus":I
    invoke-static {}, Lcom/smartisanos/launcher/view/LayerManager;->getInstance()Lcom/smartisanos/launcher/view/LayerManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/smartisanos/launcher/view/LayerManager;->getPageLayer(I)Lcom/smartisanos/launcher/view/LayerManager$PageLayer;

    move-result-object v2

    .line 618
    .local v2, "pageLayer":Lcom/smartisanos/launcher/view/LayerManager$PageLayer;
    iget-object v4, p0, Lcom/smartisanos/launcher/view/TitleView;->mBackgroundRect:Lcom/smartisanos/smengine/RectNode;

    iget v5, v2, Lcom/smartisanos/launcher/view/LayerManager$PageLayer;->TITLE_VIEW_BG_LAYER:I

    invoke-virtual {v4, v5}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 619
    return-void
.end method

.method private createBoundingRect()V
    .locals 6

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 556
    iget-object v2, p0, Lcom/smartisanos/launcher/view/TitleView;->mLayoutProperty:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v1, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->page_title_width:F

    .line 557
    .local v1, "width":F
    iget-object v2, p0, Lcom/smartisanos/launcher/view/TitleView;->mLayoutProperty:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v0, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->page_title_height:F

    .line 559
    .local v0, "height":F
    neg-float v2, v1

    div-float/2addr v2, v5

    neg-float v3, v0

    div-float/2addr v3, v5

    div-float v4, v1, v5

    div-float v5, v0, v5

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/smartisanos/launcher/view/TitleView;->setLocalBoundingVolume(FFFF)V

    .line 560
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/TitleView;->updateWorldBoundingVolume()V

    .line 561
    return-void
.end method

.method private createEditIconNode()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 885
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/TitleView;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_editIcon"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/smartisanos/launcher/view/TitleView;->mLayoutProperty:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v5, v5, Lcom/smartisanos/launcher/data/LayoutProperty;->edit_icon_width:F

    iget-object v6, p0, Lcom/smartisanos/launcher/view/TitleView;->mLayoutProperty:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v6, v6, Lcom/smartisanos/launcher/data/LayoutProperty;->edit_icon_height:F

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7, v8}, Lcom/smartisanos/smengine/RectNode;->createSimpleTextureRect(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/RectNode;

    move-result-object v4

    iput-object v4, p0, Lcom/smartisanos/launcher/view/TitleView;->mEditIconRect:Lcom/smartisanos/smengine/RectNode;

    .line 888
    const-string v4, "TextureModularColorMaterial"

    invoke-static {v4}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v1

    .line 889
    .local v1, "m":Lcom/smartisanos/smengine/mymaterial/Material;
    iget-object v4, p0, Lcom/smartisanos/launcher/view/TitleView;->mEditIconRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v4, v1}, Lcom/smartisanos/smengine/RectNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 890
    iget-object v4, p0, Lcom/smartisanos/launcher/view/TitleView;->mEditIconRect:Lcom/smartisanos/smengine/RectNode;

    const-string v5, "edit_icon.png"

    invoke-static {v5, v8}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/smartisanos/smengine/RectNode;->setImageName(Ljava/lang/String;)V

    .line 891
    iget-object v4, p0, Lcom/smartisanos/launcher/view/TitleView;->mEditIconRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v4, v9}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    .line 893
    iget-object v4, p0, Lcom/smartisanos/launcher/view/TitleView;->mEditIconRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/smartisanos/smengine/RenderState;->setIsPolygonOffset(Z)V

    .line 894
    iget-object v4, p0, Lcom/smartisanos/launcher/view/TitleView;->mEditIconRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v4

    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v6, -0x40000000    # -2.0f

    invoke-virtual {v4, v5, v6}, Lcom/smartisanos/smengine/RenderState;->setPolygonOffsetFactorUnits(FF)V

    .line 895
    iget-object v4, p0, Lcom/smartisanos/launcher/view/TitleView;->mEditIconRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/smartisanos/smengine/RenderState;->setIsEnableBlend(Z)V

    .line 896
    iget-object v4, p0, Lcom/smartisanos/launcher/view/TitleView;->mEditIconRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/smartisanos/smengine/RenderState;->setBlendMode(I)V

    .line 897
    iget-object v4, p0, Lcom/smartisanos/launcher/view/TitleView;->mEditIconRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/smartisanos/smengine/RenderState;->setIsEnableDepthTest(Z)V

    .line 898
    iget-object v4, p0, Lcom/smartisanos/launcher/view/TitleView;->mEditIconRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/smartisanos/smengine/RenderState;->setIsUseVBO(Z)V

    .line 899
    iget-object v4, p0, Lcom/smartisanos/launcher/view/TitleView;->mEditIconRect:Lcom/smartisanos/smengine/RectNode;

    iget-object v5, p0, Lcom/smartisanos/launcher/view/TitleView;->mRenderTarget:Lcom/smartisanos/smengine/RenderTarget;

    invoke-virtual {v4, v5}, Lcom/smartisanos/smengine/RectNode;->setRenderTarget(Lcom/smartisanos/smengine/RenderTarget;)V

    .line 900
    iget-object v4, p0, Lcom/smartisanos/launcher/view/TitleView;->mRenderTarget:Lcom/smartisanos/smengine/RenderTarget;

    invoke-virtual {v4, v9, v9}, Lcom/smartisanos/smengine/RenderTarget;->getViewPort(II)Lcom/smartisanos/smengine/ViewPort;

    move-result-object v3

    .line 901
    .local v3, "vp":Lcom/smartisanos/smengine/ViewPort;
    iget-object v4, p0, Lcom/smartisanos/launcher/view/TitleView;->mEditIconRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/ViewPort;->x()I

    move-result v5

    invoke-virtual {v3}, Lcom/smartisanos/smengine/ViewPort;->y()I

    move-result v6

    invoke-virtual {v3}, Lcom/smartisanos/smengine/ViewPort;->w()I

    move-result v7

    invoke-virtual {v3}, Lcom/smartisanos/smengine/ViewPort;->h()I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/smartisanos/smengine/RectNode;->setViewPort(IIII)V

    .line 902
    iget-object v4, p0, Lcom/smartisanos/launcher/view/TitleView;->mPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Page;->getLayStatus()I

    move-result v0

    .line 903
    .local v0, "layerStatus":I
    invoke-static {}, Lcom/smartisanos/launcher/view/LayerManager;->getInstance()Lcom/smartisanos/launcher/view/LayerManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/smartisanos/launcher/view/LayerManager;->getPageLayer(I)Lcom/smartisanos/launcher/view/LayerManager$PageLayer;

    move-result-object v2

    .line 904
    .local v2, "pageLayer":Lcom/smartisanos/launcher/view/LayerManager$PageLayer;
    iget-object v4, p0, Lcom/smartisanos/launcher/view/TitleView;->mEditIconRect:Lcom/smartisanos/smengine/RectNode;

    iget v5, v2, Lcom/smartisanos/launcher/view/LayerManager$PageLayer;->TITLE_VIEW_EDIT_ICON_LAYER:I

    invoke-virtual {v4, v5}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 905
    iget-object v4, p0, Lcom/smartisanos/launcher/view/TitleView;->mEditIconRect:Lcom/smartisanos/smengine/RectNode;

    sget-object v5, Lcom/smartisanos/launcher/data/Constants;->sResColorForLight:Lcom/smartisanos/smengine/math/Vector4f;

    iget v5, v5, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    sget-object v6, Lcom/smartisanos/launcher/data/Constants;->sResColorForLight:Lcom/smartisanos/smengine/math/Vector4f;

    iget v6, v6, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    sget-object v7, Lcom/smartisanos/launcher/data/Constants;->sResColorForLight:Lcom/smartisanos/smengine/math/Vector4f;

    iget v7, v7, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    sget-object v8, Lcom/smartisanos/launcher/data/Constants;->sResColorForLight:Lcom/smartisanos/smengine/math/Vector4f;

    iget v8, v8, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 907
    return-void
.end method

.method private createEyeIconNode()V
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x0

    const v10, 0x3e4ccccd    # 0.2f

    const/4 v9, 0x1

    .line 922
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 923
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/TitleView;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_editIcon"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/smartisanos/launcher/view/TitleView;->mLayoutProperty:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v6, v6, Lcom/smartisanos/launcher/data/LayoutProperty;->eye_icon_width:F

    iget-object v7, p0, Lcom/smartisanos/launcher/view/TitleView;->mLayoutProperty:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v7, v7, Lcom/smartisanos/launcher/data/LayoutProperty;->eye_icon_height:F

    const/4 v8, 0x0

    .line 922
    invoke-static {v5, v6, v7, v8, v9}, Lcom/smartisanos/smengine/RectNode;->createSimpleTextureRect(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/RectNode;

    move-result-object v5

    iput-object v5, p0, Lcom/smartisanos/launcher/view/TitleView;->mEyeIconRect:Lcom/smartisanos/smengine/RectNode;

    .line 925
    const-string v5, "TextureModularColorMaterial"

    invoke-static {v5}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v1

    .line 926
    .local v1, "m":Lcom/smartisanos/smengine/mymaterial/Material;
    iget-object v5, p0, Lcom/smartisanos/launcher/view/TitleView;->mEyeIconRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v5, v1}, Lcom/smartisanos/smengine/RectNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 927
    const-string v3, "eye-anim/eye_icon_0001.png"

    .line 928
    .local v3, "texture":Ljava/lang/String;
    iget-object v5, p0, Lcom/smartisanos/launcher/view/TitleView;->mPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Page;->getPageStatus()I

    move-result v5

    if-ne v9, v5, :cond_0

    .line 929
    const-string v3, "eye-anim/eye_icon_0016.png"

    .line 931
    :cond_0
    iget-object v5, p0, Lcom/smartisanos/launcher/view/TitleView;->mEyeIconRect:Lcom/smartisanos/smengine/RectNode;

    invoke-static {v3, v9}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/smartisanos/smengine/RectNode;->setImageName(Ljava/lang/String;)V

    .line 932
    iget-object v5, p0, Lcom/smartisanos/launcher/view/TitleView;->mEyeIconRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v5, v11}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    .line 934
    iget-object v5, p0, Lcom/smartisanos/launcher/view/TitleView;->mEyeIconRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v5}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/smartisanos/smengine/RenderState;->setIsPolygonOffset(Z)V

    .line 935
    iget-object v5, p0, Lcom/smartisanos/launcher/view/TitleView;->mEyeIconRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v5}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v5

    const/high16 v6, -0x40800000    # -1.0f

    const/high16 v7, -0x40000000    # -2.0f

    invoke-virtual {v5, v6, v7}, Lcom/smartisanos/smengine/RenderState;->setPolygonOffsetFactorUnits(FF)V

    .line 936
    iget-object v5, p0, Lcom/smartisanos/launcher/view/TitleView;->mEyeIconRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v5}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/smartisanos/smengine/RenderState;->setIsEnableBlend(Z)V

    .line 937
    iget-object v5, p0, Lcom/smartisanos/launcher/view/TitleView;->mEyeIconRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v5}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/smartisanos/smengine/RenderState;->setIsEnableDepthTest(Z)V

    .line 938
    iget-object v5, p0, Lcom/smartisanos/launcher/view/TitleView;->mEyeIconRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v5}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v5

    invoke-virtual {v5, v12}, Lcom/smartisanos/smengine/RenderState;->setBlendMode(I)V

    .line 939
    iget-object v5, p0, Lcom/smartisanos/launcher/view/TitleView;->mEyeIconRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v5}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/smartisanos/smengine/RenderState;->setIsUseVBO(Z)V

    .line 940
    iget-object v5, p0, Lcom/smartisanos/launcher/view/TitleView;->mEyeIconRect:Lcom/smartisanos/smengine/RectNode;

    iget-object v6, p0, Lcom/smartisanos/launcher/view/TitleView;->mRenderTarget:Lcom/smartisanos/smengine/RenderTarget;

    invoke-virtual {v5, v6}, Lcom/smartisanos/smengine/RectNode;->setRenderTarget(Lcom/smartisanos/smengine/RenderTarget;)V

    .line 941
    iget-object v5, p0, Lcom/smartisanos/launcher/view/TitleView;->mRenderTarget:Lcom/smartisanos/smengine/RenderTarget;

    invoke-virtual {v5, v11, v11}, Lcom/smartisanos/smengine/RenderTarget;->getViewPort(II)Lcom/smartisanos/smengine/ViewPort;

    move-result-object v4

    .line 942
    .local v4, "vp":Lcom/smartisanos/smengine/ViewPort;
    iget-object v5, p0, Lcom/smartisanos/launcher/view/TitleView;->mEyeIconRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/ViewPort;->x()I

    move-result v6

    invoke-virtual {v4}, Lcom/smartisanos/smengine/ViewPort;->y()I

    move-result v7

    invoke-virtual {v4}, Lcom/smartisanos/smengine/ViewPort;->w()I

    move-result v8

    invoke-virtual {v4}, Lcom/smartisanos/smengine/ViewPort;->h()I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/smartisanos/smengine/RectNode;->setViewPort(IIII)V

    .line 943
    iget-object v5, p0, Lcom/smartisanos/launcher/view/TitleView;->mPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Page;->getPageStatus()I

    move-result v5

    if-ne v12, v5, :cond_2

    .line 944
    const/high16 v5, 0x3f800000    # 1.0f

    sget-object v6, Lcom/smartisanos/launcher/data/Constants;->sResColorForLight:Lcom/smartisanos/smengine/math/Vector4f;

    iget v6, v6, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_1

    .line 945
    iget-object v5, p0, Lcom/smartisanos/launcher/view/TitleView;->mEyeIconRect:Lcom/smartisanos/smengine/RectNode;

    sget-object v6, Lcom/smartisanos/launcher/data/Constants;->sResColorForLight:Lcom/smartisanos/smengine/math/Vector4f;

    iget v6, v6, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    sget-object v7, Lcom/smartisanos/launcher/data/Constants;->sResColorForLight:Lcom/smartisanos/smengine/math/Vector4f;

    iget v7, v7, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    sget-object v8, Lcom/smartisanos/launcher/data/Constants;->sResColorForLight:Lcom/smartisanos/smengine/math/Vector4f;

    iget v8, v8, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    invoke-virtual {v5, v6, v7, v8, v10}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 954
    :goto_0
    iget-object v5, p0, Lcom/smartisanos/launcher/view/TitleView;->mPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Page;->getLayStatus()I

    move-result v0

    .line 955
    .local v0, "layerStatus":I
    invoke-static {}, Lcom/smartisanos/launcher/view/LayerManager;->getInstance()Lcom/smartisanos/launcher/view/LayerManager;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/smartisanos/launcher/view/LayerManager;->getPageLayer(I)Lcom/smartisanos/launcher/view/LayerManager$PageLayer;

    move-result-object v2

    .line 956
    .local v2, "pageLayer":Lcom/smartisanos/launcher/view/LayerManager$PageLayer;
    iget-object v5, p0, Lcom/smartisanos/launcher/view/TitleView;->mEyeIconRect:Lcom/smartisanos/smengine/RectNode;

    iget v6, v2, Lcom/smartisanos/launcher/view/LayerManager$PageLayer;->TITLE_VIEW_EYE_ICON_LAYER:I

    invoke-virtual {v5, v6}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 957
    return-void

    .line 948
    .end local v0    # "layerStatus":I
    .end local v2    # "pageLayer":Lcom/smartisanos/launcher/view/LayerManager$PageLayer;
    :cond_1
    iget-object v5, p0, Lcom/smartisanos/launcher/view/TitleView;->mEyeIconRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v5, v10, v10, v10, v10}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    goto :goto_0

    .line 951
    :cond_2
    iget-object v5, p0, Lcom/smartisanos/launcher/view/TitleView;->mEyeIconRect:Lcom/smartisanos/smengine/RectNode;

    sget-object v6, Lcom/smartisanos/launcher/data/Constants;->sResColorForLight:Lcom/smartisanos/smengine/math/Vector4f;

    iget v6, v6, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    sget-object v7, Lcom/smartisanos/launcher/data/Constants;->sResColorForLight:Lcom/smartisanos/smengine/math/Vector4f;

    iget v7, v7, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    sget-object v8, Lcom/smartisanos/launcher/data/Constants;->sResColorForLight:Lcom/smartisanos/smengine/math/Vector4f;

    iget v8, v8, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    sget-object v9, Lcom/smartisanos/launcher/data/Constants;->sResColorForLight:Lcom/smartisanos/smengine/math/Vector4f;

    iget v9, v9, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    goto :goto_0
.end method

.method private createGaussianNode()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 622
    iget-object v5, p0, Lcom/smartisanos/launcher/view/TitleView;->mGaussianRect:Lcom/smartisanos/smengine/RectNode;

    if-nez v5, :cond_0

    .line 623
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/TitleView;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_gaussian"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/smartisanos/launcher/view/TitleView;->mLayoutProperty:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v6, v6, Lcom/smartisanos/launcher/data/LayoutProperty;->page_title_width:F

    iget-object v7, p0, Lcom/smartisanos/launcher/view/TitleView;->mLayoutProperty:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v7, v7, Lcom/smartisanos/launcher/data/LayoutProperty;->page_title_height:F

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Lcom/smartisanos/smengine/RectNode;->createSimpleTextureRect(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/RectNode;

    move-result-object v5

    iput-object v5, p0, Lcom/smartisanos/launcher/view/TitleView;->mGaussianRect:Lcom/smartisanos/smengine/RectNode;

    .line 626
    const-string v5, "TextureMaskModularMaterial"

    invoke-static {v5}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v1

    .line 627
    .local v1, "m":Lcom/smartisanos/smengine/mymaterial/Material;
    iget-object v5, p0, Lcom/smartisanos/launcher/view/TitleView;->mGaussianRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v5, v1}, Lcom/smartisanos/smengine/RectNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 629
    iget-object v5, p0, Lcom/smartisanos/launcher/view/TitleView;->mGaussianRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v5, v9}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    .line 630
    iget-object v5, p0, Lcom/smartisanos/launcher/view/TitleView;->mGaussianRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v5}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/smartisanos/smengine/RenderState;->setIsPolygonOffset(Z)V

    .line 631
    iget-object v5, p0, Lcom/smartisanos/launcher/view/TitleView;->mGaussianRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v5}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v5

    const/high16 v6, -0x40800000    # -1.0f

    const/high16 v7, -0x40000000    # -2.0f

    invoke-virtual {v5, v6, v7}, Lcom/smartisanos/smengine/RenderState;->setPolygonOffsetFactorUnits(FF)V

    .line 632
    iget-object v5, p0, Lcom/smartisanos/launcher/view/TitleView;->mGaussianRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v5}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/smartisanos/smengine/RenderState;->setIsEnableBlend(Z)V

    .line 633
    iget-object v5, p0, Lcom/smartisanos/launcher/view/TitleView;->mGaussianRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v5}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/smartisanos/smengine/RenderState;->setBlendMode(I)V

    .line 634
    iget-object v5, p0, Lcom/smartisanos/launcher/view/TitleView;->mGaussianRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v5}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/smartisanos/smengine/RenderState;->setIsEnableDepthTest(Z)V

    .line 635
    iget-object v5, p0, Lcom/smartisanos/launcher/view/TitleView;->mGaussianRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v5}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/smartisanos/smengine/RenderState;->setIsUseVBO(Z)V

    .line 637
    iget-object v5, p0, Lcom/smartisanos/launcher/view/TitleView;->mGaussianRect:Lcom/smartisanos/smengine/RectNode;

    const-string v6, "t_blur_background"

    invoke-virtual {v5, v6}, Lcom/smartisanos/smengine/RectNode;->setImageName(Ljava/lang/String;)V

    .line 638
    iget-object v5, p0, Lcom/smartisanos/launcher/view/TitleView;->mGaussianRect:Lcom/smartisanos/smengine/RectNode;

    const-string v6, "title_mask.png"

    invoke-static {v6, v9}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v9, v6}, Lcom/smartisanos/smengine/RectNode;->setTextureName(ILjava/lang/String;)V

    .line 639
    iget-object v5, p0, Lcom/smartisanos/launcher/view/TitleView;->mPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Page;->getLayStatus()I

    move-result v0

    .line 640
    .local v0, "layerStatus":I
    invoke-static {}, Lcom/smartisanos/launcher/view/LayerManager;->getInstance()Lcom/smartisanos/launcher/view/LayerManager;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/smartisanos/launcher/view/LayerManager;->getPageLayer(I)Lcom/smartisanos/launcher/view/LayerManager$PageLayer;

    move-result-object v3

    .line 641
    .local v3, "pageLayer":Lcom/smartisanos/launcher/view/LayerManager$PageLayer;
    iget-object v5, p0, Lcom/smartisanos/launcher/view/TitleView;->mGaussianRect:Lcom/smartisanos/smengine/RectNode;

    iget v6, v3, Lcom/smartisanos/launcher/view/LayerManager$PageLayer;->TITLE_GAUSSIAN_LAYER:I

    invoke-virtual {v5, v6}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 642
    iget-object v5, p0, Lcom/smartisanos/launcher/view/TitleView;->mGaussianRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {p0, v5}, Lcom/smartisanos/launcher/view/TitleView;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 643
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/smengine/World;->getMeshManager()Lcom/smartisanos/smengine/MeshManager;

    move-result-object v5

    iget-object v6, p0, Lcom/smartisanos/launcher/view/TitleView;->mGaussianMeshName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/smartisanos/smengine/MeshManager;->getMesh(Ljava/lang/String;)Lcom/smartisanos/smengine/Mesh;

    move-result-object v2

    .line 644
    .local v2, "newMesh":Lcom/smartisanos/smengine/Mesh;
    if-nez v2, :cond_1

    .line 645
    iget-object v5, p0, Lcom/smartisanos/launcher/view/TitleView;->mGaussianRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v5}, Lcom/smartisanos/smengine/RectNode;->getMesh()Lcom/smartisanos/smengine/Mesh;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/smengine/Mesh;->clone()Lcom/smartisanos/smengine/Mesh;

    move-result-object v2

    .line 646
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/smengine/World;->getMeshManager()Lcom/smartisanos/smengine/MeshManager;

    move-result-object v5

    iget-object v6, p0, Lcom/smartisanos/launcher/view/TitleView;->mGaussianMeshName:Ljava/lang/String;

    invoke-virtual {v5, v6, v2}, Lcom/smartisanos/smengine/MeshManager;->addMesh(Ljava/lang/String;Lcom/smartisanos/smengine/Mesh;)Lcom/smartisanos/smengine/Mesh;

    .line 647
    iget-object v5, p0, Lcom/smartisanos/launcher/view/TitleView;->mGaussianRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v5, v2}, Lcom/smartisanos/smengine/RectNode;->setMesh(Lcom/smartisanos/smengine/Mesh;)V

    .line 648
    const/16 v5, 0x8

    new-array v4, v5, [F

    fill-array-data v4, :array_0

    .line 649
    .local v4, "shadowUV":[F
    const/4 v5, 0x3

    invoke-virtual {v2, v5, v4}, Lcom/smartisanos/smengine/Mesh;->setTexVertexArray(I[F)V

    .line 653
    .end local v4    # "shadowUV":[F
    :goto_0
    iget-object v5, p0, Lcom/smartisanos/launcher/view/TitleView;->mGaussianRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v5}, Lcom/smartisanos/smengine/RectNode;->updateGeometricState()V

    .line 655
    .end local v0    # "layerStatus":I
    .end local v1    # "m":Lcom/smartisanos/smengine/mymaterial/Material;
    .end local v2    # "newMesh":Lcom/smartisanos/smengine/Mesh;
    .end local v3    # "pageLayer":Lcom/smartisanos/launcher/view/LayerManager$PageLayer;
    :cond_0
    return-void

    .line 651
    .restart local v0    # "layerStatus":I
    .restart local v1    # "m":Lcom/smartisanos/smengine/mymaterial/Material;
    .restart local v2    # "newMesh":Lcom/smartisanos/smengine/Mesh;
    .restart local v3    # "pageLayer":Lcom/smartisanos/launcher/view/LayerManager$PageLayer;
    :cond_1
    iget-object v5, p0, Lcom/smartisanos/launcher/view/TitleView;->mGaussianRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v5, v2}, Lcom/smartisanos/smengine/RectNode;->setMesh(Lcom/smartisanos/smengine/Mesh;)V

    goto :goto_0

    .line 648
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

.method private createRenderRect()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 731
    iget-object v3, p0, Lcom/smartisanos/launcher/view/TitleView;->mRenderRect:Lcom/smartisanos/smengine/RectNode;

    if-eqz v3, :cond_0

    .line 732
    iget-object v3, p0, Lcom/smartisanos/launcher/view/TitleView;->mRenderRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/RectNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 733
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/smartisanos/launcher/view/TitleView;->mRenderRect:Lcom/smartisanos/smengine/RectNode;

    .line 735
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/TitleView;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_render"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/smartisanos/launcher/view/TitleView;->mLayoutProperty:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v4, v4, Lcom/smartisanos/launcher/data/LayoutProperty;->page_title_shadow_width:F

    iget-object v5, p0, Lcom/smartisanos/launcher/view/TitleView;->mLayoutProperty:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v5, v5, Lcom/smartisanos/launcher/data/LayoutProperty;->page_title_shadow_height:F

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v3, v4, v5, v6, v7}, Lcom/smartisanos/smengine/RectNode;->createSimpleTextureRect(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/RectNode;

    move-result-object v3

    iput-object v3, p0, Lcom/smartisanos/launcher/view/TitleView;->mRenderRect:Lcom/smartisanos/smengine/RectNode;

    .line 738
    const-string v3, "TextureModularColorMaterial"

    invoke-static {v3}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v1

    .line 739
    .local v1, "m":Lcom/smartisanos/smengine/mymaterial/Material;
    iget-object v3, p0, Lcom/smartisanos/launcher/view/TitleView;->mRenderRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v3, v1}, Lcom/smartisanos/smengine/RectNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 740
    iget-object v3, p0, Lcom/smartisanos/launcher/view/TitleView;->mRenderRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v3, v8}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    .line 742
    iget-object v3, p0, Lcom/smartisanos/launcher/view/TitleView;->mRenderRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/smartisanos/smengine/RenderState;->setIsPolygonOffset(Z)V

    .line 743
    iget-object v3, p0, Lcom/smartisanos/launcher/view/TitleView;->mRenderRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v3

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, -0x40000000    # -2.0f

    invoke-virtual {v3, v4, v5}, Lcom/smartisanos/smengine/RenderState;->setPolygonOffsetFactorUnits(FF)V

    .line 744
    iget-object v3, p0, Lcom/smartisanos/launcher/view/TitleView;->mRenderRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/smartisanos/smengine/RenderState;->setIsEnableBlend(Z)V

    .line 745
    iget-object v3, p0, Lcom/smartisanos/launcher/view/TitleView;->mRenderRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/RenderState;->setBlendMode(I)V

    .line 746
    iget-object v3, p0, Lcom/smartisanos/launcher/view/TitleView;->mRenderRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/smartisanos/smengine/RenderState;->setIsEnableDepthTest(Z)V

    .line 747
    iget-object v3, p0, Lcom/smartisanos/launcher/view/TitleView;->mRenderRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/RenderState;->setDepthTestFunc(I)V

    .line 748
    iget-object v3, p0, Lcom/smartisanos/launcher/view/TitleView;->mRenderRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/smartisanos/smengine/RenderState;->setIsUseVBO(Z)V

    .line 749
    iget-object v3, p0, Lcom/smartisanos/launcher/view/TitleView;->mRenderRect:Lcom/smartisanos/smengine/RectNode;

    iget-object v4, p0, Lcom/smartisanos/launcher/view/TitleView;->mRenderTargetTextureName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/RectNode;->setImageName(Ljava/lang/String;)V

    .line 750
    iget-object v3, p0, Lcom/smartisanos/launcher/view/TitleView;->mRenderRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/RectNode;->updateGeometricState()V

    .line 751
    iget-object v3, p0, Lcom/smartisanos/launcher/view/TitleView;->mPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Page;->getLayStatus()I

    move-result v0

    .line 752
    .local v0, "layerStatus":I
    invoke-static {}, Lcom/smartisanos/launcher/view/LayerManager;->getInstance()Lcom/smartisanos/launcher/view/LayerManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/smartisanos/launcher/view/LayerManager;->getPageLayer(I)Lcom/smartisanos/launcher/view/LayerManager$PageLayer;

    move-result-object v2

    .line 753
    .local v2, "pageLayer":Lcom/smartisanos/launcher/view/LayerManager$PageLayer;
    iget-object v3, p0, Lcom/smartisanos/launcher/view/TitleView;->mRenderRect:Lcom/smartisanos/smengine/RectNode;

    iget v4, v2, Lcom/smartisanos/launcher/view/LayerManager$PageLayer;->TITLE_VIEW_RENDER_RECT_LAYER:I

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 754
    return-void
.end method

.method private createRenderTarget()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 481
    invoke-static {}, Lcom/smartisanos/smengine/World;->uid()J

    move-result-wide v4

    .line 482
    .local v4, "uid":J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "_TitleViewRenderTarget"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/smartisanos/launcher/view/TitleView;->mRenderTargetTextureName:Ljava/lang/String;

    .line 483
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/smengine/World;->getTextureManager()Lcom/smartisanos/smengine/TextureManager;

    move-result-object v2

    .line 484
    .local v2, "tm":Lcom/smartisanos/smengine/TextureManager;
    iget-object v3, p0, Lcom/smartisanos/launcher/view/TitleView;->mRenderTargetTextureName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/TextureManager;->deleteTexture(Ljava/lang/String;)V

    .line 485
    new-instance v0, Lcom/smartisanos/smengine/RenderTarget;

    iget-object v3, p0, Lcom/smartisanos/launcher/view/TitleView;->mRenderTargetTextureName:Ljava/lang/String;

    iget v6, p0, Lcom/smartisanos/launcher/view/TitleView;->mWidth:F

    float-to-int v6, v6

    iget v7, p0, Lcom/smartisanos/launcher/view/TitleView;->mHeight:F

    float-to-int v7, v7

    invoke-direct {v0, v3, v6, v7}, Lcom/smartisanos/smengine/RenderTarget;-><init>(Ljava/lang/String;II)V

    .line 487
    .local v0, "rt":Lcom/smartisanos/smengine/RenderTarget;
    iget-boolean v3, p0, Lcom/smartisanos/launcher/view/TitleView;->mUseMipmap:Z

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/RenderTarget;->setUseMipmap(Z)V

    .line 488
    new-instance v1, Lcom/smartisanos/smengine/Texture;

    invoke-direct {v1, v0}, Lcom/smartisanos/smengine/Texture;-><init>(Lcom/smartisanos/smengine/RenderTarget;)V

    .line 489
    .local v1, "tex":Lcom/smartisanos/smengine/Texture;
    iget-boolean v3, p0, Lcom/smartisanos/launcher/view/TitleView;->mUseMipmap:Z

    if-eqz v3, :cond_0

    .line 490
    const/4 v3, 0x3

    invoke-virtual {v1, v3, v8, v8, v8}, Lcom/smartisanos/smengine/Texture;->setTextureState(IIII)V

    .line 496
    :goto_0
    iget-object v3, p0, Lcom/smartisanos/launcher/view/TitleView;->mRenderTargetTextureName:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/smartisanos/smengine/TextureManager;->setTexture(Ljava/lang/String;Lcom/smartisanos/smengine/Texture;)V

    .line 497
    iput-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mRenderTarget:Lcom/smartisanos/smengine/RenderTarget;

    .line 498
    return-void

    .line 493
    :cond_0
    invoke-virtual {v1, v8, v8, v8, v8}, Lcom/smartisanos/smengine/Texture;->setTextureState(IIII)V

    goto :goto_0
.end method

.method private createRenderTargetCamera()V
    .locals 10

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/4 v9, 0x0

    .line 460
    new-instance v0, Lcom/smartisanos/smengine/Camera;

    iget v5, p0, Lcom/smartisanos/launcher/view/TitleView;->mWidth:F

    float-to-int v5, v5

    iget v6, p0, Lcom/smartisanos/launcher/view/TitleView;->mHeight:F

    float-to-int v6, v6

    invoke-direct {v0, v5, v6}, Lcom/smartisanos/smengine/Camera;-><init>(II)V

    .line 461
    .local v0, "c":Lcom/smartisanos/smengine/Camera;
    invoke-static {}, Lcom/smartisanos/launcher/view/LayerManager;->getInstance()Lcom/smartisanos/launcher/view/LayerManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/LayerManager;->openPolygonOffset()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 462
    const/high16 v1, 0x41a00000    # 20.0f

    .line 463
    .local v1, "distance":F
    const v5, 0x42652ee0

    iget v6, p0, Lcom/smartisanos/launcher/view/TitleView;->mHeight:F

    float-to-int v6, v6

    int-to-float v6, v6

    div-float/2addr v6, v7

    invoke-static {v6, v1}, Lcom/smartisanos/smengine/math/FastMath;->atan2(FF)F

    move-result v6

    mul-float v4, v5, v6

    .line 464
    .local v4, "theta":F
    mul-float v5, v4, v7

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Camera;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Camera;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x42480000    # 50.0f

    invoke-virtual {v0, v5, v6, v7, v8}, Lcom/smartisanos/smengine/Camera;->setFrustumPerspective(FFFF)V

    .line 465
    new-instance v5, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v5, v9, v9, v1}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    invoke-virtual {v0, v5}, Lcom/smartisanos/smengine/Camera;->setLocation(Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 475
    .end local v4    # "theta":F
    :goto_0
    new-instance v5, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v5, v9, v9, v9}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    sget-object v6, Lcom/smartisanos/smengine/math/Vector3f;->UNIT_Y:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {v0, v5, v6}, Lcom/smartisanos/smengine/Camera;->lookAt(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 476
    iput-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mRenderTargetCamera:Lcom/smartisanos/smengine/Camera;

    .line 477
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/smengine/World;->getCameraManager()Lcom/smartisanos/smengine/CameraManager;

    move-result-object v5

    const-string v6, "TitleViewCamera"

    invoke-virtual {v5, v6, v0}, Lcom/smartisanos/smengine/CameraManager;->setCamera(Ljava/lang/String;Lcom/smartisanos/smengine/Camera;)V

    .line 478
    return-void

    .line 467
    .end local v1    # "distance":F
    :cond_0
    sget v5, Lcom/smartisanos/launcher/data/Constants;->mainCameraZ:I

    int-to-float v1, v5

    .line 468
    .restart local v1    # "distance":F
    sget v5, Lcom/smartisanos/launcher/data/Constants;->mainCameraNear:I

    int-to-float v3, v5

    .line 469
    .local v3, "near":F
    sget v5, Lcom/smartisanos/launcher/data/Constants;->mainCameraFar:I

    int-to-float v2, v5

    .line 470
    .local v2, "far":F
    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/Camera;->setFrustumNear(F)V

    .line 471
    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/Camera;->setFrustumFar(F)V

    .line 472
    new-instance v5, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v5, v9, v9, v1}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    invoke-virtual {v0, v5}, Lcom/smartisanos/smengine/Camera;->setLocation(Lcom/smartisanos/smengine/math/Vector3f;)V

    goto :goto_0
.end method

.method private createTitleNode()V
    .locals 14

    .prologue
    .line 833
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Page;->getTitleForRect()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/smartisanos/smengine/Texture;->createTextTextureName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 834
    .local v11, "textName":Ljava/lang/String;
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/World;->getTextureManager()Lcom/smartisanos/smengine/TextureManager;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/smartisanos/smengine/TextureManager;->getTexture(Ljava/lang/String;)Lcom/smartisanos/smengine/Texture;

    move-result-object v12

    .line 835
    .local v12, "texture":Lcom/smartisanos/smengine/Texture;
    if-eqz v12, :cond_0

    .line 836
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/World;->getTextureManager()Lcom/smartisanos/smengine/TextureManager;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/smartisanos/smengine/TextureManager;->deleteTexture(Ljava/lang/String;)V

    .line 838
    :cond_0
    sget v0, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v0

    iget v9, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->max_title_name_length:F

    .line 839
    .local v9, "maxWidth":F
    iget v8, p0, Lcom/smartisanos/launcher/view/TitleView;->mHeight:F

    .line 840
    .local v8, "maxHeight":F
    new-instance v0, Lcom/smartisanos/launcher/view/TextView;

    const-string v1, "title-name"

    iget-object v2, p0, Lcom/smartisanos/launcher/view/TitleView;->mPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Page;->getTitleForRect()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    sget-object v4, Lcom/smartisanos/launcher/view/TextView;->sPageTitlePaint:Landroid/graphics/Paint;

    float-to-int v5, v9

    float-to-int v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/smartisanos/launcher/view/TextView;-><init>(Ljava/lang/String;Ljava/lang/String;FLandroid/graphics/Paint;II)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mTextRect:Lcom/smartisanos/launcher/view/TextView;

    .line 843
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mIsDrawTextWithBatch:Z

    if-eqz v0, :cond_2

    .line 844
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mTextRect:Lcom/smartisanos/launcher/view/TextView;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/TitleView;->mRenderTarget:Lcom/smartisanos/smengine/RenderTarget;

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/TextView;->setRenderTarget(Lcom/smartisanos/smengine/RenderTarget;)V

    .line 845
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mRenderTarget:Lcom/smartisanos/smengine/RenderTarget;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/RenderTarget;->getViewPort()Lcom/smartisanos/smengine/ViewPort;

    move-result-object v13

    .line 846
    .local v13, "vp":Lcom/smartisanos/smengine/ViewPort;
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mTextRect:Lcom/smartisanos/launcher/view/TextView;

    invoke-virtual {v13}, Lcom/smartisanos/smengine/ViewPort;->x()I

    move-result v1

    invoke-virtual {v13}, Lcom/smartisanos/smengine/ViewPort;->y()I

    move-result v2

    invoke-virtual {v13}, Lcom/smartisanos/smengine/ViewPort;->w()I

    move-result v3

    invoke-virtual {v13}, Lcom/smartisanos/smengine/ViewPort;->h()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/smartisanos/launcher/view/TextView;->setViewPort(IIII)V

    .line 852
    .end local v13    # "vp":Lcom/smartisanos/smengine/ViewPort;
    :goto_0
    const/4 v0, 0x3

    sget v1, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    if-ne v0, v1, :cond_1

    .line 853
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mTextRect:Lcom/smartisanos/launcher/view/TextView;

    const v1, 0x3f266666    # 0.65f

    const v2, 0x3f266666    # 0.65f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2, v3}, Lcom/smartisanos/launcher/view/TextView;->setScale(FFF)V

    .line 855
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Page;->getLayStatus()I

    move-result v7

    .line 856
    .local v7, "layerStatus":I
    invoke-static {}, Lcom/smartisanos/launcher/view/LayerManager;->getInstance()Lcom/smartisanos/launcher/view/LayerManager;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/smartisanos/launcher/view/LayerManager;->getPageLayer(I)Lcom/smartisanos/launcher/view/LayerManager$PageLayer;

    move-result-object v10

    .line 857
    .local v10, "pageLayer":Lcom/smartisanos/launcher/view/LayerManager$PageLayer;
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mTextRect:Lcom/smartisanos/launcher/view/TextView;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/TextView;->getTextView()Lcom/smartisanos/smengine/RectNode;

    move-result-object v0

    iget v1, v10, Lcom/smartisanos/launcher/view/LayerManager$PageLayer;->TITLE_VIEW_EDIT_ICON_LAYER:I

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 858
    return-void

    .line 848
    .end local v7    # "layerStatus":I
    .end local v10    # "pageLayer":Lcom/smartisanos/launcher/view/LayerManager$PageLayer;
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mTextRect:Lcom/smartisanos/launcher/view/TextView;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/TextView;->getTextView()Lcom/smartisanos/smengine/RectNode;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RectNode;->setRenderTarget(Lcom/smartisanos/smengine/RenderTarget;)V

    .line 849
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mTextRect:Lcom/smartisanos/launcher/view/TextView;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/TextView;->getTextView()Lcom/smartisanos/smengine/RectNode;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RectNode;->setViewPort(Lcom/smartisanos/smengine/ViewPort;)V

    .line 850
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mTextRect:Lcom/smartisanos/launcher/view/TextView;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/TextView;->getTextView()Lcom/smartisanos/smengine/RectNode;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    goto :goto_0
.end method

.method private doLayout()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v5, -0x40800000    # -1.0f

    .line 1001
    iget-object v3, p0, Lcom/smartisanos/launcher/view/TitleView;->mRenderRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {p0, v3}, Lcom/smartisanos/launcher/view/TitleView;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 1002
    iget-boolean v3, p0, Lcom/smartisanos/launcher/view/TitleView;->mIsDrawTextWithBatch:Z

    if-nez v3, :cond_0

    .line 1003
    iget-object v3, p0, Lcom/smartisanos/launcher/view/TitleView;->mTextRect:Lcom/smartisanos/launcher/view/TextView;

    invoke-virtual {p0, v3}, Lcom/smartisanos/launcher/view/TitleView;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 1004
    iget-object v3, p0, Lcom/smartisanos/launcher/view/TitleView;->mTextRect:Lcom/smartisanos/launcher/view/TextView;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/TextView;->updateGeometricState()V

    .line 1006
    :cond_0
    iget-boolean v3, p0, Lcom/smartisanos/launcher/view/TitleView;->mIsDrawShadowWithBatch:Z

    if-nez v3, :cond_1

    .line 1007
    iget-object v3, p0, Lcom/smartisanos/launcher/view/TitleView;->mBackShadowRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {p0, v3}, Lcom/smartisanos/launcher/view/TitleView;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 1008
    iget-object v3, p0, Lcom/smartisanos/launcher/view/TitleView;->mBackShadowRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/RectNode;->updateGeometricState()V

    .line 1011
    :cond_1
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/TitleView;->layoutText()V

    .line 1013
    iget-object v3, p0, Lcom/smartisanos/launcher/view/TitleView;->mLayoutProperty:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v0, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->page_title_width:F

    .line 1014
    .local v0, "titleBackWith":F
    iget-object v3, p0, Lcom/smartisanos/launcher/view/TitleView;->mEditIconRect:Lcom/smartisanos/smengine/RectNode;

    if-eqz v3, :cond_2

    .line 1016
    iget-object v3, p0, Lcom/smartisanos/launcher/view/TitleView;->mEditIconRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v3, v5, v5, v6, v6}, Lcom/smartisanos/smengine/RectNode;->setLocalBoundingVolume(FFFF)V

    .line 1017
    div-float v3, v0, v7

    iget-object v4, p0, Lcom/smartisanos/launcher/view/TitleView;->mLayoutProperty:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v4, v4, Lcom/smartisanos/launcher/data/LayoutProperty;->edit_icon_width:F

    div-float/2addr v4, v7

    sub-float v1, v3, v4

    .line 1018
    .local v1, "x":F
    const/4 v2, 0x0

    .line 1019
    .local v2, "y":F
    iget-object v3, p0, Lcom/smartisanos/launcher/view/TitleView;->mEditIconRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v3, v1, v2, v8}, Lcom/smartisanos/smengine/RectNode;->setTranslate(FFF)V

    .line 1020
    iget-object v3, p0, Lcom/smartisanos/launcher/view/TitleView;->mEditIconRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/RectNode;->updateGeometricState()V

    .line 1023
    .end local v1    # "x":F
    .end local v2    # "y":F
    :cond_2
    iget-object v3, p0, Lcom/smartisanos/launcher/view/TitleView;->mEyeIconRect:Lcom/smartisanos/smengine/RectNode;

    if-eqz v3, :cond_3

    .line 1025
    iget-object v3, p0, Lcom/smartisanos/launcher/view/TitleView;->mEyeIconRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v3, v5, v5, v6, v6}, Lcom/smartisanos/smengine/RectNode;->setLocalBoundingVolume(FFFF)V

    .line 1026
    neg-float v3, v0

    div-float/2addr v3, v7

    iget-object v4, p0, Lcom/smartisanos/launcher/view/TitleView;->mLayoutProperty:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v4, v4, Lcom/smartisanos/launcher/data/LayoutProperty;->eye_icon_width:F

    div-float/2addr v4, v7

    add-float v1, v3, v4

    .line 1027
    .restart local v1    # "x":F
    const/4 v2, 0x0

    .line 1028
    .restart local v2    # "y":F
    iget-object v3, p0, Lcom/smartisanos/launcher/view/TitleView;->mEyeIconRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v3, v1, v2, v8}, Lcom/smartisanos/smengine/RectNode;->setTranslate(FFF)V

    .line 1029
    iget-object v3, p0, Lcom/smartisanos/launcher/view/TitleView;->mEyeIconRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/RectNode;->updateGeometricState()V

    .line 1032
    .end local v1    # "x":F
    .end local v2    # "y":F
    :cond_3
    iget-object v3, p0, Lcom/smartisanos/launcher/view/TitleView;->mLockIconRect:Lcom/smartisanos/smengine/RectNode;

    if-eqz v3, :cond_4

    .line 1034
    iget-object v3, p0, Lcom/smartisanos/launcher/view/TitleView;->mLockIconRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v3, v5, v5, v6, v6}, Lcom/smartisanos/smengine/RectNode;->setLocalBoundingVolume(FFFF)V

    .line 1035
    div-float v3, v0, v7

    iget-object v4, p0, Lcom/smartisanos/launcher/view/TitleView;->mLayoutProperty:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v4, v4, Lcom/smartisanos/launcher/data/LayoutProperty;->lock_icon_width:F

    div-float/2addr v4, v7

    sub-float v1, v3, v4

    .line 1036
    .restart local v1    # "x":F
    const/4 v2, 0x0

    .line 1037
    .restart local v2    # "y":F
    iget-object v3, p0, Lcom/smartisanos/launcher/view/TitleView;->mLockIconRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v3, v1, v2, v8}, Lcom/smartisanos/smengine/RectNode;->setTranslate(FFF)V

    .line 1038
    iget-object v3, p0, Lcom/smartisanos/launcher/view/TitleView;->mLockIconRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/RectNode;->updateGeometricState()V

    .line 1040
    .end local v1    # "x":F
    .end local v2    # "y":F
    :cond_4
    return-void
.end method

.method private getRectIconBV(Lcom/smartisanos/smengine/RectNode;)Lcom/smartisanos/smengine/BoundingVolume;
    .locals 4
    .param p1, "rect"    # Lcom/smartisanos/smengine/RectNode;

    .prologue
    .line 757
    invoke-virtual {p1}, Lcom/smartisanos/smengine/RectNode;->getLocalBoundingVolume()Lcom/smartisanos/smengine/BoundingVolume;

    move-result-object v0

    .line 758
    .local v0, "br":Lcom/smartisanos/smengine/BoundingVolume;
    invoke-virtual {p1}, Lcom/smartisanos/smengine/RectNode;->getWorldTransform()Lcom/smartisanos/smengine/math/Transform;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/smengine/math/Transform;->clone()Lcom/smartisanos/smengine/math/Transform;

    move-result-object v2

    .line 759
    .local v2, "tm":Lcom/smartisanos/smengine/math/Transform;
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/TitleView;->getWorldTransform()Lcom/smartisanos/smengine/math/Transform;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/math/Transform;->combineWithParent(Lcom/smartisanos/smengine/math/Transform;)Lcom/smartisanos/smengine/math/Transform;

    .line 760
    new-instance v1, Lcom/smartisanos/smengine/BoundingRect;

    invoke-direct {v1}, Lcom/smartisanos/smengine/BoundingRect;-><init>()V

    .line 761
    .local v1, "newbr":Lcom/smartisanos/smengine/BoundingRect;
    invoke-virtual {v0, v2, v1}, Lcom/smartisanos/smengine/BoundingVolume;->transform(Lcom/smartisanos/smengine/math/Transform;Lcom/smartisanos/smengine/BoundingVolume;)V

    .line 762
    return-object v1
.end method

.method private handleLongPress()V
    .locals 3

    .prologue
    .line 1242
    new-instance v0, Lcom/smartisanos/smengine/Notification;

    invoke-direct {v0}, Lcom/smartisanos/smengine/Notification;-><init>()V

    .line 1243
    .local v0, "n":Lcom/smartisanos/smengine/Notification;
    iget-object v1, p0, Lcom/smartisanos/launcher/view/TitleView;->mPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/Notification;->addData(Ljava/lang/Object;)V

    .line 1244
    invoke-static {}, Lcom/smartisanos/smengine/NotificationManager;->getCurrentNotificationManager()Lcom/smartisanos/smengine/NotificationManager;

    move-result-object v1

    const-string v2, "titleViewLongPress"

    invoke-virtual {v1, v2, v0}, Lcom/smartisanos/smengine/NotificationManager;->postNotification(Ljava/lang/String;Lcom/smartisanos/smengine/Notification;)V

    .line 1245
    return-void
.end method

.method private initListener()V
    .locals 1

    .prologue
    .line 169
    new-instance v0, Lcom/smartisanos/launcher/view/TitleView$3;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/view/TitleView$3;-><init>(Lcom/smartisanos/launcher/view/TitleView;)V

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/TitleView;->setOnClickListener(Lcom/smartisanos/smengine/SceneNode$OnClickListener;)V

    .line 225
    new-instance v0, Lcom/smartisanos/launcher/view/TitleView$4;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/view/TitleView$4;-><init>(Lcom/smartisanos/launcher/view/TitleView;)V

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/TitleView;->setOnLongClickListener(Lcom/smartisanos/smengine/SceneNode$OnLongClickListener;)V

    .line 270
    return-void
.end method

.method private inputPassword()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 501
    new-instance v1, Landroid/content/ComponentName;

    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.ChooseLockPasswordFake"

    invoke-direct {v1, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    .local v1, "comp":Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 504
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 505
    const-string v3, "from_smartisanos_launcher"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 506
    const-string v3, "launcher_applications_lock"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 507
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v3

    const v4, 0x7f050025

    const v5, 0x7f050026

    invoke-virtual {v3, v4, v5}, Lcom/smartisanos/home/Launcher;->createActivityOptions(II)Landroid/os/Bundle;

    move-result-object v0

    .line 508
    .local v0, "bd":Landroid/os/Bundle;
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v3

    const/16 v4, 0x14

    invoke-virtual {v3, v2, v4, v0}, Lcom/smartisanos/home/Launcher;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 510
    return-void
.end method

.method private layoutText()V
    .locals 8

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/4 v7, 0x0

    .line 1043
    iget-object v5, p0, Lcom/smartisanos/launcher/view/TitleView;->mTextRect:Lcom/smartisanos/launcher/view/TextView;

    if-eqz v5, :cond_0

    .line 1044
    iget-object v5, p0, Lcom/smartisanos/launcher/view/TitleView;->mLayoutProperty:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v3, v5, Lcom/smartisanos/launcher/data/LayoutProperty;->page_title_width:F

    .line 1045
    .local v3, "titleBackWith":F
    iget-object v5, p0, Lcom/smartisanos/launcher/view/TitleView;->mTextRect:Lcom/smartisanos/launcher/view/TextView;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/TextView;->getScale()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v1

    .line 1046
    .local v1, "scale":Lcom/smartisanos/smengine/math/Vector3f;
    iget-object v5, p0, Lcom/smartisanos/launcher/view/TitleView;->mTextRect:Lcom/smartisanos/launcher/view/TextView;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/TextView;->getWidth()F

    move-result v2

    .line 1047
    .local v2, "textWidth":F
    iget v5, v1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    mul-float v0, v2, v5

    .line 1048
    .local v0, "realWidth":F
    neg-float v5, v3

    div-float/2addr v5, v6

    div-float v6, v0, v6

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/smartisanos/launcher/view/TitleView;->mLayoutProperty:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v6, v6, Lcom/smartisanos/launcher/data/LayoutProperty;->page_title_name_padding:F

    add-float v4, v5, v6

    .line 1050
    .local v4, "titleStartX":F
    iget-object v5, p0, Lcom/smartisanos/launcher/view/TitleView;->mTextRect:Lcom/smartisanos/launcher/view/TextView;

    invoke-virtual {v5, v4, v7, v7}, Lcom/smartisanos/launcher/view/TextView;->setTranslate(FFF)V

    .line 1051
    iget-object v5, p0, Lcom/smartisanos/launcher/view/TitleView;->mTextRect:Lcom/smartisanos/launcher/view/TextView;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/TextView;->updateGeometricState()V

    .line 1053
    .end local v0    # "realWidth":F
    .end local v1    # "scale":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v2    # "textWidth":F
    .end local v3    # "titleBackWith":F
    .end local v4    # "titleStartX":F
    :cond_0
    return-void
.end method

.method private onEditTitle()V
    .locals 2

    .prologue
    .line 1238
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/TitleView;->mPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/MainView;->showEditPageTitleNameDialog(Lcom/smartisanos/launcher/view/Page;)V

    .line 1239
    return-void
.end method

.method private setDown()V
    .locals 14

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const v11, 0x3f65e5e6

    const/high16 v10, 0x3f800000    # 1.0f

    const v9, 0x3f4ccccd    # 0.8f

    .line 660
    iget v5, p0, Lcom/smartisanos/launcher/view/TitleView;->mHasDown:I

    if-nez v5, :cond_0

    .line 661
    iget-object v5, p0, Lcom/smartisanos/launcher/view/TitleView;->mPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Page;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_8

    .line 662
    invoke-static {}, Lcom/smartisanos/smengine/util/TempVars;->get()Lcom/smartisanos/smengine/util/TempVars;

    move-result-object v4

    .line 663
    .local v4, "tempVars":Lcom/smartisanos/smengine/util/TempVars;
    iget-object v3, v4, Lcom/smartisanos/smengine/util/TempVars;->vect1:Lcom/smartisanos/smengine/math/Vector3f;

    .line 664
    .local v3, "pos":Lcom/smartisanos/smengine/math/Vector3f;
    iget v5, p0, Lcom/smartisanos/launcher/view/TitleView;->mTouchX:F

    iget v6, p0, Lcom/smartisanos/launcher/view/TitleView;->mTouchY:F

    sget v7, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v7, v7

    sget v8, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    int-to-float v8, v8

    invoke-static {v5, v6, v7, v8, v3}, Lcom/smartisanos/smengine/util/GeomUtil;->convertLeftTopPointToMidPointCoordinate(FFFFLcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    .line 665
    iget v5, p0, Lcom/smartisanos/launcher/view/TitleView;->mMode:I

    if-ne v12, v5, :cond_1

    .line 666
    iget-object v5, p0, Lcom/smartisanos/launcher/view/TitleView;->mEditIconRect:Lcom/smartisanos/smengine/RectNode;

    invoke-direct {p0, v5}, Lcom/smartisanos/launcher/view/TitleView;->getRectIconBV(Lcom/smartisanos/smengine/RectNode;)Lcom/smartisanos/smengine/BoundingVolume;

    move-result-object v0

    .line 667
    .local v0, "bv":Lcom/smartisanos/smengine/BoundingVolume;
    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/BoundingVolume;->isPointInBoundingVolume(Lcom/smartisanos/smengine/math/Vector3f;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 668
    invoke-virtual {v4}, Lcom/smartisanos/smengine/util/TempVars;->release()V

    .line 669
    iget-object v5, p0, Lcom/smartisanos/launcher/view/TitleView;->mEditIconRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v5, v9, v9, v9, v10}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 670
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/TitleView;->setNeedDisplay()V

    .line 671
    iput v12, p0, Lcom/smartisanos/launcher/view/TitleView;->mHasDown:I

    .line 708
    .end local v0    # "bv":Lcom/smartisanos/smengine/BoundingVolume;
    .end local v3    # "pos":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v4    # "tempVars":Lcom/smartisanos/smengine/util/TempVars;
    :cond_0
    :goto_0
    return-void

    .line 674
    .restart local v3    # "pos":Lcom/smartisanos/smengine/math/Vector3f;
    .restart local v4    # "tempVars":Lcom/smartisanos/smengine/util/TempVars;
    :cond_1
    iget v5, p0, Lcom/smartisanos/launcher/view/TitleView;->mMode:I

    if-ne v13, v5, :cond_7

    .line 675
    iget-object v5, p0, Lcom/smartisanos/launcher/view/TitleView;->mEyeIconRect:Lcom/smartisanos/smengine/RectNode;

    invoke-direct {p0, v5}, Lcom/smartisanos/launcher/view/TitleView;->getRectIconBV(Lcom/smartisanos/smengine/RectNode;)Lcom/smartisanos/smengine/BoundingVolume;

    move-result-object v0

    .line 676
    .restart local v0    # "bv":Lcom/smartisanos/smengine/BoundingVolume;
    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/BoundingVolume;->isPointInBoundingVolume(Lcom/smartisanos/smengine/math/Vector3f;)Z

    move-result v1

    .line 677
    .local v1, "inEye":Z
    const/4 v2, 0x0

    .line 682
    .local v2, "inLock":Z
    iget-object v5, p0, Lcom/smartisanos/launcher/view/TitleView;->mPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Page;->getPageStatus()I

    move-result v5

    if-eq v12, v5, :cond_2

    iget-object v5, p0, Lcom/smartisanos/launcher/view/TitleView;->mPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Page;->getPageStatus()I

    move-result v5

    if-nez v5, :cond_3

    :cond_2
    if-eqz v1, :cond_3

    .line 683
    invoke-virtual {v4}, Lcom/smartisanos/smengine/util/TempVars;->release()V

    .line 684
    iget-object v5, p0, Lcom/smartisanos/launcher/view/TitleView;->mEyeIconRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v5, v9, v9, v9, v10}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 685
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/TitleView;->setNeedDisplay()V

    .line 686
    iput v13, p0, Lcom/smartisanos/launcher/view/TitleView;->mHasDown:I

    goto :goto_0

    .line 690
    :cond_3
    iget-object v5, p0, Lcom/smartisanos/launcher/view/TitleView;->mPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Page;->getPageStatus()I

    move-result v5

    if-eq v13, v5, :cond_4

    iget-object v5, p0, Lcom/smartisanos/launcher/view/TitleView;->mPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Page;->getPageStatus()I

    move-result v5

    if-nez v5, :cond_5

    :cond_4
    if-eqz v2, :cond_5

    .line 691
    invoke-virtual {v4}, Lcom/smartisanos/smengine/util/TempVars;->release()V

    .line 692
    iget-object v5, p0, Lcom/smartisanos/launcher/view/TitleView;->mLockIconRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v5, v9, v9, v9, v10}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 693
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/TitleView;->setNeedDisplay()V

    .line 694
    const/4 v5, 0x3

    iput v5, p0, Lcom/smartisanos/launcher/view/TitleView;->mHasDown:I

    goto :goto_0

    .line 697
    :cond_5
    if-nez v1, :cond_6

    if-eqz v2, :cond_7

    .line 698
    :cond_6
    invoke-virtual {v4}, Lcom/smartisanos/smengine/util/TempVars;->release()V

    goto :goto_0

    .line 702
    .end local v0    # "bv":Lcom/smartisanos/smengine/BoundingVolume;
    .end local v1    # "inEye":Z
    .end local v2    # "inLock":Z
    :cond_7
    invoke-virtual {v4}, Lcom/smartisanos/smengine/util/TempVars;->release()V

    .line 704
    .end local v3    # "pos":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v4    # "tempVars":Lcom/smartisanos/smengine/util/TempVars;
    :cond_8
    const/4 v5, 0x4

    iput v5, p0, Lcom/smartisanos/launcher/view/TitleView;->mHasDown:I

    .line 705
    iget-object v5, p0, Lcom/smartisanos/launcher/view/TitleView;->mRenderRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v5, v11, v11, v11, v10}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 706
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/TitleView;->setNeedDisplay()V

    goto :goto_0
.end method

.method private setIconColorDarkLight()V
    .locals 7

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const v5, 0x3e4ccccd    # 0.2f

    .line 1459
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mEditIconRect:Lcom/smartisanos/smengine/RectNode;

    if-eqz v0, :cond_0

    .line 1460
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mEditIconRect:Lcom/smartisanos/smengine/RectNode;

    sget-object v1, Lcom/smartisanos/launcher/data/Constants;->sResColorForLight:Lcom/smartisanos/smengine/math/Vector4f;

    iget v1, v1, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    sget-object v2, Lcom/smartisanos/launcher/data/Constants;->sResColorForLight:Lcom/smartisanos/smengine/math/Vector4f;

    iget v2, v2, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    sget-object v3, Lcom/smartisanos/launcher/data/Constants;->sResColorForLight:Lcom/smartisanos/smengine/math/Vector4f;

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    sget-object v4, Lcom/smartisanos/launcher/data/Constants;->sResColorForLight:Lcom/smartisanos/smengine/math/Vector4f;

    iget v4, v4, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 1463
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mEyeIconRect:Lcom/smartisanos/smengine/RectNode;

    if-eqz v0, :cond_1

    .line 1464
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/smartisanos/launcher/view/TitleView;->mPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Page;->getPageStatus()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 1465
    sget-object v0, Lcom/smartisanos/launcher/data/Constants;->sResColorForLight:Lcom/smartisanos/smengine/math/Vector4f;

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    cmpl-float v0, v6, v0

    if-eqz v0, :cond_3

    .line 1466
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mEyeIconRect:Lcom/smartisanos/smengine/RectNode;

    sget-object v1, Lcom/smartisanos/launcher/data/Constants;->sResColorForLight:Lcom/smartisanos/smengine/math/Vector4f;

    iget v1, v1, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    sget-object v2, Lcom/smartisanos/launcher/data/Constants;->sResColorForLight:Lcom/smartisanos/smengine/math/Vector4f;

    iget v2, v2, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    sget-object v3, Lcom/smartisanos/launcher/data/Constants;->sResColorForLight:Lcom/smartisanos/smengine/math/Vector4f;

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 1476
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mLockIconRect:Lcom/smartisanos/smengine/RectNode;

    if-eqz v0, :cond_2

    .line 1477
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/smartisanos/launcher/view/TitleView;->mPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Page;->getPageStatus()I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 1478
    sget-object v0, Lcom/smartisanos/launcher/data/Constants;->sResColorForLight:Lcom/smartisanos/smengine/math/Vector4f;

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    cmpl-float v0, v6, v0

    if-eqz v0, :cond_5

    .line 1479
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mLockIconRect:Lcom/smartisanos/smengine/RectNode;

    sget-object v1, Lcom/smartisanos/launcher/data/Constants;->sResColorForLight:Lcom/smartisanos/smengine/math/Vector4f;

    iget v1, v1, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    sget-object v2, Lcom/smartisanos/launcher/data/Constants;->sResColorForLight:Lcom/smartisanos/smengine/math/Vector4f;

    iget v2, v2, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    sget-object v3, Lcom/smartisanos/launcher/data/Constants;->sResColorForLight:Lcom/smartisanos/smengine/math/Vector4f;

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 1489
    :cond_2
    :goto_1
    return-void

    .line 1469
    :cond_3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mEyeIconRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0, v5, v5, v5, v5}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    goto :goto_0

    .line 1472
    :cond_4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mEyeIconRect:Lcom/smartisanos/smengine/RectNode;

    sget-object v1, Lcom/smartisanos/launcher/data/Constants;->sResColorForLight:Lcom/smartisanos/smengine/math/Vector4f;

    iget v1, v1, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    sget-object v2, Lcom/smartisanos/launcher/data/Constants;->sResColorForLight:Lcom/smartisanos/smengine/math/Vector4f;

    iget v2, v2, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    sget-object v3, Lcom/smartisanos/launcher/data/Constants;->sResColorForLight:Lcom/smartisanos/smengine/math/Vector4f;

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    sget-object v4, Lcom/smartisanos/launcher/data/Constants;->sResColorForLight:Lcom/smartisanos/smengine/math/Vector4f;

    iget v4, v4, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    goto :goto_0

    .line 1482
    :cond_5
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mLockIconRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0, v5, v5, v5, v5}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    goto :goto_1

    .line 1485
    :cond_6
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mLockIconRect:Lcom/smartisanos/smengine/RectNode;

    sget-object v1, Lcom/smartisanos/launcher/data/Constants;->sResColorForLight:Lcom/smartisanos/smengine/math/Vector4f;

    iget v1, v1, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    sget-object v2, Lcom/smartisanos/launcher/data/Constants;->sResColorForLight:Lcom/smartisanos/smengine/math/Vector4f;

    iget v2, v2, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    sget-object v3, Lcom/smartisanos/launcher/data/Constants;->sResColorForLight:Lcom/smartisanos/smengine/math/Vector4f;

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    sget-object v4, Lcom/smartisanos/launcher/data/Constants;->sResColorForLight:Lcom/smartisanos/smengine/math/Vector4f;

    iget v4, v4, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    goto :goto_1
.end method

.method private static showHidePageToast()V
    .locals 0

    .prologue
    .line 138
    return-void
.end method

.method private static showLockPageToast()V
    .locals 0

    .prologue
    .line 154
    return-void
.end method


.method public applyGaussianDarkLight()V
    .locals 2

    .prologue
    .line 1447
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mTextRect:Lcom/smartisanos/launcher/view/TextView;

    if-eqz v0, :cond_0

    .line 1448
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mTextRect:Lcom/smartisanos/launcher/view/TextView;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/TextView;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 1449
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mTextRect:Lcom/smartisanos/launcher/view/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/TextView;->clear(Z)V

    .line 1450
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mTextRect:Lcom/smartisanos/launcher/view/TextView;

    .line 1451
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/TitleView;->createTitleNode()V

    .line 1453
    :cond_0
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/TitleView;->layoutText()V

    .line 1454
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/TitleView;->setIconColorDarkLight()V

    .line 1455
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/TitleView;->setNeedDisplay()V

    .line 1456
    return-void
.end method

.method public applyTheme()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1425
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mTextRect:Lcom/smartisanos/launcher/view/TextView;

    if-eqz v0, :cond_0

    .line 1426
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mTextRect:Lcom/smartisanos/launcher/view/TextView;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/TextView;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 1427
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mTextRect:Lcom/smartisanos/launcher/view/TextView;

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/TextView;->clear(Z)V

    .line 1428
    iput-object v2, p0, Lcom/smartisanos/launcher/view/TitleView;->mTextRect:Lcom/smartisanos/launcher/view/TextView;

    .line 1429
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/TitleView;->createTitleNode()V

    .line 1431
    :cond_0
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/TitleView;->layoutText()V

    .line 1432
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v0, :cond_1

    .line 1433
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/TitleView;->createGaussianNode()V

    .line 1441
    :goto_0
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/TitleView;->setIconColorDarkLight()V

    .line 1443
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/TitleView;->setNeedDisplay()V

    .line 1444
    return-void

    .line 1435
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mGaussianRect:Lcom/smartisanos/smengine/RectNode;

    if-eqz v0, :cond_2

    .line 1436
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mGaussianRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 1437
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mGaussianRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RectNode;->clear(Z)V

    .line 1439
    :cond_2
    iput-object v2, p0, Lcom/smartisanos/launcher/view/TitleView;->mGaussianRect:Lcom/smartisanos/smengine/RectNode;

    goto :goto_0
.end method

.method public clear(Z)V
    .locals 2
    .param p1, "cleanHardwareResource"    # Z

    .prologue
    .line 767
    invoke-super {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->clear(Z)V

    .line 769
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mRenderTarget:Lcom/smartisanos/smengine/RenderTarget;

    if-eqz v0, :cond_0

    .line 770
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mRenderTarget:Lcom/smartisanos/smengine/RenderTarget;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RenderTarget;->delete(Z)V

    .line 773
    :cond_0
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/World;->getTextureManager()Lcom/smartisanos/smengine/TextureManager;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/TitleView;->mRenderTargetTextureName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/TextureManager;->deleteTexture(Ljava/lang/String;)V

    .line 775
    return-void
.end method

.method public create()V
    .locals 1

    .prologue
    .line 441
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/TitleView;->createBoundingRect()V

    .line 442
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/TitleView;->createRenderTargetCamera()V

    .line 443
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/TitleView;->createRenderTarget()V

    .line 444
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/TitleView;->createBackShadowNode()V

    .line 445
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/TitleView;->createBackgroundNode()V

    .line 446
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v0, :cond_0

    .line 447
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/TitleView;->createGaussianNode()V

    .line 449
    :cond_0
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/TitleView;->createTitleNode()V

    .line 450
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/TitleView;->createEditIconNode()V

    .line 451
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/TitleView;->createEyeIconNode()V

    .line 453
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/TitleView;->createRenderRect()V

    .line 454
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/TitleView;->doLayout()V

    .line 455
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/TitleView;->setNeedDisplay()V

    .line 456
    return-void
.end method

.method public draw(Lcom/smartisanos/smengine/Camera;)V
    .locals 2
    .param p1, "camera"    # Lcom/smartisanos/smengine/Camera;

    .prologue
    .line 1057
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/TitleView;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1117
    :cond_0
    :goto_0
    return-void

    .line 1060
    :cond_1
    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/TitleView;->cullWithCameraRect(Lcom/smartisanos/smengine/Camera;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1063
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/TitleView;->isNeedDisplay()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1065
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mRenderTarget:Lcom/smartisanos/smengine/RenderTarget;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/RenderTarget;->clearRenderTarget()V

    .line 1067
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mIsDrawShadowWithBatch:Z

    if-eqz v0, :cond_2

    .line 1068
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mBackShadowRect:Lcom/smartisanos/smengine/RectNode;

    if-eqz v0, :cond_2

    .line 1069
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-nez v0, :cond_2

    .line 1070
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mBackShadowRect:Lcom/smartisanos/smengine/RectNode;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/TitleView;->mRenderTargetCamera:Lcom/smartisanos/smengine/Camera;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RectNode;->draw(Lcom/smartisanos/smengine/Camera;)V

    .line 1075
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mBackgroundRect:Lcom/smartisanos/smengine/RectNode;

    if-eqz v0, :cond_3

    .line 1076
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mBackgroundRect:Lcom/smartisanos/smengine/RectNode;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/TitleView;->mRenderTargetCamera:Lcom/smartisanos/smengine/Camera;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RectNode;->draw(Lcom/smartisanos/smengine/Camera;)V

    .line 1078
    :cond_3
    const/4 v0, 0x1

    iget v1, p0, Lcom/smartisanos/launcher/view/TitleView;->mMode:I

    if-ne v0, v1, :cond_9

    .line 1079
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mIsDrawTextWithBatch:Z

    if-eqz v0, :cond_4

    .line 1080
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mTextRect:Lcom/smartisanos/launcher/view/TextView;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mIsDisplayIcon:Z

    if-eqz v0, :cond_4

    .line 1081
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mTextRect:Lcom/smartisanos/launcher/view/TextView;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/TitleView;->mRenderTargetCamera:Lcom/smartisanos/smengine/Camera;

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/TextView;->draw(Lcom/smartisanos/smengine/Camera;)V

    .line 1084
    :cond_4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mEditIconRect:Lcom/smartisanos/smengine/RectNode;

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mIsDisplayIcon:Z

    if-eqz v0, :cond_5

    .line 1085
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mEditIconRect:Lcom/smartisanos/smengine/RectNode;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/TitleView;->mRenderTargetCamera:Lcom/smartisanos/smengine/Camera;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RectNode;->draw(Lcom/smartisanos/smengine/Camera;)V

    .line 1096
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/TitleView;->disableDisplayUpdate()V

    .line 1098
    :cond_6
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mRenderRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/RectNode;->draw(Lcom/smartisanos/smengine/Camera;)V

    .line 1099
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mIsDrawTextWithBatch:Z

    if-nez v0, :cond_7

    .line 1100
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mTextRect:Lcom/smartisanos/launcher/view/TextView;

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mIsDisplayIcon:Z

    if-eqz v0, :cond_7

    .line 1101
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mTextRect:Lcom/smartisanos/launcher/view/TextView;

    invoke-virtual {v0, p1}, Lcom/smartisanos/launcher/view/TextView;->draw(Lcom/smartisanos/smengine/Camera;)V

    .line 1104
    :cond_7
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mIsDrawShadowWithBatch:Z

    if-nez v0, :cond_8

    .line 1105
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mBackShadowRect:Lcom/smartisanos/smengine/RectNode;

    if-eqz v0, :cond_8

    .line 1106
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-nez v0, :cond_8

    .line 1107
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mBackShadowRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/RectNode;->draw(Lcom/smartisanos/smengine/Camera;)V

    .line 1111
    :cond_8
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mIsUseStaticGaussian:Z

    if-eqz v0, :cond_0

    .line 1112
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mGaussianRect:Lcom/smartisanos/smengine/RectNode;

    if-eqz v0, :cond_0

    .line 1113
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/TitleView;->updateUV()V

    .line 1114
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mGaussianRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/RectNode;->draw(Lcom/smartisanos/smengine/Camera;)V

    goto/16 :goto_0

    .line 1087
    :cond_9
    const/4 v0, 0x2

    iget v1, p0, Lcom/smartisanos/launcher/view/TitleView;->mMode:I

    if-ne v0, v1, :cond_5

    .line 1088
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mEyeIconRect:Lcom/smartisanos/smengine/RectNode;

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mIsDisplayIcon:Z

    if-eqz v0, :cond_a

    .line 1089
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mEyeIconRect:Lcom/smartisanos/smengine/RectNode;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/TitleView;->mRenderTargetCamera:Lcom/smartisanos/smengine/Camera;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RectNode;->draw(Lcom/smartisanos/smengine/Camera;)V

    .line 1091
    :cond_a
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mLockIconRect:Lcom/smartisanos/smengine/RectNode;

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mIsDisplayIcon:Z

    if-eqz v0, :cond_5

    .line 1092
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mLockIconRect:Lcom/smartisanos/smengine/RectNode;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/TitleView;->mRenderTargetCamera:Lcom/smartisanos/smengine/Camera;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RectNode;->draw(Lcom/smartisanos/smengine/Camera;)V

    goto :goto_1
.end method

.method public getBackShadow()Lcom/smartisanos/smengine/RectNode;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mBackShadowRect:Lcom/smartisanos/smengine/RectNode;

    return-object v0
.end method

.method public getBackground()Lcom/smartisanos/smengine/RectNode;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mBackgroundRect:Lcom/smartisanos/smengine/RectNode;

    return-object v0
.end method

.method public getGaussianRect()Lcom/smartisanos/smengine/RectNode;
    .locals 1

    .prologue
    .line 1516
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mGaussianRect:Lcom/smartisanos/smengine/RectNode;

    return-object v0
.end method

.method public getRenderRect()Lcom/smartisanos/smengine/SceneNode;
    .locals 1

    .prologue
    .line 1512
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mRenderRect:Lcom/smartisanos/smengine/RectNode;

    return-object v0
.end method

.method public getTitleText()Lcom/smartisanos/launcher/view/TextView;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mTextRect:Lcom/smartisanos/launcher/view/TextView;

    return-object v0
.end method

.method public hideEditIcon()V
    .locals 2

    .prologue
    .line 366
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mEditIconRect:Lcom/smartisanos/smengine/RectNode;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    .line 367
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/TitleView;->setNeedDisplay()V

    .line 368
    return-void
.end method

.method public hideTitleText()V
    .locals 2

    .prologue
    .line 376
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mTextRect:Lcom/smartisanos/launcher/view/TextView;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/TextView;->getTextView()Lcom/smartisanos/smengine/RectNode;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    .line 377
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/TitleView;->setNeedDisplay()V

    .line 378
    return-void
.end method

.method public justVerifyPassword()V
    .locals 0

    .prologue
    .line 531
    return-void
.end method

.method public onTouchEvent(Lcom/smartisanos/smengine/TouchEvent;)Z
    .locals 8
    .param p1, "event"    # Lcom/smartisanos/smengine/TouchEvent;

    .prologue
    const/4 v6, 0x2

    const/4 v7, 0x1

    .line 779
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TouchEvent;->getType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 829
    :cond_0
    :goto_0
    :pswitch_0
    return v7

    .line 781
    :pswitch_1
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TouchEvent;->getWorldCoordinateX()F

    move-result v2

    .line 782
    .local v2, "world_x":F
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TouchEvent;->getWorldCoordinateY()F

    move-result v3

    .line 783
    .local v3, "world_y":F
    new-instance v1, Lcom/smartisanos/smengine/math/Vector3f;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    .line 784
    .local v1, "pos":Lcom/smartisanos/smengine/math/Vector3f;
    iget v4, p0, Lcom/smartisanos/launcher/view/TitleView;->mMode:I

    if-ne v7, v4, :cond_7

    .line 785
    iget-object v4, p0, Lcom/smartisanos/launcher/view/TitleView;->mEditIconRect:Lcom/smartisanos/smengine/RectNode;

    invoke-direct {p0, v4}, Lcom/smartisanos/launcher/view/TitleView;->getRectIconBV(Lcom/smartisanos/smengine/RectNode;)Lcom/smartisanos/smengine/BoundingVolume;

    move-result-object v0

    .line 786
    .local v0, "bv":Lcom/smartisanos/smengine/BoundingVolume;
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/BoundingVolume;->isPointInBoundingVolume(Lcom/smartisanos/smengine/math/Vector3f;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 787
    iget-object v4, p0, Lcom/smartisanos/launcher/view/TitleView;->mPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Page;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 790
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/TitleView;->onEditTitle()V

    goto :goto_0

    .line 792
    :cond_1
    sget-boolean v4, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v4, :cond_2

    sget-object v4, Lcom/smartisanos/launcher/view/TitleView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v5, "DEBUG"

    const-string v6, "click page title !"

    invoke-virtual {v4, v5, v6}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    :cond_2
    sget-boolean v4, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v4, :cond_3

    sget-object v4, Lcom/smartisanos/launcher/view/TitleView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v5, "DEBUG"

    const-string v6, "Constants.ClickAction.SWITCH_PAGE begin !"

    invoke-virtual {v4, v5, v6}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    :cond_3
    iget-object v4, p0, Lcom/smartisanos/launcher/view/TitleView;->mPage:Lcom/smartisanos/launcher/view/Page;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/smartisanos/launcher/view/TitleView;->mPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Page;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 796
    :cond_4
    sget-boolean v4, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/smartisanos/launcher/view/TitleView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v5, "DEBUG"

    const-string v6, "current page is null or empty !"

    invoke-virtual {v4, v5, v6}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 798
    :cond_5
    iget-object v4, p0, Lcom/smartisanos/launcher/view/TitleView;->mPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Page;->isVisiblePage()Z

    move-result v4

    if-nez v4, :cond_6

    .line 799
    iget-object v4, p0, Lcom/smartisanos/launcher/view/TitleView;->mPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Page;->pageToFloat()V

    goto :goto_0

    .line 801
    :cond_6
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v4

    iget-object v5, p0, Lcom/smartisanos/launcher/view/TitleView;->mPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v4, v5}, Lcom/smartisanos/launcher/view/PageView;->switchPageMode(Lcom/smartisanos/launcher/view/Page;)Z

    goto :goto_0

    .line 804
    .end local v0    # "bv":Lcom/smartisanos/smengine/BoundingVolume;
    :cond_7
    iget v4, p0, Lcom/smartisanos/launcher/view/TitleView;->mMode:I

    if-ne v6, v4, :cond_0

    .line 805
    iget-boolean v4, p0, Lcom/smartisanos/launcher/view/TitleView;->mIsAnimating:Z

    if-nez v4, :cond_0

    .line 808
    iget-object v4, p0, Lcom/smartisanos/launcher/view/TitleView;->mEyeIconRect:Lcom/smartisanos/smengine/RectNode;

    invoke-direct {p0, v4}, Lcom/smartisanos/launcher/view/TitleView;->getRectIconBV(Lcom/smartisanos/smengine/RectNode;)Lcom/smartisanos/smengine/BoundingVolume;

    move-result-object v0

    .line 809
    .restart local v0    # "bv":Lcom/smartisanos/smengine/BoundingVolume;
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/BoundingVolume;->isPointInBoundingVolume(Lcom/smartisanos/smengine/math/Vector3f;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 810
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/TitleView;->clickOnEditModeHideIconLogic()V

    goto/16 :goto_0

    .line 824
    .end local v0    # "bv":Lcom/smartisanos/smengine/BoundingVolume;
    .end local v1    # "pos":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v2    # "world_x":F
    .end local v3    # "world_y":F
    :pswitch_2
    sget-boolean v4, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v4, :cond_8

    sget-object v4, Lcom/smartisanos/launcher/view/TitleView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v5, "TitleView GESTURE_LONG_PRESSED mSomethingIsFloat set true"

    invoke-virtual {v4, v5}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 825
    :cond_8
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Lcom/smartisanos/launcher/StatusManager;->setLauncherStatus(IZ)V

    .line 826
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/TitleView;->handleLongPress()V

    goto/16 :goto_0

    .line 779
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onUpdateModulateColor(Lcom/smartisanos/smengine/math/Vector4f;)V
    .locals 6
    .param p1, "color"    # Lcom/smartisanos/smengine/math/Vector4f;

    .prologue
    const/4 v5, 0x1

    .line 911
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mRenderRect:Lcom/smartisanos/smengine/RectNode;

    if-eqz v0, :cond_0

    .line 912
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mRenderRect:Lcom/smartisanos/smengine/RectNode;

    iget v1, p1, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    iget v2, p1, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    iget v3, p1, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    iget v4, p1, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 913
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mRenderRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/smartisanos/smengine/RenderState;->setIsEnableBlend(Z)V

    .line 915
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mGaussianRect:Lcom/smartisanos/smengine/RectNode;

    if-eqz v0, :cond_1

    .line 916
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mGaussianRect:Lcom/smartisanos/smengine/RectNode;

    iget v1, p1, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    iget v2, p1, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    iget v3, p1, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    iget v4, p1, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 917
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mGaussianRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/smartisanos/smengine/RenderState;->setIsEnableBlend(Z)V

    .line 919
    :cond_1
    return-void
.end method

.method public setDisplayIconAndText(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/TitleView;->mIsDisplayIcon:Z

    .line 98
    return-void
.end method

.method public setDrawTitleShadowWithBatch(Z)V
    .locals 6
    .param p1, "withBatch"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1520
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/TitleView;->mIsDrawShadowWithBatch:Z

    .line 1521
    iget-object v1, p0, Lcom/smartisanos/launcher/view/TitleView;->mBackShadowRect:Lcom/smartisanos/smengine/RectNode;

    if-eqz v1, :cond_0

    .line 1522
    if-eqz p1, :cond_1

    .line 1523
    iget-object v1, p0, Lcom/smartisanos/launcher/view/TitleView;->mBackShadowRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/RectNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 1525
    iget-object v1, p0, Lcom/smartisanos/launcher/view/TitleView;->mBackShadowRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/RenderState;->setIsEnableBlend(Z)V

    .line 1526
    iget-object v1, p0, Lcom/smartisanos/launcher/view/TitleView;->mBackShadowRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    .line 1527
    iget-object v1, p0, Lcom/smartisanos/launcher/view/TitleView;->mBackShadowRect:Lcom/smartisanos/smengine/RectNode;

    iget-object v2, p0, Lcom/smartisanos/launcher/view/TitleView;->mRenderTarget:Lcom/smartisanos/smengine/RenderTarget;

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/RectNode;->setRenderTarget(Lcom/smartisanos/smengine/RenderTarget;)V

    .line 1528
    iget-object v1, p0, Lcom/smartisanos/launcher/view/TitleView;->mRenderTarget:Lcom/smartisanos/smengine/RenderTarget;

    invoke-virtual {v1, v3, v3}, Lcom/smartisanos/smengine/RenderTarget;->getViewPort(II)Lcom/smartisanos/smengine/ViewPort;

    move-result-object v0

    .line 1529
    .local v0, "vp":Lcom/smartisanos/smengine/ViewPort;
    iget-object v1, p0, Lcom/smartisanos/launcher/view/TitleView;->mBackShadowRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/ViewPort;->x()I

    move-result v2

    invoke-virtual {v0}, Lcom/smartisanos/smengine/ViewPort;->y()I

    move-result v3

    invoke-virtual {v0}, Lcom/smartisanos/smengine/ViewPort;->w()I

    move-result v4

    invoke-virtual {v0}, Lcom/smartisanos/smengine/ViewPort;->h()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/smartisanos/smengine/RectNode;->setViewPort(IIII)V

    .line 1541
    .end local v0    # "vp":Lcom/smartisanos/smengine/ViewPort;
    :goto_0
    iget-object v1, p0, Lcom/smartisanos/launcher/view/TitleView;->mBackShadowRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/RectNode;->updateGeometricState()V

    .line 1542
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/TitleView;->updateGeometricState()V

    .line 1543
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/TitleView;->setNeedDisplay()V

    .line 1545
    :cond_0
    return-void

    .line 1531
    :cond_1
    iget-object v1, p0, Lcom/smartisanos/launcher/view/TitleView;->mBackShadowRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {p0, v1}, Lcom/smartisanos/launcher/view/TitleView;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 1532
    iget-object v1, p0, Lcom/smartisanos/launcher/view/TitleView;->mBackShadowRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/RenderState;->setIsEnableBlend(Z)V

    .line 1535
    iget-object v1, p0, Lcom/smartisanos/launcher/view/TitleView;->mBackShadowRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    .line 1536
    iget-object v1, p0, Lcom/smartisanos/launcher/view/TitleView;->mBackShadowRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v1, v4}, Lcom/smartisanos/smengine/RectNode;->setRenderTarget(Lcom/smartisanos/smengine/RenderTarget;)V

    .line 1537
    iget-object v1, p0, Lcom/smartisanos/launcher/view/TitleView;->mBackShadowRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v1, v4}, Lcom/smartisanos/smengine/RectNode;->setViewPort(Lcom/smartisanos/smengine/ViewPort;)V

    .line 1538
    iget-object v1, p0, Lcom/smartisanos/launcher/view/TitleView;->mBackShadowRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/RectNode;->updateGeometricState()V

    goto :goto_0
.end method

.method public setDrawTitleTextWithBatch(Z)V
    .locals 2
    .param p1, "withBatch"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1492
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/TitleView;->mIsDrawTextWithBatch:Z

    .line 1493
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mTextRect:Lcom/smartisanos/launcher/view/TextView;

    if-eqz v0, :cond_0

    .line 1494
    if-eqz p1, :cond_1

    .line 1495
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mTextRect:Lcom/smartisanos/launcher/view/TextView;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/TextView;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 1496
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mTextRect:Lcom/smartisanos/launcher/view/TextView;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/TextView;->getTextView()Lcom/smartisanos/smengine/RectNode;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    .line 1497
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mTextRect:Lcom/smartisanos/launcher/view/TextView;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/TitleView;->mRenderTarget:Lcom/smartisanos/smengine/RenderTarget;

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/TextView;->setRenderTarget(Lcom/smartisanos/smengine/RenderTarget;)V

    .line 1505
    :goto_0
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/TitleView;->layoutText()V

    .line 1506
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/TitleView;->updateGeometricState()V

    .line 1507
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/TitleView;->setNeedDisplay()V

    .line 1509
    :cond_0
    return-void

    .line 1499
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mTextRect:Lcom/smartisanos/launcher/view/TextView;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/TextView;->getTextView()Lcom/smartisanos/smengine/RectNode;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RectNode;->setRenderTarget(Lcom/smartisanos/smengine/RenderTarget;)V

    .line 1500
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mTextRect:Lcom/smartisanos/launcher/view/TextView;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/TextView;->getTextView()Lcom/smartisanos/smengine/RectNode;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RectNode;->setViewPort(Lcom/smartisanos/smengine/ViewPort;)V

    .line 1501
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mTextRect:Lcom/smartisanos/launcher/view/TextView;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/TextView;->getTextView()Lcom/smartisanos/smengine/RectNode;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    .line 1502
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mTextRect:Lcom/smartisanos/launcher/view/TextView;

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/TitleView;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 1503
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mTextRect:Lcom/smartisanos/launcher/view/TextView;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/TextView;->updateGeometricState()V

    goto :goto_0
.end method

.method public setDrawWithPostEffect(Z)V
    .locals 3
    .param p1, "b"    # Z

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x1

    .line 1688
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mRenderRect:Lcom/smartisanos/smengine/RectNode;

    if-eqz v0, :cond_0

    .line 1689
    if-eqz p1, :cond_1

    .line 1690
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mRenderRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    .line 1691
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mGaussianRect:Lcom/smartisanos/smengine/RectNode;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    .line 1692
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mTextRect:Lcom/smartisanos/launcher/view/TextView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mIsDrawTextWithBatch:Z

    if-nez v0, :cond_0

    .line 1693
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mTextRect:Lcom/smartisanos/launcher/view/TextView;

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/TextView;->setRenderQueue(I)V

    .line 1703
    :cond_0
    :goto_0
    return-void

    .line 1696
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mRenderRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    .line 1697
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mGaussianRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    .line 1698
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mTextRect:Lcom/smartisanos/launcher/view/TextView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mIsDrawTextWithBatch:Z

    if-nez v0, :cond_0

    .line 1699
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mTextRect:Lcom/smartisanos/launcher/view/TextView;

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/TextView;->setRenderQueue(I)V

    goto :goto_0
.end method

.method public setEyeState(Z)V
    .locals 1
    .param p1, "close"    # Z

    .prologue
    .line 1248
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/smartisanos/launcher/view/TitleView;->setEyeState(ZZ)V

    .line 1249
    return-void
.end method

.method public setEyeState(ZZ)V
    .locals 9
    .param p1, "close"    # Z
    .param p2, "noAnim"    # Z

    .prologue
    const/16 v8, 0xa

    const/4 v7, 0x1

    .line 1257
    iput-boolean v7, p0, Lcom/smartisanos/launcher/view/TitleView;->mIsAnimating:Z

    .line 1258
    new-instance v1, Lcom/smartisanos/launcher/view/TitleView$IconAnimation;

    iget-object v6, p0, Lcom/smartisanos/launcher/view/TitleView;->mEyeIconRect:Lcom/smartisanos/smengine/RectNode;

    invoke-direct {v1, p0, v6}, Lcom/smartisanos/launcher/view/TitleView$IconAnimation;-><init>(Lcom/smartisanos/launcher/view/TitleView;Lcom/smartisanos/smengine/SceneNode;)V

    .line 1259
    .local v1, "eye_anim":Lcom/smartisanos/launcher/view/TitleView$IconAnimation;
    const-string v6, "eye-anim"

    invoke-static {v6, v7}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 1260
    .local v0, "base_path":Ljava/lang/String;
    const-string v4, "eye_icon_00"

    .line 1261
    .local v4, "prefix":Ljava/lang/String;
    const-string v5, ".png"

    .line 1262
    .local v5, "suffix":Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1263
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_1

    .line 1265
    const/4 v2, 0x1

    .local v2, "index":I
    :goto_0
    const/16 v6, 0x10

    if-gt v2, v6, :cond_3

    .line 1266
    if-ge v2, v8, :cond_0

    .line 1267
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1265
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1269
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1274
    .end local v2    # "index":I
    :cond_1
    const/16 v2, 0x10

    .restart local v2    # "index":I
    :goto_2
    if-lez v2, :cond_3

    .line 1275
    if-ge v2, v8, :cond_2

    .line 1276
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1274
    :goto_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 1278
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1282
    :cond_3
    invoke-virtual {v1, v0}, Lcom/smartisanos/launcher/view/TitleView$IconAnimation;->setFolderPath(Ljava/lang/String;)V

    .line 1283
    invoke-virtual {v1, v3}, Lcom/smartisanos/launcher/view/TitleView$IconAnimation;->setFrameImageList(Ljava/util/ArrayList;)V

    .line 1284
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/TitleView$IconAnimation;->createTexture()V

    .line 1285
    new-instance v6, Lcom/smartisanos/launcher/view/TitleView$9;

    invoke-direct {v6, p0}, Lcom/smartisanos/launcher/view/TitleView$9;-><init>(Lcom/smartisanos/launcher/view/TitleView;)V

    invoke-virtual {v1, v6}, Lcom/smartisanos/launcher/view/TitleView$IconAnimation;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 1292
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/TitleView$IconAnimation;->start()V

    .line 1318
    return-void
.end method

.method public setLockState(Z)V
    .locals 0
    .param p1, "lock"    # Z

    .prologue
    .line 1322
    return-void
.end method

.method public setMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 1124
    iput p1, p0, Lcom/smartisanos/launcher/view/TitleView;->mMode:I

    .line 1125
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/TitleView;->setDisplayUpdate()V

    .line 1126
    return-void
.end method

.method public setPressed(Z)V
    .locals 2
    .param p1, "pressed"    # Z

    .prologue
    .line 1549
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/StatusManager;->getLauncherStatus(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1550
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/StatusManager;->getLauncherStatus(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1551
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/TitleView;->isPressed()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 1552
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/TitleView;->setDown()V

    .line 1557
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->setPressed(Z)V

    .line 1558
    return-void

    .line 1553
    :cond_1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/TitleView;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 1554
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/TitleView;->setUp()V

    goto :goto_0
.end method

.method public setSize(FF)V
    .locals 0
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 344
    iput p1, p0, Lcom/smartisanos/launcher/view/TitleView;->mWidth:F

    .line 345
    iput p2, p0, Lcom/smartisanos/launcher/view/TitleView;->mHeight:F

    .line 346
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 349
    iget-object v2, p0, Lcom/smartisanos/launcher/view/TitleView;->mPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v2, p1}, Lcom/smartisanos/launcher/view/Page;->setTitleName(Ljava/lang/String;)V

    .line 350
    iget-object v2, p0, Lcom/smartisanos/launcher/view/TitleView;->mTextRect:Lcom/smartisanos/launcher/view/TextView;

    if-eqz v2, :cond_0

    .line 351
    iget-object v2, p0, Lcom/smartisanos/launcher/view/TitleView;->mTextRect:Lcom/smartisanos/launcher/view/TextView;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/TextView;->getText()Ljava/lang/String;

    move-result-object v0

    .line 352
    .local v0, "oldText":Ljava/lang/String;
    invoke-static {v0}, Lcom/smartisanos/smengine/Texture;->createTextTextureName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 353
    .local v1, "texName":Ljava/lang/String;
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/World;->getTextureManager()Lcom/smartisanos/smengine/TextureManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/smartisanos/smengine/TextureManager;->deleteTexture(Ljava/lang/String;)V

    .line 354
    iget-object v2, p0, Lcom/smartisanos/launcher/view/TitleView;->mTextRect:Lcom/smartisanos/launcher/view/TextView;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/TextView;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 356
    .end local v0    # "oldText":Ljava/lang/String;
    .end local v1    # "texName":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/smartisanos/launcher/view/TitleView;->mTextRect:Lcom/smartisanos/launcher/view/TextView;

    .line 357
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/TitleView;->createTitleNode()V

    .line 358
    iget-boolean v2, p0, Lcom/smartisanos/launcher/view/TitleView;->mIsDrawTextWithBatch:Z

    if-nez v2, :cond_1

    .line 359
    iget-object v2, p0, Lcom/smartisanos/launcher/view/TitleView;->mTextRect:Lcom/smartisanos/launcher/view/TextView;

    invoke-virtual {p0, v2}, Lcom/smartisanos/launcher/view/TitleView;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 361
    :cond_1
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/TitleView;->layoutText()V

    .line 362
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/TitleView;->setDisplayUpdate()V

    .line 363
    return-void
.end method

.method public setUp()V
    .locals 6

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 711
    iget v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mHasDown:I

    if-eqz v0, :cond_1

    .line 712
    iget v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mHasDown:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mEditIconRect:Lcom/smartisanos/smengine/RectNode;

    if-eqz v0, :cond_2

    .line 713
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mEditIconRect:Lcom/smartisanos/smengine/RectNode;

    sget-object v1, Lcom/smartisanos/launcher/data/Constants;->sResColorForLight:Lcom/smartisanos/smengine/math/Vector4f;

    iget v1, v1, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    sget-object v2, Lcom/smartisanos/launcher/data/Constants;->sResColorForLight:Lcom/smartisanos/smengine/math/Vector4f;

    iget v2, v2, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    sget-object v3, Lcom/smartisanos/launcher/data/Constants;->sResColorForLight:Lcom/smartisanos/smengine/math/Vector4f;

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    sget-object v4, Lcom/smartisanos/launcher/data/Constants;->sResColorForLight:Lcom/smartisanos/smengine/math/Vector4f;

    iget v4, v4, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 724
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mRenderRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0, v5, v5, v5, v5}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 725
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/TitleView;->setNeedDisplay()V

    .line 726
    const/4 v0, 0x0

    iput v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mHasDown:I

    .line 728
    :cond_1
    return-void

    .line 715
    :cond_2
    iget v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mHasDown:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mEyeIconRect:Lcom/smartisanos/smengine/RectNode;

    if-eqz v0, :cond_3

    .line 716
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mEyeIconRect:Lcom/smartisanos/smengine/RectNode;

    sget-object v1, Lcom/smartisanos/launcher/data/Constants;->sResColorForLight:Lcom/smartisanos/smengine/math/Vector4f;

    iget v1, v1, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    sget-object v2, Lcom/smartisanos/launcher/data/Constants;->sResColorForLight:Lcom/smartisanos/smengine/math/Vector4f;

    iget v2, v2, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    sget-object v3, Lcom/smartisanos/launcher/data/Constants;->sResColorForLight:Lcom/smartisanos/smengine/math/Vector4f;

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    sget-object v4, Lcom/smartisanos/launcher/data/Constants;->sResColorForLight:Lcom/smartisanos/smengine/math/Vector4f;

    iget v4, v4, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    goto :goto_0

    .line 718
    :cond_3
    iget v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mHasDown:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mLockIconRect:Lcom/smartisanos/smengine/RectNode;

    if-eqz v0, :cond_4

    .line 719
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mLockIconRect:Lcom/smartisanos/smengine/RectNode;

    sget-object v1, Lcom/smartisanos/launcher/data/Constants;->sResColorForLight:Lcom/smartisanos/smengine/math/Vector4f;

    iget v1, v1, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    sget-object v2, Lcom/smartisanos/launcher/data/Constants;->sResColorForLight:Lcom/smartisanos/smengine/math/Vector4f;

    iget v2, v2, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    sget-object v3, Lcom/smartisanos/launcher/data/Constants;->sResColorForLight:Lcom/smartisanos/smengine/math/Vector4f;

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    sget-object v4, Lcom/smartisanos/launcher/data/Constants;->sResColorForLight:Lcom/smartisanos/smengine/math/Vector4f;

    iget v4, v4, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    goto :goto_0

    .line 721
    :cond_4
    iget v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mHasDown:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mRenderRect:Lcom/smartisanos/smengine/RectNode;

    if-eqz v0, :cond_0

    .line 722
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mRenderRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0, v5, v5, v5, v5}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    goto :goto_0
.end method

.method public setUseStaticGaussian(Z)V
    .locals 3
    .param p1, "use"    # Z

    .prologue
    .line 1672
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/TitleView;->mIsUseStaticGaussian:Z

    .line 1673
    if-nez p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/smartisanos/launcher/view/TitleView;->setDrawWithPostEffect(Z)V

    .line 1674
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/MainView;->getFloatPageNode()Lcom/smartisanos/launcher/view/FloatPageNode;

    move-result-object v1

    if-nez v1, :cond_2

    .line 1675
    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/TitleView;->setDrawTitleShadowWithBatch(Z)V

    .line 1676
    invoke-static {}, Lcom/smartisanos/launcher/view/LayerManager;->getInstance()Lcom/smartisanos/launcher/view/LayerManager;

    move-result-object v1

    iget-object v2, p0, Lcom/smartisanos/launcher/view/TitleView;->mPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Page;->getLayStatus()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/view/LayerManager;->getPageLayer(I)Lcom/smartisanos/launcher/view/LayerManager$PageLayer;

    move-result-object v0

    .line 1677
    .local v0, "pageLayer":Lcom/smartisanos/launcher/view/LayerManager$PageLayer;
    if-eqz p1, :cond_1

    .line 1678
    iget-object v1, p0, Lcom/smartisanos/launcher/view/TitleView;->mBackShadowRect:Lcom/smartisanos/smengine/RectNode;

    iget v2, v0, Lcom/smartisanos/launcher/view/LayerManager$PageLayer;->TITLE_BACK_SHADOW_LAYER:I

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 1685
    .end local v0    # "pageLayer":Lcom/smartisanos/launcher/view/LayerManager$PageLayer;
    :goto_1
    return-void

    .line 1673
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1680
    .restart local v0    # "pageLayer":Lcom/smartisanos/launcher/view/LayerManager$PageLayer;
    :cond_1
    iget-object v1, p0, Lcom/smartisanos/launcher/view/TitleView;->mBackShadowRect:Lcom/smartisanos/smengine/RectNode;

    iget v2, v0, Lcom/smartisanos/launcher/view/LayerManager$PageLayer;->PAGE_IN_SWITCH_PAGE_MODE_GAUSSIAN_TITLE_SHADOW_LAYER:I

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    goto :goto_1

    .line 1683
    .end local v0    # "pageLayer":Lcom/smartisanos/launcher/view/LayerManager$PageLayer;
    :cond_2
    iget-object v1, p0, Lcom/smartisanos/launcher/view/TitleView;->mBackShadowRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v1, p1}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    goto :goto_1
.end method

.method public setZ(F)V
    .locals 0
    .param p1, "z"    # F

    .prologue
    .line 340
    iput p1, p0, Lcom/smartisanos/launcher/view/TitleView;->mZ:F

    .line 341
    return-void
.end method

.method public showEditIcon()V
    .locals 2

    .prologue
    .line 371
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mEditIconRect:Lcom/smartisanos/smengine/RectNode;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    .line 372
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/TitleView;->setNeedDisplay()V

    .line 373
    return-void
.end method

.method public showTitleText()V
    .locals 2

    .prologue
    .line 381
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mTextRect:Lcom/smartisanos/launcher/view/TextView;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/TextView;->getTextView()Lcom/smartisanos/smengine/RectNode;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    .line 382
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/TitleView;->setNeedDisplay()V

    .line 383
    return-void
.end method

.method public switchTitleMode(Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;Lcom/smartisanos/smengine/AnimationTimeLine;F)V
    .locals 26
    .param p1, "anim"    # Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;
    .param p2, "anim_time_line"    # Lcom/smartisanos/smengine/AnimationTimeLine;
    .param p3, "time"    # F

    .prologue
    .line 1131
    const/16 v16, 0x2

    .line 1132
    .local v16, "mode":I
    const/16 v25, 0x1

    .line 1133
    .local v25, "withAnim":Z
    sget-object v6, Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;->TITLE_SHOW_EYE_AND_LOCK:Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;

    move-object/from16 v0, p1

    if-ne v6, v0, :cond_5

    .line 1134
    const/16 v16, 0x2

    .line 1138
    :cond_0
    :goto_0
    if-nez p2, :cond_1

    .line 1139
    const/16 v25, 0x0

    .line 1141
    :cond_1
    if-eqz v25, :cond_6

    .line 1142
    const/16 v24, 0x1

    .line 1143
    .local v24, "toMode":I
    const/4 v6, 0x2

    move/from16 v0, v16

    if-ne v6, v0, :cond_2

    .line 1144
    const/16 v24, 0x2

    .line 1146
    :cond_2
    move/from16 v23, v24

    .line 1147
    .local v23, "toM":I
    sget v6, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    invoke-static {v6}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v18

    .line 1148
    .local v18, "prop":Lcom/smartisanos/launcher/data/LayoutProperty;
    sget v6, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static {v6}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v19

    .line 1149
    .local v19, "propSingle":Lcom/smartisanos/launcher/data/LayoutProperty;
    move-object/from16 v0, v19

    iget v6, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_width:F

    move-object/from16 v0, v18

    iget v7, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_width:F

    div-float v21, v6, v7

    .line 1150
    .local v21, "scale":F
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/smartisanos/launcher/view/TitleView;->mRenderRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v6}, Lcom/smartisanos/smengine/RectNode;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v14

    .line 1152
    .local v14, "from":Lcom/smartisanos/smengine/math/Vector3f;
    move-object/from16 v0, p0

    iget v6, v0, Lcom/smartisanos/launcher/view/TitleView;->mHeight:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/smartisanos/launcher/view/TitleView;->mHeight:F

    move-object/from16 v0, v18

    iget v8, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_title_height:F

    sub-float/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    move-object/from16 v0, v18

    iget v7, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->title_page_spacing:F

    mul-float v7, v7, v21

    add-float v13, v6, v7

    .line 1153
    .local v13, "dis":F
    new-instance v17, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct/range {v17 .. v17}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 1154
    .local v17, "pageL":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/TitleView;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lcom/smartisanos/smengine/SceneNode;->getWorldTranslate(Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 1155
    new-instance v20, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct/range {v20 .. v20}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 1156
    .local v20, "rectL":Lcom/smartisanos/smengine/math/Vector3f;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/smartisanos/launcher/view/TitleView;->mRenderRect:Lcom/smartisanos/smengine/RectNode;

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Lcom/smartisanos/smengine/RectNode;->getWorldTranslate(Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 1157
    move-object/from16 v0, v17

    iget v6, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move-object/from16 v0, v18

    iget v7, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    move-object/from16 v0, v17

    iput v6, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 1158
    move-object/from16 v0, v20

    iget v6, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/smartisanos/launcher/view/TitleView;->mHeight:F

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    move-object/from16 v0, v20

    iput v6, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 1159
    move-object/from16 v0, v20

    iget v6, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move-object/from16 v0, v17

    iget v7, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    sub-float v15, v6, v7

    .line 1161
    .local v15, "h":F
    move-object/from16 v0, p0

    iget v6, v0, Lcom/smartisanos/launcher/view/TitleView;->mHeight:F

    move-object/from16 v0, v18

    iget v7, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_title_height:F

    sub-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    sub-float v13, v15, v6

    .line 1162
    new-instance v22, Lcom/smartisanos/smengine/math/Vector3f;

    iget v6, v14, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v7, v14, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    sub-float/2addr v7, v13

    iget v8, v14, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    move-object/from16 v0, v22

    invoke-direct {v0, v6, v7, v8}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    .line 1163
    .local v22, "to":Lcom/smartisanos/smengine/math/Vector3f;
    new-instance v2, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/smartisanos/launcher/view/TitleView;->mRenderRect:Lcom/smartisanos/smengine/RectNode;

    invoke-direct {v2, v6}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 1166
    .local v2, "down_anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setUpdateSceneNode(Z)V

    .line 1167
    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, p3, v6

    invoke-virtual {v2, v6}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 1168
    const/16 v6, 0xf

    invoke-virtual {v2, v6}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 1169
    const/4 v3, 0x0

    iget v4, v14, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v5, v14, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v6, v14, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    move-object/from16 v0, v22

    iget v7, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move-object/from16 v0, v22

    iget v8, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move-object/from16 v0, v22

    iget v9, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    .line 1170
    invoke-virtual/range {v2 .. v9}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFF)V

    .line 1171
    new-instance v6, Lcom/smartisanos/launcher/view/TitleView$5;

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v6, v0, v1}, Lcom/smartisanos/launcher/view/TitleView$5;-><init>(Lcom/smartisanos/launcher/view/TitleView;I)V

    .line 1172
    invoke-virtual {v2, v6}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 1178
    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v2}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 1179
    sget-boolean v6, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v6, :cond_3

    .line 1180
    new-instance v3, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/smartisanos/launcher/view/TitleView;->mGaussianRect:Lcom/smartisanos/smengine/RectNode;

    invoke-direct {v3, v6}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 1182
    .local v3, "down_anim_gaussian":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setUpdateSceneNode(Z)V

    .line 1183
    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, p3, v6

    invoke-virtual {v3, v6}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 1184
    const/16 v6, 0xf

    invoke-virtual {v3, v6}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 1185
    const/4 v4, 0x0

    iget v5, v14, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v6, v14, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v7, v14, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    move-object/from16 v0, v22

    iget v8, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move-object/from16 v0, v22

    iget v9, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move-object/from16 v0, v22

    iget v10, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    .line 1186
    invoke-virtual/range {v3 .. v10}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFF)V

    .line 1187
    new-instance v6, Lcom/smartisanos/launcher/view/TitleView$6;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/smartisanos/launcher/view/TitleView$6;-><init>(Lcom/smartisanos/launcher/view/TitleView;)V

    invoke-virtual {v3, v6}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 1194
    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v3}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 1196
    .end local v3    # "down_anim_gaussian":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    :cond_3
    new-instance v4, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/smartisanos/launcher/view/TitleView;->mRenderRect:Lcom/smartisanos/smengine/RectNode;

    invoke-direct {v4, v6}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 1199
    .local v4, "up_anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setUpdateSceneNode(Z)V

    .line 1200
    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, p3, v6

    invoke-virtual {v4, v6}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 1201
    const/16 v6, 0xf

    invoke-virtual {v4, v6}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 1202
    const/4 v5, 0x0

    move-object/from16 v0, v22

    iget v6, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move-object/from16 v0, v22

    iget v7, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move-object/from16 v0, v22

    iget v8, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    iget v9, v14, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v10, v14, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v11, v14, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-virtual/range {v4 .. v11}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFF)V

    .line 1203
    new-instance v6, Lcom/smartisanos/launcher/view/TitleView$7;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/smartisanos/launcher/view/TitleView$7;-><init>(Lcom/smartisanos/launcher/view/TitleView;)V

    invoke-virtual {v4, v6}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 1210
    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, p3, v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v4}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 1211
    sget-boolean v6, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v6, :cond_4

    .line 1212
    new-instance v5, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/smartisanos/launcher/view/TitleView;->mGaussianRect:Lcom/smartisanos/smengine/RectNode;

    invoke-direct {v5, v6}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 1215
    .local v5, "up_anim_gaussian":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setUpdateSceneNode(Z)V

    .line 1216
    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, p3, v6

    invoke-virtual {v5, v6}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 1217
    const/16 v6, 0xf

    invoke-virtual {v5, v6}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 1218
    const/4 v6, 0x0

    move-object/from16 v0, v22

    iget v7, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move-object/from16 v0, v22

    iget v8, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move-object/from16 v0, v22

    iget v9, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    iget v10, v14, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v11, v14, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v12, v14, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-virtual/range {v5 .. v12}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFF)V

    .line 1219
    new-instance v6, Lcom/smartisanos/launcher/view/TitleView$8;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/smartisanos/launcher/view/TitleView$8;-><init>(Lcom/smartisanos/launcher/view/TitleView;)V

    invoke-virtual {v5, v6}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 1227
    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, p3, v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v5}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 1232
    .end local v2    # "down_anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    .end local v4    # "up_anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    .end local v5    # "up_anim_gaussian":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    .end local v13    # "dis":F
    .end local v14    # "from":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v15    # "h":F
    .end local v17    # "pageL":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v18    # "prop":Lcom/smartisanos/launcher/data/LayoutProperty;
    .end local v19    # "propSingle":Lcom/smartisanos/launcher/data/LayoutProperty;
    .end local v20    # "rectL":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v21    # "scale":F
    .end local v22    # "to":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v23    # "toM":I
    .end local v24    # "toMode":I
    :cond_4
    :goto_1
    return-void

    .line 1135
    :cond_5
    sget-object v6, Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;->TITLE_SHOW_NAME:Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;

    move-object/from16 v0, p1

    if-ne v6, v0, :cond_0

    .line 1136
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 1230
    :cond_6
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/TitleView;->setMode(I)V

    goto :goto_1
.end method

.method public updateEyeIcon(Ljava/lang/String;)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 386
    iget-object v4, p0, Lcom/smartisanos/launcher/view/TitleView;->mEyeIconRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v1

    .line 387
    .local v1, "rs":Lcom/smartisanos/smengine/RenderState;
    iget-object v4, p0, Lcom/smartisanos/launcher/view/TitleView;->mEyeIconRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/RectNode;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v0

    .line 388
    .local v0, "pos":Lcom/smartisanos/smengine/math/Vector3f;
    iget v4, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v5, p0, Lcom/smartisanos/launcher/view/TitleView;->mWidth:F

    div-float/2addr v5, v6

    add-float v2, v4, v5

    .line 389
    .local v2, "x":F
    iget v4, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v5, p0, Lcom/smartisanos/launcher/view/TitleView;->mHeight:F

    div-float/2addr v5, v6

    add-float v3, v4, v5

    .line 390
    .local v3, "y":F
    iget-object v4, p0, Lcom/smartisanos/launcher/view/TitleView;->mLayoutProperty:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v4, v4, Lcom/smartisanos/launcher/data/LayoutProperty;->eye_icon_width:F

    div-float/2addr v4, v6

    sub-float v4, v2, v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/smartisanos/launcher/view/TitleView;->mLayoutProperty:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v5, v5, Lcom/smartisanos/launcher/data/LayoutProperty;->eye_icon_height:F

    div-float/2addr v5, v6

    sub-float v5, v3, v5

    float-to-int v5, v5

    iget-object v6, p0, Lcom/smartisanos/launcher/view/TitleView;->mLayoutProperty:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v6, v6, Lcom/smartisanos/launcher/data/LayoutProperty;->eye_icon_width:F

    float-to-int v6, v6

    iget-object v7, p0, Lcom/smartisanos/launcher/view/TitleView;->mLayoutProperty:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v7, v7, Lcom/smartisanos/launcher/data/LayoutProperty;->eye_icon_height:F

    float-to-int v7, v7

    invoke-virtual {v1, v4, v5, v6, v7}, Lcom/smartisanos/smengine/RenderState;->setScissor(IIII)V

    .line 394
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/smartisanos/smengine/RenderState;->setIsScissor(Z)V

    .line 395
    iget-object v4, p0, Lcom/smartisanos/launcher/view/TitleView;->mEyeIconRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v4, p1}, Lcom/smartisanos/smengine/RectNode;->setImageName(Ljava/lang/String;)V

    .line 409
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/TitleView;->setDisplayUpdate()V

    .line 410
    return-void
.end method

.method public updateGaussianMeshName()V
    .locals 3

    .prologue
    .line 1649
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "title"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v1

    iget-object v2, p0, Lcom/smartisanos/launcher/view/TitleView;->mPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/view/PageView;->getPageIndex(Lcom/smartisanos/launcher/view/Page;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "long.press.blur"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mGaussianMeshName:Ljava/lang/String;

    .line 1650
    return-void
.end method

.method public updateLayer(I)V
    .locals 4
    .param p1, "change"    # I

    .prologue
    .line 1619
    invoke-super {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->updateLayer(I)V

    .line 1620
    iget-object v2, p0, Lcom/smartisanos/launcher/view/TitleView;->mPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Page;->getLayStatus()I

    move-result v0

    .line 1621
    .local v0, "layerStatus":I
    invoke-static {}, Lcom/smartisanos/launcher/view/LayerManager;->getInstance()Lcom/smartisanos/launcher/view/LayerManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/smartisanos/launcher/view/LayerManager;->getPageLayer(I)Lcom/smartisanos/launcher/view/LayerManager$PageLayer;

    move-result-object v1

    .line 1622
    .local v1, "pageLayer":Lcom/smartisanos/launcher/view/LayerManager$PageLayer;
    iget-object v2, p0, Lcom/smartisanos/launcher/view/TitleView;->mBackShadowRect:Lcom/smartisanos/smengine/RectNode;

    if-eqz v2, :cond_0

    .line 1623
    iget-object v2, p0, Lcom/smartisanos/launcher/view/TitleView;->mBackShadowRect:Lcom/smartisanos/smengine/RectNode;

    iget v3, v1, Lcom/smartisanos/launcher/view/LayerManager$PageLayer;->TITLE_BACK_SHADOW_LAYER:I

    add-int/2addr v3, p1

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 1625
    :cond_0
    iget-object v2, p0, Lcom/smartisanos/launcher/view/TitleView;->mGaussianRect:Lcom/smartisanos/smengine/RectNode;

    if-eqz v2, :cond_1

    .line 1626
    iget-object v2, p0, Lcom/smartisanos/launcher/view/TitleView;->mGaussianRect:Lcom/smartisanos/smengine/RectNode;

    iget v3, v1, Lcom/smartisanos/launcher/view/LayerManager$PageLayer;->TITLE_GAUSSIAN_LAYER:I

    add-int/2addr v3, p1

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 1628
    :cond_1
    iget-object v2, p0, Lcom/smartisanos/launcher/view/TitleView;->mBackgroundRect:Lcom/smartisanos/smengine/RectNode;

    if-eqz v2, :cond_2

    .line 1629
    iget-object v2, p0, Lcom/smartisanos/launcher/view/TitleView;->mBackgroundRect:Lcom/smartisanos/smengine/RectNode;

    iget v3, v1, Lcom/smartisanos/launcher/view/LayerManager$PageLayer;->TITLE_VIEW_BG_LAYER:I

    add-int/2addr v3, p1

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 1631
    :cond_2
    iget-object v2, p0, Lcom/smartisanos/launcher/view/TitleView;->mRenderRect:Lcom/smartisanos/smengine/RectNode;

    if-eqz v2, :cond_3

    .line 1632
    iget-object v2, p0, Lcom/smartisanos/launcher/view/TitleView;->mRenderRect:Lcom/smartisanos/smengine/RectNode;

    iget v3, v1, Lcom/smartisanos/launcher/view/LayerManager$PageLayer;->TITLE_VIEW_RENDER_RECT_LAYER:I

    add-int/2addr v3, p1

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 1634
    :cond_3
    iget-object v2, p0, Lcom/smartisanos/launcher/view/TitleView;->mTextRect:Lcom/smartisanos/launcher/view/TextView;

    if-eqz v2, :cond_4

    .line 1635
    iget-object v2, p0, Lcom/smartisanos/launcher/view/TitleView;->mTextRect:Lcom/smartisanos/launcher/view/TextView;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/TextView;->getTextView()Lcom/smartisanos/smengine/RectNode;

    move-result-object v2

    iget v3, v1, Lcom/smartisanos/launcher/view/LayerManager$PageLayer;->TITLE_VIEW_EDIT_ICON_LAYER:I

    add-int/2addr v3, p1

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 1637
    :cond_4
    iget-object v2, p0, Lcom/smartisanos/launcher/view/TitleView;->mEditIconRect:Lcom/smartisanos/smengine/RectNode;

    if-eqz v2, :cond_5

    .line 1638
    iget-object v2, p0, Lcom/smartisanos/launcher/view/TitleView;->mEditIconRect:Lcom/smartisanos/smengine/RectNode;

    iget v3, v1, Lcom/smartisanos/launcher/view/LayerManager$PageLayer;->TITLE_VIEW_EDIT_ICON_LAYER:I

    add-int/2addr v3, p1

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 1640
    :cond_5
    iget-object v2, p0, Lcom/smartisanos/launcher/view/TitleView;->mEyeIconRect:Lcom/smartisanos/smengine/RectNode;

    if-eqz v2, :cond_6

    .line 1641
    iget-object v2, p0, Lcom/smartisanos/launcher/view/TitleView;->mEyeIconRect:Lcom/smartisanos/smengine/RectNode;

    iget v3, v1, Lcom/smartisanos/launcher/view/LayerManager$PageLayer;->TITLE_VIEW_EYE_ICON_LAYER:I

    add-int/2addr v3, p1

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 1643
    :cond_6
    iget-object v2, p0, Lcom/smartisanos/launcher/view/TitleView;->mLockIconRect:Lcom/smartisanos/smengine/RectNode;

    if-eqz v2, :cond_7

    .line 1644
    iget-object v2, p0, Lcom/smartisanos/launcher/view/TitleView;->mLockIconRect:Lcom/smartisanos/smengine/RectNode;

    iget v3, v1, Lcom/smartisanos/launcher/view/LayerManager$PageLayer;->TITLE_VIEW_LOCK_ICON_LAYER:I

    add-int/2addr v3, p1

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 1646
    :cond_7
    return-void
.end method

.method public updateLockIcon(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 414
    return-void
.end method

.method public updateUV()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v3, 0x0

    .line 1653
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mGaussianRect:Lcom/smartisanos/smengine/RectNode;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/TitleView;->mPos:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RectNode;->getWorldTranslate(Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 1654
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mPos:Lcom/smartisanos/smengine/math/Vector3f;

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget-object v1, p0, Lcom/smartisanos/launcher/view/TitleView;->mPos:Lcom/smartisanos/smengine/math/Vector3f;

    iget v1, v1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget-object v2, p0, Lcom/smartisanos/launcher/view/TitleView;->mPos:Lcom/smartisanos/smengine/math/Vector3f;

    iget v2, v2, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    iget-object v4, p0, Lcom/smartisanos/launcher/view/TitleView;->mGaussianRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/RectNode;->getWidth()F

    move-result v4

    iget-object v5, p0, Lcom/smartisanos/launcher/view/TitleView;->mGaussianRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v5}, Lcom/smartisanos/smengine/RectNode;->getHeight()F

    move-result v5

    iget-object v6, p0, Lcom/smartisanos/launcher/view/TitleView;->mUV:[F

    invoke-static/range {v0 .. v6}, Lcom/smartisanos/launcher/data/Utils;->getUVOnScreen(FFFZFF[F)V

    .line 1656
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/World;->getMeshManager()Lcom/smartisanos/smengine/MeshManager;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/TitleView;->mGaussianMeshName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/MeshManager;->getMesh(Ljava/lang/String;)Lcom/smartisanos/smengine/Mesh;

    move-result-object v7

    .line 1657
    .local v7, "newMesh":Lcom/smartisanos/smengine/Mesh;
    if-nez v7, :cond_0

    .line 1658
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mGaussianRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->getMesh()Lcom/smartisanos/smengine/Mesh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Mesh;->clone()Lcom/smartisanos/smengine/Mesh;

    move-result-object v7

    .line 1659
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/World;->getMeshManager()Lcom/smartisanos/smengine/MeshManager;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/TitleView;->mGaussianMeshName:Ljava/lang/String;

    invoke-virtual {v0, v1, v7}, Lcom/smartisanos/smengine/MeshManager;->addMesh(Ljava/lang/String;Lcom/smartisanos/smengine/Mesh;)Lcom/smartisanos/smengine/Mesh;

    .line 1661
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mGaussianRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->getMesh()Lcom/smartisanos/smengine/Mesh;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/smartisanos/smengine/Mesh;->getTexVertexArray(I)[F

    move-result-object v0

    if-nez v0, :cond_1

    .line 1662
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mGaussianRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0, v7}, Lcom/smartisanos/smengine/RectNode;->setMesh(Lcom/smartisanos/smengine/Mesh;)V

    .line 1663
    const/16 v0, 0x8

    new-array v8, v0, [F

    fill-array-data v8, :array_0

    .line 1664
    .local v8, "shadowUV":[F
    invoke-virtual {v7, v9, v8}, Lcom/smartisanos/smengine/Mesh;->setTexVertexArray(I[F)V

    .line 1669
    .end local v8    # "shadowUV":[F
    :goto_0
    return-void

    .line 1666
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mGaussianRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0, v7}, Lcom/smartisanos/smengine/RectNode;->updateMesh(Lcom/smartisanos/smengine/Mesh;)V

    .line 1667
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TitleView;->mUV:[F

    invoke-virtual {v7, v3, v0}, Lcom/smartisanos/smengine/Mesh;->updateTexVertexFloatBuffer(I[F)V

    goto :goto_0

    .line 1663
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

.method public verifyPassword()V
    .locals 5

    .prologue
    .line 534
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    .line 535
    .local v0, "mainView":Lcom/smartisanos/launcher/view/MainView;
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->isVerifyPasswordRunning()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 536
    sget-object v3, Lcom/smartisanos/launcher/view/TitleView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v4, "don\'t show password activity by isVerifyPasswordRunning is true"

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 553
    :cond_0
    :goto_0
    return-void

    .line 539
    :cond_1
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/smartisanos/launcher/view/MainView;->setVerifyPasswordRunningStatus(Z)V

    .line 540
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v3

    iget-object v4, p0, Lcom/smartisanos/launcher/view/TitleView;->mPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/view/PageView;->setConfirmPasswordPage(Lcom/smartisanos/launcher/view/Page;)V

    .line 541
    const/16 v1, 0x15

    .line 542
    .local v1, "requestCode":I
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/smartisanos/launcher/actions/FingerPrintAction;->showFingerPrintVerifyUI(Landroid/app/Activity;I)Z

    move-result v2

    .line 543
    .local v2, "useFinger":Z
    if-eqz v2, :cond_0

    goto :goto_0
.end method

.method public writeXML(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;)V
    .locals 5
    .param p1, "parent"    # Lorg/w3c/dom/Element;
    .param p2, "document"    # Lorg/w3c/dom/Document;

    .prologue
    .line 1561
    const-string v2, "TitleView"

    invoke-interface {p2, v2}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 1562
    .local v0, "element":Lorg/w3c/dom/Element;
    const-string v2, "mRenderRect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/smartisanos/launcher/view/TitleView;->mRenderRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1563
    const-string v2, "mBackShadowRect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/smartisanos/launcher/view/TitleView;->mBackShadowRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1564
    const-string v2, "mBackgroundRect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/smartisanos/launcher/view/TitleView;->mBackgroundRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1565
    const-string v2, "mTextRect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/smartisanos/launcher/view/TitleView;->mTextRect:Lcom/smartisanos/launcher/view/TextView;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1566
    const-string v2, "mEditIconRect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/smartisanos/launcher/view/TitleView;->mEditIconRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1567
    const-string v2, "mEyeIconRect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/smartisanos/launcher/view/TitleView;->mEyeIconRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1568
    const-string v2, "mLockIconRect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/smartisanos/launcher/view/TitleView;->mLockIconRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1569
    const-string v2, "mRenderTarget"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/smartisanos/launcher/view/TitleView;->mRenderTarget:Lcom/smartisanos/smengine/RenderTarget;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1570
    const-string v2, "mRenderTargetTextureName"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/smartisanos/launcher/view/TitleView;->mRenderTargetTextureName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1571
    const-string v2, "mWidth"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/smartisanos/launcher/view/TitleView;->mWidth:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1572
    const-string v2, "mHeight"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/smartisanos/launcher/view/TitleView;->mHeight:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1573
    const-string v2, "mIsAnimating"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/smartisanos/launcher/view/TitleView;->mIsAnimating:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1574
    const-string v2, "mIsDisplayIcon"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/smartisanos/launcher/view/TitleView;->mIsDisplayIcon:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1575
    const-string v2, "mIsDrawTextWithBatch"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/smartisanos/launcher/view/TitleView;->mIsDrawTextWithBatch:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1576
    const-string v2, "mIsDrawShadowWithBatch"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/smartisanos/launcher/view/TitleView;->mIsDrawShadowWithBatch:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1577
    invoke-super {p0, v0, p2}, Lcom/smartisanos/smengine/SceneNode;->writeXML(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;)V

    .line 1578
    iget-object v2, p0, Lcom/smartisanos/launcher/view/TitleView;->mRenderRect:Lcom/smartisanos/smengine/RectNode;

    if-eqz v2, :cond_0

    .line 1579
    const-string v2, "mRenderRect"

    invoke-interface {p2, v2}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 1580
    .local v1, "rect":Lorg/w3c/dom/Element;
    iget-object v2, p0, Lcom/smartisanos/launcher/view/TitleView;->mRenderRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v2, v1, p2}, Lcom/smartisanos/smengine/RectNode;->writeXML(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;)V

    .line 1581
    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1583
    .end local v1    # "rect":Lorg/w3c/dom/Element;
    :cond_0
    iget-object v2, p0, Lcom/smartisanos/launcher/view/TitleView;->mBackgroundRect:Lcom/smartisanos/smengine/RectNode;

    if-eqz v2, :cond_1

    .line 1584
    const-string v2, "mBackgroundRect"

    invoke-interface {p2, v2}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 1585
    .restart local v1    # "rect":Lorg/w3c/dom/Element;
    iget-object v2, p0, Lcom/smartisanos/launcher/view/TitleView;->mBackgroundRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v2, v1, p2}, Lcom/smartisanos/smengine/RectNode;->writeXML(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;)V

    .line 1586
    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1588
    .end local v1    # "rect":Lorg/w3c/dom/Element;
    :cond_1
    iget-object v2, p0, Lcom/smartisanos/launcher/view/TitleView;->mBackShadowRect:Lcom/smartisanos/smengine/RectNode;

    if-eqz v2, :cond_2

    .line 1589
    const-string v2, "mBackShadowRect"

    invoke-interface {p2, v2}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 1590
    .restart local v1    # "rect":Lorg/w3c/dom/Element;
    iget-object v2, p0, Lcom/smartisanos/launcher/view/TitleView;->mBackShadowRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v2, v1, p2}, Lcom/smartisanos/smengine/RectNode;->writeXML(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;)V

    .line 1591
    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1593
    .end local v1    # "rect":Lorg/w3c/dom/Element;
    :cond_2
    iget-object v2, p0, Lcom/smartisanos/launcher/view/TitleView;->mTextRect:Lcom/smartisanos/launcher/view/TextView;

    if-eqz v2, :cond_3

    .line 1594
    const-string v2, "mTextRect"

    invoke-interface {p2, v2}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 1595
    .restart local v1    # "rect":Lorg/w3c/dom/Element;
    iget-object v2, p0, Lcom/smartisanos/launcher/view/TitleView;->mTextRect:Lcom/smartisanos/launcher/view/TextView;

    invoke-virtual {v2, v1, p2}, Lcom/smartisanos/launcher/view/TextView;->writeXML(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;)V

    .line 1596
    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1598
    .end local v1    # "rect":Lorg/w3c/dom/Element;
    :cond_3
    iget-object v2, p0, Lcom/smartisanos/launcher/view/TitleView;->mEditIconRect:Lcom/smartisanos/smengine/RectNode;

    if-eqz v2, :cond_4

    .line 1599
    const-string v2, "mEditIconRect"

    invoke-interface {p2, v2}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 1600
    .restart local v1    # "rect":Lorg/w3c/dom/Element;
    iget-object v2, p0, Lcom/smartisanos/launcher/view/TitleView;->mEditIconRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v2, v1, p2}, Lcom/smartisanos/smengine/RectNode;->writeXML(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;)V

    .line 1601
    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1603
    .end local v1    # "rect":Lorg/w3c/dom/Element;
    :cond_4
    iget-object v2, p0, Lcom/smartisanos/launcher/view/TitleView;->mEyeIconRect:Lcom/smartisanos/smengine/RectNode;

    if-eqz v2, :cond_5

    .line 1604
    const-string v2, "mEyeIconRect"

    invoke-interface {p2, v2}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 1605
    .restart local v1    # "rect":Lorg/w3c/dom/Element;
    iget-object v2, p0, Lcom/smartisanos/launcher/view/TitleView;->mEyeIconRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v2, v1, p2}, Lcom/smartisanos/smengine/RectNode;->writeXML(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;)V

    .line 1606
    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1608
    .end local v1    # "rect":Lorg/w3c/dom/Element;
    :cond_5
    iget-object v2, p0, Lcom/smartisanos/launcher/view/TitleView;->mLockIconRect:Lcom/smartisanos/smengine/RectNode;

    if-eqz v2, :cond_6

    .line 1609
    const-string v2, "mLockIconRect"

    invoke-interface {p2, v2}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 1610
    .restart local v1    # "rect":Lorg/w3c/dom/Element;
    iget-object v2, p0, Lcom/smartisanos/launcher/view/TitleView;->mLockIconRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v2, v1, p2}, Lcom/smartisanos/smengine/RectNode;->writeXML(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;)V

    .line 1611
    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1614
    .end local v1    # "rect":Lorg/w3c/dom/Element;
    :cond_6
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1615
    return-void
.end method
