.class public Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;
.super Lcom/smartisanos/smengine/SceneNode;
.source "PageScrollShadowLouver.java"


.field private mDrawAnimIndex:[I

.field private mDrawTimes:I

.field private mPosOffsetList:[Lcom/smartisanos/smengine/math/Vector3f;

.field private mScale:F


.method public constructor <init>(Ljava/lang/String;IF)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "drawTimes"    # I
    .param p3, "scale"    # F

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/SceneNode;-><init>(Ljava/lang/String;)V

    .line 23
    new-array v0, p2, [Lcom/smartisanos/smengine/math/Vector3f;

    iput-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;->mPosOffsetList:[Lcom/smartisanos/smengine/math/Vector3f;

    .line 24
    new-array v0, p2, [I

    iput-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;->mDrawAnimIndex:[I

    .line 25
    iput p2, p0, Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;->mDrawTimes:I

    .line 26
    iput p3, p0, Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;->mScale:F

    .line 27
    return-void
.end method

.method public static createDU(Ljava/lang/String;FFFFIF)Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;
    .locals 7
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "w"    # F
    .param p2, "h"    # F
    .param p3, "localX"    # F
    .param p4, "localY"    # F
    .param p5, "sampleCount"    # I
    .param p6, "offsetY"    # F

    .prologue
    const/4 v6, 0x1

    .line 50
    sget v4, Lcom/smartisanos/launcher/data/Constants;->mainCameraZ:I

    int-to-float v4, v4

    add-float/2addr v4, p2

    sget v5, Lcom/smartisanos/launcher/data/Constants;->mainCameraZ:I

    int-to-float v5, v5

    div-float v3, v4, v5

    .line 51
    .local v3, "scale":F
    new-instance v2, Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;

    invoke-direct {v2, p0, v6, v3}, Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;-><init>(Ljava/lang/String;IF)V

    .line 52
    .local v2, "pageScrollShadow":Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;
    invoke-static/range {p1 .. p6}, Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;->createMeshDU(FFFFIF)Lcom/smartisanos/smengine/Mesh;

    move-result-object v1

    .line 53
    .local v1, "mesh":Lcom/smartisanos/smengine/Mesh;
    invoke-virtual {v2, v1}, Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;->setMesh(Lcom/smartisanos/smengine/Mesh;)V

    .line 54
    const-string v4, "DrawMultiTimesMaterial"

    invoke-static {v4}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v0

    .line 55
    .local v0, "m":Lcom/smartisanos/smengine/mymaterial/Material;
    invoke-virtual {v2, v0}, Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 56
    invoke-virtual {v2, v6}, Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;->setRenderQueue(I)V

    .line 57
    invoke-virtual {v2}, Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/smartisanos/smengine/RenderState;->setIsEnableDepthTest(Z)V

    .line 58
    invoke-virtual {v2}, Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/smartisanos/smengine/RenderState;->setDepthTestFunc(I)V

    .line 59
    invoke-virtual {v2}, Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/smartisanos/smengine/RenderState;->setIsUseVBO(Z)V

    .line 60
    invoke-virtual {v2}, Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/smartisanos/smengine/RenderState;->setIsEnableBlend(Z)V

    .line 61
    invoke-virtual {v2}, Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/smartisanos/smengine/RenderState;->setIsCullFaceEnable(Z)V

    .line 62
    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;->setLayer(I)V

    .line 63
    const-string v4, "page_scroll_louver_h.png"

    invoke-static {v4}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;->setImageName(Ljava/lang/String;)V

    .line 64
    return-object v2
.end method

.method private static createMeshDU(FFFFIF)Lcom/smartisanos/smengine/Mesh;
    .locals 23
    .param p0, "w"    # F
    .param p1, "h"    # F
    .param p2, "localX"    # F
    .param p3, "localY"    # F
    .param p4, "sampleCount"    # I
    .param p5, "offsetY"    # F

    .prologue
    .line 68
    sget v2, Lcom/smartisanos/launcher/data/Constants;->mainCameraZ:I

    int-to-float v2, v2

    add-float v2, v2, p1

    sget v3, Lcom/smartisanos/launcher/data/Constants;->mainCameraZ:I

    int-to-float v3, v3

    div-float v20, v2, v3

    .line 69
    .local v20, "scale":F
    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v2, v2, v20

    mul-float v14, v2, p5

    .line 70
    .local v14, "offsetYscale":F
    const v2, 0x3e3851ec    # 0.18f

    mul-float v18, p1, v2

    .line 71
    .local v18, "sX":F
    const v2, 0x3e3851ec    # 0.18f

    mul-float v19, p1, v2

    .line 72
    .local v19, "sY":F
    move/from16 v17, p4

    .line 73
    .local v17, "rectNum":I
    mul-int/lit8 v2, v17, 0x6

    mul-int/lit8 v2, v2, 0x3

    new-array v15, v2, [F

    .line 74
    .local v15, "points":[F
    mul-int/lit8 v2, v17, 0x6

    mul-int/lit8 v2, v2, 0x2

    new-array v0, v2, [F

    move-object/from16 v21, v0

    .line 75
    .local v21, "texPoints":[F
    mul-int/lit8 v2, v17, 0x4

    mul-int/lit8 v2, v2, 0x3

    new-array v8, v2, [S

    .line 77
    .local v8, "faces":[S
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    move/from16 v0, v17

    if-ge v11, v0, :cond_0

    .line 78
    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    int-to-double v6, v11

    mul-double/2addr v2, v6

    mul-int/lit8 v6, p4, 0x3

    int-to-double v6, v6

    div-double/2addr v2, v6

    double-to-float v4, v2

    .local v4, "angle":F
    move/from16 v2, p0

    move/from16 v3, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p5

    .line 79
    invoke-static/range {v2 .. v7}, Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;->getPointsDU(FFFFFF)[Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v16

    .line 80
    .local v16, "ps":[Lcom/smartisanos/smengine/math/Vector3f;
    mul-int/lit8 v12, v11, 0x12

    .line 81
    .local v12, "index":I
    add-int/lit8 v2, v12, 0x0

    const/4 v3, 0x0

    aget-object v3, v16, v3

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    sub-float v3, v3, v18

    mul-float v3, v3, v20

    aput v3, v15, v2

    .line 82
    add-int/lit8 v2, v12, 0x1

    const/4 v3, 0x0

    aget-object v3, v16, v3

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    sub-float v3, v3, v19

    mul-float v3, v3, v20

    add-float/2addr v3, v14

    aput v3, v15, v2

    .line 83
    add-int/lit8 v2, v12, 0x2

    move/from16 v0, p1

    neg-float v3, v0

    aput v3, v15, v2

    .line 84
    add-int/lit8 v2, v12, 0x3

    const/4 v3, 0x1

    aget-object v3, v16, v3

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    sub-float v3, v3, v18

    mul-float v3, v3, v20

    aput v3, v15, v2

    .line 85
    add-int/lit8 v2, v12, 0x4

    const/4 v3, 0x1

    aget-object v3, v16, v3

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    mul-float v3, v3, v20

    add-float/2addr v3, v14

    aput v3, v15, v2

    .line 86
    add-int/lit8 v2, v12, 0x5

    move/from16 v0, p1

    neg-float v3, v0

    aput v3, v15, v2

    .line 87
    add-int/lit8 v2, v12, 0x6

    const/4 v3, 0x2

    aget-object v3, v16, v3

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    sub-float v3, v3, v18

    mul-float v3, v3, v20

    aput v3, v15, v2

    .line 88
    add-int/lit8 v2, v12, 0x7

    const/4 v3, 0x2

    aget-object v3, v16, v3

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    add-float v3, v3, v19

    mul-float v3, v3, v20

    add-float/2addr v3, v14

    aput v3, v15, v2

    .line 89
    add-int/lit8 v2, v12, 0x8

    move/from16 v0, p1

    neg-float v3, v0

    aput v3, v15, v2

    .line 90
    add-int/lit8 v2, v12, 0x9

    const/4 v3, 0x3

    aget-object v3, v16, v3

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    add-float v3, v3, v18

    mul-float v3, v3, v20

    aput v3, v15, v2

    .line 91
    add-int/lit8 v2, v12, 0xa

    const/4 v3, 0x3

    aget-object v3, v16, v3

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    sub-float v3, v3, v19

    mul-float v3, v3, v20

    add-float/2addr v3, v14

    aput v3, v15, v2

    .line 92
    add-int/lit8 v2, v12, 0xb

    move/from16 v0, p1

    neg-float v3, v0

    aput v3, v15, v2

    .line 93
    add-int/lit8 v2, v12, 0xc

    const/4 v3, 0x4

    aget-object v3, v16, v3

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    add-float v3, v3, v18

    mul-float v3, v3, v20

    aput v3, v15, v2

    .line 94
    add-int/lit8 v2, v12, 0xd

    const/4 v3, 0x4

    aget-object v3, v16, v3

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    mul-float v3, v3, v20

    add-float/2addr v3, v14

    aput v3, v15, v2

    .line 95
    add-int/lit8 v2, v12, 0xe

    move/from16 v0, p1

    neg-float v3, v0

    aput v3, v15, v2

    .line 96
    add-int/lit8 v2, v12, 0xf

    const/4 v3, 0x5

    aget-object v3, v16, v3

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    add-float v3, v3, v18

    mul-float v3, v3, v20

    aput v3, v15, v2

    .line 97
    add-int/lit8 v2, v12, 0x10

    const/4 v3, 0x5

    aget-object v3, v16, v3

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    add-float v3, v3, v19

    mul-float v3, v3, v20

    add-float/2addr v3, v14

    aput v3, v15, v2

    .line 98
    add-int/lit8 v2, v12, 0x11

    move/from16 v0, p1

    neg-float v3, v0

    aput v3, v15, v2

    .line 100
    mul-int/lit8 v12, v11, 0xc

    .line 101
    const/4 v2, 0x1

    aget-object v2, v16, v2

    iget v2, v2, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    const/4 v3, 0x0

    aget-object v3, v16, v3

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    sub-float/2addr v2, v3

    add-float v2, v2, v19

    const/4 v3, 0x2

    aget-object v3, v16, v3

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    const/4 v6, 0x0

    aget-object v6, v16, v6

    iget v6, v6, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    sub-float/2addr v3, v6

    const/high16 v6, 0x40000000    # 2.0f

    mul-float v6, v6, v19

    add-float/2addr v3, v6

    div-float v22, v2, v3

    .line 102
    .local v22, "v":F
    add-int/lit8 v2, v12, 0x0

    const/4 v3, 0x0

    aput v3, v21, v2

    .line 103
    add-int/lit8 v2, v12, 0x1

    const/4 v3, 0x0

    aput v3, v21, v2

    .line 104
    add-int/lit8 v2, v12, 0x2

    const/4 v3, 0x0

    aput v3, v21, v2

    .line 105
    add-int/lit8 v2, v12, 0x3

    aput v22, v21, v2

    .line 106
    add-int/lit8 v2, v12, 0x4

    const/4 v3, 0x0

    aput v3, v21, v2

    .line 107
    add-int/lit8 v2, v12, 0x5

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v21, v2

    .line 108
    add-int/lit8 v2, v12, 0x6

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v21, v2

    .line 109
    add-int/lit8 v2, v12, 0x7

    const/4 v3, 0x0

    aput v3, v21, v2

    .line 110
    add-int/lit8 v2, v12, 0x8

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v21, v2

    .line 111
    add-int/lit8 v2, v12, 0x9

    aput v22, v21, v2

    .line 112
    add-int/lit8 v2, v12, 0xa

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v21, v2

    .line 113
    add-int/lit8 v2, v12, 0xb

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v21, v2

    .line 114
    mul-int/lit8 v12, v11, 0xc

    .line 115
    mul-int/lit8 v13, v11, 0x6

    .line 116
    .local v13, "m":I
    add-int/lit8 v2, v12, 0x0

    add-int/lit8 v3, v13, 0x0

    int-to-short v3, v3

    aput-short v3, v8, v2

    .line 117
    add-int/lit8 v2, v12, 0x1

    add-int/lit8 v3, v13, 0x3

    int-to-short v3, v3

    aput-short v3, v8, v2

    .line 118
    add-int/lit8 v2, v12, 0x2

    add-int/lit8 v3, v13, 0x4

    int-to-short v3, v3

    aput-short v3, v8, v2

    .line 119
    add-int/lit8 v2, v12, 0x3

    add-int/lit8 v3, v13, 0x4

    int-to-short v3, v3

    aput-short v3, v8, v2

    .line 120
    add-int/lit8 v2, v12, 0x4

    add-int/lit8 v3, v13, 0x1

    int-to-short v3, v3

    aput-short v3, v8, v2

    .line 121
    add-int/lit8 v2, v12, 0x5

    add-int/lit8 v3, v13, 0x0

    int-to-short v3, v3

    aput-short v3, v8, v2

    .line 122
    add-int/lit8 v2, v12, 0x6

    add-int/lit8 v3, v13, 0x1

    int-to-short v3, v3

    aput-short v3, v8, v2

    .line 123
    add-int/lit8 v2, v12, 0x7

    add-int/lit8 v3, v13, 0x4

    int-to-short v3, v3

    aput-short v3, v8, v2

    .line 124
    add-int/lit8 v2, v12, 0x8

    add-int/lit8 v3, v13, 0x5

    int-to-short v3, v3

    aput-short v3, v8, v2

    .line 125
    add-int/lit8 v2, v12, 0x9

    add-int/lit8 v3, v13, 0x5

    int-to-short v3, v3

    aput-short v3, v8, v2

    .line 126
    add-int/lit8 v2, v12, 0xa

    add-int/lit8 v3, v13, 0x2

    int-to-short v3, v3

    aput-short v3, v8, v2

    .line 127
    add-int/lit8 v2, v12, 0xb

    add-int/lit8 v3, v13, 0x1

    int-to-short v3, v3

    aput-short v3, v8, v2

    .line 77
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 130
    .end local v4    # "angle":F
    .end local v12    # "index":I
    .end local v13    # "m":I
    .end local v16    # "ps":[Lcom/smartisanos/smengine/math/Vector3f;
    .end local v22    # "v":F
    :cond_0
    new-instance v5, Lcom/smartisanos/smengine/Mesh;

    invoke-direct {v5}, Lcom/smartisanos/smengine/Mesh;-><init>()V

    .line 131
    .local v5, "mesh":Lcom/smartisanos/smengine/Mesh;
    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v6, v15

    move-object/from16 v7, v21

    invoke-virtual/range {v5 .. v10}, Lcom/smartisanos/smengine/Mesh;->create([F[F[S[FZ)V

    .line 132
    return-object v5
.end method

.method private static createMeshRL(FFIFFF)Lcom/smartisanos/smengine/Mesh;
    .locals 23
    .param p0, "w"    # F
    .param p1, "h"    # F
    .param p2, "sampleCount"    # I
    .param p3, "localX"    # F
    .param p4, "localY"    # F
    .param p5, "offsetY"    # F

    .prologue
    .line 226
    sget v2, Lcom/smartisanos/launcher/data/Constants;->mainCameraZ:I

    int-to-float v2, v2

    add-float v2, v2, p0

    sget v3, Lcom/smartisanos/launcher/data/Constants;->mainCameraZ:I

    int-to-float v3, v3

    div-float v20, v2, v3

    .line 227
    .local v20, "scale":F
    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v2, v2, v20

    mul-float v14, v2, p5

    .line 228
    .local v14, "offsetYscale":F
    const v2, 0x3e3851ec    # 0.18f

    mul-float v18, p0, v2

    .line 229
    .local v18, "sX":F
    const v2, 0x3e3851ec    # 0.18f

    mul-float v19, p0, v2

    .line 230
    .local v19, "sY":F
    move/from16 v17, p2

    .line 231
    .local v17, "rectNum":I
    mul-int/lit8 v2, v17, 0x6

    mul-int/lit8 v2, v2, 0x3

    new-array v15, v2, [F

    .line 232
    .local v15, "points":[F
    mul-int/lit8 v2, v17, 0x6

    mul-int/lit8 v2, v2, 0x2

    new-array v0, v2, [F

    move-object/from16 v21, v0

    .line 233
    .local v21, "texPoints":[F
    mul-int/lit8 v2, v17, 0x4

    mul-int/lit8 v2, v2, 0x3

    new-array v8, v2, [S

    .line 235
    .local v8, "faces":[S
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    move/from16 v0, v17

    if-ge v11, v0, :cond_0

    .line 236
    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    int-to-double v6, v11

    mul-double/2addr v2, v6

    mul-int/lit8 v6, p2, 0x3

    int-to-double v6, v6

    div-double/2addr v2, v6

    double-to-float v4, v2

    .local v4, "angle":F
    move/from16 v2, p0

    move/from16 v3, p1

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    .line 237
    invoke-static/range {v2 .. v7}, Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;->getPointsRL(FFFFFF)[Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v16

    .line 238
    .local v16, "ps":[Lcom/smartisanos/smengine/math/Vector3f;
    mul-int/lit8 v12, v11, 0x12

    .line 239
    .local v12, "index":I
    add-int/lit8 v2, v12, 0x0

    const/4 v3, 0x0

    aget-object v3, v16, v3

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    sub-float v3, v3, v18

    mul-float v3, v3, v20

    aput v3, v15, v2

    .line 240
    add-int/lit8 v2, v12, 0x1

    const/4 v3, 0x0

    aget-object v3, v16, v3

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    sub-float v3, v3, v19

    mul-float v3, v3, v20

    add-float/2addr v3, v14

    aput v3, v15, v2

    .line 241
    add-int/lit8 v2, v12, 0x2

    move/from16 v0, p0

    neg-float v3, v0

    aput v3, v15, v2

    .line 242
    add-int/lit8 v2, v12, 0x3

    const/4 v3, 0x1

    aget-object v3, v16, v3

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    mul-float v3, v3, v20

    aput v3, v15, v2

    .line 243
    add-int/lit8 v2, v12, 0x4

    const/4 v3, 0x1

    aget-object v3, v16, v3

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    sub-float v3, v3, v19

    mul-float v3, v3, v20

    add-float/2addr v3, v14

    aput v3, v15, v2

    .line 244
    add-int/lit8 v2, v12, 0x5

    move/from16 v0, p0

    neg-float v3, v0

    aput v3, v15, v2

    .line 245
    add-int/lit8 v2, v12, 0x6

    const/4 v3, 0x2

    aget-object v3, v16, v3

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    add-float v3, v3, v18

    mul-float v3, v3, v20

    aput v3, v15, v2

    .line 246
    add-int/lit8 v2, v12, 0x7

    const/4 v3, 0x2

    aget-object v3, v16, v3

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    sub-float v3, v3, v19

    mul-float v3, v3, v20

    add-float/2addr v3, v14

    aput v3, v15, v2

    .line 247
    add-int/lit8 v2, v12, 0x8

    move/from16 v0, p0

    neg-float v3, v0

    aput v3, v15, v2

    .line 248
    add-int/lit8 v2, v12, 0x9

    const/4 v3, 0x3

    aget-object v3, v16, v3

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    sub-float v3, v3, v18

    mul-float v3, v3, v20

    aput v3, v15, v2

    .line 249
    add-int/lit8 v2, v12, 0xa

    const/4 v3, 0x3

    aget-object v3, v16, v3

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    add-float v3, v3, v19

    mul-float v3, v3, v20

    add-float/2addr v3, v14

    aput v3, v15, v2

    .line 250
    add-int/lit8 v2, v12, 0xb

    move/from16 v0, p0

    neg-float v3, v0

    aput v3, v15, v2

    .line 251
    add-int/lit8 v2, v12, 0xc

    const/4 v3, 0x4

    aget-object v3, v16, v3

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    mul-float v3, v3, v20

    aput v3, v15, v2

    .line 252
    add-int/lit8 v2, v12, 0xd

    const/4 v3, 0x4

    aget-object v3, v16, v3

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    add-float v3, v3, v19

    mul-float v3, v3, v20

    add-float/2addr v3, v14

    aput v3, v15, v2

    .line 253
    add-int/lit8 v2, v12, 0xe

    move/from16 v0, p0

    neg-float v3, v0

    aput v3, v15, v2

    .line 254
    add-int/lit8 v2, v12, 0xf

    const/4 v3, 0x5

    aget-object v3, v16, v3

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    add-float v3, v3, v18

    mul-float v3, v3, v20

    aput v3, v15, v2

    .line 255
    add-int/lit8 v2, v12, 0x10

    const/4 v3, 0x5

    aget-object v3, v16, v3

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    add-float v3, v3, v19

    mul-float v3, v3, v20

    add-float/2addr v3, v14

    aput v3, v15, v2

    .line 256
    add-int/lit8 v2, v12, 0x11

    move/from16 v0, p0

    neg-float v3, v0

    aput v3, v15, v2

    .line 258
    mul-int/lit8 v12, v11, 0xc

    .line 259
    const/4 v2, 0x1

    aget-object v2, v16, v2

    iget v2, v2, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    const/4 v3, 0x0

    aget-object v3, v16, v3

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    sub-float/2addr v2, v3

    add-float v2, v2, v18

    const/4 v3, 0x2

    aget-object v3, v16, v3

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    const/4 v6, 0x0

    aget-object v6, v16, v6

    iget v6, v6, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    sub-float/2addr v3, v6

    const/high16 v6, 0x40000000    # 2.0f

    mul-float v6, v6, v18

    add-float/2addr v3, v6

    div-float v22, v2, v3

    .line 260
    .local v22, "v":F
    add-int/lit8 v2, v12, 0x0

    const/4 v3, 0x0

    aput v3, v21, v2

    .line 261
    add-int/lit8 v2, v12, 0x1

    const/4 v3, 0x0

    aput v3, v21, v2

    .line 262
    add-int/lit8 v2, v12, 0x2

    aput v22, v21, v2

    .line 263
    add-int/lit8 v2, v12, 0x3

    const/4 v3, 0x0

    aput v3, v21, v2

    .line 264
    add-int/lit8 v2, v12, 0x4

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v21, v2

    .line 265
    add-int/lit8 v2, v12, 0x5

    const/4 v3, 0x0

    aput v3, v21, v2

    .line 266
    add-int/lit8 v2, v12, 0x6

    const/4 v3, 0x0

    aput v3, v21, v2

    .line 267
    add-int/lit8 v2, v12, 0x7

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v21, v2

    .line 268
    add-int/lit8 v2, v12, 0x8

    aput v22, v21, v2

    .line 269
    add-int/lit8 v2, v12, 0x9

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v21, v2

    .line 270
    add-int/lit8 v2, v12, 0xa

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v21, v2

    .line 271
    add-int/lit8 v2, v12, 0xb

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v21, v2

    .line 272
    mul-int/lit8 v12, v11, 0xc

    .line 273
    mul-int/lit8 v13, v11, 0x6

    .line 274
    .local v13, "m":I
    add-int/lit8 v2, v12, 0x0

    add-int/lit8 v3, v13, 0x0

    int-to-short v3, v3

    aput-short v3, v8, v2

    .line 275
    add-int/lit8 v2, v12, 0x1

    add-int/lit8 v3, v13, 0x1

    int-to-short v3, v3

    aput-short v3, v8, v2

    .line 276
    add-int/lit8 v2, v12, 0x2

    add-int/lit8 v3, v13, 0x4

    int-to-short v3, v3

    aput-short v3, v8, v2

    .line 277
    add-int/lit8 v2, v12, 0x3

    add-int/lit8 v3, v13, 0x4

    int-to-short v3, v3

    aput-short v3, v8, v2

    .line 278
    add-int/lit8 v2, v12, 0x4

    add-int/lit8 v3, v13, 0x3

    int-to-short v3, v3

    aput-short v3, v8, v2

    .line 279
    add-int/lit8 v2, v12, 0x5

    add-int/lit8 v3, v13, 0x0

    int-to-short v3, v3

    aput-short v3, v8, v2

    .line 280
    add-int/lit8 v2, v12, 0x6

    add-int/lit8 v3, v13, 0x1

    int-to-short v3, v3

    aput-short v3, v8, v2

    .line 281
    add-int/lit8 v2, v12, 0x7

    add-int/lit8 v3, v13, 0x2

    int-to-short v3, v3

    aput-short v3, v8, v2

    .line 282
    add-int/lit8 v2, v12, 0x8

    add-int/lit8 v3, v13, 0x5

    int-to-short v3, v3

    aput-short v3, v8, v2

    .line 283
    add-int/lit8 v2, v12, 0x9

    add-int/lit8 v3, v13, 0x5

    int-to-short v3, v3

    aput-short v3, v8, v2

    .line 284
    add-int/lit8 v2, v12, 0xa

    add-int/lit8 v3, v13, 0x4

    int-to-short v3, v3

    aput-short v3, v8, v2

    .line 285
    add-int/lit8 v2, v12, 0xb

    add-int/lit8 v3, v13, 0x1

    int-to-short v3, v3

    aput-short v3, v8, v2

    .line 235
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 288
    .end local v4    # "angle":F
    .end local v12    # "index":I
    .end local v13    # "m":I
    .end local v16    # "ps":[Lcom/smartisanos/smengine/math/Vector3f;
    .end local v22    # "v":F
    :cond_0
    new-instance v5, Lcom/smartisanos/smengine/Mesh;

    invoke-direct {v5}, Lcom/smartisanos/smengine/Mesh;-><init>()V

    .line 289
    .local v5, "mesh":Lcom/smartisanos/smengine/Mesh;
    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v6, v15

    move-object/from16 v7, v21

    invoke-virtual/range {v5 .. v10}, Lcom/smartisanos/smengine/Mesh;->create([F[F[S[FZ)V

    .line 290
    return-object v5
.end method

.method public static createRL(Ljava/lang/String;FFFFIF)Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;
    .locals 10
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "w"    # F
    .param p2, "h"    # F
    .param p3, "localX"    # F
    .param p4, "localY"    # F
    .param p5, "sampleCount"    # I
    .param p6, "offsetY"    # F

    .prologue
    .line 208
    sget v0, Lcom/smartisanos/launcher/data/Constants;->mainCameraZ:I

    int-to-float v0, v0

    add-float/2addr v0, p1

    sget v1, Lcom/smartisanos/launcher/data/Constants;->mainCameraZ:I

    int-to-float v1, v1

    div-float v9, v0, v1

    .line 209
    .local v9, "scale":F
    new-instance v8, Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;

    const/4 v0, 0x1

    invoke-direct {v8, p0, v0, v9}, Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;-><init>(Ljava/lang/String;IF)V

    .local v8, "pageScrollShadow":Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;
    move v0, p1

    move v1, p2

    move v2, p5

    move v3, p3

    move v4, p4

    move/from16 v5, p6

    .line 210
    invoke-static/range {v0 .. v5}, Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;->createMeshRL(FFIFFF)Lcom/smartisanos/smengine/Mesh;

    move-result-object v7

    .line 211
    .local v7, "mesh":Lcom/smartisanos/smengine/Mesh;
    invoke-virtual {v8, v7}, Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;->setMesh(Lcom/smartisanos/smengine/Mesh;)V

    .line 212
    const-string v0, "DrawMultiTimesMaterial"

    invoke-static {v0}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v6

    .line 213
    .local v6, "m":Lcom/smartisanos/smengine/mymaterial/Material;
    invoke-virtual {v8, v6}, Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 214
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;->setRenderQueue(I)V

    .line 215
    invoke-virtual {v8}, Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RenderState;->setIsEnableDepthTest(Z)V

    .line 216
    invoke-virtual {v8}, Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RenderState;->setDepthTestFunc(I)V

    .line 217
    invoke-virtual {v8}, Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RenderState;->setIsUseVBO(Z)V

    .line 218
    invoke-virtual {v8}, Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RenderState;->setIsEnableBlend(Z)V

    .line 219
    invoke-virtual {v8}, Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RenderState;->setIsCullFaceEnable(Z)V

    .line 220
    const/4 v0, 0x2

    invoke-virtual {v8, v0}, Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;->setLayer(I)V

    .line 221
    const-string v0, "page_scroll_louver_v.png"

    invoke-static {v0}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;->setImageName(Ljava/lang/String;)V

    .line 222
    return-object v8
.end method

.method private static getPoint(Lcom/smartisanos/smengine/math/Vector3f;F)Lcom/smartisanos/smengine/math/Vector3f;
    .locals 9
    .param p0, "src"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p1, "offsetY"    # F

    .prologue
    .line 411
    sget v7, Lcom/smartisanos/launcher/data/Constants;->mainCameraZ:I

    int-to-float v0, v7

    .line 412
    .local v0, "cZ":F
    invoke-static {}, Lcom/smartisanos/smengine/util/TempVars;->get()Lcom/smartisanos/smengine/util/TempVars;

    move-result-object v6

    .line 413
    .local v6, "tmpVars":Lcom/smartisanos/smengine/util/TempVars;
    iget-object v3, v6, Lcom/smartisanos/smengine/util/TempVars;->vect1:Lcom/smartisanos/smengine/math/Vector3f;

    .line 414
    .local v3, "light":Lcom/smartisanos/smengine/math/Vector3f;
    const/4 v7, 0x0

    invoke-virtual {v3, v7, p1, v0}, Lcom/smartisanos/smengine/math/Vector3f;->set(FFF)Lcom/smartisanos/smengine/math/Vector3f;

    .line 415
    invoke-virtual {p0, v3}, Lcom/smartisanos/smengine/math/Vector3f;->subtract(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v7

    invoke-virtual {v7}, Lcom/smartisanos/smengine/math/Vector3f;->normalizeLocal()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v4

    .line 416
    .local v4, "lightDir":Lcom/smartisanos/smengine/math/Vector3f;
    iget v2, p0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    .line 417
    .local v2, "distanceZ":F
    neg-float v7, v2

    iget v8, v4, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    div-float v1, v7, v8

    .line 418
    .local v1, "distance":F
    invoke-virtual {v4, v1}, Lcom/smartisanos/smengine/math/Vector3f;->mult(F)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/smartisanos/smengine/math/Vector3f;->add(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v5

    .line 419
    .local v5, "result":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-virtual {v6}, Lcom/smartisanos/smengine/util/TempVars;->release()V

    .line 420
    return-object v5
.end method

.method private static getPointsDU(FFFFFF)[Lcom/smartisanos/smengine/math/Vector3f;
    .locals 38
    .param p0, "w"    # F
    .param p1, "h"    # F
    .param p2, "angle"    # F
    .param p3, "localX"    # F
    .param p4, "localY"    # F
    .param p5, "offsetY"    # F

    .prologue
    .line 136
    const/high16 v34, 0x3f000000    # 0.5f

    mul-float v34, v34, p1

    move/from16 v0, v34

    float-to-double v0, v0

    move-wide/from16 v34, v0

    const-wide v36, 0x3fe0c152382d7365L    # 0.5235987755982988

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->cos(D)D

    move-result-wide v36

    div-double v34, v34, v36

    move-wide/from16 v0, v34

    double-to-float v13, v0

    .line 137
    .local v13, "r":F
    move/from16 v0, p1

    float-to-double v0, v0

    move-wide/from16 v34, v0

    const-wide v36, 0x3fe0c152382d7365L    # 0.5235987755982988

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->tan(D)D

    move-result-wide v36

    mul-double v34, v34, v36

    const-wide/high16 v36, 0x4000000000000000L    # 2.0

    div-double v34, v34, v36

    move-wide/from16 v0, v34

    double-to-float v4, v0

    .line 138
    .local v4, "c":F
    const-wide v34, 0x400921fb54442d18L    # Math.PI

    move/from16 v0, p2

    float-to-double v0, v0

    move-wide/from16 v36, v0

    sub-double v34, v34, v36

    move-wide/from16 v0, v34

    double-to-float v5, v0

    .line 139
    .local v5, "newAngle":F
    move/from16 v0, p0

    neg-float v0, v0

    move/from16 v34, v0

    const/high16 v35, 0x40000000    # 2.0f

    div-float v34, v34, v35

    add-float v16, v34, p3

    .line 140
    .local v16, "xa0":F
    float-to-double v0, v13

    move-wide/from16 v34, v0

    float-to-double v0, v5

    move-wide/from16 v36, v0

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->sin(D)D

    move-result-wide v36

    mul-double v34, v34, v36

    move-wide/from16 v0, v34

    double-to-float v0, v0

    move/from16 v34, v0

    add-float v34, v34, p4

    add-float v22, v34, p5

    .line 141
    .local v22, "ya0":F
    float-to-double v0, v13

    move-wide/from16 v34, v0

    float-to-double v0, v5

    move-wide/from16 v36, v0

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->cos(D)D

    move-result-wide v36

    mul-double v34, v34, v36

    float-to-double v0, v4

    move-wide/from16 v36, v0

    sub-double v34, v34, v36

    move-wide/from16 v0, v34

    double-to-float v0, v0

    move/from16 v28, v0

    .line 143
    .local v28, "za0":F
    const-wide v34, 0x3ff0c152382d7365L    # 1.0471975511965976

    move/from16 v0, p2

    float-to-double v0, v0

    move-wide/from16 v36, v0

    sub-double v34, v34, v36

    move-wide/from16 v0, v34

    double-to-float v5, v0

    .line 144
    move/from16 v0, p0

    neg-float v0, v0

    move/from16 v34, v0

    const/high16 v35, 0x40000000    # 2.0f

    div-float v34, v34, v35

    add-float v17, v34, p3

    .line 145
    .local v17, "xa1":F
    float-to-double v0, v13

    move-wide/from16 v34, v0

    float-to-double v0, v5

    move-wide/from16 v36, v0

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->sin(D)D

    move-result-wide v36

    mul-double v34, v34, v36

    move-wide/from16 v0, v34

    double-to-float v0, v0

    move/from16 v34, v0

    add-float v34, v34, p4

    add-float v23, v34, p5

    .line 146
    .local v23, "ya1":F
    float-to-double v0, v13

    move-wide/from16 v34, v0

    float-to-double v0, v5

    move-wide/from16 v36, v0

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->cos(D)D

    move-result-wide v36

    mul-double v34, v34, v36

    float-to-double v0, v4

    move-wide/from16 v36, v0

    sub-double v34, v34, v36

    move-wide/from16 v0, v34

    double-to-float v0, v0

    move/from16 v29, v0

    .line 148
    .local v29, "za1":F
    const-wide v34, -0x400f3eadc7d28c9bL    # -1.0471975511965976

    move/from16 v0, p2

    float-to-double v0, v0

    move-wide/from16 v36, v0

    sub-double v34, v34, v36

    move-wide/from16 v0, v34

    double-to-float v5, v0

    .line 149
    move/from16 v0, p0

    neg-float v0, v0

    move/from16 v34, v0

    const/high16 v35, 0x40000000    # 2.0f

    div-float v34, v34, v35

    add-float v18, v34, p3

    .line 150
    .local v18, "xa2":F
    float-to-double v0, v13

    move-wide/from16 v34, v0

    float-to-double v0, v5

    move-wide/from16 v36, v0

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->sin(D)D

    move-result-wide v36

    mul-double v34, v34, v36

    move-wide/from16 v0, v34

    double-to-float v0, v0

    move/from16 v34, v0

    add-float v34, v34, p4

    add-float v24, v34, p5

    .line 151
    .local v24, "ya2":F
    float-to-double v0, v13

    move-wide/from16 v34, v0

    float-to-double v0, v5

    move-wide/from16 v36, v0

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->cos(D)D

    move-result-wide v36

    mul-double v34, v34, v36

    float-to-double v0, v4

    move-wide/from16 v36, v0

    sub-double v34, v34, v36

    move-wide/from16 v0, v34

    double-to-float v0, v0

    move/from16 v30, v0

    .line 153
    .local v30, "za2":F
    const/16 v34, 0x6

    move/from16 v0, v34

    new-array v14, v0, [Lcom/smartisanos/smengine/math/Vector3f;

    .line 155
    .local v14, "result":[Lcom/smartisanos/smengine/math/Vector3f;
    new-instance v34, Lcom/smartisanos/smengine/math/Vector3f;

    move-object/from16 v0, v34

    move/from16 v1, v16

    move/from16 v2, v22

    move/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    move-object/from16 v0, v34

    move/from16 v1, p5

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;->getPoint(Lcom/smartisanos/smengine/math/Vector3f;F)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v7

    .line 156
    .local v7, "pa0":Lcom/smartisanos/smengine/math/Vector3f;
    new-instance v34, Lcom/smartisanos/smengine/math/Vector3f;

    move-object/from16 v0, v34

    move/from16 v1, v17

    move/from16 v2, v23

    move/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    move-object/from16 v0, v34

    move/from16 v1, p5

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;->getPoint(Lcom/smartisanos/smengine/math/Vector3f;F)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v8

    .line 157
    .local v8, "pa1":Lcom/smartisanos/smengine/math/Vector3f;
    new-instance v34, Lcom/smartisanos/smengine/math/Vector3f;

    move-object/from16 v0, v34

    move/from16 v1, v18

    move/from16 v2, v24

    move/from16 v3, v30

    invoke-direct {v0, v1, v2, v3}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    move-object/from16 v0, v34

    move/from16 v1, p5

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;->getPoint(Lcom/smartisanos/smengine/math/Vector3f;F)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v9

    .line 158
    .local v9, "pa2":Lcom/smartisanos/smengine/math/Vector3f;
    const/16 v34, 0x0

    invoke-static {v7, v8, v9}, Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;->minY(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v35

    aput-object v35, v14, v34

    .line 159
    const/16 v34, 0x2

    invoke-static {v7, v8, v9}, Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;->maxY(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v35

    aput-object v35, v14, v34

    .line 160
    const/16 v34, 0x0

    aget-object v34, v14, v34

    move-object/from16 v0, v34

    if-eq v7, v0, :cond_2

    const/16 v34, 0x2

    aget-object v34, v14, v34

    move-object/from16 v0, v34

    if-eq v7, v0, :cond_2

    .line 161
    const/16 v34, 0x1

    aput-object v7, v14, v34

    .line 167
    :goto_0
    const/16 v34, 0x1

    aget-object v34, v14, v34

    move-object/from16 v0, v34

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v34, v0

    const/16 v35, 0x0

    aget-object v35, v14, v35

    move-object/from16 v0, v35

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v35, v0

    sub-float v34, v34, v35

    const/16 v35, 0x2

    aget-object v35, v14, v35

    move-object/from16 v0, v35

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v35, v0

    const/16 v36, 0x0

    aget-object v36, v14, v36

    move-object/from16 v0, v36

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v36, v0

    sub-float v35, v35, v36

    div-float v6, v34, v35

    .line 168
    .local v6, "p":F
    const/16 v34, 0x0

    aget-object v34, v14, v34

    move-object/from16 v0, v34

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v34, v0

    const/16 v35, 0x2

    aget-object v35, v14, v35

    move-object/from16 v0, v35

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v35, v0

    const/16 v36, 0x0

    aget-object v36, v14, v36

    move-object/from16 v0, v36

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v36, v0

    sub-float v35, v35, v36

    mul-float v35, v35, v6

    add-float v15, v34, v35

    .line 169
    .local v15, "x":F
    const/16 v34, 0x1

    aget-object v34, v14, v34

    move-object/from16 v0, v34

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v34, v0

    cmpl-float v34, v34, v15

    if-lez v34, :cond_0

    .line 170
    const/16 v34, 0x1

    aget-object v34, v14, v34

    move-object/from16 v0, v34

    iput v15, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 172
    :cond_0
    const-wide v34, 0x400921fb54442d18L    # Math.PI

    move/from16 v0, p2

    float-to-double v0, v0

    move-wide/from16 v36, v0

    sub-double v34, v34, v36

    move-wide/from16 v0, v34

    double-to-float v5, v0

    .line 173
    const/high16 v34, 0x40000000    # 2.0f

    div-float v34, p0, v34

    add-float v19, v34, p3

    .line 174
    .local v19, "xb0":F
    float-to-double v0, v13

    move-wide/from16 v34, v0

    float-to-double v0, v5

    move-wide/from16 v36, v0

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->sin(D)D

    move-result-wide v36

    mul-double v34, v34, v36

    move-wide/from16 v0, v34

    double-to-float v0, v0

    move/from16 v34, v0

    add-float v34, v34, p4

    add-float v25, v34, p5

    .line 175
    .local v25, "yb0":F
    float-to-double v0, v13

    move-wide/from16 v34, v0

    float-to-double v0, v5

    move-wide/from16 v36, v0

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->cos(D)D

    move-result-wide v36

    mul-double v34, v34, v36

    float-to-double v0, v4

    move-wide/from16 v36, v0

    sub-double v34, v34, v36

    move-wide/from16 v0, v34

    double-to-float v0, v0

    move/from16 v31, v0

    .line 177
    .local v31, "zb0":F
    const-wide v34, 0x3ff0c152382d7365L    # 1.0471975511965976

    move/from16 v0, p2

    float-to-double v0, v0

    move-wide/from16 v36, v0

    sub-double v34, v34, v36

    move-wide/from16 v0, v34

    double-to-float v5, v0

    .line 178
    const/high16 v34, 0x40000000    # 2.0f

    div-float v34, p0, v34

    add-float v20, v34, p3

    .line 179
    .local v20, "xb1":F
    float-to-double v0, v13

    move-wide/from16 v34, v0

    float-to-double v0, v5

    move-wide/from16 v36, v0

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->sin(D)D

    move-result-wide v36

    mul-double v34, v34, v36

    move-wide/from16 v0, v34

    double-to-float v0, v0

    move/from16 v34, v0

    add-float v34, v34, p4

    add-float v26, v34, p5

    .line 180
    .local v26, "yb1":F
    float-to-double v0, v13

    move-wide/from16 v34, v0

    float-to-double v0, v5

    move-wide/from16 v36, v0

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->cos(D)D

    move-result-wide v36

    mul-double v34, v34, v36

    float-to-double v0, v4

    move-wide/from16 v36, v0

    sub-double v34, v34, v36

    move-wide/from16 v0, v34

    double-to-float v0, v0

    move/from16 v32, v0

    .line 182
    .local v32, "zb1":F
    const-wide v34, -0x400f3eadc7d28c9bL    # -1.0471975511965976

    move/from16 v0, p2

    float-to-double v0, v0

    move-wide/from16 v36, v0

    sub-double v34, v34, v36

    move-wide/from16 v0, v34

    double-to-float v5, v0

    .line 183
    const/high16 v34, 0x40000000    # 2.0f

    div-float v34, p0, v34

    add-float v21, v34, p3

    .line 184
    .local v21, "xb2":F
    float-to-double v0, v13

    move-wide/from16 v34, v0

    float-to-double v0, v5

    move-wide/from16 v36, v0

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->sin(D)D

    move-result-wide v36

    mul-double v34, v34, v36

    move-wide/from16 v0, v34

    double-to-float v0, v0

    move/from16 v34, v0

    add-float v34, v34, p4

    add-float v27, v34, p5

    .line 185
    .local v27, "yb2":F
    float-to-double v0, v13

    move-wide/from16 v34, v0

    float-to-double v0, v5

    move-wide/from16 v36, v0

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->cos(D)D

    move-result-wide v36

    mul-double v34, v34, v36

    float-to-double v0, v4

    move-wide/from16 v36, v0

    sub-double v34, v34, v36

    move-wide/from16 v0, v34

    double-to-float v0, v0

    move/from16 v33, v0

    .line 186
    .local v33, "zb2":F
    new-instance v34, Lcom/smartisanos/smengine/math/Vector3f;

    move-object/from16 v0, v34

    move/from16 v1, v19

    move/from16 v2, v25

    move/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    move-object/from16 v0, v34

    move/from16 v1, p5

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;->getPoint(Lcom/smartisanos/smengine/math/Vector3f;F)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v10

    .line 187
    .local v10, "pb0":Lcom/smartisanos/smengine/math/Vector3f;
    new-instance v34, Lcom/smartisanos/smengine/math/Vector3f;

    move-object/from16 v0, v34

    move/from16 v1, v20

    move/from16 v2, v26

    move/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    move-object/from16 v0, v34

    move/from16 v1, p5

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;->getPoint(Lcom/smartisanos/smengine/math/Vector3f;F)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v11

    .line 188
    .local v11, "pb1":Lcom/smartisanos/smengine/math/Vector3f;
    new-instance v34, Lcom/smartisanos/smengine/math/Vector3f;

    move-object/from16 v0, v34

    move/from16 v1, v21

    move/from16 v2, v27

    move/from16 v3, v33

    invoke-direct {v0, v1, v2, v3}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    move-object/from16 v0, v34

    move/from16 v1, p5

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;->getPoint(Lcom/smartisanos/smengine/math/Vector3f;F)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v12

    .line 190
    .local v12, "pb2":Lcom/smartisanos/smengine/math/Vector3f;
    const/16 v34, 0x3

    invoke-static {v10, v11, v12}, Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;->minY(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v35

    aput-object v35, v14, v34

    .line 191
    const/16 v34, 0x5

    invoke-static {v10, v11, v12}, Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;->maxY(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v35

    aput-object v35, v14, v34

    .line 192
    const/16 v34, 0x3

    aget-object v34, v14, v34

    move-object/from16 v0, v34

    if-eq v10, v0, :cond_4

    const/16 v34, 0x5

    aget-object v34, v14, v34

    move-object/from16 v0, v34

    if-eq v10, v0, :cond_4

    .line 193
    const/16 v34, 0x4

    aput-object v10, v14, v34

    .line 199
    :goto_1
    const/16 v34, 0x4

    aget-object v34, v14, v34

    move-object/from16 v0, v34

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v34, v0

    const/16 v35, 0x3

    aget-object v35, v14, v35

    move-object/from16 v0, v35

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v35, v0

    sub-float v34, v34, v35

    const/16 v35, 0x5

    aget-object v35, v14, v35

    move-object/from16 v0, v35

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v35, v0

    const/16 v36, 0x3

    aget-object v36, v14, v36

    move-object/from16 v0, v36

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v36, v0

    sub-float v35, v35, v36

    div-float v6, v34, v35

    .line 200
    const/16 v34, 0x3

    aget-object v34, v14, v34

    move-object/from16 v0, v34

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v34, v0

    const/16 v35, 0x5

    aget-object v35, v14, v35

    move-object/from16 v0, v35

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v35, v0

    const/16 v36, 0x3

    aget-object v36, v14, v36

    move-object/from16 v0, v36

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v36, v0

    sub-float v35, v35, v36

    mul-float v35, v35, v6

    add-float v15, v34, v35

    .line 201
    const/16 v34, 0x4

    aget-object v34, v14, v34

    move-object/from16 v0, v34

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v34, v0

    cmpg-float v34, v34, v15

    if-gez v34, :cond_1

    .line 202
    const/16 v34, 0x4

    aget-object v34, v14, v34

    move-object/from16 v0, v34

    iput v15, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 204
    :cond_1
    return-object v14

    .line 162
    .end local v6    # "p":F
    .end local v10    # "pb0":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v11    # "pb1":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v12    # "pb2":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v15    # "x":F
    .end local v19    # "xb0":F
    .end local v20    # "xb1":F
    .end local v21    # "xb2":F
    .end local v25    # "yb0":F
    .end local v26    # "yb1":F
    .end local v27    # "yb2":F
    .end local v31    # "zb0":F
    .end local v32    # "zb1":F
    .end local v33    # "zb2":F
    :cond_2
    const/16 v34, 0x0

    aget-object v34, v14, v34

    move-object/from16 v0, v34

    if-eq v8, v0, :cond_3

    const/16 v34, 0x2

    aget-object v34, v14, v34

    move-object/from16 v0, v34

    if-eq v8, v0, :cond_3

    .line 163
    const/16 v34, 0x1

    aput-object v8, v14, v34

    goto/16 :goto_0

    .line 165
    :cond_3
    const/16 v34, 0x1

    aput-object v9, v14, v34

    goto/16 :goto_0

    .line 194
    .restart local v6    # "p":F
    .restart local v10    # "pb0":Lcom/smartisanos/smengine/math/Vector3f;
    .restart local v11    # "pb1":Lcom/smartisanos/smengine/math/Vector3f;
    .restart local v12    # "pb2":Lcom/smartisanos/smengine/math/Vector3f;
    .restart local v15    # "x":F
    .restart local v19    # "xb0":F
    .restart local v20    # "xb1":F
    .restart local v21    # "xb2":F
    .restart local v25    # "yb0":F
    .restart local v26    # "yb1":F
    .restart local v27    # "yb2":F
    .restart local v31    # "zb0":F
    .restart local v32    # "zb1":F
    .restart local v33    # "zb2":F
    :cond_4
    const/16 v34, 0x3

    aget-object v34, v14, v34

    move-object/from16 v0, v34

    if-eq v11, v0, :cond_5

    const/16 v34, 0x5

    aget-object v34, v14, v34

    move-object/from16 v0, v34

    if-eq v11, v0, :cond_5

    .line 195
    const/16 v34, 0x4

    aput-object v11, v14, v34

    goto/16 :goto_1

    .line 197
    :cond_5
    const/16 v34, 0x4

    aput-object v12, v14, v34

    goto/16 :goto_1
.end method

.method private static getPointsRL(FFFFFF)[Lcom/smartisanos/smengine/math/Vector3f;
    .locals 38
    .param p0, "w"    # F
    .param p1, "h"    # F
    .param p2, "angle"    # F
    .param p3, "localX"    # F
    .param p4, "localY"    # F
    .param p5, "offsetY"    # F

    .prologue
    .line 294
    const/high16 v34, 0x3f000000    # 0.5f

    mul-float v34, v34, p0

    move/from16 v0, v34

    float-to-double v0, v0

    move-wide/from16 v34, v0

    const-wide v36, 0x3fe0c152382d7365L    # 0.5235987755982988

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->cos(D)D

    move-result-wide v36

    div-double v34, v34, v36

    move-wide/from16 v0, v34

    double-to-float v13, v0

    .line 295
    .local v13, "r":F
    move/from16 v0, p0

    float-to-double v0, v0

    move-wide/from16 v34, v0

    const-wide v36, 0x3fe0c152382d7365L    # 0.5235987755982988

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->tan(D)D

    move-result-wide v36

    mul-double v34, v34, v36

    const-wide/high16 v36, 0x4000000000000000L    # 2.0

    div-double v34, v34, v36

    move-wide/from16 v0, v34

    double-to-float v4, v0

    .line 296
    .local v4, "c":F
    const-wide v34, 0x4012d97c7f3321d2L    # 4.71238898038469

    move/from16 v0, p2

    float-to-double v0, v0

    move-wide/from16 v36, v0

    sub-double v34, v34, v36

    move-wide/from16 v0, v34

    double-to-float v5, v0

    .line 297
    .local v5, "newAngle":F
    float-to-double v0, v13

    move-wide/from16 v34, v0

    float-to-double v0, v5

    move-wide/from16 v36, v0

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->cos(D)D

    move-result-wide v36

    mul-double v34, v34, v36

    move-wide/from16 v0, v34

    double-to-float v0, v0

    move/from16 v34, v0

    add-float v15, v34, p3

    .line 298
    .local v15, "xa0":F
    move/from16 v0, p1

    neg-float v0, v0

    move/from16 v34, v0

    const/high16 v35, 0x40000000    # 2.0f

    div-float v34, v34, v35

    add-float v34, v34, p4

    add-float v22, v34, p5

    .line 299
    .local v22, "ya0":F
    float-to-double v0, v13

    move-wide/from16 v34, v0

    float-to-double v0, v5

    move-wide/from16 v36, v0

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->sin(D)D

    move-result-wide v36

    mul-double v34, v34, v36

    float-to-double v0, v4

    move-wide/from16 v36, v0

    sub-double v34, v34, v36

    move-wide/from16 v0, v34

    double-to-float v0, v0

    move/from16 v28, v0

    .line 301
    .local v28, "za0":F
    const-wide v34, 0x4004f1a6c638d03eL    # 2.617993877991494

    move/from16 v0, p2

    float-to-double v0, v0

    move-wide/from16 v36, v0

    sub-double v34, v34, v36

    move-wide/from16 v0, v34

    double-to-float v5, v0

    .line 302
    float-to-double v0, v13

    move-wide/from16 v34, v0

    float-to-double v0, v5

    move-wide/from16 v36, v0

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->cos(D)D

    move-result-wide v36

    mul-double v34, v34, v36

    move-wide/from16 v0, v34

    double-to-float v0, v0

    move/from16 v34, v0

    add-float v16, v34, p3

    .line 303
    .local v16, "xa1":F
    move/from16 v0, p1

    neg-float v0, v0

    move/from16 v34, v0

    const/high16 v35, 0x40000000    # 2.0f

    div-float v34, v34, v35

    add-float v34, v34, p4

    add-float v23, v34, p5

    .line 304
    .local v23, "ya1":F
    float-to-double v0, v13

    move-wide/from16 v34, v0

    float-to-double v0, v5

    move-wide/from16 v36, v0

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->sin(D)D

    move-result-wide v36

    mul-double v34, v34, v36

    float-to-double v0, v4

    move-wide/from16 v36, v0

    sub-double v34, v34, v36

    move-wide/from16 v0, v34

    double-to-float v0, v0

    move/from16 v29, v0

    .line 306
    .local v29, "za1":F
    const-wide v34, 0x3fe0c152382d7365L    # 0.5235987755982988

    move/from16 v0, p2

    float-to-double v0, v0

    move-wide/from16 v36, v0

    sub-double v34, v34, v36

    move-wide/from16 v0, v34

    double-to-float v5, v0

    .line 307
    float-to-double v0, v13

    move-wide/from16 v34, v0

    float-to-double v0, v5

    move-wide/from16 v36, v0

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->cos(D)D

    move-result-wide v36

    mul-double v34, v34, v36

    move-wide/from16 v0, v34

    double-to-float v0, v0

    move/from16 v34, v0

    add-float v17, v34, p3

    .line 308
    .local v17, "xa2":F
    move/from16 v0, p1

    neg-float v0, v0

    move/from16 v34, v0

    const/high16 v35, 0x40000000    # 2.0f

    div-float v34, v34, v35

    add-float v34, v34, p4

    add-float v24, v34, p5

    .line 309
    .local v24, "ya2":F
    float-to-double v0, v13

    move-wide/from16 v34, v0

    float-to-double v0, v5

    move-wide/from16 v36, v0

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->sin(D)D

    move-result-wide v36

    mul-double v34, v34, v36

    float-to-double v0, v4

    move-wide/from16 v36, v0

    sub-double v34, v34, v36

    move-wide/from16 v0, v34

    double-to-float v0, v0

    move/from16 v30, v0

    .line 311
    .local v30, "za2":F
    const/16 v34, 0x6

    move/from16 v0, v34

    new-array v14, v0, [Lcom/smartisanos/smengine/math/Vector3f;

    .line 313
    .local v14, "result":[Lcom/smartisanos/smengine/math/Vector3f;
    new-instance v34, Lcom/smartisanos/smengine/math/Vector3f;

    move-object/from16 v0, v34

    move/from16 v1, v22

    move/from16 v2, v28

    invoke-direct {v0, v15, v1, v2}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    move-object/from16 v0, v34

    move/from16 v1, p5

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;->getPoint(Lcom/smartisanos/smengine/math/Vector3f;F)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v7

    .line 314
    .local v7, "pa0":Lcom/smartisanos/smengine/math/Vector3f;
    new-instance v34, Lcom/smartisanos/smengine/math/Vector3f;

    move-object/from16 v0, v34

    move/from16 v1, v16

    move/from16 v2, v23

    move/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    move-object/from16 v0, v34

    move/from16 v1, p5

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;->getPoint(Lcom/smartisanos/smengine/math/Vector3f;F)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v8

    .line 315
    .local v8, "pa1":Lcom/smartisanos/smengine/math/Vector3f;
    new-instance v34, Lcom/smartisanos/smengine/math/Vector3f;

    move-object/from16 v0, v34

    move/from16 v1, v17

    move/from16 v2, v24

    move/from16 v3, v30

    invoke-direct {v0, v1, v2, v3}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    move-object/from16 v0, v34

    move/from16 v1, p5

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;->getPoint(Lcom/smartisanos/smengine/math/Vector3f;F)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v9

    .line 317
    .local v9, "pa2":Lcom/smartisanos/smengine/math/Vector3f;
    const/16 v34, 0x0

    invoke-static {v7, v8, v9}, Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;->minX(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v35

    aput-object v35, v14, v34

    .line 318
    const/16 v34, 0x2

    invoke-static {v7, v8, v9}, Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;->maxX(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v35

    aput-object v35, v14, v34

    .line 319
    const/16 v34, 0x0

    aget-object v34, v14, v34

    move-object/from16 v0, v34

    if-eq v7, v0, :cond_2

    const/16 v34, 0x2

    aget-object v34, v14, v34

    move-object/from16 v0, v34

    if-eq v7, v0, :cond_2

    .line 320
    const/16 v34, 0x1

    aput-object v7, v14, v34

    .line 326
    :goto_0
    const/16 v34, 0x1

    aget-object v34, v14, v34

    move-object/from16 v0, v34

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v34, v0

    const/16 v35, 0x0

    aget-object v35, v14, v35

    move-object/from16 v0, v35

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v35, v0

    sub-float v34, v34, v35

    const/16 v35, 0x2

    aget-object v35, v14, v35

    move-object/from16 v0, v35

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v35, v0

    const/16 v36, 0x0

    aget-object v36, v14, v36

    move-object/from16 v0, v36

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v36, v0

    sub-float v35, v35, v36

    div-float v6, v34, v35

    .line 327
    .local v6, "p":F
    const/16 v34, 0x0

    aget-object v34, v14, v34

    move-object/from16 v0, v34

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v34, v0

    const/16 v35, 0x2

    aget-object v35, v14, v35

    move-object/from16 v0, v35

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v35, v0

    const/16 v36, 0x0

    aget-object v36, v14, v36

    move-object/from16 v0, v36

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v36, v0

    sub-float v35, v35, v36

    mul-float v35, v35, v6

    add-float v21, v34, v35

    .line 328
    .local v21, "y":F
    const/16 v34, 0x1

    aget-object v34, v14, v34

    move-object/from16 v0, v34

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v34, v0

    cmpl-float v34, v34, v21

    if-lez v34, :cond_0

    .line 329
    const/16 v34, 0x1

    aget-object v34, v14, v34

    move/from16 v0, v21

    move-object/from16 v1, v34

    iput v0, v1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 331
    :cond_0
    const-wide v34, 0x4012d97c7f3321d2L    # 4.71238898038469

    move/from16 v0, p2

    float-to-double v0, v0

    move-wide/from16 v36, v0

    sub-double v34, v34, v36

    move-wide/from16 v0, v34

    double-to-float v5, v0

    .line 332
    float-to-double v0, v13

    move-wide/from16 v34, v0

    float-to-double v0, v5

    move-wide/from16 v36, v0

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->cos(D)D

    move-result-wide v36

    mul-double v34, v34, v36

    move-wide/from16 v0, v34

    double-to-float v0, v0

    move/from16 v34, v0

    add-float v18, v34, p3

    .line 333
    .local v18, "xb0":F
    const/high16 v34, 0x40000000    # 2.0f

    div-float v34, p1, v34

    add-float v34, v34, p4

    add-float v25, v34, p5

    .line 334
    .local v25, "yb0":F
    float-to-double v0, v13

    move-wide/from16 v34, v0

    float-to-double v0, v5

    move-wide/from16 v36, v0

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->sin(D)D

    move-result-wide v36

    mul-double v34, v34, v36

    float-to-double v0, v4

    move-wide/from16 v36, v0

    sub-double v34, v34, v36

    move-wide/from16 v0, v34

    double-to-float v0, v0

    move/from16 v31, v0

    .line 336
    .local v31, "zb0":F
    const-wide v34, 0x4004f1a6c638d03eL    # 2.617993877991494

    move/from16 v0, p2

    float-to-double v0, v0

    move-wide/from16 v36, v0

    sub-double v34, v34, v36

    move-wide/from16 v0, v34

    double-to-float v5, v0

    .line 337
    float-to-double v0, v13

    move-wide/from16 v34, v0

    float-to-double v0, v5

    move-wide/from16 v36, v0

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->cos(D)D

    move-result-wide v36

    mul-double v34, v34, v36

    move-wide/from16 v0, v34

    double-to-float v0, v0

    move/from16 v34, v0

    add-float v19, v34, p3

    .line 338
    .local v19, "xb1":F
    const/high16 v34, 0x40000000    # 2.0f

    div-float v34, p1, v34

    add-float v34, v34, p4

    add-float v26, v34, p5

    .line 339
    .local v26, "yb1":F
    float-to-double v0, v13

    move-wide/from16 v34, v0

    float-to-double v0, v5

    move-wide/from16 v36, v0

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->sin(D)D

    move-result-wide v36

    mul-double v34, v34, v36

    float-to-double v0, v4

    move-wide/from16 v36, v0

    sub-double v34, v34, v36

    move-wide/from16 v0, v34

    double-to-float v0, v0

    move/from16 v32, v0

    .line 341
    .local v32, "zb1":F
    const-wide v34, 0x3fe0c152382d7365L    # 0.5235987755982988

    move/from16 v0, p2

    float-to-double v0, v0

    move-wide/from16 v36, v0

    sub-double v34, v34, v36

    move-wide/from16 v0, v34

    double-to-float v5, v0

    .line 342
    float-to-double v0, v13

    move-wide/from16 v34, v0

    float-to-double v0, v5

    move-wide/from16 v36, v0

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->cos(D)D

    move-result-wide v36

    mul-double v34, v34, v36

    move-wide/from16 v0, v34

    double-to-float v0, v0

    move/from16 v34, v0

    add-float v20, v34, p3

    .line 343
    .local v20, "xb2":F
    const/high16 v34, 0x40000000    # 2.0f

    div-float v34, p1, v34

    add-float v34, v34, p4

    add-float v27, v34, p5

    .line 344
    .local v27, "yb2":F
    float-to-double v0, v13

    move-wide/from16 v34, v0

    float-to-double v0, v5

    move-wide/from16 v36, v0

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->sin(D)D

    move-result-wide v36

    mul-double v34, v34, v36

    float-to-double v0, v4

    move-wide/from16 v36, v0

    sub-double v34, v34, v36

    move-wide/from16 v0, v34

    double-to-float v0, v0

    move/from16 v33, v0

    .line 345
    .local v33, "zb2":F
    new-instance v34, Lcom/smartisanos/smengine/math/Vector3f;

    move-object/from16 v0, v34

    move/from16 v1, v18

    move/from16 v2, v25

    move/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    move-object/from16 v0, v34

    move/from16 v1, p5

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;->getPoint(Lcom/smartisanos/smengine/math/Vector3f;F)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v10

    .line 346
    .local v10, "pb0":Lcom/smartisanos/smengine/math/Vector3f;
    new-instance v34, Lcom/smartisanos/smengine/math/Vector3f;

    move-object/from16 v0, v34

    move/from16 v1, v19

    move/from16 v2, v26

    move/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    move-object/from16 v0, v34

    move/from16 v1, p5

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;->getPoint(Lcom/smartisanos/smengine/math/Vector3f;F)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v11

    .line 347
    .local v11, "pb1":Lcom/smartisanos/smengine/math/Vector3f;
    new-instance v34, Lcom/smartisanos/smengine/math/Vector3f;

    move-object/from16 v0, v34

    move/from16 v1, v20

    move/from16 v2, v27

    move/from16 v3, v33

    invoke-direct {v0, v1, v2, v3}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    move-object/from16 v0, v34

    move/from16 v1, p5

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;->getPoint(Lcom/smartisanos/smengine/math/Vector3f;F)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v12

    .line 348
    .local v12, "pb2":Lcom/smartisanos/smengine/math/Vector3f;
    const/16 v34, 0x3

    invoke-static {v10, v11, v12}, Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;->minX(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v35

    aput-object v35, v14, v34

    .line 349
    const/16 v34, 0x5

    invoke-static {v10, v11, v12}, Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;->maxX(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v35

    aput-object v35, v14, v34

    .line 350
    const/16 v34, 0x3

    aget-object v34, v14, v34

    move-object/from16 v0, v34

    if-eq v10, v0, :cond_4

    const/16 v34, 0x3

    aget-object v34, v14, v34

    move-object/from16 v0, v34

    if-eq v10, v0, :cond_4

    .line 351
    const/16 v34, 0x4

    aput-object v10, v14, v34

    .line 357
    :goto_1
    const/16 v34, 0x4

    aget-object v34, v14, v34

    move-object/from16 v0, v34

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v34, v0

    const/16 v35, 0x3

    aget-object v35, v14, v35

    move-object/from16 v0, v35

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v35, v0

    sub-float v34, v34, v35

    const/16 v35, 0x5

    aget-object v35, v14, v35

    move-object/from16 v0, v35

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v35, v0

    const/16 v36, 0x3

    aget-object v36, v14, v36

    move-object/from16 v0, v36

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v36, v0

    sub-float v35, v35, v36

    div-float v6, v34, v35

    .line 358
    const/16 v34, 0x3

    aget-object v34, v14, v34

    move-object/from16 v0, v34

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v34, v0

    const/16 v35, 0x5

    aget-object v35, v14, v35

    move-object/from16 v0, v35

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v35, v0

    const/16 v36, 0x3

    aget-object v36, v14, v36

    move-object/from16 v0, v36

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v36, v0

    sub-float v35, v35, v36

    mul-float v35, v35, v6

    add-float v21, v34, v35

    .line 359
    const/16 v34, 0x4

    aget-object v34, v14, v34

    move-object/from16 v0, v34

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v34, v0

    cmpg-float v34, v34, v21

    if-gez v34, :cond_1

    .line 360
    const/16 v34, 0x4

    aget-object v34, v14, v34

    move/from16 v0, v21

    move-object/from16 v1, v34

    iput v0, v1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 363
    :cond_1
    return-object v14

    .line 321
    .end local v6    # "p":F
    .end local v10    # "pb0":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v11    # "pb1":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v12    # "pb2":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v18    # "xb0":F
    .end local v19    # "xb1":F
    .end local v20    # "xb2":F
    .end local v21    # "y":F
    .end local v25    # "yb0":F
    .end local v26    # "yb1":F
    .end local v27    # "yb2":F
    .end local v31    # "zb0":F
    .end local v32    # "zb1":F
    .end local v33    # "zb2":F
    :cond_2
    const/16 v34, 0x0

    aget-object v34, v14, v34

    move-object/from16 v0, v34

    if-eq v8, v0, :cond_3

    const/16 v34, 0x2

    aget-object v34, v14, v34

    move-object/from16 v0, v34

    if-eq v8, v0, :cond_3

    .line 322
    const/16 v34, 0x1

    aput-object v8, v14, v34

    goto/16 :goto_0

    .line 324
    :cond_3
    const/16 v34, 0x1

    aput-object v9, v14, v34

    goto/16 :goto_0

    .line 352
    .restart local v6    # "p":F
    .restart local v10    # "pb0":Lcom/smartisanos/smengine/math/Vector3f;
    .restart local v11    # "pb1":Lcom/smartisanos/smengine/math/Vector3f;
    .restart local v12    # "pb2":Lcom/smartisanos/smengine/math/Vector3f;
    .restart local v18    # "xb0":F
    .restart local v19    # "xb1":F
    .restart local v20    # "xb2":F
    .restart local v21    # "y":F
    .restart local v25    # "yb0":F
    .restart local v26    # "yb1":F
    .restart local v27    # "yb2":F
    .restart local v31    # "zb0":F
    .restart local v32    # "zb1":F
    .restart local v33    # "zb2":F
    :cond_4
    const/16 v34, 0x5

    aget-object v34, v14, v34

    move-object/from16 v0, v34

    if-eq v11, v0, :cond_5

    const/16 v34, 0x5

    aget-object v34, v14, v34

    move-object/from16 v0, v34

    if-eq v11, v0, :cond_5

    .line 353
    const/16 v34, 0x4

    aput-object v11, v14, v34

    goto/16 :goto_1

    .line 355
    :cond_5
    const/16 v34, 0x4

    aput-object v12, v14, v34

    goto/16 :goto_1
.end method

.method private static maxX(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;
    .locals 3
    .param p0, "v0"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p1, "v1"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p2, "v2"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 367
    move-object v0, p0

    .line 368
    .local v0, "result":Lcom/smartisanos/smengine/math/Vector3f;
    iget v1, p1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v2, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 369
    move-object v0, p1

    .line 371
    :cond_0
    iget v1, p2, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v2, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 372
    move-object v0, p2

    .line 374
    :cond_1
    return-object v0
.end method

.method private static maxY(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;
    .locals 3
    .param p0, "v0"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p1, "v1"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p2, "v2"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 389
    move-object v0, p0

    .line 390
    .local v0, "result":Lcom/smartisanos/smengine/math/Vector3f;
    iget v1, p1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v2, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 391
    move-object v0, p1

    .line 393
    :cond_0
    iget v1, p2, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v2, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 394
    move-object v0, p2

    .line 396
    :cond_1
    return-object v0
.end method

.method private static minX(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;
    .locals 3
    .param p0, "v0"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p1, "v1"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p2, "v2"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 378
    move-object v0, p0

    .line 379
    .local v0, "result":Lcom/smartisanos/smengine/math/Vector3f;
    iget v1, p1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v2, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 380
    move-object v0, p1

    .line 382
    :cond_0
    iget v1, p2, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v2, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 383
    move-object v0, p2

    .line 385
    :cond_1
    return-object v0
.end method

.method private static minY(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;
    .locals 3
    .param p0, "v0"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p1, "v1"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p2, "v2"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 400
    move-object v0, p0

    .line 401
    .local v0, "result":Lcom/smartisanos/smengine/math/Vector3f;
    iget v1, p1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v2, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 402
    move-object v0, p1

    .line 404
    :cond_0
    iget v1, p2, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v2, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 405
    move-object v0, p2

    .line 407
    :cond_1
    return-object v0
.end method


.method public getDrawAnimIndex(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 38
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;->mDrawAnimIndex:[I

    aget v0, v0, p1

    return v0
.end method

.method public getDrawPositionOffset(I)Lcom/smartisanos/smengine/math/Vector3f;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 42
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;->mPosOffsetList:[Lcom/smartisanos/smengine/math/Vector3f;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getDrawTimes()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;->mDrawTimes:I

    return v0
.end method

.method public setDrawAnimIndex(II)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "animIndex"    # I

    .prologue
    .line 34
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;->mDrawAnimIndex:[I

    aput p2, v0, p1

    .line 35
    return-void
.end method

.method public setDrawPositionOffset(ILcom/smartisanos/smengine/math/Vector3f;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "posOffset"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;->mPosOffsetList:[Lcom/smartisanos/smengine/math/Vector3f;

    iget v1, p0, Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;->mScale:F

    invoke-virtual {p2, v1}, Lcom/smartisanos/smengine/math/Vector3f;->mult(F)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v1

    aput-object v1, v0, p1

    .line 47
    return-void
.end method
