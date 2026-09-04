.class public Lcom/smartisanos/smengine/mymaterial/SimpleTextureTexCoordLimitXYMaterial;
.super Lcom/smartisanos/smengine/mymaterial/Material;
.source "SimpleTextureTexCoordLimitXYMaterial.java"


.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "vs"    # Ljava/lang/String;
    .param p3, "fs"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct {p0, p1, p2, p3}, Lcom/smartisanos/smengine/mymaterial/Material;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    return-void
.end method

.method private setTexCoordLimit()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 15
    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Lcom/smartisanos/smengine/mymaterial/SimpleTextureTexCoordLimitXYMaterial;->getParam(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/smengine/math/Vector2f;

    .line 16
    .local v1, "v":Lcom/smartisanos/smengine/math/Vector2f;
    const/16 v2, 0xb

    const-string v3, "uTexCoordLimitXY"

    invoke-virtual {p0, v2, v3}, Lcom/smartisanos/smengine/mymaterial/SimpleTextureTexCoordLimitXYMaterial;->getUniformLocation(ILjava/lang/String;)I

    move-result v0

    .line 17
    .local v0, "location":I
    if-nez v1, :cond_0

    .line 18
    iget-object v2, p0, Lcom/smartisanos/smengine/mymaterial/SimpleTextureTexCoordLimitXYMaterial;->mShader:Lcom/smartisanos/smengine/Shader;

    invoke-virtual {v2, v0, v4, v4}, Lcom/smartisanos/smengine/Shader;->setFloatArray(IFF)V

    .line 22
    :goto_0
    return-void

    .line 20
    :cond_0
    iget-object v2, p0, Lcom/smartisanos/smengine/mymaterial/SimpleTextureTexCoordLimitXYMaterial;->mShader:Lcom/smartisanos/smengine/Shader;

    iget v3, v1, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    iget v4, v1, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    invoke-virtual {v2, v0, v3, v4}, Lcom/smartisanos/smengine/Shader;->setFloatArray(IFF)V

    goto :goto_0
.end method


.method public draw(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/smengine/Mesh;Z)V
    .locals 2
    .param p1, "sn"    # Lcom/smartisanos/smengine/SceneNode;
    .param p2, "mesh"    # Lcom/smartisanos/smengine/Mesh;
    .param p3, "isUseVBO"    # Z

    .prologue
    const/4 v1, 0x0

    .line 25
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/SimpleTextureTexCoordLimitXYMaterial;->use()V

    .line 26
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/SimpleTextureTexCoordLimitXYMaterial;->bindTexture()V

    .line 27
    const/4 v0, 0x1

    invoke-virtual {p0, p3, p2, v0, v1}, Lcom/smartisanos/smengine/mymaterial/SimpleTextureTexCoordLimitXYMaterial;->setVertexData(ZLcom/smartisanos/smengine/Mesh;ZZ)V

    .line 28
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/mymaterial/SimpleTextureTexCoordLimitXYMaterial;->setMVPMatrix(Lcom/smartisanos/smengine/SceneNode;)V

    .line 29
    invoke-virtual {p0, v1}, Lcom/smartisanos/smengine/mymaterial/SimpleTextureTexCoordLimitXYMaterial;->setDiffuseMap(I)V

    .line 30
    invoke-direct {p0}, Lcom/smartisanos/smengine/mymaterial/SimpleTextureTexCoordLimitXYMaterial;->setTexCoordLimit()V

    .line 31
    invoke-virtual {p0, p2, p3}, Lcom/smartisanos/smengine/mymaterial/SimpleTextureTexCoordLimitXYMaterial;->drawPrimitive(Lcom/smartisanos/smengine/Mesh;Z)V

    .line 32
    return-void
.end method

.method public drawMesh(Lcom/smartisanos/smengine/Mesh;Z)V
    .locals 2
    .param p1, "mesh"    # Lcom/smartisanos/smengine/Mesh;
    .param p2, "isUseVBO"    # Z

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/SimpleTextureTexCoordLimitXYMaterial;->use()V

    .line 36
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/SimpleTextureTexCoordLimitXYMaterial;->bindTexture()V

    .line 37
    const/4 v0, 0x1

    invoke-virtual {p0, p2, p1, v0, v1}, Lcom/smartisanos/smengine/mymaterial/SimpleTextureTexCoordLimitXYMaterial;->setVertexData(ZLcom/smartisanos/smengine/Mesh;ZZ)V

    .line 38
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/SimpleTextureTexCoordLimitXYMaterial;->setMVPMatrix()V

    .line 39
    invoke-virtual {p0, v1}, Lcom/smartisanos/smengine/mymaterial/SimpleTextureTexCoordLimitXYMaterial;->setDiffuseMap(I)V

    .line 40
    invoke-direct {p0}, Lcom/smartisanos/smengine/mymaterial/SimpleTextureTexCoordLimitXYMaterial;->setTexCoordLimit()V

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/smartisanos/smengine/mymaterial/SimpleTextureTexCoordLimitXYMaterial;->drawPrimitive(Lcom/smartisanos/smengine/Mesh;Z)V

    .line 43
    return-void
.end method
