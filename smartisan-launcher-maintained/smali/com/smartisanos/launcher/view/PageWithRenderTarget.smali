.class public Lcom/smartisanos/launcher/view/PageWithRenderTarget;
.super Lcom/smartisanos/launcher/view/Page;
.source "PageWithRenderTarget.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/launcher/view/PageWithRenderTarget$PageException;
    }
.end annotation


.field private static final log:Lcom/smartisanos/launcher/LOG;


.field protected mCellTextureCoordArray:[F

.field private mCurrentFreeTextureIndexList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/smengine/math/Vector2f;",
            ">;"
        }
    .end annotation
.end field

.field private mMatArray16:[Lcom/smartisanos/smengine/math/Matrix4f;

.field private mMatArray9:[Lcom/smartisanos/smengine/math/Matrix4f;

.field protected mMeshTexTureCoordArray:[F

.field private mModularColorArray16:[Lcom/smartisanos/smengine/math/Vector4f;

.field private mModularColorArray9:[Lcom/smartisanos/smengine/math/Vector4f;

.field protected mMoveToOutOfScreenMatrix:Lcom/smartisanos/smengine/math/Matrix4f;

.field private mNeedDrawSpecialCube:Z

.field protected mNeedInvisibleList:[Z

.field protected mNeedUpdateUV:Z

.field private mPageTextureName:Ljava/lang/String;

.field protected mPos:Lcom/smartisanos/smengine/math/Vector3f;

.field protected mRenderTarget:Lcom/smartisanos/smengine/RenderTarget;

.field protected mRenderTargetTextureName:Ljava/lang/String;

.field protected mSize:Lcom/smartisanos/smengine/math/Vector3f;


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->log:Lcom/smartisanos/launcher/LOG;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "titleName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/launcher/data/ItemInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "ccList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    const/16 v2, 0x10

    const/16 v1, 0x9

    .line 77
    invoke-direct {p0, p1, p2, p3}, Lcom/smartisanos/launcher/view/Page;-><init>(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 52
    new-array v0, v1, [Lcom/smartisanos/smengine/math/Matrix4f;

    iput-object v0, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mMatArray9:[Lcom/smartisanos/smengine/math/Matrix4f;

    .line 53
    new-array v0, v2, [Lcom/smartisanos/smengine/math/Matrix4f;

    iput-object v0, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mMatArray16:[Lcom/smartisanos/smengine/math/Matrix4f;

    .line 55
    new-array v0, v1, [Lcom/smartisanos/smengine/math/Vector4f;

    iput-object v0, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mModularColorArray9:[Lcom/smartisanos/smengine/math/Vector4f;

    .line 56
    new-array v0, v2, [Lcom/smartisanos/smengine/math/Vector4f;

    iput-object v0, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mModularColorArray16:[Lcom/smartisanos/smengine/math/Vector4f;

    .line 58
    new-instance v0, Lcom/smartisanos/smengine/math/Matrix4f;

    invoke-direct {v0}, Lcom/smartisanos/smengine/math/Matrix4f;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mMoveToOutOfScreenMatrix:Lcom/smartisanos/smengine/math/Matrix4f;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mCurrentFreeTextureIndexList:Ljava/util/ArrayList;

    .line 63
    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mCellTextureCoordArray:[F

    .line 64
    new-instance v0, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v0}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mSize:Lcom/smartisanos/smengine/math/Vector3f;

    .line 65
    new-instance v0, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v0}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mPos:Lcom/smartisanos/smengine/math/Vector3f;

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mNeedDrawSpecialCube:Z

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mNeedUpdateUV:Z

    .line 78
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->init()V

    .line 79
    return-void
.end method

.method private createBatch()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 421
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->isDrawWithBatch()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-nez v0, :cond_1

    .line 423
    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mRenderTargetTextureName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->setImageName(Ljava/lang/String;)V

    .line 424
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RenderState;->setIsUseVBO(Z)V

    .line 430
    :goto_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->createPageMaterial()V

    .line 431
    invoke-virtual {p0, v1}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->setRenderQueue(I)V

    .line 432
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->createBatchMesh()V

    .line 434
    :cond_0
    return-void

    .line 426
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mRenderTargetTextureName:Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->setTextureName(ILjava/lang/String;)V

    .line 427
    const-string v0, "t_blur_background"

    invoke-virtual {p0, v1, v0}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->setTextureName(ILjava/lang/String;)V

    .line 428
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/RenderState;->setIsUseVBO(Z)V

    goto :goto_0
.end method

.method private createBatchMesh()V
    .locals 30

    .prologue
    .line 294
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->getMesh()Lcom/smartisanos/smengine/Mesh;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 390
    :cond_0
    :goto_0
    return-void

    .line 297
    :cond_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mRenderTarget:Lcom/smartisanos/smengine/RenderTarget;

    if-eqz v6, :cond_0

    .line 300
    invoke-static {}, Lcom/smartisanos/smengine/World;->uid()J

    move-result-wide v28

    .line 301
    .local v28, "worldIndex":J
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/smengine/World;->getMeshManager()Lcom/smartisanos/smengine/MeshManager;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "MESH_BATCH_9_CELLS"

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, v28

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/smartisanos/smengine/MeshManager;->getMesh(Ljava/lang/String;)Lcom/smartisanos/smengine/Mesh;

    move-result-object v2

    .line 302
    .local v2, "mesh":Lcom/smartisanos/smengine/Mesh;
    if-nez v2, :cond_c

    .line 303
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v10, v6, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_col_num:I

    .line 304
    .local v10, "colNum":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v0, v6, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_row_num:I

    move/from16 v20, v0

    .line 305
    .local v20, "rowNum":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v9, v6, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    .line 306
    .local v9, "cellWidth":F
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v8, v6, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    .line 307
    .local v8, "cellHeight":F
    mul-int v6, v10, v20

    mul-int/lit8 v19, v6, 0x4

    .line 308
    .local v19, "pointNum":I
    mul-int/lit8 v6, v19, 0x3

    new-array v3, v6, [F

    .line 309
    .local v3, "points":[F
    mul-int/lit8 v6, v19, 0x2

    new-array v4, v6, [F

    .line 310
    .local v4, "texPoints":[F
    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v16, v0

    .line 311
    .local v16, "matIndexArray":[F
    const/4 v14, 0x0

    .line 312
    .local v14, "k":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    move/from16 v0, v20

    if-ge v11, v0, :cond_3

    .line 313
    const/4 v13, 0x0

    .local v13, "j":I
    move v15, v14

    .end local v14    # "k":I
    .local v15, "k":I
    :goto_2
    if-ge v13, v10, :cond_2

    .line 314
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v13}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->getIndex(II)I

    move-result v12

    .line 315
    .local v12, "index":I
    sget-object v6, Lcom/smartisanos/launcher/data/Constants;->pageCellCenterPoints:[Lcom/smartisanos/smengine/math/Vector3f;

    aget-object v22, v6, v12

    .line 316
    .local v22, "v":Lcom/smartisanos/smengine/math/Vector3f;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mRenderTarget:Lcom/smartisanos/smengine/RenderTarget;

    invoke-virtual {v6, v11, v13}, Lcom/smartisanos/smengine/RenderTarget;->getUV(II)Lcom/smartisanos/smengine/RenderTarget$UV;

    move-result-object v21

    .line 317
    .local v21, "uv":Lcom/smartisanos/smengine/RenderTarget$UV;
    new-instance v18, Lcom/smartisanos/smengine/math/Vector3f;

    neg-float v6, v9

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    neg-float v7, v8

    const/high16 v27, 0x40000000    # 2.0f

    div-float v7, v7, v27

    const/16 v27, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-direct {v0, v6, v7, v1}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    .line 318
    .local v18, "minPoint":Lcom/smartisanos/smengine/math/Vector3f;
    new-instance v17, Lcom/smartisanos/smengine/math/Vector3f;

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v9, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float v7, v8, v7

    const/16 v27, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v27

    invoke-direct {v0, v6, v7, v1}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    .line 319
    .local v17, "maxPoint":Lcom/smartisanos/smengine/math/Vector3f;
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "k":I
    .restart local v14    # "k":I
    move-object/from16 v0, v18

    iget v6, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    aput v6, v3, v15

    .line 320
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "k":I
    .restart local v15    # "k":I
    move-object/from16 v0, v18

    iget v6, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    aput v6, v3, v14

    .line 321
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "k":I
    .restart local v14    # "k":I
    move-object/from16 v0, p0

    iget v6, v0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mZ:F

    aput v6, v3, v15

    .line 323
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "k":I
    .restart local v15    # "k":I
    move-object/from16 v0, v17

    iget v6, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    aput v6, v3, v14

    .line 324
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "k":I
    .restart local v14    # "k":I
    move-object/from16 v0, v18

    iget v6, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    aput v6, v3, v15

    .line 325
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "k":I
    .restart local v15    # "k":I
    move-object/from16 v0, p0

    iget v6, v0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mZ:F

    aput v6, v3, v14

    .line 327
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "k":I
    .restart local v14    # "k":I
    move-object/from16 v0, v17

    iget v6, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    aput v6, v3, v15

    .line 328
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "k":I
    .restart local v15    # "k":I
    move-object/from16 v0, v17

    iget v6, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    aput v6, v3, v14

    .line 329
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "k":I
    .restart local v14    # "k":I
    move-object/from16 v0, p0

    iget v6, v0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mZ:F

    aput v6, v3, v15

    .line 331
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "k":I
    .restart local v15    # "k":I
    move-object/from16 v0, v18

    iget v6, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    aput v6, v3, v14

    .line 332
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "k":I
    .restart local v14    # "k":I
    move-object/from16 v0, v17

    iget v6, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    aput v6, v3, v15

    .line 333
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "k":I
    .restart local v15    # "k":I
    move-object/from16 v0, p0

    iget v6, v0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mZ:F

    aput v6, v3, v14

    .line 313
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2

    .line 312
    .end local v12    # "index":I
    .end local v17    # "maxPoint":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v18    # "minPoint":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v21    # "uv":Lcom/smartisanos/smengine/RenderTarget$UV;
    .end local v22    # "v":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_2
    add-int/lit8 v11, v11, 0x1

    move v14, v15

    .end local v15    # "k":I
    .restart local v14    # "k":I
    goto/16 :goto_1

    .line 336
    .end local v13    # "j":I
    :cond_3
    const/4 v14, 0x0

    .line 337
    const/4 v11, 0x0

    :goto_3
    move/from16 v0, v20

    if-ge v11, v0, :cond_5

    .line 338
    const/4 v13, 0x0

    .restart local v13    # "j":I
    move v15, v14

    .end local v14    # "k":I
    .restart local v15    # "k":I
    :goto_4
    if-ge v13, v10, :cond_4

    .line 339
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mRenderTarget:Lcom/smartisanos/smengine/RenderTarget;

    invoke-virtual {v6, v11, v13}, Lcom/smartisanos/smengine/RenderTarget;->getUV(II)Lcom/smartisanos/smengine/RenderTarget$UV;

    move-result-object v21

    .line 340
    .restart local v21    # "uv":Lcom/smartisanos/smengine/RenderTarget$UV;
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "k":I
    .restart local v14    # "k":I
    move-object/from16 v0, v21

    iget-object v6, v0, Lcom/smartisanos/smengine/RenderTarget$UV;->u:[F

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v4, v15

    .line 341
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "k":I
    .restart local v15    # "k":I
    move-object/from16 v0, v21

    iget-object v6, v0, Lcom/smartisanos/smengine/RenderTarget$UV;->v:[F

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v4, v14

    .line 343
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "k":I
    .restart local v14    # "k":I
    move-object/from16 v0, v21

    iget-object v6, v0, Lcom/smartisanos/smengine/RenderTarget$UV;->u:[F

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v4, v15

    .line 344
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "k":I
    .restart local v15    # "k":I
    move-object/from16 v0, v21

    iget-object v6, v0, Lcom/smartisanos/smengine/RenderTarget$UV;->v:[F

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v4, v14

    .line 346
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "k":I
    .restart local v14    # "k":I
    move-object/from16 v0, v21

    iget-object v6, v0, Lcom/smartisanos/smengine/RenderTarget$UV;->u:[F

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v4, v15

    .line 347
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "k":I
    .restart local v15    # "k":I
    move-object/from16 v0, v21

    iget-object v6, v0, Lcom/smartisanos/smengine/RenderTarget$UV;->v:[F

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v4, v14

    .line 349
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "k":I
    .restart local v14    # "k":I
    move-object/from16 v0, v21

    iget-object v6, v0, Lcom/smartisanos/smengine/RenderTarget$UV;->u:[F

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v4, v15

    .line 350
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "k":I
    .restart local v15    # "k":I
    move-object/from16 v0, v21

    iget-object v6, v0, Lcom/smartisanos/smengine/RenderTarget$UV;->v:[F

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v4, v14

    .line 338
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 337
    .end local v21    # "uv":Lcom/smartisanos/smengine/RenderTarget$UV;
    :cond_4
    add-int/lit8 v11, v11, 0x1

    move v14, v15

    .end local v15    # "k":I
    .restart local v14    # "k":I
    goto :goto_3

    .line 353
    .end local v13    # "j":I
    :cond_5
    const/4 v14, 0x0

    .line 354
    const/4 v11, 0x0

    :goto_5
    move/from16 v0, v20

    if-ge v11, v0, :cond_7

    .line 355
    const/4 v13, 0x0

    .restart local v13    # "j":I
    move v15, v14

    .end local v14    # "k":I
    .restart local v15    # "k":I
    :goto_6
    if-ge v13, v10, :cond_6

    .line 356
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v13}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->getIndex(II)I

    move-result v12

    .line 357
    .restart local v12    # "index":I
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "k":I
    .restart local v14    # "k":I
    int-to-float v6, v12

    aput v6, v16, v15

    .line 358
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "k":I
    .restart local v15    # "k":I
    int-to-float v6, v12

    aput v6, v16, v14

    .line 359
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "k":I
    .restart local v14    # "k":I
    int-to-float v6, v12

    aput v6, v16, v15

    .line 360
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "k":I
    .restart local v15    # "k":I
    int-to-float v6, v12

    aput v6, v16, v14

    .line 355
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 354
    .end local v12    # "index":I
    :cond_6
    add-int/lit8 v11, v11, 0x1

    move v14, v15

    .end local v15    # "k":I
    .restart local v14    # "k":I
    goto :goto_5

    .line 363
    .end local v13    # "j":I
    :cond_7
    mul-int v6, v10, v20

    mul-int/lit8 v6, v6, 0x2

    mul-int/lit8 v6, v6, 0x3

    new-array v5, v6, [S

    .line 364
    .local v5, "faces":[S
    const/4 v14, 0x0

    .line 365
    const/4 v11, 0x0

    :goto_7
    move/from16 v0, v20

    if-ge v11, v0, :cond_9

    .line 366
    const/4 v13, 0x0

    .restart local v13    # "j":I
    move v15, v14

    .end local v14    # "k":I
    .restart local v15    # "k":I
    :goto_8
    if-ge v13, v10, :cond_8

    .line 367
    mul-int v6, v11, v10

    mul-int/lit8 v6, v6, 0x4

    mul-int/lit8 v7, v13, 0x4

    add-int/2addr v6, v7

    int-to-short v0, v6

    move/from16 v23, v0

    .line 368
    .local v23, "v0":S
    add-int/lit8 v6, v23, 0x1

    int-to-short v0, v6

    move/from16 v24, v0

    .line 369
    .local v24, "v1":S
    add-int/lit8 v6, v24, 0x1

    int-to-short v0, v6

    move/from16 v25, v0

    .line 370
    .local v25, "v2":S
    add-int/lit8 v6, v25, 0x1

    int-to-short v0, v6

    move/from16 v26, v0

    .line 371
    .local v26, "v3":S
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "k":I
    .restart local v14    # "k":I
    aput-short v23, v5, v15

    .line 372
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "k":I
    .restart local v15    # "k":I
    aput-short v24, v5, v14

    .line 373
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "k":I
    .restart local v14    # "k":I
    aput-short v25, v5, v15

    .line 374
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "k":I
    .restart local v15    # "k":I
    aput-short v23, v5, v14

    .line 375
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "k":I
    .restart local v14    # "k":I
    aput-short v25, v5, v15

    .line 376
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "k":I
    .restart local v15    # "k":I
    aput-short v26, v5, v14

    .line 366
    add-int/lit8 v13, v13, 0x1

    goto :goto_8

    .line 365
    .end local v23    # "v0":S
    .end local v24    # "v1":S
    .end local v25    # "v2":S
    .end local v26    # "v3":S
    :cond_8
    add-int/lit8 v11, v11, 0x1

    move v14, v15

    .end local v15    # "k":I
    .restart local v14    # "k":I
    goto :goto_7

    .line 379
    .end local v13    # "j":I
    :cond_9
    new-instance v2, Lcom/smartisanos/smengine/Mesh;

    .end local v2    # "mesh":Lcom/smartisanos/smengine/Mesh;
    invoke-direct {v2}, Lcom/smartisanos/smengine/Mesh;-><init>()V

    .line 380
    .restart local v2    # "mesh":Lcom/smartisanos/smengine/Mesh;
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/smartisanos/smengine/Mesh;->create([F[F[S[FZ)V

    .line 381
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->isDrawWithBatch()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 382
    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/smartisanos/smengine/Mesh;->setMatIndexArray([F)V

    .line 384
    :cond_a
    sget-boolean v6, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v6, :cond_b

    .line 385
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->createShadowTexArray(Lcom/smartisanos/smengine/Mesh;)V

    .line 387
    :cond_b
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/smengine/World;->getMeshManager()Lcom/smartisanos/smengine/MeshManager;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "MESH_BATCH_9_CELLS"

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, v28

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v2}, Lcom/smartisanos/smengine/MeshManager;->addMesh(Ljava/lang/String;Lcom/smartisanos/smengine/Mesh;)Lcom/smartisanos/smengine/Mesh;

    .line 389
    .end local v3    # "points":[F
    .end local v4    # "texPoints":[F
    .end local v5    # "faces":[S
    .end local v8    # "cellHeight":F
    .end local v9    # "cellWidth":F
    .end local v10    # "colNum":I
    .end local v11    # "i":I
    .end local v14    # "k":I
    .end local v16    # "matIndexArray":[F
    .end local v19    # "pointNum":I
    .end local v20    # "rowNum":I
    :cond_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->setMesh(Lcom/smartisanos/smengine/Mesh;)V

    goto/16 :goto_0
.end method

.method private createRenderTargetTexture()V
    .locals 14

    .prologue
    .line 130
    iget-object v1, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mRenderTargetTextureName:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 131
    invoke-static {}, Lcom/smartisanos/smengine/World;->uid()J

    move-result-wide v12

    .line 132
    .local v12, "uid":J
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v11, "_PageRenderTargetTexture"

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mRenderTargetTextureName:Ljava/lang/String;

    .line 134
    .end local v12    # "uid":J
    :cond_0
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/World;->getTextureManager()Lcom/smartisanos/smengine/TextureManager;

    move-result-object v10

    .line 135
    .local v10, "tm":Lcom/smartisanos/smengine/TextureManager;
    iget-object v1, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mRenderTargetTextureName:Ljava/lang/String;

    invoke-virtual {v10, v1}, Lcom/smartisanos/smengine/TextureManager;->getTexture(Ljava/lang/String;)Lcom/smartisanos/smengine/Texture;

    move-result-object v8

    .line 136
    .local v8, "t":Lcom/smartisanos/smengine/Texture;
    if-eqz v8, :cond_1

    .line 151
    :goto_0
    return-void

    .line 139
    :cond_1
    iget-object v1, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v5, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_col_num:I

    .line 140
    .local v5, "colNum":I
    iget-object v1, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v4, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_row_num:I

    .line 141
    .local v4, "rowNum":I
    iget-object v1, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v7, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    .line 142
    .local v7, "cellTexWidth":F
    iget-object v1, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v6, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    .line 143
    .local v6, "cellTexHeight":F
    float-to-int v2, v7

    .line 144
    .local v2, "width":I
    float-to-int v3, v6

    .line 145
    .local v3, "height":I
    new-instance v0, Lcom/smartisanos/smengine/PageRenderTarget;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mRenderTargetTextureName:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/smartisanos/smengine/PageRenderTarget;-><init>(Ljava/lang/String;IIII)V

    .line 146
    .local v0, "rt":Lcom/smartisanos/smengine/PageRenderTarget;
    new-instance v9, Lcom/smartisanos/smengine/Texture;

    invoke-direct {v9, v0}, Lcom/smartisanos/smengine/Texture;-><init>(Lcom/smartisanos/smengine/RenderTarget;)V

    .line 147
    .local v9, "tex":Lcom/smartisanos/smengine/Texture;
    iget-object v1, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mRenderTargetTextureName:Ljava/lang/String;

    invoke-virtual {v10, v1, v9}, Lcom/smartisanos/smengine/TextureManager;->setTexture(Ljava/lang/String;Lcom/smartisanos/smengine/Texture;)V

    .line 148
    iput-object v0, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mRenderTarget:Lcom/smartisanos/smengine/RenderTarget;

    .line 150
    iget-object v1, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mRenderTarget:Lcom/smartisanos/smengine/RenderTarget;

    const/4 v11, 0x1

    invoke-virtual {v1, v11}, Lcom/smartisanos/smengine/RenderTarget;->setUseMipmap(Z)V

    goto :goto_0
.end method

.method private createShadowTexArray(Lcom/smartisanos/smengine/Mesh;)V
    .locals 10
    .param p1, "mesh"    # Lcom/smartisanos/smengine/Mesh;

    .prologue
    .line 393
    if-nez p1, :cond_0

    .line 418
    :goto_0
    return-void

    .line 396
    :cond_0
    iget-object v9, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v0, v9, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_col_num:I

    .line 397
    .local v0, "colNum":I
    iget-object v9, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v6, v9, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_row_num:I

    .line 398
    .local v6, "rowNum":I
    mul-int v9, v0, v6

    mul-int/lit8 v5, v9, 0x4

    .line 399
    .local v5, "pointNum":I
    mul-int/lit8 v9, v5, 0x2

    new-array v7, v9, [F

    .line 400
    .local v7, "texPoints":[F
    const/4 v3, 0x0

    .line 401
    .local v3, "k":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v6, :cond_2

    .line 402
    const/4 v2, 0x0

    .local v2, "j":I
    move v4, v3

    .end local v3    # "k":I
    .local v4, "k":I
    :goto_2
    if-ge v2, v0, :cond_1

    .line 403
    const/4 v8, 0x0

    .line 404
    .local v8, "uv":F
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "k":I
    .restart local v3    # "k":I
    aput v8, v7, v4

    .line 405
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "k":I
    .restart local v4    # "k":I
    aput v8, v7, v3

    .line 407
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "k":I
    .restart local v3    # "k":I
    aput v8, v7, v4

    .line 408
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "k":I
    .restart local v4    # "k":I
    aput v8, v7, v3

    .line 410
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "k":I
    .restart local v3    # "k":I
    aput v8, v7, v4

    .line 411
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "k":I
    .restart local v4    # "k":I
    aput v8, v7, v3

    .line 413
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "k":I
    .restart local v3    # "k":I
    aput v8, v7, v4

    .line 414
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "k":I
    .restart local v4    # "k":I
    aput v8, v7, v3

    .line 402
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 401
    .end local v8    # "uv":F
    :cond_1
    add-int/lit8 v1, v1, 0x1

    move v3, v4

    .end local v4    # "k":I
    .restart local v3    # "k":I
    goto :goto_1

    .line 417
    .end local v2    # "j":I
    :cond_2
    const/4 v9, 0x3

    invoke-virtual {p1, v9, v7}, Lcom/smartisanos/smengine/Mesh;->setTexVertexArray(I[F)V

    goto :goto_0
.end method

.method private init()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 899
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v3, 0x9

    if-ge v0, v3, :cond_0

    .line 900
    iget-object v3, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mMatArray9:[Lcom/smartisanos/smengine/math/Matrix4f;

    new-instance v4, Lcom/smartisanos/smengine/math/Matrix4f;

    invoke-direct {v4}, Lcom/smartisanos/smengine/math/Matrix4f;-><init>()V

    aput-object v4, v3, v0

    .line 901
    iget-object v3, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mModularColorArray9:[Lcom/smartisanos/smengine/math/Vector4f;

    new-instance v4, Lcom/smartisanos/smengine/math/Vector4f;

    invoke-direct {v4}, Lcom/smartisanos/smengine/math/Vector4f;-><init>()V

    aput-object v4, v3, v0

    .line 899
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 903
    :cond_0
    const/4 v0, 0x0

    :goto_1
    const/16 v3, 0x10

    if-ge v0, v3, :cond_1

    .line 904
    iget-object v3, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mMatArray16:[Lcom/smartisanos/smengine/math/Matrix4f;

    new-instance v4, Lcom/smartisanos/smengine/math/Matrix4f;

    invoke-direct {v4}, Lcom/smartisanos/smengine/math/Matrix4f;-><init>()V

    aput-object v4, v3, v0

    .line 905
    iget-object v3, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mModularColorArray16:[Lcom/smartisanos/smengine/math/Vector4f;

    new-instance v4, Lcom/smartisanos/smengine/math/Vector4f;

    invoke-direct {v4}, Lcom/smartisanos/smengine/math/Vector4f;-><init>()V

    aput-object v4, v3, v0

    .line 903
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 908
    :cond_1
    new-instance v3, Lcom/smartisanos/launcher/view/BatchShadow;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_batchShadow"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/smartisanos/launcher/view/BatchShadow;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mBatchShadowRect:Lcom/smartisanos/launcher/view/BatchShadow;

    .line 909
    iget-object v3, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mBatchShadowRect:Lcom/smartisanos/launcher/view/BatchShadow;

    invoke-virtual {p0, v3}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 910
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->getScale()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/smengine/math/Vector3f;->clone()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v2

    .line 911
    .local v2, "pageScale":Lcom/smartisanos/smengine/math/Vector3f;
    iget-object v3, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mBatchShadowRect:Lcom/smartisanos/launcher/view/BatchShadow;

    iget v4, v2, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v5, v2, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v6, v2, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-virtual {v3, v4, v5, v6}, Lcom/smartisanos/launcher/view/BatchShadow;->setScale(FFF)V

    .line 912
    invoke-static {}, Lcom/smartisanos/launcher/view/LayerManager;->getInstance()Lcom/smartisanos/launcher/view/LayerManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->getLayStatus()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/view/LayerManager;->getPageLayer(I)Lcom/smartisanos/launcher/view/LayerManager$PageLayer;

    move-result-object v1

    .line 913
    .local v1, "pageLayer":Lcom/smartisanos/launcher/view/LayerManager$PageLayer;
    iget-object v3, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mBatchShadowRect:Lcom/smartisanos/launcher/view/BatchShadow;

    iget v4, v1, Lcom/smartisanos/launcher/view/LayerManager$PageLayer;->PAGE_BATCH_RENDER_OUTER_SHADOW:I

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/view/BatchShadow;->setLayer(I)V

    .line 914
    sget v3, Lcom/smartisanos/launcher/data/Constants;->SCROLL_ANIMATION_TYPE:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_2

    sget v3, Lcom/smartisanos/launcher/data/Constants;->SCROLL_ANIMATION_TYPE:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    .line 915
    :cond_2
    iget-object v3, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mBatchShadowRect:Lcom/smartisanos/launcher/view/BatchShadow;

    invoke-virtual {v3, v7}, Lcom/smartisanos/launcher/view/BatchShadow;->setVisibility(Z)V

    .line 918
    :cond_3
    new-instance v3, Lcom/smartisanos/launcher/view/BatchBackground;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_batchBackground"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/smartisanos/launcher/view/BatchBackground;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mBatchBackground:Lcom/smartisanos/launcher/view/BatchBackground;

    .line 919
    iget-object v3, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mBatchBackground:Lcom/smartisanos/launcher/view/BatchBackground;

    iget v4, v1, Lcom/smartisanos/launcher/view/LayerManager$PageLayer;->PAGE_IN_GAUSSIAN_BATCH_BACK_GROUND_LAYER:I

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/view/BatchBackground;->setLayer(I)V

    .line 920
    sget-boolean v3, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v3, :cond_4

    sget v3, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    sget v4, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    if-ne v3, v4, :cond_4

    const-string v3, "smartisan_theme_aero"

    .line 922
    invoke-static {}, Lcom/smartisanos/launcher/LauncherApplication;->getInstance()Lcom/smartisanos/launcher/LauncherApplication;

    move-result-object v4

    .line 921
    invoke-static {v4}, Lcom/smartisanos/launcher/theme/ThemeManager;->getCurrentTheme(Landroid/content/Context;)Lcom/smartisanos/launcher/theme/Theme;

    move-result-object v4

    iget-object v4, v4, Lcom/smartisanos/launcher/theme/Theme;->mId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 923
    iget-object v3, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mBatchBackground:Lcom/smartisanos/launcher/view/BatchBackground;

    invoke-virtual {p0, v3}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 926
    :cond_4
    invoke-virtual {p0, v7}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->setLayerStatus(I)V

    .line 927
    return-void
.end method


.method public addMeshToRenderUnit(Lcom/smartisanos/smengine/RenderManager$RenderUnit;)V
    .locals 17
    .param p1, "ru"    # Lcom/smartisanos/smengine/RenderManager$RenderUnit;

    .prologue
    .line 596
    invoke-super/range {p0 .. p1}, Lcom/smartisanos/launcher/view/Page;->addMeshToRenderUnit(Lcom/smartisanos/smengine/RenderManager$RenderUnit;)V

    .line 597
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->getMesh()Lcom/smartisanos/smengine/Mesh;

    move-result-object v13

    if-nez v13, :cond_0

    .line 671
    :goto_0
    return-void

    .line 601
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v1, v13, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_col_num:I

    .line 602
    .local v1, "colNum":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v11, v13, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_row_num:I

    .line 603
    .local v11, "rowNum":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v1}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->getCurrentMatArray(II)[Lcom/smartisanos/smengine/math/Matrix4f;

    move-result-object v7

    .line 604
    .local v7, "matArray":[Lcom/smartisanos/smengine/math/Matrix4f;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v1}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->getCurrentModularColorArray(II)[Lcom/smartisanos/smengine/math/Vector4f;

    move-result-object v2

    .line 606
    .local v2, "colorArray":[Lcom/smartisanos/smengine/math/Vector4f;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v13, v7

    if-ge v3, v13, :cond_1

    .line 607
    aget-object v6, v7, v3

    .line 608
    .local v6, "m":Lcom/smartisanos/smengine/math/Matrix4f;
    const/4 v13, 0x0

    aput-object v13, v7, v3

    .line 606
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 611
    .end local v6    # "m":Lcom/smartisanos/smengine/math/Matrix4f;
    :cond_1
    const/4 v5, 0x0

    .line 612
    .local v5, "k":I
    const/4 v3, 0x0

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->getChildCount()I

    move-result v13

    if-ge v3, v13, :cond_8

    .line 613
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v12

    .line 614
    .local v12, "sn":Lcom/smartisanos/smengine/SceneNode;
    instance-of v13, v12, Lcom/smartisanos/launcher/view/Cell;

    if-eqz v13, :cond_5

    move-object v10, v12

    .line 615
    check-cast v10, Lcom/smartisanos/launcher/view/Cell;

    .line 616
    .local v10, "pc":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v12}, Lcom/smartisanos/smengine/SceneNode;->getWorldMatrix()Lcom/smartisanos/smengine/math/Matrix4f;

    move-result-object v6

    .line 617
    .restart local v6    # "m":Lcom/smartisanos/smengine/math/Matrix4f;
    if-nez v6, :cond_2

    .line 618
    sget-boolean v13, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v13, :cond_2

    sget-object v13, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->log:Lcom/smartisanos/launcher/LOG;

    const-string v14, "DEBUG"

    const-string v15, "######### sn.getWorldMatrix() == null"

    invoke-virtual {v13, v14, v15}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    :cond_2
    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/Cell;->getOriginRowIndex()I

    move-result v9

    .line 625
    .local v9, "originRowIndex":I
    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/Cell;->getOriginColIndex()I

    move-result v8

    .line 626
    .local v8, "originColIndex":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v8}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->getIndex(II)I

    move-result v4

    .line 629
    .local v4, "index":I
    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/Cell;->isVisibilityForBatchDrawTarget()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 630
    aput-object v6, v7, v4

    .line 640
    :cond_3
    :goto_3
    aget-object v13, v2, v4

    if-nez v13, :cond_4

    .line 641
    new-instance v13, Lcom/smartisanos/smengine/math/Vector4f;

    invoke-direct {v13}, Lcom/smartisanos/smengine/math/Vector4f;-><init>()V

    aput-object v13, v2, v4

    .line 644
    :cond_4
    invoke-static {}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->getInstance()Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

    move-result-object v13

    invoke-virtual {v13}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->isChangeThemeAnimating()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 645
    aget-object v13, v2, v4

    invoke-virtual {v10, v13}, Lcom/smartisanos/launcher/view/Cell;->getColor(Lcom/smartisanos/smengine/math/Vector4f;)V

    .line 652
    :goto_4
    add-int/lit8 v5, v5, 0x1

    .line 612
    .end local v4    # "index":I
    .end local v6    # "m":Lcom/smartisanos/smengine/math/Matrix4f;
    .end local v8    # "originColIndex":I
    .end local v9    # "originRowIndex":I
    .end local v10    # "pc":Lcom/smartisanos/launcher/view/Cell;
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 632
    .restart local v4    # "index":I
    .restart local v6    # "m":Lcom/smartisanos/smengine/math/Matrix4f;
    .restart local v8    # "originColIndex":I
    .restart local v9    # "originRowIndex":I
    .restart local v10    # "pc":Lcom/smartisanos/launcher/view/Cell;
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mMoveToOutOfScreenMatrix:Lcom/smartisanos/smengine/math/Matrix4f;

    invoke-virtual {v13}, Lcom/smartisanos/smengine/math/Matrix4f;->loadIdentity()V

    .line 633
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mMoveToOutOfScreenMatrix:Lcom/smartisanos/smengine/math/Matrix4f;

    const/4 v14, 0x0

    const v15, 0x461c3c00    # 9999.0f

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Lcom/smartisanos/smengine/math/Matrix4f;->setTranslation(FFF)V

    .line 634
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mMoveToOutOfScreenMatrix:Lcom/smartisanos/smengine/math/Matrix4f;

    aput-object v13, v7, v4

    .line 635
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mMoveToOutOfScreenMatrix:Lcom/smartisanos/smengine/math/Matrix4f;

    if-nez v13, :cond_3

    .line 636
    sget-boolean v13, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v13, :cond_3

    const-string v13, "DEBUG"

    const-string v14, "##### mMoveToOutOfScreenMatrix == null getMatColorArray(Matrix4f[] matarray,Vector4f[] colorarray) "

    invoke-static {v13, v14}, Lcom/smartisanos/launcher/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 648
    :cond_7
    aget-object v13, v2, v4

    invoke-virtual {v10, v13}, Lcom/smartisanos/launcher/view/Cell;->getColor(Lcom/smartisanos/smengine/math/Vector4f;)V

    goto :goto_4

    .line 656
    .end local v4    # "index":I
    .end local v6    # "m":Lcom/smartisanos/smengine/math/Matrix4f;
    .end local v8    # "originColIndex":I
    .end local v9    # "originRowIndex":I
    .end local v10    # "pc":Lcom/smartisanos/launcher/view/Cell;
    .end local v12    # "sn":Lcom/smartisanos/smengine/SceneNode;
    :cond_8
    const/4 v3, 0x0

    :goto_5
    array-length v13, v7

    if-ge v3, v13, :cond_a

    .line 657
    aget-object v6, v7, v3

    .line 658
    .restart local v6    # "m":Lcom/smartisanos/smengine/math/Matrix4f;
    if-nez v6, :cond_9

    .line 659
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mMoveToOutOfScreenMatrix:Lcom/smartisanos/smengine/math/Matrix4f;

    invoke-virtual {v13}, Lcom/smartisanos/smengine/math/Matrix4f;->loadIdentity()V

    .line 660
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mMoveToOutOfScreenMatrix:Lcom/smartisanos/smengine/math/Matrix4f;

    const/4 v14, 0x0

    const v15, 0x461c3c00    # 9999.0f

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Lcom/smartisanos/smengine/math/Matrix4f;->setTranslation(FFF)V

    .line 661
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mMoveToOutOfScreenMatrix:Lcom/smartisanos/smengine/math/Matrix4f;

    aput-object v13, v7, v3

    .line 656
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 665
    .end local v6    # "m":Lcom/smartisanos/smengine/math/Matrix4f;
    :cond_a
    mul-int v13, v11, v1

    if-le v5, v13, :cond_b

    .line 666
    new-instance v13, Ljava/lang/RuntimeException;

    const-string v14, "mat array num error"

    invoke-direct {v13, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 669
    :cond_b
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->setMatArray([Lcom/smartisanos/smengine/math/Matrix4f;)V

    .line 670
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->setColorArray([Lcom/smartisanos/smengine/math/Vector4f;)V

    goto/16 :goto_0
.end method

.method public addNewFreeIndex(Lcom/smartisanos/smengine/math/Vector2f;)V
    .locals 1
    .param p1, "newFree"    # Lcom/smartisanos/smengine/math/Vector2f;

    .prologue
    .line 201
    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mCurrentFreeTextureIndexList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    return-void
.end method

.method public cleanAllFreeIndexWhenUP()V
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mCurrentFreeTextureIndexList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 210
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "$$$$$$$$$$$$ mCurrentFreeTextureIndexList.size() > 0 when up!!!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mCurrentFreeTextureIndexList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 214
    return-void
.end method

.method public clear(Z)V
    .locals 2
    .param p1, "cleanHardwareResource"    # Z

    .prologue
    .line 217
    invoke-super {p0, p1}, Lcom/smartisanos/launcher/view/Page;->clear(Z)V

    .line 219
    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mRenderTarget:Lcom/smartisanos/smengine/RenderTarget;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mRenderTarget:Lcom/smartisanos/smengine/RenderTarget;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RenderTarget;->delete(Z)V

    .line 223
    :cond_0
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/World;->getTextureManager()Lcom/smartisanos/smengine/TextureManager;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mRenderTargetTextureName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/TextureManager;->deleteTexture(Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mBatchBackground:Lcom/smartisanos/launcher/view/BatchBackground;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mBatchBackground:Lcom/smartisanos/launcher/view/BatchBackground;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/BatchBackground;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    if-nez v0, :cond_1

    .line 225
    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mBatchBackground:Lcom/smartisanos/launcher/view/BatchBackground;

    invoke-virtual {v0, p1}, Lcom/smartisanos/launcher/view/BatchBackground;->clear(Z)V

    .line 226
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mBatchBackground:Lcom/smartisanos/launcher/view/BatchBackground;

    .line 228
    :cond_1
    return-void
.end method

.method protected createCell(IILcom/smartisanos/launcher/data/ItemInfo;Lcom/smartisanos/launcher/data/LayoutProperty;)Lcom/smartisanos/launcher/view/Cell;
    .locals 9
    .param p1, "i"    # I
    .param p2, "j"    # I
    .param p3, "cc"    # Lcom/smartisanos/launcher/data/ItemInfo;
    .param p4, "prop"    # Lcom/smartisanos/launcher/data/LayoutProperty;

    .prologue
    .line 183
    if-nez p3, :cond_0

    .line 184
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cell_empty"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 189
    .local v1, "cellName":Ljava/lang/String;
    :goto_0
    new-instance v0, Lcom/smartisanos/launcher/view/Cell;

    const/4 v2, 0x0

    iget v5, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mZ:F

    move v3, p1

    move v4, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/smartisanos/launcher/view/Cell;-><init>(Ljava/lang/String;ZIIFLcom/smartisanos/launcher/data/ItemInfo;Lcom/smartisanos/launcher/data/LayoutProperty;)V

    .line 190
    .local v0, "pc":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 191
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->isDrawWithBatch()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/Cell;->setDrawBatch(Z)V

    .line 192
    iget-object v2, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mCellCamera:Lcom/smartisanos/smengine/Camera;

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/Cell;->setCamera(Lcom/smartisanos/smengine/Camera;)V

    .line 193
    iget-object v2, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mRenderTarget:Lcom/smartisanos/smengine/RenderTarget;

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/Cell;->setRenderTarget(Lcom/smartisanos/smengine/RenderTarget;)V

    .line 194
    iget-object v2, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mRenderTargetTextureName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/Cell;->setRenderTargetName(Ljava/lang/String;)V

    .line 195
    invoke-static {p1, p2}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->getBackgroundImageName(II)Ljava/lang/String;

    move-result-object v8

    .line 196
    .local v8, "bgName":Ljava/lang/String;
    invoke-virtual {v0, v8}, Lcom/smartisanos/launcher/view/Cell;->setBackgroundImageName(Ljava/lang/String;)V

    .line 197
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->create()V

    .line 198
    return-object v0

    .line 187
    .end local v0    # "pc":Lcom/smartisanos/launcher/view/Cell;
    .end local v1    # "cellName":Ljava/lang/String;
    .end local v8    # "bgName":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cell "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p3, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "cellName":Ljava/lang/String;
    goto :goto_0
.end method

.method public createEmptyCell(IIZLcom/smartisanos/smengine/Animation$AnimationListener;)Lcom/smartisanos/launcher/view/Cell;
    .locals 4
    .param p1, "rowindex"    # I
    .param p2, "colindex"    # I
    .param p3, "needAnimation"    # Z
    .param p4, "al"    # Lcom/smartisanos/smengine/Animation$AnimationListener;

    .prologue
    .line 256
    invoke-super {p0, p1, p2, p3, p4}, Lcom/smartisanos/launcher/view/Page;->createEmptyCell(IIZLcom/smartisanos/smengine/Animation$AnimationListener;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v1

    .line 258
    .local v1, "pc":Lcom/smartisanos/launcher/view/Cell;
    iget-object v2, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mCurrentFreeTextureIndexList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 260
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->useCurrentFreeIndex()Lcom/smartisanos/smengine/math/Vector2f;

    move-result-object v0

    .line 261
    .local v0, "free":Lcom/smartisanos/smengine/math/Vector2f;
    iget v2, v0, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/view/Cell;->setOriginRowIndex(I)V

    .line 262
    iget v2, v0, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/view/Cell;->setOriginColIndex(I)V

    .line 267
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Cell;->setNeedDisplay()V

    .line 269
    iget-object v2, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mRenderTarget:Lcom/smartisanos/smengine/RenderTarget;

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/view/Cell;->setRenderTarget(Lcom/smartisanos/smengine/RenderTarget;)V

    .line 270
    iget-object v2, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mRenderTargetTextureName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/view/Cell;->setRenderTargetName(Ljava/lang/String;)V

    .line 271
    return-object v1

    .line 264
    .end local v0    # "free":Lcom/smartisanos/smengine/math/Vector2f;
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "$$$$$$$$$$$$ current page has no enough texture index!!!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public createEmptyCellReturnTimeLine(IIZFLcom/smartisanos/smengine/Animation$AnimationListener;Lcom/smartisanos/smengine/AnimationTimeLine;)Lcom/smartisanos/launcher/view/Cell;
    .locals 4
    .param p1, "rowindex"    # I
    .param p2, "colindex"    # I
    .param p3, "needAnimation"    # Z
    .param p4, "delayDuration"    # F
    .param p5, "whenCreateCellAnimation"    # Lcom/smartisanos/smengine/Animation$AnimationListener;
    .param p6, "timeLine"    # Lcom/smartisanos/smengine/AnimationTimeLine;

    .prologue
    const/4 v2, 0x0

    .line 233
    invoke-super/range {p0 .. p6}, Lcom/smartisanos/launcher/view/Page;->createEmptyCellReturnTimeLine(IIZFLcom/smartisanos/smengine/Animation$AnimationListener;Lcom/smartisanos/smengine/AnimationTimeLine;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v1

    .line 234
    .local v1, "pc":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/view/Cell;->setVisibility(Z)V

    .line 235
    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/view/Cell;->setVisibilityForBatchDrawTarget(Z)V

    .line 236
    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/view/Cell;->setVisibilityForBatchDrawShadow(Z)V

    .line 238
    iget-object v2, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mCurrentFreeTextureIndexList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 240
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->useCurrentFreeIndex()Lcom/smartisanos/smengine/math/Vector2f;

    move-result-object v0

    .line 241
    .local v0, "free":Lcom/smartisanos/smengine/math/Vector2f;
    iget v2, v0, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/view/Cell;->setOriginRowIndex(I)V

    .line 242
    iget v2, v0, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/view/Cell;->setOriginColIndex(I)V

    .line 247
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Cell;->setNeedDisplay()V

    .line 249
    iget-object v2, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mRenderTarget:Lcom/smartisanos/smengine/RenderTarget;

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/view/Cell;->setRenderTarget(Lcom/smartisanos/smengine/RenderTarget;)V

    .line 250
    iget-object v2, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mRenderTargetTextureName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/view/Cell;->setRenderTargetName(Ljava/lang/String;)V

    .line 251
    return-object v1

    .line 244
    .end local v0    # "free":Lcom/smartisanos/smengine/math/Vector2f;
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "$$$$$$$$$$$$ current page has no enough texture index!!!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected createPage()V
    .locals 0

    .prologue
    .line 451
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->createRenderTargetTexture()V

    .line 452
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->createPageBoundingRect()V

    .line 453
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->createBatch()V

    .line 454
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->updateCellContent()V

    .line 457
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->updateGeometricState()V

    .line 458
    return-void
.end method

.method protected createPageMaterial()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 82
    invoke-static {}, Lcom/smartisanos/launcher/data/Constants;->getPropertyByStyle()Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v3

    .line 83
    .local v3, "prop":Lcom/smartisanos/launcher/data/LayoutProperty;
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->isDrawWithBatch()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 84
    const/4 v1, 0x0

    .line 85
    .local v1, "mode":Ljava/lang/String;
    iget v5, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_row_num:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_2

    .line 86
    const-string v1, "TextureBatch9Material"

    .line 87
    sget-boolean v5, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v5, :cond_0

    .line 88
    const-string v1, "TwoTextureBatch9Material"

    .line 90
    :cond_0
    const/16 v5, 0x9

    new-array v5, v5, [Z

    iput-object v5, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mNeedInvisibleList:[Z

    .line 91
    iget-object v5, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mCellTextureCoordArray:[F

    array-length v5, v5

    mul-int/lit8 v5, v5, 0x9

    new-array v5, v5, [F

    iput-object v5, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mMeshTexTureCoordArray:[F

    .line 100
    :cond_1
    :goto_0
    invoke-static {v1}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v0

    .line 101
    .local v0, "material":Lcom/smartisanos/smengine/mymaterial/Material;
    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 102
    invoke-virtual {v0, v7}, Lcom/smartisanos/smengine/mymaterial/Material;->showShadow(Z)V

    .line 103
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v4

    .line 104
    .local v4, "rs":Lcom/smartisanos/smengine/RenderState;
    invoke-virtual {v4, v8}, Lcom/smartisanos/smengine/RenderState;->setIsEnableBlend(Z)V

    .line 105
    invoke-virtual {v4, v7}, Lcom/smartisanos/smengine/RenderState;->setIsPolygonOffset(Z)V

    .line 106
    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v6, -0x40000000    # -2.0f

    invoke-virtual {v4, v5, v6}, Lcom/smartisanos/smengine/RenderState;->setPolygonOffsetFactorUnits(FF)V

    .line 107
    invoke-virtual {v4, v7}, Lcom/smartisanos/smengine/RenderState;->setIsEnableDepthTest(Z)V

    .line 109
    invoke-virtual {v0, v8, v7}, Lcom/smartisanos/smengine/mymaterial/Material;->setIsUseMipmap(IZ)V

    .line 110
    new-instance v5, Lcom/smartisanos/smengine/Texture$State;

    const/4 v6, 0x5

    invoke-direct {v5, v6, v7, v7, v7}, Lcom/smartisanos/smengine/Texture$State;-><init>(IIII)V

    invoke-virtual {v0, v8, v5}, Lcom/smartisanos/smengine/mymaterial/Material;->setTextureState(ILcom/smartisanos/smengine/Texture$State;)V

    .line 113
    sget-boolean v5, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-nez v5, :cond_4

    .line 114
    invoke-virtual {v4, v7}, Lcom/smartisanos/smengine/RenderState;->setIsUseVBO(Z)V

    .line 119
    :goto_1
    invoke-static {}, Lcom/smartisanos/launcher/view/LayerManager;->getInstance()Lcom/smartisanos/launcher/view/LayerManager;

    move-result-object v5

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->getLayStatus()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/smartisanos/launcher/view/LayerManager;->getPageLayer(I)Lcom/smartisanos/launcher/view/LayerManager$PageLayer;

    move-result-object v2

    .line 120
    .local v2, "pageLayer":Lcom/smartisanos/launcher/view/LayerManager$PageLayer;
    iget v5, v2, Lcom/smartisanos/launcher/view/LayerManager$PageLayer;->PAGE_BATCH_RENDER_LAYER:I

    invoke-virtual {p0, v5}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->setLayer(I)V

    .line 121
    iget-object v5, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mMoveToOutOfScreenMatrix:Lcom/smartisanos/smengine/math/Matrix4f;

    invoke-virtual {v5}, Lcom/smartisanos/smengine/math/Matrix4f;->loadIdentity()V

    .line 128
    .end local v1    # "mode":Ljava/lang/String;
    .end local v2    # "pageLayer":Lcom/smartisanos/launcher/view/LayerManager$PageLayer;
    .end local v4    # "rs":Lcom/smartisanos/smengine/RenderState;
    :goto_2
    return-void

    .line 92
    .end local v0    # "material":Lcom/smartisanos/smengine/mymaterial/Material;
    .restart local v1    # "mode":Ljava/lang/String;
    :cond_2
    iget v5, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_row_num:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_1

    .line 93
    const-string v1, "TextureBatch16Material"

    .line 94
    sget-boolean v5, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v5, :cond_3

    .line 95
    const-string v1, "TwoTextureBatch16Material"

    .line 97
    :cond_3
    const/16 v5, 0x10

    new-array v5, v5, [Z

    iput-object v5, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mNeedInvisibleList:[Z

    .line 98
    iget-object v5, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mCellTextureCoordArray:[F

    array-length v5, v5

    mul-int/lit8 v5, v5, 0x10

    new-array v5, v5, [F

    iput-object v5, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mMeshTexTureCoordArray:[F

    goto :goto_0

    .line 116
    .restart local v0    # "material":Lcom/smartisanos/smengine/mymaterial/Material;
    .restart local v4    # "rs":Lcom/smartisanos/smengine/RenderState;
    :cond_4
    invoke-virtual {v4, v8}, Lcom/smartisanos/smengine/RenderState;->setIsUseVBO(Z)V

    goto :goto_1

    .line 123
    .end local v0    # "material":Lcom/smartisanos/smengine/mymaterial/Material;
    .end local v1    # "mode":Ljava/lang/String;
    .end local v4    # "rs":Lcom/smartisanos/smengine/RenderState;
    :cond_5
    const-string v5, "SimpleTextureMaterial"

    invoke-static {v5}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v0

    .line 124
    .restart local v0    # "material":Lcom/smartisanos/smengine/mymaterial/Material;
    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 125
    new-instance v5, Lcom/smartisanos/smengine/Texture$State;

    invoke-direct {v5, v7, v7, v7, v7}, Lcom/smartisanos/smengine/Texture$State;-><init>(IIII)V

    invoke-virtual {v0, v8, v5}, Lcom/smartisanos/smengine/mymaterial/Material;->setTextureState(ILcom/smartisanos/smengine/Texture$State;)V

    goto :goto_2
.end method

.method public disableLightEffect()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 821
    sget-boolean v3, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v3, :cond_1

    .line 840
    :cond_0
    :goto_0
    return-void

    .line 824
    :cond_1
    iget-object v3, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mLightPos:Lcom/smartisanos/smengine/math/Vector3f;

    if-eqz v3, :cond_0

    .line 827
    invoke-static {}, Lcom/smartisanos/launcher/data/Constants;->getPropertyByStyle()Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v2

    .line 829
    .local v2, "prop":Lcom/smartisanos/launcher/data/LayoutProperty;
    const/4 v1, 0x0

    .line 830
    .local v1, "mode":Ljava/lang/String;
    iget v3, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_row_num:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    .line 831
    const-string v1, "TextureBatch9Material"

    .line 836
    :cond_2
    :goto_1
    invoke-static {v1}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v0

    .line 837
    .local v0, "material":Lcom/smartisanos/smengine/mymaterial/Material;
    const/4 v3, 0x0

    new-instance v4, Lcom/smartisanos/smengine/Texture$State;

    invoke-direct {v4, v5, v5, v5, v5}, Lcom/smartisanos/smengine/Texture$State;-><init>(IIII)V

    invoke-virtual {v0, v3, v4}, Lcom/smartisanos/smengine/mymaterial/Material;->setTextureState(ILcom/smartisanos/smengine/Texture$State;)V

    .line 838
    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 839
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mLightPos:Lcom/smartisanos/smengine/math/Vector3f;

    goto :goto_0

    .line 832
    .end local v0    # "material":Lcom/smartisanos/smengine/mymaterial/Material;
    :cond_3
    iget v3, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_row_num:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 833
    const-string v1, "TextureBatch16Material"

    goto :goto_1
.end method

.method public draw(Lcom/smartisanos/smengine/Camera;)V
    .locals 3
    .param p1, "camera"    # Lcom/smartisanos/smengine/Camera;

    .prologue
    .line 720
    invoke-super {p0, p1}, Lcom/smartisanos/launcher/view/Page;->cull(Lcom/smartisanos/smengine/Camera;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 756
    :cond_0
    :goto_0
    return-void

    .line 724
    :cond_1
    iget-boolean v2, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mIsPageContentInited:Z

    if-eqz v2, :cond_0

    .line 727
    iget-boolean v2, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mNeedDrawSpecialCube:Z

    if-eqz v2, :cond_3

    .line 728
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 729
    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    .line 730
    .local v1, "sn":Lcom/smartisanos/smengine/SceneNode;
    instance-of v2, v1, Lcom/smartisanos/launcher/view/BatchShadow;

    if-eqz v2, :cond_2

    .line 728
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 734
    :cond_2
    invoke-virtual {v1, p1}, Lcom/smartisanos/smengine/SceneNode;->draw(Lcom/smartisanos/smengine/Camera;)V

    goto :goto_2

    .line 739
    .end local v0    # "i":I
    .end local v1    # "sn":Lcom/smartisanos/smengine/SceneNode;
    :cond_3
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->isDrawWithBatch()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 740
    invoke-super {p0, p1}, Lcom/smartisanos/launcher/view/Page;->draw(Lcom/smartisanos/smengine/Camera;)V

    .line 741
    sget-boolean v2, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v2, :cond_0

    .line 742
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->updateGaussianUV()V

    goto :goto_0

    .line 745
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_6

    .line 746
    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    .line 747
    .restart local v1    # "sn":Lcom/smartisanos/smengine/SceneNode;
    invoke-static {v1}, Lcom/smartisanos/launcher/view/Cell;->sIsInstanceFromCell(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 748
    invoke-virtual {v1, p1}, Lcom/smartisanos/smengine/SceneNode;->draw(Lcom/smartisanos/smengine/Camera;)V

    .line 745
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 751
    .end local v1    # "sn":Lcom/smartisanos/smengine/SceneNode;
    :cond_6
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->getBatchShadow()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 753
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->getBatchShadow()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/smartisanos/smengine/SceneNode;->draw(Lcom/smartisanos/smengine/Camera;)V

    goto :goto_0
.end method

.method public enableLightEffect()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 791
    sget-boolean v3, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v3, :cond_0

    .line 817
    :goto_0
    return-void

    .line 795
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/data/Constants;->getPropertyByStyle()Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v2

    .line 796
    .local v2, "prop":Lcom/smartisanos/launcher/data/LayoutProperty;
    const/4 v0, 0x0

    .line 797
    .local v0, "light":Lcom/smartisanos/smengine/mymaterial/TextureBatchWithDirLightMaterial;
    const/4 v1, 0x0

    .line 798
    .local v1, "mode":Ljava/lang/String;
    iget v3, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_row_num:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 799
    const-string v1, "TextureBatch9WithDirLightMaterial"

    .line 806
    :goto_1
    invoke-static {v1}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v0

    .end local v0    # "light":Lcom/smartisanos/smengine/mymaterial/TextureBatchWithDirLightMaterial;
    check-cast v0, Lcom/smartisanos/smengine/mymaterial/TextureBatchWithDirLightMaterial;

    .line 807
    .restart local v0    # "light":Lcom/smartisanos/smengine/mymaterial/TextureBatchWithDirLightMaterial;
    iget-object v3, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mLightPos:Lcom/smartisanos/smengine/math/Vector3f;

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget-object v4, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mLightPos:Lcom/smartisanos/smengine/math/Vector3f;

    iget v4, v4, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget-object v5, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mLightPos:Lcom/smartisanos/smengine/math/Vector3f;

    iget v5, v5, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-virtual {v0, v3, v4, v5}, Lcom/smartisanos/smengine/mymaterial/TextureBatchWithDirLightMaterial;->setLightDirInWorldSpace(FFF)V

    .line 808
    invoke-virtual {v0, v6}, Lcom/smartisanos/smengine/mymaterial/TextureBatchWithDirLightMaterial;->showShadow(Z)V

    .line 809
    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 810
    iget-object v3, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mRenderTarget:Lcom/smartisanos/smengine/RenderTarget;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/RenderTarget;->isUseMipmap()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 811
    new-instance v3, Lcom/smartisanos/smengine/Texture$State;

    const/4 v4, 0x5

    invoke-direct {v3, v4, v6, v6, v6}, Lcom/smartisanos/smengine/Texture$State;-><init>(IIII)V

    invoke-virtual {v0, v7, v3}, Lcom/smartisanos/smengine/mymaterial/TextureBatchWithDirLightMaterial;->setTextureState(ILcom/smartisanos/smengine/Texture$State;)V

    .line 816
    :goto_2
    iget-object v3, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mBatchShadowRect:Lcom/smartisanos/launcher/view/BatchShadow;

    invoke-virtual {v3, v7}, Lcom/smartisanos/launcher/view/BatchShadow;->setVisibility(Z)V

    goto :goto_0

    .line 800
    :cond_1
    iget v3, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_row_num:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 801
    const-string v1, "TextureBatch16WithDirLightMaterial"

    goto :goto_1

    .line 803
    :cond_2
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Unknow multi page mode!!!!!!"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 814
    :cond_3
    new-instance v3, Lcom/smartisanos/smengine/Texture$State;

    invoke-direct {v3, v6, v6, v6, v6}, Lcom/smartisanos/smengine/Texture$State;-><init>(IIII)V

    invoke-virtual {v0, v7, v3}, Lcom/smartisanos/smengine/mymaterial/TextureBatchWithDirLightMaterial;->setTextureState(ILcom/smartisanos/smengine/Texture$State;)V

    goto :goto_2
.end method

.method public enableLightEffect(FFF)V
    .locals 1
    .param p1, "lightX"    # F
    .param p2, "lightY"    # F
    .param p3, "lightZ"    # F

    .prologue
    .line 778
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v0, :cond_1

    .line 787
    :cond_0
    :goto_0
    return-void

    .line 781
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mLightPos:Lcom/smartisanos/smengine/math/Vector3f;

    if-nez v0, :cond_2

    .line 782
    new-instance v0, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v0, p1, p2, p3}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mLightPos:Lcom/smartisanos/smengine/math/Vector3f;

    .line 784
    :cond_2
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mIsPageContentInited:Z

    if-eqz v0, :cond_0

    .line 785
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->enableLightEffect()V

    goto :goto_0
.end method

.method public getBatchBackground()Lcom/smartisanos/smengine/SceneNode;
    .locals 1

    .prologue
    .line 849
    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mBatchBackground:Lcom/smartisanos/launcher/view/BatchBackground;

    return-object v0
.end method

.method public getBatchShadow()Lcom/smartisanos/smengine/SceneNode;
    .locals 1

    .prologue
    .line 844
    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mBatchShadowRect:Lcom/smartisanos/launcher/view/BatchShadow;

    return-object v0
.end method

.method public getCurrentMatArray(II)[Lcom/smartisanos/smengine/math/Matrix4f;
    .locals 4
    .param p1, "rowNum"    # I
    .param p2, "colNum"    # I

    .prologue
    .line 493
    mul-int v0, p1, p2

    .line 494
    .local v0, "totalNum":I
    sparse-switch v0, :sswitch_data_0

    .line 500
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown row num and col num : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 496
    :sswitch_0
    iget-object v1, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mMatArray9:[Lcom/smartisanos/smengine/math/Matrix4f;

    .line 498
    :goto_0
    return-object v1

    :sswitch_1
    iget-object v1, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mMatArray16:[Lcom/smartisanos/smengine/math/Matrix4f;

    goto :goto_0

    .line 494
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0x10 -> :sswitch_1
    .end sparse-switch
.end method

.method public getCurrentModularColorArray(II)[Lcom/smartisanos/smengine/math/Vector4f;
    .locals 4
    .param p1, "rowNum"    # I
    .param p2, "colNum"    # I

    .prologue
    .line 483
    mul-int v0, p1, p2

    .line 484
    .local v0, "totalNum":I
    sparse-switch v0, :sswitch_data_0

    .line 490
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown row num and col num : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 486
    :sswitch_0
    iget-object v1, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mModularColorArray9:[Lcom/smartisanos/smengine/math/Vector4f;

    .line 488
    :goto_0
    return-object v1

    :sswitch_1
    iget-object v1, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mModularColorArray16:[Lcom/smartisanos/smengine/math/Vector4f;

    goto :goto_0

    .line 484
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0x10 -> :sswitch_1
    .end sparse-switch
.end method

.method public getPageRenderTargetForPageWithRT()Lcom/smartisanos/smengine/RenderTarget;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mRenderTarget:Lcom/smartisanos/smengine/RenderTarget;

    return-object v0
.end method

.method public initPageContent()V
    .locals 4

    .prologue
    .line 882
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mIsPageContentInited:Z

    if-nez v0, :cond_0

    .line 883
    sget-object v0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->log:Lcom/smartisanos/launcher/LOG;

    const-string v1, "DEBUG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initPageContent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->pageIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->setDrawWithBatch(Z)V

    .line 886
    invoke-super {p0}, Lcom/smartisanos/launcher/view/Page;->initPageContent()V

    .line 888
    :cond_0
    return-void
.end method

.method protected initSpecialsForPage()V
    .locals 2

    .prologue
    .line 891
    sget v0, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    sget v1, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    if-ne v0, v1, :cond_0

    .line 892
    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mLightPos:Lcom/smartisanos/smengine/math/Vector3f;

    if-eqz v0, :cond_0

    .line 893
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->enableLightEffect()V

    .line 896
    :cond_0
    return-void
.end method

.method public releasePageContent()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 930
    iget-boolean v1, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mIsPageContentInited:Z

    if-eqz v1, :cond_2

    .line 931
    sget-object v1, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->log:Lcom/smartisanos/launcher/LOG;

    const-string v2, "DEBUG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "releasePageContent:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->pageIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 953
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->getMesh()Lcom/smartisanos/smengine/Mesh;

    move-result-object v0

    .line 954
    .local v0, "mesh":Lcom/smartisanos/smengine/Mesh;
    if-eqz v0, :cond_0

    .line 955
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/World;->getMeshManager()Lcom/smartisanos/smengine/MeshManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/MeshManager;->removeMesh(Lcom/smartisanos/smengine/Mesh;)V

    .line 956
    invoke-virtual {v0, v6}, Lcom/smartisanos/smengine/Mesh;->clear(Z)V

    .line 957
    invoke-virtual {p0, v5}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->setMesh(Lcom/smartisanos/smengine/Mesh;)V

    .line 960
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mRenderTarget:Lcom/smartisanos/smengine/RenderTarget;

    if-eqz v1, :cond_1

    .line 961
    iget-object v1, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mRenderTarget:Lcom/smartisanos/smengine/RenderTarget;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/RenderTarget;->clearRenderTarget()V

    .line 962
    iput-object v5, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mRenderTarget:Lcom/smartisanos/smengine/RenderTarget;

    .line 964
    :cond_1
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/World;->getTextureManager()Lcom/smartisanos/smengine/TextureManager;

    move-result-object v1

    iget-object v2, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mRenderTargetTextureName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/TextureManager;->deleteTexture(Ljava/lang/String;)V

    .line 965
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v5}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->setTextureName(ILjava/lang/String;)V

    .line 966
    invoke-virtual {p0, v6, v5}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->setTextureName(ILjava/lang/String;)V

    .line 971
    invoke-virtual {p0, v5}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 972
    invoke-super {p0}, Lcom/smartisanos/launcher/view/Page;->releasePageContent()V

    .line 974
    .end local v0    # "mesh":Lcom/smartisanos/smengine/Mesh;
    :cond_2
    return-void
.end method

.method public removeCell(II)V
    .locals 5
    .param p1, "i"    # I
    .param p2, "j"    # I

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->getMesh()Lcom/smartisanos/smengine/Mesh;

    move-result-object v2

    .line 275
    .local v2, "mesh":Lcom/smartisanos/smengine/Mesh;
    iget-object v4, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v0, v4, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_col_num:I

    .line 276
    .local v0, "colNum":I
    iget-object v4, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v3, v4, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_row_num:I

    .line 277
    .local v3, "rowNum":I
    invoke-static {v3, v0, p1, p2}, Lcom/smartisanos/smengine/Mesh;->createSubdivisionRectFaces(IIII)[S

    move-result-object v1

    .line 278
    .local v1, "faces":[S
    invoke-virtual {v2, v1}, Lcom/smartisanos/smengine/Mesh;->setFaceArray([S)V

    .line 279
    return-void
.end method

.method public removePageCell(Lcom/smartisanos/smengine/SceneNode;Z)V
    .locals 5
    .param p1, "pc"    # Lcom/smartisanos/smengine/SceneNode;
    .param p2, "needAnimation"    # Z

    .prologue
    .line 170
    invoke-static {p1}, Lcom/smartisanos/launcher/view/Cell;->sIsInstanceFromCell(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, p1

    .line 171
    check-cast v3, Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Cell;->getOriginRowIndex()I

    move-result v2

    .local v2, "oriRow":I
    move-object v3, p1

    .line 172
    check-cast v3, Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Cell;->getOriginColIndex()I

    move-result v1

    .line 174
    .local v1, "oriCol":I
    new-instance v0, Lcom/smartisanos/smengine/math/Vector2f;

    invoke-direct {v0}, Lcom/smartisanos/smengine/math/Vector2f;-><init>()V

    .line 175
    .local v0, "newIndex":Lcom/smartisanos/smengine/math/Vector2f;
    int-to-float v3, v2

    int-to-float v4, v1

    invoke-virtual {v0, v3, v4}, Lcom/smartisanos/smengine/math/Vector2f;->set(FF)Lcom/smartisanos/smengine/math/Vector2f;

    .line 176
    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->addNewFreeIndex(Lcom/smartisanos/smengine/math/Vector2f;)V

    .line 178
    .end local v0    # "newIndex":Lcom/smartisanos/smengine/math/Vector2f;
    .end local v1    # "oriCol":I
    .end local v2    # "oriRow":I
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/smartisanos/launcher/view/Page;->removePageCell(Lcom/smartisanos/smengine/SceneNode;Z)V

    .line 179
    return-void
.end method

.method public setDrawWithBatch(Z)V
    .locals 4
    .param p1, "b"    # Z

    .prologue
    .line 159
    invoke-super {p0, p1}, Lcom/smartisanos/launcher/view/Page;->setDrawWithBatch(Z)V

    .line 160
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->getAllPageCell()Ljava/util/ArrayList;

    move-result-object v1

    .line 161
    .local v1, "pcArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/Cell;

    .line 162
    .local v0, "pc":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v0, p1}, Lcom/smartisanos/launcher/view/Cell;->setDrawBatch(Z)V

    goto :goto_0

    .line 164
    .end local v0    # "pc":Lcom/smartisanos/launcher/view/Cell;
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->isDrawWithBatch()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 165
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->createBatchMesh()V

    .line 167
    :cond_1
    return-void
.end method

.method public setNativeData(Lcom/smartisanos/smengine/Camera;)V
    .locals 26
    .param p1, "camera"    # Lcom/smartisanos/smengine/Camera;

    .prologue
    .line 504
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v15, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_col_num:I

    .line 505
    .local v15, "colNum":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v0, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_row_num:I

    move/from16 v24, v0

    .line 507
    .local v24, "rowNum":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mNeedInvisibleList:[Z

    array-length v3, v3

    if-ge v10, v3, :cond_0

    .line 508
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mNeedInvisibleList:[Z

    const/4 v4, 0x1

    aput-boolean v4, v3, v10

    .line 507
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 511
    :cond_0
    const/16 v19, 0x0

    .line 512
    .local v19, "k":I
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1, v15}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->getCurrentModularColorArray(II)[Lcom/smartisanos/smengine/math/Vector4f;

    move-result-object v16

    .line 513
    .local v16, "colorArray":[Lcom/smartisanos/smengine/math/Vector4f;
    mul-int v20, v15, v24

    .line 514
    .local v20, "matrixNum":I
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->setMVPMatrixArrayNum(I)V

    .line 515
    const/4 v10, 0x0

    move/from16 v17, v10

    .end local v10    # "i":I
    .local v17, "i":I
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->getChildCount()I

    move-result v3

    move/from16 v0, v17

    if-ge v0, v3, :cond_8

    .line 516
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v5

    .line 517
    .local v5, "sn":Lcom/smartisanos/smengine/SceneNode;
    instance-of v3, v5, Lcom/smartisanos/launcher/view/Cell;

    if-eqz v3, :cond_7

    move-object/from16 v23, v5

    .line 518
    check-cast v23, Lcom/smartisanos/launcher/view/Cell;

    .line 519
    .local v23, "pc":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual/range {v23 .. v23}, Lcom/smartisanos/launcher/view/Cell;->getOriginRowIndex()I

    move-result v22

    .line 520
    .local v22, "originRowIndex":I
    invoke-virtual/range {v23 .. v23}, Lcom/smartisanos/launcher/view/Cell;->getOriginColIndex()I

    move-result v21

    .line 521
    .local v21, "originColIndex":I
    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->getIndex(II)I

    move-result v6

    .line 522
    .local v6, "index":I
    invoke-virtual/range {v23 .. v23}, Lcom/smartisanos/launcher/view/Cell;->isVisibilityForBatchDrawTarget()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 524
    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v10}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->calculateMVPMatrixArrayData(Lcom/smartisanos/smengine/Camera;Lcom/smartisanos/smengine/SceneNode;IFFZZ)V

    .line 532
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->getMaterial()Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v3

    iget-boolean v3, v3, Lcom/smartisanos/smengine/mymaterial/Material;->mUseModelSpaceLightDir:Z

    if-eqz v3, :cond_1

    .line 533
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v6}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->calculateModeSpaceLightDirArrayData(Lcom/smartisanos/smengine/SceneNode;I)V

    .line 537
    :cond_1
    aget-object v3, v16, v6

    if-nez v3, :cond_2

    .line 538
    new-instance v3, Lcom/smartisanos/smengine/math/Vector4f;

    invoke-direct {v3}, Lcom/smartisanos/smengine/math/Vector4f;-><init>()V

    aput-object v3, v16, v6

    .line 541
    :cond_2
    invoke-static {}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->getInstance()Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->isChangeThemeAnimating()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 542
    aget-object v3, v16, v6

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lcom/smartisanos/launcher/view/Cell;->getColor(Lcom/smartisanos/smengine/math/Vector4f;)V

    .line 547
    :goto_3
    sget-boolean v3, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v3, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->getMaterial()Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v3

    instance-of v3, v3, Lcom/smartisanos/smengine/mymaterial/TwoTextureBatchMaterial;

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mNeedUpdateUV:Z

    if-eqz v3, :cond_6

    .line 548
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mSize:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {v5, v3}, Lcom/smartisanos/smengine/SceneNode;->getSize(Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 549
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mPos:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {v5, v3}, Lcom/smartisanos/smengine/SceneNode;->getWorldTranslate(Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 550
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mPos:Lcom/smartisanos/smengine/math/Vector3f;

    iget v7, v3, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mPos:Lcom/smartisanos/smengine/math/Vector3f;

    iget v8, v3, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mPos:Lcom/smartisanos/smengine/math/Vector3f;

    iget v9, v3, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mSize:Lcom/smartisanos/smengine/math/Vector3f;

    iget v11, v3, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mSize:Lcom/smartisanos/smengine/math/Vector3f;

    iget v12, v3, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mCellTextureCoordArray:[F

    invoke-static/range {v7 .. v13}, Lcom/smartisanos/launcher/data/Utils;->getUVOnScreen(FFFZFF[F)V

    .line 552
    const/16 v18, 0x1

    .local v18, "j":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mCellTextureCoordArray:[F

    array-length v3, v3

    move/from16 v0, v18

    if-ge v0, v3, :cond_5

    .line 554
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mCellTextureCoordArray:[F

    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mCellTextureCoordArray:[F

    aget v7, v7, v18

    sub-float/2addr v4, v7

    aput v4, v3, v18

    .line 552
    add-int/lit8 v18, v18, 0x2

    goto :goto_4

    .line 527
    .end local v18    # "j":I
    :cond_3
    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v10}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->calculateMVPMatrixArrayData(Lcom/smartisanos/smengine/Camera;Lcom/smartisanos/smengine/SceneNode;IFFZZ)V

    goto/16 :goto_2

    .line 545
    :cond_4
    aget-object v3, v16, v6

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lcom/smartisanos/launcher/view/Cell;->getColor(Lcom/smartisanos/smengine/math/Vector4f;)V

    goto :goto_3

    .line 557
    .restart local v18    # "j":I
    :cond_5
    const/16 v25, 0x8

    .line 559
    .local v25, "texStride":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mCellTextureCoordArray:[F

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mMeshTexTureCoordArray:[F

    mul-int v8, v6, v25

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mCellTextureCoordArray:[F

    array-length v9, v9

    invoke-static {v3, v4, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 562
    .end local v18    # "j":I
    .end local v25    # "texStride":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mNeedInvisibleList:[Z

    const/4 v4, 0x0

    aput-boolean v4, v3, v6

    .line 565
    add-int/lit8 v19, v19, 0x1

    .line 515
    .end local v6    # "index":I
    .end local v21    # "originColIndex":I
    .end local v22    # "originRowIndex":I
    .end local v23    # "pc":Lcom/smartisanos/launcher/view/Cell;
    :cond_7
    add-int/lit8 v10, v17, 0x1

    .end local v17    # "i":I
    .restart local v10    # "i":I
    move/from16 v17, v10

    .end local v10    # "i":I
    .restart local v17    # "i":I
    goto/16 :goto_1

    .line 568
    .end local v5    # "sn":Lcom/smartisanos/smengine/SceneNode;
    :cond_8
    sget-boolean v3, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v3, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->getMaterial()Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v3

    instance-of v3, v3, Lcom/smartisanos/smengine/mymaterial/TwoTextureBatchMaterial;

    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mNeedUpdateUV:Z

    if-eqz v3, :cond_9

    .line 569
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->getMesh()Lcom/smartisanos/smengine/Mesh;

    move-result-object v3

    const/4 v4, 0x3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mMeshTexTureCoordArray:[F

    invoke-virtual {v3, v4, v7}, Lcom/smartisanos/smengine/Mesh;->updateTexVertexFloatBuffer(I[F)V

    .line 571
    :cond_9
    const/4 v10, 0x0

    .end local v17    # "i":I
    .restart local v10    # "i":I
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mNeedInvisibleList:[Z

    array-length v3, v3

    if-ge v10, v3, :cond_b

    .line 572
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mNeedInvisibleList:[Z

    aget-boolean v3, v3, v10

    if-eqz v3, :cond_a

    .line 573
    const/4 v9, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    invoke-virtual/range {v7 .. v14}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->calculateMVPMatrixArrayData(Lcom/smartisanos/smengine/Camera;Lcom/smartisanos/smengine/SceneNode;IFFZZ)V

    .line 571
    :cond_a
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 578
    :cond_b
    mul-int v3, v24, v15

    move/from16 v0, v19

    if-le v0, v3, :cond_c

    .line 579
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "mat array num error"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 581
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->getMaterial()Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 582
    move-object/from16 v0, v16

    array-length v3, v0

    const/16 v4, 0x9

    if-ne v3, v4, :cond_e

    .line 583
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->getMaterial()Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v3

    const/16 v4, 0x8

    move-object/from16 v0, v16

    invoke-virtual {v3, v4, v0}, Lcom/smartisanos/smengine/mymaterial/Material;->setParam(ILjava/lang/Object;)V

    .line 588
    :cond_d
    :goto_6
    return-void

    .line 585
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->getMaterial()Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v3

    const/4 v4, 0x7

    move-object/from16 v0, v16

    invoke-virtual {v3, v4, v0}, Lcom/smartisanos/smengine/mymaterial/Material;->setParam(ILjava/lang/Object;)V

    goto :goto_6
.end method

.method public setNeedDrawSpecialCube(Z)V
    .locals 0
    .param p1, "set"    # Z

    .prologue
    .line 774
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mNeedDrawSpecialCube:Z

    .line 775
    return-void
.end method

.method public setNeedUpdateUV(Z)V
    .locals 0
    .param p1, "need"    # Z

    .prologue
    .line 591
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mNeedUpdateUV:Z

    .line 592
    return-void
.end method

.method protected setPageMesh()V
    .locals 9

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    .line 281
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->getMesh()Lcom/smartisanos/smengine/Mesh;

    move-result-object v7

    .line 282
    .local v7, "mesh":Lcom/smartisanos/smengine/Mesh;
    if-nez v7, :cond_0

    .line 283
    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v3, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_col_num:I

    .line 284
    .local v3, "colNum":I
    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v2, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_row_num:I

    .line 285
    .local v2, "rowNum":I
    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v4, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    .line 286
    .local v4, "cellWidth":F
    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v5, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    .line 287
    .local v5, "cellHeight":F
    new-instance v1, Lcom/smartisanos/smengine/math/Vector3f;

    neg-float v0, v4

    div-float/2addr v0, v8

    sub-float/2addr v0, v4

    neg-float v6, v5

    div-float/2addr v6, v8

    sub-float/2addr v6, v5

    const/4 v8, 0x0

    invoke-direct {v1, v0, v6, v8}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    .line 288
    .local v1, "startPoint":Lcom/smartisanos/smengine/math/Vector3f;
    const-string v0, "mesh.rect.3x3"

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/smartisanos/smengine/Mesh;->createMeshBySubdivisionRect(Ljava/lang/String;Lcom/smartisanos/smengine/math/Vector3f;IIFFZ)Lcom/smartisanos/smengine/Mesh;

    move-result-object v7

    .line 289
    invoke-virtual {p0, v7}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->setMesh(Lcom/smartisanos/smengine/Mesh;)V

    .line 292
    .end local v1    # "startPoint":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v2    # "rowNum":I
    .end local v3    # "colNum":I
    .end local v4    # "cellWidth":F
    .end local v5    # "cellHeight":F
    :cond_0
    return-void
.end method

.method public setUseStaticGaussian(Z)V
    .locals 11
    .param p1, "use"    # Z

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 674
    invoke-static {}, Lcom/smartisanos/launcher/view/LayerManager;->getInstance()Lcom/smartisanos/launcher/view/LayerManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->getLayStatus()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/smartisanos/launcher/view/LayerManager;->getPageLayer(I)Lcom/smartisanos/launcher/view/LayerManager$PageLayer;

    move-result-object v3

    .line 675
    .local v3, "pageLayer":Lcom/smartisanos/launcher/view/LayerManager$PageLayer;
    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->getMaterial()Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->getMaterial()Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v4

    instance-of v4, v4, Lcom/smartisanos/smengine/mymaterial/TwoTextureBatchMaterial;

    if-nez v4, :cond_3

    .line 677
    const-string v2, "TwoTextureBatch9Material"

    .line 678
    .local v2, "mode":Ljava/lang/String;
    sget v4, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    if-ne v9, v4, :cond_0

    .line 679
    const-string v2, "TwoTextureBatch16Material"

    .line 681
    :cond_0
    invoke-static {v2}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v1

    .line 682
    .local v1, "material":Lcom/smartisanos/smengine/mymaterial/Material;
    invoke-virtual {p0, v1}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 683
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/smartisanos/smengine/RenderState;->setIsEnableBlend(Z)V

    .line 684
    const-string v4, "t_blur_background"

    invoke-virtual {p0, v6, v4}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->setTextureName(ILjava/lang/String;)V

    .line 685
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->getMesh()Lcom/smartisanos/smengine/Mesh;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->createShadowTexArray(Lcom/smartisanos/smengine/Mesh;)V

    .line 686
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/smartisanos/smengine/RenderState;->setIsUseVBO(Z)V

    .line 687
    iget-object v4, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mBatchShadowRect:Lcom/smartisanos/launcher/view/BatchShadow;

    iget v5, v3, Lcom/smartisanos/launcher/view/LayerManager$PageLayer;->PAGE_BATCH_RENDER_OUTER_SHADOW:I

    invoke-virtual {v4, v5}, Lcom/smartisanos/launcher/view/BatchShadow;->setLayer(I)V

    .line 701
    .end local v1    # "material":Lcom/smartisanos/smengine/mymaterial/Material;
    .end local v2    # "mode":Ljava/lang/String;
    :cond_1
    :goto_0
    if-eqz p1, :cond_5

    .line 702
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v4

    sget-object v5, Lcom/smartisanos/launcher/view/CalendarView;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/smartisanos/launcher/view/MainView;->getActiveIconView(Ljava/lang/String;)Lcom/smartisanos/launcher/view/ActiveIconView;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/CalendarView;

    .line 704
    .local v0, "cv":Lcom/smartisanos/launcher/view/CalendarView;
    if-eqz v0, :cond_2

    .line 705
    invoke-virtual {v0, v6}, Lcom/smartisanos/launcher/view/CalendarView;->setRenderQueue(I)V

    .line 716
    .end local v0    # "cv":Lcom/smartisanos/launcher/view/CalendarView;
    :cond_2
    :goto_1
    return-void

    .line 688
    :cond_3
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->getMaterial()Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->getMaterial()Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v4

    instance-of v4, v4, Lcom/smartisanos/smengine/mymaterial/TextureBatchMaterial;

    if-nez v4, :cond_1

    .line 690
    const-string v2, "TextureBatch9Material"

    .line 691
    .restart local v2    # "mode":Ljava/lang/String;
    sget v4, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    if-ne v9, v4, :cond_4

    .line 692
    const-string v2, "TextureBatch16Material"

    .line 694
    :cond_4
    invoke-static {v2}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v1

    .line 695
    .restart local v1    # "material":Lcom/smartisanos/smengine/mymaterial/Material;
    invoke-virtual {p0, v1}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 696
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->getMesh()Lcom/smartisanos/smengine/Mesh;

    move-result-object v4

    invoke-virtual {v4, v8, v10}, Lcom/smartisanos/smengine/Mesh;->setTexVertexArray(I[F)V

    .line 697
    invoke-virtual {p0, v6, v10}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->setTextureName(ILjava/lang/String;)V

    .line 698
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/smartisanos/smengine/RenderState;->setIsUseVBO(Z)V

    .line 699
    iget-object v4, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mBatchShadowRect:Lcom/smartisanos/launcher/view/BatchShadow;

    iget v5, v3, Lcom/smartisanos/launcher/view/LayerManager$PageLayer;->PAGE_IN_SWITCH_PAGE_MODE_GAUSSIAN_BATCH_SHADOW_LAYER:I

    invoke-virtual {v4, v5}, Lcom/smartisanos/launcher/view/BatchShadow;->setLayer(I)V

    goto :goto_0

    .line 708
    .end local v1    # "material":Lcom/smartisanos/smengine/mymaterial/Material;
    .end local v2    # "mode":Ljava/lang/String;
    :cond_5
    sget-boolean v4, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/MainView;->getFloatPageNode()Lcom/smartisanos/launcher/view/FloatPageNode;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 709
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v4

    sget-object v5, Lcom/smartisanos/launcher/view/CalendarView;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/smartisanos/launcher/view/MainView;->getActiveIconView(Ljava/lang/String;)Lcom/smartisanos/launcher/view/ActiveIconView;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/CalendarView;

    .line 711
    .restart local v0    # "cv":Lcom/smartisanos/launcher/view/CalendarView;
    if-eqz v0, :cond_2

    .line 712
    invoke-virtual {v0, v8}, Lcom/smartisanos/launcher/view/CalendarView;->setRenderQueue(I)V

    goto :goto_1
.end method

.method public showOrHideGaussianBatchBackground(Z)V
    .locals 3
    .param p1, "showOrHide"    # Z

    .prologue
    .line 855
    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mBatchBackground:Lcom/smartisanos/launcher/view/BatchBackground;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/BatchBackground;->updatePreColorMaskColor()V

    .line 857
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v0, :cond_0

    const-string v0, "smartisan_theme_mist"

    .line 858
    invoke-static {}, Lcom/smartisanos/launcher/LauncherApplication;->getInstance()Lcom/smartisanos/launcher/LauncherApplication;

    move-result-object v1

    .line 857
    invoke-static {v1}, Lcom/smartisanos/launcher/theme/ThemeManager;->getCurrentTheme(Landroid/content/Context;)Lcom/smartisanos/launcher/theme/Theme;

    move-result-object v1

    iget-object v1, v1, Lcom/smartisanos/launcher/theme/Theme;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 859
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mBatchBackground:Lcom/smartisanos/launcher/view/BatchBackground;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/BatchBackground;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 860
    sget-object v0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->log:Lcom/smartisanos/launcher/LOG;

    const-string v1, "### not gaussian theme, should not invoke this interface"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 879
    :goto_0
    return-void

    .line 863
    :cond_1
    if-eqz p1, :cond_3

    .line 865
    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mBatchBackground:Lcom/smartisanos/launcher/view/BatchBackground;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mBatchBackground:Lcom/smartisanos/launcher/view/BatchBackground;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/BatchBackground;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    if-nez v0, :cond_2

    .line 866
    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mBatchBackground:Lcom/smartisanos/launcher/view/BatchBackground;

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    goto :goto_0

    .line 868
    :cond_2
    sget-object v0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "###show  batch background has parent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 872
    :cond_3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mBatchBackground:Lcom/smartisanos/launcher/view/BatchBackground;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mBatchBackground:Lcom/smartisanos/launcher/view/BatchBackground;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/BatchBackground;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 873
    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mBatchBackground:Lcom/smartisanos/launcher/view/BatchBackground;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/BatchBackground;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    goto :goto_0

    .line 875
    :cond_4
    sget-object v0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->log:Lcom/smartisanos/launcher/LOG;

    const-string v1, "###hide batch background no parent."

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateCellContent()V
    .locals 8

    .prologue
    .line 461
    iget-object v7, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v1, v7, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_col_num:I

    .line 462
    .local v1, "colNum":I
    iget-object v7, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v6, v7, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_row_num:I

    .line 463
    .local v6, "rowNum":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v6, :cond_2

    .line 464
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-ge v4, v1, :cond_1

    .line 465
    invoke-virtual {p0, v2, v4}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->getIndex(II)I

    move-result v3

    .line 466
    .local v3, "index":I
    invoke-virtual {p0, v3}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->getCell(I)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v5

    .line 467
    .local v5, "pc":Lcom/smartisanos/launcher/view/Cell;
    if-eqz v5, :cond_0

    .line 468
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->isDrawWithBatch()Z

    move-result v7

    invoke-virtual {v5, v7}, Lcom/smartisanos/launcher/view/Cell;->setDrawBatch(Z)V

    .line 469
    iget-object v7, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mCellCamera:Lcom/smartisanos/smengine/Camera;

    invoke-virtual {v5, v7}, Lcom/smartisanos/launcher/view/Cell;->setCamera(Lcom/smartisanos/smengine/Camera;)V

    .line 470
    iget-object v7, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mRenderTarget:Lcom/smartisanos/smengine/RenderTarget;

    invoke-virtual {v5, v7}, Lcom/smartisanos/launcher/view/Cell;->setRenderTarget(Lcom/smartisanos/smengine/RenderTarget;)V

    .line 471
    iget-object v7, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mRenderTargetTextureName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lcom/smartisanos/launcher/view/Cell;->setRenderTargetName(Ljava/lang/String;)V

    .line 472
    invoke-static {v2, v4}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->getBackgroundImageName(II)Ljava/lang/String;

    move-result-object v0

    .line 473
    .local v0, "bgName":Ljava/lang/String;
    invoke-virtual {v5, v0}, Lcom/smartisanos/launcher/view/Cell;->setBackgroundImageName(Ljava/lang/String;)V

    .line 474
    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Cell;->create()V

    .line 475
    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Cell;->setNeedDisplay()V

    .line 476
    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Cell;->updateGeometricState()V

    .line 464
    .end local v0    # "bgName":Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 463
    .end local v3    # "index":I
    .end local v5    # "pc":Lcom/smartisanos/launcher/view/Cell;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 480
    .end local v4    # "j":I
    :cond_2
    return-void
.end method

.method public updateLayer(I)V
    .locals 3
    .param p1, "change"    # I

    .prologue
    .line 768
    invoke-super {p0, p1}, Lcom/smartisanos/launcher/view/Page;->updateLayer(I)V

    .line 769
    invoke-static {}, Lcom/smartisanos/launcher/view/LayerManager;->getInstance()Lcom/smartisanos/launcher/view/LayerManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->getLayStatus()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/view/LayerManager;->getPageLayer(I)Lcom/smartisanos/launcher/view/LayerManager$PageLayer;

    move-result-object v0

    .line 770
    .local v0, "pageLayer":Lcom/smartisanos/launcher/view/LayerManager$PageLayer;
    iget v1, v0, Lcom/smartisanos/launcher/view/LayerManager$PageLayer;->PAGE_BATCH_RENDER_LAYER:I

    add-int/2addr v1, p1

    invoke-virtual {p0, v1}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->setLayer(I)V

    .line 771
    return-void
.end method

.method public useCurrentFreeIndex()Lcom/smartisanos/smengine/math/Vector2f;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 204
    iget-object v1, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mCurrentFreeTextureIndexList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/smengine/math/Vector2f;

    .line 205
    .local v0, "result":Lcom/smartisanos/smengine/math/Vector2f;
    iget-object v1, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mCurrentFreeTextureIndexList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 206
    return-object v0
.end method

.method public writeXML(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;)V
    .locals 4
    .param p1, "parent"    # Lorg/w3c/dom/Element;
    .param p2, "document"    # Lorg/w3c/dom/Document;

    .prologue
    .line 759
    const-string v1, "PageWithRenderTarget"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 760
    .local v0, "element":Lorg/w3c/dom/Element;
    const-string v1, "mRenderTargetTextureName"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mRenderTargetTextureName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    const-string v2, "mRenderTarget"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mRenderTarget:Lcom/smartisanos/smengine/RenderTarget;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->mRenderTarget:Lcom/smartisanos/smengine/RenderTarget;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/RenderTarget;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    invoke-super {p0, v0, p2}, Lcom/smartisanos/launcher/view/Page;->writeXML(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;)V

    .line 763
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 764
    return-void

    .line 761
    :cond_0
    const-string v1, "null"

    goto :goto_0
.end method
