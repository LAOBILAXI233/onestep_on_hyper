.class public Lcom/smartisanos/smengine/mymaterial/TwoPassFilterMaterial;
.super Lcom/smartisanos/smengine/mymaterial/Material;
.source "TwoPassFilterMaterial.java"


.field protected mFirstMaterial:Lcom/smartisanos/smengine/mymaterial/Material;

.field protected mFirstPassMesh:Lcom/smartisanos/smengine/Mesh;

.field protected mFirstPassUseVBO:Z

.field protected mFirstRenderTargetName:Ljava/lang/String;

.field protected mRenderTargetFirst:Lcom/smartisanos/smengine/RenderTarget;

.field protected mRenderTargetHeight:I

.field protected mRenderTargetSecond:Lcom/smartisanos/smengine/RenderTarget;

.field protected mRenderTargetWidth:I

.field protected mSecondMaterial:Lcom/smartisanos/smengine/mymaterial/Material;

.field protected mSecondPassMesh:Lcom/smartisanos/smengine/Mesh;

.field protected mSecondPassUseVBO:Z

.field protected mSecondRenderTargetName:Ljava/lang/String;

.field protected mUseMipMap:Z


.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "vsPass1"    # Ljava/lang/String;
    .param p3, "fsPass1"    # Ljava/lang/String;
    .param p4, "vsPass2"    # Ljava/lang/String;
    .param p5, "fsPass2"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x5

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 33
    invoke-direct {p0, p1, v1, v1}, Lcom/smartisanos/smengine/mymaterial/Material;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    invoke-static {}, Lcom/smartisanos/smengine/World;->uid()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_TwoPassRenderTargetFirst"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/smartisanos/smengine/mymaterial/TwoPassFilterMaterial;->mFirstRenderTargetName:Ljava/lang/String;

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    invoke-static {}, Lcom/smartisanos/smengine/World;->uid()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_TwoPassRenderTargetSecond"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/smartisanos/smengine/mymaterial/TwoPassFilterMaterial;->mSecondRenderTargetName:Ljava/lang/String;

    .line 29
    iput-boolean v4, p0, Lcom/smartisanos/smengine/mymaterial/TwoPassFilterMaterial;->mFirstPassUseVBO:Z

    .line 30
    iput-boolean v5, p0, Lcom/smartisanos/smengine/mymaterial/TwoPassFilterMaterial;->mSecondPassUseVBO:Z

    .line 31
    iput-boolean v5, p0, Lcom/smartisanos/smengine/mymaterial/TwoPassFilterMaterial;->mUseMipMap:Z

    .line 34
    new-instance v1, Lcom/smartisanos/smengine/mymaterial/Material;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_first"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p2, p3}, Lcom/smartisanos/smengine/mymaterial/Material;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/smartisanos/smengine/mymaterial/TwoPassFilterMaterial;->mFirstMaterial:Lcom/smartisanos/smengine/mymaterial/Material;

    .line 36
    new-instance v0, Lcom/smartisanos/smengine/Texture$State;

    invoke-direct {v0}, Lcom/smartisanos/smengine/Texture$State;-><init>()V

    .line 37
    .local v0, "state":Lcom/smartisanos/smengine/Texture$State;
    iget-boolean v1, p0, Lcom/smartisanos/smengine/mymaterial/TwoPassFilterMaterial;->mUseMipMap:Z

    if-eqz v1, :cond_0

    .line 38
    iput v6, v0, Lcom/smartisanos/smengine/Texture$State;->mMinFilter:I

    .line 39
    iput v5, v0, Lcom/smartisanos/smengine/Texture$State;->mMagFilter:I

    .line 40
    iput v4, v0, Lcom/smartisanos/smengine/Texture$State;->mWrapS:I

    .line 41
    iput v4, v0, Lcom/smartisanos/smengine/Texture$State;->mWrapT:I

    .line 42
    iget-object v1, p0, Lcom/smartisanos/smengine/mymaterial/TwoPassFilterMaterial;->mFirstMaterial:Lcom/smartisanos/smengine/mymaterial/Material;

    invoke-virtual {v1, v4, v0}, Lcom/smartisanos/smengine/mymaterial/Material;->setTextureState(ILcom/smartisanos/smengine/Texture$State;)V

    .line 50
    :goto_0
    new-instance v1, Lcom/smartisanos/smengine/mymaterial/Material;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_second"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p4, p5}, Lcom/smartisanos/smengine/mymaterial/Material;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/smartisanos/smengine/mymaterial/TwoPassFilterMaterial;->mSecondMaterial:Lcom/smartisanos/smengine/mymaterial/Material;

    .line 51
    iget-object v1, p0, Lcom/smartisanos/smengine/mymaterial/TwoPassFilterMaterial;->mSecondMaterial:Lcom/smartisanos/smengine/mymaterial/Material;

    iget-object v2, p0, Lcom/smartisanos/smengine/mymaterial/TwoPassFilterMaterial;->mFirstRenderTargetName:Ljava/lang/String;

    invoke-virtual {v1, v4, v2}, Lcom/smartisanos/smengine/mymaterial/Material;->addTexture(ILjava/lang/String;)V

    .line 52
    new-instance v0, Lcom/smartisanos/smengine/Texture$State;

    .end local v0    # "state":Lcom/smartisanos/smengine/Texture$State;
    invoke-direct {v0}, Lcom/smartisanos/smengine/Texture$State;-><init>()V

    .line 53
    .restart local v0    # "state":Lcom/smartisanos/smengine/Texture$State;
    iget-boolean v1, p0, Lcom/smartisanos/smengine/mymaterial/TwoPassFilterMaterial;->mUseMipMap:Z

    if-eqz v1, :cond_1

    .line 54
    iput v6, v0, Lcom/smartisanos/smengine/Texture$State;->mMinFilter:I

    .line 55
    iput v5, v0, Lcom/smartisanos/smengine/Texture$State;->mMagFilter:I

    .line 56
    iput v4, v0, Lcom/smartisanos/smengine/Texture$State;->mWrapS:I

    .line 57
    iput v4, v0, Lcom/smartisanos/smengine/Texture$State;->mWrapT:I

    .line 58
    iget-object v1, p0, Lcom/smartisanos/smengine/mymaterial/TwoPassFilterMaterial;->mSecondMaterial:Lcom/smartisanos/smengine/mymaterial/Material;

    invoke-virtual {v1, v4, v0}, Lcom/smartisanos/smengine/mymaterial/Material;->setTextureState(ILcom/smartisanos/smengine/Texture$State;)V

    .line 66
    :goto_1
    invoke-static {}, Lcom/smartisanos/smengine/RectNode;->getScreenAlignMesh()Lcom/smartisanos/smengine/Mesh;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/Mesh;->clone()Lcom/smartisanos/smengine/Mesh;

    move-result-object v1

    iput-object v1, p0, Lcom/smartisanos/smengine/mymaterial/TwoPassFilterMaterial;->mSecondPassMesh:Lcom/smartisanos/smengine/Mesh;

    .line 67
    iget-object v1, p0, Lcom/smartisanos/smengine/mymaterial/TwoPassFilterMaterial;->mSecondPassMesh:Lcom/smartisanos/smengine/Mesh;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/Mesh;->clone()Lcom/smartisanos/smengine/Mesh;

    move-result-object v1

    iput-object v1, p0, Lcom/smartisanos/smengine/mymaterial/TwoPassFilterMaterial;->mFirstPassMesh:Lcom/smartisanos/smengine/Mesh;

    .line 68
    return-void

    .line 44
    :cond_0
    iput v5, v0, Lcom/smartisanos/smengine/Texture$State;->mMinFilter:I

    .line 45
    iput v5, v0, Lcom/smartisanos/smengine/Texture$State;->mMagFilter:I

    .line 46
    iput v4, v0, Lcom/smartisanos/smengine/Texture$State;->mWrapS:I

    .line 47
    iput v4, v0, Lcom/smartisanos/smengine/Texture$State;->mWrapT:I

    .line 48
    iget-object v1, p0, Lcom/smartisanos/smengine/mymaterial/TwoPassFilterMaterial;->mFirstMaterial:Lcom/smartisanos/smengine/mymaterial/Material;

    invoke-virtual {v1, v4, v0}, Lcom/smartisanos/smengine/mymaterial/Material;->setTextureState(ILcom/smartisanos/smengine/Texture$State;)V

    goto :goto_0

    .line 60
    :cond_1
    iput v5, v0, Lcom/smartisanos/smengine/Texture$State;->mMinFilter:I

    .line 61
    iput v5, v0, Lcom/smartisanos/smengine/Texture$State;->mMagFilter:I

    .line 62
    iput v4, v0, Lcom/smartisanos/smengine/Texture$State;->mWrapS:I

    .line 63
    iput v4, v0, Lcom/smartisanos/smengine/Texture$State;->mWrapT:I

    .line 64
    iget-object v1, p0, Lcom/smartisanos/smengine/mymaterial/TwoPassFilterMaterial;->mSecondMaterial:Lcom/smartisanos/smengine/mymaterial/Material;

    invoke-virtual {v1, v4, v0}, Lcom/smartisanos/smengine/mymaterial/Material;->setTextureState(ILcom/smartisanos/smengine/Texture$State;)V

    goto :goto_1
.end method


.method public clearResource()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 187
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/TwoPassFilterMaterial;->mRenderTargetFirst:Lcom/smartisanos/smengine/RenderTarget;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/RenderTarget;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/TwoPassFilterMaterial;->mRenderTargetFirst:Lcom/smartisanos/smengine/RenderTarget;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/RenderTarget;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "t_blur_background"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/TwoPassFilterMaterial;->mRenderTargetFirst:Lcom/smartisanos/smengine/RenderTarget;

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/RenderTarget;->delete(Z)V

    .line 192
    :goto_0
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/TwoPassFilterMaterial;->mSecondRenderTargetName:Ljava/lang/String;

    const-string v1, "_TwoPassRenderTargetSecond"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/TwoPassFilterMaterial;->mRenderTargetSecond:Lcom/smartisanos/smengine/RenderTarget;

    .line 193
    invoke-virtual {v0}, Lcom/smartisanos/smengine/RenderTarget;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/TwoPassFilterMaterial;->mRenderTargetSecond:Lcom/smartisanos/smengine/RenderTarget;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/RenderTarget;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "t_blur_background"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 194
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/TwoPassFilterMaterial;->mRenderTargetSecond:Lcom/smartisanos/smengine/RenderTarget;

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/RenderTarget;->delete(Z)V

    .line 198
    :goto_1
    return-void

    .line 190
    :cond_0
    const-string v0, "TwoPassFilterMaterial"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearResource mRenderTargetFirst name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/smartisanos/smengine/mymaterial/TwoPassFilterMaterial;->mRenderTargetFirst:Lcom/smartisanos/smengine/RenderTarget;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/RenderTarget;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 196
    :cond_1
    const-string v0, "TwoPassFilterMaterial"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearResource mRenderTargetSecond name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/smartisanos/smengine/mymaterial/TwoPassFilterMaterial;->mRenderTargetSecond:Lcom/smartisanos/smengine/RenderTarget;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/RenderTarget;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected createTwoPassRenderTarget()V
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v10, 0x1

    const/4 v4, 0x0

    .line 101
    iget-object v1, p0, Lcom/smartisanos/smengine/mymaterial/TwoPassFilterMaterial;->mRenderTargetFirst:Lcom/smartisanos/smengine/RenderTarget;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/smartisanos/smengine/mymaterial/TwoPassFilterMaterial;->mRenderTargetSecond:Lcom/smartisanos/smengine/RenderTarget;

    if-eqz v1, :cond_0

    .line 126
    :goto_0
    return-void

    .line 103
    :cond_0
    new-instance v0, Lcom/smartisanos/smengine/RenderTarget;

    iget-object v1, p0, Lcom/smartisanos/smengine/mymaterial/TwoPassFilterMaterial;->mFirstRenderTargetName:Ljava/lang/String;

    iget v2, p0, Lcom/smartisanos/smengine/mymaterial/TwoPassFilterMaterial;->mRenderTargetWidth:I

    iget v3, p0, Lcom/smartisanos/smengine/mymaterial/TwoPassFilterMaterial;->mRenderTargetHeight:I

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/smartisanos/smengine/RenderTarget;-><init>(Ljava/lang/String;IIZZZ)V

    .line 104
    .local v0, "rt":Lcom/smartisanos/smengine/RenderTarget;
    new-instance v7, Lcom/smartisanos/smengine/Texture;

    invoke-direct {v7, v0}, Lcom/smartisanos/smengine/Texture;-><init>(Lcom/smartisanos/smengine/RenderTarget;)V

    .line 105
    .local v7, "tex":Lcom/smartisanos/smengine/Texture;
    iget-boolean v1, p0, Lcom/smartisanos/smengine/mymaterial/TwoPassFilterMaterial;->mUseMipMap:Z

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RenderTarget;->setUseMipmap(Z)V

    .line 106
    iget-boolean v1, p0, Lcom/smartisanos/smengine/mymaterial/TwoPassFilterMaterial;->mUseMipMap:Z

    if-eqz v1, :cond_1

    .line 107
    invoke-virtual {v7, v12, v10, v4, v4}, Lcom/smartisanos/smengine/Texture;->setTextureState(IIII)V

    .line 111
    :goto_1
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/World;->getTextureManager()Lcom/smartisanos/smengine/TextureManager;

    move-result-object v9

    .line 112
    .local v9, "tm":Lcom/smartisanos/smengine/TextureManager;
    iget-object v1, p0, Lcom/smartisanos/smengine/mymaterial/TwoPassFilterMaterial;->mFirstRenderTargetName:Ljava/lang/String;

    invoke-virtual {v9, v1, v7}, Lcom/smartisanos/smengine/TextureManager;->setTexture(Ljava/lang/String;Lcom/smartisanos/smengine/Texture;)V

    .line 113
    iput-object v0, p0, Lcom/smartisanos/smengine/mymaterial/TwoPassFilterMaterial;->mRenderTargetFirst:Lcom/smartisanos/smengine/RenderTarget;

    .line 115
    new-instance v0, Lcom/smartisanos/smengine/RenderTarget;

    .end local v0    # "rt":Lcom/smartisanos/smengine/RenderTarget;
    iget-object v1, p0, Lcom/smartisanos/smengine/mymaterial/TwoPassFilterMaterial;->mSecondRenderTargetName:Ljava/lang/String;

    iget v2, p0, Lcom/smartisanos/smengine/mymaterial/TwoPassFilterMaterial;->mRenderTargetWidth:I

    iget v3, p0, Lcom/smartisanos/smengine/mymaterial/TwoPassFilterMaterial;->mRenderTargetHeight:I

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/smartisanos/smengine/RenderTarget;-><init>(Ljava/lang/String;IIZZZ)V

    .line 116
    .restart local v0    # "rt":Lcom/smartisanos/smengine/RenderTarget;
    iget-boolean v1, p0, Lcom/smartisanos/smengine/mymaterial/TwoPassFilterMaterial;->mUseMipMap:Z

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RenderTarget;->setUseMipmap(Z)V

    .line 117
    new-instance v8, Lcom/smartisanos/smengine/Texture;

    invoke-direct {v8, v0}, Lcom/smartisanos/smengine/Texture;-><init>(Lcom/smartisanos/smengine/RenderTarget;)V

    .line 118
    .local v8, "tex2":Lcom/smartisanos/smengine/Texture;
    iget-boolean v1, p0, Lcom/smartisanos/smengine/mymaterial/TwoPassFilterMaterial;->mUseMipMap:Z

    if-eqz v1, :cond_2

    .line 119
    invoke-virtual {v8, v12, v10, v4, v4}, Lcom/smartisanos/smengine/Texture;->setTextureState(IIII)V

    .line 123
    :goto_2
    iget-object v1, p0, Lcom/smartisanos/smengine/mymaterial/TwoPassFilterMaterial;->mSecondRenderTargetName:Ljava/lang/String;

    invoke-virtual {v9, v1, v8}, Lcom/smartisanos/smengine/TextureManager;->setTexture(Ljava/lang/String;Lcom/smartisanos/smengine/Texture;)V

    .line 124
    iput-object v0, p0, Lcom/smartisanos/smengine/mymaterial/TwoPassFilterMaterial;->mRenderTargetSecond:Lcom/smartisanos/smengine/RenderTarget;

    .line 125
    invoke-virtual {v0, v11, v11, v11, v11}, Lcom/smartisanos/smengine/RenderTarget;->setClearColor(FFFF)V

    goto :goto_0

    .line 109
    .end local v8    # "tex2":Lcom/smartisanos/smengine/Texture;
    .end local v9    # "tm":Lcom/smartisanos/smengine/TextureManager;
    :cond_1
    invoke-virtual {v7, v10, v10, v4, v4}, Lcom/smartisanos/smengine/Texture;->setTextureState(IIII)V

    goto :goto_1

    .line 121
    .restart local v8    # "tex2":Lcom/smartisanos/smengine/Texture;
    .restart local v9    # "tm":Lcom/smartisanos/smengine/TextureManager;
    :cond_2
    invoke-virtual {v8, v10, v10, v4, v4}, Lcom/smartisanos/smengine/Texture;->setTextureState(IIII)V

    goto :goto_2
.end method

.method public drawFirstPassForPostEffect()V
    .locals 5

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 143
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/TwoPassFilterMaterial;->mRenderTargetFirst:Lcom/smartisanos/smengine/RenderTarget;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/RenderTarget;->create()V

    .line 144
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/TwoPassFilterMaterial;->mRenderTargetFirst:Lcom/smartisanos/smengine/RenderTarget;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/RenderTarget;->bind()V

    .line 145
    iget v0, p0, Lcom/smartisanos/smengine/mymaterial/TwoPassFilterMaterial;->mRenderTargetWidth:I

    iget v1, p0, Lcom/smartisanos/smengine/mymaterial/TwoPassFilterMaterial;->mRenderTargetHeight:I

    invoke-static {v4, v4, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 146
    const/16 v0, 0xc11

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 147
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 148
    const/16 v0, 0xb71

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 149
    invoke-static {v2, v2, v2, v2}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 150
    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 151
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/TwoPassFilterMaterial;->mFirstMaterial:Lcom/smartisanos/smengine/mymaterial/Material;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/mymaterial/Material;->create()V

    .line 152
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/TwoPassFilterMaterial;->mFirstMaterial:Lcom/smartisanos/smengine/mymaterial/Material;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/mymaterial/Material;->use()V

    .line 153
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/TwoPassFilterMaterial;->updateFirstPassParam()V

    .line 154
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/TwoPassFilterMaterial;->mFirstMaterial:Lcom/smartisanos/smengine/mymaterial/Material;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/mymaterial/Material;->bindTexture()V

    .line 155
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/TwoPassFilterMaterial;->mFirstMaterial:Lcom/smartisanos/smengine/mymaterial/Material;

    iget-boolean v1, p0, Lcom/smartisanos/smengine/mymaterial/TwoPassFilterMaterial;->mFirstPassUseVBO:Z

    iget-object v2, p0, Lcom/smartisanos/smengine/mymaterial/TwoPassFilterMaterial;->mFirstPassMesh:Lcom/smartisanos/smengine/Mesh;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/smartisanos/smengine/mymaterial/Material;->setVertexData(ZLcom/smartisanos/smengine/Mesh;ZZ)V

    .line 156
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/TwoPassFilterMaterial;->mFirstMaterial:Lcom/smartisanos/smengine/mymaterial/Material;

    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/mymaterial/Material;->setDiffuseMap(I)V

    .line 157
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/TwoPassFilterMaterial;->mFirstMaterial:Lcom/smartisanos/smengine/mymaterial/Material;

    iget-object v1, p0, Lcom/smartisanos/smengine/mymaterial/TwoPassFilterMaterial;->mFirstPassMesh:Lcom/smartisanos/smengine/Mesh;

    iget-boolean v2, p0, Lcom/smartisanos/smengine/mymaterial/TwoPassFilterMaterial;->mFirstPassUseVBO:Z

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/smengine/mymaterial/Material;->drawPrimitive(Lcom/smartisanos/smengine/Mesh;Z)V

    .line 158
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/TwoPassFilterMaterial;->mRenderTargetFirst:Lcom/smartisanos/smengine/RenderTarget;

    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/RenderTarget;->setGenMipmap(Z)V

    .line 159
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/TwoPassFilterMaterial;->mRenderTargetFirst:Lcom/smartisanos/smengine/RenderTarget;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/RenderTarget;->genMipmap()V

    .line 160
    const v0, 0x8d40

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 161
    const/16 v0, 0xde1

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 162
    return-void
.end method

.method public drawPass()V
    .locals 0

    .prologue
    .line 136
    return-void
.end method

.method public drawSecondPassForPostEffect()V
    .locals 5

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 166
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/TwoPassFilterMaterial;->mRenderTargetSecond:Lcom/smartisanos/smengine/RenderTarget;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/RenderTarget;->create()V

    .line 167
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/TwoPassFilterMaterial;->mRenderTargetSecond:Lcom/smartisanos/smengine/RenderTarget;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/RenderTarget;->bind()V

    .line 168
    iget v0, p0, Lcom/smartisanos/smengine/mymaterial/TwoPassFilterMaterial;->mRenderTargetWidth:I

    iget v1, p0, Lcom/smartisanos/smengine/mymaterial/TwoPassFilterMaterial;->mRenderTargetHeight:I

    invoke-static {v4, v4, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 169
    const/16 v0, 0xc11

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 170
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 171
    const/16 v0, 0xb71

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 172
    invoke-static {v2, v2, v2, v2}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 173
    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 174
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/TwoPassFilterMaterial;->mSecondMaterial:Lcom/smartisanos/smengine/mymaterial/Material;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/mymaterial/Material;->create()V

    .line 175
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/TwoPassFilterMaterial;->mSecondMaterial:Lcom/smartisanos/smengine/mymaterial/Material;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/mymaterial/Material;->use()V

    .line 176
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/TwoPassFilterMaterial;->updateSecondPassParam()V

    .line 177
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/TwoPassFilterMaterial;->mSecondMaterial:Lcom/smartisanos/smengine/mymaterial/Material;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/mymaterial/Material;->bindTexture()V

    .line 178
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/TwoPassFilterMaterial;->mSecondMaterial:Lcom/smartisanos/smengine/mymaterial/Material;

    iget-boolean v1, p0, Lcom/smartisanos/smengine/mymaterial/TwoPassFilterMaterial;->mSecondPassUseVBO:Z

    iget-object v2, p0, Lcom/smartisanos/smengine/mymaterial/TwoPassFilterMaterial;->mSecondPassMesh:Lcom/smartisanos/smengine/Mesh;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/smartisanos/smengine/mymaterial/Material;->setVertexData(ZLcom/smartisanos/smengine/Mesh;ZZ)V

    .line 179
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/TwoPassFilterMaterial;->mSecondMaterial:Lcom/smartisanos/smengine/mymaterial/Material;

    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/mymaterial/Material;->setDiffuseMap(I)V

    .line 180
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/TwoPassFilterMaterial;->mSecondMaterial:Lcom/smartisanos/smengine/mymaterial/Material;

    iget-object v1, p0, Lcom/smartisanos/smengine/mymaterial/TwoPassFilterMaterial;->mSecondPassMesh:Lcom/smartisanos/smengine/Mesh;

    iget-boolean v2, p0, Lcom/smartisanos/smengine/mymaterial/TwoPassFilterMaterial;->mSecondPassUseVBO:Z

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/smengine/mymaterial/Material;->drawPrimitive(Lcom/smartisanos/smengine/Mesh;Z)V

    .line 181
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/TwoPassFilterMaterial;->mRenderTargetSecond:Lcom/smartisanos/smengine/RenderTarget;

    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/RenderTarget;->setGenMipmap(Z)V

    .line 182
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/TwoPassFilterMaterial;->mRenderTargetSecond:Lcom/smartisanos/smengine/RenderTarget;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/RenderTarget;->genMipmap()V

    .line 183
    const v0, 0x8d40

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 184
    return-void
.end method

.method public getFirstPassMesh()Lcom/smartisanos/smengine/Mesh;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/TwoPassFilterMaterial;->mFirstPassMesh:Lcom/smartisanos/smengine/Mesh;

    return-object v0
.end method

.method public getSecondPassMesh()Lcom/smartisanos/smengine/Mesh;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/TwoPassFilterMaterial;->mSecondPassMesh:Lcom/smartisanos/smengine/Mesh;

    return-object v0
.end method

.method public getSecondRenderTargetName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/TwoPassFilterMaterial;->mSecondRenderTargetName:Ljava/lang/String;

    return-object v0
.end method

.method public setFirstPassMesh(Lcom/smartisanos/smengine/Mesh;)V
    .locals 0
    .param p1, "first"    # Lcom/smartisanos/smengine/Mesh;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/smartisanos/smengine/mymaterial/TwoPassFilterMaterial;->mFirstPassMesh:Lcom/smartisanos/smengine/Mesh;

    .line 94
    return-void
.end method

.method public setSecondPassMesh(Lcom/smartisanos/smengine/Mesh;)V
    .locals 0
    .param p1, "second"    # Lcom/smartisanos/smengine/Mesh;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/smartisanos/smengine/mymaterial/TwoPassFilterMaterial;->mSecondPassMesh:Lcom/smartisanos/smengine/Mesh;

    .line 98
    return-void
.end method

.method public setSize(II)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 70
    iput p1, p0, Lcom/smartisanos/smengine/mymaterial/TwoPassFilterMaterial;->mRenderTargetWidth:I

    .line 71
    iput p2, p0, Lcom/smartisanos/smengine/mymaterial/TwoPassFilterMaterial;->mRenderTargetHeight:I

    .line 72
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/World;->getTextureManager()Lcom/smartisanos/smengine/TextureManager;

    move-result-object v0

    .line 73
    .local v0, "tm":Lcom/smartisanos/smengine/TextureManager;
    iget-object v1, p0, Lcom/smartisanos/smengine/mymaterial/TwoPassFilterMaterial;->mRenderTargetFirst:Lcom/smartisanos/smengine/RenderTarget;

    if-eqz v1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/smartisanos/smengine/mymaterial/TwoPassFilterMaterial;->mFirstRenderTargetName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/TextureManager;->deleteTexture(Ljava/lang/String;)V

    .line 75
    iget-object v1, p0, Lcom/smartisanos/smengine/mymaterial/TwoPassFilterMaterial;->mRenderTargetFirst:Lcom/smartisanos/smengine/RenderTarget;

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/RenderTarget;->delete(Z)V

    .line 76
    iput-object v3, p0, Lcom/smartisanos/smengine/mymaterial/TwoPassFilterMaterial;->mRenderTargetFirst:Lcom/smartisanos/smengine/RenderTarget;

    .line 78
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/smengine/mymaterial/TwoPassFilterMaterial;->mRenderTargetSecond:Lcom/smartisanos/smengine/RenderTarget;

    if-eqz v1, :cond_1

    .line 79
    iget-object v1, p0, Lcom/smartisanos/smengine/mymaterial/TwoPassFilterMaterial;->mSecondRenderTargetName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/TextureManager;->deleteTexture(Ljava/lang/String;)V

    .line 80
    iget-object v1, p0, Lcom/smartisanos/smengine/mymaterial/TwoPassFilterMaterial;->mRenderTargetSecond:Lcom/smartisanos/smengine/RenderTarget;

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/RenderTarget;->delete(Z)V

    .line 81
    iput-object v3, p0, Lcom/smartisanos/smengine/mymaterial/TwoPassFilterMaterial;->mRenderTargetSecond:Lcom/smartisanos/smengine/RenderTarget;

    .line 83
    :cond_1
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/TwoPassFilterMaterial;->createTwoPassRenderTarget()V

    .line 84
    return-void
.end method

.method protected updateFirstPassParam()V
    .locals 0

    .prologue
    .line 129
    return-void
.end method

.method protected updateSecondPassParam()V
    .locals 0

    .prologue
    .line 132
    return-void
.end method
