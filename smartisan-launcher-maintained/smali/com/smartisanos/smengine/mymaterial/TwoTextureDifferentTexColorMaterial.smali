.class public Lcom/smartisanos/smengine/mymaterial/TwoTextureDifferentTexColorMaterial;
.super Lcom/smartisanos/smengine/mymaterial/Material;
.source "TwoTextureDifferentTexColorMaterial.java"


.field private mModularColorArrayData:[F


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
    .locals 2
    .param p1, "sn"    # Lcom/smartisanos/smengine/SceneNode;
    .param p2, "mesh"    # Lcom/smartisanos/smengine/Mesh;
    .param p3, "isUseVBO"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 17
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/TwoTextureDifferentTexColorMaterial;->use()V

    .line 18
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/TwoTextureDifferentTexColorMaterial;->bindTexture()V

    .line 19
    invoke-virtual {p0, p3, p2, v1, v0}, Lcom/smartisanos/smengine/mymaterial/TwoTextureDifferentTexColorMaterial;->setVertexData(ZLcom/smartisanos/smengine/Mesh;ZZ)V

    .line 20
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/mymaterial/TwoTextureDifferentTexColorMaterial;->setMVPMatrix(Lcom/smartisanos/smengine/SceneNode;)V

    .line 21
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/mymaterial/TwoTextureDifferentTexColorMaterial;->setDiffuseMap(I)V

    .line 22
    invoke-virtual {p0, v1}, Lcom/smartisanos/smengine/mymaterial/TwoTextureDifferentTexColorMaterial;->setShadowMap(I)V

    .line 23
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/TwoTextureDifferentTexColorMaterial;->setModularColor()V

    .line 24
    invoke-virtual {p0, p2, p3}, Lcom/smartisanos/smengine/mymaterial/TwoTextureDifferentTexColorMaterial;->drawPrimitive(Lcom/smartisanos/smengine/Mesh;Z)V

    .line 25
    return-void
.end method

.method public drawMesh(Lcom/smartisanos/smengine/Mesh;Z)V
    .locals 2
    .param p1, "mesh"    # Lcom/smartisanos/smengine/Mesh;
    .param p2, "isUseVBO"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 29
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/TwoTextureDifferentTexColorMaterial;->use()V

    .line 30
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/TwoTextureDifferentTexColorMaterial;->bindTexture()V

    .line 31
    invoke-virtual {p0, p2, p1, v1, v0}, Lcom/smartisanos/smengine/mymaterial/TwoTextureDifferentTexColorMaterial;->setVertexData(ZLcom/smartisanos/smengine/Mesh;ZZ)V

    .line 32
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/TwoTextureDifferentTexColorMaterial;->setMVPMatrix()V

    .line 33
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/mymaterial/TwoTextureDifferentTexColorMaterial;->setDiffuseMap(I)V

    .line 34
    invoke-virtual {p0, v1}, Lcom/smartisanos/smengine/mymaterial/TwoTextureDifferentTexColorMaterial;->setShadowMap(I)V

    .line 35
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/TwoTextureDifferentTexColorMaterial;->setModularColor()V

    .line 36
    invoke-virtual {p0, p1, p2}, Lcom/smartisanos/smengine/mymaterial/TwoTextureDifferentTexColorMaterial;->drawPrimitive(Lcom/smartisanos/smengine/Mesh;Z)V

    .line 37
    return-void
.end method
