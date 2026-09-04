.class public Lcom/smartisanos/smengine/mymaterial/TextureBlendModularColorMaterial;
.super Lcom/smartisanos/smengine/mymaterial/Material;
.source "TextureBlendModularColorMaterial.java"


.field private mBlendColor:Lcom/smartisanos/smengine/math/Vector4f;


.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "vertexStr"    # Ljava/lang/String;
    .param p3, "fragmentStr"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-direct {p0, p1, p2, p3}, Lcom/smartisanos/smengine/mymaterial/Material;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    new-instance v0, Lcom/smartisanos/smengine/math/Vector4f;

    invoke-direct {v0}, Lcom/smartisanos/smengine/math/Vector4f;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/mymaterial/TextureBlendModularColorMaterial;->mBlendColor:Lcom/smartisanos/smengine/math/Vector4f;

    .line 16
    return-void
.end method


.method public draw(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/smengine/Mesh;Z)V
    .locals 6
    .param p1, "sn"    # Lcom/smartisanos/smengine/SceneNode;
    .param p2, "mesh"    # Lcom/smartisanos/smengine/Mesh;
    .param p3, "isUseVBO"    # Z

    .prologue
    const/4 v2, 0x0

    .line 19
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/TextureBlendModularColorMaterial;->use()V

    .line 20
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/TextureBlendModularColorMaterial;->bindTexture()V

    .line 21
    const/4 v0, 0x1

    invoke-virtual {p0, p3, p2, v0, v2}, Lcom/smartisanos/smengine/mymaterial/TextureBlendModularColorMaterial;->setVertexData(ZLcom/smartisanos/smengine/Mesh;ZZ)V

    .line 22
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/mymaterial/TextureBlendModularColorMaterial;->setMVPMatrix(Lcom/smartisanos/smengine/SceneNode;)V

    .line 23
    invoke-virtual {p0, v2}, Lcom/smartisanos/smengine/mymaterial/TextureBlendModularColorMaterial;->setDiffuseMap(I)V

    .line 24
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/TextureBlendModularColorMaterial;->setModularColor()V

    .line 25
    const/16 v0, 0x18

    const-string v2, "uBlendColor"

    invoke-virtual {p0, v0, v2}, Lcom/smartisanos/smengine/mymaterial/TextureBlendModularColorMaterial;->getUniformLocation(ILjava/lang/String;)I

    move-result v1

    .line 26
    .local v1, "loc":I
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/TextureBlendModularColorMaterial;->mShader:Lcom/smartisanos/smengine/Shader;

    iget-object v2, p0, Lcom/smartisanos/smengine/mymaterial/TextureBlendModularColorMaterial;->mBlendColor:Lcom/smartisanos/smengine/math/Vector4f;

    iget v2, v2, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    iget-object v3, p0, Lcom/smartisanos/smengine/mymaterial/TextureBlendModularColorMaterial;->mBlendColor:Lcom/smartisanos/smengine/math/Vector4f;

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    iget-object v4, p0, Lcom/smartisanos/smengine/mymaterial/TextureBlendModularColorMaterial;->mBlendColor:Lcom/smartisanos/smengine/math/Vector4f;

    iget v4, v4, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    iget-object v5, p0, Lcom/smartisanos/smengine/mymaterial/TextureBlendModularColorMaterial;->mBlendColor:Lcom/smartisanos/smengine/math/Vector4f;

    iget v5, v5, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    invoke-virtual/range {v0 .. v5}, Lcom/smartisanos/smengine/Shader;->setFloatArray(IFFFF)V

    .line 27
    invoke-virtual {p0, p2, p3}, Lcom/smartisanos/smengine/mymaterial/TextureBlendModularColorMaterial;->drawPrimitive(Lcom/smartisanos/smengine/Mesh;Z)V

    .line 28
    return-void
.end method

.method public drawMesh(Lcom/smartisanos/smengine/Mesh;Z)V
    .locals 6
    .param p1, "mesh"    # Lcom/smartisanos/smengine/Mesh;
    .param p2, "isUseVBO"    # Z

    .prologue
    const/4 v2, 0x0

    .line 31
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/TextureBlendModularColorMaterial;->use()V

    .line 32
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/TextureBlendModularColorMaterial;->bindTexture()V

    .line 33
    const/4 v0, 0x1

    invoke-virtual {p0, p2, p1, v0, v2}, Lcom/smartisanos/smengine/mymaterial/TextureBlendModularColorMaterial;->setVertexData(ZLcom/smartisanos/smengine/Mesh;ZZ)V

    .line 34
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/TextureBlendModularColorMaterial;->setMVPMatrix()V

    .line 35
    invoke-virtual {p0, v2}, Lcom/smartisanos/smengine/mymaterial/TextureBlendModularColorMaterial;->setDiffuseMap(I)V

    .line 36
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/TextureBlendModularColorMaterial;->setModularColor()V

    .line 37
    const/16 v0, 0x18

    const-string v2, "uBlendColor"

    invoke-virtual {p0, v0, v2}, Lcom/smartisanos/smengine/mymaterial/TextureBlendModularColorMaterial;->getUniformLocation(ILjava/lang/String;)I

    move-result v1

    .line 38
    .local v1, "loc":I
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/TextureBlendModularColorMaterial;->mShader:Lcom/smartisanos/smengine/Shader;

    iget-object v2, p0, Lcom/smartisanos/smengine/mymaterial/TextureBlendModularColorMaterial;->mBlendColor:Lcom/smartisanos/smengine/math/Vector4f;

    iget v2, v2, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    iget-object v3, p0, Lcom/smartisanos/smengine/mymaterial/TextureBlendModularColorMaterial;->mBlendColor:Lcom/smartisanos/smengine/math/Vector4f;

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    iget-object v4, p0, Lcom/smartisanos/smengine/mymaterial/TextureBlendModularColorMaterial;->mBlendColor:Lcom/smartisanos/smengine/math/Vector4f;

    iget v4, v4, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    iget-object v5, p0, Lcom/smartisanos/smengine/mymaterial/TextureBlendModularColorMaterial;->mBlendColor:Lcom/smartisanos/smengine/math/Vector4f;

    iget v5, v5, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    invoke-virtual/range {v0 .. v5}, Lcom/smartisanos/smengine/Shader;->setFloatArray(IFFFF)V

    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/smartisanos/smengine/mymaterial/TextureBlendModularColorMaterial;->drawPrimitive(Lcom/smartisanos/smengine/Mesh;Z)V

    .line 40
    return-void
.end method

.method public setBlendColor(FFFF)V
    .locals 1
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F
    .param p4, "a"    # F

    .prologue
    .line 43
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/TextureBlendModularColorMaterial;->mBlendColor:Lcom/smartisanos/smengine/math/Vector4f;

    iput p1, v0, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    .line 44
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/TextureBlendModularColorMaterial;->mBlendColor:Lcom/smartisanos/smengine/math/Vector4f;

    iput p2, v0, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    .line 45
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/TextureBlendModularColorMaterial;->mBlendColor:Lcom/smartisanos/smengine/math/Vector4f;

    iput p3, v0, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    .line 46
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/TextureBlendModularColorMaterial;->mBlendColor:Lcom/smartisanos/smengine/math/Vector4f;

    iput p4, v0, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    .line 47
    return-void
.end method
