.class public Lcom/smartisanos/launcher/animations/PageScrollShadowRotateIcon;
.super Lcom/smartisanos/smengine/SceneNode;
.source "PageScrollShadowRotateIcon.java"


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

    iput-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollShadowRotateIcon;->mPosOffsetList:[Lcom/smartisanos/smengine/math/Vector3f;

    .line 24
    new-array v0, p2, [I

    iput-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollShadowRotateIcon;->mDrawAnimIndex:[I

    .line 25
    iput p2, p0, Lcom/smartisanos/launcher/animations/PageScrollShadowRotateIcon;->mDrawTimes:I

    .line 26
    iput p3, p0, Lcom/smartisanos/launcher/animations/PageScrollShadowRotateIcon;->mScale:F

    .line 27
    return-void
.end method

.method public static create(Ljava/lang/String;FFFFIF)Lcom/smartisanos/launcher/animations/PageScrollShadowRotateIcon;
    .locals 10
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "w"    # F
    .param p2, "h"    # F
    .param p3, "localX"    # F
    .param p4, "localY"    # F
    .param p5, "sampleCount"    # I
    .param p6, "offsetY"    # F

    .prologue
    .line 206
    sget v0, Lcom/smartisanos/launcher/data/Constants;->mainCameraZ:I

    int-to-float v0, v0

    add-float/2addr v0, p1

    sget v1, Lcom/smartisanos/launcher/data/Constants;->mainCameraZ:I

    int-to-float v1, v1

    div-float v9, v0, v1

    .line 207
    .local v9, "scale":F
    new-instance v8, Lcom/smartisanos/launcher/animations/PageScrollShadowRotateIcon;

    const/4 v0, 0x1

    invoke-direct {v8, p0, v0, v9}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotateIcon;-><init>(Ljava/lang/String;IF)V

    .local v8, "pageScrollShadow":Lcom/smartisanos/launcher/animations/PageScrollShadowRotateIcon;
    move v0, p1

    move v1, p2

    move v2, p5

    move v3, p3

    move v4, p4

    move/from16 v5, p6

    .line 208
    invoke-static/range {v0 .. v5}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotateIcon;->createMesh(FFIFFF)Lcom/smartisanos/smengine/Mesh;

    move-result-object v7

    .line 209
    .local v7, "mesh":Lcom/smartisanos/smengine/Mesh;
    invoke-virtual {v8, v7}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotateIcon;->setMesh(Lcom/smartisanos/smengine/Mesh;)V

    .line 210
    const-string v0, "DrawMultiTimesMaterial"

    invoke-static {v0}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v6

    .line 211
    .local v6, "m":Lcom/smartisanos/smengine/mymaterial/Material;
    invoke-virtual {v8, v6}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotateIcon;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 212
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotateIcon;->setRenderQueue(I)V

    .line 213
    invoke-virtual {v8}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotateIcon;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RenderState;->setIsEnableDepthTest(Z)V

    .line 214
    invoke-virtual {v8}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotateIcon;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RenderState;->setIsUseVBO(Z)V

    .line 215
    invoke-virtual {v8}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotateIcon;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RenderState;->setDepthTestFunc(I)V

    .line 216
    invoke-virtual {v8}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotateIcon;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RenderState;->setIsEnableBlend(Z)V

    .line 217
    invoke-virtual {v8}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotateIcon;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RenderState;->setIsCullFaceEnable(Z)V

    .line 218
    const/4 v0, 0x2

    invoke-virtual {v8, v0}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotateIcon;->setLayer(I)V

    .line 219
    const-string v0, "page_scroll_rotate_icon.png"

    invoke-static {v0}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotateIcon;->setImageName(Ljava/lang/String;)V

    .line 220
    return-object v8
.end method

.method public static create(Ljava/lang/String;IFFLcom/smartisanos/smengine/math/Vector3f;FIF)Lcom/smartisanos/launcher/animations/PageScrollShadowRotateIcon;
    .locals 10
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "rectNum"    # I
    .param p2, "w"    # F
    .param p3, "h"    # F
    .param p4, "light"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p5, "zPlat"    # F
    .param p6, "sampleCount"    # I
    .param p7, "offsetY"    # F

    .prologue
    .line 50
    neg-float v0, p5

    sget v1, Lcom/smartisanos/launcher/data/Constants;->mainCameraZ:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    sget v1, Lcom/smartisanos/launcher/data/Constants;->mainCameraZ:I

    int-to-float v1, v1

    div-float v5, v0, v1

    .line 51
    .local v5, "scale":F
    new-instance v9, Lcom/smartisanos/launcher/animations/PageScrollShadowRotateIcon;

    invoke-direct {v9, p0, p1, v5}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotateIcon;-><init>(Ljava/lang/String;IF)V

    .local v9, "pageScrollShadow":Lcom/smartisanos/launcher/animations/PageScrollShadowRotateIcon;
    move v0, p2

    move v1, p3

    move-object v2, p4

    move v3, p5

    move/from16 v4, p6

    move/from16 v6, p7

    .line 52
    invoke-static/range {v0 .. v6}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotateIcon;->createMesh(FFLcom/smartisanos/smengine/math/Vector3f;FIFF)Lcom/smartisanos/smengine/Mesh;

    move-result-object v8

    .line 53
    .local v8, "mesh":Lcom/smartisanos/smengine/Mesh;
    invoke-virtual {v9, v8}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotateIcon;->setMesh(Lcom/smartisanos/smengine/Mesh;)V

    .line 54
    const-string v0, "DrawMultiTimesMaterial"

    invoke-static {v0}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v7

    .line 55
    .local v7, "m":Lcom/smartisanos/smengine/mymaterial/Material;
    invoke-virtual {v9, v7}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotateIcon;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 56
    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotateIcon;->setRenderQueue(I)V

    .line 57
    invoke-virtual {v9}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotateIcon;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RenderState;->setIsEnableDepthTest(Z)V

    .line 58
    invoke-virtual {v9}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotateIcon;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RenderState;->setIsUseVBO(Z)V

    .line 59
    invoke-virtual {v9}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotateIcon;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RenderState;->setDepthTestFunc(I)V

    .line 60
    invoke-virtual {v9}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotateIcon;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RenderState;->setIsEnableBlend(Z)V

    .line 61
    invoke-virtual {v9}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotateIcon;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RenderState;->setIsCullFaceEnable(Z)V

    .line 62
    const/4 v0, 0x2

    invoke-virtual {v9, v0}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotateIcon;->setLayer(I)V

    .line 63
    const-string v0, "page_scroll_rotate_icon.png"

    invoke-static {v0}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotateIcon;->setImageName(Ljava/lang/String;)V

    .line 64
    return-object v9
.end method

.method private static createMesh(FFIFFF)Lcom/smartisanos/smengine/Mesh;
    .locals 23
    .param p0, "w"    # F
    .param p1, "h"    # F
    .param p2, "sampleCount"    # I
    .param p3, "localX"    # F
    .param p4, "localY"    # F
    .param p5, "offsetY"    # F

    .prologue
    .line 224
    sget v2, Lcom/smartisanos/launcher/data/Constants;->mainCameraZ:I

    int-to-float v2, v2

    add-float v2, v2, p0

    sget v3, Lcom/smartisanos/launcher/data/Constants;->mainCameraZ:I

    int-to-float v3, v3

    div-float v20, v2, v3

    .line 225
    .local v20, "scale":F
    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v2, v2, v20

    mul-float v14, v2, p5

    .line 226
    .local v14, "offsetYscale":F
    move/from16 v17, p2

    .line 227
    .local v17, "rectNum":I
    mul-int/lit8 v2, v17, 0x8

    mul-int/lit8 v2, v2, 0x3

    new-array v15, v2, [F

    .line 228
    .local v15, "points":[F
    mul-int/lit8 v2, v17, 0x8

    mul-int/lit8 v2, v2, 0x2

    new-array v0, v2, [F

    move-object/from16 v21, v0

    .line 229
    .local v21, "texPoints":[F
    mul-int/lit8 v2, v17, 0x4

    mul-int/lit8 v2, v2, 0x3

    new-array v8, v2, [S

    .line 230
    .local v8, "faces":[S
    const v2, 0x3dcccccd    # 0.1f

    mul-float v18, p0, v2

    .line 231
    .local v18, "sX":F
    const v2, 0x3dcccccd    # 0.1f

    mul-float v19, p1, v2

    .line 232
    .local v19, "sY":F
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    move/from16 v0, v17

    if-ge v11, v0, :cond_0

    .line 233
    const-wide v2, 0x400921fb54442d18L    # Math.PI

    int-to-double v6, v11

    mul-double/2addr v2, v6

    move/from16 v0, p2

    int-to-double v6, v0

    div-double/2addr v2, v6

    double-to-float v4, v2

    .local v4, "angle":F
    move/from16 v2, p0

    move/from16 v3, p1

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    .line 234
    invoke-static/range {v2 .. v7}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotateIcon;->getPoints(FFFFFF)[Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v16

    .line 235
    .local v16, "ps":[Lcom/smartisanos/smengine/math/Vector3f;
    mul-int/lit8 v12, v11, 0x18

    .line 236
    .local v12, "index":I
    add-int/lit8 v2, v12, 0x0

    const/4 v3, 0x0

    aget-object v3, v16, v3

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    sub-float v3, v3, v18

    mul-float v3, v3, v20

    aput v3, v15, v2

    .line 237
    add-int/lit8 v2, v12, 0x1

    const/4 v3, 0x0

    aget-object v3, v16, v3

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    sub-float v3, v3, v19

    mul-float v3, v3, v20

    add-float/2addr v3, v14

    aput v3, v15, v2

    .line 238
    add-int/lit8 v2, v12, 0x2

    move/from16 v0, p0

    neg-float v3, v0

    aput v3, v15, v2

    .line 239
    add-int/lit8 v2, v12, 0x3

    const/4 v3, 0x1

    aget-object v3, v16, v3

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    mul-float v3, v3, v20

    aput v3, v15, v2

    .line 240
    add-int/lit8 v2, v12, 0x4

    const/4 v3, 0x1

    aget-object v3, v16, v3

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    sub-float v3, v3, v19

    mul-float v3, v3, v20

    add-float/2addr v3, v14

    aput v3, v15, v2

    .line 241
    add-int/lit8 v2, v12, 0x5

    move/from16 v0, p0

    neg-float v3, v0

    aput v3, v15, v2

    .line 242
    add-int/lit8 v2, v12, 0x6

    const/4 v3, 0x4

    aget-object v3, v16, v3

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    mul-float v3, v3, v20

    aput v3, v15, v2

    .line 243
    add-int/lit8 v2, v12, 0x7

    const/4 v3, 0x4

    aget-object v3, v16, v3

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    add-float v3, v3, v19

    mul-float v3, v3, v20

    add-float/2addr v3, v14

    aput v3, v15, v2

    .line 244
    add-int/lit8 v2, v12, 0x8

    move/from16 v0, p0

    neg-float v3, v0

    aput v3, v15, v2

    .line 245
    add-int/lit8 v2, v12, 0x9

    const/4 v3, 0x3

    aget-object v3, v16, v3

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    sub-float v3, v3, v18

    mul-float v3, v3, v20

    aput v3, v15, v2

    .line 246
    add-int/lit8 v2, v12, 0xa

    const/4 v3, 0x3

    aget-object v3, v16, v3

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    add-float v3, v3, v19

    mul-float v3, v3, v20

    add-float/2addr v3, v14

    aput v3, v15, v2

    .line 247
    add-int/lit8 v2, v12, 0xb

    move/from16 v0, p0

    neg-float v3, v0

    aput v3, v15, v2

    .line 249
    add-int/lit8 v2, v12, 0xc

    const/4 v3, 0x1

    aget-object v3, v16, v3

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    mul-float v3, v3, v20

    aput v3, v15, v2

    .line 250
    add-int/lit8 v2, v12, 0xd

    const/4 v3, 0x1

    aget-object v3, v16, v3

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    sub-float v3, v3, v19

    mul-float v3, v3, v20

    add-float/2addr v3, v14

    aput v3, v15, v2

    .line 251
    add-int/lit8 v2, v12, 0xe

    move/from16 v0, p0

    neg-float v3, v0

    aput v3, v15, v2

    .line 252
    add-int/lit8 v2, v12, 0xf

    const/4 v3, 0x2

    aget-object v3, v16, v3

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    add-float v3, v3, v18

    mul-float v3, v3, v20

    aput v3, v15, v2

    .line 253
    add-int/lit8 v2, v12, 0x10

    const/4 v3, 0x2

    aget-object v3, v16, v3

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    sub-float v3, v3, v19

    mul-float v3, v3, v20

    add-float/2addr v3, v14

    aput v3, v15, v2

    .line 254
    add-int/lit8 v2, v12, 0x11

    move/from16 v0, p0

    neg-float v3, v0

    aput v3, v15, v2

    .line 255
    add-int/lit8 v2, v12, 0x12

    const/4 v3, 0x5

    aget-object v3, v16, v3

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    add-float v3, v3, v18

    mul-float v3, v3, v20

    aput v3, v15, v2

    .line 256
    add-int/lit8 v2, v12, 0x13

    const/4 v3, 0x5

    aget-object v3, v16, v3

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    add-float v3, v3, v19

    mul-float v3, v3, v20

    add-float/2addr v3, v14

    aput v3, v15, v2

    .line 257
    add-int/lit8 v2, v12, 0x14

    move/from16 v0, p0

    neg-float v3, v0

    aput v3, v15, v2

    .line 258
    add-int/lit8 v2, v12, 0x15

    const/4 v3, 0x4

    aget-object v3, v16, v3

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    mul-float v3, v3, v20

    aput v3, v15, v2

    .line 259
    add-int/lit8 v2, v12, 0x16

    const/4 v3, 0x4

    aget-object v3, v16, v3

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    add-float v3, v3, v19

    mul-float v3, v3, v20

    add-float/2addr v3, v14

    aput v3, v15, v2

    .line 260
    add-int/lit8 v2, v12, 0x17

    move/from16 v0, p0

    neg-float v3, v0

    aput v3, v15, v2

    .line 262
    mul-int/lit8 v12, v11, 0x10

    .line 263
    const/4 v2, 0x2

    aget-object v2, v16, v2

    iget v2, v2, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    const/4 v3, 0x0

    aget-object v3, v16, v3

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v3, v3, v18

    add-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v3, v3, p0

    div-float v22, v2, v3

    .line 264
    .local v22, "v":F
    add-int/lit8 v2, v12, 0x0

    const/4 v3, 0x0

    aput v3, v21, v2

    .line 265
    add-int/lit8 v2, v12, 0x1

    const/4 v3, 0x0

    aput v3, v21, v2

    .line 266
    add-int/lit8 v2, v12, 0x2

    aput v22, v21, v2

    .line 267
    add-int/lit8 v2, v12, 0x3

    const/4 v3, 0x0

    aput v3, v21, v2

    .line 268
    add-int/lit8 v2, v12, 0x4

    aput v22, v21, v2

    .line 269
    add-int/lit8 v2, v12, 0x5

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v21, v2

    .line 270
    add-int/lit8 v2, v12, 0x6

    const/4 v3, 0x0

    aput v3, v21, v2

    .line 271
    add-int/lit8 v2, v12, 0x7

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v21, v2

    .line 273
    add-int/lit8 v2, v12, 0x8

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v3, v3, v22

    aput v3, v21, v2

    .line 274
    add-int/lit8 v2, v12, 0x9

    const/4 v3, 0x0

    aput v3, v21, v2

    .line 275
    add-int/lit8 v2, v12, 0xa

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v21, v2

    .line 276
    add-int/lit8 v2, v12, 0xb

    const/4 v3, 0x0

    aput v3, v21, v2

    .line 277
    add-int/lit8 v2, v12, 0xc

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v21, v2

    .line 278
    add-int/lit8 v2, v12, 0xd

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v21, v2

    .line 279
    add-int/lit8 v2, v12, 0xe

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v3, v3, v22

    aput v3, v21, v2

    .line 280
    add-int/lit8 v2, v12, 0xf

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v21, v2

    .line 281
    mul-int/lit8 v12, v11, 0xc

    .line 282
    mul-int/lit8 v13, v11, 0x8

    .line 283
    .local v13, "m":I
    add-int/lit8 v2, v12, 0x0

    add-int/lit8 v3, v13, 0x0

    int-to-short v3, v3

    aput-short v3, v8, v2

    .line 284
    add-int/lit8 v2, v12, 0x1

    add-int/lit8 v3, v13, 0x1

    int-to-short v3, v3

    aput-short v3, v8, v2

    .line 285
    add-int/lit8 v2, v12, 0x2

    add-int/lit8 v3, v13, 0x2

    int-to-short v3, v3

    aput-short v3, v8, v2

    .line 286
    add-int/lit8 v2, v12, 0x3

    add-int/lit8 v3, v13, 0x2

    int-to-short v3, v3

    aput-short v3, v8, v2

    .line 287
    add-int/lit8 v2, v12, 0x4

    add-int/lit8 v3, v13, 0x3

    int-to-short v3, v3

    aput-short v3, v8, v2

    .line 288
    add-int/lit8 v2, v12, 0x5

    add-int/lit8 v3, v13, 0x0

    int-to-short v3, v3

    aput-short v3, v8, v2

    .line 289
    add-int/lit8 v2, v12, 0x6

    add-int/lit8 v3, v13, 0x4

    int-to-short v3, v3

    aput-short v3, v8, v2

    .line 290
    add-int/lit8 v2, v12, 0x7

    add-int/lit8 v3, v13, 0x5

    int-to-short v3, v3

    aput-short v3, v8, v2

    .line 291
    add-int/lit8 v2, v12, 0x8

    add-int/lit8 v3, v13, 0x6

    int-to-short v3, v3

    aput-short v3, v8, v2

    .line 292
    add-int/lit8 v2, v12, 0x9

    add-int/lit8 v3, v13, 0x6

    int-to-short v3, v3

    aput-short v3, v8, v2

    .line 293
    add-int/lit8 v2, v12, 0xa

    add-int/lit8 v3, v13, 0x7

    int-to-short v3, v3

    aput-short v3, v8, v2

    .line 294
    add-int/lit8 v2, v12, 0xb

    add-int/lit8 v3, v13, 0x4

    int-to-short v3, v3

    aput-short v3, v8, v2

    .line 232
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 297
    .end local v4    # "angle":F
    .end local v12    # "index":I
    .end local v13    # "m":I
    .end local v16    # "ps":[Lcom/smartisanos/smengine/math/Vector3f;
    .end local v22    # "v":F
    :cond_0
    new-instance v5, Lcom/smartisanos/smengine/Mesh;

    invoke-direct {v5}, Lcom/smartisanos/smengine/Mesh;-><init>()V

    .line 298
    .local v5, "mesh":Lcom/smartisanos/smengine/Mesh;
    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v6, v15

    move-object/from16 v7, v21

    invoke-virtual/range {v5 .. v10}, Lcom/smartisanos/smengine/Mesh;->create([F[F[S[FZ)V

    .line 299
    return-object v5
.end method

.method private static createMesh(FFLcom/smartisanos/smengine/math/Vector3f;FIFF)Lcom/smartisanos/smengine/Mesh;
    .locals 19
    .param p0, "w"    # F
    .param p1, "h"    # F
    .param p2, "light"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p3, "zPlat"    # F
    .param p4, "sampleCount"    # I
    .param p5, "scale"    # F
    .param p6, "offsetY"    # F

    .prologue
    .line 68
    move/from16 v16, p4

    .line 69
    .local v16, "rectNum":I
    mul-int/lit8 v2, v16, 0x8

    mul-int/lit8 v2, v2, 0x3

    new-array v14, v2, [F

    .line 70
    .local v14, "points":[F
    mul-int/lit8 v2, v16, 0x8

    mul-int/lit8 v2, v2, 0x2

    new-array v0, v2, [F

    move-object/from16 v17, v0

    .line 71
    .local v17, "texPoints":[F
    mul-int/lit8 v2, v16, 0x4

    mul-int/lit8 v2, v2, 0x3

    new-array v8, v2, [S

    .line 73
    .local v8, "faces":[S
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    move/from16 v0, v16

    if-ge v11, v0, :cond_0

    .line 74
    const-wide v2, 0x400921fb54442d18L    # Math.PI

    int-to-double v6, v11

    mul-double/2addr v2, v6

    move/from16 v0, p4

    int-to-double v6, v0

    div-double/2addr v2, v6

    double-to-float v4, v2

    .local v4, "angle":F
    move/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p6

    .line 75
    invoke-static/range {v2 .. v7}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotateIcon;->getPoints(FFFLcom/smartisanos/smengine/math/Vector3f;FF)[Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v15

    .line 76
    .local v15, "ps":[Lcom/smartisanos/smengine/math/Vector3f;
    mul-int/lit8 v12, v11, 0x18

    .line 77
    .local v12, "index":I
    add-int/lit8 v2, v12, 0x0

    const/4 v3, 0x0

    aget-object v3, v15, v3

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    aput v3, v14, v2

    .line 78
    add-int/lit8 v2, v12, 0x1

    const/4 v3, 0x0

    aget-object v3, v15, v3

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    aput v3, v14, v2

    .line 79
    add-int/lit8 v2, v12, 0x2

    const/4 v3, 0x0

    aget-object v3, v15, v3

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    aput v3, v14, v2

    .line 80
    add-int/lit8 v2, v12, 0x3

    const/4 v3, 0x1

    aget-object v3, v15, v3

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    aput v3, v14, v2

    .line 81
    add-int/lit8 v2, v12, 0x4

    const/4 v3, 0x1

    aget-object v3, v15, v3

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    aput v3, v14, v2

    .line 82
    add-int/lit8 v2, v12, 0x5

    const/4 v3, 0x1

    aget-object v3, v15, v3

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    aput v3, v14, v2

    .line 83
    add-int/lit8 v2, v12, 0x6

    const/4 v3, 0x4

    aget-object v3, v15, v3

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    aput v3, v14, v2

    .line 84
    add-int/lit8 v2, v12, 0x7

    const/4 v3, 0x4

    aget-object v3, v15, v3

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    aput v3, v14, v2

    .line 85
    add-int/lit8 v2, v12, 0x8

    const/4 v3, 0x4

    aget-object v3, v15, v3

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    aput v3, v14, v2

    .line 86
    add-int/lit8 v2, v12, 0x9

    const/4 v3, 0x3

    aget-object v3, v15, v3

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    aput v3, v14, v2

    .line 87
    add-int/lit8 v2, v12, 0xa

    const/4 v3, 0x3

    aget-object v3, v15, v3

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    aput v3, v14, v2

    .line 88
    add-int/lit8 v2, v12, 0xb

    const/4 v3, 0x3

    aget-object v3, v15, v3

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    aput v3, v14, v2

    .line 90
    add-int/lit8 v2, v12, 0xc

    const/4 v3, 0x1

    aget-object v3, v15, v3

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    aput v3, v14, v2

    .line 91
    add-int/lit8 v2, v12, 0xd

    const/4 v3, 0x1

    aget-object v3, v15, v3

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    aput v3, v14, v2

    .line 92
    add-int/lit8 v2, v12, 0xe

    const/4 v3, 0x1

    aget-object v3, v15, v3

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    aput v3, v14, v2

    .line 93
    add-int/lit8 v2, v12, 0xf

    const/4 v3, 0x2

    aget-object v3, v15, v3

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    aput v3, v14, v2

    .line 94
    add-int/lit8 v2, v12, 0x10

    const/4 v3, 0x2

    aget-object v3, v15, v3

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    aput v3, v14, v2

    .line 95
    add-int/lit8 v2, v12, 0x11

    const/4 v3, 0x2

    aget-object v3, v15, v3

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    aput v3, v14, v2

    .line 96
    add-int/lit8 v2, v12, 0x12

    const/4 v3, 0x5

    aget-object v3, v15, v3

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    aput v3, v14, v2

    .line 97
    add-int/lit8 v2, v12, 0x13

    const/4 v3, 0x5

    aget-object v3, v15, v3

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    aput v3, v14, v2

    .line 98
    add-int/lit8 v2, v12, 0x14

    const/4 v3, 0x5

    aget-object v3, v15, v3

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    aput v3, v14, v2

    .line 99
    add-int/lit8 v2, v12, 0x15

    const/4 v3, 0x4

    aget-object v3, v15, v3

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    aput v3, v14, v2

    .line 100
    add-int/lit8 v2, v12, 0x16

    const/4 v3, 0x4

    aget-object v3, v15, v3

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    aput v3, v14, v2

    .line 101
    add-int/lit8 v2, v12, 0x17

    const/4 v3, 0x4

    aget-object v3, v15, v3

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    aput v3, v14, v2

    .line 103
    mul-int/lit8 v12, v11, 0x10

    .line 104
    const/4 v2, 0x2

    aget-object v2, v15, v2

    iget v2, v2, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    const/4 v3, 0x0

    aget-object v3, v15, v3

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v6, 0x4

    aget-object v6, v15, v6

    iget v6, v6, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    const/4 v7, 0x1

    aget-object v7, v15, v7

    iget v7, v7, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    sub-float/2addr v6, v7

    mul-float/2addr v3, v6

    div-float v18, v2, v3

    .line 105
    .local v18, "v":F
    const/high16 v2, 0x40400000    # 3.0f

    mul-float v2, v2, v18

    const/high16 v3, 0x40a00000    # 5.0f

    div-float/2addr v2, v3

    const v3, 0x3e4ccccd    # 0.2f

    add-float v18, v2, v3

    .line 106
    add-int/lit8 v2, v12, 0x0

    const/4 v3, 0x0

    aput v3, v17, v2

    .line 107
    add-int/lit8 v2, v12, 0x1

    const/4 v3, 0x0

    aput v3, v17, v2

    .line 108
    add-int/lit8 v2, v12, 0x2

    aput v18, v17, v2

    .line 109
    add-int/lit8 v2, v12, 0x3

    const/4 v3, 0x0

    aput v3, v17, v2

    .line 110
    add-int/lit8 v2, v12, 0x4

    aput v18, v17, v2

    .line 111
    add-int/lit8 v2, v12, 0x5

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v17, v2

    .line 112
    add-int/lit8 v2, v12, 0x6

    const/4 v3, 0x0

    aput v3, v17, v2

    .line 113
    add-int/lit8 v2, v12, 0x7

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v17, v2

    .line 115
    add-int/lit8 v2, v12, 0x8

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v3, v3, v18

    aput v3, v17, v2

    .line 116
    add-int/lit8 v2, v12, 0x9

    const/4 v3, 0x0

    aput v3, v17, v2

    .line 117
    add-int/lit8 v2, v12, 0xa

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v17, v2

    .line 118
    add-int/lit8 v2, v12, 0xb

    const/4 v3, 0x0

    aput v3, v17, v2

    .line 119
    add-int/lit8 v2, v12, 0xc

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v17, v2

    .line 120
    add-int/lit8 v2, v12, 0xd

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v17, v2

    .line 121
    add-int/lit8 v2, v12, 0xe

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v3, v3, v18

    aput v3, v17, v2

    .line 122
    add-int/lit8 v2, v12, 0xf

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v17, v2

    .line 123
    mul-int/lit8 v12, v11, 0xc

    .line 124
    mul-int/lit8 v13, v11, 0x8

    .line 125
    .local v13, "m":I
    add-int/lit8 v2, v12, 0x0

    add-int/lit8 v3, v13, 0x0

    int-to-short v3, v3

    aput-short v3, v8, v2

    .line 126
    add-int/lit8 v2, v12, 0x1

    add-int/lit8 v3, v13, 0x1

    int-to-short v3, v3

    aput-short v3, v8, v2

    .line 127
    add-int/lit8 v2, v12, 0x2

    add-int/lit8 v3, v13, 0x2

    int-to-short v3, v3

    aput-short v3, v8, v2

    .line 128
    add-int/lit8 v2, v12, 0x3

    add-int/lit8 v3, v13, 0x2

    int-to-short v3, v3

    aput-short v3, v8, v2

    .line 129
    add-int/lit8 v2, v12, 0x4

    add-int/lit8 v3, v13, 0x3

    int-to-short v3, v3

    aput-short v3, v8, v2

    .line 130
    add-int/lit8 v2, v12, 0x5

    add-int/lit8 v3, v13, 0x0

    int-to-short v3, v3

    aput-short v3, v8, v2

    .line 131
    add-int/lit8 v2, v12, 0x6

    add-int/lit8 v3, v13, 0x4

    int-to-short v3, v3

    aput-short v3, v8, v2

    .line 132
    add-int/lit8 v2, v12, 0x7

    add-int/lit8 v3, v13, 0x5

    int-to-short v3, v3

    aput-short v3, v8, v2

    .line 133
    add-int/lit8 v2, v12, 0x8

    add-int/lit8 v3, v13, 0x6

    int-to-short v3, v3

    aput-short v3, v8, v2

    .line 134
    add-int/lit8 v2, v12, 0x9

    add-int/lit8 v3, v13, 0x6

    int-to-short v3, v3

    aput-short v3, v8, v2

    .line 135
    add-int/lit8 v2, v12, 0xa

    add-int/lit8 v3, v13, 0x7

    int-to-short v3, v3

    aput-short v3, v8, v2

    .line 136
    add-int/lit8 v2, v12, 0xb

    add-int/lit8 v3, v13, 0x4

    int-to-short v3, v3

    aput-short v3, v8, v2

    .line 73
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 139
    .end local v4    # "angle":F
    .end local v12    # "index":I
    .end local v13    # "m":I
    .end local v15    # "ps":[Lcom/smartisanos/smengine/math/Vector3f;
    .end local v18    # "v":F
    :cond_0
    new-instance v5, Lcom/smartisanos/smengine/Mesh;

    invoke-direct {v5}, Lcom/smartisanos/smengine/Mesh;-><init>()V

    .line 140
    .local v5, "mesh":Lcom/smartisanos/smengine/Mesh;
    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v6, v14

    move-object/from16 v7, v17

    invoke-virtual/range {v5 .. v10}, Lcom/smartisanos/smengine/Mesh;->create([F[F[S[FZ)V

    .line 141
    return-object v5
.end method

.method private static getPoint(Lcom/smartisanos/smengine/math/Vector3f;F)Lcom/smartisanos/smengine/math/Vector3f;
    .locals 9
    .param p0, "src"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p1, "offsetY"    # F

    .prologue
    .line 328
    sget v7, Lcom/smartisanos/launcher/data/Constants;->mainCameraZ:I

    int-to-float v0, v7

    .line 329
    .local v0, "cZ":F
    invoke-static {}, Lcom/smartisanos/smengine/util/TempVars;->get()Lcom/smartisanos/smengine/util/TempVars;

    move-result-object v6

    .line 330
    .local v6, "tmpVars":Lcom/smartisanos/smengine/util/TempVars;
    iget-object v3, v6, Lcom/smartisanos/smengine/util/TempVars;->vect1:Lcom/smartisanos/smengine/math/Vector3f;

    .line 331
    .local v3, "light":Lcom/smartisanos/smengine/math/Vector3f;
    const/4 v7, 0x0

    invoke-virtual {v3, v7, p1, v0}, Lcom/smartisanos/smengine/math/Vector3f;->set(FFF)Lcom/smartisanos/smengine/math/Vector3f;

    .line 332
    invoke-virtual {p0, v3}, Lcom/smartisanos/smengine/math/Vector3f;->subtract(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v7

    invoke-virtual {v7}, Lcom/smartisanos/smengine/math/Vector3f;->normalizeLocal()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v4

    .line 333
    .local v4, "lightDir":Lcom/smartisanos/smengine/math/Vector3f;
    iget v2, p0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    .line 334
    .local v2, "distanceZ":F
    neg-float v7, v2

    iget v8, v4, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    div-float v1, v7, v8

    .line 335
    .local v1, "distance":F
    invoke-virtual {v4, v1}, Lcom/smartisanos/smengine/math/Vector3f;->mult(F)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/smartisanos/smengine/math/Vector3f;->add(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v5

    .line 336
    .local v5, "result":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-virtual {v6}, Lcom/smartisanos/smengine/util/TempVars;->release()V

    .line 337
    return-object v5
.end method

.method private static getPoint(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;F)Lcom/smartisanos/smengine/math/Vector3f;
    .locals 6
    .param p0, "src"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p1, "light"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p2, "zPlat"    # F

    .prologue
    .line 198
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/math/Vector3f;->subtract(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/smengine/math/Vector3f;->normalizeLocal()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v2

    .line 199
    .local v2, "lightDir":Lcom/smartisanos/smengine/math/Vector3f;
    iget v4, p0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    sub-float v1, v4, p2

    .line 200
    .local v1, "distanceZ":F
    neg-float v4, v1

    iget v5, v2, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    div-float v0, v4, v5

    .line 201
    .local v0, "distance":F
    invoke-virtual {v2, v0}, Lcom/smartisanos/smengine/math/Vector3f;->mult(F)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/smartisanos/smengine/math/Vector3f;->add(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v3

    .line 202
    .local v3, "result":Lcom/smartisanos/smengine/math/Vector3f;
    return-object v3
.end method

.method private static getPoints(FFFFFF)[Lcom/smartisanos/smengine/math/Vector3f;
    .locals 20
    .param p0, "w"    # F
    .param p1, "h"    # F
    .param p2, "angle"    # F
    .param p3, "localX"    # F
    .param p4, "localY"    # F
    .param p5, "offsetY"    # F

    .prologue
    .line 303
    const/4 v15, 0x6

    new-array v12, v15, [Lcom/smartisanos/smengine/math/Vector3f;

    .line 304
    .local v12, "result":[Lcom/smartisanos/smengine/math/Vector3f;
    move/from16 v0, p0

    float-to-double v0, v0

    move-wide/from16 v16, v0

    move/from16 v0, p2

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    mul-double v16, v16, v18

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    div-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v13, v0

    .line 305
    .local v13, "x":F
    move/from16 v0, p0

    float-to-double v0, v0

    move-wide/from16 v16, v0

    move/from16 v0, p2

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    mul-double v16, v16, v18

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    div-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v14, v0

    .line 306
    .local v14, "z":F
    const-wide/high16 v16, 0x402e000000000000L    # 15.0

    move/from16 v0, p2

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v2, v0

    .line 307
    .local v2, "dx":F
    const-wide/high16 v16, 0x402e000000000000L    # 15.0

    move/from16 v0, p2

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v3, v0

    .line 309
    .local v3, "dz":F
    new-instance v15, Lcom/smartisanos/smengine/math/Vector3f;

    neg-float v0, v13

    move/from16 v16, v0

    add-float v16, v16, v2

    add-float v16, v16, p3

    move/from16 v0, p1

    neg-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    add-float v17, v17, p5

    add-float v17, v17, p4

    add-float v18, v14, v3

    invoke-direct/range {v15 .. v18}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    move/from16 v0, p5

    invoke-static {v15, v0}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotateIcon;->getPoint(Lcom/smartisanos/smengine/math/Vector3f;F)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v4

    .line 310
    .local v4, "pa0":Lcom/smartisanos/smengine/math/Vector3f;
    new-instance v15, Lcom/smartisanos/smengine/math/Vector3f;

    add-float v16, v13, v2

    add-float v16, v16, p3

    move/from16 v0, p1

    neg-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    add-float v17, v17, p5

    add-float v17, v17, p4

    neg-float v0, v14

    move/from16 v18, v0

    add-float v18, v18, v3

    invoke-direct/range {v15 .. v18}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    move/from16 v0, p5

    invoke-static {v15, v0}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotateIcon;->getPoint(Lcom/smartisanos/smengine/math/Vector3f;F)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v5

    .line 311
    .local v5, "pa1":Lcom/smartisanos/smengine/math/Vector3f;
    new-instance v15, Lcom/smartisanos/smengine/math/Vector3f;

    neg-float v0, v13

    move/from16 v16, v0

    sub-float v16, v16, v2

    add-float v16, v16, p3

    move/from16 v0, p1

    neg-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    add-float v17, v17, p5

    add-float v17, v17, p4

    sub-float v18, v14, v3

    invoke-direct/range {v15 .. v18}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    move/from16 v0, p5

    invoke-static {v15, v0}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotateIcon;->getPoint(Lcom/smartisanos/smengine/math/Vector3f;F)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v6

    .line 312
    .local v6, "pa2":Lcom/smartisanos/smengine/math/Vector3f;
    new-instance v15, Lcom/smartisanos/smengine/math/Vector3f;

    sub-float v16, v13, v2

    add-float v16, v16, p3

    move/from16 v0, p1

    neg-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    add-float v17, v17, p5

    add-float v17, v17, p4

    neg-float v0, v14

    move/from16 v18, v0

    sub-float v18, v18, v3

    invoke-direct/range {v15 .. v18}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    move/from16 v0, p5

    invoke-static {v15, v0}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotateIcon;->getPoint(Lcom/smartisanos/smengine/math/Vector3f;F)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v7

    .line 313
    .local v7, "pa3":Lcom/smartisanos/smengine/math/Vector3f;
    const/4 v15, 0x0

    invoke-static {v4, v5, v6, v7}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotateIcon;->minX(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v16

    aput-object v16, v12, v15

    .line 314
    const/4 v15, 0x2

    invoke-static {v4, v5, v6, v7}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotateIcon;->maxX(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v16

    aput-object v16, v12, v15

    .line 315
    const/4 v15, 0x1

    const/16 v16, 0x0

    aget-object v16, v12, v16

    const/16 v17, 0x2

    aget-object v17, v12, v17

    invoke-virtual/range {v16 .. v17}, Lcom/smartisanos/smengine/math/Vector3f;->add(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v16

    const/high16 v17, 0x40000000    # 2.0f

    invoke-virtual/range {v16 .. v17}, Lcom/smartisanos/smengine/math/Vector3f;->divideLocal(F)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v16

    aput-object v16, v12, v15

    .line 317
    new-instance v15, Lcom/smartisanos/smengine/math/Vector3f;

    neg-float v0, v13

    move/from16 v16, v0

    add-float v16, v16, v2

    add-float v16, v16, p3

    const/high16 v17, 0x40000000    # 2.0f

    div-float v17, p1, v17

    add-float v17, v17, p5

    add-float v17, v17, p4

    add-float v18, v14, v3

    invoke-direct/range {v15 .. v18}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    move/from16 v0, p5

    invoke-static {v15, v0}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotateIcon;->getPoint(Lcom/smartisanos/smengine/math/Vector3f;F)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v8

    .line 318
    .local v8, "pb0":Lcom/smartisanos/smengine/math/Vector3f;
    new-instance v15, Lcom/smartisanos/smengine/math/Vector3f;

    add-float v16, v13, v2

    add-float v16, v16, p3

    const/high16 v17, 0x40000000    # 2.0f

    div-float v17, p1, v17

    add-float v17, v17, p5

    add-float v17, v17, p4

    neg-float v0, v14

    move/from16 v18, v0

    add-float v18, v18, v3

    invoke-direct/range {v15 .. v18}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    move/from16 v0, p5

    invoke-static {v15, v0}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotateIcon;->getPoint(Lcom/smartisanos/smengine/math/Vector3f;F)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v9

    .line 319
    .local v9, "pb1":Lcom/smartisanos/smengine/math/Vector3f;
    new-instance v15, Lcom/smartisanos/smengine/math/Vector3f;

    neg-float v0, v13

    move/from16 v16, v0

    sub-float v16, v16, v2

    add-float v16, v16, p3

    const/high16 v17, 0x40000000    # 2.0f

    div-float v17, p1, v17

    add-float v17, v17, p5

    add-float v17, v17, p4

    sub-float v18, v14, v3

    invoke-direct/range {v15 .. v18}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    move/from16 v0, p5

    invoke-static {v15, v0}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotateIcon;->getPoint(Lcom/smartisanos/smengine/math/Vector3f;F)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v10

    .line 320
    .local v10, "pb2":Lcom/smartisanos/smengine/math/Vector3f;
    new-instance v15, Lcom/smartisanos/smengine/math/Vector3f;

    sub-float v16, v13, v2

    add-float v16, v16, p3

    const/high16 v17, 0x40000000    # 2.0f

    div-float v17, p1, v17

    add-float v17, v17, p5

    add-float v17, v17, p4

    neg-float v0, v14

    move/from16 v18, v0

    sub-float v18, v18, v3

    invoke-direct/range {v15 .. v18}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    move/from16 v0, p5

    invoke-static {v15, v0}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotateIcon;->getPoint(Lcom/smartisanos/smengine/math/Vector3f;F)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v11

    .line 321
    .local v11, "pb3":Lcom/smartisanos/smengine/math/Vector3f;
    const/4 v15, 0x3

    invoke-static {v8, v9, v10, v11}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotateIcon;->minX(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v16

    aput-object v16, v12, v15

    .line 322
    const/4 v15, 0x5

    invoke-static {v8, v9, v10, v11}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotateIcon;->maxX(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v16

    aput-object v16, v12, v15

    .line 323
    const/4 v15, 0x4

    const/16 v16, 0x3

    aget-object v16, v12, v16

    const/16 v17, 0x5

    aget-object v17, v12, v17

    invoke-virtual/range {v16 .. v17}, Lcom/smartisanos/smengine/math/Vector3f;->add(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v16

    const/high16 v17, 0x40000000    # 2.0f

    invoke-virtual/range {v16 .. v17}, Lcom/smartisanos/smengine/math/Vector3f;->divideLocal(F)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v16

    aput-object v16, v12, v15

    .line 324
    return-object v12
.end method

.method private static getPoints(FFFLcom/smartisanos/smengine/math/Vector3f;FF)[Lcom/smartisanos/smengine/math/Vector3f;
    .locals 20
    .param p0, "w"    # F
    .param p1, "h"    # F
    .param p2, "angle"    # F
    .param p3, "light"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p4, "zPlat"    # F
    .param p5, "offsetY"    # F

    .prologue
    .line 145
    const/4 v15, 0x6

    new-array v12, v15, [Lcom/smartisanos/smengine/math/Vector3f;

    .line 146
    .local v12, "result":[Lcom/smartisanos/smengine/math/Vector3f;
    move/from16 v0, p0

    float-to-double v0, v0

    move-wide/from16 v16, v0

    move/from16 v0, p2

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    mul-double v16, v16, v18

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    div-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v13, v0

    .line 147
    .local v13, "x":F
    move/from16 v0, p0

    float-to-double v0, v0

    move-wide/from16 v16, v0

    move/from16 v0, p2

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    mul-double v16, v16, v18

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    div-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v14, v0

    .line 148
    .local v14, "z":F
    const-wide/high16 v16, 0x402e000000000000L    # 15.0

    move/from16 v0, p2

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v2, v0

    .line 149
    .local v2, "dx":F
    const-wide/high16 v16, 0x402e000000000000L    # 15.0

    move/from16 v0, p2

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v3, v0

    .line 151
    .local v3, "dz":F
    new-instance v15, Lcom/smartisanos/smengine/math/Vector3f;

    neg-float v0, v13

    move/from16 v16, v0

    add-float v16, v16, v2

    move/from16 v0, p1

    neg-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    add-float v17, v17, p5

    add-float v18, v14, v3

    invoke-direct/range {v15 .. v18}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    move-object/from16 v0, p3

    move/from16 v1, p4

    invoke-static {v15, v0, v1}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotateIcon;->getPoint(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;F)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v4

    .line 152
    .local v4, "pa0":Lcom/smartisanos/smengine/math/Vector3f;
    new-instance v15, Lcom/smartisanos/smengine/math/Vector3f;

    add-float v16, v13, v2

    move/from16 v0, p1

    neg-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    add-float v17, v17, p5

    neg-float v0, v14

    move/from16 v18, v0

    add-float v18, v18, v3

    invoke-direct/range {v15 .. v18}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    move-object/from16 v0, p3

    move/from16 v1, p4

    invoke-static {v15, v0, v1}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotateIcon;->getPoint(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;F)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v5

    .line 153
    .local v5, "pa1":Lcom/smartisanos/smengine/math/Vector3f;
    new-instance v15, Lcom/smartisanos/smengine/math/Vector3f;

    neg-float v0, v13

    move/from16 v16, v0

    sub-float v16, v16, v2

    move/from16 v0, p1

    neg-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    add-float v17, v17, p5

    sub-float v18, v14, v3

    invoke-direct/range {v15 .. v18}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    move-object/from16 v0, p3

    move/from16 v1, p4

    invoke-static {v15, v0, v1}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotateIcon;->getPoint(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;F)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v6

    .line 154
    .local v6, "pa2":Lcom/smartisanos/smengine/math/Vector3f;
    new-instance v15, Lcom/smartisanos/smengine/math/Vector3f;

    sub-float v16, v13, v2

    move/from16 v0, p1

    neg-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    add-float v17, v17, p5

    neg-float v0, v14

    move/from16 v18, v0

    sub-float v18, v18, v3

    invoke-direct/range {v15 .. v18}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    move-object/from16 v0, p3

    move/from16 v1, p4

    invoke-static {v15, v0, v1}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotateIcon;->getPoint(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;F)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v7

    .line 155
    .local v7, "pa3":Lcom/smartisanos/smengine/math/Vector3f;
    const/4 v15, 0x0

    invoke-static {v4, v5, v6, v7}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotateIcon;->minX(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v16

    aput-object v16, v12, v15

    .line 156
    const/4 v15, 0x2

    invoke-static {v4, v5, v6, v7}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotateIcon;->maxX(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v16

    aput-object v16, v12, v15

    .line 157
    const/4 v15, 0x1

    const/16 v16, 0x0

    aget-object v16, v12, v16

    const/16 v17, 0x2

    aget-object v17, v12, v17

    invoke-virtual/range {v16 .. v17}, Lcom/smartisanos/smengine/math/Vector3f;->add(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v16

    const/high16 v17, 0x40000000    # 2.0f

    invoke-virtual/range {v16 .. v17}, Lcom/smartisanos/smengine/math/Vector3f;->divideLocal(F)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v16

    aput-object v16, v12, v15

    .line 159
    new-instance v15, Lcom/smartisanos/smengine/math/Vector3f;

    neg-float v0, v13

    move/from16 v16, v0

    add-float v16, v16, v2

    const/high16 v17, 0x40000000    # 2.0f

    div-float v17, p1, v17

    add-float v17, v17, p5

    add-float v18, v14, v3

    invoke-direct/range {v15 .. v18}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    move-object/from16 v0, p3

    move/from16 v1, p4

    invoke-static {v15, v0, v1}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotateIcon;->getPoint(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;F)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v8

    .line 160
    .local v8, "pb0":Lcom/smartisanos/smengine/math/Vector3f;
    new-instance v15, Lcom/smartisanos/smengine/math/Vector3f;

    add-float v16, v13, v2

    const/high16 v17, 0x40000000    # 2.0f

    div-float v17, p1, v17

    add-float v17, v17, p5

    neg-float v0, v14

    move/from16 v18, v0

    add-float v18, v18, v3

    invoke-direct/range {v15 .. v18}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    move-object/from16 v0, p3

    move/from16 v1, p4

    invoke-static {v15, v0, v1}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotateIcon;->getPoint(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;F)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v9

    .line 161
    .local v9, "pb1":Lcom/smartisanos/smengine/math/Vector3f;
    new-instance v15, Lcom/smartisanos/smengine/math/Vector3f;

    neg-float v0, v13

    move/from16 v16, v0

    sub-float v16, v16, v2

    const/high16 v17, 0x40000000    # 2.0f

    div-float v17, p1, v17

    add-float v17, v17, p5

    sub-float v18, v14, v3

    invoke-direct/range {v15 .. v18}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    move-object/from16 v0, p3

    move/from16 v1, p4

    invoke-static {v15, v0, v1}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotateIcon;->getPoint(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;F)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v10

    .line 162
    .local v10, "pb2":Lcom/smartisanos/smengine/math/Vector3f;
    new-instance v15, Lcom/smartisanos/smengine/math/Vector3f;

    sub-float v16, v13, v2

    const/high16 v17, 0x40000000    # 2.0f

    div-float v17, p1, v17

    add-float v17, v17, p5

    neg-float v0, v14

    move/from16 v18, v0

    sub-float v18, v18, v3

    invoke-direct/range {v15 .. v18}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    move-object/from16 v0, p3

    move/from16 v1, p4

    invoke-static {v15, v0, v1}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotateIcon;->getPoint(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;F)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v11

    .line 163
    .local v11, "pb3":Lcom/smartisanos/smengine/math/Vector3f;
    const/4 v15, 0x3

    invoke-static {v8, v9, v10, v11}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotateIcon;->minX(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v16

    aput-object v16, v12, v15

    .line 164
    const/4 v15, 0x5

    invoke-static {v8, v9, v10, v11}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotateIcon;->maxX(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v16

    aput-object v16, v12, v15

    .line 165
    const/4 v15, 0x4

    const/16 v16, 0x3

    aget-object v16, v12, v16

    const/16 v17, 0x5

    aget-object v17, v12, v17

    invoke-virtual/range {v16 .. v17}, Lcom/smartisanos/smengine/math/Vector3f;->add(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v16

    const/high16 v17, 0x40000000    # 2.0f

    invoke-virtual/range {v16 .. v17}, Lcom/smartisanos/smengine/math/Vector3f;->divideLocal(F)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v16

    aput-object v16, v12, v15

    .line 166
    return-object v12
.end method

.method private static maxX(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;
    .locals 3
    .param p0, "v0"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p1, "v1"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p2, "v2"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p3, "v3"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 170
    move-object v0, p3

    .line 171
    .local v0, "result":Lcom/smartisanos/smengine/math/Vector3f;
    iget v1, p0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v2, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 172
    move-object v0, p0

    .line 174
    :cond_0
    iget v1, p1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v2, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 175
    move-object v0, p1

    .line 177
    :cond_1
    iget v1, p2, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v2, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 178
    move-object v0, p2

    .line 180
    :cond_2
    return-object v0
.end method

.method private static minX(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;
    .locals 3
    .param p0, "v0"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p1, "v1"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p2, "v2"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p3, "v3"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 184
    move-object v0, p0

    .line 185
    .local v0, "result":Lcom/smartisanos/smengine/math/Vector3f;
    iget v1, p1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v2, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 186
    move-object v0, p1

    .line 188
    :cond_0
    iget v1, p2, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v2, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 189
    move-object v0, p2

    .line 191
    :cond_1
    iget v1, p3, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v2, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    .line 192
    move-object v0, p3

    .line 194
    :cond_2
    return-object v0
.end method


.method public getDrawAnimIndex(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 38
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollShadowRotateIcon;->mDrawAnimIndex:[I

    aget v0, v0, p1

    return v0
.end method

.method public getDrawPositionOffset(I)Lcom/smartisanos/smengine/math/Vector3f;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 42
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollShadowRotateIcon;->mPosOffsetList:[Lcom/smartisanos/smengine/math/Vector3f;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getDrawTimes()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/smartisanos/launcher/animations/PageScrollShadowRotateIcon;->mDrawTimes:I

    return v0
.end method

.method public setDrawAnimIndex(II)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "animIndex"    # I

    .prologue
    .line 34
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollShadowRotateIcon;->mDrawAnimIndex:[I

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
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollShadowRotateIcon;->mPosOffsetList:[Lcom/smartisanos/smengine/math/Vector3f;

    iget v1, p0, Lcom/smartisanos/launcher/animations/PageScrollShadowRotateIcon;->mScale:F

    invoke-virtual {p2, v1}, Lcom/smartisanos/smengine/math/Vector3f;->mult(F)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v1

    aput-object v1, v0, p1

    .line 47
    return-void
.end method
