.class public Lcom/smartisanos/smengine/mymaterial/TwoTextureBatchMaterial;
.super Lcom/smartisanos/smengine/mymaterial/Material;
.source "TwoTextureBatchMaterial.java"


.field private mMatrixArrayData:[F

.field private mModularColorArrayData:[F


.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "vertexStr"    # Ljava/lang/String;
    .param p3, "fragmentStr"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/smartisanos/smengine/mymaterial/Material;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smartisanos/smengine/mymaterial/TwoTextureBatchMaterial;->mUseMVPMatrix:Z

    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smartisanos/smengine/mymaterial/TwoTextureBatchMaterial;->mUseMVPMatrixArray:Z

    .line 20
    return-void
.end method


.method public draw(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/smengine/Mesh;Z)V
    .locals 2
    .param p1, "sn"    # Lcom/smartisanos/smengine/SceneNode;
    .param p2, "mesh"    # Lcom/smartisanos/smengine/Mesh;
    .param p3, "isUseVBO"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 82
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/TwoTextureBatchMaterial;->use()V

    .line 83
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/TwoTextureBatchMaterial;->bindTexture()V

    .line 84
    invoke-virtual {p0, p3, p2, v1, v0}, Lcom/smartisanos/smengine/mymaterial/TwoTextureBatchMaterial;->setVertexData(ZLcom/smartisanos/smengine/Mesh;ZZ)V

    .line 85
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/mymaterial/TwoTextureBatchMaterial;->setMVPMatrixArray(Lcom/smartisanos/smengine/SceneNode;)V

    .line 86
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/TwoTextureBatchMaterial;->setColorArray()V

    .line 87
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/mymaterial/TwoTextureBatchMaterial;->setDiffuseMap(I)V

    .line 88
    invoke-virtual {p0, v1}, Lcom/smartisanos/smengine/mymaterial/TwoTextureBatchMaterial;->setShadowMap(I)V

    .line 89
    invoke-virtual {p0, p2, p3}, Lcom/smartisanos/smengine/mymaterial/TwoTextureBatchMaterial;->drawPrimitive(Lcom/smartisanos/smengine/Mesh;Z)V

    .line 90
    return-void
.end method

.method public drawMesh(Lcom/smartisanos/smengine/Mesh;Z)V
    .locals 2
    .param p1, "mesh"    # Lcom/smartisanos/smengine/Mesh;
    .param p2, "isUseVBO"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 93
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/TwoTextureBatchMaterial;->use()V

    .line 94
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/TwoTextureBatchMaterial;->bindTexture()V

    .line 95
    invoke-virtual {p0, p2, p1, v1, v0}, Lcom/smartisanos/smengine/mymaterial/TwoTextureBatchMaterial;->setVertexData(ZLcom/smartisanos/smengine/Mesh;ZZ)V

    .line 96
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/TwoTextureBatchMaterial;->setMVPArray()V

    .line 97
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/TwoTextureBatchMaterial;->setColorArray()V

    .line 98
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/mymaterial/TwoTextureBatchMaterial;->setDiffuseMap(I)V

    .line 99
    invoke-virtual {p0, v1}, Lcom/smartisanos/smengine/mymaterial/TwoTextureBatchMaterial;->setShadowMap(I)V

    .line 100
    invoke-virtual {p0, p1, p2}, Lcom/smartisanos/smengine/mymaterial/TwoTextureBatchMaterial;->drawPrimitive(Lcom/smartisanos/smengine/Mesh;Z)V

    .line 101
    return-void
.end method

.method protected setColorArray()V
    .locals 10

    .prologue
    .line 22
    const/16 v7, 0x8

    invoke-virtual {p0, v7}, Lcom/smartisanos/smengine/mymaterial/TwoTextureBatchMaterial;->getParam(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/smartisanos/smengine/math/Vector4f;

    move-object v2, v7

    check-cast v2, [Lcom/smartisanos/smengine/math/Vector4f;

    .line 23
    .local v2, "colorArray":[Lcom/smartisanos/smengine/math/Vector4f;
    const/4 v4, 0x1

    .line 24
    .local v4, "isBatch9":Z
    if-nez v2, :cond_0

    .line 25
    const/4 v7, 0x7

    invoke-virtual {p0, v7}, Lcom/smartisanos/smengine/mymaterial/TwoTextureBatchMaterial;->getParam(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/smartisanos/smengine/math/Vector4f;

    move-object v2, v7

    check-cast v2, [Lcom/smartisanos/smengine/math/Vector4f;

    .line 26
    const/4 v4, 0x0

    .line 28
    :cond_0
    iget-object v7, p0, Lcom/smartisanos/smengine/mymaterial/TwoTextureBatchMaterial;->mModularColorArrayData:[F

    if-nez v7, :cond_1

    .line 29
    array-length v7, v2

    mul-int/lit8 v7, v7, 0x4

    new-array v0, v7, [F

    .line 30
    .local v0, "allData":[F
    iput-object v0, p0, Lcom/smartisanos/smengine/mymaterial/TwoTextureBatchMaterial;->mModularColorArrayData:[F

    .line 32
    .end local v0    # "allData":[F
    :cond_1
    const/4 v6, 0x0

    .line 33
    .local v6, "offset":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v7, v2

    if-ge v3, v7, :cond_2

    .line 34
    aget-object v1, v2, v3

    .line 35
    .local v1, "color":Lcom/smartisanos/smengine/math/Vector4f;
    iget-object v7, p0, Lcom/smartisanos/smengine/mymaterial/TwoTextureBatchMaterial;->mModularColorArrayData:[F

    mul-int/lit8 v8, v3, 0x4

    iget v9, v1, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    aput v9, v7, v8

    .line 36
    iget-object v7, p0, Lcom/smartisanos/smengine/mymaterial/TwoTextureBatchMaterial;->mModularColorArrayData:[F

    mul-int/lit8 v8, v3, 0x4

    add-int/lit8 v8, v8, 0x1

    iget v9, v1, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    aput v9, v7, v8

    .line 37
    iget-object v7, p0, Lcom/smartisanos/smengine/mymaterial/TwoTextureBatchMaterial;->mModularColorArrayData:[F

    mul-int/lit8 v8, v3, 0x4

    add-int/lit8 v8, v8, 0x2

    iget v9, v1, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    aput v9, v7, v8

    .line 38
    iget-object v7, p0, Lcom/smartisanos/smengine/mymaterial/TwoTextureBatchMaterial;->mModularColorArrayData:[F

    mul-int/lit8 v8, v3, 0x4

    add-int/lit8 v8, v8, 0x3

    iget v9, v1, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    aput v9, v7, v8

    .line 39
    add-int/lit8 v6, v6, 0x4

    .line 33
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 41
    .end local v1    # "color":Lcom/smartisanos/smengine/math/Vector4f;
    :cond_2
    iget-object v7, p0, Lcom/smartisanos/smengine/mymaterial/TwoTextureBatchMaterial;->mModularColorArrayData:[F

    array-length v7, v7

    if-eq v6, v7, :cond_3

    .line 42
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "create mvp array error"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 44
    :cond_3
    const/4 v5, -0x1

    .line 45
    .local v5, "location":I
    if-eqz v4, :cond_4

    .line 46
    const/16 v7, 0x9

    const-string v8, "uModularColorArray9"

    invoke-virtual {p0, v7, v8}, Lcom/smartisanos/smengine/mymaterial/TwoTextureBatchMaterial;->getUniformLocation(ILjava/lang/String;)I

    move-result v5

    .line 50
    :goto_1
    iget-object v7, p0, Lcom/smartisanos/smengine/mymaterial/TwoTextureBatchMaterial;->mShader:Lcom/smartisanos/smengine/Shader;

    iget-object v8, p0, Lcom/smartisanos/smengine/mymaterial/TwoTextureBatchMaterial;->mModularColorArrayData:[F

    array-length v9, v2

    invoke-virtual {v7, v5, v8, v9}, Lcom/smartisanos/smengine/Shader;->setModularColor4fArray(I[FI)V

    .line 51
    return-void

    .line 48
    :cond_4
    const/16 v7, 0xa

    const-string v8, "uModularColorArray16"

    invoke-virtual {p0, v7, v8}, Lcom/smartisanos/smengine/mymaterial/TwoTextureBatchMaterial;->getUniformLocation(ILjava/lang/String;)I

    move-result v5

    goto :goto_1
.end method

.method protected setMVPArray()V
    .locals 10

    .prologue
    .line 53
    const/16 v7, 0x9

    invoke-virtual {p0, v7}, Lcom/smartisanos/smengine/mymaterial/TwoTextureBatchMaterial;->getParam(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/smartisanos/smengine/math/Matrix4f;

    move-object v4, v7

    check-cast v4, [Lcom/smartisanos/smengine/math/Matrix4f;

    .line 54
    .local v4, "matArray":[Lcom/smartisanos/smengine/math/Matrix4f;
    const/4 v2, 0x1

    .line 55
    .local v2, "isBatch9":Z
    if-nez v4, :cond_0

    .line 56
    const/16 v7, 0xa

    invoke-virtual {p0, v7}, Lcom/smartisanos/smengine/mymaterial/TwoTextureBatchMaterial;->getParam(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/smartisanos/smengine/math/Matrix4f;

    move-object v4, v7

    check-cast v4, [Lcom/smartisanos/smengine/math/Matrix4f;

    .line 57
    const/4 v2, 0x0

    .line 59
    :cond_0
    iget-object v7, p0, Lcom/smartisanos/smengine/mymaterial/TwoTextureBatchMaterial;->mMatrixArrayData:[F

    if-nez v7, :cond_1

    .line 60
    array-length v7, v4

    mul-int/lit8 v7, v7, 0x10

    new-array v0, v7, [F

    .line 61
    .local v0, "allData":[F
    iput-object v0, p0, Lcom/smartisanos/smengine/mymaterial/TwoTextureBatchMaterial;->mMatrixArrayData:[F

    .line 63
    .end local v0    # "allData":[F
    :cond_1
    const/4 v6, 0x0

    .line 64
    .local v6, "offset":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v7, v4

    if-ge v1, v7, :cond_2

    .line 65
    aget-object v5, v4, v1

    .line 66
    .local v5, "mvp":Lcom/smartisanos/smengine/math/Matrix4f;
    iget-object v7, p0, Lcom/smartisanos/smengine/mymaterial/TwoTextureBatchMaterial;->mMatrixArrayData:[F

    const/4 v8, 0x1

    invoke-virtual {v5, v7, v6, v8}, Lcom/smartisanos/smengine/math/Matrix4f;->fillFloatArray([FIZ)V

    .line 67
    add-int/lit8 v6, v6, 0x10

    .line 64
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 69
    .end local v5    # "mvp":Lcom/smartisanos/smengine/math/Matrix4f;
    :cond_2
    iget-object v7, p0, Lcom/smartisanos/smengine/mymaterial/TwoTextureBatchMaterial;->mMatrixArrayData:[F

    array-length v7, v7

    if-eq v6, v7, :cond_3

    .line 70
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "create mvp array error"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 72
    :cond_3
    const/4 v3, -0x1

    .line 73
    .local v3, "location":I
    if-eqz v2, :cond_4

    .line 74
    const/4 v7, 0x5

    const-string v8, "uMVPMatArray9"

    invoke-virtual {p0, v7, v8}, Lcom/smartisanos/smengine/mymaterial/TwoTextureBatchMaterial;->getUniformLocation(ILjava/lang/String;)I

    move-result v3

    .line 78
    :goto_1
    iget-object v7, p0, Lcom/smartisanos/smengine/mymaterial/TwoTextureBatchMaterial;->mShader:Lcom/smartisanos/smengine/Shader;

    iget-object v8, p0, Lcom/smartisanos/smengine/mymaterial/TwoTextureBatchMaterial;->mMatrixArrayData:[F

    array-length v9, v4

    invoke-virtual {v7, v3, v8, v9}, Lcom/smartisanos/smengine/Shader;->setMatrix4fArray(I[FI)V

    .line 79
    return-void

    .line 76
    :cond_4
    const/16 v7, 0x8

    const-string v8, "uMVPMatArray16"

    invoke-virtual {p0, v7, v8}, Lcom/smartisanos/smengine/mymaterial/TwoTextureBatchMaterial;->getUniformLocation(ILjava/lang/String;)I

    move-result v3

    goto :goto_1
.end method
