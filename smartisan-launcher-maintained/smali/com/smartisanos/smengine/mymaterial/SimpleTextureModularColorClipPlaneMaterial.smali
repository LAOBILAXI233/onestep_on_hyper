.class public Lcom/smartisanos/smengine/mymaterial/SimpleTextureModularColorClipPlaneMaterial;
.super Lcom/smartisanos/smengine/mymaterial/Material;
.source "SimpleTextureModularColorClipPlaneMaterial.java"


.field private mMode:I


.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "vertexStr"    # Ljava/lang/String;
    .param p3, "fragmentStr"    # Ljava/lang/String;
    .param p4, "mode"    # I

    .prologue
    const/4 v2, 0x1

    .line 14
    invoke-direct {p0, p1, p2, p3}, Lcom/smartisanos/smengine/mymaterial/Material;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Lcom/smartisanos/smengine/mymaterial/SimpleTextureModularColorClipPlaneMaterial;->mMode:I

    .line 15
    iput p4, p0, Lcom/smartisanos/smengine/mymaterial/SimpleTextureModularColorClipPlaneMaterial;->mMode:I

    .line 16
    iget v0, p0, Lcom/smartisanos/smengine/mymaterial/SimpleTextureModularColorClipPlaneMaterial;->mMode:I

    if-ne v0, v2, :cond_1

    .line 17
    iput-boolean v2, p0, Lcom/smartisanos/smengine/mymaterial/SimpleTextureModularColorClipPlaneMaterial;->mUseWorldMatrix:Z

    .line 21
    :cond_0
    :goto_0
    return-void

    .line 18
    :cond_1
    iget v0, p0, Lcom/smartisanos/smengine/mymaterial/SimpleTextureModularColorClipPlaneMaterial;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 19
    iput-boolean v2, p0, Lcom/smartisanos/smengine/mymaterial/SimpleTextureModularColorClipPlaneMaterial;->mUseLocalTranslate:Z

    goto :goto_0
.end method

.method private setClipPlane()V
    .locals 7

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 23
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/mymaterial/SimpleTextureModularColorClipPlaneMaterial;->getParam(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/smartisanos/smengine/math/Vector4f;

    .line 24
    .local v6, "clipPlane":Lcom/smartisanos/smengine/math/Vector4f;
    if-nez v6, :cond_0

    .line 25
    const-string v0, "uClipPlane"

    invoke-virtual {p0, v3, v0}, Lcom/smartisanos/smengine/mymaterial/SimpleTextureModularColorClipPlaneMaterial;->getUniformLocation(ILjava/lang/String;)I

    move-result v1

    .line 26
    .local v1, "location":I
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/SimpleTextureModularColorClipPlaneMaterial;->mShader:Lcom/smartisanos/smengine/Shader;

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/smartisanos/smengine/Shader;->setFloatArray(IFFFF)V

    .line 31
    :goto_0
    return-void

    .line 28
    .end local v1    # "location":I
    :cond_0
    const-string v0, "uClipPlane"

    invoke-virtual {p0, v3, v0}, Lcom/smartisanos/smengine/mymaterial/SimpleTextureModularColorClipPlaneMaterial;->getUniformLocation(ILjava/lang/String;)I

    move-result v1

    .line 29
    .restart local v1    # "location":I
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/SimpleTextureModularColorClipPlaneMaterial;->mShader:Lcom/smartisanos/smengine/Shader;

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

    .line 34
    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/mymaterial/SimpleTextureModularColorClipPlaneMaterial;->getParam(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    .line 35
    .local v6, "clipPlaneHeight":Ljava/lang/Float;
    if-nez v6, :cond_0

    .line 36
    const-string v0, "uClipPlaneHeight"

    invoke-virtual {p0, v3, v0}, Lcom/smartisanos/smengine/mymaterial/SimpleTextureModularColorClipPlaneMaterial;->getUniformLocation(ILjava/lang/String;)I

    move-result v1

    .line 37
    .local v1, "location":I
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/SimpleTextureModularColorClipPlaneMaterial;->mShader:Lcom/smartisanos/smengine/Shader;

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/smartisanos/smengine/Shader;->setFloatArray(IFFFF)V

    .line 42
    :goto_0
    return-void

    .line 39
    .end local v1    # "location":I
    :cond_0
    const-string v0, "uClipPlaneHeight"

    invoke-virtual {p0, v3, v0}, Lcom/smartisanos/smengine/mymaterial/SimpleTextureModularColorClipPlaneMaterial;->getUniformLocation(ILjava/lang/String;)I

    move-result v1

    .line 40
    .restart local v1    # "location":I
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/SimpleTextureModularColorClipPlaneMaterial;->mShader:Lcom/smartisanos/smengine/Shader;

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
    .locals 3
    .param p1, "sn"    # Lcom/smartisanos/smengine/SceneNode;
    .param p2, "mesh"    # Lcom/smartisanos/smengine/Mesh;
    .param p3, "isUseVBO"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 45
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/SimpleTextureModularColorClipPlaneMaterial;->use()V

    .line 46
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/SimpleTextureModularColorClipPlaneMaterial;->bindTexture()V

    .line 47
    invoke-virtual {p0, p3, p2, v1, v2}, Lcom/smartisanos/smengine/mymaterial/SimpleTextureModularColorClipPlaneMaterial;->setVertexData(ZLcom/smartisanos/smengine/Mesh;ZZ)V

    .line 48
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/mymaterial/SimpleTextureModularColorClipPlaneMaterial;->setMVPMatrix(Lcom/smartisanos/smengine/SceneNode;)V

    .line 49
    iget v0, p0, Lcom/smartisanos/smengine/mymaterial/SimpleTextureModularColorClipPlaneMaterial;->mMode:I

    if-ne v0, v1, :cond_0

    .line 50
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/mymaterial/SimpleTextureModularColorClipPlaneMaterial;->setWorldMatrix(Lcom/smartisanos/smengine/SceneNode;)V

    .line 57
    :goto_0
    invoke-direct {p0}, Lcom/smartisanos/smengine/mymaterial/SimpleTextureModularColorClipPlaneMaterial;->setClipPlane()V

    .line 58
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/SimpleTextureModularColorClipPlaneMaterial;->setModularColor()V

    .line 59
    invoke-virtual {p0, v2}, Lcom/smartisanos/smengine/mymaterial/SimpleTextureModularColorClipPlaneMaterial;->setDiffuseMap(I)V

    .line 60
    invoke-virtual {p0, p2, p3}, Lcom/smartisanos/smengine/mymaterial/SimpleTextureModularColorClipPlaneMaterial;->drawPrimitive(Lcom/smartisanos/smengine/Mesh;Z)V

    .line 61
    return-void

    .line 51
    :cond_0
    iget v0, p0, Lcom/smartisanos/smengine/mymaterial/SimpleTextureModularColorClipPlaneMaterial;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 52
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/mymaterial/SimpleTextureModularColorClipPlaneMaterial;->setLocalTranslate(Lcom/smartisanos/smengine/SceneNode;)V

    .line 53
    invoke-direct {p0}, Lcom/smartisanos/smengine/mymaterial/SimpleTextureModularColorClipPlaneMaterial;->setClipPlaneHeight()V

    goto :goto_0

    .line 55
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mode error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/smartisanos/smengine/mymaterial/SimpleTextureModularColorClipPlaneMaterial;->mMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public drawMesh(Lcom/smartisanos/smengine/Mesh;Z)V
    .locals 3
    .param p1, "mesh"    # Lcom/smartisanos/smengine/Mesh;
    .param p2, "isUseVBO"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 64
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/SimpleTextureModularColorClipPlaneMaterial;->use()V

    .line 65
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/SimpleTextureModularColorClipPlaneMaterial;->bindTexture()V

    .line 66
    invoke-virtual {p0, p2, p1, v1, v2}, Lcom/smartisanos/smengine/mymaterial/SimpleTextureModularColorClipPlaneMaterial;->setVertexData(ZLcom/smartisanos/smengine/Mesh;ZZ)V

    .line 67
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/SimpleTextureModularColorClipPlaneMaterial;->setMVPMatrix()V

    .line 68
    iget v0, p0, Lcom/smartisanos/smengine/mymaterial/SimpleTextureModularColorClipPlaneMaterial;->mMode:I

    if-ne v0, v1, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/SimpleTextureModularColorClipPlaneMaterial;->setWorldMatrix()V

    .line 76
    :goto_0
    invoke-direct {p0}, Lcom/smartisanos/smengine/mymaterial/SimpleTextureModularColorClipPlaneMaterial;->setClipPlane()V

    .line 77
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/SimpleTextureModularColorClipPlaneMaterial;->setModularColor()V

    .line 78
    invoke-virtual {p0, v2}, Lcom/smartisanos/smengine/mymaterial/SimpleTextureModularColorClipPlaneMaterial;->setDiffuseMap(I)V

    .line 79
    invoke-virtual {p0, p1, p2}, Lcom/smartisanos/smengine/mymaterial/SimpleTextureModularColorClipPlaneMaterial;->drawPrimitive(Lcom/smartisanos/smengine/Mesh;Z)V

    .line 80
    return-void

    .line 70
    :cond_0
    iget v0, p0, Lcom/smartisanos/smengine/mymaterial/SimpleTextureModularColorClipPlaneMaterial;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 71
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/SimpleTextureModularColorClipPlaneMaterial;->setLocalTranslate()V

    .line 72
    invoke-direct {p0}, Lcom/smartisanos/smengine/mymaterial/SimpleTextureModularColorClipPlaneMaterial;->setClipPlaneHeight()V

    goto :goto_0

    .line 74
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mode error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/smartisanos/smengine/mymaterial/SimpleTextureModularColorClipPlaneMaterial;->mMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
