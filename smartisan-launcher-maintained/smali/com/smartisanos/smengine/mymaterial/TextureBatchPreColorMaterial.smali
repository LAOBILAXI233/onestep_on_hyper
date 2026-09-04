.class public Lcom/smartisanos/smengine/mymaterial/TextureBatchPreColorMaterial;
.super Lcom/smartisanos/smengine/mymaterial/TextureBatchMaterial;
.source "TextureBatchPreColorMaterial.java"


.field private mBlendColor:Lcom/smartisanos/smengine/math/Vector4f;


.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "vertexStr"    # Ljava/lang/String;
    .param p3, "fragmentStr"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-direct {p0, p1, p2, p3}, Lcom/smartisanos/smengine/mymaterial/TextureBatchMaterial;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    new-instance v0, Lcom/smartisanos/smengine/math/Vector4f;

    invoke-direct {v0}, Lcom/smartisanos/smengine/math/Vector4f;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/mymaterial/TextureBatchPreColorMaterial;->mBlendColor:Lcom/smartisanos/smengine/math/Vector4f;

    .line 16
    return-void
.end method


.method public draw(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/smengine/Mesh;Z)V
    .locals 7
    .param p1, "sn"    # Lcom/smartisanos/smengine/SceneNode;
    .param p2, "mesh"    # Lcom/smartisanos/smengine/Mesh;
    .param p3, "isUseVBO"    # Z

    .prologue
    const/4 v6, 0x0

    .line 27
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/TextureBatchPreColorMaterial;->use()V

    .line 28
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/TextureBatchPreColorMaterial;->bindTexture()V

    .line 29
    const/4 v0, 0x1

    invoke-virtual {p0, p3, p2, v0, v6}, Lcom/smartisanos/smengine/mymaterial/TextureBatchPreColorMaterial;->setVertexData(ZLcom/smartisanos/smengine/Mesh;ZZ)V

    .line 30
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/mymaterial/TextureBatchPreColorMaterial;->setMVPMatrixArray(Lcom/smartisanos/smengine/SceneNode;)V

    .line 31
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/TextureBatchPreColorMaterial;->setColorArray()V

    .line 32
    const/16 v0, 0x18

    const-string v2, "uBlendColor"

    invoke-virtual {p0, v0, v2}, Lcom/smartisanos/smengine/mymaterial/TextureBatchPreColorMaterial;->getUniformLocation(ILjava/lang/String;)I

    move-result v1

    .line 33
    .local v1, "loc":I
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/TextureBatchPreColorMaterial;->mShader:Lcom/smartisanos/smengine/Shader;

    iget-object v2, p0, Lcom/smartisanos/smengine/mymaterial/TextureBatchPreColorMaterial;->mBlendColor:Lcom/smartisanos/smengine/math/Vector4f;

    iget v2, v2, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    iget-object v3, p0, Lcom/smartisanos/smengine/mymaterial/TextureBatchPreColorMaterial;->mBlendColor:Lcom/smartisanos/smengine/math/Vector4f;

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    iget-object v4, p0, Lcom/smartisanos/smengine/mymaterial/TextureBatchPreColorMaterial;->mBlendColor:Lcom/smartisanos/smengine/math/Vector4f;

    iget v4, v4, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    iget-object v5, p0, Lcom/smartisanos/smengine/mymaterial/TextureBatchPreColorMaterial;->mBlendColor:Lcom/smartisanos/smengine/math/Vector4f;

    iget v5, v5, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    invoke-virtual/range {v0 .. v5}, Lcom/smartisanos/smengine/Shader;->setFloatArray(IFFFF)V

    .line 34
    invoke-virtual {p0, v6}, Lcom/smartisanos/smengine/mymaterial/TextureBatchPreColorMaterial;->setDiffuseMap(I)V

    .line 35
    invoke-virtual {p0, p2, p3}, Lcom/smartisanos/smengine/mymaterial/TextureBatchPreColorMaterial;->drawPrimitive(Lcom/smartisanos/smengine/Mesh;Z)V

    .line 36
    return-void
.end method

.method public setBlendColor(FFFF)V
    .locals 1
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F
    .param p4, "a"    # F

    .prologue
    .line 19
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/TextureBatchPreColorMaterial;->mBlendColor:Lcom/smartisanos/smengine/math/Vector4f;

    iput p1, v0, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    .line 20
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/TextureBatchPreColorMaterial;->mBlendColor:Lcom/smartisanos/smengine/math/Vector4f;

    iput p2, v0, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    .line 21
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/TextureBatchPreColorMaterial;->mBlendColor:Lcom/smartisanos/smengine/math/Vector4f;

    iput p3, v0, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    .line 22
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/TextureBatchPreColorMaterial;->mBlendColor:Lcom/smartisanos/smengine/math/Vector4f;

    iput p4, v0, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    .line 23
    return-void
.end method
