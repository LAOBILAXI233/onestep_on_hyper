.class public Lcom/smartisanos/smengine/CurveNode;
.super Lcom/smartisanos/smengine/SceneNode;
.source "CurveNode.java"


.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/SceneNode;-><init>(Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method private createMesh(Ljava/util/ArrayList;Lcom/smartisanos/smengine/math/Vector4f;)V
    .locals 12
    .param p2, "color"    # Lcom/smartisanos/smengine/math/Vector4f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/smengine/math/Vector3f;",
            ">;",
            "Lcom/smartisanos/smengine/math/Vector4f;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "pointsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/smengine/math/Vector3f;>;"
    const/4 v2, 0x0

    .line 18
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x3

    new-array v1, v3, [F

    .line 19
    .local v1, "points":[F
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x4

    new-array v4, v3, [F

    .line 20
    .local v4, "colors":[F
    const/4 v7, 0x0

    .line 21
    .local v7, "k":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v6, v3, :cond_0

    .line 22
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/smartisanos/smengine/math/Vector3f;

    .line 23
    .local v11, "v":Lcom/smartisanos/smengine/math/Vector3f;
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "k":I
    .local v8, "k":I
    iget v3, v11, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    aput v3, v1, v7

    .line 24
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "k":I
    .restart local v7    # "k":I
    iget v3, v11, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    aput v3, v1, v8

    .line 25
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "k":I
    .restart local v8    # "k":I
    iget v3, v11, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    aput v3, v1, v7

    .line 21
    add-int/lit8 v6, v6, 0x1

    move v7, v8

    .end local v8    # "k":I
    .restart local v7    # "k":I
    goto :goto_0

    .line 27
    .end local v11    # "v":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_0
    array-length v3, v1

    if-eq v7, v3, :cond_1

    .line 28
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "point size error"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 30
    :cond_1
    const/4 v7, 0x0

    .line 31
    const/4 v6, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v6, v3, :cond_2

    .line 32
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "k":I
    .restart local v8    # "k":I
    iget v3, p2, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    aput v3, v4, v7

    .line 33
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "k":I
    .restart local v7    # "k":I
    iget v3, p2, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    aput v3, v4, v8

    .line 34
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "k":I
    .restart local v8    # "k":I
    iget v3, p2, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    aput v3, v4, v7

    .line 35
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "k":I
    .restart local v7    # "k":I
    iget v3, p2, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    aput v3, v4, v8

    .line 31
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 37
    :cond_2
    array-length v3, v4

    if-eq v7, v3, :cond_3

    .line 38
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "color size error"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 40
    :cond_3
    const-string v10, "hermiteCurve"

    .line 41
    .local v10, "meshName":Ljava/lang/String;
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/smengine/World;->getMeshManager()Lcom/smartisanos/smengine/MeshManager;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/smartisanos/smengine/MeshManager;->getMesh(Ljava/lang/String;)Lcom/smartisanos/smengine/Mesh;

    move-result-object v0

    .line 42
    .local v0, "mesh":Lcom/smartisanos/smengine/Mesh;
    if-nez v0, :cond_4

    .line 43
    new-instance v0, Lcom/smartisanos/smengine/Mesh;

    .end local v0    # "mesh":Lcom/smartisanos/smengine/Mesh;
    invoke-direct {v0}, Lcom/smartisanos/smengine/Mesh;-><init>()V

    .line 44
    .restart local v0    # "mesh":Lcom/smartisanos/smengine/Mesh;
    const/4 v5, 0x0

    move-object v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/smartisanos/smengine/Mesh;->create([F[F[S[FZ)V

    .line 45
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/World;->getMeshManager()Lcom/smartisanos/smengine/MeshManager;

    move-result-object v2

    invoke-virtual {v2, v10, v0}, Lcom/smartisanos/smengine/MeshManager;->addMesh(Ljava/lang/String;Lcom/smartisanos/smengine/Mesh;)Lcom/smartisanos/smengine/Mesh;

    .line 47
    :cond_4
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/CurveNode;->setMesh(Lcom/smartisanos/smengine/Mesh;)V

    .line 48
    const-string v2, "SimpleColorMaterial"

    invoke-static {v2}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v9

    .line 49
    .local v9, "m":Lcom/smartisanos/smengine/mymaterial/Material;
    invoke-virtual {p0, v9}, Lcom/smartisanos/smengine/CurveNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 50
    return-void
.end method


.method public createBezier(ILjava/util/ArrayList;Lcom/smartisanos/smengine/math/Vector4f;)V
    .locals 20
    .param p1, "count"    # I
    .param p3, "color"    # Lcom/smartisanos/smengine/math/Vector4f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/smengine/math/Vector3f;",
            ">;>;",
            "Lcom/smartisanos/smengine/math/Vector4f;",
            ")V"
        }
    .end annotation

    .prologue
    .line 72
    .local p2, "segments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/smartisanos/smengine/math/Vector3f;>;>;"
    const/high16 v17, 0x3f800000    # 1.0f

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v12, v17, v18

    .line 73
    .local v12, "step":F
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .local v10, "pointArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/smengine/math/Vector3f;>;"
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_2

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    .line 75
    .local v11, "segment":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/smengine/math/Vector3f;>;"
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v18

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_1

    .line 76
    new-instance v17, Ljava/lang/RuntimeException;

    const-string v18, "must be 4 points"

    invoke-direct/range {v17 .. v18}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 78
    :cond_1
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/smartisanos/smengine/math/Vector3f;

    .line 79
    .local v6, "p1":Lcom/smartisanos/smengine/math/Vector3f;
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/smartisanos/smengine/math/Vector3f;

    .line 80
    .local v7, "p2":Lcom/smartisanos/smengine/math/Vector3f;
    const/16 v18, 0x2

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/smartisanos/smengine/math/Vector3f;

    .line 81
    .local v8, "p3":Lcom/smartisanos/smengine/math/Vector3f;
    const/16 v18, 0x3

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/smartisanos/smengine/math/Vector3f;

    .line 82
    .local v9, "p4":Lcom/smartisanos/smengine/math/Vector3f;
    const/4 v13, 0x0

    .local v13, "t":F
    :goto_0
    const/high16 v18, 0x3f800000    # 1.0f

    cmpg-float v18, v13, v18

    if-gtz v18, :cond_0

    .line 83
    const/high16 v18, 0x3f800000    # 1.0f

    sub-float v18, v18, v13

    const/high16 v19, 0x3f800000    # 1.0f

    sub-float v19, v19, v13

    mul-float v18, v18, v19

    const/high16 v19, 0x3f800000    # 1.0f

    sub-float v19, v19, v13

    mul-float v2, v18, v19

    .line 84
    .local v2, "a":F
    const/high16 v18, 0x40400000    # 3.0f

    mul-float v18, v18, v13

    const/high16 v19, 0x3f800000    # 1.0f

    sub-float v19, v19, v13

    mul-float v18, v18, v19

    const/high16 v19, 0x3f800000    # 1.0f

    sub-float v19, v19, v13

    mul-float v3, v18, v19

    .line 85
    .local v3, "b":F
    const/high16 v18, 0x40400000    # 3.0f

    mul-float v18, v18, v13

    mul-float v18, v18, v13

    const/high16 v19, 0x3f800000    # 1.0f

    sub-float v19, v19, v13

    mul-float v4, v18, v19

    .line 86
    .local v4, "c":F
    mul-float v18, v13, v13

    mul-float v5, v18, v13

    .line 87
    .local v5, "d":F
    iget v0, v6, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v18, v0

    mul-float v18, v18, v2

    iget v0, v7, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v19, v0

    mul-float v19, v19, v3

    add-float v18, v18, v19

    iget v0, v8, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v19, v0

    mul-float v19, v19, v4

    add-float v18, v18, v19

    iget v0, v9, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v19, v0

    mul-float v19, v19, v5

    add-float v14, v18, v19

    .line 88
    .local v14, "x":F
    iget v0, v6, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v18, v0

    mul-float v18, v18, v2

    iget v0, v7, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v19, v0

    mul-float v19, v19, v3

    add-float v18, v18, v19

    iget v0, v8, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v19, v0

    mul-float v19, v19, v4

    add-float v18, v18, v19

    iget v0, v9, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v19, v0

    mul-float v19, v19, v5

    add-float v15, v18, v19

    .line 89
    .local v15, "y":F
    iget v0, v6, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    move/from16 v18, v0

    mul-float v18, v18, v2

    iget v0, v7, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    move/from16 v19, v0

    mul-float v19, v19, v3

    add-float v18, v18, v19

    iget v0, v8, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    move/from16 v19, v0

    mul-float v19, v19, v4

    add-float v18, v18, v19

    iget v0, v9, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    move/from16 v19, v0

    mul-float v19, v19, v5

    add-float v16, v18, v19

    .line 90
    .local v16, "z":F
    new-instance v18, Lcom/smartisanos/smengine/math/Vector3f;

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-direct {v0, v14, v15, v1}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    add-float/2addr v13, v12

    goto/16 :goto_0

    .line 93
    .end local v2    # "a":F
    .end local v3    # "b":F
    .end local v4    # "c":F
    .end local v5    # "d":F
    .end local v6    # "p1":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v7    # "p2":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v8    # "p3":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v9    # "p4":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v11    # "segment":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/smengine/math/Vector3f;>;"
    .end local v13    # "t":F
    .end local v14    # "x":F
    .end local v15    # "y":F
    .end local v16    # "z":F
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v10, v1}, Lcom/smartisanos/smengine/CurveNode;->createMesh(Ljava/util/ArrayList;Lcom/smartisanos/smengine/math/Vector4f;)V

    .line 94
    return-void
.end method

.method public createHermite(ILcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector4f;)V
    .locals 13
    .param p1, "count"    # I
    .param p2, "startVector"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p3, "endVector"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p4, "color"    # Lcom/smartisanos/smengine/math/Vector4f;

    .prologue
    .line 53
    new-instance v3, Lcom/smartisanos/smengine/math/Vector3f;

    const/high16 v9, -0x40800000    # -1.0f

    const/high16 v10, -0x40800000    # -1.0f

    const/4 v11, 0x0

    invoke-direct {v3, v9, v10, v11}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    .line 54
    .local v3, "startPoint":Lcom/smartisanos/smengine/math/Vector3f;
    new-instance v1, Lcom/smartisanos/smengine/math/Vector3f;

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    invoke-direct {v1, v9, v10, v11}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    .line 57
    .local v1, "endPoint":Lcom/smartisanos/smengine/math/Vector3f;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .local v2, "pointsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/smengine/math/Vector3f;>;"
    const/high16 v9, 0x3f800000    # 1.0f

    int-to-float v10, p1

    div-float v4, v9, v10

    .line 59
    .local v4, "step":F
    const/4 v5, 0x0

    .local v5, "t":F
    :goto_0
    const/high16 v9, 0x3f800000    # 1.0f

    cmpg-float v9, v5, v9

    if-gtz v9, :cond_0

    .line 60
    iget v9, v3, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x40400000    # 3.0f

    mul-float/2addr v11, v5

    mul-float/2addr v11, v5

    sub-float/2addr v10, v11

    const/high16 v11, 0x40000000    # 2.0f

    mul-float/2addr v11, v5

    mul-float/2addr v11, v5

    mul-float/2addr v11, v5

    add-float/2addr v10, v11

    mul-float/2addr v9, v10

    iget v10, v1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    mul-float/2addr v10, v5

    mul-float/2addr v10, v5

    const/high16 v11, 0x40400000    # 3.0f

    const/high16 v12, 0x40000000    # 2.0f

    mul-float/2addr v12, v5

    sub-float/2addr v11, v12

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    iget v10, p2, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    mul-float/2addr v10, v5

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float v11, v5, v11

    mul-float/2addr v10, v11

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float v11, v5, v11

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    move-object/from16 v0, p3

    iget v10, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    mul-float/2addr v10, v5

    mul-float/2addr v10, v5

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float v11, v5, v11

    mul-float/2addr v10, v11

    add-float v6, v9, v10

    .line 62
    .local v6, "x":F
    iget v9, v3, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x40400000    # 3.0f

    mul-float/2addr v11, v5

    mul-float/2addr v11, v5

    sub-float/2addr v10, v11

    const/high16 v11, 0x40000000    # 2.0f

    mul-float/2addr v11, v5

    mul-float/2addr v11, v5

    mul-float/2addr v11, v5

    add-float/2addr v10, v11

    mul-float/2addr v9, v10

    iget v10, v1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    mul-float/2addr v10, v5

    mul-float/2addr v10, v5

    const/high16 v11, 0x40400000    # 3.0f

    const/high16 v12, 0x40000000    # 2.0f

    mul-float/2addr v12, v5

    sub-float/2addr v11, v12

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    iget v10, p2, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    mul-float/2addr v10, v5

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float v11, v5, v11

    mul-float/2addr v10, v11

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float v11, v5, v11

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    move-object/from16 v0, p3

    iget v10, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    mul-float/2addr v10, v5

    mul-float/2addr v10, v5

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float v11, v5, v11

    mul-float/2addr v10, v11

    add-float v7, v9, v10

    .line 64
    .local v7, "y":F
    iget v9, v3, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x40400000    # 3.0f

    mul-float/2addr v11, v5

    mul-float/2addr v11, v5

    sub-float/2addr v10, v11

    const/high16 v11, 0x40000000    # 2.0f

    mul-float/2addr v11, v5

    mul-float/2addr v11, v5

    mul-float/2addr v11, v5

    add-float/2addr v10, v11

    mul-float/2addr v9, v10

    iget v10, v1, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    mul-float/2addr v10, v5

    mul-float/2addr v10, v5

    const/high16 v11, 0x40400000    # 3.0f

    const/high16 v12, 0x40000000    # 2.0f

    mul-float/2addr v12, v5

    sub-float/2addr v11, v12

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    iget v10, p2, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    mul-float/2addr v10, v5

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float v11, v5, v11

    mul-float/2addr v10, v11

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float v11, v5, v11

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    move-object/from16 v0, p3

    iget v10, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    mul-float/2addr v10, v5

    mul-float/2addr v10, v5

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float v11, v5, v11

    mul-float/2addr v10, v11

    add-float v8, v9, v10

    .line 66
    .local v8, "z":F
    new-instance v9, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v9, v6, v7, v8}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    add-float/2addr v5, v4

    goto/16 :goto_0

    .line 68
    .end local v6    # "x":F
    .end local v7    # "y":F
    .end local v8    # "z":F
    :cond_0
    move-object/from16 v0, p4

    invoke-direct {p0, v2, v0}, Lcom/smartisanos/smengine/CurveNode;->createMesh(Ljava/util/ArrayList;Lcom/smartisanos/smengine/math/Vector4f;)V

    .line 69
    return-void
.end method
