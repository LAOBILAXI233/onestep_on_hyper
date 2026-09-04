.class public Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;
.super Lcom/smartisanos/smengine/SceneNode;
.source "SpecialDrawMultiTimesCubeNode.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;
    }
.end annotation


.field private static final CUBE_DEPTH:F = 20.0f

.field private static log:Lcom/smartisanos/launcher/LOG;


.field private mCube:Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;

.field private mShadow:Lcom/smartisanos/smengine/RectNode;

.field private mShadowScale:Lcom/smartisanos/smengine/math/Vector3f;

.field private mShadowSize:Lcom/smartisanos/smengine/math/Vector3f;

.field private mUpdateTexCoordCache:[F


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;->log:Lcom/smartisanos/launcher/LOG;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "drawTimes"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/SceneNode;-><init>(Ljava/lang/String;)V

    .line 27
    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;->mUpdateTexCoordCache:[F

    .line 28
    new-instance v0, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v0}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;->mShadowSize:Lcom/smartisanos/smengine/math/Vector3f;

    .line 35
    new-instance v0, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;

    invoke-direct {v0, p0, p1, p2}, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;-><init>(Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;->mCube:Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;

    .line 36
    return-void
.end method

.method static synthetic access$800(Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;)[F
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;->mUpdateTexCoordCache:[F

    return-object v0
.end method


.method public create()V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;->mCube:Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;

    invoke-static {v0}, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;->access$000(Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;)V

    .line 40
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;->mCube:Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 41
    return-void
.end method

.method public createCubeBackFaceRect(I)V
    .locals 1
    .param p1, "drawTimes"    # I

    .prologue
    .line 72
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;->mCube:Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;

    invoke-static {v0, p1}, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;->access$600(Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;I)V

    .line 73
    return-void
.end method

.method public createCubeShadow(FFI)V
    .locals 12
    .param p1, "pageScaleX"    # F
    .param p2, "pageScaleY"    # F
    .param p3, "drawTimes"    # I

    .prologue
    const/4 v11, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    .line 102
    sget v0, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v8

    .line 104
    .local v8, "layoutProp":Lcom/smartisanos/launcher/data/LayoutProperty;
    iget v0, v8, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    iget v1, v8, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_normal_shadow_image_width:F

    mul-float/2addr v0, v1

    iget v1, v8, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_normal_shadow_image_content_width:F

    div-float v7, v0, v1

    .line 106
    .local v7, "cellShadowWidth":F
    iget v0, v8, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    iget v1, v8, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_normal_shadow_image_height:F

    mul-float/2addr v0, v1

    iget v1, v8, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_normal_shadow_image_content_height:F

    div-float v6, v0, v1

    .line 109
    .local v6, "cellShadowHeight":F
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_displayshadow"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    mul-float v1, v7, p1

    mul-float v2, v6, p1

    const/4 v3, 0x0

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/smartisanos/smengine/RectNode;->createSimpleTextureDrawMultiTimesRect(Ljava/lang/String;FFFZI)Lcom/smartisanos/smengine/RectNode;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;->mShadow:Lcom/smartisanos/smengine/RectNode;

    .line 115
    const-string v0, "DrawMultiTimesMaterial"

    invoke-static {v0}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v9

    .line 116
    .local v9, "m":Lcom/smartisanos/smengine/mymaterial/Material;
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;->mShadow:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0, v9}, Lcom/smartisanos/smengine/RectNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 118
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;->mShadow:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0, v10, v10, v10, v10}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 120
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;->mShadow:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    .line 123
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;->mShadow:Lcom/smartisanos/smengine/RectNode;

    const-string v1, "icon_sort_shadow.png"

    invoke-static {v1, v4}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v11, v1}, Lcom/smartisanos/smengine/RectNode;->setDrawImageName(ILjava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;->mShadow:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 127
    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;->updateGeometricState()V

    .line 129
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;->mShadow:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/smartisanos/smengine/RenderState;->setIsPolygonOffset(Z)V

    .line 131
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;->mShadow:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/RenderState;->setIsEnableDepthTest(Z)V

    .line 132
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;->mShadow:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/RenderState;->setIsEnableBlend(Z)V

    .line 133
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;->mShadow:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RenderState;->setBlendMode(I)V

    .line 135
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;->mShadow:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RenderState;->setDepthTestFunc(I)V

    .line 137
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;->mShadow:Lcom/smartisanos/smengine/RectNode;

    iget-object v1, p0, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;->mShadowSize:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RectNode;->getSize(Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 138
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;->mShadow:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->getScale()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;->mShadowScale:Lcom/smartisanos/smengine/math/Vector3f;

    .line 139
    return-void
.end method

.method public createEditModeCellSnapShot(Lcom/smartisanos/smengine/RenderTarget$UV;I)V
    .locals 1
    .param p1, "uv"    # Lcom/smartisanos/smengine/RenderTarget$UV;
    .param p2, "drawTimes"    # I

    .prologue
    .line 44
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;->mCube:Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;

    invoke-static {v0, p1, p2}, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;->access$100(Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;Lcom/smartisanos/smengine/RenderTarget$UV;I)V

    .line 45
    return-void
.end method

.method public createOrUpdateActiveIconEditCover(I)V
    .locals 1
    .param p1, "drawTimes"    # I

    .prologue
    .line 64
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;->mCube:Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;

    invoke-static {v0, p1}, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;->access$400(Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;I)V

    .line 66
    return-void
.end method

.method public getActiveIconEditModeCover()Lcom/smartisanos/smengine/RectNode;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;->mCube:Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;

    invoke-static {v0}, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;->access$500(Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;)Lcom/smartisanos/smengine/RectNode;

    move-result-object v0

    return-object v0
.end method

.method public getCube()Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;->mCube:Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;

    return-object v0
.end method

.method public getCubeBackFaceRect()Lcom/smartisanos/smengine/RectNode;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;->mCube:Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;

    invoke-static {v0}, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;->access$700(Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;)Lcom/smartisanos/smengine/RectNode;

    move-result-object v0

    return-object v0
.end method

.method public getCubeShadow()Lcom/smartisanos/smengine/RectNode;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;->mShadow:Lcom/smartisanos/smengine/RectNode;

    return-object v0
.end method

.method public getSnapShotRect()Lcom/smartisanos/smengine/RectNode;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;->mCube:Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;

    invoke-static {v0}, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;->access$200(Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;)Lcom/smartisanos/smengine/RectNode;

    move-result-object v0

    return-object v0
.end method

.method public updateCellSnapShotUV(Lcom/smartisanos/smengine/RenderTarget$UV;)V
    .locals 2
    .param p1, "uv"    # Lcom/smartisanos/smengine/RenderTarget$UV;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;->mCube:Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;

    invoke-static {v0}, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;->access$200(Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;)Lcom/smartisanos/smengine/RectNode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;->mCube:Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;

    invoke-static {v0, p1}, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;->access$300(Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;Lcom/smartisanos/smengine/RenderTarget$UV;)V

    .line 55
    return-void

    .line 58
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "cell snapshot rect not create???"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateShadowScale(FF)V
    .locals 7
    .param p1, "currentRotateRadius"    # F
    .param p2, "deltaScale"    # F

    .prologue
    .line 82
    iget-object v3, p0, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;->mShadowSize:Lcom/smartisanos/smengine/math/Vector3f;

    iget v0, v3, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 83
    .local v0, "orisize":F
    float-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v3, v4

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 84
    .local v1, "realWidth":F
    const/high16 v3, 0x41a00000    # 20.0f

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_0

    .line 85
    div-float v2, v1, v0

    .line 86
    .local v2, "scale":F
    iget-object v3, p0, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;->mShadow:Lcom/smartisanos/smengine/RectNode;

    iget-object v4, p0, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;->mShadowScale:Lcom/smartisanos/smengine/math/Vector3f;

    iget v4, v4, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    mul-float/2addr v4, v2

    mul-float/2addr v4, p2

    iget-object v5, p0, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;->mShadowScale:Lcom/smartisanos/smengine/math/Vector3f;

    iget v5, v5, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    mul-float/2addr v5, p2

    iget-object v6, p0, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;->mShadowScale:Lcom/smartisanos/smengine/math/Vector3f;

    iget v6, v6, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-virtual {v3, v4, v5, v6}, Lcom/smartisanos/smengine/RectNode;->setScale(FFF)V

    .line 87
    iget-object v3, p0, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;->mShadow:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/RectNode;->updateGeometricState()V

    .line 90
    .end local v2    # "scale":F
    :cond_0
    return-void
.end method
