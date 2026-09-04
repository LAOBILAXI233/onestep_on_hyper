.class public Lcom/smartisanos/smengine/mymaterial/SoftLightMaterial;
.super Lcom/smartisanos/smengine/mymaterial/Material;
.source "SoftLightMaterial.java"


.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "vs"    # Ljava/lang/String;
    .param p3, "fs"    # Ljava/lang/String;

    .prologue
    .line 11
    invoke-direct {p0, p1, p2, p3}, Lcom/smartisanos/smengine/mymaterial/Material;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    return-void
.end method


.method public draw(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/smengine/Mesh;Z)V
    .locals 0
    .param p1, "sn"    # Lcom/smartisanos/smengine/SceneNode;
    .param p2, "mesh"    # Lcom/smartisanos/smengine/Mesh;
    .param p3, "isUseVBO"    # Z

    .prologue
    .line 16
    return-void
.end method

.method public drawMesh(Lcom/smartisanos/smengine/Mesh;Z)V
    .locals 2
    .param p1, "mesh"    # Lcom/smartisanos/smengine/Mesh;
    .param p2, "isUseVBO"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 19
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/SoftLightMaterial;->use()V

    .line 20
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/SoftLightMaterial;->bindTexture()V

    .line 21
    invoke-virtual {p0, p2, p1, v1, v0}, Lcom/smartisanos/smengine/mymaterial/SoftLightMaterial;->setVertexData(ZLcom/smartisanos/smengine/Mesh;ZZ)V

    .line 22
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/SoftLightMaterial;->setMVPMatrix()V

    .line 23
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/mymaterial/SoftLightMaterial;->setDiffuseMap(I)V

    .line 24
    invoke-virtual {p0, v1}, Lcom/smartisanos/smengine/mymaterial/SoftLightMaterial;->setShadowMap(I)V

    .line 25
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/mymaterial/SoftLightMaterial;->setNormalMap(I)V

    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/smartisanos/smengine/mymaterial/SoftLightMaterial;->drawPrimitive(Lcom/smartisanos/smengine/Mesh;Z)V

    .line 27
    return-void
.end method
