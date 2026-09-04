.class Lcom/smartisanos/launcher/view/SpecialCubeNode$SpecialCube;
.super Lcom/smartisanos/smengine/SceneNode;
.source "SpecialCubeNode.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/view/SpecialCubeNode;
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

.field final synthetic this$0:Lcom/smartisanos/launcher/view/SpecialCubeNode;


.method public constructor <init>(Lcom/smartisanos/launcher/view/SpecialCubeNode;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/SpecialCubeNode;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/smartisanos/launcher/view/SpecialCubeNode$SpecialCube;->this$0:Lcom/smartisanos/launcher/view/SpecialCubeNode;

    .line 148
    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/SceneNode;-><init>(Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method static synthetic access$000(Lcom/smartisanos/launcher/view/SpecialCubeNode$SpecialCube;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/SpecialCubeNode$SpecialCube;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/SpecialCubeNode$SpecialCube;->create(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/smartisanos/launcher/view/SpecialCubeNode$SpecialCube;Ljava/lang/String;Lcom/smartisanos/smengine/RenderTarget$UV;)V
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/SpecialCubeNode$SpecialCube;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/smartisanos/smengine/RenderTarget$UV;

    .prologue
    .line 131
    invoke-direct {p0, p1, p2}, Lcom/smartisanos/launcher/view/SpecialCubeNode$SpecialCube;->createEditModeCellSnapShot(Ljava/lang/String;Lcom/smartisanos/smengine/RenderTarget$UV;)V

    return-void
.end method

.method static synthetic access$200(Lcom/smartisanos/launcher/view/SpecialCubeNode$SpecialCube;)Lcom/smartisanos/smengine/RectNode;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/SpecialCubeNode$SpecialCube;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/smartisanos/launcher/view/SpecialCubeNode$SpecialCube;->mCellSnapShotRect:Lcom/smartisanos/smengine/RectNode;

    return-object v0
.end method

.method static synthetic access$300(Lcom/smartisanos/launcher/view/SpecialCubeNode$SpecialCube;Lcom/smartisanos/smengine/RenderTarget$UV;)V
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/SpecialCubeNode$SpecialCube;
    .param p1, "x1"    # Lcom/smartisanos/smengine/RenderTarget$UV;

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/SpecialCubeNode$SpecialCube;->updateEditModeCellSnapShotUV(Lcom/smartisanos/smengine/RenderTarget$UV;)V

    return-void
.end method

.method static synthetic access$400(Lcom/smartisanos/launcher/view/SpecialCubeNode$SpecialCube;)Lcom/smartisanos/smengine/RectNode;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/SpecialCubeNode$SpecialCube;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/smartisanos/launcher/view/SpecialCubeNode$SpecialCube;->mActiveIconEditModeCover:Lcom/smartisanos/smengine/RectNode;

    return-object v0
.end method

.method static synthetic access$500(Lcom/smartisanos/launcher/view/SpecialCubeNode$SpecialCube;)V
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/SpecialCubeNode$SpecialCube;

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/SpecialCubeNode$SpecialCube;->createActiveIconEditCover()V

    return-void
.end method

.method static synthetic access$600(Lcom/smartisanos/launcher/view/SpecialCubeNode$SpecialCube;)V
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/SpecialCubeNode$SpecialCube;

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/SpecialCubeNode$SpecialCube;->removeActiveIconEditCover()V

    return-void
.end method

.method private create(Ljava/lang/String;)V
    .locals 6
    .param p1, "backgroundImageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    .line 154
    const-string v2, "TextureModularColorMaterial"

    invoke-static {v2}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v0

    .line 155
    .local v0, "m":Lcom/smartisanos/smengine/mymaterial/Material;
    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/SpecialCubeNode$SpecialCube;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 157
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/SpecialCubeNode$SpecialCube;->createSpatialCubeMesh()Lcom/smartisanos/smengine/Mesh;

    move-result-object v1

    .line 158
    .local v1, "mesh":Lcom/smartisanos/smengine/Mesh;
    if-eqz v1, :cond_0

    .line 159
    invoke-virtual {p0, v1}, Lcom/smartisanos/launcher/view/SpecialCubeNode$SpecialCube;->setMesh(Lcom/smartisanos/smengine/Mesh;)V

    .line 163
    :cond_0
    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/SpecialCubeNode$SpecialCube;->setImageName(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0, v3}, Lcom/smartisanos/launcher/view/SpecialCubeNode$SpecialCube;->setRenderQueue(I)V

    .line 167
    invoke-virtual {p0, v3}, Lcom/smartisanos/launcher/view/SpecialCubeNode$SpecialCube;->setIsEnableDepthTest(Z)V

    .line 169
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/SpecialCubeNode$SpecialCube;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/RenderState;->setIsPolygonOffset(Z)V

    .line 170
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/SpecialCubeNode$SpecialCube;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v2

    const/4 v3, 0x0

    const v4, -0x3fcccccd    # -2.8f

    invoke-virtual {v2, v3, v4}, Lcom/smartisanos/smengine/RenderState;->setPolygonOffsetFactorUnits(FF)V

    .line 172
    const/16 v2, 0x64

    invoke-virtual {p0, v2}, Lcom/smartisanos/launcher/view/SpecialCubeNode$SpecialCube;->setLayer(I)V

    .line 174
    invoke-virtual {p0, v5, v5, v5, v5}, Lcom/smartisanos/launcher/view/SpecialCubeNode$SpecialCube;->setColor(FFFF)V

    .line 176
    return-void
.end method

.method private createActiveIconEditCover()V
    .locals 10

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 256
    sget v3, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static {v3}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v1

    .line 258
    .local v1, "layoutProp":Lcom/smartisanos/launcher/data/LayoutProperty;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/SpecialCubeNode$SpecialCube;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_specialCube_ActiveIconCover"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    sub-float/2addr v4, v9

    iget v5, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    sub-float/2addr v5, v9

    invoke-static {v3, v4, v5, v7, v6}, Lcom/smartisanos/smengine/RectNode;->createSimpleTextureRect(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/RectNode;

    move-result-object v3

    iput-object v3, p0, Lcom/smartisanos/launcher/view/SpecialCubeNode$SpecialCube;->mActiveIconEditModeCover:Lcom/smartisanos/smengine/RectNode;

    .line 261
    const-string v3, "TextureModularColorMaterial"

    invoke-static {v3}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v2

    .line 262
    .local v2, "m":Lcom/smartisanos/smengine/mymaterial/Material;
    iget-object v3, p0, Lcom/smartisanos/launcher/view/SpecialCubeNode$SpecialCube;->mActiveIconEditModeCover:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v3, v2}, Lcom/smartisanos/smengine/RectNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 263
    iget-object v3, p0, Lcom/smartisanos/launcher/view/SpecialCubeNode$SpecialCube;->mActiveIconEditModeCover:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v3, v8, v8, v8, v8}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 266
    const-string v3, "brick_unselect.png"

    invoke-static {v3, v6}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 268
    .local v0, "coverImageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/smartisanos/launcher/view/SpecialCubeNode$SpecialCube;->mActiveIconEditModeCover:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v3, v0}, Lcom/smartisanos/smengine/RectNode;->setImageName(Ljava/lang/String;)V

    .line 270
    iget-object v3, p0, Lcom/smartisanos/launcher/view/SpecialCubeNode$SpecialCube;->mActiveIconEditModeCover:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v3, v6}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    .line 272
    iget-object v3, p0, Lcom/smartisanos/launcher/view/SpecialCubeNode$SpecialCube;->mActiveIconEditModeCover:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v3, v6}, Lcom/smartisanos/smengine/RectNode;->setIsEnableDepthTest(Z)V

    .line 274
    iget-object v3, p0, Lcom/smartisanos/launcher/view/SpecialCubeNode$SpecialCube;->mActiveIconEditModeCover:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v3, v6}, Lcom/smartisanos/smengine/RectNode;->setIsEnableBlend(Z)V

    .line 276
    iget-object v3, p0, Lcom/smartisanos/launcher/view/SpecialCubeNode$SpecialCube;->mActiveIconEditModeCover:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {p0, v3}, Lcom/smartisanos/launcher/view/SpecialCubeNode$SpecialCube;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 278
    iget-object v3, p0, Lcom/smartisanos/launcher/view/SpecialCubeNode$SpecialCube;->mActiveIconEditModeCover:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/smartisanos/smengine/RenderState;->setIsPolygonOffset(Z)V

    .line 279
    iget-object v3, p0, Lcom/smartisanos/launcher/view/SpecialCubeNode$SpecialCube;->mActiveIconEditModeCover:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v3

    const/high16 v4, -0x40000000    # -2.0f

    invoke-virtual {v3, v7, v4}, Lcom/smartisanos/smengine/RenderState;->setPolygonOffsetFactorUnits(FF)V

    .line 280
    iget-object v3, p0, Lcom/smartisanos/launcher/view/SpecialCubeNode$SpecialCube;->mActiveIconEditModeCover:Lcom/smartisanos/smengine/RectNode;

    const/16 v4, 0x99

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 282
    iget-object v3, p0, Lcom/smartisanos/launcher/view/SpecialCubeNode$SpecialCube;->mActiveIconEditModeCover:Lcom/smartisanos/smengine/RectNode;

    const/high16 v4, 0x41200000    # 10.0f

    invoke-virtual {v3, v7, v7, v4}, Lcom/smartisanos/smengine/RectNode;->setTranslate(FFF)V

    .line 284
    iget-object v3, p0, Lcom/smartisanos/launcher/view/SpecialCubeNode$SpecialCube;->mActiveIconEditModeCover:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/RenderState;->setBlendMode(I)V

    .line 286
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/SpecialCubeNode$SpecialCube;->updateGeometricState()V

    .line 288
    return-void
.end method

.method private createEditModeCellSnapShot(Ljava/lang/String;Lcom/smartisanos/smengine/RenderTarget$UV;)V
    .locals 12
    .param p1, "snapShotImageName"    # Ljava/lang/String;
    .param p2, "uv"    # Lcom/smartisanos/smengine/RenderTarget$UV;

    .prologue
    .line 189
    sget v7, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static {v7}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v5

    .line 191
    .local v5, "layoutProp":Lcom/smartisanos/launcher/data/LayoutProperty;
    invoke-static {}, Lcom/smartisanos/smengine/World;->uid()J

    move-result-wide v2

    .line 192
    .local v2, "index":J
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/SpecialCubeNode$SpecialCube;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_specialCube_snapShot"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget v8, v5, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    iget v9, v5, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v7, v8, v9, v10, v11}, Lcom/smartisanos/smengine/RectNode;->createSimpleTextureRectWithOwnMesh(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/RectNode;

    move-result-object v7

    iput-object v7, p0, Lcom/smartisanos/launcher/view/SpecialCubeNode$SpecialCube;->mCellSnapShotRect:Lcom/smartisanos/smengine/RectNode;

    .line 195
    const-string v7, "TextureModularColorMaterial"

    invoke-static {v7}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v6

    .line 196
    .local v6, "m":Lcom/smartisanos/smengine/mymaterial/Material;
    iget-object v7, p0, Lcom/smartisanos/launcher/view/SpecialCubeNode$SpecialCube;->mCellSnapShotRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v7, v6}, Lcom/smartisanos/smengine/RectNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 197
    iget-object v7, p0, Lcom/smartisanos/launcher/view/SpecialCubeNode$SpecialCube;->mCellSnapShotRect:Lcom/smartisanos/smengine/RectNode;

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 199
    iget-object v7, p0, Lcom/smartisanos/launcher/view/SpecialCubeNode$SpecialCube;->mCellSnapShotRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v7, p1}, Lcom/smartisanos/smengine/RectNode;->setImageName(Ljava/lang/String;)V

    .line 201
    iget-object v7, p0, Lcom/smartisanos/launcher/view/SpecialCubeNode$SpecialCube;->mCellSnapShotRect:Lcom/smartisanos/smengine/RectNode;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    .line 203
    iget-object v7, p0, Lcom/smartisanos/launcher/view/SpecialCubeNode$SpecialCube;->mCellSnapShotRect:Lcom/smartisanos/smengine/RectNode;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/smartisanos/smengine/RectNode;->setIsEnableDepthTest(Z)V

    .line 205
    iget-object v7, p0, Lcom/smartisanos/launcher/view/SpecialCubeNode$SpecialCube;->mCellSnapShotRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {p0, v7}, Lcom/smartisanos/launcher/view/SpecialCubeNode$SpecialCube;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 207
    iget-object v7, p0, Lcom/smartisanos/launcher/view/SpecialCubeNode$SpecialCube;->mCellSnapShotRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v7}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/smartisanos/smengine/RenderState;->setIsPolygonOffset(Z)V

    .line 208
    iget-object v7, p0, Lcom/smartisanos/launcher/view/SpecialCubeNode$SpecialCube;->mCellSnapShotRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v7}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v7

    const/4 v8, 0x0

    const/high16 v9, -0x40000000    # -2.0f

    invoke-virtual {v7, v8, v9}, Lcom/smartisanos/smengine/RenderState;->setPolygonOffsetFactorUnits(FF)V

    .line 209
    iget-object v7, p0, Lcom/smartisanos/launcher/view/SpecialCubeNode$SpecialCube;->mCellSnapShotRect:Lcom/smartisanos/smengine/RectNode;

    const/16 v8, 0x96

    invoke-virtual {v7, v8}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 211
    iget-object v7, p0, Lcom/smartisanos/launcher/view/SpecialCubeNode$SpecialCube;->mCellSnapShotRect:Lcom/smartisanos/smengine/RectNode;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v10, 0x41200000    # 10.0f

    invoke-virtual {v7, v8, v9, v10}, Lcom/smartisanos/smengine/RectNode;->setTranslate(FFF)V

    .line 213
    iget-object v7, p0, Lcom/smartisanos/launcher/view/SpecialCubeNode$SpecialCube;->mCellSnapShotRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v7}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/smartisanos/smengine/RenderState;->setIsUseVBO(Z)V

    .line 216
    iget-object v7, p0, Lcom/smartisanos/launcher/view/SpecialCubeNode$SpecialCube;->mCellSnapShotRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v7}, Lcom/smartisanos/smengine/RectNode;->getMesh()Lcom/smartisanos/smengine/Mesh;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/smartisanos/smengine/Mesh;->getTexVertexArray(I)[F

    move-result-object v0

    .line 217
    .local v0, "diff_tex_array":[F
    const/4 v1, 0x0

    .line 218
    .local v1, "k":I
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "k":I
    .local v4, "k":I
    iget-object v7, p2, Lcom/smartisanos/smengine/RenderTarget$UV;->u:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    aput v7, v0, v1

    .line 219
    add-int/lit8 v1, v4, 0x1

    .end local v4    # "k":I
    .restart local v1    # "k":I
    iget-object v7, p2, Lcom/smartisanos/smengine/RenderTarget$UV;->v:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    aput v7, v0, v4

    .line 221
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "k":I
    .restart local v4    # "k":I
    iget-object v7, p2, Lcom/smartisanos/smengine/RenderTarget$UV;->u:[F

    const/4 v8, 0x1

    aget v7, v7, v8

    aput v7, v0, v1

    .line 222
    add-int/lit8 v1, v4, 0x1

    .end local v4    # "k":I
    .restart local v1    # "k":I
    iget-object v7, p2, Lcom/smartisanos/smengine/RenderTarget$UV;->v:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    aput v7, v0, v4

    .line 224
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "k":I
    .restart local v4    # "k":I
    iget-object v7, p2, Lcom/smartisanos/smengine/RenderTarget$UV;->u:[F

    const/4 v8, 0x1

    aget v7, v7, v8

    aput v7, v0, v1

    .line 225
    add-int/lit8 v1, v4, 0x1

    .end local v4    # "k":I
    .restart local v1    # "k":I
    iget-object v7, p2, Lcom/smartisanos/smengine/RenderTarget$UV;->v:[F

    const/4 v8, 0x1

    aget v7, v7, v8

    aput v7, v0, v4

    .line 227
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "k":I
    .restart local v4    # "k":I
    iget-object v7, p2, Lcom/smartisanos/smengine/RenderTarget$UV;->u:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    aput v7, v0, v1

    .line 228
    add-int/lit8 v1, v4, 0x1

    .end local v4    # "k":I
    .restart local v1    # "k":I
    iget-object v7, p2, Lcom/smartisanos/smengine/RenderTarget$UV;->v:[F

    const/4 v8, 0x1

    aget v7, v7, v8

    aput v7, v0, v4

    .line 230
    iget-object v7, p0, Lcom/smartisanos/launcher/view/SpecialCubeNode$SpecialCube;->mCellSnapShotRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v7}, Lcom/smartisanos/smengine/RectNode;->getMesh()Lcom/smartisanos/smengine/Mesh;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8, v0}, Lcom/smartisanos/smengine/Mesh;->setTexVertexArray(I[F)V

    .line 232
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/SpecialCubeNode$SpecialCube;->updateGeometricState()V

    .line 234
    return-void
.end method

.method private createSpatialCubeMesh()Lcom/smartisanos/smengine/Mesh;
    .locals 23

    .prologue
    .line 317
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/smengine/World;->getMeshManager()Lcom/smartisanos/smengine/MeshManager;

    move-result-object v5

    const-string v6, "MESH_SPECIAL_CUBE"

    invoke-virtual {v5, v6}, Lcom/smartisanos/smengine/MeshManager;->getMesh(Ljava/lang/String;)Lcom/smartisanos/smengine/Mesh;

    move-result-object v1

    .line 319
    .local v1, "mesh":Lcom/smartisanos/smengine/Mesh;
    if-eqz v1, :cond_0

    move-object/from16 v19, v1

    .line 572
    .end local v1    # "mesh":Lcom/smartisanos/smengine/Mesh;
    .local v19, "mesh":Ljava/lang/Object;
    :goto_0
    return-object v19

    .line 323
    .end local v19    # "mesh":Ljava/lang/Object;
    .restart local v1    # "mesh":Lcom/smartisanos/smengine/Mesh;
    :cond_0
    sget v5, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static {v5}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v18

    .line 325
    .local v18, "layoutProp":Lcom/smartisanos/launcher/data/LayoutProperty;
    move-object/from16 v0, v18

    iget v12, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    .line 326
    .local v12, "frontFaceWidth":F
    move-object/from16 v0, v18

    iget v11, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    .line 328
    .local v11, "frontFaceHeight":F
    const/16 v20, 0x10

    .line 329
    .local v20, "pointNum":I
    const/16 v5, 0x30

    new-array v2, v5, [F

    .line 330
    .local v2, "points":[F
    const/16 v5, 0x20

    new-array v3, v5, [F

    .line 331
    .local v3, "texPoints":[F
    const/4 v10, 0x6

    .line 332
    .local v10, "facesNum":I
    const/16 v5, 0x24

    new-array v4, v5, [S

    .line 336
    .local v4, "faces":[S
    new-instance v14, Lcom/smartisanos/smengine/math/Vector2f;

    neg-float v5, v12

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    neg-float v6, v11

    const/high16 v22, 0x40000000    # 2.0f

    div-float v6, v6, v22

    invoke-direct {v14, v5, v6}, Lcom/smartisanos/smengine/math/Vector2f;-><init>(FF)V

    .line 337
    .local v14, "frontMinPoint":Lcom/smartisanos/smengine/math/Vector2f;
    new-instance v13, Lcom/smartisanos/smengine/math/Vector2f;

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v12, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v11, v6

    invoke-direct {v13, v5, v6}, Lcom/smartisanos/smengine/math/Vector2f;-><init>(FF)V

    .line 338
    .local v13, "frontMaxPoint":Lcom/smartisanos/smengine/math/Vector2f;
    const/high16 v15, 0x41200000    # 10.0f

    .line 340
    .local v15, "frontZ":F
    new-instance v8, Lcom/smartisanos/smengine/math/Vector2f;

    neg-float v5, v12

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    neg-float v6, v11

    const/high16 v22, 0x40000000    # 2.0f

    div-float v6, v6, v22

    invoke-direct {v8, v5, v6}, Lcom/smartisanos/smengine/math/Vector2f;-><init>(FF)V

    .line 341
    .local v8, "backMinPoint":Lcom/smartisanos/smengine/math/Vector2f;
    new-instance v7, Lcom/smartisanos/smengine/math/Vector2f;

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v12, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v11, v6

    invoke-direct {v7, v5, v6}, Lcom/smartisanos/smengine/math/Vector2f;-><init>(FF)V

    .line 342
    .local v7, "backMaxPoint":Lcom/smartisanos/smengine/math/Vector2f;
    const/high16 v9, -0x3ee00000    # -10.0f

    .line 347
    .local v9, "backZ":F
    const/16 v16, 0x0

    .line 348
    .local v16, "k":I
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "k":I
    .local v17, "k":I
    iget v5, v14, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    aput v5, v2, v16

    .line 349
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "k":I
    .restart local v16    # "k":I
    iget v5, v14, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    aput v5, v2, v17

    .line 350
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "k":I
    .restart local v17    # "k":I
    aput v15, v2, v16

    .line 353
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "k":I
    .restart local v16    # "k":I
    iget v5, v13, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    aput v5, v2, v17

    .line 354
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "k":I
    .restart local v17    # "k":I
    iget v5, v14, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    aput v5, v2, v16

    .line 355
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "k":I
    .restart local v16    # "k":I
    aput v15, v2, v17

    .line 358
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "k":I
    .restart local v17    # "k":I
    iget v5, v13, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    aput v5, v2, v16

    .line 359
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "k":I
    .restart local v16    # "k":I
    iget v5, v13, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    aput v5, v2, v17

    .line 360
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "k":I
    .restart local v17    # "k":I
    aput v15, v2, v16

    .line 363
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "k":I
    .restart local v16    # "k":I
    iget v5, v14, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    aput v5, v2, v17

    .line 364
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "k":I
    .restart local v17    # "k":I
    iget v5, v13, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    aput v5, v2, v16

    .line 365
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "k":I
    .restart local v16    # "k":I
    aput v15, v2, v17

    .line 369
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "k":I
    .restart local v17    # "k":I
    iget v5, v7, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    aput v5, v2, v16

    .line 370
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "k":I
    .restart local v16    # "k":I
    iget v5, v8, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    aput v5, v2, v17

    .line 371
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "k":I
    .restart local v17    # "k":I
    aput v9, v2, v16

    .line 374
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "k":I
    .restart local v16    # "k":I
    iget v5, v8, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    aput v5, v2, v17

    .line 375
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "k":I
    .restart local v17    # "k":I
    iget v5, v8, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    aput v5, v2, v16

    .line 376
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "k":I
    .restart local v16    # "k":I
    aput v9, v2, v17

    .line 379
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "k":I
    .restart local v17    # "k":I
    iget v5, v8, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    aput v5, v2, v16

    .line 380
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "k":I
    .restart local v16    # "k":I
    iget v5, v7, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    aput v5, v2, v17

    .line 381
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "k":I
    .restart local v17    # "k":I
    aput v9, v2, v16

    .line 384
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "k":I
    .restart local v16    # "k":I
    iget v5, v7, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    aput v5, v2, v17

    .line 385
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "k":I
    .restart local v17    # "k":I
    iget v5, v7, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    aput v5, v2, v16

    .line 386
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "k":I
    .restart local v16    # "k":I
    aput v9, v2, v17

    .line 392
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "k":I
    .restart local v17    # "k":I
    iget v5, v14, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    aput v5, v2, v16

    .line 393
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "k":I
    .restart local v16    # "k":I
    iget v5, v14, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    aput v5, v2, v17

    .line 394
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "k":I
    .restart local v17    # "k":I
    aput v15, v2, v16

    .line 397
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "k":I
    .restart local v16    # "k":I
    iget v5, v13, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    aput v5, v2, v17

    .line 398
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "k":I
    .restart local v17    # "k":I
    iget v5, v14, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    aput v5, v2, v16

    .line 399
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "k":I
    .restart local v16    # "k":I
    aput v15, v2, v17

    .line 402
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "k":I
    .restart local v17    # "k":I
    iget v5, v13, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    aput v5, v2, v16

    .line 403
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "k":I
    .restart local v16    # "k":I
    iget v5, v13, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    aput v5, v2, v17

    .line 404
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "k":I
    .restart local v17    # "k":I
    aput v15, v2, v16

    .line 407
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "k":I
    .restart local v16    # "k":I
    iget v5, v14, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    aput v5, v2, v17

    .line 408
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "k":I
    .restart local v17    # "k":I
    iget v5, v13, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    aput v5, v2, v16

    .line 409
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "k":I
    .restart local v16    # "k":I
    aput v15, v2, v17

    .line 412
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "k":I
    .restart local v17    # "k":I
    iget v5, v7, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    aput v5, v2, v16

    .line 413
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "k":I
    .restart local v16    # "k":I
    iget v5, v8, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    aput v5, v2, v17

    .line 414
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "k":I
    .restart local v17    # "k":I
    aput v9, v2, v16

    .line 417
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "k":I
    .restart local v16    # "k":I
    iget v5, v8, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    aput v5, v2, v17

    .line 418
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "k":I
    .restart local v17    # "k":I
    iget v5, v8, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    aput v5, v2, v16

    .line 419
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "k":I
    .restart local v16    # "k":I
    aput v9, v2, v17

    .line 422
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "k":I
    .restart local v17    # "k":I
    iget v5, v8, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    aput v5, v2, v16

    .line 423
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "k":I
    .restart local v16    # "k":I
    iget v5, v7, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    aput v5, v2, v17

    .line 424
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "k":I
    .restart local v17    # "k":I
    aput v9, v2, v16

    .line 427
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "k":I
    .restart local v16    # "k":I
    iget v5, v7, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    aput v5, v2, v17

    .line 428
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "k":I
    .restart local v17    # "k":I
    iget v5, v7, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    aput v5, v2, v16

    .line 429
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "k":I
    .restart local v16    # "k":I
    aput v9, v2, v17

    .line 434
    const/16 v16, 0x0

    .line 435
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "k":I
    .restart local v17    # "k":I
    const/4 v5, 0x0

    aput v5, v3, v16

    .line 436
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "k":I
    .restart local v16    # "k":I
    const/4 v5, 0x0

    aput v5, v3, v17

    .line 440
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "k":I
    .restart local v17    # "k":I
    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v3, v16

    .line 441
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "k":I
    .restart local v16    # "k":I
    const/4 v5, 0x0

    aput v5, v3, v17

    .line 444
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "k":I
    .restart local v17    # "k":I
    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v3, v16

    .line 445
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "k":I
    .restart local v16    # "k":I
    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v3, v17

    .line 448
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "k":I
    .restart local v17    # "k":I
    const/4 v5, 0x0

    aput v5, v3, v16

    .line 449
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "k":I
    .restart local v16    # "k":I
    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v3, v17

    .line 454
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "k":I
    .restart local v17    # "k":I
    const/4 v5, 0x0

    aput v5, v3, v16

    .line 455
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "k":I
    .restart local v16    # "k":I
    const/4 v5, 0x0

    aput v5, v3, v17

    .line 459
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "k":I
    .restart local v17    # "k":I
    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v3, v16

    .line 460
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "k":I
    .restart local v16    # "k":I
    const/4 v5, 0x0

    aput v5, v3, v17

    .line 463
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "k":I
    .restart local v17    # "k":I
    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v3, v16

    .line 464
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "k":I
    .restart local v16    # "k":I
    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v3, v17

    .line 467
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "k":I
    .restart local v17    # "k":I
    const/4 v5, 0x0

    aput v5, v3, v16

    .line 468
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "k":I
    .restart local v16    # "k":I
    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v3, v17

    .line 473
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "k":I
    .restart local v17    # "k":I
    const/4 v5, 0x0

    aput v5, v3, v16

    .line 474
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "k":I
    .restart local v16    # "k":I
    const/4 v5, 0x0

    aput v5, v3, v17

    .line 478
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "k":I
    .restart local v17    # "k":I
    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v3, v16

    .line 479
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "k":I
    .restart local v16    # "k":I
    const/4 v5, 0x0

    aput v5, v3, v17

    .line 482
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "k":I
    .restart local v17    # "k":I
    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v3, v16

    .line 483
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "k":I
    .restart local v16    # "k":I
    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v3, v17

    .line 486
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "k":I
    .restart local v17    # "k":I
    const/4 v5, 0x0

    aput v5, v3, v16

    .line 487
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "k":I
    .restart local v16    # "k":I
    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v3, v17

    .line 491
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "k":I
    .restart local v17    # "k":I
    const/4 v5, 0x0

    aput v5, v3, v16

    .line 492
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "k":I
    .restart local v16    # "k":I
    const/4 v5, 0x0

    aput v5, v3, v17

    .line 496
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "k":I
    .restart local v17    # "k":I
    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v3, v16

    .line 497
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "k":I
    .restart local v16    # "k":I
    const/4 v5, 0x0

    aput v5, v3, v17

    .line 500
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "k":I
    .restart local v17    # "k":I
    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v3, v16

    .line 501
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "k":I
    .restart local v16    # "k":I
    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v3, v17

    .line 504
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "k":I
    .restart local v17    # "k":I
    const/4 v5, 0x0

    aput v5, v3, v16

    .line 505
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "k":I
    .restart local v16    # "k":I
    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v3, v17

    .line 510
    const/16 v16, 0x0

    .line 511
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "k":I
    .restart local v17    # "k":I
    const/4 v5, 0x0

    aput-short v5, v4, v16

    .line 512
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "k":I
    .restart local v16    # "k":I
    const/4 v5, 0x1

    aput-short v5, v4, v17

    .line 513
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "k":I
    .restart local v17    # "k":I
    const/4 v5, 0x2

    aput-short v5, v4, v16

    .line 515
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "k":I
    .restart local v16    # "k":I
    const/4 v5, 0x0

    aput-short v5, v4, v17

    .line 516
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "k":I
    .restart local v17    # "k":I
    const/4 v5, 0x2

    aput-short v5, v4, v16

    .line 517
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "k":I
    .restart local v16    # "k":I
    const/4 v5, 0x3

    aput-short v5, v4, v17

    .line 520
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "k":I
    .restart local v17    # "k":I
    const/4 v5, 0x4

    aput-short v5, v4, v16

    .line 521
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "k":I
    .restart local v16    # "k":I
    const/4 v5, 0x5

    aput-short v5, v4, v17

    .line 522
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "k":I
    .restart local v17    # "k":I
    const/4 v5, 0x6

    aput-short v5, v4, v16

    .line 524
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "k":I
    .restart local v16    # "k":I
    const/4 v5, 0x4

    aput-short v5, v4, v17

    .line 525
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "k":I
    .restart local v17    # "k":I
    const/4 v5, 0x6

    aput-short v5, v4, v16

    .line 526
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "k":I
    .restart local v16    # "k":I
    const/4 v5, 0x7

    aput-short v5, v4, v17

    .line 530
    const/16 v21, 0x8

    .line 531
    .local v21, "stride":I
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "k":I
    .restart local v17    # "k":I
    const/16 v5, 0xb

    int-to-short v5, v5

    aput-short v5, v4, v16

    .line 532
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "k":I
    .restart local v16    # "k":I
    const/16 v5, 0xa

    int-to-short v5, v5

    aput-short v5, v4, v17

    .line 533
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "k":I
    .restart local v17    # "k":I
    const/16 v5, 0xf

    int-to-short v5, v5

    aput-short v5, v4, v16

    .line 535
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "k":I
    .restart local v16    # "k":I
    const/16 v5, 0xb

    int-to-short v5, v5

    aput-short v5, v4, v17

    .line 536
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "k":I
    .restart local v17    # "k":I
    const/16 v5, 0xf

    int-to-short v5, v5

    aput-short v5, v4, v16

    .line 537
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "k":I
    .restart local v16    # "k":I
    const/16 v5, 0xe

    int-to-short v5, v5

    aput-short v5, v4, v17

    .line 540
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "k":I
    .restart local v17    # "k":I
    const/16 v5, 0xd

    int-to-short v5, v5

    aput-short v5, v4, v16

    .line 541
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "k":I
    .restart local v16    # "k":I
    const/16 v5, 0x8

    int-to-short v5, v5

    aput-short v5, v4, v17

    .line 542
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "k":I
    .restart local v17    # "k":I
    const/16 v5, 0xb

    int-to-short v5, v5

    aput-short v5, v4, v16

    .line 544
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "k":I
    .restart local v16    # "k":I
    const/16 v5, 0xd

    int-to-short v5, v5

    aput-short v5, v4, v17

    .line 545
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "k":I
    .restart local v17    # "k":I
    const/16 v5, 0xb

    int-to-short v5, v5

    aput-short v5, v4, v16

    .line 546
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "k":I
    .restart local v16    # "k":I
    const/16 v5, 0xe

    int-to-short v5, v5

    aput-short v5, v4, v17

    .line 549
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "k":I
    .restart local v17    # "k":I
    const/16 v5, 0xd

    int-to-short v5, v5

    aput-short v5, v4, v16

    .line 550
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "k":I
    .restart local v16    # "k":I
    const/16 v5, 0xc

    int-to-short v5, v5

    aput-short v5, v4, v17

    .line 551
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "k":I
    .restart local v17    # "k":I
    const/16 v5, 0x9

    int-to-short v5, v5

    aput-short v5, v4, v16

    .line 553
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "k":I
    .restart local v16    # "k":I
    const/16 v5, 0xd

    int-to-short v5, v5

    aput-short v5, v4, v17

    .line 554
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "k":I
    .restart local v17    # "k":I
    const/16 v5, 0x9

    int-to-short v5, v5

    aput-short v5, v4, v16

    .line 555
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "k":I
    .restart local v16    # "k":I
    const/16 v5, 0x8

    int-to-short v5, v5

    aput-short v5, v4, v17

    .line 558
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "k":I
    .restart local v17    # "k":I
    const/16 v5, 0x9

    int-to-short v5, v5

    aput-short v5, v4, v16

    .line 559
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "k":I
    .restart local v16    # "k":I
    const/16 v5, 0xc

    int-to-short v5, v5

    aput-short v5, v4, v17

    .line 560
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "k":I
    .restart local v17    # "k":I
    const/16 v5, 0xf

    int-to-short v5, v5

    aput-short v5, v4, v16

    .line 562
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "k":I
    .restart local v16    # "k":I
    const/16 v5, 0x9

    int-to-short v5, v5

    aput-short v5, v4, v17

    .line 563
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "k":I
    .restart local v17    # "k":I
    const/16 v5, 0xf

    int-to-short v5, v5

    aput-short v5, v4, v16

    .line 564
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "k":I
    .restart local v16    # "k":I
    const/16 v5, 0xa

    int-to-short v5, v5

    aput-short v5, v4, v17

    .line 567
    new-instance v1, Lcom/smartisanos/smengine/Mesh;

    .end local v1    # "mesh":Lcom/smartisanos/smengine/Mesh;
    invoke-direct {v1}, Lcom/smartisanos/smengine/Mesh;-><init>()V

    .line 568
    .restart local v1    # "mesh":Lcom/smartisanos/smengine/Mesh;
    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/smartisanos/smengine/Mesh;->create([F[F[S[FZ)V

    .line 570
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/smengine/World;->getMeshManager()Lcom/smartisanos/smengine/MeshManager;

    move-result-object v5

    const-string v6, "MESH_SPECIAL_CUBE"

    invoke-virtual {v5, v6, v1}, Lcom/smartisanos/smengine/MeshManager;->addMesh(Ljava/lang/String;Lcom/smartisanos/smengine/Mesh;)Lcom/smartisanos/smengine/Mesh;

    move-object/from16 v19, v1

    .line 572
    .restart local v19    # "mesh":Ljava/lang/Object;
    goto/16 :goto_0
.end method

.method private createTestMesh()Lcom/smartisanos/smengine/Mesh;
    .locals 1

    .prologue
    .line 302
    const/4 v0, 0x0

    return-object v0
.end method

.method private removeActiveIconEditCover()V
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/smartisanos/launcher/view/SpecialCubeNode$SpecialCube;->mActiveIconEditModeCover:Lcom/smartisanos/smengine/RectNode;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/smartisanos/launcher/view/SpecialCubeNode$SpecialCube;->mActiveIconEditModeCover:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 182
    iget-object v0, p0, Lcom/smartisanos/launcher/view/SpecialCubeNode$SpecialCube;->mActiveIconEditModeCover:Lcom/smartisanos/smengine/RectNode;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RectNode;->clear(Z)V

    .line 183
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/SpecialCubeNode$SpecialCube;->mActiveIconEditModeCover:Lcom/smartisanos/smengine/RectNode;

    .line 185
    :cond_0
    return-void
.end method

.method private updateEditModeCellSnapShotUV(Lcom/smartisanos/smengine/RenderTarget$UV;)V
    .locals 6
    .param p1, "uv"    # Lcom/smartisanos/smengine/RenderTarget$UV;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 238
    const/4 v0, 0x0

    .line 239
    .local v0, "k":I
    iget-object v2, p0, Lcom/smartisanos/launcher/view/SpecialCubeNode$SpecialCube;->this$0:Lcom/smartisanos/launcher/view/SpecialCubeNode;

    invoke-static {v2}, Lcom/smartisanos/launcher/view/SpecialCubeNode;->access$700(Lcom/smartisanos/launcher/view/SpecialCubeNode;)[F

    move-result-object v2

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "k":I
    .local v1, "k":I
    iget-object v3, p1, Lcom/smartisanos/smengine/RenderTarget$UV;->u:[F

    aget v3, v3, v4

    aput v3, v2, v0

    .line 240
    iget-object v2, p0, Lcom/smartisanos/launcher/view/SpecialCubeNode$SpecialCube;->this$0:Lcom/smartisanos/launcher/view/SpecialCubeNode;

    invoke-static {v2}, Lcom/smartisanos/launcher/view/SpecialCubeNode;->access$700(Lcom/smartisanos/launcher/view/SpecialCubeNode;)[F

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "k":I
    .restart local v0    # "k":I
    iget-object v3, p1, Lcom/smartisanos/smengine/RenderTarget$UV;->v:[F

    aget v3, v3, v4

    aput v3, v2, v1

    .line 242
    iget-object v2, p0, Lcom/smartisanos/launcher/view/SpecialCubeNode$SpecialCube;->this$0:Lcom/smartisanos/launcher/view/SpecialCubeNode;

    invoke-static {v2}, Lcom/smartisanos/launcher/view/SpecialCubeNode;->access$700(Lcom/smartisanos/launcher/view/SpecialCubeNode;)[F

    move-result-object v2

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "k":I
    .restart local v1    # "k":I
    iget-object v3, p1, Lcom/smartisanos/smengine/RenderTarget$UV;->u:[F

    aget v3, v3, v5

    aput v3, v2, v0

    .line 243
    iget-object v2, p0, Lcom/smartisanos/launcher/view/SpecialCubeNode$SpecialCube;->this$0:Lcom/smartisanos/launcher/view/SpecialCubeNode;

    invoke-static {v2}, Lcom/smartisanos/launcher/view/SpecialCubeNode;->access$700(Lcom/smartisanos/launcher/view/SpecialCubeNode;)[F

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "k":I
    .restart local v0    # "k":I
    iget-object v3, p1, Lcom/smartisanos/smengine/RenderTarget$UV;->v:[F

    aget v3, v3, v4

    aput v3, v2, v1

    .line 245
    iget-object v2, p0, Lcom/smartisanos/launcher/view/SpecialCubeNode$SpecialCube;->this$0:Lcom/smartisanos/launcher/view/SpecialCubeNode;

    invoke-static {v2}, Lcom/smartisanos/launcher/view/SpecialCubeNode;->access$700(Lcom/smartisanos/launcher/view/SpecialCubeNode;)[F

    move-result-object v2

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "k":I
    .restart local v1    # "k":I
    iget-object v3, p1, Lcom/smartisanos/smengine/RenderTarget$UV;->u:[F

    aget v3, v3, v5

    aput v3, v2, v0

    .line 246
    iget-object v2, p0, Lcom/smartisanos/launcher/view/SpecialCubeNode$SpecialCube;->this$0:Lcom/smartisanos/launcher/view/SpecialCubeNode;

    invoke-static {v2}, Lcom/smartisanos/launcher/view/SpecialCubeNode;->access$700(Lcom/smartisanos/launcher/view/SpecialCubeNode;)[F

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "k":I
    .restart local v0    # "k":I
    iget-object v3, p1, Lcom/smartisanos/smengine/RenderTarget$UV;->v:[F

    aget v3, v3, v5

    aput v3, v2, v1

    .line 248
    iget-object v2, p0, Lcom/smartisanos/launcher/view/SpecialCubeNode$SpecialCube;->this$0:Lcom/smartisanos/launcher/view/SpecialCubeNode;

    invoke-static {v2}, Lcom/smartisanos/launcher/view/SpecialCubeNode;->access$700(Lcom/smartisanos/launcher/view/SpecialCubeNode;)[F

    move-result-object v2

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "k":I
    .restart local v1    # "k":I
    iget-object v3, p1, Lcom/smartisanos/smengine/RenderTarget$UV;->u:[F

    aget v3, v3, v4

    aput v3, v2, v0

    .line 249
    iget-object v2, p0, Lcom/smartisanos/launcher/view/SpecialCubeNode$SpecialCube;->this$0:Lcom/smartisanos/launcher/view/SpecialCubeNode;

    invoke-static {v2}, Lcom/smartisanos/launcher/view/SpecialCubeNode;->access$700(Lcom/smartisanos/launcher/view/SpecialCubeNode;)[F

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "k":I
    .restart local v0    # "k":I
    iget-object v3, p1, Lcom/smartisanos/smengine/RenderTarget$UV;->v:[F

    aget v3, v3, v5

    aput v3, v2, v1

    .line 251
    iget-object v2, p0, Lcom/smartisanos/launcher/view/SpecialCubeNode$SpecialCube;->mCellSnapShotRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/RectNode;->getMesh()Lcom/smartisanos/smengine/Mesh;

    move-result-object v2

    iget-object v3, p0, Lcom/smartisanos/launcher/view/SpecialCubeNode$SpecialCube;->this$0:Lcom/smartisanos/launcher/view/SpecialCubeNode;

    invoke-static {v3}, Lcom/smartisanos/launcher/view/SpecialCubeNode;->access$700(Lcom/smartisanos/launcher/view/SpecialCubeNode;)[F

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lcom/smartisanos/smengine/Mesh;->updateTexVertexFloatBuffer(I[F)V

    .line 252
    return-void
.end method


.method public clear(Z)V
    .locals 2
    .param p1, "releaseHardWareResource"    # Z

    .prologue
    .line 308
    iget-object v0, p0, Lcom/smartisanos/launcher/view/SpecialCubeNode$SpecialCube;->mCellSnapShotRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 309
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/World;->getMeshManager()Lcom/smartisanos/smengine/MeshManager;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/SpecialCubeNode$SpecialCube;->mCellSnapShotRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/RectNode;->getMesh()Lcom/smartisanos/smengine/Mesh;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/MeshManager;->removeMesh(Lcom/smartisanos/smengine/Mesh;)V

    .line 310
    iget-object v0, p0, Lcom/smartisanos/launcher/view/SpecialCubeNode$SpecialCube;->mCellSnapShotRect:Lcom/smartisanos/smengine/RectNode;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RectNode;->clear(Z)V

    .line 312
    invoke-super {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->clear(Z)V

    .line 313
    return-void
.end method
