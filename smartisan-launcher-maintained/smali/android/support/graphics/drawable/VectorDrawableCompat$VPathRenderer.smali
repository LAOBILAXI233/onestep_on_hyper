.class Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;
.super Ljava/lang/Object;
.source "VectorDrawableCompat.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/graphics/drawable/VectorDrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VPathRenderer"
.end annotation


.field private static final IDENTITY_MATRIX:Landroid/graphics/Matrix;


.field mBaseHeight:F

.field mBaseWidth:F

.field private mChangingConfigurations:I

.field private mFillPaint:Landroid/graphics/Paint;

.field private final mFinalPathMatrix:Landroid/graphics/Matrix;

.field private final mPath:Landroid/graphics/Path;

.field private mPathMeasure:Landroid/graphics/PathMeasure;

.field private final mRenderPath:Landroid/graphics/Path;

.field mRootAlpha:I

.field final mRootGroup:Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;

.field mRootName:Ljava/lang/String;

.field private mStrokePaint:Landroid/graphics/Paint;

.field final mVGTargetsMap:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mViewportHeight:F

.field mViewportWidth:F


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 913
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sput-object v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 933
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 914
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mFinalPathMatrix:Landroid/graphics/Matrix;

    .line 924
    iput v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mBaseWidth:F

    .line 925
    iput v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mBaseHeight:F

    .line 926
    iput v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mViewportWidth:F

    .line 927
    iput v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mViewportHeight:F

    .line 928
    const/16 v0, 0xff

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootAlpha:I

    .line 929
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootName:Ljava/lang/String;

    .line 931
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mVGTargetsMap:Landroid/support/v4/util/ArrayMap;

    .line 934
    new-instance v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;

    invoke-direct {v0}, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;-><init>()V

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootGroup:Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;

    .line 935
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mPath:Landroid/graphics/Path;

    .line 936
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRenderPath:Landroid/graphics/Path;

    .line 937
    return-void
.end method

.method public constructor <init>(Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;)V
    .locals 3
    .param p1, "copy"    # Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    .prologue
    const/4 v1, 0x0

    .line 958
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 914
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mFinalPathMatrix:Landroid/graphics/Matrix;

    .line 924
    iput v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mBaseWidth:F

    .line 925
    iput v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mBaseHeight:F

    .line 926
    iput v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mViewportWidth:F

    .line 927
    iput v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mViewportHeight:F

    .line 928
    const/16 v0, 0xff

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootAlpha:I

    .line 929
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootName:Ljava/lang/String;

    .line 931
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mVGTargetsMap:Landroid/support/v4/util/ArrayMap;

    .line 959
    new-instance v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;

    iget-object v1, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootGroup:Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;

    iget-object v2, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mVGTargetsMap:Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0, v1, v2}, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;-><init>(Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;Landroid/support/v4/util/ArrayMap;)V

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootGroup:Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;

    .line 960
    new-instance v0, Landroid/graphics/Path;

    iget-object v1, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mPath:Landroid/graphics/Path;

    invoke-direct {v0, v1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mPath:Landroid/graphics/Path;

    .line 961
    new-instance v0, Landroid/graphics/Path;

    iget-object v1, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRenderPath:Landroid/graphics/Path;

    invoke-direct {v0, v1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRenderPath:Landroid/graphics/Path;

    .line 962
    iget v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mBaseWidth:F

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mBaseWidth:F

    .line 963
    iget v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mBaseHeight:F

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mBaseHeight:F

    .line 964
    iget v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mViewportWidth:F

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mViewportWidth:F

    .line 965
    iget v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mViewportHeight:F

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mViewportHeight:F

    .line 966
    iget v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mChangingConfigurations:I

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mChangingConfigurations:I

    .line 967
    iget v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootAlpha:I

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootAlpha:I

    .line 968
    iget-object v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootName:Ljava/lang/String;

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootName:Ljava/lang/String;

    .line 969
    iget-object v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 970
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mVGTargetsMap:Landroid/support/v4/util/ArrayMap;

    iget-object v1, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootName:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 972
    :cond_0
    return-void
.end method

.method static synthetic access$000(Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    .prologue
    .line 896
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mFillPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$002(Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;Landroid/graphics/Paint;)Landroid/graphics/Paint;
    .locals 0
    .param p0, "x0"    # Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;
    .param p1, "x1"    # Landroid/graphics/Paint;

    .prologue
    .line 896
    iput-object p1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mFillPaint:Landroid/graphics/Paint;

    return-object p1
.end method

.method static synthetic access$100(Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    .prologue
    .line 896
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mStrokePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$102(Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;Landroid/graphics/Paint;)Landroid/graphics/Paint;
    .locals 0
    .param p0, "x0"    # Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;
    .param p1, "x1"    # Landroid/graphics/Paint;

    .prologue
    .line 896
    iput-object p1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mStrokePaint:Landroid/graphics/Paint;

    return-object p1
.end method

.method private static cross(FFFF)F
    .locals 2
    .param p0, "v1x"    # F
    .param p1, "v1y"    # F
    .param p2, "v2x"    # F
    .param p3, "v2y"    # F

    .prologue
    .line 1097
    mul-float v0, p0, p3

    mul-float v1, p1, p2

    sub-float/2addr v0, v1

    return v0
.end method

.method private drawGroupTree(Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;Landroid/graphics/Matrix;Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V
    .locals 11
    .param p1, "currentGroup"    # Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;
    .param p2, "currentMatrix"    # Landroid/graphics/Matrix;
    .param p3, "canvas"    # Landroid/graphics/Canvas;
    .param p4, "w"    # I
    .param p5, "h"    # I
    .param p6, "filter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 980
    invoke-static {p1}, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->access$200(Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 982
    invoke-static {p1}, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->access$200(Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-static {p1}, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->access$300(Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;)Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 985
    invoke-virtual {p3}, Landroid/graphics/Canvas;->save()I

    .line 988
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    iget-object v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v10, v0, :cond_2

    .line 989
    iget-object v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 990
    .local v9, "child":Ljava/lang/Object;
    instance-of v0, v9, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;

    if-eqz v0, :cond_1

    move-object v1, v9

    .line 991
    check-cast v1, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;

    .line 992
    .local v1, "childGroup":Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;
    invoke-static {p1}, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->access$200(Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;)Landroid/graphics/Matrix;

    move-result-object v2

    move-object v0, p0

    move-object v3, p3

    move v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->drawGroupTree(Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;Landroid/graphics/Matrix;Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V

    .line 988
    .end local v1    # "childGroup":Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;
    :cond_0
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 994
    :cond_1
    instance-of v0, v9, Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;

    if-eqz v0, :cond_0

    move-object v4, v9

    .line 995
    check-cast v4, Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;

    .local v4, "childPath":Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;
    move-object v2, p0

    move-object v3, p1

    move-object v5, p3

    move v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    .line 996
    invoke-direct/range {v2 .. v8}, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->drawPath(Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V

    goto :goto_1

    .line 1000
    .end local v4    # "childPath":Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;
    .end local v9    # "child":Ljava/lang/Object;
    :cond_2
    invoke-virtual {p3}, Landroid/graphics/Canvas;->restore()V

    .line 1001
    return-void
.end method

.method private drawPath(Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V
    .locals 17
    .param p1, "vGroup"    # Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;
    .param p2, "vPath"    # Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;
    .param p3, "canvas"    # Landroid/graphics/Canvas;
    .param p4, "w"    # I
    .param p5, "h"    # I
    .param p6, "filter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 1010
    move/from16 v0, p4

    int-to-float v14, v0

    move-object/from16 v0, p0

    iget v15, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mViewportWidth:F

    div-float v10, v14, v15

    .line 1011
    .local v10, "scaleX":F
    move/from16 v0, p5

    int-to-float v14, v0

    move-object/from16 v0, p0

    iget v15, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mViewportHeight:F

    div-float v11, v14, v15

    .line 1012
    .local v11, "scaleY":F
    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 1013
    .local v8, "minScale":F
    invoke-static/range {p1 .. p1}, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->access$200(Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;)Landroid/graphics/Matrix;

    move-result-object v5

    .line 1015
    .local v5, "groupStackedMatrix":Landroid/graphics/Matrix;
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mFinalPathMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v14, v5}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 1016
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mFinalPathMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v14, v10, v11}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1019
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->getMatrixScale(Landroid/graphics/Matrix;)F

    move-result v7

    .line 1020
    .local v7, "matrixScale":F
    const/4 v14, 0x0

    cmpl-float v14, v7, v14

    if-nez v14, :cond_1

    .line 1094
    :cond_0
    :goto_0
    return-void

    .line 1024
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mPath:Landroid/graphics/Path;

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;->toPath(Landroid/graphics/Path;)V

    .line 1025
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mPath:Landroid/graphics/Path;

    .line 1027
    .local v9, "path":Landroid/graphics/Path;
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRenderPath:Landroid/graphics/Path;

    invoke-virtual {v14}, Landroid/graphics/Path;->reset()V

    .line 1029
    invoke-virtual/range {p2 .. p2}, Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;->isClipPath()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 1030
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRenderPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mFinalPathMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v14, v9, v15}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 1031
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRenderPath:Landroid/graphics/Path;

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    goto :goto_0

    :cond_2
    move-object/from16 v4, p2

    .line 1033
    check-cast v4, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;

    .line 1034
    .local v4, "fullPath":Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;
    iget v14, v4, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathStart:F

    const/4 v15, 0x0

    cmpl-float v14, v14, v15

    if-nez v14, :cond_3

    iget v14, v4, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathEnd:F

    const/high16 v15, 0x3f800000    # 1.0f

    cmpl-float v14, v14, v15

    if-eqz v14, :cond_5

    .line 1035
    :cond_3
    iget v14, v4, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathStart:F

    iget v15, v4, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathOffset:F

    add-float/2addr v14, v15

    const/high16 v15, 0x3f800000    # 1.0f

    rem-float v12, v14, v15

    .line 1036
    .local v12, "start":F
    iget v14, v4, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathEnd:F

    iget v15, v4, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathOffset:F

    add-float/2addr v14, v15

    const/high16 v15, 0x3f800000    # 1.0f

    rem-float v1, v14, v15

    .line 1038
    .local v1, "end":F
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mPathMeasure:Landroid/graphics/PathMeasure;

    if-nez v14, :cond_4

    .line 1039
    new-instance v14, Landroid/graphics/PathMeasure;

    invoke-direct {v14}, Landroid/graphics/PathMeasure;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mPathMeasure:Landroid/graphics/PathMeasure;

    .line 1041
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mPathMeasure:Landroid/graphics/PathMeasure;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mPath:Landroid/graphics/Path;

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 1043
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mPathMeasure:Landroid/graphics/PathMeasure;

    invoke-virtual {v14}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v6

    .line 1044
    .local v6, "len":F
    mul-float/2addr v12, v6

    .line 1045
    mul-float/2addr v1, v6

    .line 1046
    invoke-virtual {v9}, Landroid/graphics/Path;->reset()V

    .line 1047
    cmpl-float v14, v12, v1

    if-lez v14, :cond_b

    .line 1048
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mPathMeasure:Landroid/graphics/PathMeasure;

    const/4 v15, 0x1

    invoke-virtual {v14, v12, v6, v9, v15}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 1049
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mPathMeasure:Landroid/graphics/PathMeasure;

    const/4 v15, 0x0

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v14, v15, v1, v9, v0}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 1053
    :goto_1
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v9, v14, v15}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 1055
    .end local v1    # "end":F
    .end local v6    # "len":F
    .end local v12    # "start":F
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRenderPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mFinalPathMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v14, v9, v15}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 1057
    iget v14, v4, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillColor:I

    if-eqz v14, :cond_7

    .line 1058
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mFillPaint:Landroid/graphics/Paint;

    if-nez v14, :cond_6

    .line 1059
    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mFillPaint:Landroid/graphics/Paint;

    .line 1060
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mFillPaint:Landroid/graphics/Paint;

    sget-object v15, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1061
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mFillPaint:Landroid/graphics/Paint;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1064
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mFillPaint:Landroid/graphics/Paint;

    .line 1065
    .local v2, "fillPaint":Landroid/graphics/Paint;
    iget v14, v4, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillColor:I

    iget v15, v4, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillAlpha:F

    invoke-static {v14, v15}, Landroid/support/graphics/drawable/VectorDrawableCompat;->applyAlpha(IF)I

    move-result v14

    invoke-virtual {v2, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 1066
    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 1067
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRenderPath:Landroid/graphics/Path;

    move-object/from16 v0, p3

    invoke-virtual {v0, v14, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1070
    .end local v2    # "fillPaint":Landroid/graphics/Paint;
    :cond_7
    iget v14, v4, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeColor:I

    if-eqz v14, :cond_0

    .line 1071
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mStrokePaint:Landroid/graphics/Paint;

    if-nez v14, :cond_8

    .line 1072
    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mStrokePaint:Landroid/graphics/Paint;

    .line 1073
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mStrokePaint:Landroid/graphics/Paint;

    sget-object v15, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1074
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mStrokePaint:Landroid/graphics/Paint;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1077
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mStrokePaint:Landroid/graphics/Paint;

    .line 1078
    .local v13, "strokePaint":Landroid/graphics/Paint;
    iget-object v14, v4, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeLineJoin:Landroid/graphics/Paint$Join;

    if-eqz v14, :cond_9

    .line 1079
    iget-object v14, v4, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeLineJoin:Landroid/graphics/Paint$Join;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 1082
    :cond_9
    iget-object v14, v4, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeLineCap:Landroid/graphics/Paint$Cap;

    if-eqz v14, :cond_a

    .line 1083
    iget-object v14, v4, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeLineCap:Landroid/graphics/Paint$Cap;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 1086
    :cond_a
    iget v14, v4, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeMiterlimit:F

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    .line 1087
    iget v14, v4, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeColor:I

    iget v15, v4, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeAlpha:F

    invoke-static {v14, v15}, Landroid/support/graphics/drawable/VectorDrawableCompat;->applyAlpha(IF)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 1088
    move-object/from16 v0, p6

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 1089
    mul-float v3, v8, v7

    .line 1090
    .local v3, "finalStrokeScale":F
    iget v14, v4, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeWidth:F

    mul-float/2addr v14, v3

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1091
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRenderPath:Landroid/graphics/Path;

    move-object/from16 v0, p3

    invoke-virtual {v0, v14, v13}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 1051
    .end local v3    # "finalStrokeScale":F
    .end local v13    # "strokePaint":Landroid/graphics/Paint;
    .restart local v1    # "end":F
    .restart local v6    # "len":F
    .restart local v12    # "start":F
    :cond_b
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mPathMeasure:Landroid/graphics/PathMeasure;

    const/4 v15, 0x1

    invoke-virtual {v14, v12, v1, v9, v15}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    goto/16 :goto_1
.end method

.method private getMatrixScale(Landroid/graphics/Matrix;)F
    .locals 14
    .param p1, "groupStackedMatrix"    # Landroid/graphics/Matrix;

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1111
    const/4 v6, 0x4

    new-array v5, v6, [F

    fill-array-data v5, :array_0

    .line 1112
    .local v5, "unitVectors":[F
    invoke-virtual {p1, v5}, Landroid/graphics/Matrix;->mapVectors([F)V

    .line 1113
    aget v6, v5, v10

    float-to-double v6, v6

    aget v8, v5, v11

    float-to-double v8, v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    double-to-float v3, v6

    .line 1114
    .local v3, "scaleX":F
    aget v6, v5, v12

    float-to-double v6, v6

    aget v8, v5, v13

    float-to-double v8, v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    double-to-float v4, v6

    .line 1115
    .local v4, "scaleY":F
    aget v6, v5, v10

    aget v7, v5, v11

    aget v8, v5, v12

    aget v9, v5, v13

    invoke-static {v6, v7, v8, v9}, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->cross(FFFF)F

    move-result v0

    .line 1117
    .local v0, "crossProduct":F
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 1119
    .local v2, "maxScale":F
    const/4 v1, 0x0

    .line 1120
    .local v1, "matrixScale":F
    const/4 v6, 0x0

    cmpl-float v6, v2, v6

    if-lez v6, :cond_0

    .line 1121
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    div-float v1, v6, v2

    .line 1126
    :cond_0
    return v1

    .line 1111
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method


.method public draw(Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "filter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 1005
    iget-object v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootGroup:Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;

    sget-object v2, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->drawGroupTree(Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;Landroid/graphics/Matrix;Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V

    .line 1006
    return-void
.end method

.method public getAlpha()F
    .locals 2

    .prologue
    .line 955
    invoke-virtual {p0}, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->getRootAlpha()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getRootAlpha()I
    .locals 1

    .prologue
    .line 944
    iget v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootAlpha:I

    return v0
.end method

.method public setAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 950
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->setRootAlpha(I)V

    .line 951
    return-void
.end method

.method public setRootAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 940
    iput p1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootAlpha:I

    .line 941
    return-void
.end method
