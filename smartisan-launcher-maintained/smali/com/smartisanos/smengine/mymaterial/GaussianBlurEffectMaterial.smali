.class public Lcom/smartisanos/smengine/mymaterial/GaussianBlurEffectMaterial;
.super Lcom/smartisanos/smengine/mymaterial/TwoPassFilterMaterial;
.source "GaussianBlurEffectMaterial.java"


.field frame:I

.field isDraw:Z

.field private mFirstTimeGaussian:Z

.field private mLastMaterial:Lcom/smartisanos/smengine/mymaterial/Material;

.field private mTargetTexture:Ljava/lang/String;


.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "vs1"    # Ljava/lang/String;
    .param p3, "fs1"    # Ljava/lang/String;
    .param p4, "vs2"    # Ljava/lang/String;
    .param p5, "fs2"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 21
    invoke-direct/range {p0 .. p5}, Lcom/smartisanos/smengine/mymaterial/TwoPassFilterMaterial;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/smartisanos/smengine/mymaterial/GaussianBlurEffectMaterial;->mTargetTexture:Ljava/lang/String;

    .line 19
    iput-boolean v3, p0, Lcom/smartisanos/smengine/mymaterial/GaussianBlurEffectMaterial;->mFirstTimeGaussian:Z

    .line 104
    iput v2, p0, Lcom/smartisanos/smengine/mymaterial/GaussianBlurEffectMaterial;->frame:I

    .line 105
    iput-boolean v2, p0, Lcom/smartisanos/smengine/mymaterial/GaussianBlurEffectMaterial;->isDraw:Z

    .line 22
    const-string v1, "SimpleTextureMaterial"

    invoke-static {v1}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v1

    iput-object v1, p0, Lcom/smartisanos/smengine/mymaterial/GaussianBlurEffectMaterial;->mLastMaterial:Lcom/smartisanos/smengine/mymaterial/Material;

    .line 23
    new-instance v0, Lcom/smartisanos/smengine/Texture$State;

    invoke-direct {v0}, Lcom/smartisanos/smengine/Texture$State;-><init>()V

    .line 24
    .local v0, "state":Lcom/smartisanos/smengine/Texture$State;
    iget-boolean v1, p0, Lcom/smartisanos/smengine/mymaterial/GaussianBlurEffectMaterial;->mUseMipMap:Z

    if-eqz v1, :cond_0

    .line 25
    const/4 v1, 0x5

    iput v1, v0, Lcom/smartisanos/smengine/Texture$State;->mMinFilter:I

    .line 26
    iput v3, v0, Lcom/smartisanos/smengine/Texture$State;->mMagFilter:I

    .line 27
    iput v2, v0, Lcom/smartisanos/smengine/Texture$State;->mWrapS:I

    .line 28
    iput v2, v0, Lcom/smartisanos/smengine/Texture$State;->mWrapT:I

    .line 29
    iget-object v1, p0, Lcom/smartisanos/smengine/mymaterial/GaussianBlurEffectMaterial;->mLastMaterial:Lcom/smartisanos/smengine/mymaterial/Material;

    invoke-virtual {v1, v2, v0}, Lcom/smartisanos/smengine/mymaterial/Material;->setTextureState(ILcom/smartisanos/smengine/Texture$State;)V

    .line 37
    :goto_0
    iput-boolean v2, p0, Lcom/smartisanos/smengine/mymaterial/GaussianBlurEffectMaterial;->mFirstPassUseVBO:Z

    .line 38
    return-void

    .line 31
    :cond_0
    iput v3, v0, Lcom/smartisanos/smengine/Texture$State;->mMinFilter:I

    .line 32
    iput v3, v0, Lcom/smartisanos/smengine/Texture$State;->mMagFilter:I

    .line 33
    iput v2, v0, Lcom/smartisanos/smengine/Texture$State;->mWrapS:I

    .line 34
    iput v2, v0, Lcom/smartisanos/smengine/Texture$State;->mWrapT:I

    .line 35
    iget-object v1, p0, Lcom/smartisanos/smengine/mymaterial/GaussianBlurEffectMaterial;->mLastMaterial:Lcom/smartisanos/smengine/mymaterial/Material;

    invoke-virtual {v1, v2, v0}, Lcom/smartisanos/smengine/mymaterial/Material;->setTextureState(ILcom/smartisanos/smengine/Texture$State;)V

    goto :goto_0
.end method


.method public addTexture(ILjava/lang/String;)V
    .locals 2
    .param p1, "tex"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 121
    if-nez p1, :cond_0

    .line 122
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/GaussianBlurEffectMaterial;->mLastMaterial:Lcom/smartisanos/smengine/mymaterial/Material;

    iget-object v1, p0, Lcom/smartisanos/smengine/mymaterial/GaussianBlurEffectMaterial;->mFirstRenderTargetName:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/smartisanos/smengine/mymaterial/Material;->addTexture(ILjava/lang/String;)V

    .line 126
    :goto_0
    return-void

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/GaussianBlurEffectMaterial;->mLastMaterial:Lcom/smartisanos/smengine/mymaterial/Material;

    invoke-virtual {v0, p1, p2}, Lcom/smartisanos/smengine/mymaterial/Material;->addTexture(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public create()V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/GaussianBlurEffectMaterial;->mLastMaterial:Lcom/smartisanos/smengine/mymaterial/Material;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/mymaterial/Material;->create()V

    .line 148
    return-void
.end method

.method public draw(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/smengine/Mesh;Z)V
    .locals 3
    .param p1, "sn"    # Lcom/smartisanos/smengine/SceneNode;
    .param p2, "mesh"    # Lcom/smartisanos/smengine/Mesh;
    .param p3, "isUseVBO"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 152
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/GaussianBlurEffectMaterial;->mLastMaterial:Lcom/smartisanos/smengine/mymaterial/Material;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/mymaterial/Material;->use()V

    .line 153
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/GaussianBlurEffectMaterial;->mLastMaterial:Lcom/smartisanos/smengine/mymaterial/Material;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/mymaterial/Material;->bindTexture()V

    .line 154
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/GaussianBlurEffectMaterial;->mLastMaterial:Lcom/smartisanos/smengine/mymaterial/Material;

    invoke-virtual {v0, p3, p2, v2, v1}, Lcom/smartisanos/smengine/mymaterial/Material;->setVertexData(ZLcom/smartisanos/smengine/Mesh;ZZ)V

    .line 155
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/GaussianBlurEffectMaterial;->mLastMaterial:Lcom/smartisanos/smengine/mymaterial/Material;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/mymaterial/Material;->setMVPMatrix(Lcom/smartisanos/smengine/SceneNode;)V

    .line 156
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/GaussianBlurEffectMaterial;->mLastMaterial:Lcom/smartisanos/smengine/mymaterial/Material;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/mymaterial/Material;->setDiffuseMap(I)V

    .line 157
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/GaussianBlurEffectMaterial;->mLastMaterial:Lcom/smartisanos/smengine/mymaterial/Material;

    instance-of v0, v0, Lcom/smartisanos/smengine/mymaterial/TextureMaskModularMaterial;

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/GaussianBlurEffectMaterial;->mLastMaterial:Lcom/smartisanos/smengine/mymaterial/Material;

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/mymaterial/Material;->setShadowMap(I)V

    .line 159
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/GaussianBlurEffectMaterial;->mLastMaterial:Lcom/smartisanos/smengine/mymaterial/Material;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/mymaterial/Material;->setModularColor()V

    .line 163
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/GaussianBlurEffectMaterial;->mLastMaterial:Lcom/smartisanos/smengine/mymaterial/Material;

    invoke-virtual {v0, p2, p3}, Lcom/smartisanos/smengine/mymaterial/Material;->drawPrimitive(Lcom/smartisanos/smengine/Mesh;Z)V

    .line 164
    return-void

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/GaussianBlurEffectMaterial;->mLastMaterial:Lcom/smartisanos/smengine/mymaterial/Material;

    instance-of v0, v0, Lcom/smartisanos/smengine/mymaterial/TextureModularColorMaterial;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/GaussianBlurEffectMaterial;->mLastMaterial:Lcom/smartisanos/smengine/mymaterial/Material;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/mymaterial/Material;->setModularColor()V

    goto :goto_0
.end method

.method public drawMesh(Lcom/smartisanos/smengine/Mesh;Z)V
    .locals 3
    .param p1, "mesh"    # Lcom/smartisanos/smengine/Mesh;
    .param p2, "isUseVBO"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 168
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/GaussianBlurEffectMaterial;->mLastMaterial:Lcom/smartisanos/smengine/mymaterial/Material;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/mymaterial/Material;->use()V

    .line 169
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/GaussianBlurEffectMaterial;->mLastMaterial:Lcom/smartisanos/smengine/mymaterial/Material;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/mymaterial/Material;->bindTexture()V

    .line 170
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/GaussianBlurEffectMaterial;->mLastMaterial:Lcom/smartisanos/smengine/mymaterial/Material;

    invoke-virtual {v0, p2, p1, v2, v1}, Lcom/smartisanos/smengine/mymaterial/Material;->setVertexData(ZLcom/smartisanos/smengine/Mesh;ZZ)V

    .line 171
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/GaussianBlurEffectMaterial;->mLastMaterial:Lcom/smartisanos/smengine/mymaterial/Material;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/mymaterial/Material;->setMVPMatrix()V

    .line 172
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/GaussianBlurEffectMaterial;->mLastMaterial:Lcom/smartisanos/smengine/mymaterial/Material;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/mymaterial/Material;->setDiffuseMap(I)V

    .line 173
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/GaussianBlurEffectMaterial;->mLastMaterial:Lcom/smartisanos/smengine/mymaterial/Material;

    instance-of v0, v0, Lcom/smartisanos/smengine/mymaterial/TextureMaskModularMaterial;

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/GaussianBlurEffectMaterial;->mLastMaterial:Lcom/smartisanos/smengine/mymaterial/Material;

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/mymaterial/Material;->setShadowMap(I)V

    .line 175
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/GaussianBlurEffectMaterial;->mLastMaterial:Lcom/smartisanos/smengine/mymaterial/Material;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/mymaterial/Material;->setModularColor()V

    .line 179
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/GaussianBlurEffectMaterial;->mLastMaterial:Lcom/smartisanos/smengine/mymaterial/Material;

    invoke-virtual {v0, p1, p2}, Lcom/smartisanos/smengine/mymaterial/Material;->drawPrimitive(Lcom/smartisanos/smengine/Mesh;Z)V

    .line 180
    return-void

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/GaussianBlurEffectMaterial;->mLastMaterial:Lcom/smartisanos/smengine/mymaterial/Material;

    instance-of v0, v0, Lcom/smartisanos/smengine/mymaterial/TextureModularColorMaterial;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/GaussianBlurEffectMaterial;->mLastMaterial:Lcom/smartisanos/smengine/mymaterial/Material;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/mymaterial/Material;->setModularColor()V

    goto :goto_0
.end method

.method public drawPass()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 63
    iget-object v1, p0, Lcom/smartisanos/smengine/mymaterial/GaussianBlurEffectMaterial;->mTargetTexture:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 64
    iget-object v1, p0, Lcom/smartisanos/smengine/mymaterial/GaussianBlurEffectMaterial;->mFirstMaterial:Lcom/smartisanos/smengine/mymaterial/Material;

    sget-object v2, Lcom/smartisanos/launcher/data/Constants;->sCurrentRenderTarget:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Lcom/smartisanos/smengine/mymaterial/Material;->addTexture(ILjava/lang/String;)V

    .line 68
    :goto_0
    iput-boolean v6, p0, Lcom/smartisanos/smengine/mymaterial/GaussianBlurEffectMaterial;->mFirstTimeGaussian:Z

    .line 69
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/GaussianBlurEffectMaterial;->drawFirstPassForPostEffect()V

    .line 70
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/GaussianBlurEffectMaterial;->drawSecondPassForPostEffect()V

    .line 71
    iput-boolean v3, p0, Lcom/smartisanos/smengine/mymaterial/GaussianBlurEffectMaterial;->mFirstTimeGaussian:Z

    .line 73
    const/16 v1, 0x8

    new-array v0, v1, [F

    .line 74
    .local v0, "uvStatus":[F
    aput v4, v0, v3

    .line 75
    aput v4, v0, v6

    .line 77
    const/4 v1, 0x2

    aput v5, v0, v1

    .line 78
    const/4 v1, 0x3

    aput v4, v0, v1

    .line 80
    const/4 v1, 0x4

    aput v5, v0, v1

    .line 81
    const/4 v1, 0x5

    aput v5, v0, v1

    .line 83
    const/4 v1, 0x6

    aput v4, v0, v1

    .line 84
    const/4 v1, 0x7

    aput v5, v0, v1

    .line 85
    iget-object v1, p0, Lcom/smartisanos/smengine/mymaterial/GaussianBlurEffectMaterial;->mFirstPassMesh:Lcom/smartisanos/smengine/Mesh;

    invoke-virtual {v1, v3, v0}, Lcom/smartisanos/smengine/Mesh;->setTexVertexArray(I[F)V

    .line 87
    iget-object v1, p0, Lcom/smartisanos/smengine/mymaterial/GaussianBlurEffectMaterial;->mFirstMaterial:Lcom/smartisanos/smengine/mymaterial/Material;

    iget-object v2, p0, Lcom/smartisanos/smengine/mymaterial/GaussianBlurEffectMaterial;->mSecondRenderTargetName:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Lcom/smartisanos/smengine/mymaterial/Material;->addTexture(ILjava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/GaussianBlurEffectMaterial;->drawFirstPassForPostEffect()V

    .line 89
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/GaussianBlurEffectMaterial;->drawSecondPassForPostEffect()V

    .line 91
    iget-object v1, p0, Lcom/smartisanos/smengine/mymaterial/GaussianBlurEffectMaterial;->mFirstMaterial:Lcom/smartisanos/smengine/mymaterial/Material;

    iget-object v2, p0, Lcom/smartisanos/smengine/mymaterial/GaussianBlurEffectMaterial;->mSecondRenderTargetName:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Lcom/smartisanos/smengine/mymaterial/Material;->addTexture(ILjava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/GaussianBlurEffectMaterial;->drawFirstPassForPostEffect()V

    .line 93
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/GaussianBlurEffectMaterial;->drawSecondPassForPostEffect()V

    .line 102
    return-void

    .line 66
    .end local v0    # "uvStatus":[F
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/smengine/mymaterial/GaussianBlurEffectMaterial;->mFirstMaterial:Lcom/smartisanos/smengine/mymaterial/Material;

    iget-object v2, p0, Lcom/smartisanos/smengine/mymaterial/GaussianBlurEffectMaterial;->mTargetTexture:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Lcom/smartisanos/smengine/mymaterial/Material;->addTexture(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public setLastMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V
    .locals 4
    .param p1, "material"    # Lcom/smartisanos/smengine/mymaterial/Material;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 41
    iput-object p1, p0, Lcom/smartisanos/smengine/mymaterial/GaussianBlurEffectMaterial;->mLastMaterial:Lcom/smartisanos/smengine/mymaterial/Material;

    .line 42
    new-instance v0, Lcom/smartisanos/smengine/Texture$State;

    invoke-direct {v0}, Lcom/smartisanos/smengine/Texture$State;-><init>()V

    .line 43
    .local v0, "state":Lcom/smartisanos/smengine/Texture$State;
    iget-boolean v1, p0, Lcom/smartisanos/smengine/mymaterial/GaussianBlurEffectMaterial;->mUseMipMap:Z

    if-eqz v1, :cond_0

    .line 44
    const/4 v1, 0x5

    iput v1, v0, Lcom/smartisanos/smengine/Texture$State;->mMinFilter:I

    .line 45
    iput v3, v0, Lcom/smartisanos/smengine/Texture$State;->mMagFilter:I

    .line 46
    iput v2, v0, Lcom/smartisanos/smengine/Texture$State;->mWrapS:I

    .line 47
    iput v2, v0, Lcom/smartisanos/smengine/Texture$State;->mWrapT:I

    .line 48
    iget-object v1, p0, Lcom/smartisanos/smengine/mymaterial/GaussianBlurEffectMaterial;->mLastMaterial:Lcom/smartisanos/smengine/mymaterial/Material;

    invoke-virtual {v1, v2, v0}, Lcom/smartisanos/smengine/mymaterial/Material;->setTextureState(ILcom/smartisanos/smengine/Texture$State;)V

    .line 56
    :goto_0
    return-void

    .line 50
    :cond_0
    iput v3, v0, Lcom/smartisanos/smengine/Texture$State;->mMinFilter:I

    .line 51
    iput v3, v0, Lcom/smartisanos/smengine/Texture$State;->mMagFilter:I

    .line 52
    iput v2, v0, Lcom/smartisanos/smengine/Texture$State;->mWrapS:I

    .line 53
    iput v2, v0, Lcom/smartisanos/smengine/Texture$State;->mWrapT:I

    .line 54
    iget-object v1, p0, Lcom/smartisanos/smengine/mymaterial/GaussianBlurEffectMaterial;->mLastMaterial:Lcom/smartisanos/smengine/mymaterial/Material;

    invoke-virtual {v1, v2, v0}, Lcom/smartisanos/smengine/mymaterial/Material;->setTextureState(ILcom/smartisanos/smengine/Texture$State;)V

    goto :goto_0
.end method

.method public setParam(ILjava/lang/Object;)V
    .locals 1
    .param p1, "paramIndex"    # I
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/GaussianBlurEffectMaterial;->mLastMaterial:Lcom/smartisanos/smengine/mymaterial/Material;

    invoke-virtual {v0, p1, p2}, Lcom/smartisanos/smengine/mymaterial/Material;->setParam(ILjava/lang/Object;)V

    .line 143
    return-void
.end method

.method public setRenderTargetName(ILjava/lang/String;)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 183
    packed-switch p1, :pswitch_data_0

    .line 193
    :goto_0
    return-void

    .line 185
    :pswitch_0
    iput-object p2, p0, Lcom/smartisanos/smengine/mymaterial/GaussianBlurEffectMaterial;->mFirstRenderTargetName:Ljava/lang/String;

    goto :goto_0

    .line 189
    :pswitch_1
    iput-object p2, p0, Lcom/smartisanos/smengine/mymaterial/GaussianBlurEffectMaterial;->mSecondRenderTargetName:Ljava/lang/String;

    goto :goto_0

    .line 183
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setTargetTexture(Ljava/lang/String;)V
    .locals 0
    .param p1, "texture"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/smartisanos/smengine/mymaterial/GaussianBlurEffectMaterial;->mTargetTexture:Ljava/lang/String;

    .line 60
    return-void
.end method

.method protected updateFirstPassParam()V
    .locals 6

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 109
    iget v3, p0, Lcom/smartisanos/smengine/mymaterial/GaussianBlurEffectMaterial;->mRenderTargetWidth:I

    int-to-float v3, v3

    div-float v1, v4, v3

    .line 110
    .local v1, "texelWidthOffset":F
    iget-boolean v3, p0, Lcom/smartisanos/smengine/mymaterial/GaussianBlurEffectMaterial;->mFirstTimeGaussian:Z

    if-eqz v3, :cond_0

    .line 111
    sget v3, Lcom/smartisanos/launcher/data/Constants;->screen_width:I

    int-to-float v3, v3

    div-float v1, v4, v3

    .line 113
    :cond_0
    iget-object v3, p0, Lcom/smartisanos/smengine/mymaterial/GaussianBlurEffectMaterial;->mFirstMaterial:Lcom/smartisanos/smengine/mymaterial/Material;

    const/16 v4, 0x13

    const-string v5, "uTexelWidthOffset"

    invoke-virtual {v3, v4, v5}, Lcom/smartisanos/smengine/mymaterial/Material;->getUniformLocation(ILjava/lang/String;)I

    move-result v2

    .line 114
    .local v2, "texelWidthOffsetLoc":I
    iget-object v3, p0, Lcom/smartisanos/smengine/mymaterial/GaussianBlurEffectMaterial;->mFirstMaterial:Lcom/smartisanos/smengine/mymaterial/Material;

    const/16 v4, 0x14

    const-string v5, "uTexelHeightOffset"

    invoke-virtual {v3, v4, v5}, Lcom/smartisanos/smengine/mymaterial/Material;->getUniformLocation(ILjava/lang/String;)I

    move-result v0

    .line 115
    .local v0, "texelHeightOffsetLoc":I
    iget-object v3, p0, Lcom/smartisanos/smengine/mymaterial/GaussianBlurEffectMaterial;->mFirstMaterial:Lcom/smartisanos/smengine/mymaterial/Material;

    iget-object v3, v3, Lcom/smartisanos/smengine/mymaterial/Material;->mShader:Lcom/smartisanos/smengine/Shader;

    invoke-virtual {v3, v2, v1}, Lcom/smartisanos/smengine/Shader;->setUniformFloat(IF)V

    .line 116
    iget-object v3, p0, Lcom/smartisanos/smengine/mymaterial/GaussianBlurEffectMaterial;->mFirstMaterial:Lcom/smartisanos/smengine/mymaterial/Material;

    iget-object v3, v3, Lcom/smartisanos/smengine/mymaterial/Material;->mShader:Lcom/smartisanos/smengine/Shader;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Lcom/smartisanos/smengine/Shader;->setUniformFloat(IF)V

    .line 117
    return-void
.end method

.method protected updateSecondPassParam()V
    .locals 6

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 130
    iget v3, p0, Lcom/smartisanos/smengine/mymaterial/GaussianBlurEffectMaterial;->mRenderTargetHeight:I

    int-to-float v3, v3

    div-float v0, v4, v3

    .line 131
    .local v0, "texelHeightOffset":F
    iget-boolean v3, p0, Lcom/smartisanos/smengine/mymaterial/GaussianBlurEffectMaterial;->mFirstTimeGaussian:Z

    if-eqz v3, :cond_0

    .line 132
    sget v3, Lcom/smartisanos/launcher/data/Constants;->screen_height:I

    int-to-float v3, v3

    div-float v0, v4, v3

    .line 134
    :cond_0
    iget-object v3, p0, Lcom/smartisanos/smengine/mymaterial/GaussianBlurEffectMaterial;->mSecondMaterial:Lcom/smartisanos/smengine/mymaterial/Material;

    const/16 v4, 0x13

    const-string v5, "uTexelWidthOffset"

    invoke-virtual {v3, v4, v5}, Lcom/smartisanos/smengine/mymaterial/Material;->getUniformLocation(ILjava/lang/String;)I

    move-result v2

    .line 135
    .local v2, "texelWidthOffsetLoc":I
    iget-object v3, p0, Lcom/smartisanos/smengine/mymaterial/GaussianBlurEffectMaterial;->mSecondMaterial:Lcom/smartisanos/smengine/mymaterial/Material;

    const/16 v4, 0x14

    const-string v5, "uTexelHeightOffset"

    invoke-virtual {v3, v4, v5}, Lcom/smartisanos/smengine/mymaterial/Material;->getUniformLocation(ILjava/lang/String;)I

    move-result v1

    .line 136
    .local v1, "texelHeightOffsetLoc":I
    iget-object v3, p0, Lcom/smartisanos/smengine/mymaterial/GaussianBlurEffectMaterial;->mSecondMaterial:Lcom/smartisanos/smengine/mymaterial/Material;

    iget-object v3, v3, Lcom/smartisanos/smengine/mymaterial/Material;->mShader:Lcom/smartisanos/smengine/Shader;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/smartisanos/smengine/Shader;->setUniformFloat(IF)V

    .line 137
    iget-object v3, p0, Lcom/smartisanos/smengine/mymaterial/GaussianBlurEffectMaterial;->mSecondMaterial:Lcom/smartisanos/smengine/mymaterial/Material;

    iget-object v3, v3, Lcom/smartisanos/smengine/mymaterial/Material;->mShader:Lcom/smartisanos/smengine/Shader;

    invoke-virtual {v3, v1, v0}, Lcom/smartisanos/smengine/Shader;->setUniformFloat(IF)V

    .line 138
    return-void
.end method
