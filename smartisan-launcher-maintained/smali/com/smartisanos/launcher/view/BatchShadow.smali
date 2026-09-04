.class public Lcom/smartisanos/launcher/view/BatchShadow;
.super Lcom/smartisanos/smengine/SceneNode;
.source "BatchShadow.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/launcher/view/BatchShadow$PageException;
    }
.end annotation


.field private static final DELTA:I = 0xf

.field private static final HORIZON_SHADOW_RECT_WIDTH_DELTA_9_CELL:I = 0x12

.field private static final OCT_SHADOW_IMAGE_HEIGHT:F = 333.0f

.field private static final OCT_SHADOW_IMAGE_WIDTH:F = 267.0f

.field private static final SHADOW_IMAGE_HEIGHT:F = 321.0f

.field private static final SHADOW_IMAGE_MAX_U:F = 247.0f

.field private static final SHADOW_IMAGE_MAX_V:F = 312.0f

.field private static final SHADOW_IMAGE_MIN_U:F = 9.0f

.field private static final SHADOW_IMAGE_MIN_V:F = 9.0f

.field private static final SHADOW_IMAGE_WIDTH:F = 256.0f

.field private static final TAG:Ljava/lang/String; = "BatchShadow"

.field private static final VERTICAL_SHADOW_RECT_HEIGHT_DELTA_9_CELL:I = 0x12


.field protected mFixedScale:F

.field protected mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

.field private mMatArray16:[Lcom/smartisanos/smengine/math/Matrix4f;

.field private mMatArray9:[Lcom/smartisanos/smengine/math/Matrix4f;

.field private mModularColorArray16:[Lcom/smartisanos/smengine/math/Vector4f;

.field private mModularColorArray9:[Lcom/smartisanos/smengine/math/Vector4f;

.field private mMoveToOutOfScreenMatrix:Lcom/smartisanos/smengine/math/Matrix4f;

.field protected mUseSelfColor:Z

.field protected mUseSelfZ:Z

.field private mZ:F


.method public constructor <init>(Ljava/lang/String;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/16 v4, 0x10

    const/16 v3, 0x9

    .line 60
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/SceneNode;-><init>(Ljava/lang/String;)V

    .line 26
    new-array v1, v3, [Lcom/smartisanos/smengine/math/Matrix4f;

    iput-object v1, p0, Lcom/smartisanos/launcher/view/BatchShadow;->mMatArray9:[Lcom/smartisanos/smengine/math/Matrix4f;

    .line 27
    new-array v1, v4, [Lcom/smartisanos/smengine/math/Matrix4f;

    iput-object v1, p0, Lcom/smartisanos/launcher/view/BatchShadow;->mMatArray16:[Lcom/smartisanos/smengine/math/Matrix4f;

    .line 29
    new-array v1, v3, [Lcom/smartisanos/smengine/math/Vector4f;

    iput-object v1, p0, Lcom/smartisanos/launcher/view/BatchShadow;->mModularColorArray9:[Lcom/smartisanos/smengine/math/Vector4f;

    .line 30
    new-array v1, v4, [Lcom/smartisanos/smengine/math/Vector4f;

    iput-object v1, p0, Lcom/smartisanos/launcher/view/BatchShadow;->mModularColorArray16:[Lcom/smartisanos/smengine/math/Vector4f;

    .line 33
    const/4 v1, 0x0

    iput v1, p0, Lcom/smartisanos/launcher/view/BatchShadow;->mZ:F

    .line 34
    new-instance v1, Lcom/smartisanos/smengine/math/Matrix4f;

    invoke-direct {v1}, Lcom/smartisanos/smengine/math/Matrix4f;-><init>()V

    iput-object v1, p0, Lcom/smartisanos/launcher/view/BatchShadow;->mMoveToOutOfScreenMatrix:Lcom/smartisanos/smengine/math/Matrix4f;

    .line 51
    iput-boolean v2, p0, Lcom/smartisanos/launcher/view/BatchShadow;->mUseSelfColor:Z

    .line 52
    iput-boolean v2, p0, Lcom/smartisanos/launcher/view/BatchShadow;->mUseSelfZ:Z

    .line 53
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/smartisanos/launcher/view/BatchShadow;->mFixedScale:F

    .line 61
    invoke-static {}, Lcom/smartisanos/launcher/data/Constants;->getPropertyByStyle()Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v1

    iput-object v1, p0, Lcom/smartisanos/launcher/view/BatchShadow;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    .line 62
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 63
    iget-object v1, p0, Lcom/smartisanos/launcher/view/BatchShadow;->mMatArray9:[Lcom/smartisanos/smengine/math/Matrix4f;

    new-instance v2, Lcom/smartisanos/smengine/math/Matrix4f;

    invoke-direct {v2}, Lcom/smartisanos/smengine/math/Matrix4f;-><init>()V

    aput-object v2, v1, v0

    .line 64
    iget-object v1, p0, Lcom/smartisanos/launcher/view/BatchShadow;->mModularColorArray9:[Lcom/smartisanos/smengine/math/Vector4f;

    new-instance v2, Lcom/smartisanos/smengine/math/Vector4f;

    invoke-direct {v2}, Lcom/smartisanos/smengine/math/Vector4f;-><init>()V

    aput-object v2, v1, v0

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 66
    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_1

    .line 67
    iget-object v1, p0, Lcom/smartisanos/launcher/view/BatchShadow;->mMatArray16:[Lcom/smartisanos/smengine/math/Matrix4f;

    new-instance v2, Lcom/smartisanos/smengine/math/Matrix4f;

    invoke-direct {v2}, Lcom/smartisanos/smengine/math/Matrix4f;-><init>()V

    aput-object v2, v1, v0

    .line 68
    iget-object v1, p0, Lcom/smartisanos/launcher/view/BatchShadow;->mModularColorArray16:[Lcom/smartisanos/smengine/math/Vector4f;

    new-instance v2, Lcom/smartisanos/smengine/math/Vector4f;

    invoke-direct {v2}, Lcom/smartisanos/smengine/math/Vector4f;-><init>()V

    aput-object v2, v1, v0

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 70
    :cond_1
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/BatchShadow;->createBatch()V

    .line 71
    return-void
.end method

.method private clearMatrixArray([Lcom/smartisanos/smengine/math/Matrix4f;)V
    .locals 2
    .param p1, "matArray"    # [Lcom/smartisanos/smengine/math/Matrix4f;

    .prologue
    .line 620
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 621
    aget-object v1, p1, v0

    invoke-virtual {v1}, Lcom/smartisanos/smengine/math/Matrix4f;->loadIdentity()V

    .line 620
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 623
    :cond_0
    return-void
.end method

.method private createBatch()V
    .locals 1

    .prologue
    .line 593
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/BatchShadow;->createBatchShadowMaterial()V

    .line 594
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/BatchShadow;->createBatchShadowMesh()V

    .line 596
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/BatchShadow;->setRenderQueue(I)V

    .line 597
    return-void
.end method

.method private createBatchShadow2RectMesh()V
    .locals 36

    .prologue
    .line 104
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/BatchShadow;->getMesh()Lcom/smartisanos/smengine/Mesh;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 261
    :goto_0
    return-void

    .line 114
    :cond_0
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/smengine/World;->getMeshManager()Lcom/smartisanos/smengine/MeshManager;

    move-result-object v6

    const-string v7, "2RECT_SHADOW_MESH_BATCH_9_CELLS"

    invoke-virtual {v6, v7}, Lcom/smartisanos/smengine/MeshManager;->getMesh(Ljava/lang/String;)Lcom/smartisanos/smengine/Mesh;

    move-result-object v2

    .line 115
    .local v2, "mesh":Lcom/smartisanos/smengine/Mesh;
    if-nez v2, :cond_9

    .line 116
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/smartisanos/launcher/view/BatchShadow;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v12, v6, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_col_num:I

    .line 117
    .local v12, "colNum":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/smartisanos/launcher/view/BatchShadow;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v0, v6, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_row_num:I

    move/from16 v22, v0

    .line 119
    .local v22, "rowNum":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/smartisanos/launcher/view/BatchShadow;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v11, v6, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    .line 120
    .local v11, "cellVerticalShadowWidth":F
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/smartisanos/launcher/view/BatchShadow;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v6, v6, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    const/high16 v7, 0x41900000    # 18.0f

    add-float v10, v6, v7

    .line 122
    .local v10, "cellVerticalShadowHeight":F
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/smartisanos/launcher/view/BatchShadow;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v6, v6, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    const/high16 v7, 0x41900000    # 18.0f

    add-float v9, v6, v7

    .line 123
    .local v9, "cellHorizonShadowWidth":F
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/smartisanos/launcher/view/BatchShadow;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v8, v6, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    .line 125
    .local v8, "cellHorizonShadowHeight":F
    mul-int v6, v12, v22

    mul-int/lit8 v6, v6, 0x4

    mul-int/lit8 v21, v6, 0x2

    .line 126
    .local v21, "pointNum":I
    mul-int/lit8 v6, v21, 0x3

    new-array v3, v6, [F

    .line 127
    .local v3, "points":[F
    mul-int/lit8 v6, v21, 0x2

    new-array v4, v6, [F

    .line 128
    .local v4, "texPoints":[F
    move/from16 v0, v21

    new-array v0, v0, [F

    move-object/from16 v20, v0

    .line 129
    .local v20, "matIndexArray":[F
    const/16 v18, 0x0

    .line 130
    .local v18, "k":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_1
    move/from16 v0, v22

    if-ge v15, v0, :cond_2

    .line 131
    const/16 v17, 0x0

    .local v17, "j":I
    move/from16 v19, v18

    .end local v18    # "k":I
    .local v19, "k":I
    :goto_2
    move/from16 v0, v17

    if-ge v0, v12, :cond_1

    .line 132
    move/from16 v0, v17

    invoke-static {v15, v0}, Lcom/smartisanos/launcher/view/Page;->getCellIndex(II)I

    move-result v16

    .line 133
    .local v16, "index":I
    sget-object v6, Lcom/smartisanos/launcher/data/Constants;->pageCellCenterPoints:[Lcom/smartisanos/smengine/math/Vector3f;

    aget-object v24, v6, v16

    .line 136
    .local v24, "v":Lcom/smartisanos/smengine/math/Vector3f;
    new-instance v34, Lcom/smartisanos/smengine/math/Vector3f;

    neg-float v6, v11

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    neg-float v7, v10

    const/high16 v35, 0x40000000    # 2.0f

    div-float v7, v7, v35

    const/16 v35, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v35

    invoke-direct {v0, v6, v7, v1}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    .line 137
    .local v34, "verticalMinPoint":Lcom/smartisanos/smengine/math/Vector3f;
    new-instance v33, Lcom/smartisanos/smengine/math/Vector3f;

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v11, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float v7, v10, v7

    const/16 v35, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v35

    invoke-direct {v0, v6, v7, v1}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    .line 138
    .local v33, "verticalMaxPoint":Lcom/smartisanos/smengine/math/Vector3f;
    add-int/lit8 v18, v19, 0x1

    .end local v19    # "k":I
    .restart local v18    # "k":I
    move-object/from16 v0, v34

    iget v6, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    aput v6, v3, v19

    .line 139
    add-int/lit8 v19, v18, 0x1

    .end local v18    # "k":I
    .restart local v19    # "k":I
    move-object/from16 v0, v34

    iget v6, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    aput v6, v3, v18

    .line 140
    add-int/lit8 v18, v19, 0x1

    .end local v19    # "k":I
    .restart local v18    # "k":I
    move-object/from16 v0, p0

    iget v6, v0, Lcom/smartisanos/launcher/view/BatchShadow;->mZ:F

    aput v6, v3, v19

    .line 142
    add-int/lit8 v19, v18, 0x1

    .end local v18    # "k":I
    .restart local v19    # "k":I
    move-object/from16 v0, v33

    iget v6, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    aput v6, v3, v18

    .line 143
    add-int/lit8 v18, v19, 0x1

    .end local v19    # "k":I
    .restart local v18    # "k":I
    move-object/from16 v0, v34

    iget v6, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    aput v6, v3, v19

    .line 144
    add-int/lit8 v19, v18, 0x1

    .end local v18    # "k":I
    .restart local v19    # "k":I
    move-object/from16 v0, p0

    iget v6, v0, Lcom/smartisanos/launcher/view/BatchShadow;->mZ:F

    aput v6, v3, v18

    .line 146
    add-int/lit8 v18, v19, 0x1

    .end local v19    # "k":I
    .restart local v18    # "k":I
    move-object/from16 v0, v33

    iget v6, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    aput v6, v3, v19

    .line 147
    add-int/lit8 v19, v18, 0x1

    .end local v18    # "k":I
    .restart local v19    # "k":I
    move-object/from16 v0, v33

    iget v6, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    aput v6, v3, v18

    .line 148
    add-int/lit8 v18, v19, 0x1

    .end local v19    # "k":I
    .restart local v18    # "k":I
    move-object/from16 v0, p0

    iget v6, v0, Lcom/smartisanos/launcher/view/BatchShadow;->mZ:F

    aput v6, v3, v19

    .line 150
    add-int/lit8 v19, v18, 0x1

    .end local v18    # "k":I
    .restart local v19    # "k":I
    move-object/from16 v0, v34

    iget v6, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    aput v6, v3, v18

    .line 151
    add-int/lit8 v18, v19, 0x1

    .end local v19    # "k":I
    .restart local v18    # "k":I
    move-object/from16 v0, v33

    iget v6, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    aput v6, v3, v19

    .line 152
    add-int/lit8 v19, v18, 0x1

    .end local v18    # "k":I
    .restart local v19    # "k":I
    move-object/from16 v0, p0

    iget v6, v0, Lcom/smartisanos/launcher/view/BatchShadow;->mZ:F

    aput v6, v3, v18

    .line 155
    new-instance v14, Lcom/smartisanos/smengine/math/Vector3f;

    neg-float v6, v9

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    neg-float v7, v8

    const/high16 v35, 0x40000000    # 2.0f

    div-float v7, v7, v35

    const/16 v35, 0x0

    move/from16 v0, v35

    invoke-direct {v14, v6, v7, v0}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    .line 156
    .local v14, "horizonMinPoint":Lcom/smartisanos/smengine/math/Vector3f;
    new-instance v13, Lcom/smartisanos/smengine/math/Vector3f;

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v9, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float v7, v8, v7

    const/16 v35, 0x0

    move/from16 v0, v35

    invoke-direct {v13, v6, v7, v0}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    .line 157
    .local v13, "horizonMaxPoint":Lcom/smartisanos/smengine/math/Vector3f;
    add-int/lit8 v18, v19, 0x1

    .end local v19    # "k":I
    .restart local v18    # "k":I
    iget v6, v14, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    aput v6, v3, v19

    .line 158
    add-int/lit8 v19, v18, 0x1

    .end local v18    # "k":I
    .restart local v19    # "k":I
    iget v6, v14, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    aput v6, v3, v18

    .line 159
    add-int/lit8 v18, v19, 0x1

    .end local v19    # "k":I
    .restart local v18    # "k":I
    move-object/from16 v0, p0

    iget v6, v0, Lcom/smartisanos/launcher/view/BatchShadow;->mZ:F

    aput v6, v3, v19

    .line 161
    add-int/lit8 v19, v18, 0x1

    .end local v18    # "k":I
    .restart local v19    # "k":I
    iget v6, v13, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    aput v6, v3, v18

    .line 162
    add-int/lit8 v18, v19, 0x1

    .end local v19    # "k":I
    .restart local v18    # "k":I
    iget v6, v14, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    aput v6, v3, v19

    .line 163
    add-int/lit8 v19, v18, 0x1

    .end local v18    # "k":I
    .restart local v19    # "k":I
    move-object/from16 v0, p0

    iget v6, v0, Lcom/smartisanos/launcher/view/BatchShadow;->mZ:F

    aput v6, v3, v18

    .line 165
    add-int/lit8 v18, v19, 0x1

    .end local v19    # "k":I
    .restart local v18    # "k":I
    iget v6, v13, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    aput v6, v3, v19

    .line 166
    add-int/lit8 v19, v18, 0x1

    .end local v18    # "k":I
    .restart local v19    # "k":I
    iget v6, v13, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    aput v6, v3, v18

    .line 167
    add-int/lit8 v18, v19, 0x1

    .end local v19    # "k":I
    .restart local v18    # "k":I
    move-object/from16 v0, p0

    iget v6, v0, Lcom/smartisanos/launcher/view/BatchShadow;->mZ:F

    aput v6, v3, v19

    .line 169
    add-int/lit8 v19, v18, 0x1

    .end local v18    # "k":I
    .restart local v19    # "k":I
    iget v6, v14, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    aput v6, v3, v18

    .line 170
    add-int/lit8 v18, v19, 0x1

    .end local v19    # "k":I
    .restart local v18    # "k":I
    iget v6, v13, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    aput v6, v3, v19

    .line 171
    add-int/lit8 v19, v18, 0x1

    .end local v18    # "k":I
    .restart local v19    # "k":I
    move-object/from16 v0, p0

    iget v6, v0, Lcom/smartisanos/launcher/view/BatchShadow;->mZ:F

    aput v6, v3, v18

    .line 131
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_2

    .line 130
    .end local v13    # "horizonMaxPoint":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v14    # "horizonMinPoint":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v16    # "index":I
    .end local v24    # "v":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v33    # "verticalMaxPoint":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v34    # "verticalMinPoint":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_1
    add-int/lit8 v15, v15, 0x1

    move/from16 v18, v19

    .end local v19    # "k":I
    .restart local v18    # "k":I
    goto/16 :goto_1

    .line 175
    .end local v17    # "j":I
    :cond_2
    const/16 v18, 0x0

    .line 176
    const/4 v15, 0x0

    :goto_3
    move/from16 v0, v22

    if-ge v15, v0, :cond_4

    .line 177
    const/16 v17, 0x0

    .restart local v17    # "j":I
    move/from16 v19, v18

    .end local v18    # "k":I
    .restart local v19    # "k":I
    :goto_4
    move/from16 v0, v17

    if-ge v0, v12, :cond_3

    .line 178
    new-instance v23, Lcom/smartisanos/smengine/RenderTarget$UV;

    invoke-direct/range {v23 .. v23}, Lcom/smartisanos/smengine/RenderTarget$UV;-><init>()V

    .line 179
    .local v23, "uv":Lcom/smartisanos/smengine/RenderTarget$UV;
    const/4 v6, 0x2

    new-array v6, v6, [F

    move-object/from16 v0, v23

    iput-object v6, v0, Lcom/smartisanos/smengine/RenderTarget$UV;->u:[F

    .line 180
    const/4 v6, 0x2

    new-array v6, v6, [F

    move-object/from16 v0, v23

    iput-object v6, v0, Lcom/smartisanos/smengine/RenderTarget$UV;->v:[F

    .line 183
    add-int/lit8 v18, v19, 0x1

    .end local v19    # "k":I
    .restart local v18    # "k":I
    const/high16 v6, 0x3d100000    # 0.03515625f

    aput v6, v4, v19

    .line 184
    add-int/lit8 v19, v18, 0x1

    .end local v18    # "k":I
    .restart local v19    # "k":I
    const/4 v6, 0x0

    aput v6, v4, v18

    .line 186
    add-int/lit8 v18, v19, 0x1

    .end local v19    # "k":I
    .restart local v18    # "k":I
    const/high16 v6, 0x3f770000    # 0.96484375f

    aput v6, v4, v19

    .line 187
    add-int/lit8 v19, v18, 0x1

    .end local v18    # "k":I
    .restart local v19    # "k":I
    const/4 v6, 0x0

    aput v6, v4, v18

    .line 189
    add-int/lit8 v18, v19, 0x1

    .end local v19    # "k":I
    .restart local v18    # "k":I
    const/high16 v6, 0x3f770000    # 0.96484375f

    aput v6, v4, v19

    .line 190
    add-int/lit8 v19, v18, 0x1

    .end local v18    # "k":I
    .restart local v19    # "k":I
    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v4, v18

    .line 192
    add-int/lit8 v18, v19, 0x1

    .end local v19    # "k":I
    .restart local v18    # "k":I
    const/high16 v6, 0x3d100000    # 0.03515625f

    aput v6, v4, v19

    .line 193
    add-int/lit8 v19, v18, 0x1

    .end local v18    # "k":I
    .restart local v19    # "k":I
    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v4, v18

    .line 196
    add-int/lit8 v18, v19, 0x1

    .end local v19    # "k":I
    .restart local v18    # "k":I
    const/4 v6, 0x0

    aput v6, v4, v19

    .line 197
    add-int/lit8 v19, v18, 0x1

    .end local v18    # "k":I
    .restart local v19    # "k":I
    const v6, 0x3ce5aea7

    aput v6, v4, v18

    .line 199
    add-int/lit8 v18, v19, 0x1

    .end local v19    # "k":I
    .restart local v18    # "k":I
    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v4, v19

    .line 200
    add-int/lit8 v19, v18, 0x1

    .end local v18    # "k":I
    .restart local v19    # "k":I
    const v6, 0x3ce5aea7

    aput v6, v4, v18

    .line 202
    add-int/lit8 v18, v19, 0x1

    .end local v19    # "k":I
    .restart local v18    # "k":I
    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v4, v19

    .line 203
    add-int/lit8 v19, v18, 0x1

    .end local v18    # "k":I
    .restart local v19    # "k":I
    const v6, 0x3f78d28b

    aput v6, v4, v18

    .line 205
    add-int/lit8 v18, v19, 0x1

    .end local v19    # "k":I
    .restart local v18    # "k":I
    const/4 v6, 0x0

    aput v6, v4, v19

    .line 206
    add-int/lit8 v19, v18, 0x1

    .end local v18    # "k":I
    .restart local v19    # "k":I
    const v6, 0x3f78d28b

    aput v6, v4, v18

    .line 177
    add-int/lit8 v17, v17, 0x1

    goto :goto_4

    .line 176
    .end local v23    # "uv":Lcom/smartisanos/smengine/RenderTarget$UV;
    :cond_3
    add-int/lit8 v15, v15, 0x1

    move/from16 v18, v19

    .end local v19    # "k":I
    .restart local v18    # "k":I
    goto/16 :goto_3

    .line 209
    .end local v17    # "j":I
    :cond_4
    const/16 v18, 0x0

    .line 210
    const/4 v15, 0x0

    :goto_5
    move/from16 v0, v22

    if-ge v15, v0, :cond_6

    .line 211
    const/16 v17, 0x0

    .restart local v17    # "j":I
    move/from16 v19, v18

    .end local v18    # "k":I
    .restart local v19    # "k":I
    :goto_6
    move/from16 v0, v17

    if-ge v0, v12, :cond_5

    .line 212
    move/from16 v0, v17

    invoke-static {v15, v0}, Lcom/smartisanos/launcher/view/Page;->getCellIndex(II)I

    move-result v16

    .line 214
    .restart local v16    # "index":I
    add-int/lit8 v18, v19, 0x1

    .end local v19    # "k":I
    .restart local v18    # "k":I
    move/from16 v0, v16

    int-to-float v6, v0

    aput v6, v20, v19

    .line 215
    add-int/lit8 v19, v18, 0x1

    .end local v18    # "k":I
    .restart local v19    # "k":I
    move/from16 v0, v16

    int-to-float v6, v0

    aput v6, v20, v18

    .line 216
    add-int/lit8 v18, v19, 0x1

    .end local v19    # "k":I
    .restart local v18    # "k":I
    move/from16 v0, v16

    int-to-float v6, v0

    aput v6, v20, v19

    .line 217
    add-int/lit8 v19, v18, 0x1

    .end local v18    # "k":I
    .restart local v19    # "k":I
    move/from16 v0, v16

    int-to-float v6, v0

    aput v6, v20, v18

    .line 220
    add-int/lit8 v18, v19, 0x1

    .end local v19    # "k":I
    .restart local v18    # "k":I
    move/from16 v0, v16

    int-to-float v6, v0

    aput v6, v20, v19

    .line 221
    add-int/lit8 v19, v18, 0x1

    .end local v18    # "k":I
    .restart local v19    # "k":I
    move/from16 v0, v16

    int-to-float v6, v0

    aput v6, v20, v18

    .line 222
    add-int/lit8 v18, v19, 0x1

    .end local v19    # "k":I
    .restart local v18    # "k":I
    move/from16 v0, v16

    int-to-float v6, v0

    aput v6, v20, v19

    .line 223
    add-int/lit8 v19, v18, 0x1

    .end local v18    # "k":I
    .restart local v19    # "k":I
    move/from16 v0, v16

    int-to-float v6, v0

    aput v6, v20, v18

    .line 211
    add-int/lit8 v17, v17, 0x1

    goto :goto_6

    .line 210
    .end local v16    # "index":I
    :cond_5
    add-int/lit8 v15, v15, 0x1

    move/from16 v18, v19

    .end local v19    # "k":I
    .restart local v18    # "k":I
    goto :goto_5

    .line 226
    .end local v17    # "j":I
    :cond_6
    mul-int v6, v12, v22

    mul-int/lit8 v6, v6, 0x2

    mul-int/lit8 v6, v6, 0x3

    mul-int/lit8 v6, v6, 0x2

    new-array v5, v6, [S

    .line 227
    .local v5, "faces":[S
    const/16 v18, 0x0

    .line 228
    const/4 v15, 0x0

    :goto_7
    move/from16 v0, v22

    if-ge v15, v0, :cond_8

    .line 229
    const/16 v17, 0x0

    .restart local v17    # "j":I
    move/from16 v19, v18

    .end local v18    # "k":I
    .restart local v19    # "k":I
    :goto_8
    move/from16 v0, v17

    if-ge v0, v12, :cond_7

    .line 230
    mul-int v6, v15, v12

    mul-int/lit8 v6, v6, 0x8

    mul-int/lit8 v7, v17, 0x8

    add-int/2addr v6, v7

    int-to-short v0, v6

    move/from16 v25, v0

    .line 231
    .local v25, "v0":S
    add-int/lit8 v6, v25, 0x1

    int-to-short v0, v6

    move/from16 v26, v0

    .line 232
    .local v26, "v1":S
    add-int/lit8 v6, v26, 0x1

    int-to-short v0, v6

    move/from16 v27, v0

    .line 233
    .local v27, "v2":S
    add-int/lit8 v6, v27, 0x1

    int-to-short v0, v6

    move/from16 v28, v0

    .line 235
    .local v28, "v3":S
    add-int/lit8 v18, v19, 0x1

    .end local v19    # "k":I
    .restart local v18    # "k":I
    aput-short v25, v5, v19

    .line 236
    add-int/lit8 v19, v18, 0x1

    .end local v18    # "k":I
    .restart local v19    # "k":I
    aput-short v26, v5, v18

    .line 237
    add-int/lit8 v18, v19, 0x1

    .end local v19    # "k":I
    .restart local v18    # "k":I
    aput-short v27, v5, v19

    .line 238
    add-int/lit8 v19, v18, 0x1

    .end local v18    # "k":I
    .restart local v19    # "k":I
    aput-short v25, v5, v18

    .line 239
    add-int/lit8 v18, v19, 0x1

    .end local v19    # "k":I
    .restart local v18    # "k":I
    aput-short v27, v5, v19

    .line 240
    add-int/lit8 v19, v18, 0x1

    .end local v18    # "k":I
    .restart local v19    # "k":I
    aput-short v28, v5, v18

    .line 242
    add-int/lit8 v6, v28, 0x1

    int-to-short v0, v6

    move/from16 v29, v0

    .line 243
    .local v29, "v4":S
    add-int/lit8 v6, v29, 0x1

    int-to-short v0, v6

    move/from16 v30, v0

    .line 244
    .local v30, "v5":S
    add-int/lit8 v6, v30, 0x1

    int-to-short v0, v6

    move/from16 v31, v0

    .line 245
    .local v31, "v6":S
    add-int/lit8 v6, v31, 0x1

    int-to-short v0, v6

    move/from16 v32, v0

    .line 247
    .local v32, "v7":S
    add-int/lit8 v18, v19, 0x1

    .end local v19    # "k":I
    .restart local v18    # "k":I
    aput-short v29, v5, v19

    .line 248
    add-int/lit8 v19, v18, 0x1

    .end local v18    # "k":I
    .restart local v19    # "k":I
    aput-short v30, v5, v18

    .line 249
    add-int/lit8 v18, v19, 0x1

    .end local v19    # "k":I
    .restart local v18    # "k":I
    aput-short v31, v5, v19

    .line 250
    add-int/lit8 v19, v18, 0x1

    .end local v18    # "k":I
    .restart local v19    # "k":I
    aput-short v29, v5, v18

    .line 251
    add-int/lit8 v18, v19, 0x1

    .end local v19    # "k":I
    .restart local v18    # "k":I
    aput-short v31, v5, v19

    .line 252
    add-int/lit8 v19, v18, 0x1

    .end local v18    # "k":I
    .restart local v19    # "k":I
    aput-short v32, v5, v18

    .line 229
    add-int/lit8 v17, v17, 0x1

    goto :goto_8

    .line 228
    .end local v25    # "v0":S
    .end local v26    # "v1":S
    .end local v27    # "v2":S
    .end local v28    # "v3":S
    .end local v29    # "v4":S
    .end local v30    # "v5":S
    .end local v31    # "v6":S
    .end local v32    # "v7":S
    :cond_7
    add-int/lit8 v15, v15, 0x1

    move/from16 v18, v19

    .end local v19    # "k":I
    .restart local v18    # "k":I
    goto :goto_7

    .line 255
    .end local v17    # "j":I
    :cond_8
    new-instance v2, Lcom/smartisanos/smengine/Mesh;

    .end local v2    # "mesh":Lcom/smartisanos/smengine/Mesh;
    invoke-direct {v2}, Lcom/smartisanos/smengine/Mesh;-><init>()V

    .line 256
    .restart local v2    # "mesh":Lcom/smartisanos/smengine/Mesh;
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/smartisanos/smengine/Mesh;->create([F[F[S[FZ)V

    .line 257
    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/smartisanos/smengine/Mesh;->setMatIndexArray([F)V

    .line 258
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/smengine/World;->getMeshManager()Lcom/smartisanos/smengine/MeshManager;

    move-result-object v6

    const-string v7, "2RECT_SHADOW_MESH_BATCH_9_CELLS"

    invoke-virtual {v6, v7, v2}, Lcom/smartisanos/smengine/MeshManager;->addMesh(Ljava/lang/String;Lcom/smartisanos/smengine/Mesh;)Lcom/smartisanos/smengine/Mesh;

    .line 260
    .end local v3    # "points":[F
    .end local v4    # "texPoints":[F
    .end local v5    # "faces":[S
    .end local v8    # "cellHorizonShadowHeight":F
    .end local v9    # "cellHorizonShadowWidth":F
    .end local v10    # "cellVerticalShadowHeight":F
    .end local v11    # "cellVerticalShadowWidth":F
    .end local v12    # "colNum":I
    .end local v15    # "i":I
    .end local v18    # "k":I
    .end local v20    # "matIndexArray":[F
    .end local v21    # "pointNum":I
    .end local v22    # "rowNum":I
    :cond_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/BatchShadow;->setMesh(Lcom/smartisanos/smengine/Mesh;)V

    goto/16 :goto_0
.end method

.method private createBatchShadowMesh()V
    .locals 29

    .prologue
    .line 265
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/BatchShadow;->getMesh()Lcom/smartisanos/smengine/Mesh;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 364
    :goto_0
    return-void

    .line 268
    :cond_0
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/smengine/World;->getMeshManager()Lcom/smartisanos/smengine/MeshManager;

    move-result-object v6

    const-string v7, "SHADOW_MESH_BATCH_9_CELLS"

    invoke-virtual {v6, v7}, Lcom/smartisanos/smengine/MeshManager;->getMesh(Ljava/lang/String;)Lcom/smartisanos/smengine/Mesh;

    move-result-object v2

    .line 269
    .local v2, "mesh":Lcom/smartisanos/smengine/Mesh;
    if-nez v2, :cond_9

    .line 270
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/smartisanos/launcher/view/BatchShadow;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v10, v6, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_col_num:I

    .line 271
    .local v10, "colNum":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/smartisanos/launcher/view/BatchShadow;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v0, v6, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_row_num:I

    move/from16 v21, v0

    .line 273
    .local v21, "rowNum":I
    sget v6, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static {v6}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v16

    .line 274
    .local v16, "lp":Lcom/smartisanos/launcher/data/LayoutProperty;
    move-object/from16 v0, v16

    iget v6, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    move-object/from16 v0, v16

    iget v7, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_normal_shadow_image_width:F

    mul-float/2addr v6, v7

    move-object/from16 v0, v16

    iget v7, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_normal_shadow_image_content_width:F

    div-float v9, v6, v7

    .line 276
    .local v9, "cellShadowWidth":F
    move-object/from16 v0, v16

    iget v6, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    move-object/from16 v0, v16

    iget v7, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_normal_shadow_image_height:F

    mul-float/2addr v6, v7

    move-object/from16 v0, v16

    iget v7, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_normal_shadow_image_content_height:F

    div-float v8, v6, v7

    .line 278
    .local v8, "cellShadowHeight":F
    mul-int v6, v10, v21

    mul-int/lit8 v20, v6, 0x4

    .line 279
    .local v20, "pointNum":I
    mul-int/lit8 v6, v20, 0x3

    new-array v3, v6, [F

    .line 280
    .local v3, "points":[F
    mul-int/lit8 v6, v20, 0x2

    new-array v4, v6, [F

    .line 281
    .local v4, "texPoints":[F
    move/from16 v0, v20

    new-array v0, v0, [F

    move-object/from16 v17, v0

    .line 282
    .local v17, "matIndexArray":[F
    const/4 v14, 0x0

    .line 283
    .local v14, "k":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    move/from16 v0, v21

    if-ge v11, v0, :cond_2

    .line 284
    const/4 v13, 0x0

    .local v13, "j":I
    move v15, v14

    .end local v14    # "k":I
    .local v15, "k":I
    :goto_2
    if-ge v13, v10, :cond_1

    .line 285
    invoke-static {v11, v13}, Lcom/smartisanos/launcher/view/Page;->getCellIndex(II)I

    move-result v12

    .line 286
    .local v12, "index":I
    sget-object v6, Lcom/smartisanos/launcher/data/Constants;->pageCellCenterPoints:[Lcom/smartisanos/smengine/math/Vector3f;

    aget-object v23, v6, v12

    .line 288
    .local v23, "v":Lcom/smartisanos/smengine/math/Vector3f;
    new-instance v19, Lcom/smartisanos/smengine/math/Vector3f;

    neg-float v6, v9

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    neg-float v7, v8

    const/high16 v28, 0x40000000    # 2.0f

    div-float v7, v7, v28

    const/16 v28, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v28

    invoke-direct {v0, v6, v7, v1}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    .line 289
    .local v19, "minPoint":Lcom/smartisanos/smengine/math/Vector3f;
    new-instance v18, Lcom/smartisanos/smengine/math/Vector3f;

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v9, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float v7, v8, v7

    const/16 v28, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v28

    invoke-direct {v0, v6, v7, v1}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    .line 290
    .local v18, "maxPoint":Lcom/smartisanos/smengine/math/Vector3f;
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "k":I
    .restart local v14    # "k":I
    move-object/from16 v0, v19

    iget v6, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    aput v6, v3, v15

    .line 291
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "k":I
    .restart local v15    # "k":I
    move-object/from16 v0, v19

    iget v6, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    aput v6, v3, v14

    .line 292
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "k":I
    .restart local v14    # "k":I
    move-object/from16 v0, p0

    iget v6, v0, Lcom/smartisanos/launcher/view/BatchShadow;->mZ:F

    aput v6, v3, v15

    .line 294
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "k":I
    .restart local v15    # "k":I
    move-object/from16 v0, v18

    iget v6, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    aput v6, v3, v14

    .line 295
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "k":I
    .restart local v14    # "k":I
    move-object/from16 v0, v19

    iget v6, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    aput v6, v3, v15

    .line 296
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "k":I
    .restart local v15    # "k":I
    move-object/from16 v0, p0

    iget v6, v0, Lcom/smartisanos/launcher/view/BatchShadow;->mZ:F

    aput v6, v3, v14

    .line 298
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "k":I
    .restart local v14    # "k":I
    move-object/from16 v0, v18

    iget v6, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    aput v6, v3, v15

    .line 299
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "k":I
    .restart local v15    # "k":I
    move-object/from16 v0, v18

    iget v6, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    aput v6, v3, v14

    .line 300
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "k":I
    .restart local v14    # "k":I
    move-object/from16 v0, p0

    iget v6, v0, Lcom/smartisanos/launcher/view/BatchShadow;->mZ:F

    aput v6, v3, v15

    .line 302
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "k":I
    .restart local v15    # "k":I
    move-object/from16 v0, v19

    iget v6, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    aput v6, v3, v14

    .line 303
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "k":I
    .restart local v14    # "k":I
    move-object/from16 v0, v18

    iget v6, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    aput v6, v3, v15

    .line 304
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "k":I
    .restart local v15    # "k":I
    move-object/from16 v0, p0

    iget v6, v0, Lcom/smartisanos/launcher/view/BatchShadow;->mZ:F

    aput v6, v3, v14

    .line 284
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2

    .line 283
    .end local v12    # "index":I
    .end local v18    # "maxPoint":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v19    # "minPoint":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v23    # "v":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_1
    add-int/lit8 v11, v11, 0x1

    move v14, v15

    .end local v15    # "k":I
    .restart local v14    # "k":I
    goto/16 :goto_1

    .line 308
    .end local v13    # "j":I
    :cond_2
    const/4 v14, 0x0

    .line 309
    const/4 v11, 0x0

    :goto_3
    move/from16 v0, v21

    if-ge v11, v0, :cond_4

    .line 310
    const/4 v13, 0x0

    .restart local v13    # "j":I
    move v15, v14

    .end local v14    # "k":I
    .restart local v15    # "k":I
    :goto_4
    if-ge v13, v10, :cond_3

    .line 311
    new-instance v22, Lcom/smartisanos/smengine/RenderTarget$UV;

    invoke-direct/range {v22 .. v22}, Lcom/smartisanos/smengine/RenderTarget$UV;-><init>()V

    .line 312
    .local v22, "uv":Lcom/smartisanos/smengine/RenderTarget$UV;
    const/4 v6, 0x2

    new-array v6, v6, [F

    move-object/from16 v0, v22

    iput-object v6, v0, Lcom/smartisanos/smengine/RenderTarget$UV;->u:[F

    .line 313
    const/4 v6, 0x2

    new-array v6, v6, [F

    move-object/from16 v0, v22

    iput-object v6, v0, Lcom/smartisanos/smengine/RenderTarget$UV;->v:[F

    .line 314
    move-object/from16 v0, v22

    iget-object v6, v0, Lcom/smartisanos/smengine/RenderTarget$UV;->u:[F

    const/4 v7, 0x0

    const/high16 v28, 0x3f800000    # 1.0f

    aput v28, v6, v7

    .line 315
    move-object/from16 v0, v22

    iget-object v6, v0, Lcom/smartisanos/smengine/RenderTarget$UV;->u:[F

    const/4 v7, 0x1

    const/16 v28, 0x0

    aput v28, v6, v7

    .line 316
    move-object/from16 v0, v22

    iget-object v6, v0, Lcom/smartisanos/smengine/RenderTarget$UV;->v:[F

    const/4 v7, 0x0

    const/high16 v28, 0x3f800000    # 1.0f

    aput v28, v6, v7

    .line 317
    move-object/from16 v0, v22

    iget-object v6, v0, Lcom/smartisanos/smengine/RenderTarget$UV;->v:[F

    const/4 v7, 0x1

    const/16 v28, 0x0

    aput v28, v6, v7

    .line 319
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "k":I
    .restart local v14    # "k":I
    move-object/from16 v0, v22

    iget-object v6, v0, Lcom/smartisanos/smengine/RenderTarget$UV;->u:[F

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v4, v15

    .line 320
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "k":I
    .restart local v15    # "k":I
    move-object/from16 v0, v22

    iget-object v6, v0, Lcom/smartisanos/smengine/RenderTarget$UV;->v:[F

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v4, v14

    .line 322
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "k":I
    .restart local v14    # "k":I
    move-object/from16 v0, v22

    iget-object v6, v0, Lcom/smartisanos/smengine/RenderTarget$UV;->u:[F

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v4, v15

    .line 323
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "k":I
    .restart local v15    # "k":I
    move-object/from16 v0, v22

    iget-object v6, v0, Lcom/smartisanos/smengine/RenderTarget$UV;->v:[F

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v4, v14

    .line 325
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "k":I
    .restart local v14    # "k":I
    move-object/from16 v0, v22

    iget-object v6, v0, Lcom/smartisanos/smengine/RenderTarget$UV;->u:[F

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v4, v15

    .line 326
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "k":I
    .restart local v15    # "k":I
    move-object/from16 v0, v22

    iget-object v6, v0, Lcom/smartisanos/smengine/RenderTarget$UV;->v:[F

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v4, v14

    .line 328
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "k":I
    .restart local v14    # "k":I
    move-object/from16 v0, v22

    iget-object v6, v0, Lcom/smartisanos/smengine/RenderTarget$UV;->u:[F

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v4, v15

    .line 329
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "k":I
    .restart local v15    # "k":I
    move-object/from16 v0, v22

    iget-object v6, v0, Lcom/smartisanos/smengine/RenderTarget$UV;->v:[F

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v4, v14

    .line 310
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_4

    .line 309
    .end local v22    # "uv":Lcom/smartisanos/smengine/RenderTarget$UV;
    :cond_3
    add-int/lit8 v11, v11, 0x1

    move v14, v15

    .end local v15    # "k":I
    .restart local v14    # "k":I
    goto/16 :goto_3

    .line 332
    .end local v13    # "j":I
    :cond_4
    const/4 v14, 0x0

    .line 333
    const/4 v11, 0x0

    :goto_5
    move/from16 v0, v21

    if-ge v11, v0, :cond_6

    .line 334
    const/4 v13, 0x0

    .restart local v13    # "j":I
    move v15, v14

    .end local v14    # "k":I
    .restart local v15    # "k":I
    :goto_6
    if-ge v13, v10, :cond_5

    .line 335
    invoke-static {v11, v13}, Lcom/smartisanos/launcher/view/Page;->getCellIndex(II)I

    move-result v12

    .line 336
    .restart local v12    # "index":I
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "k":I
    .restart local v14    # "k":I
    int-to-float v6, v12

    aput v6, v17, v15

    .line 337
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "k":I
    .restart local v15    # "k":I
    int-to-float v6, v12

    aput v6, v17, v14

    .line 338
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "k":I
    .restart local v14    # "k":I
    int-to-float v6, v12

    aput v6, v17, v15

    .line 339
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "k":I
    .restart local v15    # "k":I
    int-to-float v6, v12

    aput v6, v17, v14

    .line 334
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 333
    .end local v12    # "index":I
    :cond_5
    add-int/lit8 v11, v11, 0x1

    move v14, v15

    .end local v15    # "k":I
    .restart local v14    # "k":I
    goto :goto_5

    .line 342
    .end local v13    # "j":I
    :cond_6
    mul-int v6, v10, v21

    mul-int/lit8 v6, v6, 0x2

    mul-int/lit8 v6, v6, 0x3

    new-array v5, v6, [S

    .line 343
    .local v5, "faces":[S
    const/4 v14, 0x0

    .line 344
    const/4 v11, 0x0

    :goto_7
    move/from16 v0, v21

    if-ge v11, v0, :cond_8

    .line 345
    const/4 v13, 0x0

    .restart local v13    # "j":I
    move v15, v14

    .end local v14    # "k":I
    .restart local v15    # "k":I
    :goto_8
    if-ge v13, v10, :cond_7

    .line 346
    mul-int v6, v11, v10

    mul-int/lit8 v6, v6, 0x4

    mul-int/lit8 v7, v13, 0x4

    add-int/2addr v6, v7

    int-to-short v0, v6

    move/from16 v24, v0

    .line 347
    .local v24, "v0":S
    add-int/lit8 v6, v24, 0x1

    int-to-short v0, v6

    move/from16 v25, v0

    .line 348
    .local v25, "v1":S
    add-int/lit8 v6, v25, 0x1

    int-to-short v0, v6

    move/from16 v26, v0

    .line 349
    .local v26, "v2":S
    add-int/lit8 v6, v26, 0x1

    int-to-short v0, v6

    move/from16 v27, v0

    .line 350
    .local v27, "v3":S
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "k":I
    .restart local v14    # "k":I
    aput-short v24, v5, v15

    .line 351
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "k":I
    .restart local v15    # "k":I
    aput-short v25, v5, v14

    .line 352
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "k":I
    .restart local v14    # "k":I
    aput-short v26, v5, v15

    .line 353
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "k":I
    .restart local v15    # "k":I
    aput-short v24, v5, v14

    .line 354
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "k":I
    .restart local v14    # "k":I
    aput-short v26, v5, v15

    .line 355
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "k":I
    .restart local v15    # "k":I
    aput-short v27, v5, v14

    .line 345
    add-int/lit8 v13, v13, 0x1

    goto :goto_8

    .line 344
    .end local v24    # "v0":S
    .end local v25    # "v1":S
    .end local v26    # "v2":S
    .end local v27    # "v3":S
    :cond_7
    add-int/lit8 v11, v11, 0x1

    move v14, v15

    .end local v15    # "k":I
    .restart local v14    # "k":I
    goto :goto_7

    .line 358
    .end local v13    # "j":I
    :cond_8
    new-instance v2, Lcom/smartisanos/smengine/Mesh;

    .end local v2    # "mesh":Lcom/smartisanos/smengine/Mesh;
    invoke-direct {v2}, Lcom/smartisanos/smengine/Mesh;-><init>()V

    .line 359
    .restart local v2    # "mesh":Lcom/smartisanos/smengine/Mesh;
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/smartisanos/smengine/Mesh;->create([F[F[S[FZ)V

    .line 360
    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/smartisanos/smengine/Mesh;->setMatIndexArray([F)V

    .line 361
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/smengine/World;->getMeshManager()Lcom/smartisanos/smengine/MeshManager;

    move-result-object v6

    const-string v7, "SHADOW_MESH_BATCH_9_CELLS"

    invoke-virtual {v6, v7, v2}, Lcom/smartisanos/smengine/MeshManager;->addMesh(Ljava/lang/String;Lcom/smartisanos/smengine/Mesh;)Lcom/smartisanos/smengine/Mesh;

    .line 363
    .end local v3    # "points":[F
    .end local v4    # "texPoints":[F
    .end local v5    # "faces":[S
    .end local v8    # "cellShadowHeight":F
    .end local v9    # "cellShadowWidth":F
    .end local v10    # "colNum":I
    .end local v11    # "i":I
    .end local v14    # "k":I
    .end local v16    # "lp":Lcom/smartisanos/launcher/data/LayoutProperty;
    .end local v17    # "matIndexArray":[F
    .end local v20    # "pointNum":I
    .end local v21    # "rowNum":I
    :cond_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/BatchShadow;->setMesh(Lcom/smartisanos/smengine/Mesh;)V

    goto/16 :goto_0
.end method

.method private createOctalBatchShadowMesh()V
    .locals 66

    .prologue
    .line 367
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/BatchShadow;->getMesh()Lcom/smartisanos/smengine/Mesh;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 587
    :goto_0
    return-void

    .line 370
    :cond_0
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/smengine/World;->getMeshManager()Lcom/smartisanos/smengine/MeshManager;

    move-result-object v5

    const-string v6, "OCT_SHADOW_MESH_BATCH_9_CELLS"

    invoke-virtual {v5, v6}, Lcom/smartisanos/smengine/MeshManager;->getMesh(Ljava/lang/String;)Lcom/smartisanos/smengine/Mesh;

    move-result-object v1

    .line 371
    .local v1, "mesh":Lcom/smartisanos/smengine/Mesh;
    if-nez v1, :cond_9

    .line 372
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/BatchShadow;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v9, v5, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_col_num:I

    .line 373
    .local v9, "colNum":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/BatchShadow;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v0, v5, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_row_num:I

    move/from16 v36, v0

    .line 376
    .local v36, "rowNum":I
    const/16 v17, 0x0

    .line 377
    .local v17, "p0x":F
    const/16 v18, 0x0

    .line 379
    .local v18, "p0y":F
    const/high16 v19, -0x3d130000    # -118.5f

    .line 380
    .local v19, "p1x":F
    const v20, -0x3cd98000    # -166.5f

    .line 382
    .local v20, "p1y":F
    const/high16 v21, 0x42ed0000    # 118.5f

    .line 383
    .local v21, "p2x":F
    const v22, -0x3cd98000    # -166.5f

    .line 385
    .local v22, "p2y":F
    const v23, 0x43058000    # 133.5f

    .line 386
    .local v23, "p3x":F
    const v24, -0x3ce88000    # -151.5f

    .line 388
    .local v24, "p3y":F
    const v25, 0x43058000    # 133.5f

    .line 389
    .local v25, "p4x":F
    const v26, 0x43178000    # 151.5f

    .line 391
    .local v26, "p4y":F
    const/high16 v27, 0x42ed0000    # 118.5f

    .line 392
    .local v27, "p5x":F
    const v28, 0x43268000    # 166.5f

    .line 394
    .local v28, "p5y":F
    const/high16 v29, -0x3d130000    # -118.5f

    .line 395
    .local v29, "p6x":F
    const v30, 0x43268000    # 166.5f

    .line 397
    .local v30, "p6y":F
    const v31, -0x3cfa8000    # -133.5f

    .line 398
    .local v31, "p7x":F
    const v32, 0x43178000    # 151.5f

    .line 400
    .local v32, "p7y":F
    const v33, -0x3cfa8000    # -133.5f

    .line 401
    .local v33, "p8x":F
    const v34, -0x3ce88000    # -151.5f

    .line 403
    .local v34, "p8y":F
    sget v5, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static {v5}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v15

    .line 404
    .local v15, "lp":Lcom/smartisanos/launcher/data/LayoutProperty;
    iget v8, v15, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_normal_shadow_image_width:F

    .line 405
    .local v8, "cellShadowWidth":F
    iget v7, v15, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_normal_shadow_image_height:F

    .line 406
    .local v7, "cellShadowHeight":F
    mul-int v5, v9, v36

    mul-int/lit8 v35, v5, 0x9

    .line 407
    .local v35, "pointNum":I
    mul-int/lit8 v5, v35, 0x3

    new-array v2, v5, [F

    .line 408
    .local v2, "points":[F
    mul-int/lit8 v5, v35, 0x2

    new-array v3, v5, [F

    .line 409
    .local v3, "texPoints":[F
    move/from16 v0, v35

    new-array v0, v0, [F

    move-object/from16 v16, v0

    .line 410
    .local v16, "matIndexArray":[F
    const/4 v13, 0x0

    .line 411
    .local v13, "k":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    move/from16 v0, v36

    if-ge v10, v0, :cond_2

    .line 412
    const/4 v12, 0x0

    .local v12, "j":I
    move v14, v13

    .end local v13    # "k":I
    .local v14, "k":I
    :goto_2
    if-ge v12, v9, :cond_1

    .line 413
    invoke-static {v10, v12}, Lcom/smartisanos/launcher/view/Page;->getCellIndex(II)I

    move-result v11

    .line 414
    .local v11, "index":I
    sget-object v5, Lcom/smartisanos/launcher/data/Constants;->pageCellCenterPoints:[Lcom/smartisanos/smengine/math/Vector3f;

    aget-object v56, v5, v11

    .line 416
    .local v56, "v":Lcom/smartisanos/smengine/math/Vector3f;
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "k":I
    .restart local v13    # "k":I
    aput v17, v2, v14

    .line 417
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "k":I
    .restart local v14    # "k":I
    aput v18, v2, v13

    .line 418
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "k":I
    .restart local v13    # "k":I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/smartisanos/launcher/view/BatchShadow;->mZ:F

    aput v5, v2, v14

    .line 420
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "k":I
    .restart local v14    # "k":I
    aput v19, v2, v13

    .line 421
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "k":I
    .restart local v13    # "k":I
    aput v20, v2, v14

    .line 422
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "k":I
    .restart local v14    # "k":I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/smartisanos/launcher/view/BatchShadow;->mZ:F

    aput v5, v2, v13

    .line 424
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "k":I
    .restart local v13    # "k":I
    aput v21, v2, v14

    .line 425
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "k":I
    .restart local v14    # "k":I
    aput v22, v2, v13

    .line 426
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "k":I
    .restart local v13    # "k":I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/smartisanos/launcher/view/BatchShadow;->mZ:F

    aput v5, v2, v14

    .line 428
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "k":I
    .restart local v14    # "k":I
    aput v23, v2, v13

    .line 429
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "k":I
    .restart local v13    # "k":I
    aput v24, v2, v14

    .line 430
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "k":I
    .restart local v14    # "k":I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/smartisanos/launcher/view/BatchShadow;->mZ:F

    aput v5, v2, v13

    .line 432
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "k":I
    .restart local v13    # "k":I
    aput v25, v2, v14

    .line 433
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "k":I
    .restart local v14    # "k":I
    aput v26, v2, v13

    .line 434
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "k":I
    .restart local v13    # "k":I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/smartisanos/launcher/view/BatchShadow;->mZ:F

    aput v5, v2, v14

    .line 436
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "k":I
    .restart local v14    # "k":I
    aput v27, v2, v13

    .line 437
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "k":I
    .restart local v13    # "k":I
    aput v28, v2, v14

    .line 438
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "k":I
    .restart local v14    # "k":I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/smartisanos/launcher/view/BatchShadow;->mZ:F

    aput v5, v2, v13

    .line 440
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "k":I
    .restart local v13    # "k":I
    aput v29, v2, v14

    .line 441
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "k":I
    .restart local v14    # "k":I
    aput v30, v2, v13

    .line 442
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "k":I
    .restart local v13    # "k":I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/smartisanos/launcher/view/BatchShadow;->mZ:F

    aput v5, v2, v14

    .line 444
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "k":I
    .restart local v14    # "k":I
    aput v31, v2, v13

    .line 445
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "k":I
    .restart local v13    # "k":I
    aput v32, v2, v14

    .line 446
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "k":I
    .restart local v14    # "k":I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/smartisanos/launcher/view/BatchShadow;->mZ:F

    aput v5, v2, v13

    .line 448
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "k":I
    .restart local v13    # "k":I
    aput v33, v2, v14

    .line 449
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "k":I
    .restart local v14    # "k":I
    aput v34, v2, v13

    .line 450
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "k":I
    .restart local v13    # "k":I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/smartisanos/launcher/view/BatchShadow;->mZ:F

    aput v5, v2, v14

    .line 412
    add-int/lit8 v12, v12, 0x1

    move v14, v13

    .end local v13    # "k":I
    .restart local v14    # "k":I
    goto/16 :goto_2

    .line 411
    .end local v11    # "index":I
    .end local v56    # "v":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_1
    add-int/lit8 v10, v10, 0x1

    move v13, v14

    .end local v14    # "k":I
    .restart local v13    # "k":I
    goto/16 :goto_1

    .line 455
    .end local v12    # "j":I
    :cond_2
    const/high16 v37, 0x3f000000    # 0.5f

    .line 456
    .local v37, "t0u":F
    const/high16 v38, 0x3f000000    # 0.5f

    .line 458
    .local v38, "t0v":F
    const v39, 0x3d661cc4

    .line 459
    .local v39, "t1u":F
    const/16 v40, 0x0

    .line 461
    .local v40, "t1v":F
    const v41, 0x3f719e34

    .line 462
    .local v41, "t2u":F
    const/16 v42, 0x0

    .line 464
    .local v42, "t2v":F
    const/high16 v43, 0x3f800000    # 1.0f

    .line 465
    .local v43, "t3u":F
    const v44, 0x3d388127

    .line 467
    .local v44, "t3v":F
    const/high16 v45, 0x3f800000    # 1.0f

    .line 468
    .local v45, "t4u":F
    const v46, 0x3f7477ee

    .line 470
    .local v46, "t4v":F
    move/from16 v47, v41

    .line 471
    .local v47, "t5u":F
    const/high16 v48, 0x3f800000    # 1.0f

    .line 473
    .local v48, "t5v":F
    move/from16 v49, v39

    .line 474
    .local v49, "t6u":F
    const/high16 v50, 0x3f800000    # 1.0f

    .line 476
    .local v50, "t6v":F
    const/16 v51, 0x0

    .line 477
    .local v51, "t7u":F
    move/from16 v52, v46

    .line 479
    .local v52, "t7v":F
    const/16 v53, 0x0

    .line 480
    .local v53, "t8u":F
    move/from16 v54, v44

    .line 482
    .local v54, "t8v":F
    const/4 v13, 0x0

    .line 483
    const/4 v10, 0x0

    :goto_3
    move/from16 v0, v36

    if-ge v10, v0, :cond_4

    .line 484
    const/4 v12, 0x0

    .restart local v12    # "j":I
    move v14, v13

    .end local v13    # "k":I
    .restart local v14    # "k":I
    :goto_4
    if-ge v12, v9, :cond_3

    .line 485
    new-instance v55, Lcom/smartisanos/smengine/RenderTarget$UV;

    invoke-direct/range {v55 .. v55}, Lcom/smartisanos/smengine/RenderTarget$UV;-><init>()V

    .line 487
    .local v55, "uv":Lcom/smartisanos/smengine/RenderTarget$UV;
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "k":I
    .restart local v13    # "k":I
    aput v37, v3, v14

    .line 488
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "k":I
    .restart local v14    # "k":I
    aput v38, v3, v13

    .line 490
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "k":I
    .restart local v13    # "k":I
    aput v39, v3, v14

    .line 491
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "k":I
    .restart local v14    # "k":I
    aput v40, v3, v13

    .line 493
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "k":I
    .restart local v13    # "k":I
    aput v41, v3, v14

    .line 494
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "k":I
    .restart local v14    # "k":I
    aput v42, v3, v13

    .line 496
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "k":I
    .restart local v13    # "k":I
    aput v43, v3, v14

    .line 497
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "k":I
    .restart local v14    # "k":I
    aput v44, v3, v13

    .line 499
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "k":I
    .restart local v13    # "k":I
    aput v45, v3, v14

    .line 500
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "k":I
    .restart local v14    # "k":I
    aput v46, v3, v13

    .line 502
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "k":I
    .restart local v13    # "k":I
    aput v47, v3, v14

    .line 503
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "k":I
    .restart local v14    # "k":I
    aput v48, v3, v13

    .line 505
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "k":I
    .restart local v13    # "k":I
    aput v49, v3, v14

    .line 506
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "k":I
    .restart local v14    # "k":I
    aput v50, v3, v13

    .line 508
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "k":I
    .restart local v13    # "k":I
    aput v51, v3, v14

    .line 509
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "k":I
    .restart local v14    # "k":I
    aput v52, v3, v13

    .line 511
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "k":I
    .restart local v13    # "k":I
    aput v53, v3, v14

    .line 512
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "k":I
    .restart local v14    # "k":I
    aput v54, v3, v13

    .line 484
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 483
    .end local v55    # "uv":Lcom/smartisanos/smengine/RenderTarget$UV;
    :cond_3
    add-int/lit8 v10, v10, 0x1

    move v13, v14

    .end local v14    # "k":I
    .restart local v13    # "k":I
    goto :goto_3

    .line 515
    .end local v12    # "j":I
    :cond_4
    const/4 v13, 0x0

    .line 516
    const/4 v10, 0x0

    :goto_5
    move/from16 v0, v36

    if-ge v10, v0, :cond_6

    .line 517
    const/4 v12, 0x0

    .restart local v12    # "j":I
    move v14, v13

    .end local v13    # "k":I
    .restart local v14    # "k":I
    :goto_6
    if-ge v12, v9, :cond_5

    .line 518
    invoke-static {v10, v12}, Lcom/smartisanos/launcher/view/Page;->getCellIndex(II)I

    move-result v11

    .line 520
    .restart local v11    # "index":I
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "k":I
    .restart local v13    # "k":I
    int-to-float v5, v11

    aput v5, v16, v14

    .line 521
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "k":I
    .restart local v14    # "k":I
    int-to-float v5, v11

    aput v5, v16, v13

    .line 522
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "k":I
    .restart local v13    # "k":I
    int-to-float v5, v11

    aput v5, v16, v14

    .line 523
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "k":I
    .restart local v14    # "k":I
    int-to-float v5, v11

    aput v5, v16, v13

    .line 524
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "k":I
    .restart local v13    # "k":I
    int-to-float v5, v11

    aput v5, v16, v14

    .line 525
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "k":I
    .restart local v14    # "k":I
    int-to-float v5, v11

    aput v5, v16, v13

    .line 526
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "k":I
    .restart local v13    # "k":I
    int-to-float v5, v11

    aput v5, v16, v14

    .line 527
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "k":I
    .restart local v14    # "k":I
    int-to-float v5, v11

    aput v5, v16, v13

    .line 528
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "k":I
    .restart local v13    # "k":I
    int-to-float v5, v11

    aput v5, v16, v14

    .line 517
    add-int/lit8 v12, v12, 0x1

    move v14, v13

    .end local v13    # "k":I
    .restart local v14    # "k":I
    goto :goto_6

    .line 516
    .end local v11    # "index":I
    :cond_5
    add-int/lit8 v10, v10, 0x1

    move v13, v14

    .end local v14    # "k":I
    .restart local v13    # "k":I
    goto :goto_5

    .line 531
    .end local v12    # "j":I
    :cond_6
    mul-int v5, v9, v36

    mul-int/lit8 v5, v5, 0x8

    mul-int/lit8 v5, v5, 0x3

    new-array v4, v5, [S

    .line 532
    .local v4, "faces":[S
    const/4 v13, 0x0

    .line 533
    const/4 v10, 0x0

    :goto_7
    move/from16 v0, v36

    if-ge v10, v0, :cond_8

    .line 534
    const/4 v12, 0x0

    .restart local v12    # "j":I
    move v14, v13

    .end local v13    # "k":I
    .restart local v14    # "k":I
    :goto_8
    if-ge v12, v9, :cond_7

    .line 536
    mul-int v5, v10, v9

    mul-int/lit8 v5, v5, 0x9

    mul-int/lit8 v6, v12, 0x9

    add-int/2addr v5, v6

    int-to-short v0, v5

    move/from16 v57, v0

    .line 537
    .local v57, "v0":S
    add-int/lit8 v5, v57, 0x1

    int-to-short v0, v5

    move/from16 v58, v0

    .line 538
    .local v58, "v1":S
    add-int/lit8 v5, v58, 0x1

    int-to-short v0, v5

    move/from16 v59, v0

    .line 539
    .local v59, "v2":S
    add-int/lit8 v5, v59, 0x1

    int-to-short v0, v5

    move/from16 v60, v0

    .line 540
    .local v60, "v3":S
    add-int/lit8 v5, v60, 0x1

    int-to-short v0, v5

    move/from16 v61, v0

    .line 541
    .local v61, "v4":S
    add-int/lit8 v5, v61, 0x1

    int-to-short v0, v5

    move/from16 v62, v0

    .line 542
    .local v62, "v5":S
    add-int/lit8 v5, v62, 0x1

    int-to-short v0, v5

    move/from16 v63, v0

    .line 543
    .local v63, "v6":S
    add-int/lit8 v5, v63, 0x1

    int-to-short v0, v5

    move/from16 v64, v0

    .line 544
    .local v64, "v7":S
    add-int/lit8 v5, v64, 0x1

    int-to-short v0, v5

    move/from16 v65, v0

    .line 547
    .local v65, "v8":S
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "k":I
    .restart local v13    # "k":I
    aput-short v57, v4, v14

    .line 548
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "k":I
    .restart local v14    # "k":I
    aput-short v58, v4, v13

    .line 549
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "k":I
    .restart local v13    # "k":I
    aput-short v59, v4, v14

    .line 551
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "k":I
    .restart local v14    # "k":I
    aput-short v57, v4, v13

    .line 552
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "k":I
    .restart local v13    # "k":I
    aput-short v59, v4, v14

    .line 553
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "k":I
    .restart local v14    # "k":I
    aput-short v60, v4, v13

    .line 555
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "k":I
    .restart local v13    # "k":I
    aput-short v57, v4, v14

    .line 556
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "k":I
    .restart local v14    # "k":I
    aput-short v60, v4, v13

    .line 557
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "k":I
    .restart local v13    # "k":I
    aput-short v61, v4, v14

    .line 559
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "k":I
    .restart local v14    # "k":I
    aput-short v57, v4, v13

    .line 560
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "k":I
    .restart local v13    # "k":I
    aput-short v61, v4, v14

    .line 561
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "k":I
    .restart local v14    # "k":I
    aput-short v62, v4, v13

    .line 563
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "k":I
    .restart local v13    # "k":I
    aput-short v57, v4, v14

    .line 564
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "k":I
    .restart local v14    # "k":I
    aput-short v62, v4, v13

    .line 565
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "k":I
    .restart local v13    # "k":I
    aput-short v63, v4, v14

    .line 567
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "k":I
    .restart local v14    # "k":I
    aput-short v57, v4, v13

    .line 568
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "k":I
    .restart local v13    # "k":I
    aput-short v63, v4, v14

    .line 569
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "k":I
    .restart local v14    # "k":I
    aput-short v64, v4, v13

    .line 571
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "k":I
    .restart local v13    # "k":I
    aput-short v57, v4, v14

    .line 572
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "k":I
    .restart local v14    # "k":I
    aput-short v64, v4, v13

    .line 573
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "k":I
    .restart local v13    # "k":I
    aput-short v65, v4, v14

    .line 575
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "k":I
    .restart local v14    # "k":I
    aput-short v57, v4, v13

    .line 576
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "k":I
    .restart local v13    # "k":I
    aput-short v65, v4, v14

    .line 577
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "k":I
    .restart local v14    # "k":I
    aput-short v58, v4, v13

    .line 534
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_8

    .line 533
    .end local v57    # "v0":S
    .end local v58    # "v1":S
    .end local v59    # "v2":S
    .end local v60    # "v3":S
    .end local v61    # "v4":S
    .end local v62    # "v5":S
    .end local v63    # "v6":S
    .end local v64    # "v7":S
    .end local v65    # "v8":S
    :cond_7
    add-int/lit8 v10, v10, 0x1

    move v13, v14

    .end local v14    # "k":I
    .restart local v13    # "k":I
    goto/16 :goto_7

    .line 580
    .end local v12    # "j":I
    :cond_8
    new-instance v1, Lcom/smartisanos/smengine/Mesh;

    .end local v1    # "mesh":Lcom/smartisanos/smengine/Mesh;
    invoke-direct {v1}, Lcom/smartisanos/smengine/Mesh;-><init>()V

    .line 581
    .restart local v1    # "mesh":Lcom/smartisanos/smengine/Mesh;
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/smartisanos/smengine/Mesh;->create([F[F[S[FZ)V

    .line 582
    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/Mesh;->setMatIndexArray([F)V

    .line 583
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/smengine/World;->getMeshManager()Lcom/smartisanos/smengine/MeshManager;

    move-result-object v5

    const-string v6, "OCT_SHADOW_MESH_BATCH_9_CELLS"

    invoke-virtual {v5, v6, v1}, Lcom/smartisanos/smengine/MeshManager;->addMesh(Ljava/lang/String;Lcom/smartisanos/smengine/Mesh;)Lcom/smartisanos/smengine/Mesh;

    .line 586
    .end local v2    # "points":[F
    .end local v3    # "texPoints":[F
    .end local v4    # "faces":[S
    .end local v7    # "cellShadowHeight":F
    .end local v8    # "cellShadowWidth":F
    .end local v9    # "colNum":I
    .end local v10    # "i":I
    .end local v13    # "k":I
    .end local v15    # "lp":Lcom/smartisanos/launcher/data/LayoutProperty;
    .end local v16    # "matIndexArray":[F
    .end local v17    # "p0x":F
    .end local v18    # "p0y":F
    .end local v19    # "p1x":F
    .end local v20    # "p1y":F
    .end local v21    # "p2x":F
    .end local v22    # "p2y":F
    .end local v23    # "p3x":F
    .end local v24    # "p3y":F
    .end local v25    # "p4x":F
    .end local v26    # "p4y":F
    .end local v27    # "p5x":F
    .end local v28    # "p5y":F
    .end local v29    # "p6x":F
    .end local v30    # "p6y":F
    .end local v31    # "p7x":F
    .end local v32    # "p7y":F
    .end local v33    # "p8x":F
    .end local v34    # "p8y":F
    .end local v35    # "pointNum":I
    .end local v36    # "rowNum":I
    .end local v37    # "t0u":F
    .end local v38    # "t0v":F
    .end local v39    # "t1u":F
    .end local v40    # "t1v":F
    .end local v41    # "t2u":F
    .end local v42    # "t2v":F
    .end local v43    # "t3u":F
    .end local v44    # "t3v":F
    .end local v45    # "t4u":F
    .end local v46    # "t4v":F
    .end local v47    # "t5u":F
    .end local v48    # "t5v":F
    .end local v49    # "t6u":F
    .end local v50    # "t6v":F
    .end local v51    # "t7u":F
    .end local v52    # "t7v":F
    .end local v53    # "t8u":F
    .end local v54    # "t8v":F
    :cond_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/BatchShadow;->setMesh(Lcom/smartisanos/smengine/Mesh;)V

    goto/16 :goto_0
.end method


.method public addMeshToRenderUnit(Lcom/smartisanos/smengine/RenderManager$RenderUnit;)V
    .locals 7
    .param p1, "ru"    # Lcom/smartisanos/smengine/RenderManager$RenderUnit;

    .prologue
    const/4 v6, 0x0

    .line 752
    invoke-super {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->addMeshToRenderUnit(Lcom/smartisanos/smengine/RenderManager$RenderUnit;)V

    .line 753
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/BatchShadow;->getMesh()Lcom/smartisanos/smengine/Mesh;

    move-result-object v5

    if-nez v5, :cond_0

    .line 772
    :goto_0
    return-void

    .line 756
    :cond_0
    iget-object v5, p0, Lcom/smartisanos/launcher/view/BatchShadow;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v0, v5, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_col_num:I

    .line 757
    .local v0, "colNum":I
    iget-object v5, p0, Lcom/smartisanos/launcher/view/BatchShadow;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v4, v5, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_row_num:I

    .line 758
    .local v4, "rowNum":I
    invoke-virtual {p0, v4, v0}, Lcom/smartisanos/launcher/view/BatchShadow;->getCurrentMatArray(II)[Lcom/smartisanos/smengine/math/Matrix4f;

    move-result-object v3

    .line 759
    .local v3, "matArray":[Lcom/smartisanos/smengine/math/Matrix4f;
    invoke-virtual {p0, v4, v0}, Lcom/smartisanos/launcher/view/BatchShadow;->getCurrentModularColorArray(II)[Lcom/smartisanos/smengine/math/Vector4f;

    move-result-object v1

    .line 760
    .local v1, "colorArray":[Lcom/smartisanos/smengine/math/Vector4f;
    invoke-direct {p0, v3}, Lcom/smartisanos/launcher/view/BatchShadow;->clearMatrixArray([Lcom/smartisanos/smengine/math/Matrix4f;)V

    .line 761
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v5, v1

    if-ge v2, v5, :cond_1

    .line 762
    aget-object v5, v1, v2

    invoke-virtual {v5, v6, v6, v6, v6}, Lcom/smartisanos/smengine/math/Vector4f;->set(FFFF)Lcom/smartisanos/smengine/math/Vector4f;

    .line 761
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 768
    :cond_1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/BatchShadow;->getMatColorArrayForBatchShadow()V

    .line 770
    invoke-virtual {p1, v3}, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->setMatArray([Lcom/smartisanos/smengine/math/Matrix4f;)V

    .line 771
    invoke-virtual {p1, v1}, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->setColorArray([Lcom/smartisanos/smengine/math/Vector4f;)V

    goto :goto_0
.end method

.method protected createBatchShadowMaterial()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    .line 73
    invoke-static {}, Lcom/smartisanos/launcher/data/Constants;->getPropertyByStyle()Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v2

    .line 75
    .local v2, "prop":Lcom/smartisanos/launcher/data/LayoutProperty;
    const/4 v1, 0x0

    .line 76
    .local v1, "mode":Ljava/lang/String;
    iget v4, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_row_num:I

    if-ne v4, v7, :cond_1

    .line 77
    const-string v1, "TextureBatch9Material"

    .line 82
    :cond_0
    :goto_0
    invoke-static {v1}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v0

    .line 84
    .local v0, "material":Lcom/smartisanos/smengine/mymaterial/Material;
    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/BatchShadow;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 86
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/BatchShadow;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v3

    .line 87
    .local v3, "rs":Lcom/smartisanos/smengine/RenderState;
    invoke-virtual {v3, v6}, Lcom/smartisanos/smengine/RenderState;->setIsEnableBlend(Z)V

    .line 88
    invoke-virtual {v3, v6}, Lcom/smartisanos/smengine/RenderState;->setIsPolygonOffset(Z)V

    .line 89
    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, -0x40000000    # -2.0f

    invoke-virtual {v3, v4, v5}, Lcom/smartisanos/smengine/RenderState;->setPolygonOffsetFactorUnits(FF)V

    .line 90
    invoke-virtual {v3, v6}, Lcom/smartisanos/smengine/RenderState;->setIsUseVBO(Z)V

    .line 91
    invoke-virtual {v3, v6}, Lcom/smartisanos/smengine/RenderState;->setIsEnableDepthTest(Z)V

    .line 92
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/RenderState;->setBlendMode(I)V

    .line 93
    invoke-virtual {v3, v7}, Lcom/smartisanos/smengine/RenderState;->setDepthTestFunc(I)V

    .line 100
    const-string v4, "brick_shadow.png"

    invoke-static {v4, v6}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/smartisanos/launcher/view/BatchShadow;->setImageName(Ljava/lang/String;)V

    .line 102
    return-void

    .line 78
    .end local v0    # "material":Lcom/smartisanos/smengine/mymaterial/Material;
    .end local v3    # "rs":Lcom/smartisanos/smengine/RenderState;
    :cond_1
    iget v4, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_row_num:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    .line 79
    const-string v1, "TextureBatch16Material"

    goto :goto_0
.end method

.method public draw(Lcom/smartisanos/smengine/Camera;)V
    .locals 1
    .param p1, "camera"    # Lcom/smartisanos/smengine/Camera;

    .prologue
    .line 900
    invoke-static {}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->getInstance()Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->isChangeThemeAnimating()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 908
    :cond_0
    :goto_0
    return-void

    .line 903
    :cond_1
    invoke-super {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->cull(Lcom/smartisanos/smengine/Camera;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 907
    invoke-super {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->draw(Lcom/smartisanos/smengine/Camera;)V

    goto :goto_0
.end method

.method public getCurrentMatArray(II)[Lcom/smartisanos/smengine/math/Matrix4f;
    .locals 4
    .param p1, "rowNum"    # I
    .param p2, "colNum"    # I

    .prologue
    .line 610
    mul-int v0, p1, p2

    .line 611
    .local v0, "totalNum":I
    sparse-switch v0, :sswitch_data_0

    .line 617
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

    .line 613
    :sswitch_0
    iget-object v1, p0, Lcom/smartisanos/launcher/view/BatchShadow;->mMatArray9:[Lcom/smartisanos/smengine/math/Matrix4f;

    .line 615
    :goto_0
    return-object v1

    :sswitch_1
    iget-object v1, p0, Lcom/smartisanos/launcher/view/BatchShadow;->mMatArray16:[Lcom/smartisanos/smengine/math/Matrix4f;

    goto :goto_0

    .line 611
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
    .line 600
    mul-int v0, p1, p2

    .line 601
    .local v0, "totalNum":I
    sparse-switch v0, :sswitch_data_0

    .line 607
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

    .line 603
    :sswitch_0
    iget-object v1, p0, Lcom/smartisanos/launcher/view/BatchShadow;->mModularColorArray9:[Lcom/smartisanos/smengine/math/Vector4f;

    .line 605
    :goto_0
    return-object v1

    :sswitch_1
    iget-object v1, p0, Lcom/smartisanos/launcher/view/BatchShadow;->mModularColorArray16:[Lcom/smartisanos/smengine/math/Vector4f;

    goto :goto_0

    .line 601
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0x10 -> :sswitch_1
    .end sparse-switch
.end method

.method public getMatColorArrayForBatchShadow()V
    .locals 32

    .prologue
    .line 775
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/BatchShadow;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v4, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_col_num:I

    .line 776
    .local v4, "colNum":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/BatchShadow;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_row_num:I

    move/from16 v22, v0

    .line 777
    .local v22, "rowNum":I
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1, v4}, Lcom/smartisanos/launcher/view/BatchShadow;->getCurrentMatArray(II)[Lcom/smartisanos/smengine/math/Matrix4f;

    move-result-object v12

    .line 778
    .local v12, "matArray":[Lcom/smartisanos/smengine/math/Matrix4f;
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1, v4}, Lcom/smartisanos/launcher/view/BatchShadow;->getCurrentModularColorArray(II)[Lcom/smartisanos/smengine/math/Vector4f;

    move-result-object v5

    .line 779
    .local v5, "colorArray":[Lcom/smartisanos/smengine/math/Vector4f;
    const/4 v9, 0x0

    .line 780
    .local v9, "k":I
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/BatchShadow;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v20

    check-cast v20, Lcom/smartisanos/launcher/view/Page;

    .line 781
    .local v20, "parentPage":Lcom/smartisanos/launcher/view/Page;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-virtual/range {v20 .. v20}, Lcom/smartisanos/launcher/view/Page;->getChildCount()I

    move-result v27

    move/from16 v0, v27

    if-ge v6, v0, :cond_8

    .line 782
    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Lcom/smartisanos/launcher/view/Page;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v25

    .line 783
    .local v25, "sn":Lcom/smartisanos/smengine/SceneNode;
    move-object/from16 v0, v25

    instance-of v0, v0, Lcom/smartisanos/launcher/view/Cell;

    move/from16 v27, v0

    if-eqz v27, :cond_3

    move-object/from16 v21, v25

    .line 784
    check-cast v21, Lcom/smartisanos/launcher/view/Cell;

    .line 785
    .local v21, "pc":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual/range {v25 .. v25}, Lcom/smartisanos/smengine/SceneNode;->getWorldMatrix()Lcom/smartisanos/smengine/math/Matrix4f;

    move-result-object v10

    .line 786
    .local v10, "m":Lcom/smartisanos/smengine/math/Matrix4f;
    if-nez v10, :cond_0

    .line 789
    :cond_0
    invoke-virtual/range {v21 .. v21}, Lcom/smartisanos/launcher/view/Cell;->getOriginRowIndex()I

    move-result v17

    .line 790
    .local v17, "originRowIndex":I
    invoke-virtual/range {v21 .. v21}, Lcom/smartisanos/launcher/view/Cell;->getOriginColIndex()I

    move-result v15

    .line 791
    .local v15, "originColIndex":I
    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1, v15}, Lcom/smartisanos/launcher/view/Page;->getIndex(II)I

    move-result v7

    .line 794
    .local v7, "index":I
    invoke-virtual/range {v21 .. v21}, Lcom/smartisanos/launcher/view/Cell;->isVisibilityForBatchDrawShadow()Z

    move-result v27

    if-eqz v27, :cond_4

    .line 796
    aget-object v27, v12, v7

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Lcom/smartisanos/smengine/math/Matrix4f;->copy(Lcom/smartisanos/smengine/math/Matrix4f;)V

    .line 799
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/smartisanos/launcher/view/BatchShadow;->mUseSelfZ:Z

    move/from16 v27, v0

    if-eqz v27, :cond_1

    .line 800
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/smartisanos/smengine/World;->getCameraManager()Lcom/smartisanos/smengine/CameraManager;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/smartisanos/smengine/CameraManager;->getCurrentCamera()Lcom/smartisanos/smengine/Camera;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/smartisanos/smengine/Camera;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/smartisanos/smengine/math/Vector3f;->getZ()F

    move-result v11

    .line 801
    .local v11, "mCameraZ":F
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v27

    const/high16 v28, 0x3f800000    # 1.0f

    const/16 v29, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/launcher/view/BatchShadow;->mFixedScale:F

    move/from16 v30, v0

    move-object/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v11, v3}, Lcom/smartisanos/launcher/view/PageView;->createZFromScale(FFFF)F

    move-result v8

    .line 802
    .local v8, "initZ":F
    new-instance v26, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct/range {v26 .. v26}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 803
    .local v26, "worldTranslate":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-virtual/range {v25 .. v26}, Lcom/smartisanos/smengine/SceneNode;->getWorldTranslate(Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 804
    aget-object v27, v12, v7

    move-object/from16 v0, v26

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v28, v0

    const/high16 v29, 0x3f800000    # 1.0f

    mul-float v28, v28, v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/launcher/view/BatchShadow;->mFixedScale:F

    move/from16 v29, v0

    div-float v28, v28, v29

    move-object/from16 v0, v26

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v29, v0

    const/high16 v30, 0x3f800000    # 1.0f

    mul-float v29, v29, v30

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/launcher/view/BatchShadow;->mFixedScale:F

    move/from16 v30, v0

    div-float v29, v29, v30

    move-object/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2, v8}, Lcom/smartisanos/smengine/math/Matrix4f;->setTranslation(FFF)V

    .line 805
    aget-object v27, v12, v7

    const/high16 v28, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/launcher/view/BatchShadow;->mFixedScale:F

    move/from16 v29, v0

    div-float v28, v28, v29

    const/high16 v29, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/launcher/view/BatchShadow;->mFixedScale:F

    move/from16 v30, v0

    div-float v29, v29, v30

    const/high16 v30, 0x3f800000    # 1.0f

    invoke-virtual/range {v27 .. v30}, Lcom/smartisanos/smengine/math/Matrix4f;->setScale(FFF)V

    .line 818
    .end local v8    # "initZ":F
    .end local v11    # "mCameraZ":F
    .end local v26    # "worldTranslate":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_1
    :goto_1
    aget-object v27, v5, v7

    if-nez v27, :cond_2

    .line 819
    new-instance v27, Lcom/smartisanos/smengine/math/Vector4f;

    invoke-direct/range {v27 .. v27}, Lcom/smartisanos/smengine/math/Vector4f;-><init>()V

    aput-object v27, v5, v7

    .line 821
    :cond_2
    invoke-static {}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->getInstance()Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->isChangeThemeAnimating()Z

    move-result v27

    if-eqz v27, :cond_6

    .line 822
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/smartisanos/launcher/view/BatchShadow;->mUseSelfColor:Z

    move/from16 v27, v0

    if-nez v27, :cond_5

    .line 823
    aget-object v27, v5, v7

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Cell;->getColor(Lcom/smartisanos/smengine/math/Vector4f;)V

    .line 839
    :goto_2
    add-int/lit8 v9, v9, 0x1

    .line 781
    .end local v7    # "index":I
    .end local v10    # "m":Lcom/smartisanos/smengine/math/Matrix4f;
    .end local v15    # "originColIndex":I
    .end local v17    # "originRowIndex":I
    .end local v21    # "pc":Lcom/smartisanos/launcher/view/Cell;
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 809
    .restart local v7    # "index":I
    .restart local v10    # "m":Lcom/smartisanos/smengine/math/Matrix4f;
    .restart local v15    # "originColIndex":I
    .restart local v17    # "originRowIndex":I
    .restart local v21    # "pc":Lcom/smartisanos/launcher/view/Cell;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/BatchShadow;->mMoveToOutOfScreenMatrix:Lcom/smartisanos/smengine/math/Matrix4f;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/smartisanos/smengine/math/Matrix4f;->loadIdentity()V

    .line 810
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/BatchShadow;->mMoveToOutOfScreenMatrix:Lcom/smartisanos/smengine/math/Matrix4f;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const v29, 0x461c3c00    # 9999.0f

    const/16 v30, 0x0

    invoke-virtual/range {v27 .. v30}, Lcom/smartisanos/smengine/math/Matrix4f;->setTranslation(FFF)V

    .line 812
    aget-object v27, v12, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/BatchShadow;->mMoveToOutOfScreenMatrix:Lcom/smartisanos/smengine/math/Matrix4f;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Lcom/smartisanos/smengine/math/Matrix4f;->copy(Lcom/smartisanos/smengine/math/Matrix4f;)V

    .line 813
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/BatchShadow;->mMoveToOutOfScreenMatrix:Lcom/smartisanos/smengine/math/Matrix4f;

    move-object/from16 v27, v0

    if-nez v27, :cond_1

    goto :goto_1

    .line 825
    :cond_5
    aget-object v27, v5, v7

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/BatchShadow;->getColor(Lcom/smartisanos/smengine/math/Vector4f;)V

    goto :goto_2

    .line 830
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/smartisanos/launcher/view/BatchShadow;->mUseSelfColor:Z

    move/from16 v27, v0

    if-nez v27, :cond_7

    .line 831
    aget-object v27, v5, v7

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Cell;->getColor(Lcom/smartisanos/smengine/math/Vector4f;)V

    goto :goto_2

    .line 833
    :cond_7
    aget-object v27, v5, v7

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/BatchShadow;->getColor(Lcom/smartisanos/smengine/math/Vector4f;)V

    goto :goto_2

    .line 844
    .end local v7    # "index":I
    .end local v10    # "m":Lcom/smartisanos/smengine/math/Matrix4f;
    .end local v15    # "originColIndex":I
    .end local v17    # "originRowIndex":I
    .end local v21    # "pc":Lcom/smartisanos/launcher/view/Cell;
    .end local v25    # "sn":Lcom/smartisanos/smengine/SceneNode;
    :cond_8
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/smartisanos/launcher/view/PageView;->getSelectedCell()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v23

    .line 845
    .local v23, "selectedCell":Lcom/smartisanos/launcher/view/Cell;
    if-eqz v23, :cond_b

    invoke-virtual/range {v23 .. v23}, Lcom/smartisanos/launcher/view/Cell;->isVisibilityForBatchDrawShadow()Z

    move-result v27

    if-eqz v27, :cond_b

    .line 847
    invoke-virtual/range {v23 .. v23}, Lcom/smartisanos/launcher/view/Cell;->getOriginRowIndex()I

    move-result v18

    .line 848
    .local v18, "orirow":I
    invoke-virtual/range {v23 .. v23}, Lcom/smartisanos/launcher/view/Cell;->getOriginColIndex()I

    move-result v14

    .line 849
    .local v14, "oricol":I
    invoke-virtual/range {v23 .. v23}, Lcom/smartisanos/launcher/view/Cell;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v19

    .line 850
    .local v19, "parent":Lcom/smartisanos/smengine/SceneNode;
    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/smartisanos/launcher/view/Page;

    move/from16 v27, v0

    if-eqz v27, :cond_c

    .line 856
    :cond_9
    :goto_3
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_b

    .line 858
    move/from16 v0, v18

    invoke-static {v0, v14}, Lcom/smartisanos/launcher/view/Page;->getCellIndex(II)I

    move-result v16

    .line 859
    .local v16, "originIndex":I
    invoke-virtual/range {v23 .. v23}, Lcom/smartisanos/launcher/view/Cell;->getWorldMatrix()Lcom/smartisanos/smengine/math/Matrix4f;

    move-result-object v24

    .line 860
    .local v24, "selectedCellWorldTransform":Lcom/smartisanos/smengine/math/Matrix4f;
    new-instance v26, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct/range {v26 .. v26}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 861
    .restart local v26    # "worldTranslate":Lcom/smartisanos/smengine/math/Vector3f;
    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Cell;->getWorldTranslate(Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 862
    move-object/from16 v0, v26

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v27, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lcom/smartisanos/smengine/math/Matrix4f;->setTranslation(FFF)V

    .line 863
    aget-object v27, v12, v16

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/math/Matrix4f;->copy(Lcom/smartisanos/smengine/math/Matrix4f;)V

    .line 866
    aget-object v27, v5, v16

    if-nez v27, :cond_a

    .line 867
    new-instance v27, Lcom/smartisanos/smengine/math/Vector4f;

    invoke-direct/range {v27 .. v27}, Lcom/smartisanos/smengine/math/Vector4f;-><init>()V

    aput-object v27, v5, v16

    .line 869
    :cond_a
    invoke-static {}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->getInstance()Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->isChangeThemeAnimating()Z

    move-result v27

    if-eqz v27, :cond_d

    .line 870
    aget-object v27, v5, v16

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Cell;->getColor(Lcom/smartisanos/smengine/math/Vector4f;)V

    .line 876
    :goto_4
    aget-object v13, v5, v16

    .line 877
    .local v13, "oriColor":Lcom/smartisanos/smengine/math/Vector4f;
    aget-object v27, v5, v16

    iget v0, v13, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    move/from16 v28, v0

    iget v0, v13, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    move/from16 v29, v0

    iget v0, v13, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    move/from16 v30, v0

    iget v0, v13, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    move/from16 v31, v0

    invoke-virtual/range {v27 .. v31}, Lcom/smartisanos/smengine/math/Vector4f;->set(FFFF)Lcom/smartisanos/smengine/math/Vector4f;

    .line 885
    .end local v13    # "oriColor":Lcom/smartisanos/smengine/math/Vector4f;
    .end local v14    # "oricol":I
    .end local v16    # "originIndex":I
    .end local v18    # "orirow":I
    .end local v19    # "parent":Lcom/smartisanos/smengine/SceneNode;
    .end local v24    # "selectedCellWorldTransform":Lcom/smartisanos/smengine/math/Matrix4f;
    .end local v26    # "worldTranslate":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_b
    mul-int v27, v22, v4

    move/from16 v0, v27

    if-le v9, v0, :cond_e

    .line 886
    new-instance v27, Ljava/lang/RuntimeException;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "mat array num error : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v27

    .line 852
    .restart local v14    # "oricol":I
    .restart local v18    # "orirow":I
    .restart local v19    # "parent":Lcom/smartisanos/smengine/SceneNode;
    :cond_c
    invoke-static/range {v19 .. v19}, Lcom/smartisanos/launcher/view/PageView;->sIsInstanceFromPageView(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_9

    .line 853
    invoke-virtual/range {v23 .. v23}, Lcom/smartisanos/launcher/view/Cell;->getPreParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v19

    goto/16 :goto_3

    .line 873
    .restart local v16    # "originIndex":I
    .restart local v24    # "selectedCellWorldTransform":Lcom/smartisanos/smengine/math/Matrix4f;
    .restart local v26    # "worldTranslate":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_d
    aget-object v27, v5, v16

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Cell;->getColor(Lcom/smartisanos/smengine/math/Vector4f;)V

    goto :goto_4

    .line 889
    .end local v14    # "oricol":I
    .end local v16    # "originIndex":I
    .end local v18    # "orirow":I
    .end local v19    # "parent":Lcom/smartisanos/smengine/SceneNode;
    .end local v24    # "selectedCellWorldTransform":Lcom/smartisanos/smengine/math/Matrix4f;
    .end local v26    # "worldTranslate":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_e
    return-void
.end method

.method public setNativeData(Lcom/smartisanos/smengine/Camera;)V
    .locals 38
    .param p1, "camera"    # Lcom/smartisanos/smengine/Camera;

    .prologue
    .line 626
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/BatchShadow;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v0, v4, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_col_num:I

    move/from16 v21, v0

    .line 627
    .local v21, "colNum":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/BatchShadow;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v0, v4, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_row_num:I

    move/from16 v36, v0

    .line 628
    .local v36, "rowNum":I
    move-object/from16 v0, p0

    move/from16 v1, v36

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/view/BatchShadow;->getCurrentModularColorArray(II)[Lcom/smartisanos/smengine/math/Vector4f;

    move-result-object v22

    .line 629
    .local v22, "colorArray":[Lcom/smartisanos/smengine/math/Vector4f;
    const/16 v23, 0x0

    .local v23, "i":I
    :goto_0
    move-object/from16 v0, v22

    array-length v4, v0

    move/from16 v0, v23

    if-ge v0, v4, :cond_0

    .line 630
    aget-object v4, v22, v23

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v4, v5, v8, v10, v11}, Lcom/smartisanos/smengine/math/Vector4f;->set(FFFF)Lcom/smartisanos/smengine/math/Vector4f;

    .line 629
    add-int/lit8 v23, v23, 0x1

    goto :goto_0

    .line 632
    :cond_0
    const/16 v24, 0x0

    .line 633
    .local v24, "k":I
    mul-int v27, v21, v36

    .line 634
    .local v27, "matrixNum":I
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/BatchShadow;->setMVPMatrixArrayNum(I)V

    .line 635
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/BatchShadow;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v35

    check-cast v35, Lcom/smartisanos/launcher/view/Page;

    .line 636
    .local v35, "parentPage":Lcom/smartisanos/launcher/view/Page;
    const/16 v23, 0x0

    :goto_1
    invoke-virtual/range {v35 .. v35}, Lcom/smartisanos/launcher/view/Page;->getChildCount()I

    move-result v4

    move/from16 v0, v23

    if-ge v0, v4, :cond_9

    .line 637
    move-object/from16 v0, v35

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Page;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v12

    .line 638
    .local v12, "sn":Lcom/smartisanos/smengine/SceneNode;
    instance-of v4, v12, Lcom/smartisanos/launcher/view/Cell;

    if-eqz v4, :cond_3

    move-object v6, v12

    .line 639
    check-cast v6, Lcom/smartisanos/launcher/view/Cell;

    .line 640
    .local v6, "pc":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v12}, Lcom/smartisanos/smengine/SceneNode;->getWorldMatrix()Lcom/smartisanos/smengine/math/Matrix4f;

    move-result-object v25

    .line 641
    .local v25, "m":Lcom/smartisanos/smengine/math/Matrix4f;
    if-nez v25, :cond_1

    .line 644
    :cond_1
    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/Cell;->getOriginRowIndex()I

    move-result v32

    .line 645
    .local v32, "originRowIndex":I
    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/Cell;->getOriginColIndex()I

    move-result v30

    .line 646
    .local v30, "originColIndex":I
    move-object/from16 v0, v35

    move/from16 v1, v32

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/view/Page;->getIndex(II)I

    move-result v7

    .line 649
    .local v7, "index":I
    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/Cell;->isVisibilityForBatchDrawShadow()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 652
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/smartisanos/launcher/view/BatchShadow;->mUseSelfZ:Z

    if-eqz v4, :cond_4

    .line 653
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/smengine/World;->getCameraManager()Lcom/smartisanos/smengine/CameraManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/smengine/CameraManager;->getCurrentCamera()Lcom/smartisanos/smengine/Camera;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/smengine/Camera;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/smengine/math/Vector3f;->getZ()F

    move-result v26

    .line 654
    .local v26, "mCameraZ":F
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v4

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/smartisanos/launcher/view/BatchShadow;->mFixedScale:F

    move/from16 v0, v26

    invoke-virtual {v4, v5, v8, v0, v10}, Lcom/smartisanos/launcher/view/PageView;->createZFromScale(FFFF)F

    move-result v9

    .line 658
    .local v9, "initZ":F
    move-object/from16 v0, p0

    iget v8, v0, Lcom/smartisanos/launcher/view/BatchShadow;->mFixedScale:F

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v11}, Lcom/smartisanos/launcher/view/BatchShadow;->calculateMVPMatrixArrayData(Lcom/smartisanos/smengine/Camera;Lcom/smartisanos/smengine/SceneNode;IFFZZ)V

    .line 671
    .end local v9    # "initZ":F
    .end local v26    # "mCameraZ":F
    :goto_2
    aget-object v4, v22, v7

    if-nez v4, :cond_2

    .line 672
    new-instance v4, Lcom/smartisanos/smengine/math/Vector4f;

    invoke-direct {v4}, Lcom/smartisanos/smengine/math/Vector4f;-><init>()V

    aput-object v4, v22, v7

    .line 674
    :cond_2
    invoke-static {}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->getInstance()Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->isChangeThemeAnimating()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 675
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/smartisanos/launcher/view/BatchShadow;->mUseSelfColor:Z

    if-nez v4, :cond_6

    .line 676
    aget-object v4, v22, v7

    invoke-virtual {v6, v4}, Lcom/smartisanos/launcher/view/Cell;->getColor(Lcom/smartisanos/smengine/math/Vector4f;)V

    .line 692
    :goto_3
    add-int/lit8 v24, v24, 0x1

    .line 636
    .end local v6    # "pc":Lcom/smartisanos/launcher/view/Cell;
    .end local v7    # "index":I
    .end local v25    # "m":Lcom/smartisanos/smengine/math/Matrix4f;
    .end local v30    # "originColIndex":I
    .end local v32    # "originRowIndex":I
    :cond_3
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_1

    .line 660
    .restart local v6    # "pc":Lcom/smartisanos/launcher/view/Cell;
    .restart local v7    # "index":I
    .restart local v25    # "m":Lcom/smartisanos/smengine/math/Matrix4f;
    .restart local v30    # "originColIndex":I
    .restart local v32    # "originRowIndex":I
    :cond_4
    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move v13, v7

    invoke-virtual/range {v10 .. v17}, Lcom/smartisanos/launcher/view/BatchShadow;->calculateMVPMatrixArrayData(Lcom/smartisanos/smengine/Camera;Lcom/smartisanos/smengine/SceneNode;IFFZZ)V

    goto :goto_2

    .line 668
    :cond_5
    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v18, 0x3f800000    # 1.0f

    const/16 v19, 0x1

    const/16 v20, 0x0

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object v15, v6

    move/from16 v16, v7

    invoke-virtual/range {v13 .. v20}, Lcom/smartisanos/launcher/view/BatchShadow;->calculateMVPMatrixArrayData(Lcom/smartisanos/smengine/Camera;Lcom/smartisanos/smengine/SceneNode;IFFZZ)V

    goto :goto_2

    .line 678
    :cond_6
    aget-object v4, v22, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/smartisanos/launcher/view/BatchShadow;->getColor(Lcom/smartisanos/smengine/math/Vector4f;)V

    goto :goto_3

    .line 683
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/smartisanos/launcher/view/BatchShadow;->mUseSelfColor:Z

    if-nez v4, :cond_8

    .line 684
    aget-object v4, v22, v7

    invoke-virtual {v6, v4}, Lcom/smartisanos/launcher/view/Cell;->getColor(Lcom/smartisanos/smengine/math/Vector4f;)V

    goto :goto_3

    .line 686
    :cond_8
    aget-object v4, v22, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/smartisanos/launcher/view/BatchShadow;->getColor(Lcom/smartisanos/smengine/math/Vector4f;)V

    goto :goto_3

    .line 697
    .end local v6    # "pc":Lcom/smartisanos/launcher/view/Cell;
    .end local v7    # "index":I
    .end local v12    # "sn":Lcom/smartisanos/smengine/SceneNode;
    .end local v25    # "m":Lcom/smartisanos/smengine/math/Matrix4f;
    .end local v30    # "originColIndex":I
    .end local v32    # "originRowIndex":I
    :cond_9
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v4

    if-eqz v4, :cond_a

    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v4

    if-nez v4, :cond_b

    .line 749
    :cond_a
    return-void

    .line 700
    :cond_b
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/PageView;->getSelectedCell()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v37

    .line 701
    .local v37, "selectedCell":Lcom/smartisanos/launcher/view/Cell;
    if-eqz v37, :cond_e

    invoke-virtual/range {v37 .. v37}, Lcom/smartisanos/launcher/view/Cell;->isVisibilityForBatchDrawShadow()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 703
    invoke-virtual/range {v37 .. v37}, Lcom/smartisanos/launcher/view/Cell;->getOriginRowIndex()I

    move-result v33

    .line 704
    .local v33, "orirow":I
    invoke-virtual/range {v37 .. v37}, Lcom/smartisanos/launcher/view/Cell;->getOriginColIndex()I

    move-result v29

    .line 705
    .local v29, "oricol":I
    invoke-virtual/range {v37 .. v37}, Lcom/smartisanos/launcher/view/Cell;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v34

    .line 706
    .local v34, "parent":Lcom/smartisanos/smengine/SceneNode;
    move-object/from16 v0, v34

    instance-of v4, v0, Lcom/smartisanos/launcher/view/Page;

    if-eqz v4, :cond_10

    .line 712
    :cond_c
    :goto_4
    move-object/from16 v0, v34

    move-object/from16 v1, v35

    if-ne v0, v1, :cond_e

    .line 714
    move/from16 v0, v33

    move/from16 v1, v29

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/view/Page;->getCellIndex(II)I

    move-result v31

    .line 719
    .local v31, "originIndex":I
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v37

    move/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/smartisanos/launcher/view/BatchShadow;->calculateMVPMatrixArrayDataWithChildZ(Lcom/smartisanos/smengine/Camera;Lcom/smartisanos/smengine/SceneNode;IF)V

    .line 721
    aget-object v4, v22, v31

    if-nez v4, :cond_d

    .line 722
    new-instance v4, Lcom/smartisanos/smengine/math/Vector4f;

    invoke-direct {v4}, Lcom/smartisanos/smengine/math/Vector4f;-><init>()V

    aput-object v4, v22, v31

    .line 724
    :cond_d
    invoke-static {}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->getInstance()Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->isChangeThemeAnimating()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 725
    aget-object v4, v22, v31

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Lcom/smartisanos/launcher/view/Cell;->getColor(Lcom/smartisanos/smengine/math/Vector4f;)V

    .line 731
    :goto_5
    aget-object v28, v22, v31

    .line 732
    .local v28, "oriColor":Lcom/smartisanos/smengine/math/Vector4f;
    aget-object v4, v22, v31

    move-object/from16 v0, v28

    iget v5, v0, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    move-object/from16 v0, v28

    iget v8, v0, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    move-object/from16 v0, v28

    iget v10, v0, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    move-object/from16 v0, v28

    iget v11, v0, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    invoke-virtual {v4, v5, v8, v10, v11}, Lcom/smartisanos/smengine/math/Vector4f;->set(FFFF)Lcom/smartisanos/smengine/math/Vector4f;

    .line 738
    .end local v28    # "oriColor":Lcom/smartisanos/smengine/math/Vector4f;
    .end local v29    # "oricol":I
    .end local v31    # "originIndex":I
    .end local v33    # "orirow":I
    .end local v34    # "parent":Lcom/smartisanos/smengine/SceneNode;
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/BatchShadow;->getMaterial()Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v4

    if-eqz v4, :cond_f

    .line 739
    move-object/from16 v0, v22

    array-length v4, v0

    const/16 v5, 0x9

    if-ne v4, v5, :cond_12

    .line 740
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/BatchShadow;->getMaterial()Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v4

    const/16 v5, 0x8

    move-object/from16 v0, v22

    invoke-virtual {v4, v5, v0}, Lcom/smartisanos/smengine/mymaterial/Material;->setParam(ILjava/lang/Object;)V

    .line 746
    :cond_f
    :goto_6
    mul-int v4, v36, v21

    move/from16 v0, v24

    if-le v0, v4, :cond_a

    .line 747
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mat array num error : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 708
    .restart local v29    # "oricol":I
    .restart local v33    # "orirow":I
    .restart local v34    # "parent":Lcom/smartisanos/smengine/SceneNode;
    :cond_10
    invoke-static/range {v34 .. v34}, Lcom/smartisanos/launcher/view/PageView;->sIsInstanceFromPageView(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 709
    invoke-virtual/range {v37 .. v37}, Lcom/smartisanos/launcher/view/Cell;->getPreParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v34

    goto/16 :goto_4

    .line 728
    .restart local v31    # "originIndex":I
    :cond_11
    aget-object v4, v22, v31

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Lcom/smartisanos/launcher/view/Cell;->getColor(Lcom/smartisanos/smengine/math/Vector4f;)V

    goto :goto_5

    .line 742
    .end local v29    # "oricol":I
    .end local v31    # "originIndex":I
    .end local v33    # "orirow":I
    .end local v34    # "parent":Lcom/smartisanos/smengine/SceneNode;
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/BatchShadow;->getMaterial()Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v4

    const/4 v5, 0x7

    move-object/from16 v0, v22

    invoke-virtual {v4, v5, v0}, Lcom/smartisanos/smengine/mymaterial/Material;->setParam(ILjava/lang/Object;)V

    goto :goto_6
.end method

.method public setUseSelfColor(Z)V
    .locals 0
    .param p1, "use"    # Z

    .prologue
    .line 892
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/BatchShadow;->mUseSelfColor:Z

    .line 893
    return-void
.end method

.method public setUseSelfZ(ZF)V
    .locals 0
    .param p1, "use"    # Z
    .param p2, "fixedScale"    # F

    .prologue
    .line 895
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/BatchShadow;->mUseSelfZ:Z

    .line 896
    iput p2, p0, Lcom/smartisanos/launcher/view/BatchShadow;->mFixedScale:F

    .line 897
    return-void
.end method
