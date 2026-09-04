.class Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;
.super Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;
.source "VectorDrawableCompat.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/graphics/drawable/VectorDrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VFullPath"
.end annotation


.field mFillAlpha:F

.field mFillColor:I

.field mFillRule:I

.field mStrokeAlpha:F

.field mStrokeColor:I

.field mStrokeLineCap:Landroid/graphics/Paint$Cap;

.field mStrokeLineJoin:Landroid/graphics/Paint$Join;

.field mStrokeMiterlimit:F

.field mStrokeWidth:F

.field private mThemeAttrs:[I

.field mTrimPathEnd:F

.field mTrimPathOffset:F

.field mTrimPathStart:F


.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 1500
    invoke-direct {p0}, Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;-><init>()V

    .line 1485
    iput v2, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeColor:I

    .line 1486
    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeWidth:F

    .line 1488
    iput v2, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillColor:I

    .line 1489
    iput v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeAlpha:F

    .line 1491
    iput v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillAlpha:F

    .line 1492
    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathStart:F

    .line 1493
    iput v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathEnd:F

    .line 1494
    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathOffset:F

    .line 1496
    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeLineCap:Landroid/graphics/Paint$Cap;

    .line 1497
    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeLineJoin:Landroid/graphics/Paint$Join;

    .line 1498
    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeMiterlimit:F

    .line 1502
    return-void
.end method

.method public constructor <init>(Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;)V
    .locals 3
    .param p1, "copy"    # Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 1505
    invoke-direct {p0, p1}, Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;-><init>(Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;)V

    .line 1485
    iput v2, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeColor:I

    .line 1486
    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeWidth:F

    .line 1488
    iput v2, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillColor:I

    .line 1489
    iput v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeAlpha:F

    .line 1491
    iput v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillAlpha:F

    .line 1492
    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathStart:F

    .line 1493
    iput v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathEnd:F

    .line 1494
    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathOffset:F

    .line 1496
    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeLineCap:Landroid/graphics/Paint$Cap;

    .line 1497
    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeLineJoin:Landroid/graphics/Paint$Join;

    .line 1498
    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeMiterlimit:F

    .line 1506
    iget-object v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mThemeAttrs:[I

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mThemeAttrs:[I

    .line 1508
    iget v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeColor:I

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeColor:I

    .line 1509
    iget v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeWidth:F

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeWidth:F

    .line 1510
    iget v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeAlpha:F

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeAlpha:F

    .line 1511
    iget v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillColor:I

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillColor:I

    .line 1512
    iget v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillRule:I

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillRule:I

    .line 1513
    iget v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillAlpha:F

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillAlpha:F

    .line 1514
    iget v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathStart:F

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathStart:F

    .line 1515
    iget v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathEnd:F

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathEnd:F

    .line 1516
    iget v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathOffset:F

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathOffset:F

    .line 1518
    iget-object v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeLineCap:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeLineCap:Landroid/graphics/Paint$Cap;

    .line 1519
    iget-object v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeLineJoin:Landroid/graphics/Paint$Join;

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeLineJoin:Landroid/graphics/Paint$Join;

    .line 1520
    iget v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeMiterlimit:F

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeMiterlimit:F

    .line 1521
    return-void
.end method

.method private getStrokeLineCap(ILandroid/graphics/Paint$Cap;)Landroid/graphics/Paint$Cap;
    .locals 0
    .param p1, "id"    # I
    .param p2, "defValue"    # Landroid/graphics/Paint$Cap;

    .prologue
    .line 1524
    packed-switch p1, :pswitch_data_0

    .line 1532
    .end local p2    # "defValue":Landroid/graphics/Paint$Cap;
    :goto_0
    return-object p2

    .line 1526
    .restart local p2    # "defValue":Landroid/graphics/Paint$Cap;
    :pswitch_0
    sget-object p2, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    goto :goto_0

    .line 1528
    :pswitch_1
    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    goto :goto_0

    .line 1530
    :pswitch_2
    sget-object p2, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    goto :goto_0

    .line 1524
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getStrokeLineJoin(ILandroid/graphics/Paint$Join;)Landroid/graphics/Paint$Join;
    .locals 0
    .param p1, "id"    # I
    .param p2, "defValue"    # Landroid/graphics/Paint$Join;

    .prologue
    .line 1537
    packed-switch p1, :pswitch_data_0

    .line 1545
    .end local p2    # "defValue":Landroid/graphics/Paint$Join;
    :goto_0
    return-object p2

    .line 1539
    .restart local p2    # "defValue":Landroid/graphics/Paint$Join;
    :pswitch_0
    sget-object p2, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    goto :goto_0

    .line 1541
    :pswitch_1
    sget-object p2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    goto :goto_0

    .line 1543
    :pswitch_2
    sget-object p2, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    goto :goto_0

    .line 1537
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateStateFromTypedArray(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 9
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    const/4 v8, -0x1

    .line 1566
    const/4 v5, 0x0

    iput-object v5, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mThemeAttrs:[I

    .line 1573
    const-string v5, "pathData"

    invoke-static {p2, v5}, Landroid/support/graphics/drawable/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    .line 1574
    .local v0, "hasPathData":Z
    if-nez v0, :cond_0

    .line 1615
    :goto_0
    return-void

    .line 1580
    :cond_0
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1581
    .local v4, "pathName":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 1582
    iput-object v4, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mPathName:Ljava/lang/String;

    .line 1584
    :cond_1
    const/4 v5, 0x2

    .line 1585
    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1586
    .local v3, "pathData":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 1587
    invoke-static {v3}, Landroid/support/graphics/drawable/PathParser;->createNodesFromPathData(Ljava/lang/String;)[Landroid/support/graphics/drawable/PathParser$PathDataNode;

    move-result-object v5

    iput-object v5, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mNodes:[Landroid/support/graphics/drawable/PathParser$PathDataNode;

    .line 1590
    :cond_2
    const-string v5, "fillColor"

    const/4 v6, 0x1

    iget v7, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillColor:I

    invoke-static {p1, p2, v5, v6, v7}, Landroid/support/graphics/drawable/TypedArrayUtils;->getNamedColor(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v5

    iput v5, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillColor:I

    .line 1592
    const-string v5, "fillAlpha"

    const/16 v6, 0xc

    iget v7, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillAlpha:F

    invoke-static {p1, p2, v5, v6, v7}, Landroid/support/graphics/drawable/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v5

    iput v5, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillAlpha:F

    .line 1594
    const-string v5, "strokeLineCap"

    const/16 v6, 0x8

    invoke-static {p1, p2, v5, v6, v8}, Landroid/support/graphics/drawable/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v1

    .line 1596
    .local v1, "lineCap":I
    iget-object v5, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeLineCap:Landroid/graphics/Paint$Cap;

    invoke-direct {p0, v1, v5}, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->getStrokeLineCap(ILandroid/graphics/Paint$Cap;)Landroid/graphics/Paint$Cap;

    move-result-object v5

    iput-object v5, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeLineCap:Landroid/graphics/Paint$Cap;

    .line 1597
    const-string v5, "strokeLineJoin"

    const/16 v6, 0x9

    invoke-static {p1, p2, v5, v6, v8}, Landroid/support/graphics/drawable/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v2

    .line 1599
    .local v2, "lineJoin":I
    iget-object v5, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeLineJoin:Landroid/graphics/Paint$Join;

    invoke-direct {p0, v2, v5}, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->getStrokeLineJoin(ILandroid/graphics/Paint$Join;)Landroid/graphics/Paint$Join;

    move-result-object v5

    iput-object v5, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeLineJoin:Landroid/graphics/Paint$Join;

    .line 1600
    const-string v5, "strokeMiterLimit"

    const/16 v6, 0xa

    iget v7, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeMiterlimit:F

    invoke-static {p1, p2, v5, v6, v7}, Landroid/support/graphics/drawable/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v5

    iput v5, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeMiterlimit:F

    .line 1603
    const-string v5, "strokeColor"

    const/4 v6, 0x3

    iget v7, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeColor:I

    invoke-static {p1, p2, v5, v6, v7}, Landroid/support/graphics/drawable/TypedArrayUtils;->getNamedColor(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v5

    iput v5, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeColor:I

    .line 1605
    const-string v5, "strokeAlpha"

    const/16 v6, 0xb

    iget v7, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeAlpha:F

    invoke-static {p1, p2, v5, v6, v7}, Landroid/support/graphics/drawable/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v5

    iput v5, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeAlpha:F

    .line 1607
    const-string v5, "strokeWidth"

    const/4 v6, 0x4

    iget v7, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeWidth:F

    invoke-static {p1, p2, v5, v6, v7}, Landroid/support/graphics/drawable/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v5

    iput v5, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeWidth:F

    .line 1609
    const-string v5, "trimPathEnd"

    const/4 v6, 0x6

    iget v7, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathEnd:F

    invoke-static {p1, p2, v5, v6, v7}, Landroid/support/graphics/drawable/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v5

    iput v5, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathEnd:F

    .line 1611
    const-string v5, "trimPathOffset"

    const/4 v6, 0x7

    iget v7, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathOffset:F

    invoke-static {p1, p2, v5, v6, v7}, Landroid/support/graphics/drawable/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v5

    iput v5, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathOffset:F

    .line 1613
    const-string v5, "trimPathStart"

    const/4 v6, 0x5

    iget v7, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathStart:F

    invoke-static {p1, p2, v5, v6, v7}, Landroid/support/graphics/drawable/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v5

    iput v5, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathStart:F

    goto/16 :goto_0
.end method


.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 1
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    .prologue
    .line 1619
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mThemeAttrs:[I

    if-nez v0, :cond_0

    .line 1628
    :cond_0
    return-void
.end method

.method public canApplyTheme()Z
    .locals 1

    .prologue
    .line 1551
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mThemeAttrs:[I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getFillAlpha()F
    .locals 1

    .prologue
    .line 1673
    iget v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillAlpha:F

    return v0
.end method

.method getFillColor()I
    .locals 1

    .prologue
    .line 1663
    iget v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillColor:I

    return v0
.end method

.method getStrokeAlpha()F
    .locals 1

    .prologue
    .line 1653
    iget v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeAlpha:F

    return v0
.end method

.method getStrokeColor()I
    .locals 1

    .prologue
    .line 1633
    iget v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeColor:I

    return v0
.end method

.method getStrokeWidth()F
    .locals 1

    .prologue
    .line 1643
    iget v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeWidth:F

    return v0
.end method

.method getTrimPathEnd()F
    .locals 1

    .prologue
    .line 1693
    iget v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathEnd:F

    return v0
.end method

.method getTrimPathOffset()F
    .locals 1

    .prologue
    .line 1703
    iget v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathOffset:F

    return v0
.end method

.method getTrimPathStart()F
    .locals 1

    .prologue
    .line 1683
    iget v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathStart:F

    return v0
.end method

.method public inflate(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;
    .param p4, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 1555
    sget-object v1, Landroid/support/graphics/drawable/AndroidResources;->styleable_VectorDrawablePath:[I

    invoke-static {p1, p3, p2, v1}, Landroid/support/graphics/drawable/VectorDrawableCommon;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1557
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0, p4}, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->updateStateFromTypedArray(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1558
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1559
    return-void
.end method

.method setFillAlpha(F)V
    .locals 0
    .param p1, "fillAlpha"    # F

    .prologue
    .line 1678
    iput p1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillAlpha:F

    .line 1679
    return-void
.end method

.method setFillColor(I)V
    .locals 0
    .param p1, "fillColor"    # I

    .prologue
    .line 1668
    iput p1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillColor:I

    .line 1669
    return-void
.end method

.method setStrokeAlpha(F)V
    .locals 0
    .param p1, "strokeAlpha"    # F

    .prologue
    .line 1658
    iput p1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeAlpha:F

    .line 1659
    return-void
.end method

.method setStrokeColor(I)V
    .locals 0
    .param p1, "strokeColor"    # I

    .prologue
    .line 1638
    iput p1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeColor:I

    .line 1639
    return-void
.end method

.method setStrokeWidth(F)V
    .locals 0
    .param p1, "strokeWidth"    # F

    .prologue
    .line 1648
    iput p1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeWidth:F

    .line 1649
    return-void
.end method

.method setTrimPathEnd(F)V
    .locals 0
    .param p1, "trimPathEnd"    # F

    .prologue
    .line 1698
    iput p1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathEnd:F

    .line 1699
    return-void
.end method

.method setTrimPathOffset(F)V
    .locals 0
    .param p1, "trimPathOffset"    # F

    .prologue
    .line 1708
    iput p1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathOffset:F

    .line 1709
    return-void
.end method

.method setTrimPathStart(F)V
    .locals 0
    .param p1, "trimPathStart"    # F

    .prologue
    .line 1688
    iput p1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathStart:F

    .line 1689
    return-void
.end method
