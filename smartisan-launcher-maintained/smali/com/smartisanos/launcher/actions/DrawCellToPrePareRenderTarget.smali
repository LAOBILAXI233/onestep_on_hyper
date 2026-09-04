.class public Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;
.super Ljava/lang/Object;
.source "DrawCellToPrePareRenderTarget.java"


.field private static final PAGE_SHADOW_IMG_LEFT_RIGHT_PADDING:I = 0x6


.field cellWorldTranslate:Lcom/smartisanos/smengine/math/Vector3f;

.field private mCellCamera:Lcom/smartisanos/smengine/Camera;

.field mCellTextureCoordArray:[F

.field private mCellToRenderToSurface:Lcom/smartisanos/launcher/view/Cell;

.field private mIsInDock:Z

.field private mRectNode:Lcom/smartisanos/smengine/RectNode;

.field private mViewPort:Lcom/smartisanos/smengine/ViewPort;

.field size:Lcom/smartisanos/smengine/math/Vector3f;


.method public constructor <init>(Lcom/smartisanos/launcher/view/Cell;ZLcom/smartisanos/smengine/RenderTarget;Z)V
    .locals 1
    .param p1, "c"    # Lcom/smartisanos/launcher/view/Cell;
    .param p2, "isInDock"    # Z
    .param p3, "renderTarget"    # Lcom/smartisanos/smengine/RenderTarget;
    .param p4, "isFloatPage"    # Z

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v0}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->cellWorldTranslate:Lcom/smartisanos/smengine/math/Vector3f;

    .line 39
    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->mCellTextureCoordArray:[F

    .line 43
    new-instance v0, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v0}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->size:Lcom/smartisanos/smengine/math/Vector3f;

    .line 46
    iput-boolean p2, p0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->mIsInDock:Z

    .line 47
    if-eqz p2, :cond_0

    .line 48
    invoke-direct {p0, p1, p3}, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->drawCellOnDock(Lcom/smartisanos/launcher/view/Cell;Lcom/smartisanos/smengine/RenderTarget;)V

    .line 52
    :goto_0
    return-void

    .line 50
    :cond_0
    invoke-virtual {p0, p1, p3, p4}, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->drawCellOnPage(Lcom/smartisanos/launcher/view/Cell;Lcom/smartisanos/smengine/RenderTarget;Z)V

    goto :goto_0
.end method

.method private createCamera(II)V
    .locals 8
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    const/4 v7, 0x0

    .line 552
    new-instance v2, Lcom/smartisanos/smengine/Camera;

    invoke-direct {v2, p1, p2}, Lcom/smartisanos/smengine/Camera;-><init>(II)V

    iput-object v2, p0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->mCellCamera:Lcom/smartisanos/smengine/Camera;

    .line 553
    const/high16 v0, 0x41a00000    # 20.0f

    .line 554
    .local v0, "distance":F
    const v2, 0x42652ee0

    int-to-float v3, p2

    div-float/2addr v3, v4

    invoke-static {v3, v0}, Lcom/smartisanos/smengine/math/FastMath;->atan2(FF)F

    move-result v3

    mul-float v1, v2, v3

    .line 556
    .local v1, "theta":F
    iget-object v2, p0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->mCellCamera:Lcom/smartisanos/smengine/Camera;

    mul-float v3, v1, v4

    iget-object v4, p0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->mCellCamera:Lcom/smartisanos/smengine/Camera;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/Camera;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->mCellCamera:Lcom/smartisanos/smengine/Camera;

    invoke-virtual {v5}, Lcom/smartisanos/smengine/Camera;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x42480000    # 50.0f

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/smartisanos/smengine/Camera;->setFrustumPerspective(FFFF)V

    .line 557
    iget-object v2, p0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->mCellCamera:Lcom/smartisanos/smengine/Camera;

    new-instance v3, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v3, v7, v7, v0}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/Camera;->setLocation(Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 558
    iget-object v2, p0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->mCellCamera:Lcom/smartisanos/smengine/Camera;

    new-instance v3, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v3, v7, v7, v7}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    sget-object v4, Lcom/smartisanos/smengine/math/Vector3f;->UNIT_Y:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {v2, v3, v4}, Lcom/smartisanos/smengine/Camera;->lookAt(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 560
    return-void
.end method

.method private drawBottomSide(I)V
    .locals 13
    .param p1, "top"    # I

    .prologue
    .line 734
    iget-object v0, p0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->size:Lcom/smartisanos/smengine/math/Vector3f;

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    float-to-int v12, v0

    .line 735
    .local v12, "sideWidth":I
    const/16 v10, 0x12

    .line 737
    .local v10, "sideHeight":I
    int-to-float v0, v12

    int-to-float v1, v10

    const-string v2, "t_blur_background"

    invoke-direct {p0, v0, v1, v2}, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->generateRectNode(FFLjava/lang/String;)Lcom/smartisanos/smengine/RectNode;

    move-result-object v8

    .line 738
    .local v8, "side":Lcom/smartisanos/smengine/RectNode;
    invoke-virtual {v8}, Lcom/smartisanos/smengine/RectNode;->getMesh()Lcom/smartisanos/smengine/Mesh;

    move-result-object v7

    .line 739
    .local v7, "oriMesh":Lcom/smartisanos/smengine/Mesh;
    invoke-virtual {v7}, Lcom/smartisanos/smengine/Mesh;->clone()Lcom/smartisanos/smengine/Mesh;

    move-result-object v11

    .line 740
    .local v11, "sideMesh":Lcom/smartisanos/smengine/Mesh;
    const/4 v0, 0x0

    invoke-virtual {v11, v0}, Lcom/smartisanos/smengine/Mesh;->setIsInMeshManager(Z)V

    .line 741
    iget-object v0, p0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->mCellToRenderToSurface:Lcom/smartisanos/launcher/view/Cell;

    iget-object v1, p0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->cellWorldTranslate:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Cell;->getWorldTranslate(Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 743
    new-instance v9, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v9}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 745
    .local v9, "sideCenter":Lcom/smartisanos/smengine/math/Vector3f;
    iget-object v0, p0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->cellWorldTranslate:Lcom/smartisanos/smengine/math/Vector3f;

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iput v0, v9, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 746
    iget-object v0, p0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->cellWorldTranslate:Lcom/smartisanos/smengine/math/Vector3f;

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget-object v1, p0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->size:Lcom/smartisanos/smengine/math/Vector3f;

    iget v1, v1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    int-to-float v1, v10

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, v9, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 747
    iget-object v0, p0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->cellWorldTranslate:Lcom/smartisanos/smengine/math/Vector3f;

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    iput v0, v9, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    .line 749
    iget v0, v9, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v1, v9, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v2, v9, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    const/4 v3, 0x1

    int-to-float v4, v12

    int-to-float v5, v10

    iget-object v6, p0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->mCellTextureCoordArray:[F

    invoke-static/range {v0 .. v6}, Lcom/smartisanos/launcher/data/Utils;->getUVOnScreen(FFFZFF[F)V

    .line 751
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->mCellTextureCoordArray:[F

    invoke-virtual {v11, v0, v1}, Lcom/smartisanos/smengine/Mesh;->setTexVertexArray(I[F)V

    .line 752
    invoke-virtual {v8, v11}, Lcom/smartisanos/smengine/RectNode;->setMesh(Lcom/smartisanos/smengine/Mesh;)V

    .line 754
    invoke-direct {p0, v12, v10}, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->createCamera(II)V

    .line 755
    new-instance v0, Lcom/smartisanos/smengine/ViewPort;

    const/16 v1, 0x12

    add-int/lit8 v2, p1, 0x48

    add-int/lit8 v2, v2, -0x12

    const/16 v3, 0x48

    const/16 v4, 0x12

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smartisanos/smengine/ViewPort;-><init>(IIII)V

    iput-object v0, p0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->mViewPort:Lcom/smartisanos/smengine/ViewPort;

    .line 756
    invoke-virtual {p0, v8}, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->drawRect(Lcom/smartisanos/smengine/SceneNode;)V

    .line 757
    invoke-virtual {v8, v7}, Lcom/smartisanos/smengine/RectNode;->setMesh(Lcom/smartisanos/smengine/Mesh;)V

    .line 758
    return-void
.end method

.method private drawCellOnDock(Lcom/smartisanos/launcher/view/Cell;Lcom/smartisanos/smengine/RenderTarget;)V
    .locals 36
    .param p1, "c"    # Lcom/smartisanos/launcher/view/Cell;
    .param p2, "renderTarget"    # Lcom/smartisanos/smengine/RenderTarget;

    .prologue
    .line 55
    sget v2, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    invoke-static {v2}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v18

    .line 56
    .local v18, "multiLp":Lcom/smartisanos/launcher/data/LayoutProperty;
    sget v2, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static {v2}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v27

    .line 58
    .local v27, "singleLp":Lcom/smartisanos/launcher/data/LayoutProperty;
    invoke-virtual/range {p2 .. p2}, Lcom/smartisanos/smengine/RenderTarget;->getWidth()I

    move-result v35

    .line 59
    .local v35, "width":I
    invoke-virtual/range {p2 .. p2}, Lcom/smartisanos/smengine/RenderTarget;->getHeight()I

    move-result v13

    .line 61
    .local v13, "height":I
    new-instance v2, Lcom/smartisanos/smengine/ViewPort;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v0, v35

    invoke-direct {v2, v3, v4, v0, v13}, Lcom/smartisanos/smengine/ViewPort;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->mViewPort:Lcom/smartisanos/smengine/ViewPort;

    .line 63
    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-direct {v0, v1, v13}, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->createCamera(II)V

    .line 65
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->mCellToRenderToSurface:Lcom/smartisanos/launcher/view/Cell;

    .line 66
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->size:Lcom/smartisanos/smengine/math/Vector3f;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/Cell;->getSize(Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 70
    sget-boolean v2, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v2, :cond_8

    .line 73
    move-object/from16 v0, v18

    iget v2, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    move-object/from16 v0, v18

    iget v3, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_height:F

    const-string v4, "t_blur_background"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->generateRectNode(FFLjava/lang/String;)Lcom/smartisanos/smengine/RectNode;

    move-result-object v12

    .line 74
    .local v12, "gaussianBackgroundDock":Lcom/smartisanos/smengine/RectNode;
    invoke-virtual {v12}, Lcom/smartisanos/smengine/RectNode;->getMesh()Lcom/smartisanos/smengine/Mesh;

    move-result-object v22

    .line 75
    .local v22, "oriDockMesh":Lcom/smartisanos/smengine/Mesh;
    invoke-virtual/range {v22 .. v22}, Lcom/smartisanos/smengine/Mesh;->clone()Lcom/smartisanos/smengine/Mesh;

    move-result-object v11

    .line 76
    .local v11, "gaussianBackMesh":Lcom/smartisanos/smengine/Mesh;
    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Lcom/smartisanos/smengine/Mesh;->setIsInMeshManager(Z)V

    .line 78
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->mCellToRenderToSurface:Lcom/smartisanos/launcher/view/Cell;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->cellWorldTranslate:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/view/Cell;->getWorldTranslate(Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 80
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->size:Lcom/smartisanos/smengine/math/Vector3f;

    move-object/from16 v0, v18

    iget v3, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    iput v3, v2, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 81
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->size:Lcom/smartisanos/smengine/math/Vector3f;

    move-object/from16 v0, v18

    iget v3, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_height:F

    iput v3, v2, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 82
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->cellWorldTranslate:Lcom/smartisanos/smengine/math/Vector3f;

    iget v2, v2, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->cellWorldTranslate:Lcom/smartisanos/smengine/math/Vector3f;

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->cellWorldTranslate:Lcom/smartisanos/smengine/math/Vector3f;

    iget v4, v4, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->size:Lcom/smartisanos/smengine/math/Vector3f;

    iget v6, v6, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->size:Lcom/smartisanos/smengine/math/Vector3f;

    iget v7, v7, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->mCellTextureCoordArray:[F

    invoke-static/range {v2 .. v8}, Lcom/smartisanos/launcher/data/Utils;->getUVOnScreen(FFFZFF[F)V

    .line 85
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->mCellTextureCoordArray:[F

    invoke-virtual {v11, v2, v3}, Lcom/smartisanos/smengine/Mesh;->setTexVertexArray(I[F)V

    .line 86
    invoke-virtual {v12, v11}, Lcom/smartisanos/smengine/RectNode;->setMesh(Lcom/smartisanos/smengine/Mesh;)V

    .line 87
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->drawRect(Lcom/smartisanos/smengine/SceneNode;)V

    .line 88
    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Lcom/smartisanos/smengine/RectNode;->setMesh(Lcom/smartisanos/smengine/Mesh;)V

    .line 91
    move-object/from16 v0, v18

    iget v2, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    move-object/from16 v0, v18

    iget v3, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_height:F

    const-string v4, "dock_back.png"

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->generateRectNode(FFLjava/lang/String;)Lcom/smartisanos/smengine/RectNode;

    move-result-object v14

    .line 92
    .local v14, "iconOnDockBackground":Lcom/smartisanos/smengine/RectNode;
    invoke-virtual {v14}, Lcom/smartisanos/smengine/RectNode;->getMesh()Lcom/smartisanos/smengine/Mesh;

    move-result-object v23

    .line 93
    .local v23, "oriMesh":Lcom/smartisanos/smengine/Mesh;
    invoke-virtual {v14}, Lcom/smartisanos/smengine/RectNode;->getMesh()Lcom/smartisanos/smengine/Mesh;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/Mesh;->clone()Lcom/smartisanos/smengine/Mesh;

    move-result-object v15

    .line 94
    .local v15, "iconOnDockBackgroundMesh":Lcom/smartisanos/smengine/Mesh;
    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Lcom/smartisanos/smengine/Mesh;->setIsInMeshManager(Z)V

    .line 96
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->cellWorldTranslate:Lcom/smartisanos/smengine/math/Vector3f;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/Cell;->getWorldTranslate(Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 97
    sget v2, Lcom/smartisanos/launcher/data/Constants;->screen_width:I

    int-to-float v0, v2

    move/from16 v26, v0

    .line 99
    .local v26, "screenWidth":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->cellWorldTranslate:Lcom/smartisanos/smengine/math/Vector3f;

    iget v2, v2, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    sget v3, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v3, v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    move-object/from16 v0, v18

    iget v3, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    sub-float v16, v2, v3

    .line 100
    .local v16, "left":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->cellWorldTranslate:Lcom/smartisanos/smengine/math/Vector3f;

    iget v2, v2, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    sget v3, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v3, v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    move-object/from16 v0, v18

    iget v3, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    add-float v25, v2, v3

    .line 102
    .local v25, "right":F
    move-object/from16 v0, v18

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_height:F

    move/from16 v29, v0

    .line 104
    .local v29, "top":F
    move-object/from16 v0, v27

    iget v2, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_height:F

    move-object/from16 v0, v18

    iget v3, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_height:F

    sub-float v9, v2, v3

    .line 106
    .local v9, "bottom":F
    div-float v31, v16, v26

    .line 107
    .local v31, "ux":F
    div-float v32, v25, v26

    .line 109
    .local v32, "uy":F
    move-object/from16 v0, v27

    iget v2, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_height:F

    div-float v33, v9, v2

    .line 110
    .local v33, "vx":F
    move-object/from16 v0, v18

    iget v2, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_height:F

    div-float v34, v29, v2

    .line 112
    .local v34, "vy":F
    const/4 v2, 0x0

    const/16 v3, 0x8

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v31, v3, v4

    const/4 v4, 0x1

    aput v33, v3, v4

    const/4 v4, 0x2

    aput v32, v3, v4

    const/4 v4, 0x3

    aput v33, v3, v4

    const/4 v4, 0x4

    aput v32, v3, v4

    const/4 v4, 0x5

    aput v34, v3, v4

    const/4 v4, 0x6

    aput v31, v3, v4

    const/4 v4, 0x7

    aput v34, v3, v4

    invoke-virtual {v15, v2, v3}, Lcom/smartisanos/smengine/Mesh;->setTexVertexArray(I[F)V

    .line 113
    invoke-virtual {v14, v15}, Lcom/smartisanos/smengine/RectNode;->setMesh(Lcom/smartisanos/smengine/Mesh;)V

    .line 114
    invoke-virtual {v14}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/RenderState;->setIsEnableBlend(Z)V

    .line 115
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->drawRect(Lcom/smartisanos/smengine/SceneNode;)V

    .line 116
    invoke-virtual {v14}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/RenderState;->setIsEnableBlend(Z)V

    .line 118
    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Lcom/smartisanos/smengine/RectNode;->setMesh(Lcom/smartisanos/smengine/Mesh;)V

    .line 153
    .end local v11    # "gaussianBackMesh":Lcom/smartisanos/smengine/Mesh;
    .end local v12    # "gaussianBackgroundDock":Lcom/smartisanos/smengine/RectNode;
    .end local v22    # "oriDockMesh":Lcom/smartisanos/smengine/Mesh;
    :goto_0
    new-instance v24, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct/range {v24 .. v24}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 154
    .local v24, "rectSize":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-virtual/range {p1 .. p1}, Lcom/smartisanos/launcher/view/Cell;->getForegroundRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Lcom/smartisanos/smengine/RectNode;->getSize(Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 156
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->mIsInDock:Z

    if-eqz v2, :cond_0

    .line 157
    invoke-virtual/range {p1 .. p1}, Lcom/smartisanos/launcher/view/Cell;->getForegroundRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/RectNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 159
    invoke-virtual/range {p1 .. p1}, Lcom/smartisanos/launcher/view/Cell;->getForegroundRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/RectNode;->updateGeometricState()V

    .line 163
    :cond_0
    move-object/from16 v0, v27

    iget v2, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_size_with_shadow:F

    float-to-int v2, v2

    move-object/from16 v0, v27

    iget v3, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_size_with_shadow:F

    float-to-int v3, v3

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->createCamera(II)V

    .line 165
    div-int/lit8 v2, v35, 0x2

    int-to-float v2, v2

    move-object/from16 v0, v24

    iget v3, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float v17, v2, v3

    .line 166
    .local v17, "leftSide":F
    div-int/lit8 v2, v13, 0x2

    int-to-float v2, v2

    move-object/from16 v0, v24

    iget v3, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float v30, v2, v3

    .line 169
    .local v30, "topSide":F
    new-instance v2, Lcom/smartisanos/smengine/ViewPort;

    move/from16 v0, v17

    float-to-int v3, v0

    move/from16 v0, v30

    float-to-int v4, v0

    move-object/from16 v0, v24

    iget v5, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    float-to-int v5, v5

    move-object/from16 v0, v24

    iget v6, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    float-to-int v6, v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/smartisanos/smengine/ViewPort;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->mViewPort:Lcom/smartisanos/smengine/ViewPort;

    .line 170
    invoke-virtual/range {p1 .. p1}, Lcom/smartisanos/launcher/view/Cell;->getForegroundRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->drawRect(Lcom/smartisanos/smengine/SceneNode;)V

    .line 171
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->mIsInDock:Z

    if-eqz v2, :cond_1

    .line 172
    invoke-virtual/range {p1 .. p1}, Lcom/smartisanos/launcher/view/Cell;->getForegroundRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/Cell;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 173
    invoke-virtual/range {p1 .. p1}, Lcom/smartisanos/launcher/view/Cell;->updateGeometricState()V

    .line 179
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/smartisanos/launcher/view/Cell;->getForegroundOverlapRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v10

    .line 180
    .local v10, "foreGroundOverLap":Lcom/smartisanos/smengine/RectNode;
    if-eqz v10, :cond_3

    .line 181
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->mIsInDock:Z

    if-eqz v2, :cond_2

    .line 182
    invoke-virtual {v10}, Lcom/smartisanos/smengine/RectNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 184
    invoke-virtual {v10}, Lcom/smartisanos/smengine/RectNode;->updateGeometricState()V

    .line 186
    :cond_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->drawRect(Lcom/smartisanos/smengine/SceneNode;)V

    .line 188
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->mIsInDock:Z

    if-eqz v2, :cond_3

    .line 189
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcom/smartisanos/launcher/view/Cell;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 190
    invoke-virtual/range {p1 .. p1}, Lcom/smartisanos/launcher/view/Cell;->updateGeometricState()V

    .line 193
    :cond_3
    new-instance v2, Lcom/smartisanos/smengine/ViewPort;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v0, v35

    invoke-direct {v2, v3, v4, v0, v13}, Lcom/smartisanos/smengine/ViewPort;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->mViewPort:Lcom/smartisanos/smengine/ViewPort;

    .line 194
    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-direct {v0, v1, v13}, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->createCamera(II)V

    .line 198
    invoke-virtual/range {p1 .. p1}, Lcom/smartisanos/launcher/view/Cell;->getAppNameRect()Lcom/smartisanos/launcher/view/TextView;

    move-result-object v19

    .line 200
    .local v19, "nameRect":Lcom/smartisanos/launcher/view/TextView;
    if-eqz v19, :cond_5

    invoke-virtual/range {v19 .. v19}, Lcom/smartisanos/launcher/view/TextView;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v2

    move-object/from16 v0, p1

    if-ne v2, v0, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/smartisanos/launcher/view/Cell;->isShowAppName()Z

    move-result v2

    if-eqz v2, :cond_5

    sget v2, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    sget v3, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    if-ne v2, v3, :cond_5

    .line 203
    invoke-virtual/range {v19 .. v19}, Lcom/smartisanos/launcher/view/TextView;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 204
    invoke-virtual/range {v19 .. v19}, Lcom/smartisanos/launcher/view/TextView;->updateGeometricState()V

    .line 206
    invoke-virtual/range {v19 .. v19}, Lcom/smartisanos/launcher/view/TextView;->getTextView()Lcom/smartisanos/smengine/RectNode;

    move-result-object v28

    .line 207
    .local v28, "texRect":Lcom/smartisanos/smengine/RectNode;
    if-eqz v28, :cond_4

    .line 208
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->drawRect(Lcom/smartisanos/smengine/SceneNode;)V

    .line 211
    :cond_4
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Cell;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 212
    invoke-virtual/range {v19 .. v19}, Lcom/smartisanos/launcher/view/TextView;->updateGeometricState()V

    .line 218
    .end local v28    # "texRect":Lcom/smartisanos/smengine/RectNode;
    :cond_5
    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/Cell;->getFlagRect(I)Lcom/smartisanos/smengine/RectNode;

    move-result-object v20

    .line 220
    .local v20, "newFlag":Lcom/smartisanos/smengine/RectNode;
    sget v2, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    sget v3, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    if-ne v2, v3, :cond_6

    .line 221
    invoke-virtual/range {p1 .. p1}, Lcom/smartisanos/launcher/view/Cell;->isShowMessageFlag()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/smartisanos/launcher/view/Cell;->isNewlyInstalledApp()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/smartisanos/launcher/view/Cell;->getItemInfo()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v2

    iget v2, v2, Lcom/smartisanos/launcher/data/ItemInfo;->messagesNumber:I

    if-gtz v2, :cond_6

    .line 222
    if-eqz v20, :cond_6

    invoke-virtual/range {v20 .. v20}, Lcom/smartisanos/smengine/RectNode;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 224
    if-eqz v20, :cond_6

    .line 225
    invoke-virtual/range {v20 .. v20}, Lcom/smartisanos/smengine/RectNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 226
    invoke-virtual/range {v20 .. v20}, Lcom/smartisanos/smengine/RectNode;->updateGeometricState()V

    .line 227
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->drawRect(Lcom/smartisanos/smengine/SceneNode;)V

    .line 228
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Cell;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 229
    invoke-virtual/range {p1 .. p1}, Lcom/smartisanos/launcher/view/Cell;->updateGeometricState()V

    .line 238
    :cond_6
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/Cell;->getFlagRect(I)Lcom/smartisanos/smengine/RectNode;

    move-result-object v21

    .line 239
    .local v21, "numberFlag":Lcom/smartisanos/smengine/RectNode;
    sget v2, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    sget v3, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    if-ne v2, v3, :cond_7

    .line 240
    invoke-virtual/range {p1 .. p1}, Lcom/smartisanos/launcher/view/Cell;->isShowMessageFlag()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/smartisanos/launcher/view/Cell;->getItemInfo()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v2

    iget v2, v2, Lcom/smartisanos/launcher/data/ItemInfo;->messagesNumber:I

    if-lez v2, :cond_7

    .line 241
    if-eqz v21, :cond_7

    invoke-virtual/range {v21 .. v21}, Lcom/smartisanos/smengine/RectNode;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 242
    if-eqz v21, :cond_7

    .line 243
    invoke-virtual/range {v21 .. v21}, Lcom/smartisanos/smengine/RectNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 244
    invoke-virtual/range {v21 .. v21}, Lcom/smartisanos/smengine/RectNode;->updateGeometricState()V

    .line 245
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->drawRect(Lcom/smartisanos/smengine/SceneNode;)V

    .line 246
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Cell;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 247
    invoke-virtual/range {p1 .. p1}, Lcom/smartisanos/launcher/view/Cell;->updateGeometricState()V

    .line 253
    :cond_7
    return-void

    .line 121
    .end local v9    # "bottom":F
    .end local v10    # "foreGroundOverLap":Lcom/smartisanos/smengine/RectNode;
    .end local v14    # "iconOnDockBackground":Lcom/smartisanos/smengine/RectNode;
    .end local v15    # "iconOnDockBackgroundMesh":Lcom/smartisanos/smengine/Mesh;
    .end local v16    # "left":F
    .end local v17    # "leftSide":F
    .end local v19    # "nameRect":Lcom/smartisanos/launcher/view/TextView;
    .end local v20    # "newFlag":Lcom/smartisanos/smengine/RectNode;
    .end local v21    # "numberFlag":Lcom/smartisanos/smengine/RectNode;
    .end local v23    # "oriMesh":Lcom/smartisanos/smengine/Mesh;
    .end local v24    # "rectSize":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v25    # "right":F
    .end local v26    # "screenWidth":F
    .end local v29    # "top":F
    .end local v30    # "topSide":F
    .end local v31    # "ux":F
    .end local v32    # "uy":F
    .end local v33    # "vx":F
    .end local v34    # "vy":F
    :cond_8
    move-object/from16 v0, v18

    iget v2, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    move-object/from16 v0, v18

    iget v3, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_height:F

    const-string v4, "dock_back.png"

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->generateRectNode(FFLjava/lang/String;)Lcom/smartisanos/smengine/RectNode;

    move-result-object v14

    .line 122
    .restart local v14    # "iconOnDockBackground":Lcom/smartisanos/smengine/RectNode;
    invoke-virtual {v14}, Lcom/smartisanos/smengine/RectNode;->getMesh()Lcom/smartisanos/smengine/Mesh;

    move-result-object v23

    .line 123
    .restart local v23    # "oriMesh":Lcom/smartisanos/smengine/Mesh;
    invoke-virtual {v14}, Lcom/smartisanos/smengine/RectNode;->getMesh()Lcom/smartisanos/smengine/Mesh;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/Mesh;->clone()Lcom/smartisanos/smengine/Mesh;

    move-result-object v15

    .line 124
    .restart local v15    # "iconOnDockBackgroundMesh":Lcom/smartisanos/smengine/Mesh;
    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Lcom/smartisanos/smengine/Mesh;->setIsInMeshManager(Z)V

    .line 127
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->cellWorldTranslate:Lcom/smartisanos/smengine/math/Vector3f;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/Cell;->getWorldTranslate(Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 128
    sget v2, Lcom/smartisanos/launcher/data/Constants;->screen_width:I

    int-to-float v0, v2

    move/from16 v26, v0

    .line 130
    .restart local v26    # "screenWidth":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->cellWorldTranslate:Lcom/smartisanos/smengine/math/Vector3f;

    iget v2, v2, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    sget v3, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v3, v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    move-object/from16 v0, v18

    iget v3, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    sub-float v16, v2, v3

    .line 131
    .restart local v16    # "left":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->cellWorldTranslate:Lcom/smartisanos/smengine/math/Vector3f;

    iget v2, v2, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    sget v3, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v3, v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    move-object/from16 v0, v18

    iget v3, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    add-float v25, v2, v3

    .line 133
    .restart local v25    # "right":F
    move-object/from16 v0, v18

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_height:F

    move/from16 v29, v0

    .line 135
    .restart local v29    # "top":F
    move-object/from16 v0, v27

    iget v2, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_height:F

    move-object/from16 v0, v18

    iget v3, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_height:F

    sub-float v9, v2, v3

    .line 137
    .restart local v9    # "bottom":F
    div-float v31, v16, v26

    .line 138
    .restart local v31    # "ux":F
    div-float v32, v25, v26

    .line 140
    .restart local v32    # "uy":F
    move-object/from16 v0, v27

    iget v2, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_height:F

    div-float v33, v9, v2

    .line 141
    .restart local v33    # "vx":F
    move-object/from16 v0, v18

    iget v2, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_height:F

    div-float v34, v29, v2

    .line 143
    .restart local v34    # "vy":F
    const/4 v2, 0x0

    const/16 v3, 0x8

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v31, v3, v4

    const/4 v4, 0x1

    aput v33, v3, v4

    const/4 v4, 0x2

    aput v32, v3, v4

    const/4 v4, 0x3

    aput v33, v3, v4

    const/4 v4, 0x4

    aput v32, v3, v4

    const/4 v4, 0x5

    aput v34, v3, v4

    const/4 v4, 0x6

    aput v31, v3, v4

    const/4 v4, 0x7

    aput v34, v3, v4

    invoke-virtual {v15, v2, v3}, Lcom/smartisanos/smengine/Mesh;->setTexVertexArray(I[F)V

    .line 144
    invoke-virtual {v14, v15}, Lcom/smartisanos/smengine/RectNode;->setMesh(Lcom/smartisanos/smengine/Mesh;)V

    .line 145
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->drawRect(Lcom/smartisanos/smengine/SceneNode;)V

    .line 147
    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Lcom/smartisanos/smengine/RectNode;->setMesh(Lcom/smartisanos/smengine/Mesh;)V

    goto/16 :goto_0
.end method

.method private drawLeftSide(I)V
    .locals 14
    .param p1, "top"    # I

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    const/4 v13, 0x0

    .line 624
    const/16 v12, 0x12

    .line 625
    .local v12, "sideWidth":I
    iget-object v0, p0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->size:Lcom/smartisanos/smengine/math/Vector3f;

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    float-to-int v10, v0

    .line 627
    .local v10, "sideHeight":I
    int-to-float v0, v12

    int-to-float v1, v10

    const-string v2, "t_blur_background"

    invoke-direct {p0, v0, v1, v2}, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->generateRectNode(FFLjava/lang/String;)Lcom/smartisanos/smengine/RectNode;

    move-result-object v8

    .line 628
    .local v8, "side":Lcom/smartisanos/smengine/RectNode;
    invoke-virtual {v8}, Lcom/smartisanos/smengine/RectNode;->getMesh()Lcom/smartisanos/smengine/Mesh;

    move-result-object v7

    .line 629
    .local v7, "oriMesh":Lcom/smartisanos/smengine/Mesh;
    invoke-virtual {v7}, Lcom/smartisanos/smengine/Mesh;->clone()Lcom/smartisanos/smengine/Mesh;

    move-result-object v11

    .line 630
    .local v11, "sideMesh":Lcom/smartisanos/smengine/Mesh;
    invoke-virtual {v11, v13}, Lcom/smartisanos/smengine/Mesh;->setIsInMeshManager(Z)V

    .line 631
    iget-object v0, p0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->mCellToRenderToSurface:Lcom/smartisanos/launcher/view/Cell;

    iget-object v1, p0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->cellWorldTranslate:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Cell;->getWorldTranslate(Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 633
    new-instance v9, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v9}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 635
    .local v9, "sideCenter":Lcom/smartisanos/smengine/math/Vector3f;
    iget-object v0, p0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->cellWorldTranslate:Lcom/smartisanos/smengine/math/Vector3f;

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget-object v1, p0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->size:Lcom/smartisanos/smengine/math/Vector3f;

    iget v1, v1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    div-float/2addr v1, v3

    sub-float/2addr v0, v1

    int-to-float v1, v12

    div-float/2addr v1, v3

    add-float/2addr v0, v1

    iput v0, v9, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 636
    iget-object v0, p0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->cellWorldTranslate:Lcom/smartisanos/smengine/math/Vector3f;

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iput v0, v9, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 637
    iget-object v0, p0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->cellWorldTranslate:Lcom/smartisanos/smengine/math/Vector3f;

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    iput v0, v9, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    .line 639
    iget v0, v9, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v1, v9, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v2, v9, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    const/4 v3, 0x1

    int-to-float v4, v12

    int-to-float v5, v10

    iget-object v6, p0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->mCellTextureCoordArray:[F

    invoke-static/range {v0 .. v6}, Lcom/smartisanos/launcher/data/Utils;->getUVOnScreen(FFFZFF[F)V

    .line 641
    iget-object v0, p0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->mCellTextureCoordArray:[F

    invoke-virtual {v11, v13, v0}, Lcom/smartisanos/smengine/Mesh;->setTexVertexArray(I[F)V

    .line 642
    invoke-virtual {v8, v11}, Lcom/smartisanos/smengine/RectNode;->setMesh(Lcom/smartisanos/smengine/Mesh;)V

    .line 644
    invoke-direct {p0, v12, v10}, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->createCamera(II)V

    .line 645
    new-instance v0, Lcom/smartisanos/smengine/ViewPort;

    const/16 v1, 0x12

    const/16 v2, 0x48

    invoke-direct {v0, v13, p1, v1, v2}, Lcom/smartisanos/smengine/ViewPort;-><init>(IIII)V

    iput-object v0, p0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->mViewPort:Lcom/smartisanos/smengine/ViewPort;

    .line 646
    invoke-virtual {p0, v8}, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->drawRect(Lcom/smartisanos/smengine/SceneNode;)V

    .line 647
    invoke-virtual {v8, v7}, Lcom/smartisanos/smengine/RectNode;->setMesh(Lcom/smartisanos/smengine/Mesh;)V

    .line 648
    return-void
.end method

.method private drawRightSide(I)V
    .locals 14
    .param p1, "top"    # I

    .prologue
    const/4 v13, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    .line 699
    const/16 v12, 0x12

    .line 700
    .local v12, "sideWidth":I
    iget-object v0, p0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->size:Lcom/smartisanos/smengine/math/Vector3f;

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    float-to-int v10, v0

    .line 702
    .local v10, "sideHeight":I
    int-to-float v0, v12

    int-to-float v1, v10

    const-string v2, "t_blur_background"

    invoke-direct {p0, v0, v1, v2}, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->generateRectNode(FFLjava/lang/String;)Lcom/smartisanos/smengine/RectNode;

    move-result-object v8

    .line 703
    .local v8, "side":Lcom/smartisanos/smengine/RectNode;
    invoke-virtual {v8}, Lcom/smartisanos/smengine/RectNode;->getMesh()Lcom/smartisanos/smengine/Mesh;

    move-result-object v7

    .line 704
    .local v7, "oriMesh":Lcom/smartisanos/smengine/Mesh;
    invoke-virtual {v7}, Lcom/smartisanos/smengine/Mesh;->clone()Lcom/smartisanos/smengine/Mesh;

    move-result-object v11

    .line 705
    .local v11, "sideMesh":Lcom/smartisanos/smengine/Mesh;
    invoke-virtual {v11, v13}, Lcom/smartisanos/smengine/Mesh;->setIsInMeshManager(Z)V

    .line 706
    iget-object v0, p0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->mCellToRenderToSurface:Lcom/smartisanos/launcher/view/Cell;

    iget-object v1, p0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->cellWorldTranslate:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Cell;->getWorldTranslate(Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 708
    new-instance v9, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v9}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 710
    .local v9, "sideCenter":Lcom/smartisanos/smengine/math/Vector3f;
    iget-object v0, p0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->cellWorldTranslate:Lcom/smartisanos/smengine/math/Vector3f;

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget-object v1, p0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->size:Lcom/smartisanos/smengine/math/Vector3f;

    iget v1, v1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    div-float/2addr v1, v3

    add-float/2addr v0, v1

    int-to-float v1, v12

    div-float/2addr v1, v3

    sub-float/2addr v0, v1

    iput v0, v9, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 711
    iget-object v0, p0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->cellWorldTranslate:Lcom/smartisanos/smengine/math/Vector3f;

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iput v0, v9, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 712
    iget-object v0, p0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->cellWorldTranslate:Lcom/smartisanos/smengine/math/Vector3f;

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    iput v0, v9, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    .line 714
    iget v0, v9, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v1, v9, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v2, v9, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    const/4 v3, 0x1

    int-to-float v4, v12

    int-to-float v5, v10

    iget-object v6, p0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->mCellTextureCoordArray:[F

    invoke-static/range {v0 .. v6}, Lcom/smartisanos/launcher/data/Utils;->getUVOnScreen(FFFZFF[F)V

    .line 716
    iget-object v0, p0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->mCellTextureCoordArray:[F

    invoke-virtual {v11, v13, v0}, Lcom/smartisanos/smengine/Mesh;->setTexVertexArray(I[F)V

    .line 717
    invoke-virtual {v8, v11}, Lcom/smartisanos/smengine/RectNode;->setMesh(Lcom/smartisanos/smengine/Mesh;)V

    .line 719
    invoke-direct {p0, v12, v10}, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->createCamera(II)V

    .line 721
    new-instance v0, Lcom/smartisanos/smengine/ViewPort;

    const/16 v1, 0x5a

    const/16 v2, 0x12

    const/16 v3, 0x48

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/smartisanos/smengine/ViewPort;-><init>(IIII)V

    iput-object v0, p0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->mViewPort:Lcom/smartisanos/smengine/ViewPort;

    .line 722
    invoke-virtual {p0, v8}, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->drawRect(Lcom/smartisanos/smengine/SceneNode;)V

    .line 723
    invoke-virtual {v8, v7}, Lcom/smartisanos/smengine/RectNode;->setMesh(Lcom/smartisanos/smengine/Mesh;)V

    .line 724
    return-void
.end method

.method private drawTopSide(I)V
    .locals 13
    .param p1, "top"    # I

    .prologue
    .line 658
    iget-object v0, p0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->size:Lcom/smartisanos/smengine/math/Vector3f;

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    float-to-int v12, v0

    .line 659
    .local v12, "sideWidth":I
    const/16 v10, 0x12

    .line 661
    .local v10, "sideHeight":I
    int-to-float v0, v12

    int-to-float v1, v10

    const-string v2, "t_blur_background"

    invoke-direct {p0, v0, v1, v2}, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->generateRectNode(FFLjava/lang/String;)Lcom/smartisanos/smengine/RectNode;

    move-result-object v8

    .line 662
    .local v8, "side":Lcom/smartisanos/smengine/RectNode;
    invoke-virtual {v8}, Lcom/smartisanos/smengine/RectNode;->getMesh()Lcom/smartisanos/smengine/Mesh;

    move-result-object v7

    .line 663
    .local v7, "oriMesh":Lcom/smartisanos/smengine/Mesh;
    invoke-virtual {v7}, Lcom/smartisanos/smengine/Mesh;->clone()Lcom/smartisanos/smengine/Mesh;

    move-result-object v11

    .line 664
    .local v11, "sideMesh":Lcom/smartisanos/smengine/Mesh;
    const/4 v0, 0x0

    invoke-virtual {v11, v0}, Lcom/smartisanos/smengine/Mesh;->setIsInMeshManager(Z)V

    .line 665
    iget-object v0, p0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->mCellToRenderToSurface:Lcom/smartisanos/launcher/view/Cell;

    iget-object v1, p0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->cellWorldTranslate:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Cell;->getWorldTranslate(Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 667
    new-instance v9, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v9}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 669
    .local v9, "sideCenter":Lcom/smartisanos/smengine/math/Vector3f;
    iget-object v0, p0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->cellWorldTranslate:Lcom/smartisanos/smengine/math/Vector3f;

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iput v0, v9, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 670
    iget-object v0, p0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->cellWorldTranslate:Lcom/smartisanos/smengine/math/Vector3f;

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget-object v1, p0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->size:Lcom/smartisanos/smengine/math/Vector3f;

    iget v1, v1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    int-to-float v1, v10

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, v9, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 671
    iget-object v0, p0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->cellWorldTranslate:Lcom/smartisanos/smengine/math/Vector3f;

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    iput v0, v9, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    .line 673
    iget v0, v9, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v1, v9, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v2, v9, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    const/4 v3, 0x1

    int-to-float v4, v12

    int-to-float v5, v10

    iget-object v6, p0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->mCellTextureCoordArray:[F

    invoke-static/range {v0 .. v6}, Lcom/smartisanos/launcher/data/Utils;->getUVOnScreen(FFFZFF[F)V

    .line 675
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->mCellTextureCoordArray:[F

    invoke-virtual {v11, v0, v1}, Lcom/smartisanos/smengine/Mesh;->setTexVertexArray(I[F)V

    .line 676
    invoke-virtual {v8, v11}, Lcom/smartisanos/smengine/RectNode;->setMesh(Lcom/smartisanos/smengine/Mesh;)V

    .line 678
    invoke-direct {p0, v12, v10}, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->createCamera(II)V

    .line 679
    new-instance v0, Lcom/smartisanos/smengine/ViewPort;

    const/16 v1, 0x12

    const/16 v2, 0x48

    const/16 v3, 0x12

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/smartisanos/smengine/ViewPort;-><init>(IIII)V

    iput-object v0, p0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->mViewPort:Lcom/smartisanos/smengine/ViewPort;

    .line 680
    invoke-virtual {p0, v8}, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->drawRect(Lcom/smartisanos/smengine/SceneNode;)V

    .line 681
    invoke-virtual {v8, v7}, Lcom/smartisanos/smengine/RectNode;->setMesh(Lcom/smartisanos/smengine/Mesh;)V

    .line 682
    return-void
.end method

.method private generateRectNode(FFLjava/lang/String;)Lcom/smartisanos/smengine/RectNode;
    .locals 6
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "imageName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    .line 593
    iget-object v2, p0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->mRectNode:Lcom/smartisanos/smengine/RectNode;

    if-eqz v2, :cond_0

    .line 594
    iget-object v2, p0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->mRectNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v2, v5}, Lcom/smartisanos/smengine/RectNode;->clear(Z)V

    .line 595
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->mRectNode:Lcom/smartisanos/smengine/RectNode;

    .line 598
    :cond_0
    const-string v2, "IconShooterRect"

    const/4 v3, 0x0

    invoke-static {v2, p1, p2, v3, v5}, Lcom/smartisanos/smengine/RectNode;->createSimpleTextureRect(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/RectNode;

    move-result-object v1

    .line 599
    .local v1, "rect":Lcom/smartisanos/smengine/RectNode;
    const-string v2, "TextureModularColorMaterial"

    invoke-static {v2}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v0

    .line 600
    .local v0, "m":Lcom/smartisanos/smengine/mymaterial/Material;
    invoke-virtual {v1, p3}, Lcom/smartisanos/smengine/RectNode;->setImageName(Ljava/lang/String;)V

    .line 601
    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/RectNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 602
    invoke-virtual {v1, v4, v4, v4, v4}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 603
    invoke-virtual {v1}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/RenderState;->setIsUseVBO(Z)V

    .line 604
    iput-object v1, p0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->mRectNode:Lcom/smartisanos/smengine/RectNode;

    .line 605
    return-object v1
.end method


.method public drawCellImgTo(II)V
    .locals 10
    .param p1, "imageWidth"    # I
    .param p2, "imageHeight"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    .line 565
    sget v3, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static {v3}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v0

    .line 567
    .local v0, "lp":Lcom/smartisanos/launcher/data/LayoutProperty;
    const-string v3, "IconOnPageShooterPingPongRect"

    int-to-float v4, p1

    int-to-float v5, p2

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6, v9}, Lcom/smartisanos/smengine/RectNode;->createSimpleTextureRect(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/RectNode;

    move-result-object v2

    .line 569
    .local v2, "mIconOnPageShooterPingPongResultRect":Lcom/smartisanos/smengine/RectNode;
    const-string v3, "TextureModularColorMaterial"

    invoke-static {v3}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v1

    .line 571
    .local v1, "m":Lcom/smartisanos/smengine/mymaterial/Material;
    iget-boolean v3, p0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->mIsInDock:Z

    if-eqz v3, :cond_0

    .line 572
    sget-object v3, Lcom/smartisanos/launcher/data/Constants;->ICON_ONDOCK_SHOOTER_PREPARE_RENDER_TARGET_NAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/RectNode;->setImageName(Ljava/lang/String;)V

    .line 577
    :goto_0
    invoke-virtual {v2, v1}, Lcom/smartisanos/smengine/RectNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 578
    invoke-virtual {v2, v7, v7, v7, v7}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 580
    invoke-virtual {v2}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/smartisanos/smengine/RenderState;->setIsUseVBO(Z)V

    .line 582
    invoke-virtual {v2}, Lcom/smartisanos/smengine/RectNode;->updateGeometricState()V

    .line 584
    invoke-direct {p0, p1, p2}, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->createCamera(II)V

    .line 586
    new-instance v3, Lcom/smartisanos/smengine/ViewPort;

    invoke-direct {v3, v8, v8, p1, p2}, Lcom/smartisanos/smengine/ViewPort;-><init>(IIII)V

    iput-object v3, p0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->mViewPort:Lcom/smartisanos/smengine/ViewPort;

    .line 588
    invoke-virtual {p0, v2}, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->drawRect(Lcom/smartisanos/smengine/SceneNode;)V

    .line 589
    return-void

    .line 574
    :cond_0
    sget-object v3, Lcom/smartisanos/launcher/data/Constants;->ICON_ONPAGE_SHOOTER_PREPARE_RENDER_TARGET_NAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/RectNode;->setImageName(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public drawCellOnPage(Lcom/smartisanos/launcher/view/Cell;Lcom/smartisanos/smengine/RenderTarget;Z)V
    .locals 28
    .param p1, "c"    # Lcom/smartisanos/launcher/view/Cell;
    .param p2, "renderTarget"    # Lcom/smartisanos/smengine/RenderTarget;
    .param p3, "isFloatPage"    # Z

    .prologue
    .line 258
    sget v2, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    invoke-static {v2}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v16

    .line 259
    .local v16, "multiLp":Lcom/smartisanos/launcher/data/LayoutProperty;
    sget v2, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static {v2}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v24

    .line 261
    .local v24, "singleLp":Lcom/smartisanos/launcher/data/LayoutProperty;
    invoke-virtual/range {p2 .. p2}, Lcom/smartisanos/smengine/RenderTarget;->getWidth()I

    move-result v27

    .line 262
    .local v27, "width":I
    invoke-virtual/range {p2 .. p2}, Lcom/smartisanos/smengine/RenderTarget;->getHeight()I

    move-result v14

    .line 264
    .local v14, "height":I
    new-instance v2, Lcom/smartisanos/smengine/ViewPort;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v0, v27

    invoke-direct {v2, v3, v4, v0, v14}, Lcom/smartisanos/smengine/ViewPort;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->mViewPort:Lcom/smartisanos/smengine/ViewPort;

    .line 266
    move-object/from16 v0, v24

    iget v2, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    float-to-int v2, v2

    move-object/from16 v0, v24

    iget v3, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    float-to-int v3, v3

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->createCamera(II)V

    .line 268
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->mCellToRenderToSurface:Lcom/smartisanos/launcher/view/Cell;

    .line 270
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->size:Lcom/smartisanos/smengine/math/Vector3f;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/Cell;->getSize(Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 273
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->size:Lcom/smartisanos/smengine/math/Vector3f;

    iget v2, v2, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->size:Lcom/smartisanos/smengine/math/Vector3f;

    iget v2, v2, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    .line 274
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->size:Lcom/smartisanos/smengine/math/Vector3f;

    move-object/from16 v0, v16

    iget v3, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    iput v3, v2, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 275
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->size:Lcom/smartisanos/smengine/math/Vector3f;

    move-object/from16 v0, v16

    iget v3, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    iput v3, v2, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 279
    :cond_1
    sget-boolean v2, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v2, :cond_a

    .line 281
    new-instance v2, Lcom/smartisanos/smengine/ViewPort;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->size:Lcom/smartisanos/smengine/math/Vector3f;

    iget v5, v5, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    float-to-int v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->size:Lcom/smartisanos/smengine/math/Vector3f;

    iget v6, v6, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    float-to-int v6, v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/smartisanos/smengine/ViewPort;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->mViewPort:Lcom/smartisanos/smengine/ViewPort;

    .line 283
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->size:Lcom/smartisanos/smengine/math/Vector3f;

    iget v2, v2, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    float-to-int v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->size:Lcom/smartisanos/smengine/math/Vector3f;

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    float-to-int v3, v3

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->createCamera(II)V

    .line 285
    const-string v15, "t_blur_background"

    .line 286
    .local v15, "imageName":Ljava/lang/String;
    if-eqz p3, :cond_2

    .line 287
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->mCellToRenderToSurface:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Cell;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Page;->getLongPressGaussianRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v22

    .line 288
    .local v22, "pageShadow":Lcom/smartisanos/smengine/RectNode;
    if-eqz v22, :cond_2

    .line 289
    invoke-virtual/range {v22 .. v22}, Lcom/smartisanos/smengine/RectNode;->getMaterial()Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v26

    check-cast v26, Lcom/smartisanos/smengine/mymaterial/TwoPassFilterMaterial;

    .line 290
    .local v26, "tm":Lcom/smartisanos/smengine/mymaterial/TwoPassFilterMaterial;
    invoke-virtual/range {v26 .. v26}, Lcom/smartisanos/smengine/mymaterial/TwoPassFilterMaterial;->getSecondRenderTargetName()Ljava/lang/String;

    move-result-object v15

    .line 293
    .end local v22    # "pageShadow":Lcom/smartisanos/smengine/RectNode;
    .end local v26    # "tm":Lcom/smartisanos/smengine/mymaterial/TwoPassFilterMaterial;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->size:Lcom/smartisanos/smengine/math/Vector3f;

    iget v2, v2, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->size:Lcom/smartisanos/smengine/math/Vector3f;

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v15}, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->generateRectNode(FFLjava/lang/String;)Lcom/smartisanos/smengine/RectNode;

    move-result-object v13

    .line 294
    .local v13, "gaussianBackground":Lcom/smartisanos/smengine/RectNode;
    invoke-virtual {v13}, Lcom/smartisanos/smengine/RectNode;->getMesh()Lcom/smartisanos/smengine/Mesh;

    move-result-object v20

    .line 295
    .local v20, "oriMesh":Lcom/smartisanos/smengine/Mesh;
    invoke-virtual/range {v20 .. v20}, Lcom/smartisanos/smengine/Mesh;->clone()Lcom/smartisanos/smengine/Mesh;

    move-result-object v12

    .line 296
    .local v12, "gaussianBackMesh":Lcom/smartisanos/smengine/Mesh;
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Lcom/smartisanos/smengine/Mesh;->setIsInMeshManager(Z)V

    .line 298
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->mCellToRenderToSurface:Lcom/smartisanos/launcher/view/Cell;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->cellWorldTranslate:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/view/Cell;->getWorldTranslate(Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 300
    if-eqz p3, :cond_9

    .line 301
    new-instance v23, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct/range {v23 .. v23}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 302
    .local v23, "pageShadowSize":Lcom/smartisanos/smengine/math/Vector3f;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->mCellToRenderToSurface:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Cell;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Page;->getShadowRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v22

    .line 303
    .restart local v22    # "pageShadow":Lcom/smartisanos/smengine/RectNode;
    if-eqz v22, :cond_3

    .line 304
    invoke-virtual/range {v22 .. v23}, Lcom/smartisanos/smengine/RectNode;->getSize(Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 306
    :cond_3
    move-object/from16 v0, v23

    iget v2, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    float-to-int v2, v2

    move-object/from16 v0, v23

    iget v3, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    float-to-int v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->cellWorldTranslate:Lcom/smartisanos/smengine/math/Vector3f;

    iget v4, v4, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->cellWorldTranslate:Lcom/smartisanos/smengine/math/Vector3f;

    iget v5, v5, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->cellWorldTranslate:Lcom/smartisanos/smengine/math/Vector3f;

    iget v6, v6, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->size:Lcom/smartisanos/smengine/math/Vector3f;

    iget v8, v8, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->size:Lcom/smartisanos/smengine/math/Vector3f;

    iget v9, v9, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->mCellTextureCoordArray:[F

    invoke-static/range {v2 .. v10}, Lcom/smartisanos/launcher/data/Utils;->getUVOnRect(IIFFFZFF[F)V

    .line 307
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->mCellTextureCoordArray:[F

    const/16 v3, 0x8

    invoke-static {v2, v3}, Lcom/smartisanos/launcher/data/Utils;->flipRectTextureCoordinate([FI)V

    .line 315
    .end local v22    # "pageShadow":Lcom/smartisanos/smengine/RectNode;
    .end local v23    # "pageShadowSize":Lcom/smartisanos/smengine/math/Vector3f;
    :goto_0
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->mCellTextureCoordArray:[F

    invoke-virtual {v12, v2, v3}, Lcom/smartisanos/smengine/Mesh;->setTexVertexArray(I[F)V

    .line 316
    invoke-virtual {v13, v12}, Lcom/smartisanos/smengine/RectNode;->setMesh(Lcom/smartisanos/smengine/Mesh;)V

    .line 317
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->drawRect(Lcom/smartisanos/smengine/SceneNode;)V

    .line 318
    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/smartisanos/smengine/RectNode;->setMesh(Lcom/smartisanos/smengine/Mesh;)V

    .line 321
    new-instance v2, Lcom/smartisanos/smengine/ViewPort;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v0, v27

    invoke-direct {v2, v3, v4, v0, v14}, Lcom/smartisanos/smengine/ViewPort;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->mViewPort:Lcom/smartisanos/smengine/ViewPort;

    .line 322
    move-object/from16 v0, v24

    iget v2, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    float-to-int v2, v2

    move-object/from16 v0, v24

    iget v3, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    float-to-int v3, v3

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->createCamera(II)V

    .line 323
    invoke-virtual/range {p1 .. p1}, Lcom/smartisanos/launcher/view/Cell;->getBackgroundRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/RenderState;->isEnableBlend()Z

    move-result v21

    .line 324
    .local v21, "oristatus":Z
    invoke-virtual/range {p1 .. p1}, Lcom/smartisanos/launcher/view/Cell;->getBackgroundRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/RectNode;->setIsEnableBlend(Z)V

    .line 325
    invoke-virtual/range {p1 .. p1}, Lcom/smartisanos/launcher/view/Cell;->getBackgroundRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->drawRect(Lcom/smartisanos/smengine/SceneNode;)V

    .line 326
    invoke-virtual/range {p1 .. p1}, Lcom/smartisanos/launcher/view/Cell;->getBackgroundRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v2

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Lcom/smartisanos/smengine/RectNode;->setIsEnableBlend(Z)V

    .line 335
    .end local v12    # "gaussianBackMesh":Lcom/smartisanos/smengine/Mesh;
    .end local v13    # "gaussianBackground":Lcom/smartisanos/smengine/RectNode;
    .end local v15    # "imageName":Ljava/lang/String;
    .end local v20    # "oriMesh":Lcom/smartisanos/smengine/Mesh;
    .end local v21    # "oristatus":Z
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/smartisanos/launcher/view/Cell;->getForegroundRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->drawRect(Lcom/smartisanos/smengine/SceneNode;)V

    .line 340
    invoke-virtual/range {p1 .. p1}, Lcom/smartisanos/launcher/view/Cell;->getForegroundOverlapRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v11

    .line 341
    .local v11, "foreGroundOverLap":Lcom/smartisanos/smengine/RectNode;
    if-eqz v11, :cond_4

    .line 342
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->drawRect(Lcom/smartisanos/smengine/SceneNode;)V

    .line 348
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/smartisanos/launcher/view/Cell;->getAppNameRect()Lcom/smartisanos/launcher/view/TextView;

    move-result-object v17

    .line 349
    .local v17, "nameRect":Lcom/smartisanos/launcher/view/TextView;
    if-eqz v17, :cond_6

    invoke-virtual/range {v17 .. v17}, Lcom/smartisanos/launcher/view/TextView;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v2

    move-object/from16 v0, p1

    if-ne v2, v0, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/smartisanos/launcher/view/Cell;->isShowAppName()Z

    move-result v2

    if-eqz v2, :cond_6

    sget v2, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    sget v3, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    if-ne v2, v3, :cond_6

    .line 352
    invoke-virtual/range {v17 .. v17}, Lcom/smartisanos/launcher/view/TextView;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 353
    invoke-virtual/range {v17 .. v17}, Lcom/smartisanos/launcher/view/TextView;->updateGeometricState()V

    .line 355
    invoke-virtual/range {v17 .. v17}, Lcom/smartisanos/launcher/view/TextView;->getTextView()Lcom/smartisanos/smengine/RectNode;

    move-result-object v25

    .line 356
    .local v25, "texRect":Lcom/smartisanos/smengine/RectNode;
    if-eqz v25, :cond_5

    .line 357
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->drawRect(Lcom/smartisanos/smengine/SceneNode;)V

    .line 360
    :cond_5
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Cell;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 361
    invoke-virtual/range {v17 .. v17}, Lcom/smartisanos/launcher/view/TextView;->updateGeometricState()V

    .line 367
    .end local v25    # "texRect":Lcom/smartisanos/smengine/RectNode;
    :cond_6
    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/Cell;->getFlagRect(I)Lcom/smartisanos/smengine/RectNode;

    move-result-object v18

    .line 368
    .local v18, "newFlag":Lcom/smartisanos/smengine/RectNode;
    sget v2, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    sget v3, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    if-ne v2, v3, :cond_7

    .line 369
    invoke-virtual/range {p1 .. p1}, Lcom/smartisanos/launcher/view/Cell;->isShowMessageFlag()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/smartisanos/launcher/view/Cell;->isNewlyInstalledApp()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/smartisanos/launcher/view/Cell;->getItemInfo()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v2

    iget v2, v2, Lcom/smartisanos/launcher/data/ItemInfo;->messagesNumber:I

    if-gtz v2, :cond_7

    .line 370
    if-eqz v18, :cond_7

    invoke-virtual/range {v18 .. v18}, Lcom/smartisanos/smengine/RectNode;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 372
    if-eqz v18, :cond_7

    .line 373
    invoke-virtual/range {v18 .. v18}, Lcom/smartisanos/smengine/RectNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 374
    invoke-virtual/range {v18 .. v18}, Lcom/smartisanos/smengine/RectNode;->updateGeometricState()V

    .line 375
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->drawRect(Lcom/smartisanos/smengine/SceneNode;)V

    .line 376
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Cell;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 377
    invoke-virtual/range {p1 .. p1}, Lcom/smartisanos/launcher/view/Cell;->updateGeometricState()V

    .line 385
    :cond_7
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/Cell;->getFlagRect(I)Lcom/smartisanos/smengine/RectNode;

    move-result-object v19

    .line 386
    .local v19, "numberFlag":Lcom/smartisanos/smengine/RectNode;
    sget v2, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    sget v3, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    if-ne v2, v3, :cond_8

    .line 387
    invoke-virtual/range {p1 .. p1}, Lcom/smartisanos/launcher/view/Cell;->isShowMessageFlag()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual/range {p1 .. p1}, Lcom/smartisanos/launcher/view/Cell;->getItemInfo()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v2

    iget v2, v2, Lcom/smartisanos/launcher/data/ItemInfo;->messagesNumber:I

    if-lez v2, :cond_8

    .line 388
    if-eqz v19, :cond_8

    invoke-virtual/range {v19 .. v19}, Lcom/smartisanos/smengine/RectNode;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 389
    if-eqz v19, :cond_8

    .line 390
    invoke-virtual/range {v19 .. v19}, Lcom/smartisanos/smengine/RectNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 391
    invoke-virtual/range {v19 .. v19}, Lcom/smartisanos/smengine/RectNode;->updateGeometricState()V

    .line 392
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->drawRect(Lcom/smartisanos/smengine/SceneNode;)V

    .line 393
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Cell;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 394
    invoke-virtual/range {p1 .. p1}, Lcom/smartisanos/launcher/view/Cell;->updateGeometricState()V

    .line 399
    :cond_8
    return-void

    .line 309
    .end local v11    # "foreGroundOverLap":Lcom/smartisanos/smengine/RectNode;
    .end local v17    # "nameRect":Lcom/smartisanos/launcher/view/TextView;
    .end local v18    # "newFlag":Lcom/smartisanos/smengine/RectNode;
    .end local v19    # "numberFlag":Lcom/smartisanos/smengine/RectNode;
    .restart local v12    # "gaussianBackMesh":Lcom/smartisanos/smengine/Mesh;
    .restart local v13    # "gaussianBackground":Lcom/smartisanos/smengine/RectNode;
    .restart local v15    # "imageName":Ljava/lang/String;
    .restart local v20    # "oriMesh":Lcom/smartisanos/smengine/Mesh;
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->cellWorldTranslate:Lcom/smartisanos/smengine/math/Vector3f;

    iget v2, v2, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->cellWorldTranslate:Lcom/smartisanos/smengine/math/Vector3f;

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->cellWorldTranslate:Lcom/smartisanos/smengine/math/Vector3f;

    iget v4, v4, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->size:Lcom/smartisanos/smengine/math/Vector3f;

    iget v6, v6, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->size:Lcom/smartisanos/smengine/math/Vector3f;

    iget v7, v7, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->mCellTextureCoordArray:[F

    invoke-static/range {v2 .. v8}, Lcom/smartisanos/launcher/data/Utils;->getUVOnScreen(FFFZFF[F)V

    goto/16 :goto_0

    .line 328
    .end local v12    # "gaussianBackMesh":Lcom/smartisanos/smengine/Mesh;
    .end local v13    # "gaussianBackground":Lcom/smartisanos/smengine/RectNode;
    .end local v15    # "imageName":Ljava/lang/String;
    .end local v20    # "oriMesh":Lcom/smartisanos/smengine/Mesh;
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/smartisanos/launcher/view/Cell;->getBackgroundRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->drawRect(Lcom/smartisanos/smengine/SceneNode;)V

    goto/16 :goto_1
.end method

.method public drawRect(Lcom/smartisanos/smengine/SceneNode;)V
    .locals 10
    .param p1, "renderToTarget"    # Lcom/smartisanos/smengine/SceneNode;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 518
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getMaterial()Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v1

    .line 520
    .local v1, "material":Lcom/smartisanos/smengine/mymaterial/Material;
    if-nez v1, :cond_0

    .line 547
    :goto_0
    return-void

    .line 525
    :cond_0
    iget-boolean v5, v1, Lcom/smartisanos/smengine/mymaterial/Material;->mUseMVPMatrix:Z

    if-eqz v5, :cond_1

    .line 526
    iget-object v5, p0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->mCellCamera:Lcom/smartisanos/smengine/Camera;

    invoke-virtual {p1, v5}, Lcom/smartisanos/smengine/SceneNode;->calculateMVPMatrixData(Lcom/smartisanos/smengine/Camera;)V

    .line 529
    :cond_1
    iget-object v5, p0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->mViewPort:Lcom/smartisanos/smengine/ViewPort;

    invoke-virtual {v5}, Lcom/smartisanos/smengine/ViewPort;->x()I

    move-result v3

    .line 530
    .local v3, "x":I
    iget-object v5, p0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->mViewPort:Lcom/smartisanos/smengine/ViewPort;

    invoke-virtual {v5}, Lcom/smartisanos/smengine/ViewPort;->y()I

    move-result v4

    .line 531
    .local v4, "y":I
    iget-object v5, p0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->mViewPort:Lcom/smartisanos/smengine/ViewPort;

    invoke-virtual {v5}, Lcom/smartisanos/smengine/ViewPort;->w()I

    move-result v2

    .line 532
    .local v2, "width":I
    iget-object v5, p0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->mViewPort:Lcom/smartisanos/smengine/ViewPort;

    invoke-virtual {v5}, Lcom/smartisanos/smengine/ViewPort;->h()I

    move-result v0

    .line 533
    .local v0, "height":I
    invoke-static {v3, v4, v2, v0}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 536
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v5

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRUParam()Lcom/smartisanos/smengine/RenderState$Param;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/smartisanos/smengine/RenderState;->apply(Lcom/smartisanos/smengine/RenderState$Param;)V

    .line 538
    invoke-virtual {v1}, Lcom/smartisanos/smengine/mymaterial/Material;->create()V

    .line 539
    invoke-virtual {p1, v7}, Lcom/smartisanos/smengine/SceneNode;->getTextureName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v7, v5}, Lcom/smartisanos/smengine/mymaterial/Material;->addTexture(ILjava/lang/String;)V

    .line 540
    invoke-virtual {p1, v8}, Lcom/smartisanos/smengine/SceneNode;->getTextureName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v8, v5}, Lcom/smartisanos/smengine/mymaterial/Material;->addTexture(ILjava/lang/String;)V

    .line 541
    invoke-virtual {p1, v9}, Lcom/smartisanos/smengine/SceneNode;->getTextureName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v9, v5}, Lcom/smartisanos/smengine/mymaterial/Material;->addTexture(ILjava/lang/String;)V

    .line 543
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getMesh()Lcom/smartisanos/smengine/Mesh;

    move-result-object v5

    invoke-virtual {v1, p1, v5, v7}, Lcom/smartisanos/smengine/mymaterial/Material;->draw(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/smengine/Mesh;Z)V

    .line 545
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/smengine/RenderState;->restore()V

    goto :goto_0
.end method

.method public drawShadowBackground(ZII)V
    .locals 22
    .param p1, "isFloatPage"    # Z
    .param p2, "cellImageWidth"    # I
    .param p3, "cellImageHeight"    # I

    .prologue
    .line 433
    sget v3, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    invoke-static {v3}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v17

    .line 434
    .local v17, "multiLp":Lcom/smartisanos/launcher/data/LayoutProperty;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->mIsInDock:Z

    if-nez v3, :cond_4

    .line 436
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->createCamera(II)V

    .line 438
    new-instance v3, Lcom/smartisanos/smengine/ViewPort;

    const/4 v4, 0x0

    add-int/lit8 v5, p3, 0x48

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-direct {v3, v4, v5, v0, v1}, Lcom/smartisanos/smengine/ViewPort;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->mViewPort:Lcom/smartisanos/smengine/ViewPort;

    .line 440
    const/4 v14, 0x0

    .line 441
    .local v14, "iconOnPageShooterShadowBackground":Lcom/smartisanos/smengine/RectNode;
    if-eqz p1, :cond_2

    .line 442
    const-string v3, "folder_shadow.png"

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v16

    .line 443
    .local v16, "imageName":Ljava/lang/String;
    sget-boolean v3, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v3, :cond_0

    .line 445
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->mCellToRenderToSurface:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Cell;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Page;->getLongPressGaussianRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v19

    .line 446
    .local v19, "pageShadow":Lcom/smartisanos/smengine/RectNode;
    if-eqz v19, :cond_0

    .line 447
    invoke-virtual/range {v19 .. v19}, Lcom/smartisanos/smengine/RectNode;->getMaterial()Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v21

    check-cast v21, Lcom/smartisanos/smengine/mymaterial/TwoPassFilterMaterial;

    .line 448
    .local v21, "tm":Lcom/smartisanos/smengine/mymaterial/TwoPassFilterMaterial;
    invoke-virtual/range {v21 .. v21}, Lcom/smartisanos/smengine/mymaterial/TwoPassFilterMaterial;->getSecondRenderTargetName()Ljava/lang/String;

    move-result-object v16

    .line 452
    .end local v19    # "pageShadow":Lcom/smartisanos/smengine/RectNode;
    .end local v21    # "tm":Lcom/smartisanos/smengine/mymaterial/TwoPassFilterMaterial;
    :cond_0
    move/from16 v0, p2

    int-to-float v3, v0

    move/from16 v0, p3

    int-to-float v4, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v3, v4, v1}, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->generateRectNode(FFLjava/lang/String;)Lcom/smartisanos/smengine/RectNode;

    move-result-object v14

    .line 457
    .end local v16    # "imageName":Ljava/lang/String;
    :goto_0
    invoke-virtual {v14}, Lcom/smartisanos/smengine/RectNode;->getMesh()Lcom/smartisanos/smengine/Mesh;

    move-result-object v18

    .line 458
    .local v18, "oriMesh":Lcom/smartisanos/smengine/Mesh;
    invoke-virtual/range {v18 .. v18}, Lcom/smartisanos/smengine/Mesh;->clone()Lcom/smartisanos/smengine/Mesh;

    move-result-object v15

    .line 459
    .local v15, "iconOnPageShooterShadowBackgroundMesh":Lcom/smartisanos/smengine/Mesh;
    const/4 v3, 0x0

    invoke-virtual {v15, v3}, Lcom/smartisanos/smengine/Mesh;->setIsInMeshManager(Z)V

    .line 461
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->mCellToRenderToSurface:Lcom/smartisanos/launcher/view/Cell;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->cellWorldTranslate:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/view/Cell;->getWorldTranslate(Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 465
    if-eqz p1, :cond_3

    .line 466
    new-instance v20, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct/range {v20 .. v20}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 467
    .local v20, "pageShadowSize":Lcom/smartisanos/smengine/math/Vector3f;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->mCellToRenderToSurface:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Cell;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Page;->getShadowRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v19

    .line 468
    .restart local v19    # "pageShadow":Lcom/smartisanos/smengine/RectNode;
    if-eqz v19, :cond_1

    .line 469
    invoke-virtual/range {v19 .. v20}, Lcom/smartisanos/smengine/RectNode;->getSize(Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 471
    :cond_1
    move-object/from16 v0, v20

    iget v3, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    float-to-int v3, v3

    move-object/from16 v0, v20

    iget v4, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    float-to-int v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->cellWorldTranslate:Lcom/smartisanos/smengine/math/Vector3f;

    iget v5, v5, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->cellWorldTranslate:Lcom/smartisanos/smengine/math/Vector3f;

    iget v6, v6, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->cellWorldTranslate:Lcom/smartisanos/smengine/math/Vector3f;

    iget v7, v7, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->size:Lcom/smartisanos/smengine/math/Vector3f;

    iget v9, v9, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    const/high16 v10, 0x40c00000    # 6.0f

    sub-float/2addr v9, v10

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->size:Lcom/smartisanos/smengine/math/Vector3f;

    iget v10, v10, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->mCellTextureCoordArray:[F

    invoke-static/range {v3 .. v11}, Lcom/smartisanos/launcher/data/Utils;->getUVOnRect(IIFFFZFF[F)V

    .line 479
    .end local v19    # "pageShadow":Lcom/smartisanos/smengine/RectNode;
    .end local v20    # "pageShadowSize":Lcom/smartisanos/smengine/math/Vector3f;
    :goto_1
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->mCellTextureCoordArray:[F

    invoke-virtual {v15, v3, v4}, Lcom/smartisanos/smengine/Mesh;->setTexVertexArray(I[F)V

    .line 481
    invoke-virtual {v14, v15}, Lcom/smartisanos/smengine/RectNode;->setMesh(Lcom/smartisanos/smengine/Mesh;)V

    .line 482
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->drawRect(Lcom/smartisanos/smengine/SceneNode;)V

    .line 483
    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lcom/smartisanos/smengine/RectNode;->setMesh(Lcom/smartisanos/smengine/Mesh;)V

    .line 513
    .end local v14    # "iconOnPageShooterShadowBackground":Lcom/smartisanos/smengine/RectNode;
    .end local v15    # "iconOnPageShooterShadowBackgroundMesh":Lcom/smartisanos/smengine/Mesh;
    :goto_2
    return-void

    .line 454
    .end local v18    # "oriMesh":Lcom/smartisanos/smengine/Mesh;
    .restart local v14    # "iconOnPageShooterShadowBackground":Lcom/smartisanos/smengine/RectNode;
    :cond_2
    move/from16 v0, p2

    int-to-float v3, v0

    move/from16 v0, p3

    int-to-float v4, v0

    const-string v5, "background.png"

    invoke-static {v5}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v5}, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->generateRectNode(FFLjava/lang/String;)Lcom/smartisanos/smengine/RectNode;

    move-result-object v14

    goto/16 :goto_0

    .line 473
    .restart local v15    # "iconOnPageShooterShadowBackgroundMesh":Lcom/smartisanos/smengine/Mesh;
    .restart local v18    # "oriMesh":Lcom/smartisanos/smengine/Mesh;
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->cellWorldTranslate:Lcom/smartisanos/smengine/math/Vector3f;

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->cellWorldTranslate:Lcom/smartisanos/smengine/math/Vector3f;

    iget v4, v4, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->cellWorldTranslate:Lcom/smartisanos/smengine/math/Vector3f;

    iget v5, v5, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->size:Lcom/smartisanos/smengine/math/Vector3f;

    iget v7, v7, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->size:Lcom/smartisanos/smengine/math/Vector3f;

    iget v8, v8, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->mCellTextureCoordArray:[F

    invoke-static/range {v3 .. v9}, Lcom/smartisanos/launcher/data/Utils;->getUVOnScreen(FFFZFF[F)V

    .line 474
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->mCellTextureCoordArray:[F

    const/16 v4, 0x8

    invoke-static {v3, v4}, Lcom/smartisanos/launcher/data/Utils;->flipRectTextureCoordinate([FI)V

    goto :goto_1

    .line 486
    .end local v14    # "iconOnPageShooterShadowBackground":Lcom/smartisanos/smengine/RectNode;
    .end local v15    # "iconOnPageShooterShadowBackgroundMesh":Lcom/smartisanos/smengine/Mesh;
    .end local v18    # "oriMesh":Lcom/smartisanos/smengine/Mesh;
    :cond_4
    move-object/from16 v0, v17

    iget v3, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    float-to-int v3, v3

    move-object/from16 v0, v17

    iget v4, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_height:F

    float-to-int v4, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->createCamera(II)V

    .line 489
    move-object/from16 v0, v17

    iget v3, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    move-object/from16 v0, v17

    iget v4, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_height:F

    const-string v5, "background.png"

    invoke-static {v5}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v5}, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->generateRectNode(FFLjava/lang/String;)Lcom/smartisanos/smengine/RectNode;

    move-result-object v12

    .line 492
    .local v12, "iconOnDockShooterShadowBackground":Lcom/smartisanos/smengine/RectNode;
    new-instance v3, Lcom/smartisanos/smengine/ViewPort;

    const/4 v4, 0x0

    move-object/from16 v0, v17

    iget v5, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_height:F

    float-to-int v5, v5

    add-int/lit8 v5, v5, 0x48

    move-object/from16 v0, v17

    iget v6, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    float-to-int v6, v6

    move-object/from16 v0, v17

    iget v7, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_height:F

    float-to-int v7, v7

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/smartisanos/smengine/ViewPort;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->mViewPort:Lcom/smartisanos/smengine/ViewPort;

    .line 494
    invoke-virtual {v12}, Lcom/smartisanos/smengine/RectNode;->getMesh()Lcom/smartisanos/smengine/Mesh;

    move-result-object v18

    .line 495
    .restart local v18    # "oriMesh":Lcom/smartisanos/smengine/Mesh;
    invoke-virtual/range {v18 .. v18}, Lcom/smartisanos/smengine/Mesh;->clone()Lcom/smartisanos/smengine/Mesh;

    move-result-object v13

    .line 496
    .local v13, "iconOnDockShooterShadowBackgroundMesh":Lcom/smartisanos/smengine/Mesh;
    const/4 v3, 0x0

    invoke-virtual {v13, v3}, Lcom/smartisanos/smengine/Mesh;->setIsInMeshManager(Z)V

    .line 499
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->mCellToRenderToSurface:Lcom/smartisanos/launcher/view/Cell;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->cellWorldTranslate:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/view/Cell;->getWorldTranslate(Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 501
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->size:Lcom/smartisanos/smengine/math/Vector3f;

    move-object/from16 v0, v17

    iget v4, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    iput v4, v3, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 502
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->size:Lcom/smartisanos/smengine/math/Vector3f;

    move-object/from16 v0, v17

    iget v4, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_height:F

    iput v4, v3, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 503
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->cellWorldTranslate:Lcom/smartisanos/smengine/math/Vector3f;

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->cellWorldTranslate:Lcom/smartisanos/smengine/math/Vector3f;

    iget v4, v4, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->cellWorldTranslate:Lcom/smartisanos/smengine/math/Vector3f;

    iget v5, v5, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->size:Lcom/smartisanos/smengine/math/Vector3f;

    iget v7, v7, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->size:Lcom/smartisanos/smengine/math/Vector3f;

    iget v8, v8, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->mCellTextureCoordArray:[F

    invoke-static/range {v3 .. v9}, Lcom/smartisanos/launcher/data/Utils;->getUVOnScreen(FFFZFF[F)V

    .line 504
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->mCellTextureCoordArray:[F

    const/16 v4, 0x8

    invoke-static {v3, v4}, Lcom/smartisanos/launcher/data/Utils;->flipRectTextureCoordinate([FI)V

    .line 507
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->mCellTextureCoordArray:[F

    invoke-virtual {v13, v3, v4}, Lcom/smartisanos/smengine/Mesh;->setTexVertexArray(I[F)V

    .line 509
    invoke-virtual {v12, v13}, Lcom/smartisanos/smengine/RectNode;->setMesh(Lcom/smartisanos/smengine/Mesh;)V

    .line 510
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->drawRect(Lcom/smartisanos/smengine/SceneNode;)V

    .line 511
    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/smartisanos/smengine/RectNode;->setMesh(Lcom/smartisanos/smengine/Mesh;)V

    goto/16 :goto_2
.end method

.method public drawSide(I)V
    .locals 6
    .param p1, "top"    # I

    .prologue
    const/16 v5, 0x48

    const/16 v4, 0x12

    .line 403
    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v1, :cond_0

    .line 406
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->drawLeftSide(I)V

    .line 409
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->drawTopSide(I)V

    .line 412
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->drawRightSide(I)V

    .line 415
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->drawBottomSide(I)V

    .line 429
    :goto_0
    return-void

    .line 418
    :cond_0
    invoke-direct {p0, v4, v5}, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->createCamera(II)V

    .line 423
    const/high16 v1, 0x41900000    # 18.0f

    const/high16 v2, 0x42900000    # 72.0f

    const-string v3, "flip_anim_side.png"

    invoke-static {v3}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->generateRectNode(FFLjava/lang/String;)Lcom/smartisanos/smengine/RectNode;

    move-result-object v0

    .line 425
    .local v0, "side":Lcom/smartisanos/smengine/RectNode;
    new-instance v1, Lcom/smartisanos/smengine/ViewPort;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, v4, v5}, Lcom/smartisanos/smengine/ViewPort;-><init>(IIII)V

    iput-object v1, p0, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->mViewPort:Lcom/smartisanos/smengine/ViewPort;

    .line 426
    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/actions/DrawCellToPrePareRenderTarget;->drawRect(Lcom/smartisanos/smengine/SceneNode;)V

    goto :goto_0
.end method
