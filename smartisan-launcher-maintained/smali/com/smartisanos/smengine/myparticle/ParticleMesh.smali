.class public Lcom/smartisanos/smengine/myparticle/ParticleMesh;
.super Lcom/smartisanos/smengine/Mesh;
.source "ParticleMesh.java"


.field public static final INVALID:I = 0x0

.field public static final POINT:I = 0x1

.field public static final TRIANGLE:I = 0x2


.field private mMeshType:I


.method public constructor <init>(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/smartisanos/smengine/Mesh;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/smartisanos/smengine/myparticle/ParticleMesh;->mMeshType:I

    .line 22
    iput p1, p0, Lcom/smartisanos/smengine/myparticle/ParticleMesh;->mMeshType:I

    .line 23
    return-void
.end method


.method public initParticleData(Lcom/smartisanos/smengine/myparticle/ParticleEmitter;I)V
    .locals 22
    .param p1, "emitter"    # Lcom/smartisanos/smengine/myparticle/ParticleEmitter;
    .param p2, "numParticles"    # I

    .prologue
    .line 31
    invoke-virtual/range {p1 .. p1}, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->getParticles()[Lcom/smartisanos/smengine/myparticle/Particle;

    move-result-object v15

    .line 32
    .local v15, "particles":[Lcom/smartisanos/smengine/myparticle/Particle;
    move-object/from16 v0, p0

    iget v1, v0, Lcom/smartisanos/smengine/myparticle/ParticleMesh;->mMeshType:I

    packed-switch v1, :pswitch_data_0

    .line 125
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v6, "unknown particle mesh type"

    invoke-direct {v1, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 35
    :pswitch_0
    mul-int/lit8 v1, p2, 0x3

    new-array v2, v1, [F

    .line 36
    .local v2, "points":[F
    mul-int/lit8 v1, p2, 0x4

    new-array v5, v1, [F

    .line 37
    .local v5, "colors":[F
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    move/from16 v0, p2

    if-ge v8, v0, :cond_0

    .line 38
    aget-object v14, v15, v8

    .line 39
    .local v14, "p":Lcom/smartisanos/smengine/myparticle/Particle;
    iget-object v0, v14, Lcom/smartisanos/smengine/myparticle/Particle;->position:Lcom/smartisanos/smengine/math/Vector3f;

    move-object/from16 v17, v0

    .line 40
    .local v17, "pos":Lcom/smartisanos/smengine/math/Vector3f;
    iget-object v7, v14, Lcom/smartisanos/smengine/myparticle/Particle;->color:Lcom/smartisanos/smengine/math/Vector4f;

    .line 41
    .local v7, "color":Lcom/smartisanos/smengine/math/Vector4f;
    mul-int/lit8 v1, v8, 0x3

    move-object/from16 v0, v17

    iget v6, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    aput v6, v2, v1

    .line 42
    mul-int/lit8 v1, v8, 0x3

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, v17

    iget v6, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    aput v6, v2, v1

    .line 43
    mul-int/lit8 v1, v8, 0x3

    add-int/lit8 v1, v1, 0x2

    move-object/from16 v0, v17

    iget v6, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    aput v6, v2, v1

    .line 44
    mul-int/lit8 v1, v8, 0x4

    iget v6, v7, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    aput v6, v5, v1

    .line 45
    mul-int/lit8 v1, v8, 0x4

    add-int/lit8 v1, v1, 0x1

    iget v6, v7, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    aput v6, v5, v1

    .line 46
    mul-int/lit8 v1, v8, 0x4

    add-int/lit8 v1, v1, 0x2

    iget v6, v7, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    aput v6, v5, v1

    .line 47
    mul-int/lit8 v1, v8, 0x4

    add-int/lit8 v1, v1, 0x3

    iget v6, v7, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    aput v6, v5, v1

    .line 37
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 49
    .end local v7    # "color":Lcom/smartisanos/smengine/math/Vector4f;
    .end local v14    # "p":Lcom/smartisanos/smengine/myparticle/Particle;
    .end local v17    # "pos":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/smartisanos/smengine/myparticle/ParticleMesh;->create([F[F[S[FZ)V

    .line 127
    :goto_1
    return-void

    .line 54
    .end local v2    # "points":[F
    .end local v5    # "colors":[F
    .end local v8    # "i":I
    :pswitch_1
    mul-int/lit8 v16, p2, 0x4

    .line 55
    .local v16, "pointNum":I
    mul-int/lit8 v1, v16, 0x3

    new-array v2, v1, [F

    .line 56
    .restart local v2    # "points":[F
    mul-int/lit8 v1, v16, 0x2

    new-array v3, v1, [F

    .line 57
    .local v3, "texCoords":[F
    mul-int/lit8 v1, p2, 0x6

    new-array v4, v1, [S

    .line 58
    .local v4, "faces":[S
    mul-int/lit8 v1, v16, 0x4

    new-array v5, v1, [F

    .line 59
    .restart local v5    # "colors":[F
    const/4 v10, 0x0

    .line 60
    .local v10, "k":I
    const/4 v9, 0x0

    .local v9, "j":I
    move v11, v10

    .end local v10    # "k":I
    .local v11, "k":I
    :goto_2
    move/from16 v0, p2

    if-ge v9, v0, :cond_1

    .line 61
    new-instance v13, Lcom/smartisanos/smengine/math/Vector2f;

    const/high16 v1, -0x41000000    # -0.5f

    const/high16 v6, -0x41000000    # -0.5f

    invoke-direct {v13, v1, v6}, Lcom/smartisanos/smengine/math/Vector2f;-><init>(FF)V

    .line 62
    .local v13, "minPoint":Lcom/smartisanos/smengine/math/Vector2f;
    new-instance v12, Lcom/smartisanos/smengine/math/Vector2f;

    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-direct {v12, v1, v6}, Lcom/smartisanos/smengine/math/Vector2f;-><init>(FF)V

    .line 63
    .local v12, "maxPoint":Lcom/smartisanos/smengine/math/Vector2f;
    add-int/lit8 v10, v11, 0x1

    .end local v11    # "k":I
    .restart local v10    # "k":I
    iget v1, v13, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    aput v1, v2, v11

    .line 64
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "k":I
    .restart local v11    # "k":I
    iget v1, v13, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    aput v1, v2, v10

    .line 65
    add-int/lit8 v10, v11, 0x1

    .end local v11    # "k":I
    .restart local v10    # "k":I
    const/4 v1, 0x0

    aput v1, v2, v11

    .line 67
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "k":I
    .restart local v11    # "k":I
    iget v1, v12, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    aput v1, v2, v10

    .line 68
    add-int/lit8 v10, v11, 0x1

    .end local v11    # "k":I
    .restart local v10    # "k":I
    iget v1, v13, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    aput v1, v2, v11

    .line 69
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "k":I
    .restart local v11    # "k":I
    const/4 v1, 0x0

    aput v1, v2, v10

    .line 71
    add-int/lit8 v10, v11, 0x1

    .end local v11    # "k":I
    .restart local v10    # "k":I
    iget v1, v12, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    aput v1, v2, v11

    .line 72
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "k":I
    .restart local v11    # "k":I
    iget v1, v12, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    aput v1, v2, v10

    .line 73
    add-int/lit8 v10, v11, 0x1

    .end local v11    # "k":I
    .restart local v10    # "k":I
    const/4 v1, 0x0

    aput v1, v2, v11

    .line 75
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "k":I
    .restart local v11    # "k":I
    iget v1, v13, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    aput v1, v2, v10

    .line 76
    add-int/lit8 v10, v11, 0x1

    .end local v11    # "k":I
    .restart local v10    # "k":I
    iget v1, v12, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    aput v1, v2, v11

    .line 77
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "k":I
    .restart local v11    # "k":I
    const/4 v1, 0x0

    aput v1, v2, v10

    .line 78
    aget-object v1, v15, v9

    iget-object v1, v1, Lcom/smartisanos/smengine/myparticle/Particle;->position:Lcom/smartisanos/smengine/math/Vector3f;

    const/4 v6, 0x0

    iput v6, v1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 79
    aget-object v1, v15, v9

    iget-object v1, v1, Lcom/smartisanos/smengine/myparticle/Particle;->position:Lcom/smartisanos/smengine/math/Vector3f;

    const/4 v6, 0x0

    iput v6, v1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 80
    aget-object v1, v15, v9

    iget-object v1, v1, Lcom/smartisanos/smengine/myparticle/Particle;->position:Lcom/smartisanos/smengine/math/Vector3f;

    const/4 v6, 0x0

    iput v6, v1, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    .line 60
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 82
    .end local v12    # "maxPoint":Lcom/smartisanos/smengine/math/Vector2f;
    .end local v13    # "minPoint":Lcom/smartisanos/smengine/math/Vector2f;
    :cond_1
    const/4 v10, 0x0

    .line 83
    .end local v11    # "k":I
    .restart local v10    # "k":I
    const/4 v9, 0x0

    move v11, v10

    .end local v10    # "k":I
    .restart local v11    # "k":I
    :goto_3
    move/from16 v0, p2

    if-ge v9, v0, :cond_2

    .line 84
    new-instance v13, Lcom/smartisanos/smengine/math/Vector2f;

    const/4 v1, 0x0

    const/4 v6, 0x0

    invoke-direct {v13, v1, v6}, Lcom/smartisanos/smengine/math/Vector2f;-><init>(FF)V

    .line 85
    .restart local v13    # "minPoint":Lcom/smartisanos/smengine/math/Vector2f;
    new-instance v12, Lcom/smartisanos/smengine/math/Vector2f;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v12, v1, v6}, Lcom/smartisanos/smengine/math/Vector2f;-><init>(FF)V

    .line 86
    .restart local v12    # "maxPoint":Lcom/smartisanos/smengine/math/Vector2f;
    add-int/lit8 v10, v11, 0x1

    .end local v11    # "k":I
    .restart local v10    # "k":I
    iget v1, v13, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    aput v1, v3, v11

    .line 87
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "k":I
    .restart local v11    # "k":I
    iget v1, v13, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    aput v1, v3, v10

    .line 89
    add-int/lit8 v10, v11, 0x1

    .end local v11    # "k":I
    .restart local v10    # "k":I
    iget v1, v12, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    aput v1, v3, v11

    .line 90
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "k":I
    .restart local v11    # "k":I
    iget v1, v13, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    aput v1, v3, v10

    .line 92
    add-int/lit8 v10, v11, 0x1

    .end local v11    # "k":I
    .restart local v10    # "k":I
    iget v1, v12, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    aput v1, v3, v11

    .line 93
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "k":I
    .restart local v11    # "k":I
    iget v1, v12, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    aput v1, v3, v10

    .line 95
    add-int/lit8 v10, v11, 0x1

    .end local v11    # "k":I
    .restart local v10    # "k":I
    iget v1, v13, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    aput v1, v3, v11

    .line 96
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "k":I
    .restart local v11    # "k":I
    iget v1, v12, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    aput v1, v3, v10

    .line 83
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 98
    .end local v12    # "maxPoint":Lcom/smartisanos/smengine/math/Vector2f;
    .end local v13    # "minPoint":Lcom/smartisanos/smengine/math/Vector2f;
    :cond_2
    const/4 v10, 0x0

    .line 99
    .end local v11    # "k":I
    .restart local v10    # "k":I
    const/4 v9, 0x0

    move v11, v10

    .end local v10    # "k":I
    .restart local v11    # "k":I
    :goto_4
    move/from16 v0, p2

    if-ge v9, v0, :cond_3

    .line 100
    mul-int/lit8 v1, v9, 0x4

    int-to-short v0, v1

    move/from16 v18, v0

    .line 101
    .local v18, "v0":S
    add-int/lit8 v1, v18, 0x1

    int-to-short v0, v1

    move/from16 v19, v0

    .line 102
    .local v19, "v1":S
    add-int/lit8 v1, v19, 0x1

    int-to-short v0, v1

    move/from16 v20, v0

    .line 103
    .local v20, "v2":S
    add-int/lit8 v1, v20, 0x1

    int-to-short v0, v1

    move/from16 v21, v0

    .line 104
    .local v21, "v3":S
    add-int/lit8 v10, v11, 0x1

    .end local v11    # "k":I
    .restart local v10    # "k":I
    aput-short v18, v4, v11

    .line 105
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "k":I
    .restart local v11    # "k":I
    aput-short v19, v4, v10

    .line 106
    add-int/lit8 v10, v11, 0x1

    .end local v11    # "k":I
    .restart local v10    # "k":I
    aput-short v20, v4, v11

    .line 107
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "k":I
    .restart local v11    # "k":I
    aput-short v18, v4, v10

    .line 108
    add-int/lit8 v10, v11, 0x1

    .end local v11    # "k":I
    .restart local v10    # "k":I
    aput-short v20, v4, v11

    .line 109
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "k":I
    .restart local v11    # "k":I
    aput-short v21, v4, v10

    .line 99
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 111
    .end local v18    # "v0":S
    .end local v19    # "v1":S
    .end local v20    # "v2":S
    .end local v21    # "v3":S
    :cond_3
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_5
    move/from16 v0, p2

    if-ge v8, v0, :cond_5

    .line 112
    aget-object v14, v15, v8

    .line 113
    .restart local v14    # "p":Lcom/smartisanos/smengine/myparticle/Particle;
    iget-object v7, v14, Lcom/smartisanos/smengine/myparticle/Particle;->color:Lcom/smartisanos/smengine/math/Vector4f;

    .line 114
    .restart local v7    # "color":Lcom/smartisanos/smengine/math/Vector4f;
    const/4 v9, 0x0

    :goto_6
    const/4 v1, 0x4

    if-ge v9, v1, :cond_4

    .line 115
    add-int v1, v8, v9

    mul-int/lit8 v1, v1, 0x4

    iget v6, v7, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    aput v6, v5, v1

    .line 116
    add-int v1, v8, v9

    mul-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x1

    iget v6, v7, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    aput v6, v5, v1

    .line 117
    add-int v1, v8, v9

    mul-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x2

    iget v6, v7, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    aput v6, v5, v1

    .line 118
    add-int v1, v8, v9

    mul-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x3

    iget v6, v7, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    aput v6, v5, v1

    .line 114
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 111
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 121
    .end local v7    # "color":Lcom/smartisanos/smengine/math/Vector4f;
    .end local v14    # "p":Lcom/smartisanos/smengine/myparticle/Particle;
    :cond_5
    const/4 v6, 0x1

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/smartisanos/smengine/myparticle/ParticleMesh;->create([F[F[S[FZ)V

    goto/16 :goto_1

    .line 32
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setImagesXY(II)V
    .locals 0
    .param p1, "imagesX"    # I
    .param p2, "imagesY"    # I

    .prologue
    .line 136
    return-void
.end method

.method public updateParticleData([Lcom/smartisanos/smengine/myparticle/Particle;Lcom/smartisanos/smengine/Camera;Lcom/smartisanos/smengine/math/Matrix3f;)V
    .locals 13
    .param p1, "particles"    # [Lcom/smartisanos/smengine/myparticle/Particle;
    .param p2, "cam"    # Lcom/smartisanos/smengine/Camera;
    .param p3, "inverseRotation"    # Lcom/smartisanos/smengine/math/Matrix3f;

    .prologue
    .line 142
    iget v11, p0, Lcom/smartisanos/smengine/myparticle/ParticleMesh;->mMeshType:I

    packed-switch v11, :pswitch_data_0

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 145
    :pswitch_0
    invoke-virtual {p0}, Lcom/smartisanos/smengine/myparticle/ParticleMesh;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    .line 146
    .local v1, "fb":Ljava/nio/FloatBuffer;
    if-eqz v1, :cond_0

    .line 147
    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    .line 148
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    array-length v11, p1

    if-ge v5, v11, :cond_1

    .line 150
    aget-object v8, p1, v5

    .line 157
    .local v8, "p":Lcom/smartisanos/smengine/myparticle/Particle;
    iget-object v9, v8, Lcom/smartisanos/smengine/myparticle/Particle;->position:Lcom/smartisanos/smengine/math/Vector3f;

    .line 159
    .local v9, "pos":Lcom/smartisanos/smengine/math/Vector3f;
    iget-object v0, v8, Lcom/smartisanos/smengine/myparticle/Particle;->color:Lcom/smartisanos/smengine/math/Vector4f;

    .line 160
    .local v0, "color":Lcom/smartisanos/smengine/math/Vector4f;
    iget v11, v9, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    invoke-virtual {v1, v11}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v11

    iget v12, v9, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    invoke-virtual {v11, v12}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v11

    iget v12, v9, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-virtual {v11, v12}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v11

    iget v12, v0, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    invoke-virtual {v11, v12}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v11

    iget v12, v0, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    invoke-virtual {v11, v12}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v11

    iget v12, v0, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    invoke-virtual {v11, v12}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v11

    iget v12, v0, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    invoke-virtual {v11, v12}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 148
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 163
    .end local v0    # "color":Lcom/smartisanos/smengine/math/Vector4f;
    .end local v8    # "p":Lcom/smartisanos/smengine/myparticle/Particle;
    .end local v9    # "pos":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_1
    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 169
    .end local v1    # "fb":Ljava/nio/FloatBuffer;
    .end local v5    # "i":I
    :pswitch_1
    invoke-virtual {p0}, Lcom/smartisanos/smengine/myparticle/ParticleMesh;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    .line 170
    .restart local v1    # "fb":Ljava/nio/FloatBuffer;
    if-eqz v1, :cond_0

    .line 171
    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    .line 172
    const/high16 v4, 0x40000000    # 2.0f

    .line 173
    .local v4, "hunitW":F
    const/high16 v3, 0x40000000    # 2.0f

    .line 174
    .local v3, "hunitH":F
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_2
    array-length v11, p1

    if-ge v5, v11, :cond_2

    .line 175
    aget-object v8, p1, v5

    .line 176
    .restart local v8    # "p":Lcom/smartisanos/smengine/myparticle/Particle;
    iget-object v9, v8, Lcom/smartisanos/smengine/myparticle/Particle;->position:Lcom/smartisanos/smengine/math/Vector3f;

    .line 177
    .restart local v9    # "pos":Lcom/smartisanos/smengine/math/Vector3f;
    iget-object v0, v8, Lcom/smartisanos/smengine/myparticle/Particle;->color:Lcom/smartisanos/smengine/math/Vector4f;

    .line 180
    .restart local v0    # "color":Lcom/smartisanos/smengine/math/Vector4f;
    move v10, v4

    .line 181
    .local v10, "w":F
    move v2, v3

    .line 182
    .local v2, "h":F
    new-instance v7, Lcom/smartisanos/smengine/math/Vector2f;

    iget v11, v9, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    sub-float/2addr v11, v10

    iget v12, v9, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    sub-float/2addr v12, v2

    invoke-direct {v7, v11, v12}, Lcom/smartisanos/smengine/math/Vector2f;-><init>(FF)V

    .line 183
    .local v7, "minPos":Lcom/smartisanos/smengine/math/Vector2f;
    new-instance v6, Lcom/smartisanos/smengine/math/Vector2f;

    iget v11, v9, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    add-float/2addr v11, v10

    iget v12, v9, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    add-float/2addr v12, v2

    invoke-direct {v6, v11, v12}, Lcom/smartisanos/smengine/math/Vector2f;-><init>(FF)V

    .line 193
    .local v6, "maxPos":Lcom/smartisanos/smengine/math/Vector2f;
    iget v11, v7, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    invoke-virtual {v1, v11}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v11

    iget v12, v7, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    invoke-virtual {v11, v12}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 195
    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->position()I

    move-result v11

    add-int/lit8 v11, v11, 0x2

    invoke-virtual {v1, v11}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 196
    iget v11, v0, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    invoke-virtual {v1, v11}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v11

    iget v12, v0, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    invoke-virtual {v11, v12}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v11

    iget v12, v0, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    invoke-virtual {v11, v12}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v11

    iget v12, v0, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    invoke-virtual {v11, v12}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 199
    iget v11, v6, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    invoke-virtual {v1, v11}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v11

    iget v12, v7, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    invoke-virtual {v11, v12}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 201
    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->position()I

    move-result v11

    add-int/lit8 v11, v11, 0x2

    invoke-virtual {v1, v11}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 202
    iget v11, v0, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    invoke-virtual {v1, v11}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v11

    iget v12, v0, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    invoke-virtual {v11, v12}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v11

    iget v12, v0, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    invoke-virtual {v11, v12}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v11

    iget v12, v0, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    invoke-virtual {v11, v12}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 205
    iget v11, v6, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    invoke-virtual {v1, v11}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v11

    iget v12, v6, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    invoke-virtual {v11, v12}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 207
    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->position()I

    move-result v11

    add-int/lit8 v11, v11, 0x2

    invoke-virtual {v1, v11}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 208
    iget v11, v0, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    invoke-virtual {v1, v11}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v11

    iget v12, v0, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    invoke-virtual {v11, v12}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v11

    iget v12, v0, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    invoke-virtual {v11, v12}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v11

    iget v12, v0, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    invoke-virtual {v11, v12}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 211
    iget v11, v7, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    invoke-virtual {v1, v11}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v11

    iget v12, v6, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    invoke-virtual {v11, v12}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 213
    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->position()I

    move-result v11

    add-int/lit8 v11, v11, 0x2

    invoke-virtual {v1, v11}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 214
    iget v11, v0, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    invoke-virtual {v1, v11}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v11

    iget v12, v0, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    invoke-virtual {v11, v12}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v11

    iget v12, v0, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    invoke-virtual {v11, v12}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v11

    iget v12, v0, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    invoke-virtual {v11, v12}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 174
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 216
    .end local v0    # "color":Lcom/smartisanos/smengine/math/Vector4f;
    .end local v2    # "h":F
    .end local v6    # "maxPos":Lcom/smartisanos/smengine/math/Vector2f;
    .end local v7    # "minPos":Lcom/smartisanos/smengine/math/Vector2f;
    .end local v8    # "p":Lcom/smartisanos/smengine/myparticle/Particle;
    .end local v9    # "pos":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v10    # "w":F
    :cond_2
    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_0

    .line 142
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
