.class public Lcom/smartisanos/launcher/view/SpecialCubeNode;
.super Lcom/smartisanos/smengine/SceneNode;
.source "SpecialCubeNode.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/launcher/view/SpecialCubeNode$SpecialCube;
    }
.end annotation


.field private static final CUBE_DEPTH:F = 20.0f


.field private mCube:Lcom/smartisanos/launcher/view/SpecialCubeNode$SpecialCube;

.field private mShadow:Lcom/smartisanos/smengine/RectNode;

.field private mShadowScale:Lcom/smartisanos/smengine/math/Vector3f;

.field private mShadowSize:Lcom/smartisanos/smengine/math/Vector3f;

.field private mUpdateTexCoordCache:[F


.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/SceneNode;-><init>(Ljava/lang/String;)V

    .line 27
    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/smartisanos/launcher/view/SpecialCubeNode;->mUpdateTexCoordCache:[F

    .line 28
    new-instance v0, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v0}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/SpecialCubeNode;->mShadowSize:Lcom/smartisanos/smengine/math/Vector3f;

    .line 35
    new-instance v0, Lcom/smartisanos/launcher/view/SpecialCubeNode$SpecialCube;

    invoke-direct {v0, p0, p1}, Lcom/smartisanos/launcher/view/SpecialCubeNode$SpecialCube;-><init>(Lcom/smartisanos/launcher/view/SpecialCubeNode;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/SpecialCubeNode;->mCube:Lcom/smartisanos/launcher/view/SpecialCubeNode$SpecialCube;

    .line 36
    return-void
.end method

.method static synthetic access$700(Lcom/smartisanos/launcher/view/SpecialCubeNode;)[F
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/SpecialCubeNode;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/smartisanos/launcher/view/SpecialCubeNode;->mUpdateTexCoordCache:[F

    return-object v0
.end method


.method public create(Ljava/lang/String;)V
    .locals 1
    .param p1, "backgroundImageName"    # Ljava/lang/String;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/smartisanos/launcher/view/SpecialCubeNode;->mCube:Lcom/smartisanos/launcher/view/SpecialCubeNode$SpecialCube;

    invoke-static {v0, p1}, Lcom/smartisanos/launcher/view/SpecialCubeNode$SpecialCube;->access$000(Lcom/smartisanos/launcher/view/SpecialCubeNode$SpecialCube;Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/smartisanos/launcher/view/SpecialCubeNode;->mCube:Lcom/smartisanos/launcher/view/SpecialCubeNode$SpecialCube;

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/SpecialCubeNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 41
    return-void
.end method

.method public createCubeShadow()V
    .locals 8

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    .line 98
    sget v2, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static {v2}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v0

    .line 100
    .local v0, "layoutProp":Lcom/smartisanos/launcher/data/LayoutProperty;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/SpecialCubeNode;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_displayshadow"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_normal_shadow_image_width:F

    iget v4, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_normal_shadow_image_height:F

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Lcom/smartisanos/smengine/RectNode;->createSimpleTextureRect(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/RectNode;

    move-result-object v2

    iput-object v2, p0, Lcom/smartisanos/launcher/view/SpecialCubeNode;->mShadow:Lcom/smartisanos/smengine/RectNode;

    .line 106
    const-string v2, "TextureModularColorMaterial"

    invoke-static {v2}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v1

    .line 107
    .local v1, "m":Lcom/smartisanos/smengine/mymaterial/Material;
    iget-object v2, p0, Lcom/smartisanos/launcher/view/SpecialCubeNode;->mShadow:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v2, v1}, Lcom/smartisanos/smengine/RectNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 108
    iget-object v2, p0, Lcom/smartisanos/launcher/view/SpecialCubeNode;->mShadow:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v2, v7, v7, v7, v7}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 110
    iget-object v2, p0, Lcom/smartisanos/launcher/view/SpecialCubeNode;->mShadow:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v2, v6}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    .line 112
    iget-object v2, p0, Lcom/smartisanos/launcher/view/SpecialCubeNode;->mShadow:Lcom/smartisanos/smengine/RectNode;

    const-string v3, "brick_shadow.png"

    invoke-static {v3, v6}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/RectNode;->setImageName(Ljava/lang/String;)V

    .line 114
    iget-object v2, p0, Lcom/smartisanos/launcher/view/SpecialCubeNode;->mShadow:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {p0, v2}, Lcom/smartisanos/launcher/view/SpecialCubeNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 115
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/SpecialCubeNode;->updateGeometricState()V

    .line 117
    iget-object v2, p0, Lcom/smartisanos/launcher/view/SpecialCubeNode;->mShadow:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/smartisanos/smengine/RenderState;->setIsPolygonOffset(Z)V

    .line 118
    iget-object v2, p0, Lcom/smartisanos/launcher/view/SpecialCubeNode;->mShadow:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v2

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, -0x40000000    # -2.0f

    invoke-virtual {v2, v3, v4}, Lcom/smartisanos/smengine/RenderState;->setPolygonOffsetFactorUnits(FF)V

    .line 119
    iget-object v2, p0, Lcom/smartisanos/launcher/view/SpecialCubeNode;->mShadow:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/smartisanos/smengine/RenderState;->setIsEnableDepthTest(Z)V

    .line 120
    iget-object v2, p0, Lcom/smartisanos/launcher/view/SpecialCubeNode;->mShadow:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/smartisanos/smengine/RenderState;->setIsEnableBlend(Z)V

    .line 121
    iget-object v2, p0, Lcom/smartisanos/launcher/view/SpecialCubeNode;->mShadow:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/RenderState;->setBlendMode(I)V

    .line 122
    iget-object v2, p0, Lcom/smartisanos/launcher/view/SpecialCubeNode;->mShadow:Lcom/smartisanos/smengine/RectNode;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 124
    iget-object v2, p0, Lcom/smartisanos/launcher/view/SpecialCubeNode;->mShadow:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/RenderState;->setDepthTestFunc(I)V

    .line 126
    iget-object v2, p0, Lcom/smartisanos/launcher/view/SpecialCubeNode;->mShadow:Lcom/smartisanos/smengine/RectNode;

    iget-object v3, p0, Lcom/smartisanos/launcher/view/SpecialCubeNode;->mShadowSize:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/RectNode;->getSize(Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 127
    iget-object v2, p0, Lcom/smartisanos/launcher/view/SpecialCubeNode;->mShadow:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/RectNode;->getScale()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v2

    iput-object v2, p0, Lcom/smartisanos/launcher/view/SpecialCubeNode;->mShadowScale:Lcom/smartisanos/smengine/math/Vector3f;

    .line 129
    return-void
.end method

.method public createEditModeCellSnapShot(Ljava/lang/String;Lcom/smartisanos/smengine/RenderTarget$UV;)V
    .locals 1
    .param p1, "cellSnapShotImageName"    # Ljava/lang/String;
    .param p2, "uv"    # Lcom/smartisanos/smengine/RenderTarget$UV;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/smartisanos/launcher/view/SpecialCubeNode;->mCube:Lcom/smartisanos/launcher/view/SpecialCubeNode$SpecialCube;

    invoke-static {v0, p1, p2}, Lcom/smartisanos/launcher/view/SpecialCubeNode$SpecialCube;->access$100(Lcom/smartisanos/launcher/view/SpecialCubeNode$SpecialCube;Ljava/lang/String;Lcom/smartisanos/smengine/RenderTarget$UV;)V

    .line 45
    return-void
.end method

.method public createOrUpdateActiveIconEditCover(Z)V
    .locals 1
    .param p1, "thisIconIsActiveIcon"    # Z

    .prologue
    .line 58
    if-eqz p1, :cond_1

    .line 59
    iget-object v0, p0, Lcom/smartisanos/launcher/view/SpecialCubeNode;->mCube:Lcom/smartisanos/launcher/view/SpecialCubeNode$SpecialCube;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/SpecialCubeNode$SpecialCube;->access$400(Lcom/smartisanos/launcher/view/SpecialCubeNode$SpecialCube;)Lcom/smartisanos/smengine/RectNode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 71
    :goto_0
    return-void

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/SpecialCubeNode;->mCube:Lcom/smartisanos/launcher/view/SpecialCubeNode$SpecialCube;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/SpecialCubeNode$SpecialCube;->access$500(Lcom/smartisanos/launcher/view/SpecialCubeNode$SpecialCube;)V

    goto :goto_0

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/SpecialCubeNode;->mCube:Lcom/smartisanos/launcher/view/SpecialCubeNode$SpecialCube;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/SpecialCubeNode$SpecialCube;->access$600(Lcom/smartisanos/launcher/view/SpecialCubeNode$SpecialCube;)V

    goto :goto_0
.end method

.method public getCube()Lcom/smartisanos/smengine/SceneNode;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/smartisanos/launcher/view/SpecialCubeNode;->mCube:Lcom/smartisanos/launcher/view/SpecialCubeNode$SpecialCube;

    return-object v0
.end method

.method public getCubeShadow()Lcom/smartisanos/smengine/SceneNode;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/smartisanos/launcher/view/SpecialCubeNode;->mShadow:Lcom/smartisanos/smengine/RectNode;

    return-object v0
.end method

.method public updateCellSnapShotUV(Lcom/smartisanos/smengine/RenderTarget$UV;)V
    .locals 2
    .param p1, "uv"    # Lcom/smartisanos/smengine/RenderTarget$UV;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/smartisanos/launcher/view/SpecialCubeNode;->mCube:Lcom/smartisanos/launcher/view/SpecialCubeNode$SpecialCube;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/SpecialCubeNode$SpecialCube;->access$200(Lcom/smartisanos/launcher/view/SpecialCubeNode$SpecialCube;)Lcom/smartisanos/smengine/RectNode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/smartisanos/launcher/view/SpecialCubeNode;->mCube:Lcom/smartisanos/launcher/view/SpecialCubeNode$SpecialCube;

    invoke-static {v0, p1}, Lcom/smartisanos/launcher/view/SpecialCubeNode$SpecialCube;->access$300(Lcom/smartisanos/launcher/view/SpecialCubeNode$SpecialCube;Lcom/smartisanos/smengine/RenderTarget$UV;)V

    .line 51
    return-void

    .line 54
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "cell snapshot rect not create???"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateShadowScale(F)V
    .locals 7
    .param p1, "currentRotateRadius"    # F

    .prologue
    .line 78
    iget-object v3, p0, Lcom/smartisanos/launcher/view/SpecialCubeNode;->mShadowSize:Lcom/smartisanos/smengine/math/Vector3f;

    iget v0, v3, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 79
    .local v0, "orisize":F
    float-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v3, v4

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 80
    .local v1, "realWidth":F
    const/high16 v3, 0x41a00000    # 20.0f

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_0

    .line 81
    div-float v2, v1, v0

    .line 82
    .local v2, "scale":F
    iget-object v3, p0, Lcom/smartisanos/launcher/view/SpecialCubeNode;->mShadow:Lcom/smartisanos/smengine/RectNode;

    iget-object v4, p0, Lcom/smartisanos/launcher/view/SpecialCubeNode;->mShadowScale:Lcom/smartisanos/smengine/math/Vector3f;

    iget v4, v4, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    mul-float/2addr v4, v2

    iget-object v5, p0, Lcom/smartisanos/launcher/view/SpecialCubeNode;->mShadowScale:Lcom/smartisanos/smengine/math/Vector3f;

    iget v5, v5, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget-object v6, p0, Lcom/smartisanos/launcher/view/SpecialCubeNode;->mShadowScale:Lcom/smartisanos/smengine/math/Vector3f;

    iget v6, v6, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-virtual {v3, v4, v5, v6}, Lcom/smartisanos/smengine/RectNode;->setScale(FFF)V

    .line 83
    iget-object v3, p0, Lcom/smartisanos/launcher/view/SpecialCubeNode;->mShadow:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/RectNode;->updateGeometricState()V

    .line 86
    .end local v2    # "scale":F
    :cond_0
    return-void
.end method
