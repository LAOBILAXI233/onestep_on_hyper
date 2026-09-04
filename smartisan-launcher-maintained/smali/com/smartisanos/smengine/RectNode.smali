.class public Lcom/smartisanos/smengine/RectNode;
.super Lcom/smartisanos/launcher/animations/DrawMultiTimesScreenNode;
.source "RectNode.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/smengine/RectNode$RectException;,
        Lcom/smartisanos/smengine/RectNode$OShapeProperty;
    }
.end annotation


.field private static final log:Lcom/smartisanos/launcher/LOG;


.field private mBottom:F

.field private mBottomPadding:F

.field private mInnerRectNode:Lcom/smartisanos/smengine/RectNode;

.field private mLeft:F

.field private mLeftPadding:F

.field private mOShapeProperty:Lcom/smartisanos/smengine/RectNode$OShapeProperty;

.field private mOuterRectNode:Lcom/smartisanos/smengine/RectNode;

.field private mRight:F

.field private mRightPadding:F

.field private mTop:F

.field private mTopPadding:F

.field private mZ:F


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/smartisanos/smengine/RectNode;

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/smengine/RectNode;->log:Lcom/smartisanos/launcher/LOG;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;FFFFF)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "innerWidth"    # F
    .param p3, "innerHeight"    # F
    .param p4, "outerWidth"    # F
    .param p5, "outerHeight"    # F
    .param p6, "z"    # F

    .prologue
    const/4 v4, 0x0

    .line 366
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/animations/DrawMultiTimesScreenNode;-><init>(Ljava/lang/String;)V

    .line 367
    new-instance v0, Lcom/smartisanos/smengine/RectNode$OShapeProperty;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/smartisanos/smengine/RectNode$OShapeProperty;-><init>(Lcom/smartisanos/smengine/RectNode$1;)V

    iput-object v0, p0, Lcom/smartisanos/smengine/RectNode;->mOShapeProperty:Lcom/smartisanos/smengine/RectNode$OShapeProperty;

    .line 368
    iget-object v0, p0, Lcom/smartisanos/smengine/RectNode;->mOShapeProperty:Lcom/smartisanos/smengine/RectNode$OShapeProperty;

    iput p2, v0, Lcom/smartisanos/smengine/RectNode$OShapeProperty;->mInnerWidth:F

    .line 369
    iget-object v0, p0, Lcom/smartisanos/smengine/RectNode;->mOShapeProperty:Lcom/smartisanos/smengine/RectNode$OShapeProperty;

    iput p3, v0, Lcom/smartisanos/smengine/RectNode$OShapeProperty;->mInnerHeight:F

    .line 370
    iget-object v0, p0, Lcom/smartisanos/smengine/RectNode;->mOShapeProperty:Lcom/smartisanos/smengine/RectNode$OShapeProperty;

    iput p4, v0, Lcom/smartisanos/smengine/RectNode$OShapeProperty;->mOuterWidth:F

    .line 371
    iget-object v0, p0, Lcom/smartisanos/smengine/RectNode;->mOShapeProperty:Lcom/smartisanos/smengine/RectNode$OShapeProperty;

    iput p5, v0, Lcom/smartisanos/smengine/RectNode$OShapeProperty;->mOuterHeight:F

    .line 372
    iget-object v0, p0, Lcom/smartisanos/smengine/RectNode;->mOShapeProperty:Lcom/smartisanos/smengine/RectNode$OShapeProperty;

    div-float v1, p2, p4

    iput v1, v0, Lcom/smartisanos/smengine/RectNode$OShapeProperty;->mInnerWidthRatio:F

    .line 373
    iget-object v0, p0, Lcom/smartisanos/smengine/RectNode;->mOShapeProperty:Lcom/smartisanos/smengine/RectNode$OShapeProperty;

    div-float v1, p3, p5

    iput v1, v0, Lcom/smartisanos/smengine/RectNode$OShapeProperty;->mInnerHeightRatio:F

    move-object v0, p0

    move v1, p4

    move v2, p5

    move v3, p6

    move v5, v4

    move v6, v4

    move v7, v4

    .line 374
    invoke-direct/range {v0 .. v7}, Lcom/smartisanos/smengine/RectNode;->setDimension(FFFFFFF)V

    .line 376
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;FFFFFFF)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "width"    # F
    .param p3, "height"    # F
    .param p4, "z"    # F
    .param p5, "leftPadding"    # F
    .param p6, "rightPadding"    # F
    .param p7, "topPadding"    # F
    .param p8, "bottomPadding"    # F

    .prologue
    .line 354
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/animations/DrawMultiTimesScreenNode;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    move/from16 v7, p8

    .line 355
    invoke-direct/range {v0 .. v7}, Lcom/smartisanos/smengine/RectNode;->setDimension(FFFFFFF)V

    .line 357
    iget v0, p0, Lcom/smartisanos/smengine/RectNode;->mLeftPadding:F

    iget v1, p0, Lcom/smartisanos/smengine/RectNode;->mRightPadding:F

    add-float/2addr v0, v1

    cmpl-float v0, v0, p2

    if-ltz v0, :cond_0

    .line 358
    new-instance v0, Lcom/smartisanos/smengine/RectNode$RectException;

    const-string v1, "create rect error: left and right padding exeed width"

    invoke-direct {v0, v1}, Lcom/smartisanos/smengine/RectNode$RectException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 360
    :cond_0
    iget v0, p0, Lcom/smartisanos/smengine/RectNode;->mTopPadding:F

    iget v1, p0, Lcom/smartisanos/smengine/RectNode;->mBottomPadding:F

    add-float/2addr v0, v1

    cmpl-float v0, v0, p3

    if-ltz v0, :cond_1

    .line 361
    new-instance v0, Lcom/smartisanos/smengine/RectNode$RectException;

    const-string v1, "create rect error: top and bottom padding exceed height"

    invoke-direct {v0, v1}, Lcom/smartisanos/smengine/RectNode$RectException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 364
    :cond_1
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;FFFFFFFI)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "width"    # F
    .param p3, "height"    # F
    .param p4, "z"    # F
    .param p5, "leftPadding"    # F
    .param p6, "rightPadding"    # F
    .param p7, "topPadding"    # F
    .param p8, "bottomPadding"    # F
    .param p9, "drawTimes"    # I

    .prologue
    .line 629
    move/from16 v0, p9

    invoke-direct {p0, p1, v0}, Lcom/smartisanos/launcher/animations/DrawMultiTimesScreenNode;-><init>(Ljava/lang/String;I)V

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    .line 630
    invoke-direct/range {v1 .. v8}, Lcom/smartisanos/smengine/RectNode;->setDimension(FFFFFFF)V

    .line 632
    iget v1, p0, Lcom/smartisanos/smengine/RectNode;->mLeftPadding:F

    iget v2, p0, Lcom/smartisanos/smengine/RectNode;->mRightPadding:F

    add-float/2addr v1, v2

    cmpl-float v1, v1, p2

    if-ltz v1, :cond_0

    .line 633
    new-instance v1, Lcom/smartisanos/smengine/RectNode$RectException;

    const-string v2, "create rect error: left and right padding exeed width"

    invoke-direct {v1, v2}, Lcom/smartisanos/smengine/RectNode$RectException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 635
    :cond_0
    iget v1, p0, Lcom/smartisanos/smengine/RectNode;->mTopPadding:F

    iget v2, p0, Lcom/smartisanos/smengine/RectNode;->mBottomPadding:F

    add-float/2addr v1, v2

    cmpl-float v1, v1, p3

    if-ltz v1, :cond_1

    .line 636
    new-instance v1, Lcom/smartisanos/smengine/RectNode$RectException;

    const-string v2, "create rect error: top and bottom padding exceed height"

    invoke-direct {v1, v2}, Lcom/smartisanos/smengine/RectNode$RectException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 639
    :cond_1
    return-void
.end method

.method public static createColorRect(Ljava/lang/String;FFFLcom/smartisanos/smengine/math/Vector4f;Lcom/smartisanos/smengine/math/Vector4f;Lcom/smartisanos/smengine/math/Vector4f;Lcom/smartisanos/smengine/math/Vector4f;)Lcom/smartisanos/smengine/RectNode;
    .locals 11
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "z"    # F
    .param p4, "c1"    # Lcom/smartisanos/smengine/math/Vector4f;
    .param p5, "c2"    # Lcom/smartisanos/smengine/math/Vector4f;
    .param p6, "c3"    # Lcom/smartisanos/smengine/math/Vector4f;
    .param p7, "c4"    # Lcom/smartisanos/smengine/math/Vector4f;

    .prologue
    .line 542
    new-instance v0, Lcom/smartisanos/smengine/RectNode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v8}, Lcom/smartisanos/smengine/RectNode;-><init>(Ljava/lang/String;FFFFFFF)V

    .line 543
    .local v0, "rect":Lcom/smartisanos/smengine/RectNode;
    new-instance v9, Ljava/lang/Float;

    invoke-direct {v9, p3}, Ljava/lang/Float;-><init>(F)V

    .line 544
    .local v9, "f":Ljava/lang/Float;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mesh.rect.normalize.color_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v9, v3}, Lcom/smartisanos/smengine/util/StringUtil;->floatToStringWithFactorLength(Ljava/lang/Float;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 545
    .local v1, "meshName":Ljava/lang/String;
    const/4 v2, 0x0

    const/4 v7, 0x0

    move-object v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    invoke-direct/range {v0 .. v7}, Lcom/smartisanos/smengine/RectNode;->createMesh(Ljava/lang/String;ZLcom/smartisanos/smengine/math/Vector4f;Lcom/smartisanos/smengine/math/Vector4f;Lcom/smartisanos/smengine/math/Vector4f;Lcom/smartisanos/smengine/math/Vector4f;Z)V

    .line 546
    const-string v2, "SimpleColorMaterial"

    invoke-static {v2}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v10

    .line 547
    .local v10, "m":Lcom/smartisanos/smengine/mymaterial/Material;
    invoke-virtual {v0, v10}, Lcom/smartisanos/smengine/RectNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 548
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/RectNode;->setIsEnableBlend(Z)V

    .line 549
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/RectNode;->setIsEnableDepthTest(Z)V

    .line 550
    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, p1, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, p2, v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2, v3, v4}, Lcom/smartisanos/smengine/RectNode;->setScale(FFF)V

    .line 551
    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->updateGeometricState()V

    .line 552
    return-object v0
.end method

.method public static createGlobalColorRect(Ljava/lang/String;FFFLcom/smartisanos/smengine/math/Vector4f;)Lcom/smartisanos/smengine/RectNode;
    .locals 11
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "z"    # F
    .param p4, "c1"    # Lcom/smartisanos/smengine/math/Vector4f;

    .prologue
    .line 555
    new-instance v0, Lcom/smartisanos/smengine/RectNode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v8}, Lcom/smartisanos/smengine/RectNode;-><init>(Ljava/lang/String;FFFFFFF)V

    .line 556
    .local v0, "rect":Lcom/smartisanos/smengine/RectNode;
    new-instance v9, Ljava/lang/Float;

    invoke-direct {v9, p3}, Ljava/lang/Float;-><init>(F)V

    .line 557
    .local v9, "f":Ljava/lang/Float;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mesh.normalize.globalcolor_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v9, v3}, Lcom/smartisanos/smengine/util/StringUtil;->floatToStringWithFactorLength(Ljava/lang/Float;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 558
    .local v1, "meshName":Ljava/lang/String;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/smartisanos/smengine/RectNode;->createMesh(Ljava/lang/String;ZLcom/smartisanos/smengine/math/Vector4f;Lcom/smartisanos/smengine/math/Vector4f;Lcom/smartisanos/smengine/math/Vector4f;Lcom/smartisanos/smengine/math/Vector4f;Z)V

    .line 559
    const-string v2, "GlobalColorMaterial"

    invoke-static {v2}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v10

    .line 560
    .local v10, "m":Lcom/smartisanos/smengine/mymaterial/Material;
    invoke-virtual {v0, v10}, Lcom/smartisanos/smengine/RectNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 561
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/RectNode;->setIsEnableBlend(Z)V

    .line 562
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/RectNode;->setIsEnableDepthTest(Z)V

    .line 563
    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, p1, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, p2, v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2, v3, v4}, Lcom/smartisanos/smengine/RectNode;->setScale(FFF)V

    .line 564
    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->updateGeometricState()V

    .line 565
    return-object v0
.end method

.method private createMesh(Ljava/lang/String;ZLcom/smartisanos/smengine/math/Vector4f;Lcom/smartisanos/smengine/math/Vector4f;Lcom/smartisanos/smengine/math/Vector4f;Lcom/smartisanos/smengine/math/Vector4f;Z)V
    .locals 11
    .param p1, "meshName"    # Ljava/lang/String;
    .param p2, "hasTexture"    # Z
    .param p3, "c1"    # Lcom/smartisanos/smengine/math/Vector4f;
    .param p4, "c2"    # Lcom/smartisanos/smengine/math/Vector4f;
    .param p5, "c3"    # Lcom/smartisanos/smengine/math/Vector4f;
    .param p6, "c4"    # Lcom/smartisanos/smengine/math/Vector4f;
    .param p7, "isTexYInverse"    # Z

    .prologue
    .line 157
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/smengine/World;->getMeshManager()Lcom/smartisanos/smengine/MeshManager;

    move-result-object v8

    .line 158
    .local v8, "meshManager":Lcom/smartisanos/smengine/MeshManager;
    if-eqz p7, :cond_0

    .line 159
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, "_TEXYINVERSE"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 161
    :cond_0
    invoke-virtual {v8, p1}, Lcom/smartisanos/smengine/MeshManager;->getMesh(Ljava/lang/String;)Lcom/smartisanos/smengine/Mesh;

    move-result-object v1

    .line 162
    .local v1, "mesh":Lcom/smartisanos/smengine/Mesh;
    if-nez v1, :cond_3

    .line 163
    const/16 v6, 0xc

    new-array v2, v6, [F

    const/4 v6, 0x0

    const/high16 v10, -0x40800000    # -1.0f

    aput v10, v2, v6

    const/4 v6, 0x1

    const/high16 v10, -0x40800000    # -1.0f

    aput v10, v2, v6

    const/4 v6, 0x2

    iget v10, p0, Lcom/smartisanos/smengine/RectNode;->mZ:F

    aput v10, v2, v6

    const/4 v6, 0x3

    const/high16 v10, 0x3f800000    # 1.0f

    aput v10, v2, v6

    const/4 v6, 0x4

    const/high16 v10, -0x40800000    # -1.0f

    aput v10, v2, v6

    const/4 v6, 0x5

    iget v10, p0, Lcom/smartisanos/smengine/RectNode;->mZ:F

    aput v10, v2, v6

    const/4 v6, 0x6

    const/high16 v10, 0x3f800000    # 1.0f

    aput v10, v2, v6

    const/4 v6, 0x7

    const/high16 v10, 0x3f800000    # 1.0f

    aput v10, v2, v6

    const/16 v6, 0x8

    iget v10, p0, Lcom/smartisanos/smengine/RectNode;->mZ:F

    aput v10, v2, v6

    const/16 v6, 0x9

    const/high16 v10, -0x40800000    # -1.0f

    aput v10, v2, v6

    const/16 v6, 0xa

    const/high16 v10, 0x3f800000    # 1.0f

    aput v10, v2, v6

    const/16 v6, 0xb

    iget v10, p0, Lcom/smartisanos/smengine/RectNode;->mZ:F

    aput v10, v2, v6

    .line 168
    .local v2, "points":[F
    const/4 v6, 0x6

    new-array v4, v6, [S

    fill-array-data v4, :array_0

    .line 172
    .local v4, "faces":[S
    const/4 v3, 0x0

    .line 173
    .local v3, "texPoints":[F
    if-eqz p2, :cond_1

    .line 174
    const/16 v6, 0x8

    new-array v9, v6, [F

    fill-array-data v9, :array_1

    .line 180
    .local v9, "tp":[F
    move-object v3, v9

    .line 182
    .end local v9    # "tp":[F
    :cond_1
    const/4 v5, 0x0

    .line 183
    .local v5, "colors":[F
    if-eqz p3, :cond_2

    if-eqz p4, :cond_2

    if-eqz p5, :cond_2

    if-eqz p6, :cond_2

    .line 184
    const/16 v6, 0x10

    new-array v7, v6, [F

    const/4 v6, 0x0

    iget v10, p3, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    aput v10, v7, v6

    const/4 v6, 0x1

    iget v10, p3, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    aput v10, v7, v6

    const/4 v6, 0x2

    iget v10, p3, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    aput v10, v7, v6

    const/4 v6, 0x3

    iget v10, p3, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    aput v10, v7, v6

    const/4 v6, 0x4

    iget v10, p4, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    aput v10, v7, v6

    const/4 v6, 0x5

    iget v10, p4, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    aput v10, v7, v6

    const/4 v6, 0x6

    iget v10, p4, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    aput v10, v7, v6

    const/4 v6, 0x7

    iget v10, p4, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    aput v10, v7, v6

    const/16 v6, 0x8

    move-object/from16 v0, p5

    iget v10, v0, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    aput v10, v7, v6

    const/16 v6, 0x9

    move-object/from16 v0, p5

    iget v10, v0, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    aput v10, v7, v6

    const/16 v6, 0xa

    move-object/from16 v0, p5

    iget v10, v0, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    aput v10, v7, v6

    const/16 v6, 0xb

    move-object/from16 v0, p5

    iget v10, v0, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    aput v10, v7, v6

    const/16 v6, 0xc

    move-object/from16 v0, p6

    iget v10, v0, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    aput v10, v7, v6

    const/16 v6, 0xd

    move-object/from16 v0, p6

    iget v10, v0, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    aput v10, v7, v6

    const/16 v6, 0xe

    move-object/from16 v0, p6

    iget v10, v0, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    aput v10, v7, v6

    const/16 v6, 0xf

    move-object/from16 v0, p6

    iget v10, v0, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    aput v10, v7, v6

    .line 190
    .local v7, "cs":[F
    move-object v5, v7

    .line 192
    .end local v7    # "cs":[F
    :cond_2
    new-instance v1, Lcom/smartisanos/smengine/Mesh;

    .end local v1    # "mesh":Lcom/smartisanos/smengine/Mesh;
    invoke-direct {v1, p1}, Lcom/smartisanos/smengine/Mesh;-><init>(Ljava/lang/String;)V

    .restart local v1    # "mesh":Lcom/smartisanos/smengine/Mesh;
    move/from16 v6, p7

    .line 193
    invoke-virtual/range {v1 .. v6}, Lcom/smartisanos/smengine/Mesh;->create([F[F[S[FZ)V

    .line 194
    invoke-virtual {v8, p1, v1}, Lcom/smartisanos/smengine/MeshManager;->addMesh(Ljava/lang/String;Lcom/smartisanos/smengine/Mesh;)Lcom/smartisanos/smengine/Mesh;

    .line 197
    .end local v2    # "points":[F
    .end local v3    # "texPoints":[F
    .end local v4    # "faces":[S
    .end local v5    # "colors":[F
    :cond_3
    invoke-virtual {p0, v1}, Lcom/smartisanos/smengine/RectNode;->setMesh(Lcom/smartisanos/smengine/Mesh;)V

    .line 198
    return-void

    .line 168
    nop

    :array_0
    .array-data 2
        0x0s
        0x1s
        0x2s
        0x0s
        0x2s
        0x3s
    .end array-data

    .line 174
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

.method private createNinePathMesh()V
    .locals 29

    .prologue
    .line 200
    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mZ:F

    move/from16 v25, v0

    .line 201
    .local v25, "z":F
    const/16 v26, 0xc

    move/from16 v0, v26

    new-array v4, v0, [F

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mLeft:F

    move/from16 v27, v0

    aput v27, v4, v26

    const/16 v26, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mBottom:F

    move/from16 v27, v0

    aput v27, v4, v26

    const/16 v26, 0x2

    aput v25, v4, v26

    const/16 v26, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mLeft:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mLeftPadding:F

    move/from16 v28, v0

    add-float v27, v27, v28

    aput v27, v4, v26

    const/16 v26, 0x4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mBottom:F

    move/from16 v27, v0

    aput v27, v4, v26

    const/16 v26, 0x5

    aput v25, v4, v26

    const/16 v26, 0x6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mLeft:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mLeftPadding:F

    move/from16 v28, v0

    add-float v27, v27, v28

    aput v27, v4, v26

    const/16 v26, 0x7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mBottom:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mBottomPadding:F

    move/from16 v28, v0

    add-float v27, v27, v28

    aput v27, v4, v26

    const/16 v26, 0x8

    aput v25, v4, v26

    const/16 v26, 0x9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mLeft:F

    move/from16 v27, v0

    aput v27, v4, v26

    const/16 v26, 0xa

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mBottom:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mBottomPadding:F

    move/from16 v28, v0

    add-float v27, v27, v28

    aput v27, v4, v26

    const/16 v26, 0xb

    aput v25, v4, v26

    .line 207
    .local v4, "patch1":[F
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/smengine/RectNode;->getWidth()F

    move-result v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mLeftPadding:F

    move/from16 v27, v0

    sub-float v26, v26, v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mRightPadding:F

    move/from16 v27, v0

    sub-float v3, v26, v27

    .line 208
    .local v3, "midWidth":F
    const/16 v26, 0xc

    move/from16 v0, v26

    new-array v5, v0, [F

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mLeft:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mLeftPadding:F

    move/from16 v28, v0

    add-float v27, v27, v28

    aput v27, v5, v26

    const/16 v26, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mBottom:F

    move/from16 v27, v0

    aput v27, v5, v26

    const/16 v26, 0x2

    aput v25, v5, v26

    const/16 v26, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mLeft:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mLeftPadding:F

    move/from16 v28, v0

    add-float v27, v27, v28

    add-float v27, v27, v3

    aput v27, v5, v26

    const/16 v26, 0x4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mBottom:F

    move/from16 v27, v0

    aput v27, v5, v26

    const/16 v26, 0x5

    aput v25, v5, v26

    const/16 v26, 0x6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mLeft:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mLeftPadding:F

    move/from16 v28, v0

    add-float v27, v27, v28

    add-float v27, v27, v3

    aput v27, v5, v26

    const/16 v26, 0x7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mBottom:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mBottomPadding:F

    move/from16 v28, v0

    add-float v27, v27, v28

    aput v27, v5, v26

    const/16 v26, 0x8

    aput v25, v5, v26

    const/16 v26, 0x9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mLeft:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mLeftPadding:F

    move/from16 v28, v0

    add-float v27, v27, v28

    aput v27, v5, v26

    const/16 v26, 0xa

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mBottom:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mBottomPadding:F

    move/from16 v28, v0

    add-float v27, v27, v28

    aput v27, v5, v26

    const/16 v26, 0xb

    aput v25, v5, v26

    .line 214
    .local v5, "patch2":[F
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/smengine/RectNode;->getHeight()F

    move-result v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mTopPadding:F

    move/from16 v27, v0

    sub-float v26, v26, v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mBottomPadding:F

    move/from16 v27, v0

    sub-float v2, v26, v27

    .line 215
    .local v2, "midHeight":F
    const/16 v26, 0xc

    move/from16 v0, v26

    new-array v6, v0, [F

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mRight:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mRightPadding:F

    move/from16 v28, v0

    sub-float v27, v27, v28

    aput v27, v6, v26

    const/16 v26, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mBottom:F

    move/from16 v27, v0

    aput v27, v6, v26

    const/16 v26, 0x2

    aput v25, v6, v26

    const/16 v26, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mRight:F

    move/from16 v27, v0

    aput v27, v6, v26

    const/16 v26, 0x4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mBottom:F

    move/from16 v27, v0

    aput v27, v6, v26

    const/16 v26, 0x5

    aput v25, v6, v26

    const/16 v26, 0x6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mRight:F

    move/from16 v27, v0

    aput v27, v6, v26

    const/16 v26, 0x7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mBottom:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mBottomPadding:F

    move/from16 v28, v0

    add-float v27, v27, v28

    aput v27, v6, v26

    const/16 v26, 0x8

    aput v25, v6, v26

    const/16 v26, 0x9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mRight:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mRightPadding:F

    move/from16 v28, v0

    sub-float v27, v27, v28

    aput v27, v6, v26

    const/16 v26, 0xa

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mBottom:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mBottomPadding:F

    move/from16 v28, v0

    add-float v27, v27, v28

    aput v27, v6, v26

    const/16 v26, 0xb

    aput v25, v6, v26

    .line 221
    .local v6, "patch3":[F
    const/16 v26, 0xc

    move/from16 v0, v26

    new-array v7, v0, [F

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mRight:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mRightPadding:F

    move/from16 v28, v0

    sub-float v27, v27, v28

    aput v27, v7, v26

    const/16 v26, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mBottom:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mBottomPadding:F

    move/from16 v28, v0

    add-float v27, v27, v28

    aput v27, v7, v26

    const/16 v26, 0x2

    aput v25, v7, v26

    const/16 v26, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mRight:F

    move/from16 v27, v0

    aput v27, v7, v26

    const/16 v26, 0x4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mBottom:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mBottomPadding:F

    move/from16 v28, v0

    add-float v27, v27, v28

    aput v27, v7, v26

    const/16 v26, 0x5

    aput v25, v7, v26

    const/16 v26, 0x6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mRight:F

    move/from16 v27, v0

    aput v27, v7, v26

    const/16 v26, 0x7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mBottom:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mBottomPadding:F

    move/from16 v28, v0

    add-float v27, v27, v28

    add-float v27, v27, v2

    aput v27, v7, v26

    const/16 v26, 0x8

    aput v25, v7, v26

    const/16 v26, 0x9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mRight:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mRightPadding:F

    move/from16 v28, v0

    sub-float v27, v27, v28

    aput v27, v7, v26

    const/16 v26, 0xa

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mBottom:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mBottomPadding:F

    move/from16 v28, v0

    add-float v27, v27, v28

    add-float v27, v27, v2

    aput v27, v7, v26

    const/16 v26, 0xb

    aput v25, v7, v26

    .line 227
    .local v7, "patch4":[F
    const/16 v26, 0xc

    move/from16 v0, v26

    new-array v8, v0, [F

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mRight:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mRightPadding:F

    move/from16 v28, v0

    sub-float v27, v27, v28

    aput v27, v8, v26

    const/16 v26, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mTop:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mTopPadding:F

    move/from16 v28, v0

    sub-float v27, v27, v28

    aput v27, v8, v26

    const/16 v26, 0x2

    aput v25, v8, v26

    const/16 v26, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mRight:F

    move/from16 v27, v0

    aput v27, v8, v26

    const/16 v26, 0x4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mTop:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mTopPadding:F

    move/from16 v28, v0

    sub-float v27, v27, v28

    aput v27, v8, v26

    const/16 v26, 0x5

    aput v25, v8, v26

    const/16 v26, 0x6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mRight:F

    move/from16 v27, v0

    aput v27, v8, v26

    const/16 v26, 0x7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mTop:F

    move/from16 v27, v0

    aput v27, v8, v26

    const/16 v26, 0x8

    aput v25, v8, v26

    const/16 v26, 0x9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mRight:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mRightPadding:F

    move/from16 v28, v0

    sub-float v27, v27, v28

    aput v27, v8, v26

    const/16 v26, 0xa

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mTop:F

    move/from16 v27, v0

    aput v27, v8, v26

    const/16 v26, 0xb

    aput v25, v8, v26

    .line 233
    .local v8, "patch5":[F
    const/16 v26, 0xc

    move/from16 v0, v26

    new-array v9, v0, [F

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mLeft:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mLeftPadding:F

    move/from16 v28, v0

    add-float v27, v27, v28

    aput v27, v9, v26

    const/16 v26, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mTop:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mTopPadding:F

    move/from16 v28, v0

    sub-float v27, v27, v28

    aput v27, v9, v26

    const/16 v26, 0x2

    aput v25, v9, v26

    const/16 v26, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mRight:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mRightPadding:F

    move/from16 v28, v0

    sub-float v27, v27, v28

    aput v27, v9, v26

    const/16 v26, 0x4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mTop:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mTopPadding:F

    move/from16 v28, v0

    sub-float v27, v27, v28

    aput v27, v9, v26

    const/16 v26, 0x5

    aput v25, v9, v26

    const/16 v26, 0x6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mRight:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mRightPadding:F

    move/from16 v28, v0

    sub-float v27, v27, v28

    aput v27, v9, v26

    const/16 v26, 0x7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mTop:F

    move/from16 v27, v0

    aput v27, v9, v26

    const/16 v26, 0x8

    aput v25, v9, v26

    const/16 v26, 0x9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mLeft:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mLeftPadding:F

    move/from16 v28, v0

    add-float v27, v27, v28

    aput v27, v9, v26

    const/16 v26, 0xa

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mTop:F

    move/from16 v27, v0

    aput v27, v9, v26

    const/16 v26, 0xb

    aput v25, v9, v26

    .line 239
    .local v9, "patch6":[F
    const/16 v26, 0xc

    move/from16 v0, v26

    new-array v10, v0, [F

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mLeft:F

    move/from16 v27, v0

    aput v27, v10, v26

    const/16 v26, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mTop:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mTopPadding:F

    move/from16 v28, v0

    sub-float v27, v27, v28

    aput v27, v10, v26

    const/16 v26, 0x2

    aput v25, v10, v26

    const/16 v26, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mLeft:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mLeftPadding:F

    move/from16 v28, v0

    add-float v27, v27, v28

    aput v27, v10, v26

    const/16 v26, 0x4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mTop:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mTopPadding:F

    move/from16 v28, v0

    sub-float v27, v27, v28

    aput v27, v10, v26

    const/16 v26, 0x5

    aput v25, v10, v26

    const/16 v26, 0x6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mLeft:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mLeftPadding:F

    move/from16 v28, v0

    add-float v27, v27, v28

    aput v27, v10, v26

    const/16 v26, 0x7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mTop:F

    move/from16 v27, v0

    aput v27, v10, v26

    const/16 v26, 0x8

    aput v25, v10, v26

    const/16 v26, 0x9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mLeft:F

    move/from16 v27, v0

    aput v27, v10, v26

    const/16 v26, 0xa

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mTop:F

    move/from16 v27, v0

    aput v27, v10, v26

    const/16 v26, 0xb

    aput v25, v10, v26

    .line 245
    .local v10, "patch7":[F
    const/16 v26, 0xc

    move/from16 v0, v26

    new-array v11, v0, [F

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mLeft:F

    move/from16 v27, v0

    aput v27, v11, v26

    const/16 v26, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mBottom:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mBottomPadding:F

    move/from16 v28, v0

    add-float v27, v27, v28

    aput v27, v11, v26

    const/16 v26, 0x2

    aput v25, v11, v26

    const/16 v26, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mLeft:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mLeftPadding:F

    move/from16 v28, v0

    add-float v27, v27, v28

    aput v27, v11, v26

    const/16 v26, 0x4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mBottom:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mBottomPadding:F

    move/from16 v28, v0

    add-float v27, v27, v28

    aput v27, v11, v26

    const/16 v26, 0x5

    aput v25, v11, v26

    const/16 v26, 0x6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mLeft:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mLeftPadding:F

    move/from16 v28, v0

    add-float v27, v27, v28

    aput v27, v11, v26

    const/16 v26, 0x7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mBottom:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mBottomPadding:F

    move/from16 v28, v0

    add-float v27, v27, v28

    add-float v27, v27, v2

    aput v27, v11, v26

    const/16 v26, 0x8

    aput v25, v11, v26

    const/16 v26, 0x9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mLeft:F

    move/from16 v27, v0

    aput v27, v11, v26

    const/16 v26, 0xa

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mBottom:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mBottomPadding:F

    move/from16 v28, v0

    add-float v27, v27, v28

    add-float v27, v27, v2

    aput v27, v11, v26

    const/16 v26, 0xb

    aput v25, v11, v26

    .line 251
    .local v11, "patch8":[F
    const/16 v26, 0xc

    move/from16 v0, v26

    new-array v12, v0, [F

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mLeft:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mLeftPadding:F

    move/from16 v28, v0

    add-float v27, v27, v28

    aput v27, v12, v26

    const/16 v26, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mBottom:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mBottomPadding:F

    move/from16 v28, v0

    add-float v27, v27, v28

    aput v27, v12, v26

    const/16 v26, 0x2

    aput v25, v12, v26

    const/16 v26, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mLeft:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mLeftPadding:F

    move/from16 v28, v0

    add-float v27, v27, v28

    add-float v27, v27, v3

    aput v27, v12, v26

    const/16 v26, 0x4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mBottom:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mBottomPadding:F

    move/from16 v28, v0

    add-float v27, v27, v28

    aput v27, v12, v26

    const/16 v26, 0x5

    aput v25, v12, v26

    const/16 v26, 0x6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mLeft:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mLeftPadding:F

    move/from16 v28, v0

    add-float v27, v27, v28

    add-float v27, v27, v3

    aput v27, v12, v26

    const/16 v26, 0x7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mBottom:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mBottomPadding:F

    move/from16 v28, v0

    add-float v27, v27, v28

    add-float v27, v27, v2

    aput v27, v12, v26

    const/16 v26, 0x8

    aput v25, v12, v26

    const/16 v26, 0x9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mLeft:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mLeftPadding:F

    move/from16 v28, v0

    add-float v27, v27, v28

    aput v27, v12, v26

    const/16 v26, 0xa

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mBottom:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mBottomPadding:F

    move/from16 v28, v0

    add-float v27, v27, v28

    add-float v27, v27, v2

    aput v27, v12, v26

    const/16 v26, 0xb

    aput v25, v12, v26

    .line 257
    .local v12, "patch9":[F
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/smengine/RectNode;->getWidth()F

    move-result v24

    .line 258
    .local v24, "width":F
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/smengine/RectNode;->getHeight()F

    move-result v1

    .line 259
    .local v1, "height":F
    const/16 v26, 0x8

    move/from16 v0, v26

    new-array v14, v0, [F

    const/16 v26, 0x0

    const/16 v27, 0x0

    aput v27, v14, v26

    const/16 v26, 0x1

    const/16 v27, 0x0

    aput v27, v14, v26

    const/16 v26, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mLeftPadding:F

    move/from16 v27, v0

    div-float v27, v27, v24

    aput v27, v14, v26

    const/16 v26, 0x3

    const/16 v27, 0x0

    aput v27, v14, v26

    const/16 v26, 0x4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mLeftPadding:F

    move/from16 v27, v0

    div-float v27, v27, v24

    aput v27, v14, v26

    const/16 v26, 0x5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mBottomPadding:F

    move/from16 v27, v0

    div-float v27, v27, v1

    aput v27, v14, v26

    const/16 v26, 0x6

    const/16 v27, 0x0

    aput v27, v14, v26

    const/16 v26, 0x7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mBottomPadding:F

    move/from16 v27, v0

    div-float v27, v27, v1

    aput v27, v14, v26

    .line 265
    .local v14, "tex1":[F
    const/16 v26, 0x8

    move/from16 v0, v26

    new-array v15, v0, [F

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mLeftPadding:F

    move/from16 v27, v0

    div-float v27, v27, v24

    aput v27, v15, v26

    const/16 v26, 0x1

    const/16 v27, 0x0

    aput v27, v15, v26

    const/16 v26, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mLeftPadding:F

    move/from16 v27, v0

    add-float v27, v27, v3

    div-float v27, v27, v24

    aput v27, v15, v26

    const/16 v26, 0x3

    const/16 v27, 0x0

    aput v27, v15, v26

    const/16 v26, 0x4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mLeftPadding:F

    move/from16 v27, v0

    add-float v27, v27, v3

    div-float v27, v27, v24

    aput v27, v15, v26

    const/16 v26, 0x5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mBottomPadding:F

    move/from16 v27, v0

    div-float v27, v27, v1

    aput v27, v15, v26

    const/16 v26, 0x6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mLeftPadding:F

    move/from16 v27, v0

    div-float v27, v27, v24

    aput v27, v15, v26

    const/16 v26, 0x7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mBottomPadding:F

    move/from16 v27, v0

    div-float v27, v27, v1

    aput v27, v15, v26

    .line 271
    .local v15, "tex2":[F
    const/16 v26, 0x8

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v16, v0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mLeftPadding:F

    move/from16 v27, v0

    add-float v27, v27, v3

    div-float v27, v27, v24

    aput v27, v16, v26

    const/16 v26, 0x1

    const/16 v27, 0x0

    aput v27, v16, v26

    const/16 v26, 0x2

    const/high16 v27, 0x3f800000    # 1.0f

    aput v27, v16, v26

    const/16 v26, 0x3

    const/16 v27, 0x0

    aput v27, v16, v26

    const/16 v26, 0x4

    const/high16 v27, 0x3f800000    # 1.0f

    aput v27, v16, v26

    const/16 v26, 0x5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mBottomPadding:F

    move/from16 v27, v0

    div-float v27, v27, v1

    aput v27, v16, v26

    const/16 v26, 0x6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mLeftPadding:F

    move/from16 v27, v0

    add-float v27, v27, v3

    div-float v27, v27, v24

    aput v27, v16, v26

    const/16 v26, 0x7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mBottomPadding:F

    move/from16 v27, v0

    div-float v27, v27, v1

    aput v27, v16, v26

    .line 277
    .local v16, "tex3":[F
    const/16 v26, 0x8

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v17, v0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mLeftPadding:F

    move/from16 v27, v0

    add-float v27, v27, v3

    div-float v27, v27, v24

    aput v27, v17, v26

    const/16 v26, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mBottomPadding:F

    move/from16 v27, v0

    div-float v27, v27, v1

    aput v27, v17, v26

    const/16 v26, 0x2

    const/high16 v27, 0x3f800000    # 1.0f

    aput v27, v17, v26

    const/16 v26, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mBottomPadding:F

    move/from16 v27, v0

    div-float v27, v27, v1

    aput v27, v17, v26

    const/16 v26, 0x4

    const/high16 v27, 0x3f800000    # 1.0f

    aput v27, v17, v26

    const/16 v26, 0x5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mBottomPadding:F

    move/from16 v27, v0

    add-float v27, v27, v2

    div-float v27, v27, v1

    aput v27, v17, v26

    const/16 v26, 0x6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mLeftPadding:F

    move/from16 v27, v0

    add-float v27, v27, v3

    div-float v27, v27, v24

    aput v27, v17, v26

    const/16 v26, 0x7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mBottomPadding:F

    move/from16 v27, v0

    add-float v27, v27, v2

    div-float v27, v27, v1

    aput v27, v17, v26

    .line 283
    .local v17, "tex4":[F
    const/16 v26, 0x8

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v18, v0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mLeftPadding:F

    move/from16 v27, v0

    add-float v27, v27, v3

    div-float v27, v27, v24

    aput v27, v18, v26

    const/16 v26, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mBottomPadding:F

    move/from16 v27, v0

    add-float v27, v27, v2

    div-float v27, v27, v1

    aput v27, v18, v26

    const/16 v26, 0x2

    const/high16 v27, 0x3f800000    # 1.0f

    aput v27, v18, v26

    const/16 v26, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mBottomPadding:F

    move/from16 v27, v0

    add-float v27, v27, v2

    div-float v27, v27, v1

    aput v27, v18, v26

    const/16 v26, 0x4

    const/high16 v27, 0x3f800000    # 1.0f

    aput v27, v18, v26

    const/16 v26, 0x5

    const/high16 v27, 0x3f800000    # 1.0f

    aput v27, v18, v26

    const/16 v26, 0x6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mLeftPadding:F

    move/from16 v27, v0

    add-float v27, v27, v3

    div-float v27, v27, v24

    aput v27, v18, v26

    const/16 v26, 0x7

    const/high16 v27, 0x3f800000    # 1.0f

    aput v27, v18, v26

    .line 289
    .local v18, "tex5":[F
    const/16 v26, 0x8

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mLeftPadding:F

    move/from16 v27, v0

    div-float v27, v27, v24

    aput v27, v19, v26

    const/16 v26, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mBottomPadding:F

    move/from16 v27, v0

    add-float v27, v27, v2

    div-float v27, v27, v1

    aput v27, v19, v26

    const/16 v26, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mLeftPadding:F

    move/from16 v27, v0

    add-float v27, v27, v3

    div-float v27, v27, v24

    aput v27, v19, v26

    const/16 v26, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mBottomPadding:F

    move/from16 v27, v0

    add-float v27, v27, v2

    div-float v27, v27, v1

    aput v27, v19, v26

    const/16 v26, 0x4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mLeftPadding:F

    move/from16 v27, v0

    add-float v27, v27, v3

    div-float v27, v27, v24

    aput v27, v19, v26

    const/16 v26, 0x5

    const/high16 v27, 0x3f800000    # 1.0f

    aput v27, v19, v26

    const/16 v26, 0x6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mLeftPadding:F

    move/from16 v27, v0

    div-float v27, v27, v24

    aput v27, v19, v26

    const/16 v26, 0x7

    const/high16 v27, 0x3f800000    # 1.0f

    aput v27, v19, v26

    .line 295
    .local v19, "tex6":[F
    const/16 v26, 0x8

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v20, v0

    const/16 v26, 0x0

    const/16 v27, 0x0

    aput v27, v20, v26

    const/16 v26, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mBottomPadding:F

    move/from16 v27, v0

    add-float v27, v27, v2

    div-float v27, v27, v1

    aput v27, v20, v26

    const/16 v26, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mLeftPadding:F

    move/from16 v27, v0

    div-float v27, v27, v24

    aput v27, v20, v26

    const/16 v26, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mBottomPadding:F

    move/from16 v27, v0

    add-float v27, v27, v2

    div-float v27, v27, v1

    aput v27, v20, v26

    const/16 v26, 0x4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mLeftPadding:F

    move/from16 v27, v0

    div-float v27, v27, v24

    aput v27, v20, v26

    const/16 v26, 0x5

    const/high16 v27, 0x3f800000    # 1.0f

    aput v27, v20, v26

    const/16 v26, 0x6

    const/16 v27, 0x0

    aput v27, v20, v26

    const/16 v26, 0x7

    const/high16 v27, 0x3f800000    # 1.0f

    aput v27, v20, v26

    .line 301
    .local v20, "tex7":[F
    const/16 v26, 0x8

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v21, v0

    const/16 v26, 0x0

    const/16 v27, 0x0

    aput v27, v21, v26

    const/16 v26, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mBottomPadding:F

    move/from16 v27, v0

    div-float v27, v27, v1

    aput v27, v21, v26

    const/16 v26, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mLeftPadding:F

    move/from16 v27, v0

    div-float v27, v27, v24

    aput v27, v21, v26

    const/16 v26, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mBottomPadding:F

    move/from16 v27, v0

    div-float v27, v27, v1

    aput v27, v21, v26

    const/16 v26, 0x4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mLeftPadding:F

    move/from16 v27, v0

    div-float v27, v27, v24

    aput v27, v21, v26

    const/16 v26, 0x5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mBottomPadding:F

    move/from16 v27, v0

    add-float v27, v27, v2

    div-float v27, v27, v1

    aput v27, v21, v26

    const/16 v26, 0x6

    const/16 v27, 0x0

    aput v27, v21, v26

    const/16 v26, 0x7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mBottomPadding:F

    move/from16 v27, v0

    add-float v27, v27, v2

    div-float v27, v27, v1

    aput v27, v21, v26

    .line 307
    .local v21, "tex8":[F
    const/16 v26, 0x8

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v22, v0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mLeftPadding:F

    move/from16 v27, v0

    div-float v27, v27, v24

    aput v27, v22, v26

    const/16 v26, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mBottomPadding:F

    move/from16 v27, v0

    div-float v27, v27, v1

    aput v27, v22, v26

    const/16 v26, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mLeftPadding:F

    move/from16 v27, v0

    add-float v27, v27, v3

    div-float v27, v27, v24

    aput v27, v22, v26

    const/16 v26, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mBottomPadding:F

    move/from16 v27, v0

    div-float v27, v27, v1

    aput v27, v22, v26

    const/16 v26, 0x4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mLeftPadding:F

    move/from16 v27, v0

    add-float v27, v27, v3

    div-float v27, v27, v24

    aput v27, v22, v26

    const/16 v26, 0x5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mBottomPadding:F

    move/from16 v27, v0

    add-float v27, v27, v2

    div-float v27, v27, v1

    aput v27, v22, v26

    const/16 v26, 0x6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mLeftPadding:F

    move/from16 v27, v0

    div-float v27, v27, v24

    aput v27, v22, v26

    const/16 v26, 0x7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/RectNode;->mBottomPadding:F

    move/from16 v27, v0

    add-float v27, v27, v2

    div-float v27, v27, v1

    aput v27, v22, v26

    .line 313
    .local v22, "tex9":[F
    const/16 v26, 0x9

    move/from16 v0, v26

    new-array v13, v0, [[F

    const/16 v26, 0x0

    aput-object v4, v13, v26

    const/16 v26, 0x1

    aput-object v5, v13, v26

    const/16 v26, 0x2

    aput-object v6, v13, v26

    const/16 v26, 0x3

    aput-object v7, v13, v26

    const/16 v26, 0x4

    aput-object v8, v13, v26

    const/16 v26, 0x5

    aput-object v9, v13, v26

    const/16 v26, 0x6

    aput-object v10, v13, v26

    const/16 v26, 0x7

    aput-object v11, v13, v26

    const/16 v26, 0x8

    aput-object v12, v13, v26

    .line 314
    .local v13, "pointArray":[[F
    const/16 v26, 0x9

    move/from16 v0, v26

    new-array v0, v0, [[F

    move-object/from16 v23, v0

    const/16 v26, 0x0

    aput-object v14, v23, v26

    const/16 v26, 0x1

    aput-object v15, v23, v26

    const/16 v26, 0x2

    aput-object v16, v23, v26

    const/16 v26, 0x3

    aput-object v17, v23, v26

    const/16 v26, 0x4

    aput-object v18, v23, v26

    const/16 v26, 0x5

    aput-object v19, v23, v26

    const/16 v26, 0x6

    aput-object v20, v23, v26

    const/16 v26, 0x7

    aput-object v21, v23, v26

    const/16 v26, 0x8

    aput-object v22, v23, v26

    .line 328
    .local v23, "texArray":[[F
    return-void
.end method

.method private createOShape(Z)V
    .locals 34
    .param p1, "isTexYInverse"    # Z

    .prologue
    .line 52
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/smartisanos/smengine/RectNode;->mOShapeProperty:Lcom/smartisanos/smengine/RectNode$OShapeProperty;

    iget v7, v7, Lcom/smartisanos/smengine/RectNode$OShapeProperty;->mInnerWidth:F

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/smartisanos/smengine/RectNode;->mOShapeProperty:Lcom/smartisanos/smengine/RectNode$OShapeProperty;

    iget v10, v10, Lcom/smartisanos/smengine/RectNode$OShapeProperty;->mOuterWidth:F

    div-float v25, v7, v10

    .line 53
    .local v25, "innerWidthRatio":F
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/smartisanos/smengine/RectNode;->mOShapeProperty:Lcom/smartisanos/smengine/RectNode$OShapeProperty;

    iget v7, v7, Lcom/smartisanos/smengine/RectNode$OShapeProperty;->mInnerHeight:F

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/smartisanos/smengine/RectNode;->mOShapeProperty:Lcom/smartisanos/smengine/RectNode$OShapeProperty;

    iget v10, v10, Lcom/smartisanos/smengine/RectNode$OShapeProperty;->mOuterHeight:F

    div-float v20, v7, v10

    .line 54
    .local v20, "innerHeightRatio":F
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/smartisanos/smengine/RectNode;->mOShapeProperty:Lcom/smartisanos/smengine/RectNode$OShapeProperty;

    move/from16 v0, v25

    iput v0, v7, Lcom/smartisanos/smengine/RectNode$OShapeProperty;->mInnerWidthRatio:F

    .line 55
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/smartisanos/smengine/RectNode;->mOShapeProperty:Lcom/smartisanos/smengine/RectNode$OShapeProperty;

    move/from16 v0, v20

    iput v0, v7, Lcom/smartisanos/smengine/RectNode$OShapeProperty;->mInnerHeightRatio:F

    .line 56
    const/16 v7, 0xc

    new-array v0, v7, [F

    move-object/from16 v31, v0

    const/4 v7, 0x0

    const/high16 v10, -0x40800000    # -1.0f

    aput v10, v31, v7

    const/4 v7, 0x1

    const/high16 v10, -0x40800000    # -1.0f

    aput v10, v31, v7

    const/4 v7, 0x2

    move-object/from16 v0, p0

    iget v10, v0, Lcom/smartisanos/smengine/RectNode;->mZ:F

    aput v10, v31, v7

    const/4 v7, 0x3

    const/high16 v10, 0x3f800000    # 1.0f

    aput v10, v31, v7

    const/4 v7, 0x4

    const/high16 v10, -0x40800000    # -1.0f

    aput v10, v31, v7

    const/4 v7, 0x5

    move-object/from16 v0, p0

    iget v10, v0, Lcom/smartisanos/smengine/RectNode;->mZ:F

    aput v10, v31, v7

    const/4 v7, 0x6

    const/high16 v10, 0x3f800000    # 1.0f

    aput v10, v31, v7

    const/4 v7, 0x7

    const/high16 v10, 0x3f800000    # 1.0f

    aput v10, v31, v7

    const/16 v7, 0x8

    move-object/from16 v0, p0

    iget v10, v0, Lcom/smartisanos/smengine/RectNode;->mZ:F

    aput v10, v31, v7

    const/16 v7, 0x9

    const/high16 v10, -0x40800000    # -1.0f

    aput v10, v31, v7

    const/16 v7, 0xa

    const/high16 v10, 0x3f800000    # 1.0f

    aput v10, v31, v7

    const/16 v7, 0xb

    move-object/from16 v0, p0

    iget v10, v0, Lcom/smartisanos/smengine/RectNode;->mZ:F

    aput v10, v31, v7

    .line 62
    .local v31, "outerPoints":[F
    const/16 v7, 0xc

    new-array v0, v7, [F

    move-object/from16 v24, v0

    const/4 v7, 0x0

    move/from16 v0, v25

    neg-float v10, v0

    aput v10, v24, v7

    const/4 v7, 0x1

    move/from16 v0, v20

    neg-float v10, v0

    aput v10, v24, v7

    const/4 v7, 0x2

    move-object/from16 v0, p0

    iget v10, v0, Lcom/smartisanos/smengine/RectNode;->mZ:F

    aput v10, v24, v7

    const/4 v7, 0x3

    aput v25, v24, v7

    const/4 v7, 0x4

    move/from16 v0, v20

    neg-float v10, v0

    aput v10, v24, v7

    const/4 v7, 0x5

    move-object/from16 v0, p0

    iget v10, v0, Lcom/smartisanos/smengine/RectNode;->mZ:F

    aput v10, v24, v7

    const/4 v7, 0x6

    aput v25, v24, v7

    const/4 v7, 0x7

    aput v20, v24, v7

    const/16 v7, 0x8

    move-object/from16 v0, p0

    iget v10, v0, Lcom/smartisanos/smengine/RectNode;->mZ:F

    aput v10, v24, v7

    const/16 v7, 0x9

    move/from16 v0, v25

    neg-float v10, v0

    aput v10, v24, v7

    const/16 v7, 0xa

    aput v20, v24, v7

    const/16 v7, 0xb

    move-object/from16 v0, p0

    iget v10, v0, Lcom/smartisanos/smengine/RectNode;->mZ:F

    aput v10, v24, v7

    .line 68
    .local v24, "innerPoints":[F
    const/16 v7, 0x8

    new-array v0, v7, [F

    move-object/from16 v32, v0

    fill-array-data v32, :array_0

    .line 74
    .local v32, "outerTexPoints":[F
    const/16 v7, 0x8

    new-array v8, v7, [F

    const/4 v7, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float v10, v10, v25

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    aput v10, v8, v7

    const/4 v7, 0x1

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float v10, v10, v20

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    aput v10, v8, v7

    const/4 v7, 0x2

    const/high16 v10, 0x3f800000    # 1.0f

    add-float v10, v10, v25

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    aput v10, v8, v7

    const/4 v7, 0x3

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float v10, v10, v20

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    aput v10, v8, v7

    const/4 v7, 0x4

    const/high16 v10, 0x3f800000    # 1.0f

    add-float v10, v10, v25

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    aput v10, v8, v7

    const/4 v7, 0x5

    const/high16 v10, 0x3f800000    # 1.0f

    add-float v10, v10, v20

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    aput v10, v8, v7

    const/4 v7, 0x6

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float v10, v10, v25

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    aput v10, v8, v7

    const/4 v7, 0x7

    const/high16 v10, 0x3f800000    # 1.0f

    add-float v10, v10, v20

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    aput v10, v8, v7

    .line 80
    .local v8, "innerTexPoints":[F
    move-object/from16 v0, v31

    array-length v7, v0

    move-object/from16 v0, v24

    array-length v10, v0

    add-int/2addr v7, v10

    new-array v3, v7, [F

    .line 81
    .local v3, "opoints":[F
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_0
    move-object/from16 v0, v31

    array-length v7, v0

    move/from16 v0, v19

    if-ge v0, v7, :cond_0

    .line 82
    aget v7, v31, v19

    aput v7, v3, v19

    .line 81
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    .line 84
    :cond_0
    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v28, v0

    .line 85
    .local v28, "k":I
    const/16 v19, 0x0

    :goto_1
    move-object/from16 v0, v24

    array-length v7, v0

    move/from16 v0, v19

    if-ge v0, v7, :cond_1

    .line 86
    aget v7, v24, v19

    aput v7, v3, v28

    .line 87
    add-int/lit8 v28, v28, 0x1

    .line 85
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 89
    :cond_1
    move-object/from16 v0, v32

    array-length v7, v0

    array-length v10, v8

    add-int/2addr v7, v10

    new-array v4, v7, [F

    .line 90
    .local v4, "otexPoints":[F
    const/16 v19, 0x0

    :goto_2
    move-object/from16 v0, v32

    array-length v7, v0

    move/from16 v0, v19

    if-ge v0, v7, :cond_2

    .line 91
    aget v7, v32, v19

    aput v7, v4, v19

    .line 90
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .line 93
    :cond_2
    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v28, v0

    .line 94
    const/16 v19, 0x0

    :goto_3
    array-length v7, v8

    move/from16 v0, v19

    if-ge v0, v7, :cond_3

    .line 95
    aget v7, v8, v19

    aput v7, v4, v28

    .line 96
    add-int/lit8 v28, v28, 0x1

    .line 94
    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    .line 98
    :cond_3
    const/16 v7, 0x18

    new-array v5, v7, [S

    fill-array-data v5, :array_1

    .line 108
    .local v5, "outerFace":[S
    const/4 v7, 0x6

    new-array v9, v7, [S

    fill-array-data v9, :array_2

    .line 112
    .local v9, "innerFace":[S
    new-instance v26, Ljava/lang/Float;

    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    .line 113
    .local v26, "innerWidthRatioF":Ljava/lang/Float;
    new-instance v21, Ljava/lang/Float;

    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    .line 114
    .local v21, "innerHeightRatioF":Ljava/lang/Float;
    new-instance v33, Ljava/lang/Float;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/smartisanos/smengine/RectNode;->mZ:F

    move-object/from16 v0, v33

    invoke-direct {v0, v7}, Ljava/lang/Float;-><init>(F)V

    .line 115
    .local v33, "zF":Ljava/lang/Float;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x2

    move-object/from16 v0, v26

    invoke-static {v0, v10}, Lcom/smartisanos/smengine/util/StringUtil;->floatToStringWithFactorLength(Ljava/lang/Float;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "_"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v10, 0x2

    move-object/from16 v0, v33

    invoke-static {v0, v10}, Lcom/smartisanos/smengine/util/StringUtil;->floatToStringWithFactorLength(Ljava/lang/Float;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 116
    .local v27, "innerWidthStr":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x2

    move-object/from16 v0, v21

    invoke-static {v0, v10}, Lcom/smartisanos/smengine/util/StringUtil;->floatToStringWithFactorLength(Ljava/lang/Float;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "_"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v10, 0x2

    move-object/from16 v0, v33

    invoke-static {v0, v10}, Lcom/smartisanos/smengine/util/StringUtil;->floatToStringWithFactorLength(Ljava/lang/Float;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 117
    .local v22, "innerHeightStr":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mesh.oshape.outer.normalize.texture"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 118
    .local v30, "outerKey":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mesh.oshape.inner.normalize.texture"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 119
    .local v23, "innerKey":Ljava/lang/String;
    if-eqz p1, :cond_4

    .line 120
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "_TEXYINVERSE"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 121
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "_TEXYINVERSE"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 123
    :cond_4
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v7

    invoke-virtual {v7}, Lcom/smartisanos/smengine/World;->getMeshManager()Lcom/smartisanos/smengine/MeshManager;

    move-result-object v7

    move-object/from16 v0, v30

    invoke-virtual {v7, v0}, Lcom/smartisanos/smengine/MeshManager;->getMesh(Ljava/lang/String;)Lcom/smartisanos/smengine/Mesh;

    move-result-object v2

    .line 124
    .local v2, "outerMesh":Lcom/smartisanos/smengine/Mesh;
    if-nez v2, :cond_5

    .line 125
    new-instance v2, Lcom/smartisanos/smengine/Mesh;

    .end local v2    # "outerMesh":Lcom/smartisanos/smengine/Mesh;
    invoke-direct {v2}, Lcom/smartisanos/smengine/Mesh;-><init>()V

    .line 126
    .restart local v2    # "outerMesh":Lcom/smartisanos/smengine/Mesh;
    const/4 v6, 0x0

    move/from16 v7, p1

    invoke-virtual/range {v2 .. v7}, Lcom/smartisanos/smengine/Mesh;->create([F[F[S[FZ)V

    .line 127
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v7

    invoke-virtual {v7}, Lcom/smartisanos/smengine/World;->getMeshManager()Lcom/smartisanos/smengine/MeshManager;

    move-result-object v7

    move-object/from16 v0, v30

    invoke-virtual {v7, v0, v2}, Lcom/smartisanos/smengine/MeshManager;->addMesh(Ljava/lang/String;Lcom/smartisanos/smengine/Mesh;)Lcom/smartisanos/smengine/Mesh;

    .line 130
    :cond_5
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v7

    invoke-virtual {v7}, Lcom/smartisanos/smengine/World;->getMeshManager()Lcom/smartisanos/smengine/MeshManager;

    move-result-object v7

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Lcom/smartisanos/smengine/MeshManager;->getMesh(Ljava/lang/String;)Lcom/smartisanos/smengine/Mesh;

    move-result-object v6

    .line 131
    .local v6, "innerMesh":Lcom/smartisanos/smengine/Mesh;
    if-nez v6, :cond_6

    .line 132
    new-instance v6, Lcom/smartisanos/smengine/Mesh;

    .end local v6    # "innerMesh":Lcom/smartisanos/smengine/Mesh;
    invoke-direct {v6}, Lcom/smartisanos/smengine/Mesh;-><init>()V

    .line 133
    .restart local v6    # "innerMesh":Lcom/smartisanos/smengine/Mesh;
    const/4 v10, 0x0

    move-object/from16 v7, v24

    move/from16 v11, p1

    invoke-virtual/range {v6 .. v11}, Lcom/smartisanos/smengine/Mesh;->create([F[F[S[FZ)V

    .line 134
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v7

    invoke-virtual {v7}, Lcom/smartisanos/smengine/World;->getMeshManager()Lcom/smartisanos/smengine/MeshManager;

    move-result-object v7

    move-object/from16 v0, v23

    invoke-virtual {v7, v0, v6}, Lcom/smartisanos/smengine/MeshManager;->addMesh(Ljava/lang/String;Lcom/smartisanos/smengine/Mesh;)Lcom/smartisanos/smengine/Mesh;

    .line 136
    :cond_6
    new-instance v10, Lcom/smartisanos/smengine/RectNode;

    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/smengine/RectNode;->getName()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/smartisanos/smengine/RectNode;->mOShapeProperty:Lcom/smartisanos/smengine/RectNode$OShapeProperty;

    iget v12, v7, Lcom/smartisanos/smengine/RectNode$OShapeProperty;->mInnerWidth:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/smartisanos/smengine/RectNode;->mOShapeProperty:Lcom/smartisanos/smengine/RectNode$OShapeProperty;

    iget v13, v7, Lcom/smartisanos/smengine/RectNode$OShapeProperty;->mInnerHeight:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/smartisanos/smengine/RectNode;->mZ:F

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v10 .. v18}, Lcom/smartisanos/smengine/RectNode;-><init>(Ljava/lang/String;FFFFFFF)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/smartisanos/smengine/RectNode;->mInnerRectNode:Lcom/smartisanos/smengine/RectNode;

    .line 137
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/smartisanos/smengine/RectNode;->mInnerRectNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v7, v6}, Lcom/smartisanos/smengine/RectNode;->setMesh(Lcom/smartisanos/smengine/Mesh;)V

    .line 138
    new-instance v10, Lcom/smartisanos/smengine/RectNode;

    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/smengine/RectNode;->getName()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/smartisanos/smengine/RectNode;->mOShapeProperty:Lcom/smartisanos/smengine/RectNode$OShapeProperty;

    iget v12, v7, Lcom/smartisanos/smengine/RectNode$OShapeProperty;->mOuterWidth:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/smartisanos/smengine/RectNode;->mOShapeProperty:Lcom/smartisanos/smengine/RectNode$OShapeProperty;

    iget v13, v7, Lcom/smartisanos/smengine/RectNode$OShapeProperty;->mOuterHeight:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/smartisanos/smengine/RectNode;->mZ:F

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v10 .. v18}, Lcom/smartisanos/smengine/RectNode;-><init>(Ljava/lang/String;FFFFFFF)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/smartisanos/smengine/RectNode;->mOuterRectNode:Lcom/smartisanos/smengine/RectNode;

    .line 139
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/smartisanos/smengine/RectNode;->mOuterRectNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v7, v2}, Lcom/smartisanos/smengine/RectNode;->setMesh(Lcom/smartisanos/smengine/Mesh;)V

    .line 140
    const-string v7, "SimpleTextureMaterial"

    invoke-static {v7}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v29

    .line 141
    .local v29, "m":Lcom/smartisanos/smengine/mymaterial/Material;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/smartisanos/smengine/RectNode;->mInnerRectNode:Lcom/smartisanos/smengine/RectNode;

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/smartisanos/smengine/RectNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 142
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/smartisanos/smengine/RectNode;->mOuterRectNode:Lcom/smartisanos/smengine/RectNode;

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/smartisanos/smengine/RectNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 143
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/smartisanos/smengine/RectNode;->mInnerRectNode:Lcom/smartisanos/smengine/RectNode;

    move-object/from16 v0, v29

    invoke-virtual {v7, v0}, Lcom/smartisanos/smengine/RectNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 144
    const-string v7, "SimpleTextureMaterial"

    invoke-static {v7}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v29

    .line 145
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/smartisanos/smengine/RectNode;->mOuterRectNode:Lcom/smartisanos/smengine/RectNode;

    move-object/from16 v0, v29

    invoke-virtual {v7, v0}, Lcom/smartisanos/smengine/RectNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 146
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/smartisanos/smengine/RectNode;->mOuterRectNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v7}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v7

    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Lcom/smartisanos/smengine/RenderState;->setIsEnableBlend(Z)V

    .line 147
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/smartisanos/smengine/RectNode;->mOuterRectNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v7}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v7

    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Lcom/smartisanos/smengine/RenderState;->setIsEnableDepthTest(Z)V

    .line 148
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/smartisanos/smengine/RectNode;->mOuterRectNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v7}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v7

    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Lcom/smartisanos/smengine/RenderState;->setIsPolygonOffset(Z)V

    .line 149
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/smartisanos/smengine/RectNode;->mOuterRectNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v7}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v7

    const/high16 v10, -0x40800000    # -1.0f

    const/high16 v11, -0x40000000    # -2.0f

    invoke-virtual {v7, v10, v11}, Lcom/smartisanos/smengine/RenderState;->setPolygonOffsetFactorUnits(FF)V

    .line 151
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/smartisanos/smengine/RectNode;->mInnerRectNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v7}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v7

    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Lcom/smartisanos/smengine/RenderState;->setIsEnableBlend(Z)V

    .line 152
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/smartisanos/smengine/RectNode;->mInnerRectNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v7}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v7

    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Lcom/smartisanos/smengine/RenderState;->setIsEnableDepthTest(Z)V

    .line 153
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/smartisanos/smengine/RectNode;->mInnerRectNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v7}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v7

    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Lcom/smartisanos/smengine/RenderState;->setIsPolygonOffset(Z)V

    .line 154
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/smartisanos/smengine/RectNode;->mInnerRectNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v7}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v7

    const/high16 v10, -0x40800000    # -1.0f

    const/high16 v11, -0x40000000    # -2.0f

    invoke-virtual {v7, v10, v11}, Lcom/smartisanos/smengine/RenderState;->setPolygonOffsetFactorUnits(FF)V

    .line 155
    return-void

    .line 68
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

    .line 98
    :array_1
    .array-data 2
        0x0s
        0x1s
        0x4s
        0x1s
        0x4s
        0x5s
        0x1s
        0x2s
        0x5s
        0x2s
        0x6s
        0x5s
        0x2s
        0x3s
        0x6s
        0x3s
        0x7s
        0x6s
        0x0s
        0x7s
        0x3s
        0x0s
        0x4s
        0x7s
    .end array-data

    .line 108
    :array_2
    .array-data 2
        0x0s
        0x1s
        0x2s
        0x0s
        0x2s
        0x3s
    .end array-data
.end method

.method public static createOShapeSimpleTextureRect(Ljava/lang/String;FFFFFZ)Lcom/smartisanos/smengine/RectNode;
    .locals 8
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "innerWidth"    # F
    .param p2, "innerHeight"    # F
    .param p3, "outerWidth"    # F
    .param p4, "outerHeight"    # F
    .param p5, "z"    # F
    .param p6, "isTexYInverse"    # Z

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    .line 602
    new-instance v0, Lcom/smartisanos/smengine/RectNode;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/smartisanos/smengine/RectNode;-><init>(Ljava/lang/String;FFFFF)V

    .line 603
    .local v0, "rect":Lcom/smartisanos/smengine/RectNode;
    invoke-direct {v0, p6}, Lcom/smartisanos/smengine/RectNode;->createOShape(Z)V

    .line 604
    div-float v1, p3, v7

    div-float v2, p4, v7

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2, v3}, Lcom/smartisanos/smengine/RectNode;->setScale(FFF)V

    .line 605
    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->updateGeometricState()V

    .line 606
    return-object v0
.end method

.method public static createSimpleTextureDrawMultiTimesRect(Ljava/lang/String;FFFZI)Lcom/smartisanos/smengine/RectNode;
    .locals 12
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "z"    # F
    .param p4, "isTexYInverse"    # Z
    .param p5, "drawTimes"    # I

    .prologue
    .line 642
    new-instance v0, Lcom/smartisanos/smengine/RectNode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v9, p5

    invoke-direct/range {v0 .. v9}, Lcom/smartisanos/smengine/RectNode;-><init>(Ljava/lang/String;FFFFFFFI)V

    .line 643
    .local v0, "rect":Lcom/smartisanos/smengine/RectNode;
    new-instance v10, Ljava/lang/Float;

    invoke-direct {v10, p3}, Ljava/lang/Float;-><init>(F)V

    .line 644
    .local v10, "f":Ljava/lang/Float;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mesh.rect.normalize.texture_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v10, v3}, Lcom/smartisanos/smengine/util/StringUtil;->floatToStringWithFactorLength(Ljava/lang/Float;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 645
    .local v1, "meshName":Ljava/lang/String;
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/smartisanos/smengine/RectNode;->createMesh(Ljava/lang/String;ZLcom/smartisanos/smengine/math/Vector4f;Lcom/smartisanos/smengine/math/Vector4f;Lcom/smartisanos/smengine/math/Vector4f;Lcom/smartisanos/smengine/math/Vector4f;Z)V

    .line 646
    const-string v2, "SimpleTextureMaterial"

    invoke-static {v2}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v11

    .line 647
    .local v11, "m":Lcom/smartisanos/smengine/mymaterial/Material;
    invoke-virtual {v0, v11}, Lcom/smartisanos/smengine/RectNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 648
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/RectNode;->setIsEnableBlend(Z)V

    .line 649
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/RectNode;->setIsEnableDepthTest(Z)V

    .line 650
    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/RenderState;->setIsUseVBO(Z)V

    .line 651
    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, p1, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, p2, v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2, v3, v4}, Lcom/smartisanos/smengine/RectNode;->setScale(FFF)V

    .line 652
    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->updateGeometricState()V

    .line 653
    return-object v0
.end method

.method public static createSimpleTextureDrawMultiTimesRectWithOwnMesh(Ljava/lang/String;FFFZI)Lcom/smartisanos/smengine/RectNode;
    .locals 12
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "z"    # F
    .param p4, "isTexYInverse"    # Z
    .param p5, "drawTimes"    # I

    .prologue
    .line 657
    new-instance v0, Lcom/smartisanos/smengine/RectNode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v9, p5

    invoke-direct/range {v0 .. v9}, Lcom/smartisanos/smengine/RectNode;-><init>(Ljava/lang/String;FFFFFFFI)V

    .line 658
    .local v0, "rect":Lcom/smartisanos/smengine/RectNode;
    new-instance v10, Ljava/lang/Float;

    invoke-direct {v10, p3}, Ljava/lang/Float;-><init>(F)V

    .line 659
    .local v10, "f":Ljava/lang/Float;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mesh.rect.normalize.texture_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v10, v3}, Lcom/smartisanos/smengine/util/StringUtil;->floatToStringWithFactorLength(Ljava/lang/Float;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 660
    .local v1, "meshName":Ljava/lang/String;
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/smartisanos/smengine/RectNode;->createMesh(Ljava/lang/String;ZLcom/smartisanos/smengine/math/Vector4f;Lcom/smartisanos/smengine/math/Vector4f;Lcom/smartisanos/smengine/math/Vector4f;Lcom/smartisanos/smengine/math/Vector4f;Z)V

    .line 661
    const-string v2, "SimpleTextureMaterial"

    invoke-static {v2}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v11

    .line 662
    .local v11, "m":Lcom/smartisanos/smengine/mymaterial/Material;
    invoke-virtual {v0, v11}, Lcom/smartisanos/smengine/RectNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 663
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/RectNode;->setIsEnableBlend(Z)V

    .line 664
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/RectNode;->setIsEnableDepthTest(Z)V

    .line 665
    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/RenderState;->setIsUseVBO(Z)V

    .line 666
    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, p1, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, p2, v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2, v3, v4}, Lcom/smartisanos/smengine/RectNode;->setScale(FFF)V

    .line 667
    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->updateGeometricState()V

    .line 668
    return-object v0
.end method

.method public static createSimpleTextureRect(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/RectNode;
    .locals 11
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "z"    # F
    .param p4, "isTexYInverse"    # Z

    .prologue
    .line 489
    new-instance v0, Lcom/smartisanos/smengine/RectNode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v8}, Lcom/smartisanos/smengine/RectNode;-><init>(Ljava/lang/String;FFFFFFF)V

    .line 490
    .local v0, "rect":Lcom/smartisanos/smengine/RectNode;
    new-instance v9, Ljava/lang/Float;

    invoke-direct {v9, p3}, Ljava/lang/Float;-><init>(F)V

    .line 491
    .local v9, "f":Ljava/lang/Float;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mesh.rect.normalize.texture_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v9, v3}, Lcom/smartisanos/smengine/util/StringUtil;->floatToStringWithFactorLength(Ljava/lang/Float;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 492
    .local v1, "meshName":Ljava/lang/String;
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/smartisanos/smengine/RectNode;->createMesh(Ljava/lang/String;ZLcom/smartisanos/smengine/math/Vector4f;Lcom/smartisanos/smengine/math/Vector4f;Lcom/smartisanos/smengine/math/Vector4f;Lcom/smartisanos/smengine/math/Vector4f;Z)V

    .line 493
    const-string v2, "SimpleTextureMaterial"

    invoke-static {v2}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v10

    .line 494
    .local v10, "m":Lcom/smartisanos/smengine/mymaterial/Material;
    invoke-virtual {v0, v10}, Lcom/smartisanos/smengine/RectNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 495
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/RectNode;->setIsEnableBlend(Z)V

    .line 496
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/RectNode;->setIsEnableDepthTest(Z)V

    .line 497
    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/RenderState;->setIsUseVBO(Z)V

    .line 498
    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, p1, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, p2, v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2, v3, v4}, Lcom/smartisanos/smengine/RectNode;->setScale(FFF)V

    .line 499
    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->updateGeometricState()V

    .line 500
    return-object v0
.end method

.method public static createSimpleTextureRect(Ljava/lang/String;FFFZLcom/smartisanos/smengine/math/Vector4f;Lcom/smartisanos/smengine/math/Vector4f;Lcom/smartisanos/smengine/math/Vector4f;Lcom/smartisanos/smengine/math/Vector4f;)Lcom/smartisanos/smengine/RectNode;
    .locals 11
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "z"    # F
    .param p4, "isTexYInverse"    # Z
    .param p5, "c1"    # Lcom/smartisanos/smengine/math/Vector4f;
    .param p6, "c2"    # Lcom/smartisanos/smengine/math/Vector4f;
    .param p7, "c3"    # Lcom/smartisanos/smengine/math/Vector4f;
    .param p8, "c4"    # Lcom/smartisanos/smengine/math/Vector4f;

    .prologue
    .line 518
    new-instance v0, Lcom/smartisanos/smengine/RectNode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v8}, Lcom/smartisanos/smengine/RectNode;-><init>(Ljava/lang/String;FFFFFFF)V

    .line 519
    .local v0, "rect":Lcom/smartisanos/smengine/RectNode;
    new-instance v9, Ljava/lang/Float;

    invoke-direct {v9, p3}, Ljava/lang/Float;-><init>(F)V

    .line 520
    .local v9, "f":Ljava/lang/Float;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mesh.rect.normalize.texture.color_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v9, v3}, Lcom/smartisanos/smengine/util/StringUtil;->floatToStringWithFactorLength(Ljava/lang/Float;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 521
    .local v1, "meshName":Ljava/lang/String;
    const/4 v2, 0x1

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/smartisanos/smengine/RectNode;->createMesh(Ljava/lang/String;ZLcom/smartisanos/smengine/math/Vector4f;Lcom/smartisanos/smengine/math/Vector4f;Lcom/smartisanos/smengine/math/Vector4f;Lcom/smartisanos/smengine/math/Vector4f;Z)V

    .line 522
    const-string v2, "VertexColorTextureMaterial"

    invoke-static {v2}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v10

    .line 523
    .local v10, "m":Lcom/smartisanos/smengine/mymaterial/Material;
    invoke-virtual {v0, v10}, Lcom/smartisanos/smengine/RectNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 524
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/RectNode;->setIsEnableBlend(Z)V

    .line 525
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/RectNode;->setIsEnableDepthTest(Z)V

    .line 526
    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/RenderState;->setIsUseVBO(Z)V

    .line 527
    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, p1, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, p2, v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2, v3, v4}, Lcom/smartisanos/smengine/RectNode;->setScale(FFF)V

    .line 528
    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->updateGeometricState()V

    .line 529
    return-object v0
.end method

.method public static createSimpleTextureRectWithOwnMesh(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/RectNode;
    .locals 11
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "z"    # F
    .param p4, "isTexYInverse"    # Z

    .prologue
    .line 504
    new-instance v0, Lcom/smartisanos/smengine/RectNode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v8}, Lcom/smartisanos/smengine/RectNode;-><init>(Ljava/lang/String;FFFFFFF)V

    .line 505
    .local v0, "rect":Lcom/smartisanos/smengine/RectNode;
    new-instance v9, Ljava/lang/Float;

    invoke-direct {v9, p3}, Ljava/lang/Float;-><init>(F)V

    .line 506
    .local v9, "f":Ljava/lang/Float;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mesh.rect.normalize.texture_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v9, v3}, Lcom/smartisanos/smengine/util/StringUtil;->floatToStringWithFactorLength(Ljava/lang/Float;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 507
    .local v1, "meshName":Ljava/lang/String;
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/smartisanos/smengine/RectNode;->createMesh(Ljava/lang/String;ZLcom/smartisanos/smengine/math/Vector4f;Lcom/smartisanos/smengine/math/Vector4f;Lcom/smartisanos/smengine/math/Vector4f;Lcom/smartisanos/smengine/math/Vector4f;Z)V

    .line 508
    const-string v2, "SimpleTextureMaterial"

    invoke-static {v2}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v10

    .line 509
    .local v10, "m":Lcom/smartisanos/smengine/mymaterial/Material;
    invoke-virtual {v0, v10}, Lcom/smartisanos/smengine/RectNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 510
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/RectNode;->setIsEnableBlend(Z)V

    .line 511
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/RectNode;->setIsEnableDepthTest(Z)V

    .line 512
    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/RenderState;->setIsUseVBO(Z)V

    .line 513
    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, p1, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, p2, v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2, v3, v4}, Lcom/smartisanos/smengine/RectNode;->setScale(FFF)V

    .line 514
    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->updateGeometricState()V

    .line 515
    return-object v0
.end method

.method public static createSimpleTextureRectWithoutMaterial(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/RectNode;
    .locals 10
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "z"    # F
    .param p4, "isTexYInverse"    # Z

    .prologue
    .line 532
    new-instance v0, Lcom/smartisanos/smengine/RectNode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v8}, Lcom/smartisanos/smengine/RectNode;-><init>(Ljava/lang/String;FFFFFFF)V

    .line 533
    .local v0, "rect":Lcom/smartisanos/smengine/RectNode;
    new-instance v9, Ljava/lang/Float;

    invoke-direct {v9, p3}, Ljava/lang/Float;-><init>(F)V

    .line 534
    .local v9, "f":Ljava/lang/Float;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mesh.rect.normalize.texture_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v9, v3}, Lcom/smartisanos/smengine/util/StringUtil;->floatToStringWithFactorLength(Ljava/lang/Float;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 535
    .local v1, "meshName":Ljava/lang/String;
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/smartisanos/smengine/RectNode;->createMesh(Ljava/lang/String;ZLcom/smartisanos/smengine/math/Vector4f;Lcom/smartisanos/smengine/math/Vector4f;Lcom/smartisanos/smengine/math/Vector4f;Lcom/smartisanos/smengine/math/Vector4f;Z)V

    .line 536
    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, p1, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, p2, v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2, v3, v4}, Lcom/smartisanos/smengine/RectNode;->setScale(FFF)V

    .line 537
    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/RenderState;->setIsUseVBO(Z)V

    .line 538
    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->updateGeometricState()V

    .line 539
    return-object v0
.end method

.method public static createTextRect(Ljava/lang/String;Ljava/lang/String;FLandroid/graphics/Paint;ZII)Lcom/smartisanos/smengine/RectNode;
    .locals 19
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "z"    # F
    .param p3, "textPaint"    # Landroid/graphics/Paint;
    .param p4, "isTexYInverse"    # Z
    .param p5, "maxWidth"    # I
    .param p6, "maxHeight"    # I

    .prologue
    .line 568
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->ascent()F

    move-result v4

    neg-float v4, v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v11, v4

    .line 569
    .local v11, "ascent":I
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->descent()F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v12, v4

    .line 571
    .local v12, "descent":I
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    add-double/2addr v4, v6

    double-to-int v15, v4

    .line 572
    .local v15, "measuredTextWidth":I
    add-int v17, v11, v12

    .line 573
    .local v17, "textHeight":I
    move/from16 v0, p5

    invoke-static {v0, v15}, Ljava/lang/Math;->min(II)I

    move-result v18

    .line 574
    .local v18, "textWidth":I
    move/from16 v0, v17

    move/from16 v1, p6

    if-le v0, v1, :cond_0

    .line 575
    move/from16 v17, p6

    .line 578
    :cond_0
    new-instance v2, Lcom/smartisanos/smengine/RectNode;

    move/from16 v0, v18

    int-to-float v4, v0

    move/from16 v0, v17

    int-to-float v5, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v3, p0

    move/from16 v6, p2

    invoke-direct/range {v2 .. v10}, Lcom/smartisanos/smengine/RectNode;-><init>(Ljava/lang/String;FFFFFFF)V

    .line 579
    .local v2, "rect":Lcom/smartisanos/smengine/RectNode;
    new-instance v13, Ljava/lang/Float;

    move/from16 v0, p2

    invoke-direct {v13, v0}, Ljava/lang/Float;-><init>(F)V

    .line 580
    .local v13, "f":Ljava/lang/Float;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mesh.rect.normalize.texture_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v13, v5}, Lcom/smartisanos/smengine/util/StringUtil;->floatToStringWithFactorLength(Ljava/lang/Float;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 581
    .local v3, "meshName":Ljava/lang/String;
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move/from16 v9, p4

    invoke-direct/range {v2 .. v9}, Lcom/smartisanos/smengine/RectNode;->createMesh(Ljava/lang/String;ZLcom/smartisanos/smengine/math/Vector4f;Lcom/smartisanos/smengine/math/Vector4f;Lcom/smartisanos/smengine/math/Vector4f;Lcom/smartisanos/smengine/math/Vector4f;Z)V

    .line 582
    invoke-static/range {p1 .. p1}, Lcom/smartisanos/smengine/Texture;->createTextTextureName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 583
    .local v16, "texName":Ljava/lang/String;
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/smengine/World;->getTextureManager()Lcom/smartisanos/smengine/TextureManager;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Lcom/smartisanos/smengine/TextureManager;->deleteTexture(Ljava/lang/String;)V

    .line 584
    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/smartisanos/smengine/RectNode;->setImageName(Ljava/lang/String;)V

    .line 585
    const-string v4, "TextureModularColorMaterial"

    invoke-static {v4}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v14

    .line 586
    .local v14, "m":Lcom/smartisanos/smengine/mymaterial/Material;
    const/4 v4, 0x4

    move-object/from16 v0, p3

    invoke-virtual {v14, v4, v0}, Lcom/smartisanos/smengine/mymaterial/Material;->setParam(ILjava/lang/Object;)V

    .line 587
    const/4 v4, 0x2

    new-instance v5, Ljava/lang/Integer;

    move/from16 v0, v18

    invoke-direct {v5, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v14, v4, v5}, Lcom/smartisanos/smengine/mymaterial/Material;->setParam(ILjava/lang/Object;)V

    .line 588
    const/4 v4, 0x3

    new-instance v5, Ljava/lang/Integer;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v14, v4, v5}, Lcom/smartisanos/smengine/mymaterial/Material;->setParam(ILjava/lang/Object;)V

    .line 589
    invoke-virtual {v2, v14}, Lcom/smartisanos/smengine/RectNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 590
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/smartisanos/smengine/RectNode;->setIsEnableBlend(Z)V

    .line 591
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/smartisanos/smengine/RectNode;->setIsEnableDepthTest(Z)V

    .line 592
    invoke-virtual {v2}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/smartisanos/smengine/RenderState;->setIsUseVBO(Z)V

    .line 593
    move/from16 v0, v18

    int-to-float v4, v0

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    move/from16 v0, v17

    int-to-float v5, v0

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v2, v4, v5, v6}, Lcom/smartisanos/smengine/RectNode;->setScale(FFF)V

    .line 594
    const/4 v4, 0x0

    iput v4, v2, Lcom/smartisanos/smengine/RectNode;->mLeft:F

    .line 595
    move/from16 v0, v18

    int-to-float v4, v0

    iput v4, v2, Lcom/smartisanos/smengine/RectNode;->mRight:F

    .line 596
    move/from16 v0, v17

    int-to-float v4, v0

    iput v4, v2, Lcom/smartisanos/smengine/RectNode;->mTop:F

    .line 597
    const/4 v4, 0x0

    iput v4, v2, Lcom/smartisanos/smengine/RectNode;->mBottom:F

    .line 598
    invoke-virtual {v2}, Lcom/smartisanos/smengine/RectNode;->updateGeometricState()V

    .line 599
    return-object v2
.end method

.method public static getScreenAlignMesh()Lcom/smartisanos/smengine/Mesh;
    .locals 9

    .prologue
    .line 461
    const-string v7, "mesh.rect.normalize.texture_0"

    .line 462
    .local v7, "meshName":Ljava/lang/String;
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/smengine/World;->getMeshManager()Lcom/smartisanos/smengine/MeshManager;

    move-result-object v6

    .line 463
    .local v6, "meshManager":Lcom/smartisanos/smengine/MeshManager;
    invoke-virtual {v6, v7}, Lcom/smartisanos/smengine/MeshManager;->getMesh(Ljava/lang/String;)Lcom/smartisanos/smengine/Mesh;

    move-result-object v0

    .line 464
    .local v0, "mesh":Lcom/smartisanos/smengine/Mesh;
    if-nez v0, :cond_0

    .line 465
    const/16 v4, 0xc

    new-array v1, v4, [F

    fill-array-data v1, :array_0

    .line 470
    .local v1, "points":[F
    const/4 v4, 0x6

    new-array v3, v4, [S

    fill-array-data v3, :array_1

    .line 474
    .local v3, "faces":[S
    const/4 v2, 0x0

    .line 475
    .local v2, "texPoints":[F
    const/16 v4, 0x8

    new-array v8, v4, [F

    fill-array-data v8, :array_2

    .line 481
    .local v8, "tp":[F
    move-object v2, v8

    .line 482
    new-instance v0, Lcom/smartisanos/smengine/Mesh;

    .end local v0    # "mesh":Lcom/smartisanos/smengine/Mesh;
    invoke-direct {v0, v7}, Lcom/smartisanos/smengine/Mesh;-><init>(Ljava/lang/String;)V

    .line 483
    .restart local v0    # "mesh":Lcom/smartisanos/smengine/Mesh;
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/smartisanos/smengine/Mesh;->create([F[F[S[FZ)V

    .line 484
    invoke-virtual {v6, v7, v0}, Lcom/smartisanos/smengine/MeshManager;->addMesh(Ljava/lang/String;Lcom/smartisanos/smengine/Mesh;)Lcom/smartisanos/smengine/Mesh;

    .line 486
    .end local v1    # "points":[F
    .end local v2    # "texPoints":[F
    .end local v3    # "faces":[S
    .end local v8    # "tp":[F
    :cond_0
    return-object v0

    .line 465
    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 470
    :array_1
    .array-data 2
        0x0s
        0x1s
        0x2s
        0x0s
        0x2s
        0x3s
    .end array-data

    .line 475
    :array_2
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

.method private setDimension(FFFFFFF)V
    .locals 4
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "z"    # F
    .param p4, "leftPadding"    # F
    .param p5, "rightPadding"    # F
    .param p6, "topPadding"    # F
    .param p7, "bottomPadding"    # F

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    const/4 v1, 0x0

    .line 331
    cmpg-float v0, p1, v1

    if-lez v0, :cond_0

    cmpg-float v0, p2, v1

    if-lez v0, :cond_0

    cmpg-float v0, p4, v1

    if-ltz v0, :cond_0

    cmpg-float v0, p5, v1

    if-ltz v0, :cond_0

    cmpg-float v0, p6, v1

    if-ltz v0, :cond_0

    cmpg-float v0, p7, v1

    if-gez v0, :cond_1

    .line 333
    :cond_0
    sget-object v0, Lcom/smartisanos/smengine/RectNode;->log:Lcom/smartisanos/launcher/LOG;

    const-string v1, "DEBUG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "width ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], height ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], leftPadding ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], rightPadding ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], topPadding ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], bottomPadding ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    new-instance v0, Lcom/smartisanos/smengine/RectNode$RectException;

    const-string v1, "create rect error: padding <= 0"

    invoke-direct {v0, v1}, Lcom/smartisanos/smengine/RectNode$RectException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 337
    :cond_1
    neg-float v0, p1

    div-float/2addr v0, v2

    iput v0, p0, Lcom/smartisanos/smengine/RectNode;->mLeft:F

    .line 338
    neg-float v0, p2

    div-float/2addr v0, v2

    iput v0, p0, Lcom/smartisanos/smengine/RectNode;->mBottom:F

    .line 339
    div-float v0, p2, v2

    iput v0, p0, Lcom/smartisanos/smengine/RectNode;->mTop:F

    .line 340
    div-float v0, p1, v2

    iput v0, p0, Lcom/smartisanos/smengine/RectNode;->mRight:F

    .line 341
    iput p3, p0, Lcom/smartisanos/smengine/RectNode;->mZ:F

    .line 342
    iput p4, p0, Lcom/smartisanos/smengine/RectNode;->mLeftPadding:F

    .line 343
    iput p5, p0, Lcom/smartisanos/smengine/RectNode;->mRightPadding:F

    .line 344
    iput p6, p0, Lcom/smartisanos/smengine/RectNode;->mTopPadding:F

    .line 345
    iput p7, p0, Lcom/smartisanos/smengine/RectNode;->mBottomPadding:F

    .line 346
    return-void
.end method


.method public draw(Lcom/smartisanos/smengine/Camera;)V
    .locals 2
    .param p1, "camera"    # Lcom/smartisanos/smengine/Camera;

    .prologue
    .line 610
    iget-object v0, p0, Lcom/smartisanos/smengine/RectNode;->mOShapeProperty:Lcom/smartisanos/smengine/RectNode$OShapeProperty;

    if-eqz v0, :cond_0

    .line 611
    iget-object v0, p0, Lcom/smartisanos/smengine/RectNode;->mOShapeProperty:Lcom/smartisanos/smengine/RectNode$OShapeProperty;

    iget-boolean v0, v0, Lcom/smartisanos/smengine/RectNode$OShapeProperty;->mIsShowInnerRect:Z

    if-nez v0, :cond_1

    .line 612
    iget-object v0, p0, Lcom/smartisanos/smengine/RectNode;->mInnerRectNode:Lcom/smartisanos/smengine/RectNode;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    .line 617
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/smartisanos/launcher/animations/DrawMultiTimesScreenNode;->draw(Lcom/smartisanos/smengine/Camera;)V

    .line 618
    return-void

    .line 614
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/smengine/RectNode;->mInnerRectNode:Lcom/smartisanos/smengine/RectNode;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    goto :goto_0
.end method

.method public getHeight()F
    .locals 2

    .prologue
    .line 449
    iget v0, p0, Lcom/smartisanos/smengine/RectNode;->mTop:F

    iget v1, p0, Lcom/smartisanos/smengine/RectNode;->mBottom:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public getLocalPoints()[Lcom/smartisanos/smengine/math/Vector3f;
    .locals 8

    .prologue
    .line 409
    new-instance v0, Lcom/smartisanos/smengine/math/Vector3f;

    iget v5, p0, Lcom/smartisanos/smengine/RectNode;->mLeft:F

    iget v6, p0, Lcom/smartisanos/smengine/RectNode;->mBottom:F

    iget v7, p0, Lcom/smartisanos/smengine/RectNode;->mZ:F

    invoke-direct {v0, v5, v6, v7}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    .line 410
    .local v0, "p1":Lcom/smartisanos/smengine/math/Vector3f;
    new-instance v1, Lcom/smartisanos/smengine/math/Vector3f;

    iget v5, p0, Lcom/smartisanos/smengine/RectNode;->mRight:F

    iget v6, p0, Lcom/smartisanos/smengine/RectNode;->mBottom:F

    iget v7, p0, Lcom/smartisanos/smengine/RectNode;->mZ:F

    invoke-direct {v1, v5, v6, v7}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    .line 411
    .local v1, "p2":Lcom/smartisanos/smengine/math/Vector3f;
    new-instance v2, Lcom/smartisanos/smengine/math/Vector3f;

    iget v5, p0, Lcom/smartisanos/smengine/RectNode;->mRight:F

    iget v6, p0, Lcom/smartisanos/smengine/RectNode;->mTop:F

    iget v7, p0, Lcom/smartisanos/smengine/RectNode;->mZ:F

    invoke-direct {v2, v5, v6, v7}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    .line 412
    .local v2, "p3":Lcom/smartisanos/smengine/math/Vector3f;
    new-instance v3, Lcom/smartisanos/smengine/math/Vector3f;

    iget v5, p0, Lcom/smartisanos/smengine/RectNode;->mLeft:F

    iget v6, p0, Lcom/smartisanos/smengine/RectNode;->mTop:F

    iget v7, p0, Lcom/smartisanos/smengine/RectNode;->mZ:F

    invoke-direct {v3, v5, v6, v7}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    .line 413
    .local v3, "p4":Lcom/smartisanos/smengine/math/Vector3f;
    const/4 v5, 0x4

    new-array v4, v5, [Lcom/smartisanos/smengine/math/Vector3f;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    const/4 v5, 0x2

    aput-object v2, v4, v5

    const/4 v5, 0x3

    aput-object v3, v4, v5

    .line 414
    .local v4, "ret":[Lcom/smartisanos/smengine/math/Vector3f;
    return-object v4
.end method

.method public getSize(Lcom/smartisanos/smengine/math/Vector3f;)V
    .locals 6
    .param p1, "v"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 622
    invoke-static {}, Lcom/smartisanos/smengine/util/TempVars;->get()Lcom/smartisanos/smengine/util/TempVars;

    move-result-object v0

    .line 623
    .local v0, "tmpVars":Lcom/smartisanos/smengine/util/TempVars;
    iget-wide v2, p0, Lcom/smartisanos/smengine/RectNode;->mSceneNodeTransformNative:J

    iget-object v1, v0, Lcom/smartisanos/smengine/util/TempVars;->fDdU:[F

    invoke-static {v2, v3, v1}, Lcom/smartisanos/smengine/RectNode;->nGetWorldScale(J[F)V

    .line 624
    iget-object v1, v0, Lcom/smartisanos/smengine/util/TempVars;->fDdU:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    mul-float/2addr v1, v5

    iget-object v2, v0, Lcom/smartisanos/smengine/util/TempVars;->fDdU:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    mul-float/2addr v2, v5

    iget-object v3, v0, Lcom/smartisanos/smengine/util/TempVars;->fDdU:[F

    const/4 v4, 0x2

    aget v3, v3, v4

    mul-float/2addr v3, v5

    invoke-virtual {p1, v1, v2, v3}, Lcom/smartisanos/smengine/math/Vector3f;->set(FFF)Lcom/smartisanos/smengine/math/Vector3f;

    .line 625
    invoke-virtual {v0}, Lcom/smartisanos/smengine/util/TempVars;->release()V

    .line 626
    return-void
.end method

.method public getWidth()F
    .locals 2

    .prologue
    .line 446
    iget v0, p0, Lcom/smartisanos/smengine/RectNode;->mRight:F

    iget v1, p0, Lcom/smartisanos/smengine/RectNode;->mLeft:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public getWorldPoints()[Lcom/smartisanos/smengine/math/Vector3f;
    .locals 6

    .prologue
    .line 425
    invoke-virtual {p0}, Lcom/smartisanos/smengine/RectNode;->getWorldMatrix()Lcom/smartisanos/smengine/math/Matrix4f;

    move-result-object v4

    .line 426
    .local v4, "worldM":Lcom/smartisanos/smengine/math/Matrix4f;
    invoke-virtual {p0}, Lcom/smartisanos/smengine/RectNode;->getLocalPoints()[Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v3

    .line 427
    .local v3, "points":[Lcom/smartisanos/smengine/math/Vector3f;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, v3

    if-ge v0, v5, :cond_0

    .line 428
    aget-object v2, v3, v0

    .line 429
    .local v2, "p":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-virtual {v4, v2}, Lcom/smartisanos/smengine/math/Matrix4f;->mult(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v1

    .line 430
    .local v1, "np":Lcom/smartisanos/smengine/math/Vector3f;
    aput-object v1, v3, v0

    .line 427
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 432
    .end local v1    # "np":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v2    # "p":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_0
    return-object v3
.end method

.method public setDiffuseUV([F)V
    .locals 3
    .param p1, "uv"    # [F

    .prologue
    .line 436
    invoke-virtual {p0}, Lcom/smartisanos/smengine/RectNode;->getMesh()Lcom/smartisanos/smengine/Mesh;

    move-result-object v0

    .line 437
    .local v0, "mesh":Lcom/smartisanos/smengine/Mesh;
    if-nez v0, :cond_0

    .line 443
    :goto_0
    return-void

    .line 440
    :cond_0
    invoke-virtual {v0}, Lcom/smartisanos/smengine/Mesh;->clone()Lcom/smartisanos/smengine/Mesh;

    move-result-object v1

    .line 441
    .local v1, "newMesh":Lcom/smartisanos/smengine/Mesh;
    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Lcom/smartisanos/smengine/Mesh;->setTexVertexArray(I[F)V

    .line 442
    invoke-virtual {p0, v1}, Lcom/smartisanos/smengine/RectNode;->setMesh(Lcom/smartisanos/smengine/Mesh;)V

    goto :goto_0
.end method

.method public setImageName(Ljava/lang/String;)V
    .locals 1
    .param p1, "imageName"    # Ljava/lang/String;

    .prologue
    .line 418
    invoke-super {p0, p1}, Lcom/smartisanos/launcher/animations/DrawMultiTimesScreenNode;->setImageName(Ljava/lang/String;)V

    .line 419
    iget-object v0, p0, Lcom/smartisanos/smengine/RectNode;->mOShapeProperty:Lcom/smartisanos/smengine/RectNode$OShapeProperty;

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/smartisanos/smengine/RectNode;->mInnerRectNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/RectNode;->setImageName(Ljava/lang/String;)V

    .line 421
    iget-object v0, p0, Lcom/smartisanos/smengine/RectNode;->mOuterRectNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/RectNode;->setImageName(Ljava/lang/String;)V

    .line 423
    :cond_0
    return-void
.end method

.method public setShowInnerRect(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 387
    iget-object v0, p0, Lcom/smartisanos/smengine/RectNode;->mOShapeProperty:Lcom/smartisanos/smengine/RectNode$OShapeProperty;

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/smartisanos/smengine/RectNode;->mOShapeProperty:Lcom/smartisanos/smengine/RectNode$OShapeProperty;

    iput-boolean p1, v0, Lcom/smartisanos/smengine/RectNode$OShapeProperty;->mIsShowInnerRect:Z

    .line 390
    :cond_0
    return-void
.end method

.method public setUV([F)V
    .locals 3
    .param p1, "uvArray"    # [F

    .prologue
    const/4 v2, 0x0

    .line 452
    invoke-virtual {p0}, Lcom/smartisanos/smengine/RectNode;->getMesh()Lcom/smartisanos/smengine/Mesh;

    move-result-object v0

    .line 453
    .local v0, "mesh":Lcom/smartisanos/smengine/Mesh;
    if-eqz v0, :cond_0

    .line 454
    invoke-virtual {v0}, Lcom/smartisanos/smengine/Mesh;->clone()Lcom/smartisanos/smengine/Mesh;

    move-result-object v1

    .line 455
    .local v1, "newMesh":Lcom/smartisanos/smengine/Mesh;
    invoke-virtual {v1, v2, p1}, Lcom/smartisanos/smengine/Mesh;->setTexVertexArray(I[F)V

    .line 456
    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/Mesh;->setIsInMeshManager(Z)V

    .line 457
    invoke-virtual {p0, v1}, Lcom/smartisanos/smengine/RectNode;->setMesh(Lcom/smartisanos/smengine/Mesh;)V

    .line 459
    .end local v1    # "newMesh":Lcom/smartisanos/smengine/Mesh;
    :cond_0
    return-void
.end method
