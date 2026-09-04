.class public Lcom/smartisanos/smengine/mymaterial/TextureBatchWithDirLightMaterial;
.super Lcom/smartisanos/smengine/mymaterial/TextureBatchMaterial;
.source "TextureBatchWithDirLightMaterial.java"


.field private mLightDirInWorldSpace:Lcom/smartisanos/smengine/math/Vector3f;


.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "vertexStr"    # Ljava/lang/String;
    .param p3, "fragmentStr"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 16
    invoke-direct {p0, p1, p2, p3}, Lcom/smartisanos/smengine/mymaterial/TextureBatchMaterial;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    new-instance v0, Lcom/smartisanos/smengine/math/Vector3f;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-direct {v0, v2, v2, v1}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    iput-object v0, p0, Lcom/smartisanos/smengine/mymaterial/TextureBatchWithDirLightMaterial;->mLightDirInWorldSpace:Lcom/smartisanos/smengine/math/Vector3f;

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smartisanos/smengine/mymaterial/TextureBatchWithDirLightMaterial;->mUseModelSpaceLightDir:Z

    .line 19
    return-void
.end method

.method private setModelSpaceLightDirArray(Lcom/smartisanos/smengine/SceneNode;)V
    .locals 3
    .param p1, "sn"    # Lcom/smartisanos/smengine/SceneNode;

    .prologue
    .line 23
    const/16 v1, 0x17

    const-string v2, "uModelSpaceLightDir"

    invoke-virtual {p0, v1, v2}, Lcom/smartisanos/smengine/mymaterial/TextureBatchWithDirLightMaterial;->getUniformLocation(ILjava/lang/String;)I

    move-result v0

    .line 26
    .local v0, "location":I
    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/SceneNode;->setModelSpaceLightDirArrayDataToShader(I)V

    .line 27
    return-void
.end method


.method public draw(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/smengine/Mesh;Z)V
    .locals 2
    .param p1, "sn"    # Lcom/smartisanos/smengine/SceneNode;
    .param p2, "mesh"    # Lcom/smartisanos/smengine/Mesh;
    .param p3, "isUseVBO"    # Z

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/TextureBatchWithDirLightMaterial;->use()V

    .line 40
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/TextureBatchWithDirLightMaterial;->bindTexture()V

    .line 41
    const/4 v0, 0x1

    invoke-virtual {p0, p3, p2, v0, v1}, Lcom/smartisanos/smengine/mymaterial/TextureBatchWithDirLightMaterial;->setVertexData(ZLcom/smartisanos/smengine/Mesh;ZZ)V

    .line 42
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/mymaterial/TextureBatchWithDirLightMaterial;->setMVPMatrixArray(Lcom/smartisanos/smengine/SceneNode;)V

    .line 43
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/mymaterial/TextureBatchWithDirLightMaterial;->setModelSpaceLightDirArray(Lcom/smartisanos/smengine/SceneNode;)V

    .line 44
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/TextureBatchWithDirLightMaterial;->setColorArray()V

    .line 45
    invoke-virtual {p0, v1}, Lcom/smartisanos/smengine/mymaterial/TextureBatchWithDirLightMaterial;->setDiffuseMap(I)V

    .line 46
    invoke-virtual {p0, p2, p3}, Lcom/smartisanos/smengine/mymaterial/TextureBatchWithDirLightMaterial;->drawPrimitive(Lcom/smartisanos/smengine/Mesh;Z)V

    .line 47
    return-void
.end method

.method public getLightDirInWorldSpace()Lcom/smartisanos/smengine/math/Vector3f;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/TextureBatchWithDirLightMaterial;->mLightDirInWorldSpace:Lcom/smartisanos/smengine/math/Vector3f;

    return-object v0
.end method

.method public setLightDirInWorldSpace(FFF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 33
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/TextureBatchWithDirLightMaterial;->mLightDirInWorldSpace:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {v0, p1, p2, p3}, Lcom/smartisanos/smengine/math/Vector3f;->set(FFF)Lcom/smartisanos/smengine/math/Vector3f;

    .line 34
    return-void
.end method
