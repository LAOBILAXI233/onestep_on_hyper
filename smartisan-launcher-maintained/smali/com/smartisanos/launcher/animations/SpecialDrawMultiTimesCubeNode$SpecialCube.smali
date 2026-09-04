.class Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;
.super Lcom/smartisanos/launcher/animations/DrawMultiTimesScreenNode;
.source "SpecialDrawMultiTimesCubeNode.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SpecialCube"
.end annotation


.field private static final BACK_FACE_FACES_NUM:I = 0x1

.field private static final BACK_FACE_POINT_NUM:I = 0x4

.field private static final FRONT_FACE_FACES_NUM:I = 0x1

.field private static final FRONT_FACE_POINT_NUM:I = 0x4

.field public static final ROTATE_PIVOT_Z:F = 20.0f

.field private static final SPECIAL_CUBE_FACE_NUM:I = 0x4

.field public static final SPECIAL_CUBE_MESH_NAME:Ljava/lang/String; = "MESH_SPECIAL_CUBE"

.field private static final SPECIAL_CUBE_POINT_NUM:I = 0x8


.field private mActiveIconEditModeCover:Lcom/smartisanos/smengine/RectNode;

.field private mCellSnapShotRect:Lcom/smartisanos/smengine/RectNode;

.field private mCubeBackFaceRect:Lcom/smartisanos/smengine/RectNode;

.field final synthetic this$0:Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;


.method public constructor <init>(Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "drawTimes"    # I

    .prologue
    .line 158
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;->this$0:Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;

    .line 159
    invoke-direct {p0, p2, p3}, Lcom/smartisanos/launcher/animations/DrawMultiTimesScreenNode;-><init>(Ljava/lang/String;I)V

    .line 161
    return-void
.end method

.method static synthetic access$000(Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;)V
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;->create()V

    return-void
.end method

.method static synthetic access$100(Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;Lcom/smartisanos/smengine/RenderTarget$UV;I)V
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;
    .param p1, "x1"    # Lcom/smartisanos/smengine/RenderTarget$UV;
    .param p2, "x2"    # I

    .prologue
    .line 141
    invoke-direct {p0, p1, p2}, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;->createEditModeCellSnapShot(Lcom/smartisanos/smengine/RenderTarget$UV;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;)Lcom/smartisanos/smengine/RectNode;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;->mCellSnapShotRect:Lcom/smartisanos/smengine/RectNode;

    return-object v0
.end method

.method static synthetic access$300(Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;Lcom/smartisanos/smengine/RenderTarget$UV;)V
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;
    .param p1, "x1"    # Lcom/smartisanos/smengine/RenderTarget$UV;

    .prologue
    .line 141
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;->updateEditModeCellSnapShotUV(Lcom/smartisanos/smengine/RenderTarget$UV;)V

    return-void
.end method

.method static synthetic access$400(Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;I)V
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;
    .param p1, "x1"    # I

    .prologue
    .line 141
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;->createActiveIconEditCover(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;)Lcom/smartisanos/smengine/RectNode;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;->mActiveIconEditModeCover:Lcom/smartisanos/smengine/RectNode;

    return-object v0
.end method

.method static synthetic access$600(Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;I)V
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;
    .param p1, "x1"    # I

    .prologue
    .line 141
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;->createCubeBackFaceRect(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;)Lcom/smartisanos/smengine/RectNode;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;->mCubeBackFaceRect:Lcom/smartisanos/smengine/RectNode;

    return-object v0
.end method

.method private create()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const v5, 0x3e4ccccd    # 0.2f

    const/high16 v4, 0x3f800000    # 1.0f

    .line 166
    const-string v2, "DrawMultiTimesMaterial"

    invoke-static {v2}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v0

    .line 167
    .local v0, "m":Lcom/smartisanos/smengine/mymaterial/Material;
    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 169
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;->createSpatialCubeMesh()Lcom/smartisanos/smengine/Mesh;

    move-result-object v1

    .line 170
    .local v1, "mesh":Lcom/smartisanos/smengine/Mesh;
    if-eqz v1, :cond_0

    .line 171
    invoke-virtual {p0, v1}, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;->setMesh(Lcom/smartisanos/smengine/Mesh;)V

    .line 175
    :cond_0
    invoke-virtual {p0, v3}, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;->setRenderQueue(I)V

    .line 178
    invoke-virtual {p0, v3}, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;->setIsEnableDepthTest(Z)V

    .line 180
    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/RenderState;->setIsPolygonOffset(Z)V

    .line 182
    sget-boolean v2, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v2, :cond_1

    .line 183
    invoke-virtual {p0, v5, v5, v5, v4}, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;->setColor(FFFF)V

    .line 188
    :goto_0
    return-void

    .line 185
    :cond_1
    invoke-virtual {p0, v4, v4, v4, v4}, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;->setColor(FFFF)V

    goto :goto_0
.end method

.method private createActiveIconEditCover(I)V
    .locals 10
    .param p1, "drawTimes"    # I

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/4 v3, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    .line 287
    sget v0, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v7

    .line 289
    .local v7, "layoutProp":Lcom/smartisanos/launcher/data/LayoutProperty;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_specialCube_ActiveIconCover"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, v7, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    sub-float/2addr v1, v5

    iget v2, v7, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    sub-float/2addr v2, v5

    move v5, p1

    invoke-static/range {v0 .. v5}, Lcom/smartisanos/smengine/RectNode;->createSimpleTextureDrawMultiTimesRect(Ljava/lang/String;FFFZI)Lcom/smartisanos/smengine/RectNode;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;->mActiveIconEditModeCover:Lcom/smartisanos/smengine/RectNode;

    .line 292
    const-string v0, "DrawMultiTimesMaterial"

    invoke-static {v0}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v8

    .line 293
    .local v8, "m":Lcom/smartisanos/smengine/mymaterial/Material;
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;->mActiveIconEditModeCover:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0, v8}, Lcom/smartisanos/smengine/RectNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 294
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;->mActiveIconEditModeCover:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0, v9, v9, v9, v9}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 297
    const-string v0, "brick_unselect.png"

    invoke-static {v0, v4}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    .line 299
    .local v6, "coverImageName":Ljava/lang/String;
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;->mActiveIconEditModeCover:Lcom/smartisanos/smengine/RectNode;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v6}, Lcom/smartisanos/smengine/RectNode;->setDrawImageName(ILjava/lang/String;)V

    .line 302
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;->mActiveIconEditModeCover:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    .line 304
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;->mActiveIconEditModeCover:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/RectNode;->setIsEnableDepthTest(Z)V

    .line 306
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;->mActiveIconEditModeCover:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/RectNode;->setIsEnableBlend(Z)V

    .line 308
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;->mActiveIconEditModeCover:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 312
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;->mActiveIconEditModeCover:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/RenderState;->setIsPolygonOffset(Z)V

    .line 313
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;->mActiveIconEditModeCover:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v0

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, -0x40000000    # -2.0f

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/smengine/RenderState;->setPolygonOffsetFactorUnits(FF)V

    .line 314
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;->mActiveIconEditModeCover:Lcom/smartisanos/smengine/RectNode;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 316
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;->mActiveIconEditModeCover:Lcom/smartisanos/smengine/RectNode;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {v0, v3, v3, v1}, Lcom/smartisanos/smengine/RectNode;->setTranslate(FFF)V

    .line 318
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;->mActiveIconEditModeCover:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RenderState;->setBlendMode(I)V

    .line 320
    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;->updateGeometricState()V

    .line 322
    return-void
.end method

.method private createCubeBackFaceRect(I)V
    .locals 9
    .param p1, "drawTimes"    # I

    .prologue
    const/4 v4, 0x1

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 238
    sget v0, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v6

    .line 240
    .local v6, "layoutProp":Lcom/smartisanos/launcher/data/LayoutProperty;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_specialCube_BackFace"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, v6, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    iget v2, v6, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    move v5, p1

    invoke-static/range {v0 .. v5}, Lcom/smartisanos/smengine/RectNode;->createSimpleTextureDrawMultiTimesRect(Ljava/lang/String;FFFZI)Lcom/smartisanos/smengine/RectNode;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;->mCubeBackFaceRect:Lcom/smartisanos/smengine/RectNode;

    .line 243
    const-string v0, "DrawMultiTimesMaterial"

    invoke-static {v0}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v7

    .line 244
    .local v7, "m":Lcom/smartisanos/smengine/mymaterial/Material;
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;->mCubeBackFaceRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0, v7}, Lcom/smartisanos/smengine/RectNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 245
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;->mCubeBackFaceRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0, v8, v8, v8, v8}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 248
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;->mCubeBackFaceRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    .line 250
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;->mCubeBackFaceRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/RectNode;->setIsEnableDepthTest(Z)V

    .line 252
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;->mCubeBackFaceRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 254
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;->mCubeBackFaceRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RenderState;->setIsPolygonOffset(Z)V

    .line 256
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;->mCubeBackFaceRect:Lcom/smartisanos/smengine/RectNode;

    const/high16 v1, -0x3ee00000    # -10.0f

    invoke-virtual {v0, v3, v3, v1}, Lcom/smartisanos/smengine/RectNode;->setTranslate(FFF)V

    .line 258
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;->mCubeBackFaceRect:Lcom/smartisanos/smengine/RectNode;

    const v1, 0x40490fdb    # (float)Math.PI

    new-instance v2, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v2, v3, v8, v3}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/smengine/RectNode;->setRotation(FLcom/smartisanos/smengine/math/Vector3f;)V

    .line 261
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;->mCubeBackFaceRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/RenderState;->setIsUseVBO(Z)V

    .line 263
    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;->updateGeometricState()V

    .line 265
    return-void
.end method

.method private createEditModeCellSnapShot(Lcom/smartisanos/smengine/RenderTarget$UV;I)V
    .locals 13
    .param p1, "uv"    # Lcom/smartisanos/smengine/RenderTarget$UV;
    .param p2, "drawTimes"    # I

    .prologue
    .line 192
    sget v0, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v11

    .line 194
    .local v11, "layoutProp":Lcom/smartisanos/launcher/data/LayoutProperty;
    invoke-static {}, Lcom/smartisanos/smengine/World;->uid()J

    move-result-wide v8

    .line 195
    .local v8, "index":J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_specialCube_snapShot"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, v11, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    iget v2, v11, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcom/smartisanos/smengine/RectNode;->createSimpleTextureDrawMultiTimesRectWithOwnMesh(Ljava/lang/String;FFFZI)Lcom/smartisanos/smengine/RectNode;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;->mCellSnapShotRect:Lcom/smartisanos/smengine/RectNode;

    .line 198
    const-string v0, "DrawMultiTimesMaterial"

    invoke-static {v0}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v12

    .line 199
    .local v12, "m":Lcom/smartisanos/smengine/mymaterial/Material;
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;->mCellSnapShotRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0, v12}, Lcom/smartisanos/smengine/RectNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 200
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;->mCellSnapShotRect:Lcom/smartisanos/smengine/RectNode;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 203
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;->mCellSnapShotRect:Lcom/smartisanos/smengine/RectNode;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    .line 205
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;->mCellSnapShotRect:Lcom/smartisanos/smengine/RectNode;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RectNode;->setIsEnableDepthTest(Z)V

    .line 207
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;->mCellSnapShotRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 209
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;->mCellSnapShotRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RenderState;->setIsPolygonOffset(Z)V

    .line 211
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;->mCellSnapShotRect:Lcom/smartisanos/smengine/RectNode;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, 0x41200000    # 10.0f

    invoke-virtual {v0, v1, v2, v3}, Lcom/smartisanos/smengine/RectNode;->setTranslate(FFF)V

    .line 213
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;->mCellSnapShotRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RenderState;->setIsUseVBO(Z)V

    .line 216
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;->mCellSnapShotRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->getMesh()Lcom/smartisanos/smengine/Mesh;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/Mesh;->getTexVertexArray(I)[F

    move-result-object v6

    .line 217
    .local v6, "diff_tex_array":[F
    const/4 v7, 0x0

    .line 218
    .local v7, "k":I
    add-int/lit8 v10, v7, 0x1

    .end local v7    # "k":I
    .local v10, "k":I
    iget-object v0, p1, Lcom/smartisanos/smengine/RenderTarget$UV;->u:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    aput v0, v6, v7

    .line 219
    add-int/lit8 v7, v10, 0x1

    .end local v10    # "k":I
    .restart local v7    # "k":I
    iget-object v0, p1, Lcom/smartisanos/smengine/RenderTarget$UV;->v:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    aput v0, v6, v10

    .line 221
    add-int/lit8 v10, v7, 0x1

    .end local v7    # "k":I
    .restart local v10    # "k":I
    iget-object v0, p1, Lcom/smartisanos/smengine/RenderTarget$UV;->u:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    aput v0, v6, v7

    .line 222
    add-int/lit8 v7, v10, 0x1

    .end local v10    # "k":I
    .restart local v7    # "k":I
    iget-object v0, p1, Lcom/smartisanos/smengine/RenderTarget$UV;->v:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    aput v0, v6, v10

    .line 224
    add-int/lit8 v10, v7, 0x1

    .end local v7    # "k":I
    .restart local v10    # "k":I
    iget-object v0, p1, Lcom/smartisanos/smengine/RenderTarget$UV;->u:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    aput v0, v6, v7

    .line 225
    add-int/lit8 v7, v10, 0x1

    .end local v10    # "k":I
    .restart local v7    # "k":I
    iget-object v0, p1, Lcom/smartisanos/smengine/RenderTarget$UV;->v:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    aput v0, v6, v10

    .line 227
    add-int/lit8 v10, v7, 0x1

    .end local v7    # "k":I
    .restart local v10    # "k":I
    iget-object v0, p1, Lcom/smartisanos/smengine/RenderTarget$UV;->u:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    aput v0, v6, v7

    .line 228
    add-int/lit8 v7, v10, 0x1

    .end local v10    # "k":I
    .restart local v7    # "k":I
    iget-object v0, p1, Lcom/smartisanos/smengine/RenderTarget$UV;->v:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    aput v0, v6, v10

    .line 230
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;->mCellSnapShotRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->getMesh()Lcom/smartisanos/smengine/Mesh;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v6}, Lcom/smartisanos/smengine/Mesh;->setTexVertexArray(I[F)V

    .line 232
    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;->updateGeometricState()V

    .line 234
    return-void
.end method

.method private createSpatialCubeMesh()Lcom/smartisanos/smengine/Mesh;
    .locals 24

    .prologue
    .line 348
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MESH_SPECIAL_CUBE"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 349
    .local v20, "meshName":Ljava/lang/String;
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/smengine/World;->getMeshManager()Lcom/smartisanos/smengine/MeshManager;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Lcom/smartisanos/smengine/MeshManager;->getMesh(Ljava/lang/String;)Lcom/smartisanos/smengine/Mesh;

    move-result-object v1

    .line 351
    .local v1, "mesh":Lcom/smartisanos/smengine/Mesh;
    if-eqz v1, :cond_0

    move-object/from16 v19, v1

    .line 510
    .end local v1    # "mesh":Lcom/smartisanos/smengine/Mesh;
    .local v19, "mesh":Ljava/lang/Object;
    :goto_0
    return-object v19

    .line 355
    .end local v19    # "mesh":Ljava/lang/Object;
    .restart local v1    # "mesh":Lcom/smartisanos/smengine/Mesh;
    :cond_0
    sget v5, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    invoke-static {v5}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v18

    .line 357
    .local v18, "layoutProp":Lcom/smartisanos/launcher/data/LayoutProperty;
    move-object/from16 v0, v18

    iget v12, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    .line 358
    .local v12, "frontFaceWidth":F
    move-object/from16 v0, v18

    iget v11, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    .line 360
    .local v11, "frontFaceHeight":F
    const/16 v21, 0x8

    .line 361
    .local v21, "pointNum":I
    const/16 v5, 0x18

    new-array v2, v5, [F

    .line 362
    .local v2, "points":[F
    const/16 v5, 0x10

    new-array v3, v5, [F

    .line 363
    .local v3, "texPoints":[F
    const/4 v10, 0x4

    .line 364
    .local v10, "facesNum":I
    const/16 v5, 0x18

    new-array v4, v5, [S

    .line 368
    .local v4, "faces":[S
    new-instance v14, Lcom/smartisanos/smengine/math/Vector2f;

    neg-float v5, v12

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    neg-float v6, v11

    const/high16 v23, 0x40000000    # 2.0f

    div-float v6, v6, v23

    invoke-direct {v14, v5, v6}, Lcom/smartisanos/smengine/math/Vector2f;-><init>(FF)V

    .line 369
    .local v14, "frontMinPoint":Lcom/smartisanos/smengine/math/Vector2f;
    new-instance v13, Lcom/smartisanos/smengine/math/Vector2f;

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v12, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v11, v6

    invoke-direct {v13, v5, v6}, Lcom/smartisanos/smengine/math/Vector2f;-><init>(FF)V

    .line 370
    .local v13, "frontMaxPoint":Lcom/smartisanos/smengine/math/Vector2f;
    const/high16 v15, 0x41200000    # 10.0f

    .line 372
    .local v15, "frontZ":F
    new-instance v8, Lcom/smartisanos/smengine/math/Vector2f;

    neg-float v5, v12

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    neg-float v6, v11

    const/high16 v23, 0x40000000    # 2.0f

    div-float v6, v6, v23

    invoke-direct {v8, v5, v6}, Lcom/smartisanos/smengine/math/Vector2f;-><init>(FF)V

    .line 373
    .local v8, "backMinPoint":Lcom/smartisanos/smengine/math/Vector2f;
    new-instance v7, Lcom/smartisanos/smengine/math/Vector2f;

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v12, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v11, v6

    invoke-direct {v7, v5, v6}, Lcom/smartisanos/smengine/math/Vector2f;-><init>(FF)V

    .line 374
    .local v7, "backMaxPoint":Lcom/smartisanos/smengine/math/Vector2f;
    const/high16 v9, -0x3ee00000    # -10.0f

    .line 377
    .local v9, "backZ":F
    const/16 v16, 0x0

    .line 381
    .local v16, "k":I
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "k":I
    .local v17, "k":I
    iget v5, v14, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    aput v5, v2, v16

    .line 382
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "k":I
    .restart local v16    # "k":I
    iget v5, v14, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    aput v5, v2, v17

    .line 383
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "k":I
    .restart local v17    # "k":I
    aput v15, v2, v16

    .line 386
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "k":I
    .restart local v16    # "k":I
    iget v5, v13, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    aput v5, v2, v17

    .line 387
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "k":I
    .restart local v17    # "k":I
    iget v5, v14, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    aput v5, v2, v16

    .line 388
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "k":I
    .restart local v16    # "k":I
    aput v15, v2, v17

    .line 391
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "k":I
    .restart local v17    # "k":I
    iget v5, v13, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    aput v5, v2, v16

    .line 392
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "k":I
    .restart local v16    # "k":I
    iget v5, v13, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    aput v5, v2, v17

    .line 393
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "k":I
    .restart local v17    # "k":I
    aput v15, v2, v16

    .line 396
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "k":I
    .restart local v16    # "k":I
    iget v5, v14, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    aput v5, v2, v17

    .line 397
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "k":I
    .restart local v17    # "k":I
    iget v5, v13, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    aput v5, v2, v16

    .line 398
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "k":I
    .restart local v16    # "k":I
    aput v15, v2, v17

    .line 401
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "k":I
    .restart local v17    # "k":I
    iget v5, v7, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    aput v5, v2, v16

    .line 402
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "k":I
    .restart local v16    # "k":I
    iget v5, v8, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    aput v5, v2, v17

    .line 403
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "k":I
    .restart local v17    # "k":I
    aput v9, v2, v16

    .line 406
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "k":I
    .restart local v16    # "k":I
    iget v5, v8, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    aput v5, v2, v17

    .line 407
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "k":I
    .restart local v17    # "k":I
    iget v5, v8, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    aput v5, v2, v16

    .line 408
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "k":I
    .restart local v16    # "k":I
    aput v9, v2, v17

    .line 411
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "k":I
    .restart local v17    # "k":I
    iget v5, v8, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    aput v5, v2, v16

    .line 412
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "k":I
    .restart local v16    # "k":I
    iget v5, v7, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    aput v5, v2, v17

    .line 413
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "k":I
    .restart local v17    # "k":I
    aput v9, v2, v16

    .line 416
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "k":I
    .restart local v16    # "k":I
    iget v5, v7, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    aput v5, v2, v17

    .line 417
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "k":I
    .restart local v17    # "k":I
    iget v5, v7, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    aput v5, v2, v16

    .line 418
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "k":I
    .restart local v16    # "k":I
    aput v9, v2, v17

    .line 422
    const/16 v16, 0x0

    .line 426
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "k":I
    .restart local v17    # "k":I
    const/4 v5, 0x0

    aput v5, v3, v16

    .line 427
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "k":I
    .restart local v16    # "k":I
    const/4 v5, 0x0

    aput v5, v3, v17

    .line 431
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "k":I
    .restart local v17    # "k":I
    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v3, v16

    .line 432
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "k":I
    .restart local v16    # "k":I
    const/4 v5, 0x0

    aput v5, v3, v17

    .line 435
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "k":I
    .restart local v17    # "k":I
    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v3, v16

    .line 436
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "k":I
    .restart local v16    # "k":I
    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v3, v17

    .line 439
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "k":I
    .restart local v17    # "k":I
    const/4 v5, 0x0

    aput v5, v3, v16

    .line 440
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "k":I
    .restart local v16    # "k":I
    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v3, v17

    .line 444
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "k":I
    .restart local v17    # "k":I
    const/4 v5, 0x0

    aput v5, v3, v16

    .line 445
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "k":I
    .restart local v16    # "k":I
    const/4 v5, 0x0

    aput v5, v3, v17

    .line 449
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "k":I
    .restart local v17    # "k":I
    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v3, v16

    .line 450
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "k":I
    .restart local v16    # "k":I
    const/4 v5, 0x0

    aput v5, v3, v17

    .line 453
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "k":I
    .restart local v17    # "k":I
    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v3, v16

    .line 454
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "k":I
    .restart local v16    # "k":I
    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v3, v17

    .line 457
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "k":I
    .restart local v17    # "k":I
    const/4 v5, 0x0

    aput v5, v3, v16

    .line 458
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "k":I
    .restart local v16    # "k":I
    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v3, v17

    .line 463
    const/16 v16, 0x0

    .line 468
    const/16 v22, 0x0

    .line 469
    .local v22, "stride":I
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "k":I
    .restart local v17    # "k":I
    const/4 v5, 0x3

    int-to-short v5, v5

    aput-short v5, v4, v16

    .line 470
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "k":I
    .restart local v16    # "k":I
    const/4 v5, 0x2

    int-to-short v5, v5

    aput-short v5, v4, v17

    .line 471
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "k":I
    .restart local v17    # "k":I
    const/4 v5, 0x7

    int-to-short v5, v5

    aput-short v5, v4, v16

    .line 473
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "k":I
    .restart local v16    # "k":I
    const/4 v5, 0x3

    int-to-short v5, v5

    aput-short v5, v4, v17

    .line 474
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "k":I
    .restart local v17    # "k":I
    const/4 v5, 0x7

    int-to-short v5, v5

    aput-short v5, v4, v16

    .line 475
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "k":I
    .restart local v16    # "k":I
    const/4 v5, 0x6

    int-to-short v5, v5

    aput-short v5, v4, v17

    .line 478
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "k":I
    .restart local v17    # "k":I
    const/4 v5, 0x5

    int-to-short v5, v5

    aput-short v5, v4, v16

    .line 479
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "k":I
    .restart local v16    # "k":I
    const/4 v5, 0x0

    int-to-short v5, v5

    aput-short v5, v4, v17

    .line 480
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "k":I
    .restart local v17    # "k":I
    const/4 v5, 0x3

    int-to-short v5, v5

    aput-short v5, v4, v16

    .line 482
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "k":I
    .restart local v16    # "k":I
    const/4 v5, 0x5

    int-to-short v5, v5

    aput-short v5, v4, v17

    .line 483
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "k":I
    .restart local v17    # "k":I
    const/4 v5, 0x3

    int-to-short v5, v5

    aput-short v5, v4, v16

    .line 484
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "k":I
    .restart local v16    # "k":I
    const/4 v5, 0x6

    int-to-short v5, v5

    aput-short v5, v4, v17

    .line 487
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "k":I
    .restart local v17    # "k":I
    const/4 v5, 0x5

    int-to-short v5, v5

    aput-short v5, v4, v16

    .line 488
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "k":I
    .restart local v16    # "k":I
    const/4 v5, 0x4

    int-to-short v5, v5

    aput-short v5, v4, v17

    .line 489
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "k":I
    .restart local v17    # "k":I
    const/4 v5, 0x1

    int-to-short v5, v5

    aput-short v5, v4, v16

    .line 491
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "k":I
    .restart local v16    # "k":I
    const/4 v5, 0x5

    int-to-short v5, v5

    aput-short v5, v4, v17

    .line 492
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "k":I
    .restart local v17    # "k":I
    const/4 v5, 0x1

    int-to-short v5, v5

    aput-short v5, v4, v16

    .line 493
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "k":I
    .restart local v16    # "k":I
    const/4 v5, 0x0

    int-to-short v5, v5

    aput-short v5, v4, v17

    .line 496
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "k":I
    .restart local v17    # "k":I
    const/4 v5, 0x1

    int-to-short v5, v5

    aput-short v5, v4, v16

    .line 497
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "k":I
    .restart local v16    # "k":I
    const/4 v5, 0x4

    int-to-short v5, v5

    aput-short v5, v4, v17

    .line 498
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "k":I
    .restart local v17    # "k":I
    const/4 v5, 0x7

    int-to-short v5, v5

    aput-short v5, v4, v16

    .line 500
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "k":I
    .restart local v16    # "k":I
    const/4 v5, 0x1

    int-to-short v5, v5

    aput-short v5, v4, v17

    .line 501
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "k":I
    .restart local v17    # "k":I
    const/4 v5, 0x7

    int-to-short v5, v5

    aput-short v5, v4, v16

    .line 502
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "k":I
    .restart local v16    # "k":I
    const/4 v5, 0x2

    int-to-short v5, v5

    aput-short v5, v4, v17

    .line 505
    new-instance v1, Lcom/smartisanos/smengine/Mesh;

    .end local v1    # "mesh":Lcom/smartisanos/smengine/Mesh;
    invoke-direct {v1}, Lcom/smartisanos/smengine/Mesh;-><init>()V

    .line 506
    .restart local v1    # "mesh":Lcom/smartisanos/smengine/Mesh;
    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/smartisanos/smengine/Mesh;->create([F[F[S[FZ)V

    .line 508
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/smengine/World;->getMeshManager()Lcom/smartisanos/smengine/MeshManager;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0, v1}, Lcom/smartisanos/smengine/MeshManager;->addMesh(Ljava/lang/String;Lcom/smartisanos/smengine/Mesh;)Lcom/smartisanos/smengine/Mesh;

    move-object/from16 v19, v1

    .line 510
    .restart local v19    # "mesh":Ljava/lang/Object;
    goto/16 :goto_0
.end method

.method private updateEditModeCellSnapShotUV(Lcom/smartisanos/smengine/RenderTarget$UV;)V
    .locals 6
    .param p1, "uv"    # Lcom/smartisanos/smengine/RenderTarget$UV;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 269
    const/4 v0, 0x0

    .line 270
    .local v0, "k":I
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;->this$0:Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;

    invoke-static {v2}, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;->access$800(Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;)[F

    move-result-object v2

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "k":I
    .local v1, "k":I
    iget-object v3, p1, Lcom/smartisanos/smengine/RenderTarget$UV;->u:[F

    aget v3, v3, v4

    aput v3, v2, v0

    .line 271
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;->this$0:Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;

    invoke-static {v2}, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;->access$800(Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;)[F

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "k":I
    .restart local v0    # "k":I
    iget-object v3, p1, Lcom/smartisanos/smengine/RenderTarget$UV;->v:[F

    aget v3, v3, v4

    aput v3, v2, v1

    .line 273
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;->this$0:Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;

    invoke-static {v2}, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;->access$800(Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;)[F

    move-result-object v2

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "k":I
    .restart local v1    # "k":I
    iget-object v3, p1, Lcom/smartisanos/smengine/RenderTarget$UV;->u:[F

    aget v3, v3, v5

    aput v3, v2, v0

    .line 274
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;->this$0:Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;

    invoke-static {v2}, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;->access$800(Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;)[F

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "k":I
    .restart local v0    # "k":I
    iget-object v3, p1, Lcom/smartisanos/smengine/RenderTarget$UV;->v:[F

    aget v3, v3, v4

    aput v3, v2, v1

    .line 276
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;->this$0:Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;

    invoke-static {v2}, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;->access$800(Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;)[F

    move-result-object v2

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "k":I
    .restart local v1    # "k":I
    iget-object v3, p1, Lcom/smartisanos/smengine/RenderTarget$UV;->u:[F

    aget v3, v3, v5

    aput v3, v2, v0

    .line 277
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;->this$0:Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;

    invoke-static {v2}, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;->access$800(Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;)[F

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "k":I
    .restart local v0    # "k":I
    iget-object v3, p1, Lcom/smartisanos/smengine/RenderTarget$UV;->v:[F

    aget v3, v3, v5

    aput v3, v2, v1

    .line 279
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;->this$0:Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;

    invoke-static {v2}, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;->access$800(Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;)[F

    move-result-object v2

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "k":I
    .restart local v1    # "k":I
    iget-object v3, p1, Lcom/smartisanos/smengine/RenderTarget$UV;->u:[F

    aget v3, v3, v4

    aput v3, v2, v0

    .line 280
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;->this$0:Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;

    invoke-static {v2}, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;->access$800(Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;)[F

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "k":I
    .restart local v0    # "k":I
    iget-object v3, p1, Lcom/smartisanos/smengine/RenderTarget$UV;->v:[F

    aget v3, v3, v5

    aput v3, v2, v1

    .line 282
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;->mCellSnapShotRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/RectNode;->getMesh()Lcom/smartisanos/smengine/Mesh;

    move-result-object v2

    iget-object v3, p0, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;->this$0:Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;

    invoke-static {v3}, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;->access$800(Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;)[F

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lcom/smartisanos/smengine/Mesh;->updateTexVertexFloatBuffer(I[F)V

    .line 283
    return-void
.end method


.method public clear(Z)V
    .locals 2
    .param p1, "releaseHardWareResource"    # Z

    .prologue
    .line 339
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;->mCellSnapShotRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 340
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/World;->getMeshManager()Lcom/smartisanos/smengine/MeshManager;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;->mCellSnapShotRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/RectNode;->getMesh()Lcom/smartisanos/smengine/Mesh;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/MeshManager;->removeMesh(Lcom/smartisanos/smengine/Mesh;)V

    .line 341
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode$SpecialCube;->mCellSnapShotRect:Lcom/smartisanos/smengine/RectNode;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RectNode;->clear(Z)V

    .line 343
    invoke-super {p0, p1}, Lcom/smartisanos/launcher/animations/DrawMultiTimesScreenNode;->clear(Z)V

    .line 344
    return-void
.end method
