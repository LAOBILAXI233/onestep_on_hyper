.class public Lcom/smartisanos/smengine/mymaterial/TwoTextureDiffCoordModularColorClipPlane;
.super Lcom/smartisanos/smengine/mymaterial/Material;
.source "TwoTextureDiffCoordModularColorClipPlane.java"


.field private mMode:I


.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "vertexStr"    # Ljava/lang/String;
    .param p3, "fragmentStr"    # Ljava/lang/String;
    .param p4, "mode"    # I

    .prologue
    const/4 v2, 0x1

    .line 11
    invoke-direct {p0, p1, p2, p3}, Lcom/smartisanos/smengine/mymaterial/Material;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    const/4 v0, 0x0

    iput v0, p0, Lcom/smartisanos/smengine/mymaterial/TwoTextureDiffCoordModularColorClipPlane;->mMode:I

    .line 12
    iput p4, p0, Lcom/smartisanos/smengine/mymaterial/TwoTextureDiffCoordModularColorClipPlane;->mMode:I

    .line 13
    iget v0, p0, Lcom/smartisanos/smengine/mymaterial/TwoTextureDiffCoordModularColorClipPlane;->mMode:I

    if-ne v0, v2, :cond_1

    .line 14
    iput-boolean v2, p0, Lcom/smartisanos/smengine/mymaterial/TwoTextureDiffCoordModularColorClipPlane;->mUseWorldMatrix:Z

    .line 18
    :cond_0
    :goto_0
    return-void

    .line 15
    :cond_1
    iget v0, p0, Lcom/smartisanos/smengine/mymaterial/TwoTextureDiffCoordModularColorClipPlane;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 16
    iput-boolean v2, p0, Lcom/smartisanos/smengine/mymaterial/TwoTextureDiffCoordModularColorClipPlane;->mUseLocalTranslate:Z

    goto :goto_0
.end method

.method private setClipPlane()V
    .locals 7

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 20
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/mymaterial/TwoTextureDiffCoordModularColorClipPlane;->getParam(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/smartisanos/smengine/math/Vector4f;

    .line 21
    .local v6, "clipPlane":Lcom/smartisanos/smengine/math/Vector4f;
    if-nez v6, :cond_0

    .line 22
    const-string v0, "uClipPlane"

    invoke-virtual {p0, v3, v0}, Lcom/smartisanos/smengine/mymaterial/TwoTextureDiffCoordModularColorClipPlane;->getUniformLocation(ILjava/lang/String;)I

    move-result v1

    .line 23
    .local v1, "location":I
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/TwoTextureDiffCoordModularColorClipPlane;->mShader:Lcom/smartisanos/smengine/Shader;

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/smartisanos/smengine/Shader;->setFloatArray(IFFFF)V

    .line 28
    :goto_0
    return-void

    .line 25
    .end local v1    # "location":I
    :cond_0
    const-string v0, "uClipPlane"

    invoke-virtual {p0, v3, v0}, Lcom/smartisanos/smengine/mymaterial/TwoTextureDiffCoordModularColorClipPlane;->getUniformLocation(ILjava/lang/String;)I

    move-result v1

    .line 26
    .restart local v1    # "location":I
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/TwoTextureDiffCoordModularColorClipPlane;->mShader:Lcom/smartisanos/smengine/Shader;

    iget v2, v6, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    iget v3, v6, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    iget v4, v6, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    iget v5, v6, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    invoke-virtual/range {v0 .. v5}, Lcom/smartisanos/smengine/Shader;->setFloatArray(IFFFF)V

    goto :goto_0
.end method

.method private setClipPlaneHeight()V
    .locals 7

    .prologue
    const/16 v3, 0x12

    const/4 v2, 0x0

    .line 31
    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/mymaterial/TwoTextureDiffCoordModularColorClipPlane;->getParam(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    .line 32
    .local v6, "clipPlaneHeight":Ljava/lang/Float;
    if-nez v6, :cond_0

    .line 33
    const-string v0, "uClipPlaneHeight"

    invoke-virtual {p0, v3, v0}, Lcom/smartisanos/smengine/mymaterial/TwoTextureDiffCoordModularColorClipPlane;->getUniformLocation(ILjava/lang/String;)I

    move-result v1

    .line 34
    .local v1, "location":I
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/TwoTextureDiffCoordModularColorClipPlane;->mShader:Lcom/smartisanos/smengine/Shader;

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/smartisanos/smengine/Shader;->setFloatArray(IFFFF)V

    .line 39
    :goto_0
    return-void

    .line 36
    .end local v1    # "location":I
    :cond_0
    const-string v0, "uClipPlaneHeight"

    invoke-virtual {p0, v3, v0}, Lcom/smartisanos/smengine/mymaterial/TwoTextureDiffCoordModularColorClipPlane;->getUniformLocation(ILjava/lang/String;)I

    move-result v1

    .line 37
    .restart local v1    # "location":I
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/TwoTextureDiffCoordModularColorClipPlane;->mShader:Lcom/smartisanos/smengine/Shader;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/smartisanos/smengine/Shader;->setFloatArray(IFFFF)V

    goto :goto_0
.end method


.method public draw(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/smengine/Mesh;Z)V
    .locals 4
    .param p1, "sn"    # Lcom/smartisanos/smengine/SceneNode;
    .param p2, "mesh"    # Lcom/smartisanos/smengine/Mesh;
    .param p3, "isUseVBO"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 43
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/TwoTextureDiffCoordModularColorClipPlane;->use()V

    .line 44
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/TwoTextureDiffCoordModularColorClipPlane;->bindTexture()V

    .line 45
    invoke-virtual {p0, p3, p2, v2, v3}, Lcom/smartisanos/smengine/mymaterial/TwoTextureDiffCoordModularColorClipPlane;->setVertexData(ZLcom/smartisanos/smengine/Mesh;ZZ)V

    .line 46
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/mymaterial/TwoTextureDiffCoordModularColorClipPlane;->setMVPMatrix(Lcom/smartisanos/smengine/SceneNode;)V

    .line 47
    iget v0, p0, Lcom/smartisanos/smengine/mymaterial/TwoTextureDiffCoordModularColorClipPlane;->mMode:I

    if-ne v0, v2, :cond_0

    .line 48
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/mymaterial/TwoTextureDiffCoordModularColorClipPlane;->setWorldMatrix(Lcom/smartisanos/smengine/SceneNode;)V

    .line 55
    :goto_0
    invoke-direct {p0}, Lcom/smartisanos/smengine/mymaterial/TwoTextureDiffCoordModularColorClipPlane;->setClipPlane()V

    .line 56
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/TwoTextureDiffCoordModularColorClipPlane;->setModularColor()V

    .line 57
    invoke-virtual {p0, v3}, Lcom/smartisanos/smengine/mymaterial/TwoTextureDiffCoordModularColorClipPlane;->setDiffuseMap(I)V

    .line 58
    invoke-virtual {p0, v2}, Lcom/smartisanos/smengine/mymaterial/TwoTextureDiffCoordModularColorClipPlane;->setShadowMap(I)V

    .line 59
    invoke-virtual {p0, p2, p3}, Lcom/smartisanos/smengine/mymaterial/TwoTextureDiffCoordModularColorClipPlane;->drawPrimitive(Lcom/smartisanos/smengine/Mesh;Z)V

    .line 60
    return-void

    .line 49
    :cond_0
    iget v0, p0, Lcom/smartisanos/smengine/mymaterial/TwoTextureDiffCoordModularColorClipPlane;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 50
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/mymaterial/TwoTextureDiffCoordModularColorClipPlane;->setLocalTranslate(Lcom/smartisanos/smengine/SceneNode;)V

    .line 51
    invoke-direct {p0}, Lcom/smartisanos/smengine/mymaterial/TwoTextureDiffCoordModularColorClipPlane;->setClipPlaneHeight()V

    goto :goto_0

    .line 53
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mode error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/smartisanos/smengine/mymaterial/TwoTextureDiffCoordModularColorClipPlane;->mMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public drawMesh(Lcom/smartisanos/smengine/Mesh;Z)V
    .locals 4
    .param p1, "mesh"    # Lcom/smartisanos/smengine/Mesh;
    .param p2, "isUseVBO"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 64
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/TwoTextureDiffCoordModularColorClipPlane;->use()V

    .line 65
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/TwoTextureDiffCoordModularColorClipPlane;->bindTexture()V

    .line 66
    invoke-virtual {p0, p2, p1, v2, v3}, Lcom/smartisanos/smengine/mymaterial/TwoTextureDiffCoordModularColorClipPlane;->setVertexData(ZLcom/smartisanos/smengine/Mesh;ZZ)V

    .line 67
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/TwoTextureDiffCoordModularColorClipPlane;->setMVPMatrix()V

    .line 68
    iget v0, p0, Lcom/smartisanos/smengine/mymaterial/TwoTextureDiffCoordModularColorClipPlane;->mMode:I

    if-ne v0, v2, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/TwoTextureDiffCoordModularColorClipPlane;->setWorldMatrix()V

    .line 76
    :goto_0
    invoke-direct {p0}, Lcom/smartisanos/smengine/mymaterial/TwoTextureDiffCoordModularColorClipPlane;->setClipPlane()V

    .line 77
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/TwoTextureDiffCoordModularColorClipPlane;->setModularColor()V

    .line 78
    invoke-virtual {p0, v3}, Lcom/smartisanos/smengine/mymaterial/TwoTextureDiffCoordModularColorClipPlane;->setDiffuseMap(I)V

    .line 79
    invoke-virtual {p0, v2}, Lcom/smartisanos/smengine/mymaterial/TwoTextureDiffCoordModularColorClipPlane;->setShadowMap(I)V

    .line 80
    invoke-virtual {p0, p1, p2}, Lcom/smartisanos/smengine/mymaterial/TwoTextureDiffCoordModularColorClipPlane;->drawPrimitive(Lcom/smartisanos/smengine/Mesh;Z)V

    .line 81
    return-void

    .line 70
    :cond_0
    iget v0, p0, Lcom/smartisanos/smengine/mymaterial/TwoTextureDiffCoordModularColorClipPlane;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 71
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/TwoTextureDiffCoordModularColorClipPlane;->setLocalTranslate()V

    .line 72
    invoke-direct {p0}, Lcom/smartisanos/smengine/mymaterial/TwoTextureDiffCoordModularColorClipPlane;->setClipPlaneHeight()V

    goto :goto_0

    .line 74
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mode error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/smartisanos/smengine/mymaterial/TwoTextureDiffCoordModularColorClipPlane;->mMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
