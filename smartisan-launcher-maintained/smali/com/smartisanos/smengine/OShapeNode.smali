.class public Lcom/smartisanos/smengine/OShapeNode;
.super Lcom/smartisanos/smengine/SceneNode;
.source "OShapeNode.java"


.field private mInnerHeight:F

.field private mInnerHeightRatio:F

.field private mInnerMesh:Lcom/smartisanos/smengine/Mesh;

.field private mInnerWidth:F

.field private mInnerWidthRatio:F

.field private mInnerZ:F

.field private mIsDrawInnerMesh:Z

.field private mOuterHeight:F

.field private mOuterMesh:Lcom/smartisanos/smengine/Mesh;

.field private mOuterWidth:F

.field private mOuterZ:F


.method public constructor <init>(Ljava/lang/String;FFFFFF)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "innerWidth"    # F
    .param p3, "innerHeight"    # F
    .param p4, "outerWidth"    # F
    .param p5, "outerHeight"    # F
    .param p6, "innerZ"    # F
    .param p7, "outerZ"    # F

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/SceneNode;-><init>(Ljava/lang/String;)V

    .line 21
    iput p2, p0, Lcom/smartisanos/smengine/OShapeNode;->mInnerWidth:F

    .line 22
    iput p3, p0, Lcom/smartisanos/smengine/OShapeNode;->mInnerHeight:F

    .line 23
    iput p4, p0, Lcom/smartisanos/smengine/OShapeNode;->mOuterWidth:F

    .line 24
    iput p5, p0, Lcom/smartisanos/smengine/OShapeNode;->mOuterHeight:F

    .line 25
    iput p6, p0, Lcom/smartisanos/smengine/OShapeNode;->mInnerZ:F

    .line 26
    iput p7, p0, Lcom/smartisanos/smengine/OShapeNode;->mOuterZ:F

    .line 27
    return-void
.end method

.method private createMesh()V
    .locals 22

    .prologue
    .line 31
    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/OShapeNode;->mInnerWidth:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/OShapeNode;->mOuterWidth:F

    move/from16 v20, v0

    div-float v9, v19, v20

    .line 32
    .local v9, "innerWidthRatio":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/OShapeNode;->mInnerHeight:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/OShapeNode;->mOuterHeight:F

    move/from16 v20, v0

    div-float v3, v19, v20

    .line 33
    .local v3, "innerHeightRatio":F
    move-object/from16 v0, p0

    iput v9, v0, Lcom/smartisanos/smengine/OShapeNode;->mInnerWidthRatio:F

    .line 34
    move-object/from16 v0, p0

    iput v3, v0, Lcom/smartisanos/smengine/OShapeNode;->mInnerHeightRatio:F

    .line 35
    const/16 v19, 0xc

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v17, v0

    fill-array-data v17, :array_0

    .line 41
    .local v17, "outerPoints":[F
    const/16 v19, 0xc

    move/from16 v0, v19

    new-array v7, v0, [F

    const/16 v19, 0x0

    neg-float v0, v9

    move/from16 v20, v0

    aput v20, v7, v19

    const/16 v19, 0x1

    neg-float v0, v3

    move/from16 v20, v0

    aput v20, v7, v19

    const/16 v19, 0x2

    const/high16 v20, 0x3f800000    # 1.0f

    aput v20, v7, v19

    const/16 v19, 0x3

    aput v9, v7, v19

    const/16 v19, 0x4

    neg-float v0, v3

    move/from16 v20, v0

    aput v20, v7, v19

    const/16 v19, 0x5

    const/high16 v20, 0x3f800000    # 1.0f

    aput v20, v7, v19

    const/16 v19, 0x6

    aput v9, v7, v19

    const/16 v19, 0x7

    aput v3, v7, v19

    const/16 v19, 0x8

    const/high16 v20, 0x3f800000    # 1.0f

    aput v20, v7, v19

    const/16 v19, 0x9

    neg-float v0, v9

    move/from16 v20, v0

    aput v20, v7, v19

    const/16 v19, 0xa

    aput v3, v7, v19

    const/16 v19, 0xb

    const/high16 v20, 0x3f800000    # 1.0f

    aput v20, v7, v19

    .line 47
    .local v7, "innerPoints":[F
    const/16 v19, 0x8

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v18, v0

    fill-array-data v18, :array_1

    .line 53
    .local v18, "outerTexPoints":[F
    const/16 v19, 0x8

    move/from16 v0, v19

    new-array v8, v0, [F

    const/16 v19, 0x0

    const/high16 v20, 0x3f800000    # 1.0f

    sub-float v20, v20, v9

    const/high16 v21, 0x40000000    # 2.0f

    div-float v20, v20, v21

    aput v20, v8, v19

    const/16 v19, 0x1

    const/high16 v20, 0x3f800000    # 1.0f

    sub-float v20, v20, v3

    const/high16 v21, 0x40000000    # 2.0f

    div-float v20, v20, v21

    aput v20, v8, v19

    const/16 v19, 0x2

    const/high16 v20, 0x3f800000    # 1.0f

    add-float v20, v20, v9

    const/high16 v21, 0x40000000    # 2.0f

    div-float v20, v20, v21

    aput v20, v8, v19

    const/16 v19, 0x3

    const/high16 v20, 0x3f800000    # 1.0f

    sub-float v20, v20, v3

    const/high16 v21, 0x40000000    # 2.0f

    div-float v20, v20, v21

    aput v20, v8, v19

    const/16 v19, 0x4

    const/high16 v20, 0x3f800000    # 1.0f

    add-float v20, v20, v9

    const/high16 v21, 0x40000000    # 2.0f

    div-float v20, v20, v21

    aput v20, v8, v19

    const/16 v19, 0x5

    const/high16 v20, 0x3f800000    # 1.0f

    add-float v20, v20, v3

    const/high16 v21, 0x40000000    # 2.0f

    div-float v20, v20, v21

    aput v20, v8, v19

    const/16 v19, 0x6

    const/high16 v20, 0x3f800000    # 1.0f

    sub-float v20, v20, v9

    const/high16 v21, 0x40000000    # 2.0f

    div-float v20, v20, v21

    aput v20, v8, v19

    const/16 v19, 0x7

    const/high16 v20, 0x3f800000    # 1.0f

    add-float v20, v20, v3

    const/high16 v21, 0x40000000    # 2.0f

    div-float v20, v20, v21

    aput v20, v8, v19

    .line 59
    .local v8, "innerTexPoints":[F
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v19, v0

    array-length v0, v7

    move/from16 v20, v0

    add-int v19, v19, v20

    move/from16 v0, v19

    new-array v13, v0, [F

    .line 60
    .local v13, "opoints":[F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v1, v0, :cond_0

    .line 61
    aget v19, v17, v1

    aput v19, v13, v1

    .line 60
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 63
    :cond_0
    move-object/from16 v0, v17

    array-length v12, v0

    .line 64
    .local v12, "k":I
    const/4 v1, 0x0

    :goto_1
    array-length v0, v7

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v1, v0, :cond_1

    .line 65
    aget v19, v7, v1

    aput v19, v13, v12

    .line 66
    add-int/lit8 v12, v12, 0x1

    .line 64
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 68
    :cond_1
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    array-length v0, v8

    move/from16 v20, v0

    add-int v19, v19, v20

    move/from16 v0, v19

    new-array v14, v0, [F

    .line 69
    .local v14, "otexPoints":[F
    const/4 v1, 0x0

    :goto_2
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v1, v0, :cond_2

    .line 70
    aget v19, v18, v1

    aput v19, v14, v1

    .line 69
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 72
    :cond_2
    move-object/from16 v0, v18

    array-length v12, v0

    .line 73
    const/4 v1, 0x0

    :goto_3
    array-length v0, v8

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v1, v0, :cond_3

    .line 74
    aget v19, v8, v1

    aput v19, v14, v12

    .line 75
    add-int/lit8 v12, v12, 0x1

    .line 73
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 77
    :cond_3
    const/16 v19, 0x18

    move/from16 v0, v19

    new-array v15, v0, [S

    fill-array-data v15, :array_2

    .line 87
    .local v15, "outerFace":[S
    const/16 v19, 0x6

    move/from16 v0, v19

    new-array v2, v0, [S

    fill-array-data v2, :array_3

    .line 91
    .local v2, "innerFace":[S
    new-instance v10, Ljava/lang/Float;

    invoke-direct {v10, v9}, Ljava/lang/Float;-><init>(F)V

    .line 92
    .local v10, "innerWidthRatioF":Ljava/lang/Float;
    new-instance v4, Ljava/lang/Float;

    invoke-direct {v4, v3}, Ljava/lang/Float;-><init>(F)V

    .line 93
    .local v4, "innerHeightRatioF":Ljava/lang/Float;
    const/16 v19, 0x2

    move/from16 v0, v19

    invoke-static {v10, v0}, Lcom/smartisanos/smengine/util/StringUtil;->floatToStringWithFactorLength(Ljava/lang/Float;I)Ljava/lang/String;

    move-result-object v11

    .line 94
    .local v11, "innerWidthStr":Ljava/lang/String;
    const/16 v19, 0x2

    move/from16 v0, v19

    invoke-static {v4, v0}, Lcom/smartisanos/smengine/util/StringUtil;->floatToStringWithFactorLength(Ljava/lang/Float;I)Ljava/lang/String;

    move-result-object v5

    .line 95
    .local v5, "innerHeightStr":Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "mesh.oshape.outer.normalize.texture"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 96
    .local v16, "outerKey":Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "mesh.oshape.inner.normalize.texture"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 98
    .local v6, "innerKey":Ljava/lang/String;
    return-void

    .line 35
    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 47
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

    .line 77
    :array_2
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

    .line 87
    :array_3
    .array-data 2
        0x4s
        0x6s
        0x7s
        0x4s
        0x5s
        0x6s
    .end array-data
.end method
