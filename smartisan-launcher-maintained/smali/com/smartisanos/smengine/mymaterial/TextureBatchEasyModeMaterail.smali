.class public Lcom/smartisanos/smengine/mymaterial/TextureBatchEasyModeMaterail;
.super Lcom/smartisanos/smengine/mymaterial/TextureBatchMaterial;
.source "TextureBatchEasyModeMaterail.java"


.field private mMatrixArrayData:[F

.field private mModularColorArrayData:[F


.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "vertexStr"    # Ljava/lang/String;
    .param p3, "fragmentStr"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-direct {p0, p1, p2, p3}, Lcom/smartisanos/smengine/mymaterial/TextureBatchMaterial;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    return-void
.end method


.method protected setColorArray()V
    .locals 9

    .prologue
    .line 19
    const/16 v6, 0x17

    invoke-virtual {p0, v6}, Lcom/smartisanos/smengine/mymaterial/TextureBatchEasyModeMaterail;->getParam(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/smartisanos/smengine/math/Vector4f;

    move-object v2, v6

    check-cast v2, [Lcom/smartisanos/smengine/math/Vector4f;

    .line 22
    .local v2, "colorArray":[Lcom/smartisanos/smengine/math/Vector4f;
    iget-object v6, p0, Lcom/smartisanos/smengine/mymaterial/TextureBatchEasyModeMaterail;->mModularColorArrayData:[F

    if-nez v6, :cond_0

    .line 23
    array-length v6, v2

    mul-int/lit8 v6, v6, 0x4

    new-array v0, v6, [F

    .line 24
    .local v0, "allData":[F
    iput-object v0, p0, Lcom/smartisanos/smengine/mymaterial/TextureBatchEasyModeMaterail;->mModularColorArrayData:[F

    .line 26
    .end local v0    # "allData":[F
    :cond_0
    const/4 v5, 0x0

    .line 27
    .local v5, "offset":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v6, v2

    if-ge v3, v6, :cond_1

    .line 28
    aget-object v1, v2, v3

    .line 29
    .local v1, "color":Lcom/smartisanos/smengine/math/Vector4f;
    iget-object v6, p0, Lcom/smartisanos/smengine/mymaterial/TextureBatchEasyModeMaterail;->mModularColorArrayData:[F

    mul-int/lit8 v7, v3, 0x4

    iget v8, v1, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    aput v8, v6, v7

    .line 30
    iget-object v6, p0, Lcom/smartisanos/smengine/mymaterial/TextureBatchEasyModeMaterail;->mModularColorArrayData:[F

    mul-int/lit8 v7, v3, 0x4

    add-int/lit8 v7, v7, 0x1

    iget v8, v1, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    aput v8, v6, v7

    .line 31
    iget-object v6, p0, Lcom/smartisanos/smengine/mymaterial/TextureBatchEasyModeMaterail;->mModularColorArrayData:[F

    mul-int/lit8 v7, v3, 0x4

    add-int/lit8 v7, v7, 0x2

    iget v8, v1, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    aput v8, v6, v7

    .line 32
    iget-object v6, p0, Lcom/smartisanos/smengine/mymaterial/TextureBatchEasyModeMaterail;->mModularColorArrayData:[F

    mul-int/lit8 v7, v3, 0x4

    add-int/lit8 v7, v7, 0x3

    iget v8, v1, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    aput v8, v6, v7

    .line 33
    add-int/lit8 v5, v5, 0x4

    .line 27
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 35
    .end local v1    # "color":Lcom/smartisanos/smengine/math/Vector4f;
    :cond_1
    iget-object v6, p0, Lcom/smartisanos/smengine/mymaterial/TextureBatchEasyModeMaterail;->mModularColorArrayData:[F

    array-length v6, v6

    if-eq v5, v6, :cond_2

    .line 36
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "create mvp array error"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 38
    :cond_2
    const/16 v6, 0x19

    const-string v7, "uModularColorArray6"

    invoke-virtual {p0, v6, v7}, Lcom/smartisanos/smengine/mymaterial/TextureBatchEasyModeMaterail;->getUniformLocation(ILjava/lang/String;)I

    move-result v4

    .line 40
    .local v4, "location":I
    iget-object v6, p0, Lcom/smartisanos/smengine/mymaterial/TextureBatchEasyModeMaterail;->mShader:Lcom/smartisanos/smengine/Shader;

    iget-object v7, p0, Lcom/smartisanos/smengine/mymaterial/TextureBatchEasyModeMaterail;->mModularColorArrayData:[F

    array-length v8, v2

    invoke-virtual {v6, v4, v7, v8}, Lcom/smartisanos/smengine/Shader;->setModularColor4fArray(I[FI)V

    .line 41
    return-void
.end method
