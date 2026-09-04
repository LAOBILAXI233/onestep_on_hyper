.class public Lcom/smartisanos/launcher/view/UnlockAnimationXML;
.super Ljava/lang/Object;
.source "UnlockAnimationXML.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;,
        Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellPassData;
    }
.end annotation


.field private static final ANIM_DELAY_FOR_WIZARD:F = 0.4f


.field private mAllPageCell:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/launcher/view/Cell;",
            ">;"
        }
    .end annotation
.end field

.field private mBackgroundModulateColorEnd:Lcom/smartisanos/smengine/math/Vector3f;

.field private mBackgroundModulateColorStart:Lcom/smartisanos/smengine/math/Vector3f;

.field private mCameraZ:F

.field private mCellAnimationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;",
            ">;"
        }
    .end annotation
.end field

.field private mCellModulateColor:Lcom/smartisanos/smengine/math/Vector3f;

.field private mDelayTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

.field private mDockModulateColor:Lcom/smartisanos/smengine/math/Vector3f;

.field private mForWizard:Z

.field private mIsInit:Z

.field private mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

.field private mPageView:Lcom/smartisanos/launcher/view/PageView;

.field private mShadowColor:Lcom/smartisanos/smengine/math/Vector4f;

.field public mTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

.field private mTimePerFrame:F

.field private mTotalDuration:F

.field private mTotalFrame:I

.field private mUnlockAnimXMLInflater:Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater;

.field private page:Lcom/smartisanos/launcher/view/Page;


.method public constructor <init>(Lcom/smartisanos/launcher/theme/Theme;Ljava/lang/String;)V
    .locals 3
    .param p1, "currentTheme"    # Lcom/smartisanos/launcher/theme/Theme;
    .param p2, "xmlName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const v0, 0x3fb33333    # 1.4f

    iput v0, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->mTotalDuration:F

    .line 26
    const/16 v0, 0x96

    iput v0, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->mTotalFrame:I

    .line 32
    iput-boolean v2, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->mIsInit:Z

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->mAllPageCell:Ljava/util/ArrayList;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->mCellAnimationList:Ljava/util/ArrayList;

    .line 39
    new-instance v0, Lcom/smartisanos/smengine/math/Vector4f;

    invoke-direct {v0}, Lcom/smartisanos/smengine/math/Vector4f;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->mShadowColor:Lcom/smartisanos/smengine/math/Vector4f;

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->mDelayTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 42
    iput-boolean v2, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->mForWizard:Z

    .line 43
    new-instance v0, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v0, v1, v1, v1}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->mCellModulateColor:Lcom/smartisanos/smengine/math/Vector3f;

    .line 44
    new-instance v0, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v0, v1, v1, v1}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->mDockModulateColor:Lcom/smartisanos/smengine/math/Vector3f;

    .line 45
    new-instance v0, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v0, v1, v1, v1}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->mBackgroundModulateColorStart:Lcom/smartisanos/smengine/math/Vector3f;

    .line 46
    new-instance v0, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v0, v1, v1, v1}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->mBackgroundModulateColorEnd:Lcom/smartisanos/smengine/math/Vector3f;

    .line 58
    sget v0, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    .line 59
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    .line 60
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/World;->getCameraManager()Lcom/smartisanos/smengine/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/CameraManager;->getCurrentCamera()Lcom/smartisanos/smengine/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Camera;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/math/Vector3f;->getZ()F

    move-result v0

    iput v0, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->mCameraZ:F

    .line 62
    new-instance v0, Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater;

    invoke-direct {v0, p1, p2}, Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater;-><init>(Lcom/smartisanos/launcher/theme/Theme;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->mUnlockAnimXMLInflater:Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater;

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "xmlName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const v0, 0x3fb33333    # 1.4f

    iput v0, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->mTotalDuration:F

    .line 26
    const/16 v0, 0x96

    iput v0, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->mTotalFrame:I

    .line 32
    iput-boolean v2, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->mIsInit:Z

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->mAllPageCell:Ljava/util/ArrayList;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->mCellAnimationList:Ljava/util/ArrayList;

    .line 39
    new-instance v0, Lcom/smartisanos/smengine/math/Vector4f;

    invoke-direct {v0}, Lcom/smartisanos/smengine/math/Vector4f;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->mShadowColor:Lcom/smartisanos/smengine/math/Vector4f;

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->mDelayTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 42
    iput-boolean v2, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->mForWizard:Z

    .line 43
    new-instance v0, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v0, v1, v1, v1}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->mCellModulateColor:Lcom/smartisanos/smengine/math/Vector3f;

    .line 44
    new-instance v0, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v0, v1, v1, v1}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->mDockModulateColor:Lcom/smartisanos/smengine/math/Vector3f;

    .line 45
    new-instance v0, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v0, v1, v1, v1}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->mBackgroundModulateColorStart:Lcom/smartisanos/smengine/math/Vector3f;

    .line 46
    new-instance v0, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v0, v1, v1, v1}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->mBackgroundModulateColorEnd:Lcom/smartisanos/smengine/math/Vector3f;

    .line 50
    sget v0, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    .line 51
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    .line 52
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/World;->getCameraManager()Lcom/smartisanos/smengine/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/CameraManager;->getCurrentCamera()Lcom/smartisanos/smengine/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Camera;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/math/Vector3f;->getZ()F

    move-result v0

    iput v0, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->mCameraZ:F

    .line 54
    new-instance v0, Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater;

    invoke-direct {v0, p1}, Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->mUnlockAnimXMLInflater:Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater;

    .line 55
    return-void
.end method

.method static synthetic access$002(Lcom/smartisanos/launcher/view/UnlockAnimationXML;Lcom/smartisanos/smengine/AnimationTimeLine;)Lcom/smartisanos/smengine/AnimationTimeLine;
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/UnlockAnimationXML;
    .param p1, "x1"    # Lcom/smartisanos/smengine/AnimationTimeLine;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->mDelayTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    return-object p1
.end method

.method static synthetic access$1000(Lcom/smartisanos/launcher/view/UnlockAnimationXML;)Lcom/smartisanos/launcher/view/PageView;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/smartisanos/launcher/view/UnlockAnimationXML;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/UnlockAnimationXML;
    .param p1, "x1"    # Z

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->mForWizard:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/smartisanos/launcher/view/UnlockAnimationXML;)Lcom/smartisanos/smengine/math/Vector3f;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->mBackgroundModulateColorStart:Lcom/smartisanos/smengine/math/Vector3f;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/smartisanos/launcher/view/UnlockAnimationXML;)Lcom/smartisanos/smengine/math/Vector3f;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->mBackgroundModulateColorEnd:Lcom/smartisanos/smengine/math/Vector3f;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/smartisanos/launcher/view/UnlockAnimationXML;)Lcom/smartisanos/smengine/math/Vector3f;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->mDockModulateColor:Lcom/smartisanos/smengine/math/Vector3f;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/smartisanos/launcher/view/UnlockAnimationXML;)Lcom/smartisanos/smengine/math/Vector4f;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->mShadowColor:Lcom/smartisanos/smengine/math/Vector4f;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/smartisanos/launcher/view/UnlockAnimationXML;)Lcom/smartisanos/smengine/math/Vector3f;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->mCellModulateColor:Lcom/smartisanos/smengine/math/Vector3f;

    return-object v0
.end method

.method static synthetic access$200(Lcom/smartisanos/launcher/view/UnlockAnimationXML;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->mAllPageCell:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/smartisanos/launcher/view/UnlockAnimationXML;)Lcom/smartisanos/launcher/view/Page;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->page:Lcom/smartisanos/launcher/view/Page;

    return-object v0
.end method

.method static synthetic access$302(Lcom/smartisanos/launcher/view/UnlockAnimationXML;Lcom/smartisanos/launcher/view/Page;)Lcom/smartisanos/launcher/view/Page;
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/UnlockAnimationXML;
    .param p1, "x1"    # Lcom/smartisanos/launcher/view/Page;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->page:Lcom/smartisanos/launcher/view/Page;

    return-object p1
.end method

.method static synthetic access$700(Lcom/smartisanos/launcher/view/UnlockAnimationXML;)F
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    .prologue
    .line 24
    iget v0, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->mTimePerFrame:F

    return v0
.end method

.method static synthetic access$800(Lcom/smartisanos/launcher/view/UnlockAnimationXML;)I
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    .prologue
    .line 24
    iget v0, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->mTotalFrame:I

    return v0
.end method

.method static synthetic access$900(Lcom/smartisanos/launcher/view/UnlockAnimationXML;)F
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    .prologue
    .line 24
    iget v0, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->mCameraZ:F

    return v0
.end method


.method public generateLauncherAnimationUseXML()V
    .locals 15

    .prologue
    .line 194
    iget-object v9, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->mUnlockAnimXMLInflater:Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater;

    if-eqz v9, :cond_d

    .line 196
    iget-object v9, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->mUnlockAnimXMLInflater:Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater;

    iget v9, v9, Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater;->totalDuration:F

    iput v9, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->mTotalDuration:F

    .line 197
    iget-object v9, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->mUnlockAnimXMLInflater:Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater;

    iget v9, v9, Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater;->totalFrame:I

    iput v9, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->mTotalFrame:I

    .line 198
    iget v9, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->mTotalDuration:F

    iget v10, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->mTotalFrame:I

    int-to-float v10, v10

    div-float/2addr v9, v10

    iput v9, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->mTimePerFrame:F

    .line 201
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v9, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->mUnlockAnimXMLInflater:Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater;

    iget-object v9, v9, Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater;->mCellAnimList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v4, v9, :cond_e

    .line 202
    iget-object v9, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->mUnlockAnimXMLInflater:Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater;

    iget-object v9, v9, Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater;->mCellAnimList:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater$CellAnimationXMLInfo;

    .line 204
    .local v1, "cellAnimationXMLinfo":Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater$CellAnimationXMLInfo;
    const/4 v8, 0x0

    .line 205
    .local v8, "target":Lcom/smartisanos/smengine/SceneNode;
    iget v9, v1, Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater$CellAnimationXMLInfo;->cellIndex:I

    const/16 v10, 0x29a

    if-ne v9, v10, :cond_1

    .line 208
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/MainView;->getStatusBar()Lcom/smartisanos/launcher/view/StatusBar;

    move-result-object v8

    .line 283
    :cond_0
    :goto_1
    new-instance v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;

    iget v9, v1, Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater$CellAnimationXMLInfo;->animDelayFrame:I

    int-to-float v9, v9

    invoke-direct {v0, p0, v8, v9}, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;-><init>(Lcom/smartisanos/launcher/view/UnlockAnimationXML;Lcom/smartisanos/smengine/SceneNode;F)V

    .line 284
    .local v0, "ca":Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;
    iget v9, v1, Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater$CellAnimationXMLInfo;->initAlpha:F

    invoke-static {v0, v9}, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->access$402(Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;F)F

    .line 285
    iget v9, v1, Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater$CellAnimationXMLInfo;->initScale:F

    invoke-static {v0, v9}, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->access$502(Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;F)F

    .line 287
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_2
    iget-object v9, v1, Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater$CellAnimationXMLInfo;->passList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v5, v9, :cond_8

    .line 289
    iget-object v9, v1, Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater$CellAnimationXMLInfo;->passList:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater$AnimationPassXMLInfo;

    .line 291
    .local v6, "passXMLInfo":Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater$AnimationPassXMLInfo;
    new-instance v3, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellPassData;

    invoke-direct {v3, p0}, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellPassData;-><init>(Lcom/smartisanos/launcher/view/UnlockAnimationXML;)V

    .line 292
    .local v3, "cpd":Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellPassData;
    iget v9, v6, Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater$AnimationPassXMLInfo;->animPassDurationFrame:I

    iput v9, v3, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellPassData;->mDuration_frame:I

    .line 293
    iget v9, v6, Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater$AnimationPassXMLInfo;->animPassInterpolator:I

    iput v9, v3, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellPassData;->mInterpolator:I

    .line 294
    iget v9, v6, Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater$AnimationPassXMLInfo;->animPassTargetScale:F

    iput v9, v3, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellPassData;->mTargetScale:F

    .line 295
    iget v9, v6, Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater$AnimationPassXMLInfo;->animPassTargetAlpha:F

    iput v9, v3, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellPassData;->mTargetAlpha:F

    .line 297
    invoke-static {v0}, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->access$600(Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 210
    .end local v0    # "ca":Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;
    .end local v3    # "cpd":Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellPassData;
    .end local v5    # "j":I
    .end local v6    # "passXMLInfo":Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater$AnimationPassXMLInfo;
    :cond_1
    iget v9, v1, Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater$CellAnimationXMLInfo;->cellIndex:I

    const/16 v10, 0x378

    if-ne v9, v10, :cond_3

    .line 213
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v8

    .line 215
    sget v9, Lcom/smartisanos/launcher/data/Constants;->sPageStyle:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    .line 216
    iget-object v9, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->mDockModulateColor:Lcom/smartisanos/smengine/math/Vector3f;

    sget-object v10, Lcom/smartisanos/launcher/data/Constants;->INIT_COLOR_FOR_UNLOCK_ANIMATION9:[[I

    const/4 v11, 0x1

    aget-object v10, v10, v11

    const/4 v11, 0x0

    aget v10, v10, v11

    int-to-float v10, v10

    const v11, 0x3c23d70a    # 0.01f

    mul-float/2addr v10, v11

    sget-object v11, Lcom/smartisanos/launcher/data/Constants;->INIT_COLOR_FOR_UNLOCK_ANIMATION9:[[I

    const/4 v12, 0x1

    aget-object v11, v11, v12

    const/4 v12, 0x1

    aget v11, v11, v12

    int-to-float v11, v11

    const v12, 0x3c23d70a    # 0.01f

    mul-float/2addr v11, v12

    sget-object v12, Lcom/smartisanos/launcher/data/Constants;->INIT_COLOR_FOR_UNLOCK_ANIMATION9:[[I

    const/4 v13, 0x1

    aget-object v12, v12, v13

    const/4 v13, 0x2

    aget v12, v12, v13

    int-to-float v12, v12

    const v13, 0x3c23d70a    # 0.01f

    mul-float/2addr v12, v13

    invoke-virtual {v9, v10, v11, v12}, Lcom/smartisanos/smengine/math/Vector3f;->set(FFF)Lcom/smartisanos/smengine/math/Vector3f;

    goto/16 :goto_1

    .line 221
    :cond_2
    sget v9, Lcom/smartisanos/launcher/data/Constants;->sPageStyle:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_0

    .line 222
    iget-object v9, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->mDockModulateColor:Lcom/smartisanos/smengine/math/Vector3f;

    sget-object v10, Lcom/smartisanos/launcher/data/Constants;->INIT_COLOR_FOR_UNLOCK_ANIMATION16:[[I

    const/4 v11, 0x1

    aget-object v10, v10, v11

    const/4 v11, 0x0

    aget v10, v10, v11

    int-to-float v10, v10

    const v11, 0x3c23d70a    # 0.01f

    mul-float/2addr v10, v11

    sget-object v11, Lcom/smartisanos/launcher/data/Constants;->INIT_COLOR_FOR_UNLOCK_ANIMATION16:[[I

    const/4 v12, 0x1

    aget-object v11, v11, v12

    const/4 v12, 0x1

    aget v11, v11, v12

    int-to-float v11, v11

    const v12, 0x3c23d70a    # 0.01f

    mul-float/2addr v11, v12

    sget-object v12, Lcom/smartisanos/launcher/data/Constants;->INIT_COLOR_FOR_UNLOCK_ANIMATION16:[[I

    const/4 v13, 0x1

    aget-object v12, v12, v13

    const/4 v13, 0x2

    aget v12, v12, v13

    int-to-float v12, v12

    const v13, 0x3c23d70a    # 0.01f

    mul-float/2addr v12, v13

    invoke-virtual {v9, v10, v11, v12}, Lcom/smartisanos/smengine/math/Vector3f;->set(FFF)Lcom/smartisanos/smengine/math/Vector3f;

    goto/16 :goto_1

    .line 228
    :cond_3
    iget v9, v1, Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater$CellAnimationXMLInfo;->cellIndex:I

    const/16 v10, 0x3e7

    if-ne v9, v10, :cond_5

    .line 230
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/MainView;->getBackground()Lcom/smartisanos/smengine/RectNode;

    move-result-object v8

    .line 232
    sget v9, Lcom/smartisanos/launcher/data/Constants;->sPageStyle:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_4

    .line 233
    iget-object v9, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->mBackgroundModulateColorStart:Lcom/smartisanos/smengine/math/Vector3f;

    sget-object v10, Lcom/smartisanos/launcher/data/Constants;->INIT_COLOR_FOR_UNLOCK_ANIMATION9:[[I

    const/4 v11, 0x3

    aget-object v10, v10, v11

    const/4 v11, 0x0

    aget v10, v10, v11

    int-to-float v10, v10

    const v11, 0x3c23d70a    # 0.01f

    mul-float/2addr v10, v11

    sget-object v11, Lcom/smartisanos/launcher/data/Constants;->INIT_COLOR_FOR_UNLOCK_ANIMATION9:[[I

    const/4 v12, 0x3

    aget-object v11, v11, v12

    const/4 v12, 0x1

    aget v11, v11, v12

    int-to-float v11, v11

    const v12, 0x3c23d70a    # 0.01f

    mul-float/2addr v11, v12

    sget-object v12, Lcom/smartisanos/launcher/data/Constants;->INIT_COLOR_FOR_UNLOCK_ANIMATION9:[[I

    const/4 v13, 0x3

    aget-object v12, v12, v13

    const/4 v13, 0x2

    aget v12, v12, v13

    int-to-float v12, v12

    const v13, 0x3c23d70a    # 0.01f

    mul-float/2addr v12, v13

    invoke-virtual {v9, v10, v11, v12}, Lcom/smartisanos/smengine/math/Vector3f;->set(FFF)Lcom/smartisanos/smengine/math/Vector3f;

    .line 237
    iget-object v9, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->mBackgroundModulateColorEnd:Lcom/smartisanos/smengine/math/Vector3f;

    sget-object v10, Lcom/smartisanos/launcher/data/Constants;->INIT_COLOR_FOR_UNLOCK_ANIMATION9:[[I

    const/4 v11, 0x3

    aget-object v10, v10, v11

    const/4 v11, 0x3

    aget v10, v10, v11

    int-to-float v10, v10

    const v11, 0x3c23d70a    # 0.01f

    mul-float/2addr v10, v11

    sget-object v11, Lcom/smartisanos/launcher/data/Constants;->INIT_COLOR_FOR_UNLOCK_ANIMATION9:[[I

    const/4 v12, 0x3

    aget-object v11, v11, v12

    const/4 v12, 0x4

    aget v11, v11, v12

    int-to-float v11, v11

    const v12, 0x3c23d70a    # 0.01f

    mul-float/2addr v11, v12

    sget-object v12, Lcom/smartisanos/launcher/data/Constants;->INIT_COLOR_FOR_UNLOCK_ANIMATION9:[[I

    const/4 v13, 0x3

    aget-object v12, v12, v13

    const/4 v13, 0x5

    aget v12, v12, v13

    int-to-float v12, v12

    const v13, 0x3c23d70a    # 0.01f

    mul-float/2addr v12, v13

    invoke-virtual {v9, v10, v11, v12}, Lcom/smartisanos/smengine/math/Vector3f;->set(FFF)Lcom/smartisanos/smengine/math/Vector3f;

    goto/16 :goto_1

    .line 242
    :cond_4
    sget v9, Lcom/smartisanos/launcher/data/Constants;->sPageStyle:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_0

    .line 243
    iget-object v9, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->mBackgroundModulateColorStart:Lcom/smartisanos/smengine/math/Vector3f;

    sget-object v10, Lcom/smartisanos/launcher/data/Constants;->INIT_COLOR_FOR_UNLOCK_ANIMATION16:[[I

    const/4 v11, 0x3

    aget-object v10, v10, v11

    const/4 v11, 0x0

    aget v10, v10, v11

    int-to-float v10, v10

    const v11, 0x3c23d70a    # 0.01f

    mul-float/2addr v10, v11

    sget-object v11, Lcom/smartisanos/launcher/data/Constants;->INIT_COLOR_FOR_UNLOCK_ANIMATION16:[[I

    const/4 v12, 0x3

    aget-object v11, v11, v12

    const/4 v12, 0x1

    aget v11, v11, v12

    int-to-float v11, v11

    const v12, 0x3c23d70a    # 0.01f

    mul-float/2addr v11, v12

    sget-object v12, Lcom/smartisanos/launcher/data/Constants;->INIT_COLOR_FOR_UNLOCK_ANIMATION16:[[I

    const/4 v13, 0x3

    aget-object v12, v12, v13

    const/4 v13, 0x2

    aget v12, v12, v13

    int-to-float v12, v12

    const v13, 0x3c23d70a    # 0.01f

    mul-float/2addr v12, v13

    invoke-virtual {v9, v10, v11, v12}, Lcom/smartisanos/smengine/math/Vector3f;->set(FFF)Lcom/smartisanos/smengine/math/Vector3f;

    .line 247
    iget-object v9, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->mBackgroundModulateColorEnd:Lcom/smartisanos/smengine/math/Vector3f;

    sget-object v10, Lcom/smartisanos/launcher/data/Constants;->INIT_COLOR_FOR_UNLOCK_ANIMATION16:[[I

    const/4 v11, 0x3

    aget-object v10, v10, v11

    const/4 v11, 0x3

    aget v10, v10, v11

    int-to-float v10, v10

    const v11, 0x3c23d70a    # 0.01f

    mul-float/2addr v10, v11

    sget-object v11, Lcom/smartisanos/launcher/data/Constants;->INIT_COLOR_FOR_UNLOCK_ANIMATION16:[[I

    const/4 v12, 0x3

    aget-object v11, v11, v12

    const/4 v12, 0x4

    aget v11, v11, v12

    int-to-float v11, v11

    const v12, 0x3c23d70a    # 0.01f

    mul-float/2addr v11, v12

    sget-object v12, Lcom/smartisanos/launcher/data/Constants;->INIT_COLOR_FOR_UNLOCK_ANIMATION16:[[I

    const/4 v13, 0x3

    aget-object v12, v12, v13

    const/4 v13, 0x5

    aget v12, v12, v13

    int-to-float v12, v12

    const v13, 0x3c23d70a    # 0.01f

    mul-float/2addr v12, v13

    invoke-virtual {v9, v10, v11, v12}, Lcom/smartisanos/smengine/math/Vector3f;->set(FFF)Lcom/smartisanos/smengine/math/Vector3f;

    goto/16 :goto_1

    .line 252
    :cond_5
    iget v9, v1, Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater$CellAnimationXMLInfo;->cellIndex:I

    const/16 v10, 0x22b

    if-ne v9, v10, :cond_6

    .line 254
    iget-object v9, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->page:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/Page;->getBatchShadow()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v8

    goto/16 :goto_1

    .line 257
    :cond_6
    iget v9, v1, Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater$CellAnimationXMLInfo;->cellIndex:I

    invoke-static {v9}, Lcom/smartisanos/launcher/view/Page;->createRowAndColIndexFromIndex(I)Lcom/smartisanos/smengine/math/Vector2f;

    move-result-object v7

    .line 258
    .local v7, "pcIndex":Lcom/smartisanos/smengine/math/Vector2f;
    iget-object v9, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->page:Lcom/smartisanos/launcher/view/Page;

    iget v10, v7, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    float-to-int v10, v10

    iget v11, v7, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    float-to-int v11, v11

    invoke-virtual {v9, v10, v11}, Lcom/smartisanos/launcher/view/Page;->getPageCellAt(II)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v8

    .line 260
    iget v2, v1, Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater$CellAnimationXMLInfo;->cellIndex:I

    .line 261
    .local v2, "cellIndex":I
    sget v9, Lcom/smartisanos/launcher/data/Constants;->sPageStyle:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_7

    .line 262
    iget-object v9, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->mCellModulateColor:Lcom/smartisanos/smengine/math/Vector3f;

    sget-object v10, Lcom/smartisanos/launcher/data/Constants;->INIT_COLOR_FOR_UNLOCK_ANIMATION9:[[I

    const/4 v11, 0x0

    aget-object v10, v10, v11

    mul-int/lit8 v11, v2, 0x3

    aget v10, v10, v11

    int-to-float v10, v10

    const v11, 0x3c23d70a    # 0.01f

    mul-float/2addr v10, v11

    sget-object v11, Lcom/smartisanos/launcher/data/Constants;->INIT_COLOR_FOR_UNLOCK_ANIMATION9:[[I

    const/4 v12, 0x0

    aget-object v11, v11, v12

    mul-int/lit8 v12, v2, 0x3

    add-int/lit8 v12, v12, 0x1

    aget v11, v11, v12

    int-to-float v11, v11

    const v12, 0x3c23d70a    # 0.01f

    mul-float/2addr v11, v12

    sget-object v12, Lcom/smartisanos/launcher/data/Constants;->INIT_COLOR_FOR_UNLOCK_ANIMATION9:[[I

    const/4 v13, 0x0

    aget-object v12, v12, v13

    mul-int/lit8 v13, v2, 0x3

    add-int/lit8 v13, v13, 0x2

    aget v12, v12, v13

    int-to-float v12, v12

    const v13, 0x3c23d70a    # 0.01f

    mul-float/2addr v12, v13

    invoke-virtual {v9, v10, v11, v12}, Lcom/smartisanos/smengine/math/Vector3f;->set(FFF)Lcom/smartisanos/smengine/math/Vector3f;

    .line 266
    iget-object v9, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->mShadowColor:Lcom/smartisanos/smengine/math/Vector4f;

    sget-object v10, Lcom/smartisanos/launcher/data/Constants;->INIT_COLOR_FOR_UNLOCK_ANIMATION9:[[I

    const/4 v11, 0x2

    aget-object v10, v10, v11

    const/4 v11, 0x0

    aget v10, v10, v11

    int-to-float v10, v10

    const v11, 0x3c23d70a    # 0.01f

    mul-float/2addr v10, v11

    sget-object v11, Lcom/smartisanos/launcher/data/Constants;->INIT_COLOR_FOR_UNLOCK_ANIMATION9:[[I

    const/4 v12, 0x2

    aget-object v11, v11, v12

    const/4 v12, 0x1

    aget v11, v11, v12

    int-to-float v11, v11

    const v12, 0x3c23d70a    # 0.01f

    mul-float/2addr v11, v12

    sget-object v12, Lcom/smartisanos/launcher/data/Constants;->INIT_COLOR_FOR_UNLOCK_ANIMATION9:[[I

    const/4 v13, 0x2

    aget-object v12, v12, v13

    const/4 v13, 0x2

    aget v12, v12, v13

    int-to-float v12, v12

    const v13, 0x3c23d70a    # 0.01f

    mul-float/2addr v12, v13

    sget-object v13, Lcom/smartisanos/launcher/data/Constants;->INIT_COLOR_FOR_UNLOCK_ANIMATION9:[[I

    const/4 v14, 0x2

    aget-object v13, v13, v14

    const/4 v14, 0x3

    aget v13, v13, v14

    int-to-float v13, v13

    const v14, 0x3c23d70a    # 0.01f

    mul-float/2addr v13, v14

    invoke-virtual {v9, v10, v11, v12, v13}, Lcom/smartisanos/smengine/math/Vector4f;->set(FFFF)Lcom/smartisanos/smengine/math/Vector4f;

    goto/16 :goto_1

    .line 270
    :cond_7
    sget v9, Lcom/smartisanos/launcher/data/Constants;->sPageStyle:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_0

    .line 271
    iget-object v9, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->mCellModulateColor:Lcom/smartisanos/smengine/math/Vector3f;

    sget-object v10, Lcom/smartisanos/launcher/data/Constants;->INIT_COLOR_FOR_UNLOCK_ANIMATION16:[[I

    const/4 v11, 0x0

    aget-object v10, v10, v11

    mul-int/lit8 v11, v2, 0x3

    aget v10, v10, v11

    int-to-float v10, v10

    const v11, 0x3c23d70a    # 0.01f

    mul-float/2addr v10, v11

    sget-object v11, Lcom/smartisanos/launcher/data/Constants;->INIT_COLOR_FOR_UNLOCK_ANIMATION16:[[I

    const/4 v12, 0x0

    aget-object v11, v11, v12

    mul-int/lit8 v12, v2, 0x3

    add-int/lit8 v12, v12, 0x1

    aget v11, v11, v12

    int-to-float v11, v11

    const v12, 0x3c23d70a    # 0.01f

    mul-float/2addr v11, v12

    sget-object v12, Lcom/smartisanos/launcher/data/Constants;->INIT_COLOR_FOR_UNLOCK_ANIMATION16:[[I

    const/4 v13, 0x0

    aget-object v12, v12, v13

    mul-int/lit8 v13, v2, 0x3

    add-int/lit8 v13, v13, 0x2

    aget v12, v12, v13

    int-to-float v12, v12

    const v13, 0x3c23d70a    # 0.01f

    mul-float/2addr v12, v13

    invoke-virtual {v9, v10, v11, v12}, Lcom/smartisanos/smengine/math/Vector3f;->set(FFF)Lcom/smartisanos/smengine/math/Vector3f;

    .line 275
    iget-object v9, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->mShadowColor:Lcom/smartisanos/smengine/math/Vector4f;

    sget-object v10, Lcom/smartisanos/launcher/data/Constants;->INIT_COLOR_FOR_UNLOCK_ANIMATION16:[[I

    const/4 v11, 0x2

    aget-object v10, v10, v11

    const/4 v11, 0x0

    aget v10, v10, v11

    int-to-float v10, v10

    const v11, 0x3c23d70a    # 0.01f

    mul-float/2addr v10, v11

    sget-object v11, Lcom/smartisanos/launcher/data/Constants;->INIT_COLOR_FOR_UNLOCK_ANIMATION16:[[I

    const/4 v12, 0x2

    aget-object v11, v11, v12

    const/4 v12, 0x1

    aget v11, v11, v12

    int-to-float v11, v11

    const v12, 0x3c23d70a    # 0.01f

    mul-float/2addr v11, v12

    sget-object v12, Lcom/smartisanos/launcher/data/Constants;->INIT_COLOR_FOR_UNLOCK_ANIMATION16:[[I

    const/4 v13, 0x2

    aget-object v12, v12, v13

    const/4 v13, 0x2

    aget v12, v12, v13

    int-to-float v12, v12

    const v13, 0x3c23d70a    # 0.01f

    mul-float/2addr v12, v13

    sget-object v13, Lcom/smartisanos/launcher/data/Constants;->INIT_COLOR_FOR_UNLOCK_ANIMATION16:[[I

    const/4 v14, 0x2

    aget-object v13, v13, v14

    const/4 v14, 0x3

    aget v13, v13, v14

    int-to-float v13, v13

    const v14, 0x3c23d70a    # 0.01f

    mul-float/2addr v13, v14

    invoke-virtual {v9, v10, v11, v12, v13}, Lcom/smartisanos/smengine/math/Vector4f;->set(FFFF)Lcom/smartisanos/smengine/math/Vector4f;

    goto/16 :goto_1

    .line 301
    .end local v2    # "cellIndex":I
    .end local v7    # "pcIndex":Lcom/smartisanos/smengine/math/Vector2f;
    .restart local v0    # "ca":Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;
    .restart local v5    # "j":I
    :cond_8
    iget v9, v1, Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater$CellAnimationXMLInfo;->cellIndex:I

    const/16 v10, 0x29a

    if-ne v9, v10, :cond_9

    .line 302
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->generateNonPageCellAnimation()V

    .line 201
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 303
    :cond_9
    iget v9, v1, Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater$CellAnimationXMLInfo;->cellIndex:I

    const/16 v10, 0x3e7

    if-ne v9, v10, :cond_a

    .line 304
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->generateBackgroundAnimation()V

    goto :goto_3

    .line 305
    :cond_a
    iget v9, v1, Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater$CellAnimationXMLInfo;->cellIndex:I

    const/16 v10, 0x378

    if-ne v9, v10, :cond_b

    .line 306
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->generateDockAnimation()V

    goto :goto_3

    .line 307
    :cond_b
    iget v9, v1, Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater$CellAnimationXMLInfo;->cellIndex:I

    const/16 v10, 0x22b

    if-ne v9, v10, :cond_c

    .line 308
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->generateBatchShadow()V

    goto :goto_3

    .line 310
    :cond_c
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->generateAnimation()V

    goto :goto_3

    .line 314
    .end local v0    # "ca":Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;
    .end local v1    # "cellAnimationXMLinfo":Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater$CellAnimationXMLInfo;
    .end local v4    # "i":I
    .end local v5    # "j":I
    .end local v8    # "target":Lcom/smartisanos/smengine/SceneNode;
    :cond_d
    new-instance v9, Ljava/lang/RuntimeException;

    const-string v10, "### unlock xml parse wrong..."

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 316
    .restart local v4    # "i":I
    :cond_e
    return-void
.end method

.method public getTimeLine()Lcom/smartisanos/smengine/AnimationTimeLine;
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->mForWizard:Z

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->mDelayTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 80
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->mTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    goto :goto_0
.end method

.method public init(Lcom/smartisanos/launcher/view/Page;)V
    .locals 9
    .param p1, "_page"    # Lcom/smartisanos/launcher/view/Page;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 84
    sget-boolean v3, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v3, :cond_1

    .line 85
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/MainView;->getStatusBar()Lcom/smartisanos/launcher/view/StatusBar;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/smartisanos/launcher/view/StatusBar;->setUseStaticGaussian(Z)V

    .line 86
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/smartisanos/launcher/view/DockView;->setUseStaticGaussian(Z)V

    .line 87
    instance-of v3, p1, Lcom/smartisanos/launcher/view/PageWithRenderTarget;

    if-eqz v3, :cond_0

    move-object v3, p1

    .line 88
    check-cast v3, Lcom/smartisanos/launcher/view/PageWithRenderTarget;

    invoke-virtual {v3, v7}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->setUseStaticGaussian(Z)V

    .line 89
    invoke-virtual {p1, v8}, Lcom/smartisanos/launcher/view/Page;->setIsEnableBlend(Z)V

    .line 90
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Page;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/RenderState;->setBlendMode(I)V

    .line 92
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/MainView;->getBackground()Lcom/smartisanos/smengine/RectNode;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    .line 94
    :cond_1
    iget-boolean v3, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->mForWizard:Z

    if-eqz v3, :cond_2

    .line 96
    new-instance v3, Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-direct {v3}, Lcom/smartisanos/smengine/AnimationTimeLine;-><init>()V

    iput-object v3, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->mDelayTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 97
    iget-object v3, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->mDelayTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    new-instance v4, Lcom/smartisanos/launcher/view/UnlockAnimationXML$1;

    invoke-direct {v4, p0}, Lcom/smartisanos/launcher/view/UnlockAnimationXML$1;-><init>(Lcom/smartisanos/launcher/view/UnlockAnimationXML;)V

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 105
    :cond_2
    new-instance v3, Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-direct {v3}, Lcom/smartisanos/smengine/AnimationTimeLine;-><init>()V

    iput-object v3, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->mTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 106
    sget-boolean v3, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v3, :cond_3

    .line 107
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v3

    iget-object v4, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->mTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    iget v5, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->mTotalDuration:F

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/smartisanos/launcher/view/MainView;->getBackgroundUnlockAnim(Lcom/smartisanos/smengine/AnimationTimeLine;FF)V

    .line 109
    :cond_3
    iget-object v3, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->mTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    new-instance v4, Lcom/smartisanos/launcher/view/UnlockAnimationXML$2;

    invoke-direct {v4, p0, p1}, Lcom/smartisanos/launcher/view/UnlockAnimationXML$2;-><init>(Lcom/smartisanos/launcher/view/UnlockAnimationXML;Lcom/smartisanos/launcher/view/Page;)V

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 161
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Page;->getAllPageCell()Ljava/util/ArrayList;

    move-result-object v0

    .line 163
    .local v0, "allpc":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/Cell;

    .line 164
    .local v2, "pc":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Cell;->forceFinishResetBackgroundAlphaAnimation()V

    goto :goto_0

    .line 167
    .end local v2    # "pc":Lcom/smartisanos/launcher/view/Cell;
    :cond_4
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v3

    iput-object v3, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    .line 169
    iput-object p1, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->page:Lcom/smartisanos/launcher/view/Page;

    .line 170
    iput-boolean v8, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->mIsInit:Z

    .line 173
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/DockView;->getSettingButton()Lcom/smartisanos/launcher/view/SettingButton;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 174
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/DockView;->getSettingButton()Lcom/smartisanos/launcher/view/SettingButton;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/smartisanos/launcher/view/SettingButton;->setVisibility(Z)V

    .line 176
    :cond_5
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/DockView;->getTrashView()Lcom/smartisanos/launcher/view/TrashView;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 177
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/DockView;->getTrashView()Lcom/smartisanos/launcher/view/TrashView;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/smartisanos/launcher/view/TrashView;->setVisibility(Z)V

    .line 180
    :cond_6
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->generateLauncherAnimationUseXML()V

    .line 182
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->mAllPageCell:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_7

    .line 183
    iget-object v3, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->mAllPageCell:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/Cell;

    .line 184
    .restart local v2    # "pc":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Cell;->updateUnlockAnimationOneFrame()V

    .line 182
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 187
    .end local v2    # "pc":Lcom/smartisanos/launcher/view/Cell;
    :cond_7
    iget-boolean v3, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->mForWizard:Z

    if-eqz v3, :cond_8

    .line 189
    iget-object v3, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->mDelayTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    const v4, 0x3ecccccd    # 0.4f

    iget-object v5, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->mTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v3, v4, v5}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 191
    :cond_8
    return-void
.end method

.method public isInit()Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->mIsInit:Z

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->mTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDelayForWizard(Z)V
    .locals 0
    .param p1, "set"    # Z

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->mForWizard:Z

    .line 74
    return-void
.end method

.method public start(Lcom/smartisanos/launcher/view/Page;)V
    .locals 3
    .param p1, "currentPage"    # Lcom/smartisanos/launcher/view/Page;

    .prologue
    .line 319
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->mIsInit:Z

    if-nez v0, :cond_0

    .line 320
    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->init(Lcom/smartisanos/launcher/view/Page;)V

    .line 322
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->mIsInit:Z

    .line 324
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v0

    const/high16 v1, 0x20000

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/StatusManager;->setLauncherStatus(IZ)V

    .line 326
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->mForWizard:Z

    if-eqz v0, :cond_1

    .line 328
    iget-object v0, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->mDelayTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/AnimationTimeLine;->start()V

    .line 332
    :goto_0
    return-void

    .line 330
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->mTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/AnimationTimeLine;->start()V

    goto :goto_0
.end method
