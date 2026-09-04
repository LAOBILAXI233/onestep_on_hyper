.class public Lcom/smartisanos/smengine/mymaterial/TextureColorMaterial;
.super Lcom/smartisanos/smengine/mymaterial/Material;
.source "TextureColorMaterial.java"


.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "vertexStr"    # Ljava/lang/String;
    .param p3, "fragmentStr"    # Ljava/lang/String;

    .prologue
    .line 10
    invoke-direct {p0, p1, p2, p3}, Lcom/smartisanos/smengine/mymaterial/Material;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    return-void
.end method


.method public draw(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/smengine/Mesh;Z)V
    .locals 1
    .param p1, "sn"    # Lcom/smartisanos/smengine/SceneNode;
    .param p2, "mesh"    # Lcom/smartisanos/smengine/Mesh;
    .param p3, "isUseVBO"    # Z

    .prologue
    const/4 v0, 0x1

    .line 14
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/TextureColorMaterial;->use()V

    .line 15
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/TextureColorMaterial;->bindTexture()V

    .line 16
    invoke-virtual {p0, p3, p2, v0, v0}, Lcom/smartisanos/smengine/mymaterial/TextureColorMaterial;->setVertexData(ZLcom/smartisanos/smengine/Mesh;ZZ)V

    .line 17
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/mymaterial/TextureColorMaterial;->setMVPMatrix(Lcom/smartisanos/smengine/SceneNode;)V

    .line 18
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/mymaterial/TextureColorMaterial;->setDiffuseMap(I)V

    .line 19
    invoke-virtual {p0, p2, p3}, Lcom/smartisanos/smengine/mymaterial/TextureColorMaterial;->drawPrimitive(Lcom/smartisanos/smengine/Mesh;Z)V

    .line 20
    return-void
.end method

.method public drawMesh(Lcom/smartisanos/smengine/Mesh;Z)V
    .locals 1
    .param p1, "mesh"    # Lcom/smartisanos/smengine/Mesh;
    .param p2, "isUseVBO"    # Z

    .prologue
    const/4 v0, 0x1

    .line 25
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/TextureColorMaterial;->use()V

    .line 26
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/TextureColorMaterial;->bindTexture()V

    .line 27
    invoke-virtual {p0, p2, p1, v0, v0}, Lcom/smartisanos/smengine/mymaterial/TextureColorMaterial;->setVertexData(ZLcom/smartisanos/smengine/Mesh;ZZ)V

    .line 28
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/TextureColorMaterial;->setMVPMatrix()V

    .line 29
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/mymaterial/TextureColorMaterial;->setDiffuseMap(I)V

    .line 30
    invoke-virtual {p0, p1, p2}, Lcom/smartisanos/smengine/mymaterial/TextureColorMaterial;->drawPrimitive(Lcom/smartisanos/smengine/Mesh;Z)V

    .line 32
    return-void
.end method
