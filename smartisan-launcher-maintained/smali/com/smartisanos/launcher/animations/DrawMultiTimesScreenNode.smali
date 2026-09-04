.class public Lcom/smartisanos/launcher/animations/DrawMultiTimesScreenNode;
.super Lcom/smartisanos/smengine/SceneNode;
.source "DrawMultiTimesScreenNode.java"


.field private mDrawTimes:I

.field private mImageNameList:[Ljava/lang/String;

.field private mPosOffsetList:[Lcom/smartisanos/smengine/math/Vector3f;


.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/SceneNode;-><init>(Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "drawTimes"    # I

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/SceneNode;-><init>(Ljava/lang/String;)V

    .line 20
    new-array v0, p2, [Lcom/smartisanos/smengine/math/Vector3f;

    iput-object v0, p0, Lcom/smartisanos/launcher/animations/DrawMultiTimesScreenNode;->mPosOffsetList:[Lcom/smartisanos/smengine/math/Vector3f;

    .line 21
    new-array v0, p2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/smartisanos/launcher/animations/DrawMultiTimesScreenNode;->mImageNameList:[Ljava/lang/String;

    .line 22
    iput p2, p0, Lcom/smartisanos/launcher/animations/DrawMultiTimesScreenNode;->mDrawTimes:I

    .line 23
    return-void
.end method

.method public static test()Lcom/smartisanos/launcher/animations/DrawMultiTimesScreenNode;
    .locals 13

    .prologue
    const/high16 v12, 0x43960000    # 300.0f

    const/high16 v11, -0x3c6a0000    # -300.0f

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 51
    sget v6, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    invoke-static {v6}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v1

    .line 52
    .local v1, "lp":Lcom/smartisanos/launcher/data/LayoutProperty;
    iget v6, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    iget v7, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    invoke-static {v6, v7}, Lcom/smartisanos/launcher/animations/DrawMultiTimesScreenNode;->testCreateMesh(FF)Lcom/smartisanos/smengine/Mesh;

    move-result-object v3

    .line 53
    .local v3, "mesh":Lcom/smartisanos/smengine/Mesh;
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/smengine/World;->getSceneManager()Lcom/smartisanos/smengine/SceneManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/smengine/SceneManager;->getRootNode()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v5

    .line 54
    .local v5, "rootNode":Lcom/smartisanos/smengine/SceneNode;
    new-instance v4, Lcom/smartisanos/launcher/animations/DrawMultiTimesScreenNode;

    const-string v6, "DrawMultiTimesScreenNode"

    const/4 v7, 0x4

    invoke-direct {v4, v6, v7}, Lcom/smartisanos/launcher/animations/DrawMultiTimesScreenNode;-><init>(Ljava/lang/String;I)V

    .line 55
    .local v4, "node":Lcom/smartisanos/launcher/animations/DrawMultiTimesScreenNode;
    invoke-virtual {v4, v3}, Lcom/smartisanos/launcher/animations/DrawMultiTimesScreenNode;->setMesh(Lcom/smartisanos/smengine/Mesh;)V

    .line 56
    const-string v6, "DrawMultiTimesMaterial"

    invoke-static {v6}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v2

    .line 57
    .local v2, "m":Lcom/smartisanos/smengine/mymaterial/Material;
    invoke-virtual {v4, v2}, Lcom/smartisanos/launcher/animations/DrawMultiTimesScreenNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 59
    invoke-static {v9, v9}, Lcom/smartisanos/launcher/view/Page;->getBackgroundImageName(II)Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "imageName":Ljava/lang/String;
    invoke-virtual {v4, v9, v0}, Lcom/smartisanos/launcher/animations/DrawMultiTimesScreenNode;->setDrawImageName(ILjava/lang/String;)V

    .line 61
    new-instance v6, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v6, v11, v11, v10}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    invoke-virtual {v4, v9, v6}, Lcom/smartisanos/launcher/animations/DrawMultiTimesScreenNode;->setDrawPositionOffset(ILcom/smartisanos/smengine/math/Vector3f;)V

    .line 63
    invoke-static {v8, v9}, Lcom/smartisanos/launcher/view/Page;->getBackgroundImageName(II)Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-virtual {v4, v8, v0}, Lcom/smartisanos/launcher/animations/DrawMultiTimesScreenNode;->setDrawImageName(ILjava/lang/String;)V

    .line 65
    new-instance v6, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v6, v12, v11, v10}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    invoke-virtual {v4, v8, v6}, Lcom/smartisanos/launcher/animations/DrawMultiTimesScreenNode;->setDrawPositionOffset(ILcom/smartisanos/smengine/math/Vector3f;)V

    .line 67
    const/4 v6, 0x2

    invoke-static {v6, v9}, Lcom/smartisanos/launcher/view/Page;->getBackgroundImageName(II)Ljava/lang/String;

    move-result-object v0

    .line 68
    const/4 v6, 0x2

    invoke-virtual {v4, v6, v0}, Lcom/smartisanos/launcher/animations/DrawMultiTimesScreenNode;->setDrawImageName(ILjava/lang/String;)V

    .line 69
    const/4 v6, 0x2

    new-instance v7, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v7, v12, v12, v10}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    invoke-virtual {v4, v6, v7}, Lcom/smartisanos/launcher/animations/DrawMultiTimesScreenNode;->setDrawPositionOffset(ILcom/smartisanos/smengine/math/Vector3f;)V

    .line 71
    invoke-static {v8, v8}, Lcom/smartisanos/launcher/view/Page;->getBackgroundImageName(II)Ljava/lang/String;

    move-result-object v0

    .line 72
    const/4 v6, 0x3

    invoke-virtual {v4, v6, v0}, Lcom/smartisanos/launcher/animations/DrawMultiTimesScreenNode;->setDrawImageName(ILjava/lang/String;)V

    .line 73
    const/4 v6, 0x3

    new-instance v7, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v7, v11, v12, v10}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    invoke-virtual {v4, v6, v7}, Lcom/smartisanos/launcher/animations/DrawMultiTimesScreenNode;->setDrawPositionOffset(ILcom/smartisanos/smengine/math/Vector3f;)V

    .line 75
    invoke-virtual {v4, v8}, Lcom/smartisanos/launcher/animations/DrawMultiTimesScreenNode;->setRenderQueue(I)V

    .line 76
    invoke-virtual {v4}, Lcom/smartisanos/launcher/animations/DrawMultiTimesScreenNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/smartisanos/smengine/RenderState;->setIsEnableDepthTest(Z)V

    .line 77
    invoke-virtual {v4}, Lcom/smartisanos/launcher/animations/DrawMultiTimesScreenNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/smartisanos/smengine/RenderState;->setIsUseVBO(Z)V

    .line 78
    invoke-virtual {v4}, Lcom/smartisanos/launcher/animations/DrawMultiTimesScreenNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/smartisanos/smengine/RenderState;->setIsEnableBlend(Z)V

    .line 79
    invoke-virtual {v4}, Lcom/smartisanos/launcher/animations/DrawMultiTimesScreenNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/smartisanos/smengine/RenderState;->setIsCullFaceEnable(Z)V

    .line 80
    const/high16 v6, 0x42c80000    # 100.0f

    invoke-virtual {v4, v10, v10, v6}, Lcom/smartisanos/launcher/animations/DrawMultiTimesScreenNode;->setTranslate(FFF)V

    .line 81
    invoke-virtual {v5, v4}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 82
    invoke-virtual {v4}, Lcom/smartisanos/launcher/animations/DrawMultiTimesScreenNode;->updateGeometricState()V

    .line 83
    return-object v4
.end method

.method public static test2()Lcom/smartisanos/launcher/animations/DrawMultiTimesScreenNode;
    .locals 13

    .prologue
    const/high16 v12, 0x43960000    # 300.0f

    const/high16 v11, -0x3c6a0000    # -300.0f

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 88
    sget v6, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    invoke-static {v6}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v1

    .line 89
    .local v1, "lp":Lcom/smartisanos/launcher/data/LayoutProperty;
    iget v6, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    iget v7, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    invoke-static {v6, v7}, Lcom/smartisanos/launcher/animations/DrawMultiTimesScreenNode;->testCreateMesh(FF)Lcom/smartisanos/smengine/Mesh;

    move-result-object v3

    .line 90
    .local v3, "mesh":Lcom/smartisanos/smengine/Mesh;
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/smengine/World;->getSceneManager()Lcom/smartisanos/smengine/SceneManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/smengine/SceneManager;->getRootNode()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v5

    .line 91
    .local v5, "rootNode":Lcom/smartisanos/smengine/SceneNode;
    new-instance v4, Lcom/smartisanos/launcher/animations/DrawMultiTimesScreenNode;

    const-string v6, "DrawMultiTimesScreenNode"

    const/4 v7, 0x4

    invoke-direct {v4, v6, v7}, Lcom/smartisanos/launcher/animations/DrawMultiTimesScreenNode;-><init>(Ljava/lang/String;I)V

    .line 92
    .local v4, "node":Lcom/smartisanos/launcher/animations/DrawMultiTimesScreenNode;
    invoke-virtual {v4, v3}, Lcom/smartisanos/launcher/animations/DrawMultiTimesScreenNode;->setMesh(Lcom/smartisanos/smengine/Mesh;)V

    .line 93
    const-string v6, "DrawMultiTimesMaterial"

    invoke-static {v6}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v2

    .line 94
    .local v2, "m":Lcom/smartisanos/smengine/mymaterial/Material;
    invoke-virtual {v4, v2}, Lcom/smartisanos/launcher/animations/DrawMultiTimesScreenNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 96
    invoke-static {v9, v9}, Lcom/smartisanos/launcher/view/Page;->getBackgroundImageName(II)Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "imageName":Ljava/lang/String;
    invoke-virtual {v4, v9, v0}, Lcom/smartisanos/launcher/animations/DrawMultiTimesScreenNode;->setDrawImageName(ILjava/lang/String;)V

    .line 99
    new-instance v6, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v6, v11, v11, v8}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    invoke-virtual {v4, v9, v6}, Lcom/smartisanos/launcher/animations/DrawMultiTimesScreenNode;->setDrawPositionOffset(ILcom/smartisanos/smengine/math/Vector3f;)V

    .line 100
    new-instance v6, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v6, v12, v11, v8}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    invoke-virtual {v4, v10, v6}, Lcom/smartisanos/launcher/animations/DrawMultiTimesScreenNode;->setDrawPositionOffset(ILcom/smartisanos/smengine/math/Vector3f;)V

    .line 101
    const/4 v6, 0x2

    new-instance v7, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v7, v12, v12, v8}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    invoke-virtual {v4, v6, v7}, Lcom/smartisanos/launcher/animations/DrawMultiTimesScreenNode;->setDrawPositionOffset(ILcom/smartisanos/smengine/math/Vector3f;)V

    .line 102
    const/4 v6, 0x3

    new-instance v7, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v7, v11, v12, v8}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    invoke-virtual {v4, v6, v7}, Lcom/smartisanos/launcher/animations/DrawMultiTimesScreenNode;->setDrawPositionOffset(ILcom/smartisanos/smengine/math/Vector3f;)V

    .line 104
    invoke-virtual {v4, v10}, Lcom/smartisanos/launcher/animations/DrawMultiTimesScreenNode;->setRenderQueue(I)V

    .line 105
    invoke-virtual {v4}, Lcom/smartisanos/launcher/animations/DrawMultiTimesScreenNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v6

    invoke-virtual {v6, v10}, Lcom/smartisanos/smengine/RenderState;->setIsEnableDepthTest(Z)V

    .line 106
    invoke-virtual {v4}, Lcom/smartisanos/launcher/animations/DrawMultiTimesScreenNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v6

    invoke-virtual {v6, v10}, Lcom/smartisanos/smengine/RenderState;->setIsUseVBO(Z)V

    .line 107
    invoke-virtual {v4}, Lcom/smartisanos/launcher/animations/DrawMultiTimesScreenNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/smartisanos/smengine/RenderState;->setIsEnableBlend(Z)V

    .line 108
    invoke-virtual {v4}, Lcom/smartisanos/launcher/animations/DrawMultiTimesScreenNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v6

    invoke-virtual {v6, v10}, Lcom/smartisanos/smengine/RenderState;->setIsCullFaceEnable(Z)V

    .line 109
    const/high16 v6, 0x42c80000    # 100.0f

    invoke-virtual {v4, v8, v8, v6}, Lcom/smartisanos/launcher/animations/DrawMultiTimesScreenNode;->setTranslate(FFF)V

    .line 110
    invoke-virtual {v5, v4}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 111
    invoke-virtual {v4}, Lcom/smartisanos/launcher/animations/DrawMultiTimesScreenNode;->updateGeometricState()V

    .line 112
    return-object v4
.end method

.method private static testCreateMesh(FF)Lcom/smartisanos/smengine/Mesh;
    .locals 11
    .param p0, "w"    # F
    .param p1, "h"    # F

    .prologue
    .line 116
    const/4 v9, 0x1

    .line 117
    .local v9, "rectNum":I
    const/16 v4, 0xc

    new-array v1, v4, [F

    .line 118
    .local v1, "points":[F
    const/16 v4, 0x8

    new-array v2, v4, [F

    .line 119
    .local v2, "texPoints":[F
    const/4 v4, 0x6

    new-array v3, v4, [S

    .line 121
    .local v3, "faces":[S
    const/4 v4, 0x0

    neg-float v5, p0

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v5, v10

    aput v5, v1, v4

    .line 122
    const/4 v4, 0x1

    neg-float v5, p1

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v5, v10

    aput v5, v1, v4

    .line 123
    const/4 v4, 0x2

    const/4 v5, 0x0

    aput v5, v1, v4

    .line 124
    const/4 v4, 0x3

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, p0, v5

    aput v5, v1, v4

    .line 125
    const/4 v4, 0x4

    neg-float v5, p1

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v5, v10

    aput v5, v1, v4

    .line 126
    const/4 v4, 0x5

    const/4 v5, 0x0

    aput v5, v1, v4

    .line 127
    const/4 v4, 0x6

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, p0, v5

    aput v5, v1, v4

    .line 128
    const/4 v4, 0x7

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, p1, v5

    aput v5, v1, v4

    .line 129
    const/16 v4, 0x8

    const/4 v5, 0x0

    aput v5, v1, v4

    .line 130
    const/16 v4, 0x9

    neg-float v5, p0

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v5, v10

    aput v5, v1, v4

    .line 131
    const/16 v4, 0xa

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, p1, v5

    aput v5, v1, v4

    .line 132
    const/16 v4, 0xb

    const/4 v5, 0x0

    aput v5, v1, v4

    .line 134
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v9, :cond_0

    .line 135
    mul-int/lit8 v7, v6, 0x8

    .line 136
    .local v7, "index":I
    add-int/lit8 v4, v7, 0x0

    const/4 v5, 0x0

    aput v5, v2, v4

    .line 137
    add-int/lit8 v4, v7, 0x1

    const/4 v5, 0x0

    aput v5, v2, v4

    .line 138
    add-int/lit8 v4, v7, 0x2

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v2, v4

    .line 139
    add-int/lit8 v4, v7, 0x3

    const/4 v5, 0x0

    aput v5, v2, v4

    .line 140
    add-int/lit8 v4, v7, 0x4

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v2, v4

    .line 141
    add-int/lit8 v4, v7, 0x5

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v2, v4

    .line 142
    add-int/lit8 v4, v7, 0x6

    const/4 v5, 0x0

    aput v5, v2, v4

    .line 143
    add-int/lit8 v4, v7, 0x7

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v2, v4

    .line 134
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 145
    .end local v7    # "index":I
    :cond_0
    const/4 v6, 0x0

    :goto_1
    if-ge v6, v9, :cond_1

    .line 146
    mul-int/lit8 v7, v6, 0x6

    .line 147
    .restart local v7    # "index":I
    mul-int/lit8 v8, v6, 0x4

    .line 148
    .local v8, "m":I
    add-int/lit8 v4, v7, 0x0

    add-int/lit8 v5, v8, 0x0

    int-to-short v5, v5

    aput-short v5, v3, v4

    .line 149
    add-int/lit8 v4, v7, 0x1

    add-int/lit8 v5, v8, 0x1

    int-to-short v5, v5

    aput-short v5, v3, v4

    .line 150
    add-int/lit8 v4, v7, 0x2

    add-int/lit8 v5, v8, 0x2

    int-to-short v5, v5

    aput-short v5, v3, v4

    .line 151
    add-int/lit8 v4, v7, 0x3

    add-int/lit8 v5, v8, 0x2

    int-to-short v5, v5

    aput-short v5, v3, v4

    .line 152
    add-int/lit8 v4, v7, 0x4

    add-int/lit8 v5, v8, 0x3

    int-to-short v5, v5

    aput-short v5, v3, v4

    .line 153
    add-int/lit8 v4, v7, 0x5

    add-int/lit8 v5, v8, 0x0

    int-to-short v5, v5

    aput-short v5, v3, v4

    .line 145
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 155
    .end local v7    # "index":I
    .end local v8    # "m":I
    :cond_1
    new-instance v0, Lcom/smartisanos/smengine/Mesh;

    invoke-direct {v0}, Lcom/smartisanos/smengine/Mesh;-><init>()V

    .line 156
    .local v0, "mesh":Lcom/smartisanos/smengine/Mesh;
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/smartisanos/smengine/Mesh;->create([F[F[S[FZ)V

    .line 157
    return-object v0
.end method


.method public getDrawImageName(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 42
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/DrawMultiTimesScreenNode;->mImageNameList:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getDrawPositionOffset(I)Lcom/smartisanos/smengine/math/Vector3f;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 38
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/DrawMultiTimesScreenNode;->mPosOffsetList:[Lcom/smartisanos/smengine/math/Vector3f;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getDrawTimes()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/smartisanos/launcher/animations/DrawMultiTimesScreenNode;->mDrawTimes:I

    return v0
.end method

.method public setDrawImageName(ILjava/lang/String;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "imageName"    # Ljava/lang/String;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/DrawMultiTimesScreenNode;->mImageNameList:[Ljava/lang/String;

    aput-object p2, v0, p1

    .line 36
    return-void
.end method

.method public setDrawPositionOffset(ILcom/smartisanos/smengine/math/Vector3f;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "posOffset"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/DrawMultiTimesScreenNode;->mPosOffsetList:[Lcom/smartisanos/smengine/math/Vector3f;

    aput-object p2, v0, p1

    .line 32
    return-void
.end method
