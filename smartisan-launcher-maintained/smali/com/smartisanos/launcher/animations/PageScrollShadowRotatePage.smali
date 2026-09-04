.class public Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;
.super Lcom/smartisanos/smengine/SceneNode;
.source "PageScrollShadowRotatePage.java"


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
    .line 21
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/SceneNode;-><init>(Ljava/lang/String;)V

    .line 22
    new-array v0, p2, [Lcom/smartisanos/smengine/math/Vector3f;

    iput-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;->mPosOffsetList:[Lcom/smartisanos/smengine/math/Vector3f;

    .line 23
    new-array v0, p2, [I

    iput-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;->mDrawAnimIndex:[I

    .line 24
    iput p2, p0, Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;->mDrawTimes:I

    .line 25
    iput p3, p0, Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;->mScale:F

    .line 26
    return-void
.end method

.method public static createDU(Ljava/lang/String;FFFFIF)Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;
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

    .line 49
    sget v4, Lcom/smartisanos/launcher/data/Constants;->mainCameraZ:I

    int-to-float v4, v4

    add-float/2addr v4, p2

    sget v5, Lcom/smartisanos/launcher/data/Constants;->mainCameraZ:I

    int-to-float v5, v5

    div-float v3, v4, v5

    .line 50
    .local v3, "scale":F
    new-instance v2, Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;

    invoke-direct {v2, p0, v6, v3}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;-><init>(Ljava/lang/String;IF)V

    .line 51
    .local v2, "pageScrollShadow":Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;
    invoke-static/range {p1 .. p6}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;->createMeshDU(FFFFIF)Lcom/smartisanos/smengine/Mesh;

    move-result-object v1

    .line 52
    .local v1, "mesh":Lcom/smartisanos/smengine/Mesh;
    invoke-virtual {v2, v1}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;->setMesh(Lcom/smartisanos/smengine/Mesh;)V

    .line 53
    const-string v4, "DrawMultiTimesMaterial"

    invoke-static {v4}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v0

    .line 54
    .local v0, "m":Lcom/smartisanos/smengine/mymaterial/Material;
    invoke-virtual {v2, v0}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 55
    invoke-virtual {v2, v6}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;->setRenderQueue(I)V

    .line 56
    invoke-virtual {v2}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/smartisanos/smengine/RenderState;->setIsEnableDepthTest(Z)V

    .line 57
    invoke-virtual {v2}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/smartisanos/smengine/RenderState;->setIsUseVBO(Z)V

    .line 58
    invoke-virtual {v2}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/smartisanos/smengine/RenderState;->setIsEnableBlend(Z)V

    .line 59
    invoke-virtual {v2}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/smartisanos/smengine/RenderState;->setIsCullFaceEnable(Z)V

    .line 60
    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;->setLayer(I)V

    .line 61
    const-string v4, "page_scroll_rotate_page.png"

    invoke-static {v4}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;->setImageName(Ljava/lang/String;)V

    .line 62
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
    .line 66
    sget v2, Lcom/smartisanos/launcher/data/Constants;->mainCameraZ:I

    int-to-float v2, v2

    add-float v2, v2, p1

    sget v3, Lcom/smartisanos/launcher/data/Constants;->mainCameraZ:I

    int-to-float v3, v3

    div-float v20, v2, v3

    .line 67
    .local v20, "scale":F
    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v2, v2, v20

    mul-float v14, v2, p5

    .line 68
    .local v14, "offsetYscale":F
    const v2, 0x3d75c28f    # 0.06f

    mul-float v18, p0, v2

    .line 69
    .local v18, "sX":F
    const v2, 0x3da3d70a    # 0.08f

    mul-float v19, p0, v2

    .line 70
    .local v19, "sY":F
    move/from16 v17, p4

    .line 71
    .local v17, "rectNum":I
    mul-int/lit8 v2, v17, 0x6

    mul-int/lit8 v2, v2, 0x3

    new-array v15, v2, [F

    .line 72
    .local v15, "points":[F
    mul-int/lit8 v2, v17, 0x6

    mul-int/lit8 v2, v2, 0x2

    new-array v0, v2, [F

    move-object/from16 v21, v0

    .line 73
    .local v21, "texPoints":[F
    mul-int/lit8 v2, v17, 0x4

    mul-int/lit8 v2, v2, 0x3

    new-array v8, v2, [S

    .line 75
    .local v8, "faces":[S
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    move/from16 v0, v17

    if-ge v11, v0, :cond_0

    .line 76
    const-wide v2, 0x400921fb54442d18L    # Math.PI

    int-to-double v6, v11

    mul-double/2addr v2, v6

    mul-int/lit8 v6, p4, 0x2

    int-to-double v6, v6

    div-double/2addr v2, v6

    double-to-float v4, v2

    .local v4, "angle":F
    move/from16 v2, p0

    move/from16 v3, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p5

    .line 77
    invoke-static/range {v2 .. v7}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;->getPointsDU(FFFFFF)[Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v16

    .line 78
    .local v16, "ps":[Lcom/smartisanos/smengine/math/Vector3f;
    mul-int/lit8 v12, v11, 0x12

    .line 79
    .local v12, "index":I
    add-int/lit8 v2, v12, 0x0

    const/4 v3, 0x0

    aget-object v3, v16, v3

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    sub-float v3, v3, v18

    mul-float v3, v3, v20

    aput v3, v15, v2

    .line 80
    add-int/lit8 v2, v12, 0x1

    const/4 v3, 0x0

    aget-object v3, v16, v3

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    sub-float v3, v3, v19

    mul-float v3, v3, v20

    add-float/2addr v3, v14

    aput v3, v15, v2

    .line 81
    add-int/lit8 v2, v12, 0x2

    move/from16 v0, p1

    neg-float v3, v0

    aput v3, v15, v2

    .line 82
    add-int/lit8 v2, v12, 0x3

    const/4 v3, 0x1

    aget-object v3, v16, v3

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    sub-float v3, v3, v18

    mul-float v3, v3, v20

    aput v3, v15, v2

    .line 83
    add-int/lit8 v2, v12, 0x4

    const/4 v3, 0x1

    aget-object v3, v16, v3

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    mul-float v3, v3, v20

    add-float/2addr v3, v14

    aput v3, v15, v2

    .line 84
    add-int/lit8 v2, v12, 0x5

    move/from16 v0, p1

    neg-float v3, v0

    aput v3, v15, v2

    .line 85
    add-int/lit8 v2, v12, 0x6

    const/4 v3, 0x2

    aget-object v3, v16, v3

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    sub-float v3, v3, v18

    mul-float v3, v3, v20

    aput v3, v15, v2

    .line 86
    add-int/lit8 v2, v12, 0x7

    const/4 v3, 0x2

    aget-object v3, v16, v3

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    add-float v3, v3, v19

    mul-float v3, v3, v20

    add-float/2addr v3, v14

    aput v3, v15, v2

    .line 87
    add-int/lit8 v2, v12, 0x8

    move/from16 v0, p1

    neg-float v3, v0

    aput v3, v15, v2

    .line 88
    add-int/lit8 v2, v12, 0x9

    const/4 v3, 0x3

    aget-object v3, v16, v3

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    add-float v3, v3, v18

    mul-float v3, v3, v20

    aput v3, v15, v2

    .line 89
    add-int/lit8 v2, v12, 0xa

    const/4 v3, 0x3

    aget-object v3, v16, v3

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    sub-float v3, v3, v19

    mul-float v3, v3, v20

    add-float/2addr v3, v14

    aput v3, v15, v2

    .line 90
    add-int/lit8 v2, v12, 0xb

    move/from16 v0, p1

    neg-float v3, v0

    aput v3, v15, v2

    .line 91
    add-int/lit8 v2, v12, 0xc

    const/4 v3, 0x4

    aget-object v3, v16, v3

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    add-float v3, v3, v18

    mul-float v3, v3, v20

    aput v3, v15, v2

    .line 92
    add-int/lit8 v2, v12, 0xd

    const/4 v3, 0x4

    aget-object v3, v16, v3

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    mul-float v3, v3, v20

    add-float/2addr v3, v14

    aput v3, v15, v2

    .line 93
    add-int/lit8 v2, v12, 0xe

    move/from16 v0, p1

    neg-float v3, v0

    aput v3, v15, v2

    .line 94
    add-int/lit8 v2, v12, 0xf

    const/4 v3, 0x5

    aget-object v3, v16, v3

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    add-float v3, v3, v18

    mul-float v3, v3, v20

    aput v3, v15, v2

    .line 95
    add-int/lit8 v2, v12, 0x10

    const/4 v3, 0x5

    aget-object v3, v16, v3

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    add-float v3, v3, v19

    mul-float v3, v3, v20

    add-float/2addr v3, v14

    aput v3, v15, v2

    .line 96
    add-int/lit8 v2, v12, 0x11

    move/from16 v0, p1

    neg-float v3, v0

    aput v3, v15, v2

    .line 98
    mul-int/lit8 v12, v11, 0xc

    .line 99
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

    .line 100
    .local v22, "v":F
    add-int/lit8 v2, v12, 0x0

    const/4 v3, 0x0

    aput v3, v21, v2

    .line 101
    add-int/lit8 v2, v12, 0x1

    const/4 v3, 0x0

    aput v3, v21, v2

    .line 102
    add-int/lit8 v2, v12, 0x2

    const/4 v3, 0x0

    aput v3, v21, v2

    .line 103
    add-int/lit8 v2, v12, 0x3

    aput v22, v21, v2

    .line 104
    add-int/lit8 v2, v12, 0x4

    const/4 v3, 0x0

    aput v3, v21, v2

    .line 105
    add-int/lit8 v2, v12, 0x5

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v21, v2

    .line 106
    add-int/lit8 v2, v12, 0x6

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v21, v2

    .line 107
    add-int/lit8 v2, v12, 0x7

    const/4 v3, 0x0

    aput v3, v21, v2

    .line 108
    add-int/lit8 v2, v12, 0x8

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v21, v2

    .line 109
    add-int/lit8 v2, v12, 0x9

    aput v22, v21, v2

    .line 110
    add-int/lit8 v2, v12, 0xa

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v21, v2

    .line 111
    add-int/lit8 v2, v12, 0xb

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v21, v2

    .line 112
    mul-int/lit8 v12, v11, 0xc

    .line 113
    mul-int/lit8 v13, v11, 0x6

    .line 114
    .local v13, "m":I
    add-int/lit8 v2, v12, 0x0

    add-int/lit8 v3, v13, 0x0

    int-to-short v3, v3

    aput-short v3, v8, v2

    .line 115
    add-int/lit8 v2, v12, 0x1

    add-int/lit8 v3, v13, 0x3

    int-to-short v3, v3

    aput-short v3, v8, v2

    .line 116
    add-int/lit8 v2, v12, 0x2

    add-int/lit8 v3, v13, 0x4

    int-to-short v3, v3

    aput-short v3, v8, v2

    .line 117
    add-int/lit8 v2, v12, 0x3

    add-int/lit8 v3, v13, 0x4

    int-to-short v3, v3

    aput-short v3, v8, v2

    .line 118
    add-int/lit8 v2, v12, 0x4

    add-int/lit8 v3, v13, 0x1

    int-to-short v3, v3

    aput-short v3, v8, v2

    .line 119
    add-int/lit8 v2, v12, 0x5

    add-int/lit8 v3, v13, 0x0

    int-to-short v3, v3

    aput-short v3, v8, v2

    .line 120
    add-int/lit8 v2, v12, 0x6

    add-int/lit8 v3, v13, 0x1

    int-to-short v3, v3

    aput-short v3, v8, v2

    .line 121
    add-int/lit8 v2, v12, 0x7

    add-int/lit8 v3, v13, 0x4

    int-to-short v3, v3

    aput-short v3, v8, v2

    .line 122
    add-int/lit8 v2, v12, 0x8

    add-int/lit8 v3, v13, 0x5

    int-to-short v3, v3

    aput-short v3, v8, v2

    .line 123
    add-int/lit8 v2, v12, 0x9

    add-int/lit8 v3, v13, 0x5

    int-to-short v3, v3

    aput-short v3, v8, v2

    .line 124
    add-int/lit8 v2, v12, 0xa

    add-int/lit8 v3, v13, 0x2

    int-to-short v3, v3

    aput-short v3, v8, v2

    .line 125
    add-int/lit8 v2, v12, 0xb

    add-int/lit8 v3, v13, 0x1

    int-to-short v3, v3

    aput-short v3, v8, v2

    .line 75
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 128
    .end local v4    # "angle":F
    .end local v12    # "index":I
    .end local v13    # "m":I
    .end local v16    # "ps":[Lcom/smartisanos/smengine/math/Vector3f;
    .end local v22    # "v":F
    :cond_0
    new-instance v5, Lcom/smartisanos/smengine/Mesh;

    invoke-direct {v5}, Lcom/smartisanos/smengine/Mesh;-><init>()V

    .line 129
    .local v5, "mesh":Lcom/smartisanos/smengine/Mesh;
    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v6, v15

    move-object/from16 v7, v21

    invoke-virtual/range {v5 .. v10}, Lcom/smartisanos/smengine/Mesh;->create([F[F[S[FZ)V

    .line 130
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
    .line 217
    sget v2, Lcom/smartisanos/launcher/data/Constants;->mainCameraZ:I

    int-to-float v2, v2

    add-float v2, v2, p0

    sget v3, Lcom/smartisanos/launcher/data/Constants;->mainCameraZ:I

    int-to-float v3, v3

    div-float v20, v2, v3

    .line 218
    .local v20, "scale":F
    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v2, v2, v20

    mul-float v14, v2, p5

    .line 219
    .local v14, "offsetYscale":F
    const v2, 0x3da3d70a    # 0.08f

    mul-float v18, p0, v2

    .line 220
    .local v18, "sX":F
    const v2, 0x3da3d70a    # 0.08f

    mul-float v19, p0, v2

    .line 221
    .local v19, "sY":F
    move/from16 v17, p2

    .line 222
    .local v17, "rectNum":I
    mul-int/lit8 v2, v17, 0x6

    mul-int/lit8 v2, v2, 0x3

    new-array v15, v2, [F

    .line 223
    .local v15, "points":[F
    mul-int/lit8 v2, v17, 0x6

    mul-int/lit8 v2, v2, 0x2

    new-array v0, v2, [F

    move-object/from16 v21, v0

    .line 224
    .local v21, "texPoints":[F
    mul-int/lit8 v2, v17, 0x4

    mul-int/lit8 v2, v2, 0x3

    new-array v8, v2, [S

    .line 226
    .local v8, "faces":[S
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    move/from16 v0, v17

    if-ge v11, v0, :cond_0

    .line 227
    const-wide v2, 0x400921fb54442d18L    # Math.PI

    int-to-double v6, v11

    mul-double/2addr v2, v6

    mul-int/lit8 v6, p2, 0x2

    int-to-double v6, v6

    div-double/2addr v2, v6

    double-to-float v4, v2

    .local v4, "angle":F
    move/from16 v2, p0

    move/from16 v3, p1

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    .line 228
    invoke-static/range {v2 .. v7}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;->getPointsRL(FFFFFF)[Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v16

    .line 229
    .local v16, "ps":[Lcom/smartisanos/smengine/math/Vector3f;
    mul-int/lit8 v12, v11, 0x12

    .line 230
    .local v12, "index":I
    add-int/lit8 v2, v12, 0x0

    const/4 v3, 0x0

    aget-object v3, v16, v3

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    sub-float v3, v3, v18

    mul-float v3, v3, v20

    aput v3, v15, v2

    .line 231
    add-int/lit8 v2, v12, 0x1

    const/4 v3, 0x0

    aget-object v3, v16, v3

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    sub-float v3, v3, v19

    mul-float v3, v3, v20

    add-float/2addr v3, v14

    aput v3, v15, v2

    .line 232
    add-int/lit8 v2, v12, 0x2

    move/from16 v0, p0

    neg-float v3, v0

    aput v3, v15, v2

    .line 233
    add-int/lit8 v2, v12, 0x3

    const/4 v3, 0x1

    aget-object v3, v16, v3

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    mul-float v3, v3, v20

    aput v3, v15, v2

    .line 234
    add-int/lit8 v2, v12, 0x4

    const/4 v3, 0x1

    aget-object v3, v16, v3

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    sub-float v3, v3, v19

    mul-float v3, v3, v20

    add-float/2addr v3, v14

    aput v3, v15, v2

    .line 235
    add-int/lit8 v2, v12, 0x5

    move/from16 v0, p0

    neg-float v3, v0

    aput v3, v15, v2

    .line 236
    add-int/lit8 v2, v12, 0x6

    const/4 v3, 0x2

    aget-object v3, v16, v3

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    add-float v3, v3, v18

    mul-float v3, v3, v20

    aput v3, v15, v2

    .line 237
    add-int/lit8 v2, v12, 0x7

    const/4 v3, 0x2

    aget-object v3, v16, v3

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    sub-float v3, v3, v19

    mul-float v3, v3, v20

    add-float/2addr v3, v14

    aput v3, v15, v2

    .line 238
    add-int/lit8 v2, v12, 0x8

    move/from16 v0, p0

    neg-float v3, v0

    aput v3, v15, v2

    .line 239
    add-int/lit8 v2, v12, 0x9

    const/4 v3, 0x3

    aget-object v3, v16, v3

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    sub-float v3, v3, v18

    mul-float v3, v3, v20

    aput v3, v15, v2

    .line 240
    add-int/lit8 v2, v12, 0xa

    const/4 v3, 0x3

    aget-object v3, v16, v3

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    add-float v3, v3, v19

    mul-float v3, v3, v20

    add-float/2addr v3, v14

    aput v3, v15, v2

    .line 241
    add-int/lit8 v2, v12, 0xb

    move/from16 v0, p0

    neg-float v3, v0

    aput v3, v15, v2

    .line 242
    add-int/lit8 v2, v12, 0xc

    const/4 v3, 0x4

    aget-object v3, v16, v3

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    mul-float v3, v3, v20

    aput v3, v15, v2

    .line 243
    add-int/lit8 v2, v12, 0xd

    const/4 v3, 0x4

    aget-object v3, v16, v3

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    add-float v3, v3, v19

    mul-float v3, v3, v20

    add-float/2addr v3, v14

    aput v3, v15, v2

    .line 244
    add-int/lit8 v2, v12, 0xe

    move/from16 v0, p0

    neg-float v3, v0

    aput v3, v15, v2

    .line 245
    add-int/lit8 v2, v12, 0xf

    const/4 v3, 0x5

    aget-object v3, v16, v3

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    add-float v3, v3, v18

    mul-float v3, v3, v20

    aput v3, v15, v2

    .line 246
    add-int/lit8 v2, v12, 0x10

    const/4 v3, 0x5

    aget-object v3, v16, v3

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    add-float v3, v3, v19

    mul-float v3, v3, v20

    add-float/2addr v3, v14

    aput v3, v15, v2

    .line 247
    add-int/lit8 v2, v12, 0x11

    move/from16 v0, p0

    neg-float v3, v0

    aput v3, v15, v2

    .line 249
    mul-int/lit8 v12, v11, 0xc

    .line 250
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

    .line 251
    .local v22, "v":F
    add-int/lit8 v2, v12, 0x0

    const/4 v3, 0x0

    aput v3, v21, v2

    .line 252
    add-int/lit8 v2, v12, 0x1

    const/4 v3, 0x0

    aput v3, v21, v2

    .line 253
    add-int/lit8 v2, v12, 0x2

    aput v22, v21, v2

    .line 254
    add-int/lit8 v2, v12, 0x3

    const/4 v3, 0x0

    aput v3, v21, v2

    .line 255
    add-int/lit8 v2, v12, 0x4

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v21, v2

    .line 256
    add-int/lit8 v2, v12, 0x5

    const/4 v3, 0x0

    aput v3, v21, v2

    .line 257
    add-int/lit8 v2, v12, 0x6

    const/4 v3, 0x0

    aput v3, v21, v2

    .line 258
    add-int/lit8 v2, v12, 0x7

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v21, v2

    .line 259
    add-int/lit8 v2, v12, 0x8

    aput v22, v21, v2

    .line 260
    add-int/lit8 v2, v12, 0x9

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v21, v2

    .line 261
    add-int/lit8 v2, v12, 0xa

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v21, v2

    .line 262
    add-int/lit8 v2, v12, 0xb

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v21, v2

    .line 263
    mul-int/lit8 v12, v11, 0xc

    .line 264
    mul-int/lit8 v13, v11, 0x6

    .line 265
    .local v13, "m":I
    add-int/lit8 v2, v12, 0x0

    add-int/lit8 v3, v13, 0x0

    int-to-short v3, v3

    aput-short v3, v8, v2

    .line 266
    add-int/lit8 v2, v12, 0x1

    add-int/lit8 v3, v13, 0x1

    int-to-short v3, v3

    aput-short v3, v8, v2

    .line 267
    add-int/lit8 v2, v12, 0x2

    add-int/lit8 v3, v13, 0x4

    int-to-short v3, v3

    aput-short v3, v8, v2

    .line 268
    add-int/lit8 v2, v12, 0x3

    add-int/lit8 v3, v13, 0x4

    int-to-short v3, v3

    aput-short v3, v8, v2

    .line 269
    add-int/lit8 v2, v12, 0x4

    add-int/lit8 v3, v13, 0x3

    int-to-short v3, v3

    aput-short v3, v8, v2

    .line 270
    add-int/lit8 v2, v12, 0x5

    add-int/lit8 v3, v13, 0x0

    int-to-short v3, v3

    aput-short v3, v8, v2

    .line 271
    add-int/lit8 v2, v12, 0x6

    add-int/lit8 v3, v13, 0x1

    int-to-short v3, v3

    aput-short v3, v8, v2

    .line 272
    add-int/lit8 v2, v12, 0x7

    add-int/lit8 v3, v13, 0x2

    int-to-short v3, v3

    aput-short v3, v8, v2

    .line 273
    add-int/lit8 v2, v12, 0x8

    add-int/lit8 v3, v13, 0x5

    int-to-short v3, v3

    aput-short v3, v8, v2

    .line 274
    add-int/lit8 v2, v12, 0x9

    add-int/lit8 v3, v13, 0x5

    int-to-short v3, v3

    aput-short v3, v8, v2

    .line 275
    add-int/lit8 v2, v12, 0xa

    add-int/lit8 v3, v13, 0x4

    int-to-short v3, v3

    aput-short v3, v8, v2

    .line 276
    add-int/lit8 v2, v12, 0xb

    add-int/lit8 v3, v13, 0x1

    int-to-short v3, v3

    aput-short v3, v8, v2

    .line 226
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 279
    .end local v4    # "angle":F
    .end local v12    # "index":I
    .end local v13    # "m":I
    .end local v16    # "ps":[Lcom/smartisanos/smengine/math/Vector3f;
    .end local v22    # "v":F
    :cond_0
    new-instance v5, Lcom/smartisanos/smengine/Mesh;

    invoke-direct {v5}, Lcom/smartisanos/smengine/Mesh;-><init>()V

    .line 280
    .local v5, "mesh":Lcom/smartisanos/smengine/Mesh;
    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v6, v15

    move-object/from16 v7, v21

    invoke-virtual/range {v5 .. v10}, Lcom/smartisanos/smengine/Mesh;->create([F[F[S[FZ)V

    .line 281
    return-object v5
.end method

.method public static createRL(Ljava/lang/String;FFFFIF)Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;
    .locals 10
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "w"    # F
    .param p2, "h"    # F
    .param p3, "localX"    # F
    .param p4, "localY"    # F
    .param p5, "sampleCount"    # I
    .param p6, "offsetY"    # F

    .prologue
    .line 200
    sget v0, Lcom/smartisanos/launcher/data/Constants;->mainCameraZ:I

    int-to-float v0, v0

    add-float/2addr v0, p1

    sget v1, Lcom/smartisanos/launcher/data/Constants;->mainCameraZ:I

    int-to-float v1, v1

    div-float v9, v0, v1

    .line 201
    .local v9, "scale":F
    new-instance v8, Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;

    const/4 v0, 0x1

    invoke-direct {v8, p0, v0, v9}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;-><init>(Ljava/lang/String;IF)V

    .local v8, "pageScrollShadow":Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;
    move v0, p1

    move v1, p2

    move v2, p5

    move v3, p3

    move v4, p4

    move/from16 v5, p6

    .line 202
    invoke-static/range {v0 .. v5}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;->createMeshRL(FFIFFF)Lcom/smartisanos/smengine/Mesh;

    move-result-object v7

    .line 203
    .local v7, "mesh":Lcom/smartisanos/smengine/Mesh;
    invoke-virtual {v8, v7}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;->setMesh(Lcom/smartisanos/smengine/Mesh;)V

    .line 204
    const-string v0, "DrawMultiTimesMaterial"

    invoke-static {v0}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v6

    .line 205
    .local v6, "m":Lcom/smartisanos/smengine/mymaterial/Material;
    invoke-virtual {v8, v6}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 206
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;->setRenderQueue(I)V

    .line 207
    invoke-virtual {v8}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RenderState;->setIsEnableDepthTest(Z)V

    .line 208
    invoke-virtual {v8}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RenderState;->setIsUseVBO(Z)V

    .line 209
    invoke-virtual {v8}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RenderState;->setIsEnableBlend(Z)V

    .line 210
    invoke-virtual {v8}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RenderState;->setIsCullFaceEnable(Z)V

    .line 211
    const/4 v0, 0x2

    invoke-virtual {v8, v0}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;->setLayer(I)V

    .line 212
    const-string v0, "page_scroll_rotate_page.png"

    invoke-static {v0}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;->setImageName(Ljava/lang/String;)V

    .line 213
    return-object v8
.end method

.method private static getPoint(Lcom/smartisanos/smengine/math/Vector3f;F)Lcom/smartisanos/smengine/math/Vector3f;
    .locals 9
    .param p0, "src"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p1, "offsetY"    # F

    .prologue
    .line 395
    sget v7, Lcom/smartisanos/launcher/data/Constants;->mainCameraZ:I

    int-to-float v0, v7

    .line 396
    .local v0, "cZ":F
    invoke-static {}, Lcom/smartisanos/smengine/util/TempVars;->get()Lcom/smartisanos/smengine/util/TempVars;

    move-result-object v6

    .line 397
    .local v6, "tmpVars":Lcom/smartisanos/smengine/util/TempVars;
    iget-object v3, v6, Lcom/smartisanos/smengine/util/TempVars;->vect1:Lcom/smartisanos/smengine/math/Vector3f;

    .line 398
    .local v3, "light":Lcom/smartisanos/smengine/math/Vector3f;
    const/4 v7, 0x0

    invoke-virtual {v3, v7, p1, v0}, Lcom/smartisanos/smengine/math/Vector3f;->set(FFF)Lcom/smartisanos/smengine/math/Vector3f;

    .line 399
    invoke-virtual {p0, v3}, Lcom/smartisanos/smengine/math/Vector3f;->subtract(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v7

    invoke-virtual {v7}, Lcom/smartisanos/smengine/math/Vector3f;->normalizeLocal()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v4

    .line 400
    .local v4, "lightDir":Lcom/smartisanos/smengine/math/Vector3f;
    iget v2, p0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    .line 401
    .local v2, "distanceZ":F
    neg-float v7, v2

    iget v8, v4, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    div-float v1, v7, v8

    .line 402
    .local v1, "distance":F
    invoke-virtual {v4, v1}, Lcom/smartisanos/smengine/math/Vector3f;->mult(F)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/smartisanos/smengine/math/Vector3f;->add(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v5

    .line 403
    .local v5, "result":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-virtual {v6}, Lcom/smartisanos/smengine/util/TempVars;->release()V

    .line 404
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
    .line 134
    const/high16 v32, 0x40000000    # 2.0f

    div-float v32, p1, v32

    move/from16 v0, v32

    float-to-double v0, v0

    move-wide/from16 v32, v0

    const/high16 v34, 0x40000000    # 2.0f

    mul-float v34, v34, p2

    mul-float v34, v34, p1

    move/from16 v0, v34

    float-to-double v0, v0

    move-wide/from16 v34, v0

    const-wide v36, 0x400921fb54442d18L    # Math.PI

    div-double v34, v34, v36

    sub-double v32, v32, v34

    move-wide/from16 v0, v32

    double-to-float v4, v0

    .line 136
    .local v4, "moveY":F
    move/from16 v0, p0

    neg-float v0, v0

    move/from16 v32, v0

    const/high16 v33, 0x40000000    # 2.0f

    div-float v32, v32, v33

    add-float v14, v32, p3

    .line 137
    .local v14, "xa0":F
    float-to-double v0, v4

    move-wide/from16 v32, v0

    move/from16 v0, p1

    float-to-double v0, v0

    move-wide/from16 v34, v0

    move/from16 v0, p2

    float-to-double v0, v0

    move-wide/from16 v36, v0

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->cos(D)D

    move-result-wide v36

    mul-double v34, v34, v36

    sub-double v32, v32, v34

    move-wide/from16 v0, v32

    double-to-float v0, v0

    move/from16 v32, v0

    add-float v32, v32, p4

    add-float v20, v32, p5

    .line 138
    .local v20, "ya0":F
    move/from16 v0, p1

    neg-float v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    float-to-double v0, v0

    move-wide/from16 v32, v0

    move/from16 v0, p2

    float-to-double v0, v0

    move-wide/from16 v34, v0

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->sin(D)D

    move-result-wide v34

    mul-double v32, v32, v34

    move-wide/from16 v0, v32

    double-to-float v0, v0

    move/from16 v26, v0

    .line 140
    .local v26, "za0":F
    move/from16 v0, p0

    neg-float v0, v0

    move/from16 v32, v0

    const/high16 v33, 0x40000000    # 2.0f

    div-float v32, v32, v33

    add-float v15, v32, p3

    .line 141
    .local v15, "xa1":F
    add-float v32, v4, p4

    add-float v21, v32, p5

    .line 142
    .local v21, "ya1":F
    const/16 v27, 0x0

    .line 144
    .local v27, "za1":F
    move/from16 v0, p0

    neg-float v0, v0

    move/from16 v32, v0

    const/high16 v33, 0x40000000    # 2.0f

    div-float v32, v32, v33

    add-float v16, v32, p3

    .line 145
    .local v16, "xa2":F
    float-to-double v0, v4

    move-wide/from16 v32, v0

    move/from16 v0, p1

    float-to-double v0, v0

    move-wide/from16 v34, v0

    move/from16 v0, p2

    float-to-double v0, v0

    move-wide/from16 v36, v0

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->sin(D)D

    move-result-wide v36

    mul-double v34, v34, v36

    add-double v32, v32, v34

    move-wide/from16 v0, v32

    double-to-float v0, v0

    move/from16 v32, v0

    add-float v32, v32, p4

    add-float v22, v32, p5

    .line 146
    .local v22, "ya2":F
    move/from16 v0, p1

    neg-float v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    float-to-double v0, v0

    move-wide/from16 v32, v0

    move/from16 v0, p2

    float-to-double v0, v0

    move-wide/from16 v34, v0

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->cos(D)D

    move-result-wide v34

    mul-double v32, v32, v34

    move-wide/from16 v0, v32

    double-to-float v0, v0

    move/from16 v28, v0

    .line 148
    .local v28, "za2":F
    const/16 v32, 0x6

    move/from16 v0, v32

    new-array v12, v0, [Lcom/smartisanos/smengine/math/Vector3f;

    .line 150
    .local v12, "result":[Lcom/smartisanos/smengine/math/Vector3f;
    new-instance v32, Lcom/smartisanos/smengine/math/Vector3f;

    move-object/from16 v0, v32

    move/from16 v1, v20

    move/from16 v2, v26

    invoke-direct {v0, v14, v1, v2}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    move-object/from16 v0, v32

    move/from16 v1, p5

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;->getPoint(Lcom/smartisanos/smengine/math/Vector3f;F)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v6

    .line 151
    .local v6, "pa0":Lcom/smartisanos/smengine/math/Vector3f;
    new-instance v32, Lcom/smartisanos/smengine/math/Vector3f;

    move-object/from16 v0, v32

    move/from16 v1, v21

    move/from16 v2, v27

    invoke-direct {v0, v15, v1, v2}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    move-object/from16 v0, v32

    move/from16 v1, p5

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;->getPoint(Lcom/smartisanos/smengine/math/Vector3f;F)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v7

    .line 152
    .local v7, "pa1":Lcom/smartisanos/smengine/math/Vector3f;
    new-instance v32, Lcom/smartisanos/smengine/math/Vector3f;

    move-object/from16 v0, v32

    move/from16 v1, v16

    move/from16 v2, v22

    move/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    move-object/from16 v0, v32

    move/from16 v1, p5

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;->getPoint(Lcom/smartisanos/smengine/math/Vector3f;F)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v8

    .line 153
    .local v8, "pa2":Lcom/smartisanos/smengine/math/Vector3f;
    const/16 v32, 0x0

    invoke-static {v6, v7, v8}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;->minY(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v33

    aput-object v33, v12, v32

    .line 154
    const/16 v32, 0x2

    invoke-static {v6, v7, v8}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;->maxY(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v33

    aput-object v33, v12, v32

    .line 155
    const/16 v32, 0x0

    aget-object v32, v12, v32

    move-object/from16 v0, v32

    if-eq v6, v0, :cond_2

    const/16 v32, 0x2

    aget-object v32, v12, v32

    move-object/from16 v0, v32

    if-eq v6, v0, :cond_2

    .line 156
    const/16 v32, 0x1

    aput-object v6, v12, v32

    .line 162
    :goto_0
    const/16 v32, 0x1

    aget-object v32, v12, v32

    move-object/from16 v0, v32

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v32, v0

    const/16 v33, 0x0

    aget-object v33, v12, v33

    move-object/from16 v0, v33

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v33, v0

    sub-float v32, v32, v33

    const/16 v33, 0x2

    aget-object v33, v12, v33

    move-object/from16 v0, v33

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v33, v0

    const/16 v34, 0x0

    aget-object v34, v12, v34

    move-object/from16 v0, v34

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v34, v0

    sub-float v33, v33, v34

    div-float v5, v32, v33

    .line 163
    .local v5, "p":F
    const/16 v32, 0x0

    aget-object v32, v12, v32

    move-object/from16 v0, v32

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v32, v0

    const/16 v33, 0x2

    aget-object v33, v12, v33

    move-object/from16 v0, v33

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v33, v0

    const/16 v34, 0x0

    aget-object v34, v12, v34

    move-object/from16 v0, v34

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v34, v0

    sub-float v33, v33, v34

    mul-float v33, v33, v5

    add-float v13, v32, v33

    .line 164
    .local v13, "x":F
    const/16 v32, 0x1

    aget-object v32, v12, v32

    move-object/from16 v0, v32

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v32, v0

    cmpl-float v32, v32, v13

    if-lez v32, :cond_0

    .line 165
    const/16 v32, 0x1

    aget-object v32, v12, v32

    move-object/from16 v0, v32

    iput v13, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 168
    :cond_0
    const/high16 v32, 0x40000000    # 2.0f

    div-float v32, p0, v32

    add-float v17, v32, p3

    .line 169
    .local v17, "xb0":F
    float-to-double v0, v4

    move-wide/from16 v32, v0

    move/from16 v0, p1

    float-to-double v0, v0

    move-wide/from16 v34, v0

    move/from16 v0, p2

    float-to-double v0, v0

    move-wide/from16 v36, v0

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->cos(D)D

    move-result-wide v36

    mul-double v34, v34, v36

    sub-double v32, v32, v34

    move-wide/from16 v0, v32

    double-to-float v0, v0

    move/from16 v32, v0

    add-float v32, v32, p4

    add-float v23, v32, p5

    .line 170
    .local v23, "yb0":F
    move/from16 v0, p1

    neg-float v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    float-to-double v0, v0

    move-wide/from16 v32, v0

    move/from16 v0, p2

    float-to-double v0, v0

    move-wide/from16 v34, v0

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->sin(D)D

    move-result-wide v34

    mul-double v32, v32, v34

    move-wide/from16 v0, v32

    double-to-float v0, v0

    move/from16 v29, v0

    .line 172
    .local v29, "zb0":F
    const/high16 v32, 0x40000000    # 2.0f

    div-float v32, p0, v32

    add-float v18, v32, p3

    .line 173
    .local v18, "xb1":F
    add-float v32, v4, p4

    add-float v24, v32, p5

    .line 174
    .local v24, "yb1":F
    const/16 v30, 0x0

    .line 176
    .local v30, "zb1":F
    const/high16 v32, 0x40000000    # 2.0f

    div-float v32, p0, v32

    add-float v19, v32, p3

    .line 177
    .local v19, "xb2":F
    float-to-double v0, v4

    move-wide/from16 v32, v0

    move/from16 v0, p1

    float-to-double v0, v0

    move-wide/from16 v34, v0

    move/from16 v0, p2

    float-to-double v0, v0

    move-wide/from16 v36, v0

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->sin(D)D

    move-result-wide v36

    mul-double v34, v34, v36

    add-double v32, v32, v34

    move-wide/from16 v0, v32

    double-to-float v0, v0

    move/from16 v32, v0

    add-float v32, v32, p4

    add-float v25, v32, p5

    .line 178
    .local v25, "yb2":F
    move/from16 v0, p1

    neg-float v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    float-to-double v0, v0

    move-wide/from16 v32, v0

    move/from16 v0, p2

    float-to-double v0, v0

    move-wide/from16 v34, v0

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->cos(D)D

    move-result-wide v34

    mul-double v32, v32, v34

    move-wide/from16 v0, v32

    double-to-float v0, v0

    move/from16 v31, v0

    .line 179
    .local v31, "zb2":F
    new-instance v32, Lcom/smartisanos/smengine/math/Vector3f;

    move-object/from16 v0, v32

    move/from16 v1, v17

    move/from16 v2, v23

    move/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    move-object/from16 v0, v32

    move/from16 v1, p5

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;->getPoint(Lcom/smartisanos/smengine/math/Vector3f;F)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v9

    .line 180
    .local v9, "pb0":Lcom/smartisanos/smengine/math/Vector3f;
    new-instance v32, Lcom/smartisanos/smengine/math/Vector3f;

    move-object/from16 v0, v32

    move/from16 v1, v18

    move/from16 v2, v24

    move/from16 v3, v30

    invoke-direct {v0, v1, v2, v3}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    move-object/from16 v0, v32

    move/from16 v1, p5

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;->getPoint(Lcom/smartisanos/smengine/math/Vector3f;F)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v10

    .line 181
    .local v10, "pb1":Lcom/smartisanos/smengine/math/Vector3f;
    new-instance v32, Lcom/smartisanos/smengine/math/Vector3f;

    move-object/from16 v0, v32

    move/from16 v1, v19

    move/from16 v2, v25

    move/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    move-object/from16 v0, v32

    move/from16 v1, p5

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;->getPoint(Lcom/smartisanos/smengine/math/Vector3f;F)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v11

    .line 182
    .local v11, "pb2":Lcom/smartisanos/smengine/math/Vector3f;
    const/16 v32, 0x3

    invoke-static {v9, v10, v11}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;->minY(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v33

    aput-object v33, v12, v32

    .line 183
    const/16 v32, 0x5

    invoke-static {v9, v10, v11}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;->maxY(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v33

    aput-object v33, v12, v32

    .line 184
    const/16 v32, 0x3

    aget-object v32, v12, v32

    move-object/from16 v0, v32

    if-eq v9, v0, :cond_4

    const/16 v32, 0x5

    aget-object v32, v12, v32

    move-object/from16 v0, v32

    if-eq v9, v0, :cond_4

    .line 185
    const/16 v32, 0x4

    aput-object v9, v12, v32

    .line 191
    :goto_1
    const/16 v32, 0x4

    aget-object v32, v12, v32

    move-object/from16 v0, v32

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v32, v0

    const/16 v33, 0x3

    aget-object v33, v12, v33

    move-object/from16 v0, v33

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v33, v0

    sub-float v32, v32, v33

    const/16 v33, 0x5

    aget-object v33, v12, v33

    move-object/from16 v0, v33

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v33, v0

    const/16 v34, 0x3

    aget-object v34, v12, v34

    move-object/from16 v0, v34

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v34, v0

    sub-float v33, v33, v34

    div-float v5, v32, v33

    .line 192
    const/16 v32, 0x3

    aget-object v32, v12, v32

    move-object/from16 v0, v32

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v32, v0

    const/16 v33, 0x5

    aget-object v33, v12, v33

    move-object/from16 v0, v33

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v33, v0

    const/16 v34, 0x3

    aget-object v34, v12, v34

    move-object/from16 v0, v34

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v34, v0

    sub-float v33, v33, v34

    mul-float v33, v33, v5

    add-float v13, v32, v33

    .line 193
    const/16 v32, 0x4

    aget-object v32, v12, v32

    move-object/from16 v0, v32

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v32, v0

    cmpg-float v32, v32, v13

    if-gez v32, :cond_1

    .line 194
    const/16 v32, 0x4

    aget-object v32, v12, v32

    move-object/from16 v0, v32

    iput v13, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 196
    :cond_1
    return-object v12

    .line 157
    .end local v5    # "p":F
    .end local v9    # "pb0":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v10    # "pb1":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v11    # "pb2":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v13    # "x":F
    .end local v17    # "xb0":F
    .end local v18    # "xb1":F
    .end local v19    # "xb2":F
    .end local v23    # "yb0":F
    .end local v24    # "yb1":F
    .end local v25    # "yb2":F
    .end local v29    # "zb0":F
    .end local v30    # "zb1":F
    .end local v31    # "zb2":F
    :cond_2
    const/16 v32, 0x0

    aget-object v32, v12, v32

    move-object/from16 v0, v32

    if-eq v7, v0, :cond_3

    const/16 v32, 0x2

    aget-object v32, v12, v32

    move-object/from16 v0, v32

    if-eq v7, v0, :cond_3

    .line 158
    const/16 v32, 0x1

    aput-object v7, v12, v32

    goto/16 :goto_0

    .line 160
    :cond_3
    const/16 v32, 0x1

    aput-object v8, v12, v32

    goto/16 :goto_0

    .line 186
    .restart local v5    # "p":F
    .restart local v9    # "pb0":Lcom/smartisanos/smengine/math/Vector3f;
    .restart local v10    # "pb1":Lcom/smartisanos/smengine/math/Vector3f;
    .restart local v11    # "pb2":Lcom/smartisanos/smengine/math/Vector3f;
    .restart local v13    # "x":F
    .restart local v17    # "xb0":F
    .restart local v18    # "xb1":F
    .restart local v19    # "xb2":F
    .restart local v23    # "yb0":F
    .restart local v24    # "yb1":F
    .restart local v25    # "yb2":F
    .restart local v29    # "zb0":F
    .restart local v30    # "zb1":F
    .restart local v31    # "zb2":F
    :cond_4
    const/16 v32, 0x3

    aget-object v32, v12, v32

    move-object/from16 v0, v32

    if-eq v10, v0, :cond_5

    const/16 v32, 0x5

    aget-object v32, v12, v32

    move-object/from16 v0, v32

    if-eq v10, v0, :cond_5

    .line 187
    const/16 v32, 0x4

    aput-object v10, v12, v32

    goto/16 :goto_1

    .line 189
    :cond_5
    const/16 v32, 0x4

    aput-object v11, v12, v32

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
    .line 285
    move/from16 v0, p0

    neg-float v0, v0

    move/from16 v32, v0

    const/high16 v33, 0x40000000    # 2.0f

    div-float v32, v32, v33

    move/from16 v0, v32

    float-to-double v0, v0

    move-wide/from16 v32, v0

    const/high16 v34, 0x40000000    # 2.0f

    mul-float v34, v34, p2

    mul-float v34, v34, p0

    move/from16 v0, v34

    float-to-double v0, v0

    move-wide/from16 v34, v0

    const-wide v36, 0x400921fb54442d18L    # Math.PI

    div-double v34, v34, v36

    add-double v32, v32, v34

    move-wide/from16 v0, v32

    double-to-float v4, v0

    .line 287
    .local v4, "moveX":F
    float-to-double v0, v4

    move-wide/from16 v32, v0

    move/from16 v0, p0

    float-to-double v0, v0

    move-wide/from16 v34, v0

    move/from16 v0, p2

    float-to-double v0, v0

    move-wide/from16 v36, v0

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->sin(D)D

    move-result-wide v36

    mul-double v34, v34, v36

    sub-double v32, v32, v34

    move-wide/from16 v0, v32

    double-to-float v0, v0

    move/from16 v32, v0

    add-float v13, v32, p3

    .line 288
    .local v13, "xa0":F
    move/from16 v0, p1

    neg-float v0, v0

    move/from16 v32, v0

    const/high16 v33, 0x40000000    # 2.0f

    div-float v32, v32, v33

    add-float v32, v32, p4

    add-float v20, v32, p5

    .line 289
    .local v20, "ya0":F
    move/from16 v0, p0

    neg-float v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    float-to-double v0, v0

    move-wide/from16 v32, v0

    move/from16 v0, p2

    float-to-double v0, v0

    move-wide/from16 v34, v0

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->cos(D)D

    move-result-wide v34

    mul-double v32, v32, v34

    move-wide/from16 v0, v32

    double-to-float v0, v0

    move/from16 v26, v0

    .line 291
    .local v26, "za0":F
    add-float v14, v4, p3

    .line 292
    .local v14, "xa1":F
    move/from16 v0, p1

    neg-float v0, v0

    move/from16 v32, v0

    const/high16 v33, 0x40000000    # 2.0f

    div-float v32, v32, v33

    add-float v32, v32, p4

    add-float v21, v32, p5

    .line 293
    .local v21, "ya1":F
    const/16 v27, 0x0

    .line 295
    .local v27, "za1":F
    float-to-double v0, v4

    move-wide/from16 v32, v0

    move/from16 v0, p0

    float-to-double v0, v0

    move-wide/from16 v34, v0

    move/from16 v0, p2

    float-to-double v0, v0

    move-wide/from16 v36, v0

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->cos(D)D

    move-result-wide v36

    mul-double v34, v34, v36

    add-double v32, v32, v34

    move-wide/from16 v0, v32

    double-to-float v0, v0

    move/from16 v32, v0

    add-float v15, v32, p3

    .line 296
    .local v15, "xa2":F
    move/from16 v0, p1

    neg-float v0, v0

    move/from16 v32, v0

    const/high16 v33, 0x40000000    # 2.0f

    div-float v32, v32, v33

    add-float v32, v32, p4

    add-float v22, v32, p5

    .line 297
    .local v22, "ya2":F
    move/from16 v0, p0

    neg-float v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    float-to-double v0, v0

    move-wide/from16 v32, v0

    move/from16 v0, p2

    float-to-double v0, v0

    move-wide/from16 v34, v0

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->sin(D)D

    move-result-wide v34

    mul-double v32, v32, v34

    move-wide/from16 v0, v32

    double-to-float v0, v0

    move/from16 v28, v0

    .line 299
    .local v28, "za2":F
    const/16 v32, 0x6

    move/from16 v0, v32

    new-array v12, v0, [Lcom/smartisanos/smengine/math/Vector3f;

    .line 301
    .local v12, "result":[Lcom/smartisanos/smengine/math/Vector3f;
    new-instance v32, Lcom/smartisanos/smengine/math/Vector3f;

    move-object/from16 v0, v32

    move/from16 v1, v20

    move/from16 v2, v26

    invoke-direct {v0, v13, v1, v2}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    move-object/from16 v0, v32

    move/from16 v1, p5

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;->getPoint(Lcom/smartisanos/smengine/math/Vector3f;F)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v6

    .line 302
    .local v6, "pa0":Lcom/smartisanos/smengine/math/Vector3f;
    new-instance v32, Lcom/smartisanos/smengine/math/Vector3f;

    move-object/from16 v0, v32

    move/from16 v1, v21

    move/from16 v2, v27

    invoke-direct {v0, v14, v1, v2}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    move-object/from16 v0, v32

    move/from16 v1, p5

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;->getPoint(Lcom/smartisanos/smengine/math/Vector3f;F)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v7

    .line 303
    .local v7, "pa1":Lcom/smartisanos/smengine/math/Vector3f;
    new-instance v32, Lcom/smartisanos/smengine/math/Vector3f;

    move-object/from16 v0, v32

    move/from16 v1, v22

    move/from16 v2, v28

    invoke-direct {v0, v15, v1, v2}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    move-object/from16 v0, v32

    move/from16 v1, p5

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;->getPoint(Lcom/smartisanos/smengine/math/Vector3f;F)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v8

    .line 305
    .local v8, "pa2":Lcom/smartisanos/smengine/math/Vector3f;
    const/16 v32, 0x0

    invoke-static {v6, v7, v8}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;->minX(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v33

    aput-object v33, v12, v32

    .line 306
    const/16 v32, 0x2

    invoke-static {v6, v7, v8}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;->maxX(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v33

    aput-object v33, v12, v32

    .line 307
    const/16 v32, 0x0

    aget-object v32, v12, v32

    move-object/from16 v0, v32

    if-eq v6, v0, :cond_2

    const/16 v32, 0x2

    aget-object v32, v12, v32

    move-object/from16 v0, v32

    if-eq v6, v0, :cond_2

    .line 308
    const/16 v32, 0x1

    aput-object v6, v12, v32

    .line 314
    :goto_0
    const/16 v32, 0x1

    aget-object v32, v12, v32

    move-object/from16 v0, v32

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v32, v0

    const/16 v33, 0x0

    aget-object v33, v12, v33

    move-object/from16 v0, v33

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v33, v0

    sub-float v32, v32, v33

    const/16 v33, 0x2

    aget-object v33, v12, v33

    move-object/from16 v0, v33

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v33, v0

    const/16 v34, 0x0

    aget-object v34, v12, v34

    move-object/from16 v0, v34

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v34, v0

    sub-float v33, v33, v34

    div-float v5, v32, v33

    .line 315
    .local v5, "p":F
    const/16 v32, 0x0

    aget-object v32, v12, v32

    move-object/from16 v0, v32

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v32, v0

    const/16 v33, 0x2

    aget-object v33, v12, v33

    move-object/from16 v0, v33

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v33, v0

    const/16 v34, 0x0

    aget-object v34, v12, v34

    move-object/from16 v0, v34

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v34, v0

    sub-float v33, v33, v34

    mul-float v33, v33, v5

    add-float v19, v32, v33

    .line 316
    .local v19, "y":F
    const/16 v32, 0x1

    aget-object v32, v12, v32

    move-object/from16 v0, v32

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v32, v0

    cmpl-float v32, v32, v19

    if-lez v32, :cond_0

    .line 317
    const/16 v32, 0x1

    aget-object v32, v12, v32

    move/from16 v0, v19

    move-object/from16 v1, v32

    iput v0, v1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 319
    :cond_0
    float-to-double v0, v4

    move-wide/from16 v32, v0

    move/from16 v0, p0

    float-to-double v0, v0

    move-wide/from16 v34, v0

    move/from16 v0, p2

    float-to-double v0, v0

    move-wide/from16 v36, v0

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->sin(D)D

    move-result-wide v36

    mul-double v34, v34, v36

    sub-double v32, v32, v34

    move-wide/from16 v0, v32

    double-to-float v0, v0

    move/from16 v32, v0

    add-float v16, v32, p3

    .line 320
    .local v16, "xb0":F
    const/high16 v32, 0x40000000    # 2.0f

    div-float v32, p1, v32

    add-float v32, v32, p4

    add-float v23, v32, p5

    .line 321
    .local v23, "yb0":F
    move/from16 v0, p0

    neg-float v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    float-to-double v0, v0

    move-wide/from16 v32, v0

    move/from16 v0, p2

    float-to-double v0, v0

    move-wide/from16 v34, v0

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->cos(D)D

    move-result-wide v34

    mul-double v32, v32, v34

    move-wide/from16 v0, v32

    double-to-float v0, v0

    move/from16 v29, v0

    .line 323
    .local v29, "zb0":F
    add-float v17, v4, p3

    .line 324
    .local v17, "xb1":F
    const/high16 v32, 0x40000000    # 2.0f

    div-float v32, p1, v32

    add-float v32, v32, p4

    add-float v24, v32, p5

    .line 325
    .local v24, "yb1":F
    const/16 v30, 0x0

    .line 327
    .local v30, "zb1":F
    float-to-double v0, v4

    move-wide/from16 v32, v0

    move/from16 v0, p0

    float-to-double v0, v0

    move-wide/from16 v34, v0

    move/from16 v0, p2

    float-to-double v0, v0

    move-wide/from16 v36, v0

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->cos(D)D

    move-result-wide v36

    mul-double v34, v34, v36

    add-double v32, v32, v34

    move-wide/from16 v0, v32

    double-to-float v0, v0

    move/from16 v32, v0

    add-float v18, v32, p3

    .line 328
    .local v18, "xb2":F
    const/high16 v32, 0x40000000    # 2.0f

    div-float v32, p1, v32

    add-float v32, v32, p4

    add-float v25, v32, p5

    .line 329
    .local v25, "yb2":F
    move/from16 v0, p0

    neg-float v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    float-to-double v0, v0

    move-wide/from16 v32, v0

    move/from16 v0, p2

    float-to-double v0, v0

    move-wide/from16 v34, v0

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->sin(D)D

    move-result-wide v34

    mul-double v32, v32, v34

    move-wide/from16 v0, v32

    double-to-float v0, v0

    move/from16 v31, v0

    .line 330
    .local v31, "zb2":F
    new-instance v32, Lcom/smartisanos/smengine/math/Vector3f;

    move-object/from16 v0, v32

    move/from16 v1, v16

    move/from16 v2, v23

    move/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    move-object/from16 v0, v32

    move/from16 v1, p5

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;->getPoint(Lcom/smartisanos/smengine/math/Vector3f;F)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v9

    .line 331
    .local v9, "pb0":Lcom/smartisanos/smengine/math/Vector3f;
    new-instance v32, Lcom/smartisanos/smengine/math/Vector3f;

    move-object/from16 v0, v32

    move/from16 v1, v17

    move/from16 v2, v24

    move/from16 v3, v30

    invoke-direct {v0, v1, v2, v3}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    move-object/from16 v0, v32

    move/from16 v1, p5

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;->getPoint(Lcom/smartisanos/smengine/math/Vector3f;F)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v10

    .line 332
    .local v10, "pb1":Lcom/smartisanos/smengine/math/Vector3f;
    new-instance v32, Lcom/smartisanos/smengine/math/Vector3f;

    move-object/from16 v0, v32

    move/from16 v1, v18

    move/from16 v2, v25

    move/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    move-object/from16 v0, v32

    move/from16 v1, p5

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;->getPoint(Lcom/smartisanos/smengine/math/Vector3f;F)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v11

    .line 333
    .local v11, "pb2":Lcom/smartisanos/smengine/math/Vector3f;
    const/16 v32, 0x3

    invoke-static {v9, v10, v11}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;->minX(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v33

    aput-object v33, v12, v32

    .line 334
    const/16 v32, 0x5

    invoke-static {v9, v10, v11}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;->maxX(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v33

    aput-object v33, v12, v32

    .line 335
    const/16 v32, 0x3

    aget-object v32, v12, v32

    move-object/from16 v0, v32

    if-eq v9, v0, :cond_4

    const/16 v32, 0x5

    aget-object v32, v12, v32

    move-object/from16 v0, v32

    if-eq v9, v0, :cond_4

    .line 336
    const/16 v32, 0x4

    aput-object v9, v12, v32

    .line 342
    :goto_1
    const/16 v32, 0x4

    aget-object v32, v12, v32

    move-object/from16 v0, v32

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v32, v0

    const/16 v33, 0x3

    aget-object v33, v12, v33

    move-object/from16 v0, v33

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v33, v0

    sub-float v32, v32, v33

    const/16 v33, 0x5

    aget-object v33, v12, v33

    move-object/from16 v0, v33

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v33, v0

    const/16 v34, 0x3

    aget-object v34, v12, v34

    move-object/from16 v0, v34

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v34, v0

    sub-float v33, v33, v34

    div-float v5, v32, v33

    .line 343
    const/16 v32, 0x3

    aget-object v32, v12, v32

    move-object/from16 v0, v32

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v32, v0

    const/16 v33, 0x5

    aget-object v33, v12, v33

    move-object/from16 v0, v33

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v33, v0

    const/16 v34, 0x3

    aget-object v34, v12, v34

    move-object/from16 v0, v34

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v34, v0

    sub-float v33, v33, v34

    mul-float v33, v33, v5

    add-float v19, v32, v33

    .line 344
    const/16 v32, 0x4

    aget-object v32, v12, v32

    move-object/from16 v0, v32

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v32, v0

    cmpg-float v32, v32, v19

    if-gez v32, :cond_1

    .line 345
    const/16 v32, 0x4

    aget-object v32, v12, v32

    move/from16 v0, v19

    move-object/from16 v1, v32

    iput v0, v1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 347
    :cond_1
    return-object v12

    .line 309
    .end local v5    # "p":F
    .end local v9    # "pb0":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v10    # "pb1":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v11    # "pb2":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v16    # "xb0":F
    .end local v17    # "xb1":F
    .end local v18    # "xb2":F
    .end local v19    # "y":F
    .end local v23    # "yb0":F
    .end local v24    # "yb1":F
    .end local v25    # "yb2":F
    .end local v29    # "zb0":F
    .end local v30    # "zb1":F
    .end local v31    # "zb2":F
    :cond_2
    const/16 v32, 0x0

    aget-object v32, v12, v32

    move-object/from16 v0, v32

    if-eq v7, v0, :cond_3

    const/16 v32, 0x2

    aget-object v32, v12, v32

    move-object/from16 v0, v32

    if-eq v7, v0, :cond_3

    .line 310
    const/16 v32, 0x1

    aput-object v7, v12, v32

    goto/16 :goto_0

    .line 312
    :cond_3
    const/16 v32, 0x1

    aput-object v8, v12, v32

    goto/16 :goto_0

    .line 337
    .restart local v5    # "p":F
    .restart local v9    # "pb0":Lcom/smartisanos/smengine/math/Vector3f;
    .restart local v10    # "pb1":Lcom/smartisanos/smengine/math/Vector3f;
    .restart local v11    # "pb2":Lcom/smartisanos/smengine/math/Vector3f;
    .restart local v16    # "xb0":F
    .restart local v17    # "xb1":F
    .restart local v18    # "xb2":F
    .restart local v19    # "y":F
    .restart local v23    # "yb0":F
    .restart local v24    # "yb1":F
    .restart local v25    # "yb2":F
    .restart local v29    # "zb0":F
    .restart local v30    # "zb1":F
    .restart local v31    # "zb2":F
    :cond_4
    const/16 v32, 0x3

    aget-object v32, v12, v32

    move-object/from16 v0, v32

    if-eq v10, v0, :cond_5

    const/16 v32, 0x5

    aget-object v32, v12, v32

    move-object/from16 v0, v32

    if-eq v10, v0, :cond_5

    .line 338
    const/16 v32, 0x4

    aput-object v10, v12, v32

    goto/16 :goto_1

    .line 340
    :cond_5
    const/16 v32, 0x4

    aput-object v11, v12, v32

    goto/16 :goto_1
.end method

.method private static maxX(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;
    .locals 3
    .param p0, "v0"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p1, "v1"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p2, "v2"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 351
    move-object v0, p2

    .line 352
    .local v0, "result":Lcom/smartisanos/smengine/math/Vector3f;
    iget v1, p0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v2, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 353
    move-object v0, p0

    .line 355
    :cond_0
    iget v1, p1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v2, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 356
    move-object v0, p1

    .line 358
    :cond_1
    return-object v0
.end method

.method private static maxY(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;
    .locals 3
    .param p0, "v0"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p1, "v1"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p2, "v2"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 373
    move-object v0, p0

    .line 374
    .local v0, "result":Lcom/smartisanos/smengine/math/Vector3f;
    iget v1, p1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v2, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 375
    move-object v0, p1

    .line 377
    :cond_0
    iget v1, p2, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v2, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 378
    move-object v0, p2

    .line 380
    :cond_1
    return-object v0
.end method

.method private static minX(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;
    .locals 3
    .param p0, "v0"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p1, "v1"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p2, "v2"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 362
    move-object v0, p0

    .line 363
    .local v0, "result":Lcom/smartisanos/smengine/math/Vector3f;
    iget v1, p1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v2, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 364
    move-object v0, p1

    .line 366
    :cond_0
    iget v1, p2, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v2, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 367
    move-object v0, p2

    .line 369
    :cond_1
    return-object v0
.end method

.method private static minY(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;
    .locals 3
    .param p0, "v0"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p1, "v1"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p2, "v2"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 384
    move-object v0, p2

    .line 385
    .local v0, "result":Lcom/smartisanos/smengine/math/Vector3f;
    iget v1, p0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v2, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 386
    move-object v0, p0

    .line 388
    :cond_0
    iget v1, p1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v2, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 389
    move-object v0, p1

    .line 391
    :cond_1
    return-object v0
.end method


.method public getDrawAnimIndex(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 37
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;->mDrawAnimIndex:[I

    aget v0, v0, p1

    return v0
.end method

.method public getDrawPositionOffset(I)Lcom/smartisanos/smengine/math/Vector3f;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 41
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;->mPosOffsetList:[Lcom/smartisanos/smengine/math/Vector3f;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getDrawTimes()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;->mDrawTimes:I

    return v0
.end method

.method public setDrawAnimIndex(II)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "animIndex"    # I

    .prologue
    .line 33
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;->mDrawAnimIndex:[I

    aput p2, v0, p1

    .line 34
    return-void
.end method

.method public setDrawPositionOffset(ILcom/smartisanos/smengine/math/Vector3f;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "posOffset"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;->mPosOffsetList:[Lcom/smartisanos/smengine/math/Vector3f;

    iget v1, p0, Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;->mScale:F

    invoke-virtual {p2, v1}, Lcom/smartisanos/smengine/math/Vector3f;->mult(F)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v1

    aput-object v1, v0, p1

    .line 46
    return-void
.end method
