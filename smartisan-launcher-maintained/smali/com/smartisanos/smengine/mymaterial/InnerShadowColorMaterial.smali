.class public Lcom/smartisanos/smengine/mymaterial/InnerShadowColorMaterial;
.super Lcom/smartisanos/smengine/mymaterial/Material;
.source "InnerShadowColorMaterial.java"


.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "vertexStr"    # Ljava/lang/String;
    .param p3, "fragmentStr"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct {p0, p1, p2, p3}, Lcom/smartisanos/smengine/mymaterial/Material;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    return-void
.end method


.method public draw(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/smengine/Mesh;Z)V
    .locals 6
    .param p1, "sn"    # Lcom/smartisanos/smengine/SceneNode;
    .param p2, "mesh"    # Lcom/smartisanos/smengine/Mesh;
    .param p3, "isUseVBO"    # Z

    .prologue
    const/16 v5, 0xe

    const/16 v4, 0xd

    const/16 v3, 0xc

    const/4 v2, 0x0

    .line 36
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/InnerShadowColorMaterial;->use()V

    .line 37
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/InnerShadowColorMaterial;->bindTexture()V

    .line 38
    const/16 v0, 0xb

    const-string v1, "uInnerShadowSizeH"

    invoke-virtual {p0, v0, v3, v1}, Lcom/smartisanos/smengine/mymaterial/InnerShadowColorMaterial;->setInnerProperty(IILjava/lang/String;)V

    .line 39
    const-string v0, "uInnerShadowSizeV"

    invoke-virtual {p0, v4, v5, v0}, Lcom/smartisanos/smengine/mymaterial/InnerShadowColorMaterial;->setInnerProperty(IILjava/lang/String;)V

    .line 41
    const-string v0, "uInnerShadowAlphaRangeH"

    invoke-virtual {p0, v3, v4, v0}, Lcom/smartisanos/smengine/mymaterial/InnerShadowColorMaterial;->setInnerProperty(IILjava/lang/String;)V

    .line 42
    const/16 v0, 0xf

    const-string v1, "uInnerShadowAlphaRangeV"

    invoke-virtual {p0, v5, v0, v1}, Lcom/smartisanos/smengine/mymaterial/InnerShadowColorMaterial;->setInnerProperty(IILjava/lang/String;)V

    .line 43
    const/4 v0, 0x1

    invoke-virtual {p0, p3, p2, v0, v2}, Lcom/smartisanos/smengine/mymaterial/InnerShadowColorMaterial;->setVertexData(ZLcom/smartisanos/smengine/Mesh;ZZ)V

    .line 44
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/InnerShadowColorMaterial;->setModularColor()V

    .line 45
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/mymaterial/InnerShadowColorMaterial;->setMVPMatrix(Lcom/smartisanos/smengine/SceneNode;)V

    .line 46
    invoke-virtual {p0, v2}, Lcom/smartisanos/smengine/mymaterial/InnerShadowColorMaterial;->setDiffuseMap(I)V

    .line 47
    invoke-virtual {p0, p2, p3}, Lcom/smartisanos/smengine/mymaterial/InnerShadowColorMaterial;->drawPrimitive(Lcom/smartisanos/smengine/Mesh;Z)V

    .line 48
    return-void
.end method

.method public drawMesh(Lcom/smartisanos/smengine/Mesh;Z)V
    .locals 6
    .param p1, "mesh"    # Lcom/smartisanos/smengine/Mesh;
    .param p2, "isUseVBO"    # Z

    .prologue
    const/16 v5, 0xe

    const/16 v4, 0xd

    const/16 v3, 0xc

    const/4 v2, 0x0

    .line 51
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/InnerShadowColorMaterial;->use()V

    .line 52
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/InnerShadowColorMaterial;->bindTexture()V

    .line 53
    const/16 v0, 0xb

    const-string v1, "uInnerShadowSizeH"

    invoke-virtual {p0, v0, v3, v1}, Lcom/smartisanos/smengine/mymaterial/InnerShadowColorMaterial;->setInnerProperty(IILjava/lang/String;)V

    .line 54
    const-string v0, "uInnerShadowSizeV"

    invoke-virtual {p0, v4, v5, v0}, Lcom/smartisanos/smengine/mymaterial/InnerShadowColorMaterial;->setInnerProperty(IILjava/lang/String;)V

    .line 56
    const-string v0, "uInnerShadowAlphaRangeH"

    invoke-virtual {p0, v3, v4, v0}, Lcom/smartisanos/smengine/mymaterial/InnerShadowColorMaterial;->setInnerProperty(IILjava/lang/String;)V

    .line 57
    const/16 v0, 0xf

    const-string v1, "uInnerShadowAlphaRangeV"

    invoke-virtual {p0, v5, v0, v1}, Lcom/smartisanos/smengine/mymaterial/InnerShadowColorMaterial;->setInnerProperty(IILjava/lang/String;)V

    .line 58
    const/4 v0, 0x1

    invoke-virtual {p0, p2, p1, v0, v2}, Lcom/smartisanos/smengine/mymaterial/InnerShadowColorMaterial;->setVertexData(ZLcom/smartisanos/smengine/Mesh;ZZ)V

    .line 59
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/InnerShadowColorMaterial;->setModularColor()V

    .line 60
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/InnerShadowColorMaterial;->setMVPMatrix()V

    .line 61
    invoke-virtual {p0, v2}, Lcom/smartisanos/smengine/mymaterial/InnerShadowColorMaterial;->setDiffuseMap(I)V

    .line 62
    invoke-virtual {p0, p1, p2}, Lcom/smartisanos/smengine/mymaterial/InnerShadowColorMaterial;->drawPrimitive(Lcom/smartisanos/smengine/Mesh;Z)V

    .line 63
    return-void
.end method

.method protected setInnerProperty(IILjava/lang/String;)V
    .locals 7
    .param p1, "paramID"    # I
    .param p2, "uniformID"    # I
    .param p3, "uniformIDName"    # Ljava/lang/String;

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 15
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/mymaterial/InnerShadowColorMaterial;->getParam(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/smartisanos/smengine/math/Vector4f;

    .line 16
    .local v6, "size":Lcom/smartisanos/smengine/math/Vector4f;
    invoke-virtual {p0, p2, p3}, Lcom/smartisanos/smengine/mymaterial/InnerShadowColorMaterial;->getUniformLocation(ILjava/lang/String;)I

    move-result v1

    .line 17
    .local v1, "location":I
    if-eqz v6, :cond_0

    .line 18
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/InnerShadowColorMaterial;->mShader:Lcom/smartisanos/smengine/Shader;

    iget v2, v6, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    iget v3, v6, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    iget v4, v6, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    iget v5, v6, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    invoke-virtual/range {v0 .. v5}, Lcom/smartisanos/smengine/Shader;->setFloatArray(IFFFF)V

    .line 22
    :goto_0
    return-void

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/InnerShadowColorMaterial;->mShader:Lcom/smartisanos/smengine/Shader;

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/smartisanos/smengine/Shader;->setFloatArray(IFFFF)V

    goto :goto_0
.end method
