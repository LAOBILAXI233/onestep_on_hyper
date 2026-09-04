.class public Lcom/smartisanos/smengine/mymaterial/DiffuseShadowDifferentTexCoordMaterial;
.super Lcom/smartisanos/smengine/mymaterial/TextureBatchMaterial;
.source "DiffuseShadowDifferentTexCoordMaterial.java"


.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "vertexStr"    # Ljava/lang/String;
    .param p3, "fragmentStr"    # Ljava/lang/String;

    .prologue
    .line 11
    invoke-direct {p0, p1, p2, p3}, Lcom/smartisanos/smengine/mymaterial/TextureBatchMaterial;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
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

    .line 15
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/DiffuseShadowDifferentTexCoordMaterial;->use()V

    .line 16
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/DiffuseShadowDifferentTexCoordMaterial;->bindTexture()V

    .line 17
    invoke-virtual {p0, p3, p2, v1, v0}, Lcom/smartisanos/smengine/mymaterial/DiffuseShadowDifferentTexCoordMaterial;->setVertexData(ZLcom/smartisanos/smengine/Mesh;ZZ)V

    .line 18
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/mymaterial/DiffuseShadowDifferentTexCoordMaterial;->setMVPMatrixArray(Lcom/smartisanos/smengine/SceneNode;)V

    .line 19
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/mymaterial/DiffuseShadowDifferentTexCoordMaterial;->setDiffuseMap(I)V

    .line 20
    invoke-virtual {p0, v1}, Lcom/smartisanos/smengine/mymaterial/DiffuseShadowDifferentTexCoordMaterial;->setShadowMap(I)V

    .line 21
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/DiffuseShadowDifferentTexCoordMaterial;->setModularColor()V

    .line 22
    invoke-virtual {p0, p2, p3}, Lcom/smartisanos/smengine/mymaterial/DiffuseShadowDifferentTexCoordMaterial;->drawPrimitive(Lcom/smartisanos/smengine/Mesh;Z)V

    .line 23
    return-void
.end method

.method public drawMesh(Lcom/smartisanos/smengine/Mesh;Z)V
    .locals 2
    .param p1, "mesh"    # Lcom/smartisanos/smengine/Mesh;
    .param p2, "isUseVBO"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 26
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/DiffuseShadowDifferentTexCoordMaterial;->use()V

    .line 27
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/DiffuseShadowDifferentTexCoordMaterial;->bindTexture()V

    .line 28
    invoke-virtual {p0, p2, p1, v1, v0}, Lcom/smartisanos/smengine/mymaterial/DiffuseShadowDifferentTexCoordMaterial;->setVertexData(ZLcom/smartisanos/smengine/Mesh;ZZ)V

    .line 29
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/DiffuseShadowDifferentTexCoordMaterial;->setMVPArray()V

    .line 30
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/mymaterial/DiffuseShadowDifferentTexCoordMaterial;->setDiffuseMap(I)V

    .line 31
    invoke-virtual {p0, v1}, Lcom/smartisanos/smengine/mymaterial/DiffuseShadowDifferentTexCoordMaterial;->setShadowMap(I)V

    .line 32
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/DiffuseShadowDifferentTexCoordMaterial;->setModularColor()V

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/smartisanos/smengine/mymaterial/DiffuseShadowDifferentTexCoordMaterial;->drawPrimitive(Lcom/smartisanos/smengine/Mesh;Z)V

    .line 34
    return-void
.end method
