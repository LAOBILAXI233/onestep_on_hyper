.class Landroid/support/graphics/drawable/VectorDrawableCompat$VClipPath;
.super Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;
.source "VectorDrawableCompat.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/graphics/drawable/VectorDrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VClipPath"
.end annotation


.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1434
    invoke-direct {p0}, Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;-><init>()V

    .line 1436
    return-void
.end method

.method public constructor <init>(Landroid/support/graphics/drawable/VectorDrawableCompat$VClipPath;)V
    .locals 0
    .param p1, "copy"    # Landroid/support/graphics/drawable/VectorDrawableCompat$VClipPath;

    .prologue
    .line 1439
    invoke-direct {p0, p1}, Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;-><init>(Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;)V

    .line 1440
    return-void
.end method

.method private updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .locals 3
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .prologue
    .line 1458
    const/4 v2, 0x0

    .line 1459
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1460
    .local v1, "pathName":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1461
    iput-object v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VClipPath;->mPathName:Ljava/lang/String;

    .line 1464
    :cond_0
    const/4 v2, 0x1

    .line 1465
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1466
    .local v0, "pathData":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 1467
    invoke-static {v0}, Landroid/support/graphics/drawable/PathParser;->createNodesFromPathData(Ljava/lang/String;)[Landroid/support/graphics/drawable/PathParser$PathDataNode;

    move-result-object v2

    iput-object v2, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VClipPath;->mNodes:[Landroid/support/graphics/drawable/PathParser$PathDataNode;

    .line 1469
    :cond_1
    return-void
.end method


.method public inflate(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;
    .param p4, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 1444
    const-string v2, "pathData"

    invoke-static {p4, v2}, Landroid/support/graphics/drawable/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    .line 1445
    .local v1, "hasPathData":Z
    if-nez v1, :cond_0

    .line 1452
    :goto_0
    return-void

    .line 1448
    :cond_0
    sget-object v2, Landroid/support/graphics/drawable/AndroidResources;->styleable_VectorDrawableClipPath:[I

    invoke-static {p1, p3, p2, v2}, Landroid/support/graphics/drawable/VectorDrawableCommon;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1450
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Landroid/support/graphics/drawable/VectorDrawableCompat$VClipPath;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 1451
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0
.end method

.method public isClipPath()Z
    .locals 1

    .prologue
    .line 1473
    const/4 v0, 0x1

    return v0
.end method
