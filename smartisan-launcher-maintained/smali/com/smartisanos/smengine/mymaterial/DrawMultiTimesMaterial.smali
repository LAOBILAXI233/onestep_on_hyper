.class public Lcom/smartisanos/smengine/mymaterial/DrawMultiTimesMaterial;
.super Lcom/smartisanos/smengine/mymaterial/Material;
.source "DrawMultiTimesMaterial.java"


.field private mOffsetXYZ:[F

.field private mOffsetXYZHandle:I


.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "vertexStr"    # Ljava/lang/String;
    .param p3, "fragmentStr"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/smartisanos/smengine/mymaterial/Material;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    const/4 v0, -0x1

    iput v0, p0, Lcom/smartisanos/smengine/mymaterial/DrawMultiTimesMaterial;->mOffsetXYZHandle:I

    .line 17
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/smartisanos/smengine/mymaterial/DrawMultiTimesMaterial;->mOffsetXYZ:[F

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smartisanos/smengine/mymaterial/DrawMultiTimesMaterial;->mUseMVPMatrix:Z

    .line 22
    iput-boolean v1, p0, Lcom/smartisanos/smengine/mymaterial/DrawMultiTimesMaterial;->mUseWorldMatrix:Z

    .line 23
    iput-boolean v1, p0, Lcom/smartisanos/smengine/mymaterial/DrawMultiTimesMaterial;->mUseCameraMatrix:Z

    .line 24
    return-void
.end method


.method public draw(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/smengine/Mesh;Z)V
    .locals 12
    .param p1, "sn"    # Lcom/smartisanos/smengine/SceneNode;
    .param p2, "mesh"    # Lcom/smartisanos/smengine/Mesh;
    .param p3, "isUseVBO"    # Z

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/DrawMultiTimesMaterial;->use()V

    .line 29
    instance-of v8, p1, Lcom/smartisanos/launcher/animations/DrawMultiTimesScreenNode;

    if-eqz v8, :cond_4

    move-object v1, p1

    .line 30
    check-cast v1, Lcom/smartisanos/launcher/animations/DrawMultiTimesScreenNode;

    .line 31
    .local v1, "drawMultiTimesScreenNode":Lcom/smartisanos/launcher/animations/DrawMultiTimesScreenNode;
    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {p0, p3, p2, v8, v9}, Lcom/smartisanos/smengine/mymaterial/DrawMultiTimesMaterial;->setVertexData(ZLcom/smartisanos/smengine/Mesh;ZZ)V

    .line 32
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/mymaterial/DrawMultiTimesMaterial;->setCameraMatrix(Lcom/smartisanos/smengine/SceneNode;)V

    .line 33
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/mymaterial/DrawMultiTimesMaterial;->setWorldMatrix(Lcom/smartisanos/smengine/SceneNode;)V

    .line 34
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/DrawMultiTimesMaterial;->setModularColor()V

    .line 35
    iget v8, p0, Lcom/smartisanos/smengine/mymaterial/DrawMultiTimesMaterial;->mOffsetXYZHandle:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_0

    .line 36
    iget-object v8, p0, Lcom/smartisanos/smengine/mymaterial/DrawMultiTimesMaterial;->mShader:Lcom/smartisanos/smengine/Shader;

    const-string v9, "uOffsetXYZ"

    invoke-virtual {v8, v9}, Lcom/smartisanos/smengine/Shader;->getUniformLocation(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/smartisanos/smengine/mymaterial/DrawMultiTimesMaterial;->mOffsetXYZHandle:I

    .line 39
    :cond_0
    invoke-virtual {v1}, Lcom/smartisanos/launcher/animations/DrawMultiTimesScreenNode;->getDrawTimes()I

    move-result v2

    .line 40
    .local v2, "drawTimes":I
    const/4 v4, 0x0

    .local v4, "index":I
    :goto_0
    if-ge v4, v2, :cond_a

    .line 41
    invoke-virtual {v1, v4}, Lcom/smartisanos/launcher/animations/DrawMultiTimesScreenNode;->getDrawPositionOffset(I)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v6

    .line 42
    .local v6, "offset":Lcom/smartisanos/smengine/math/Vector3f;
    if-eqz v6, :cond_1

    .line 43
    iget-object v8, p0, Lcom/smartisanos/smengine/mymaterial/DrawMultiTimesMaterial;->mOffsetXYZ:[F

    invoke-virtual {v6, v8}, Lcom/smartisanos/smengine/math/Vector3f;->toArray([F)[F

    .line 44
    iget v8, p0, Lcom/smartisanos/smengine/mymaterial/DrawMultiTimesMaterial;->mOffsetXYZHandle:I

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/smartisanos/smengine/mymaterial/DrawMultiTimesMaterial;->mOffsetXYZ:[F

    const/4 v11, 0x0

    invoke-static {v8, v9, v10, v11}, Landroid/opengl/GLES20;->glUniform3fv(II[FI)V

    .line 46
    :cond_1
    invoke-virtual {v1, v4}, Lcom/smartisanos/launcher/animations/DrawMultiTimesScreenNode;->getDrawImageName(I)Ljava/lang/String;

    move-result-object v3

    .line 47
    .local v3, "imageName":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 48
    const/4 v8, 0x0

    invoke-virtual {p0, v8, v3}, Lcom/smartisanos/smengine/mymaterial/DrawMultiTimesMaterial;->addTexture(ILjava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/DrawMultiTimesMaterial;->bindTexture()V

    .line 50
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/smartisanos/smengine/mymaterial/DrawMultiTimesMaterial;->setDiffuseMap(I)V

    .line 52
    :cond_2
    if-eqz v6, :cond_3

    .line 53
    invoke-virtual {p0, p2, p3}, Lcom/smartisanos/smengine/mymaterial/DrawMultiTimesMaterial;->drawPrimitive(Lcom/smartisanos/smengine/Mesh;Z)V

    .line 40
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 56
    .end local v1    # "drawMultiTimesScreenNode":Lcom/smartisanos/launcher/animations/DrawMultiTimesScreenNode;
    .end local v2    # "drawTimes":I
    .end local v3    # "imageName":Ljava/lang/String;
    .end local v4    # "index":I
    .end local v6    # "offset":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_4
    instance-of v8, p1, Lcom/smartisanos/launcher/animations/PageScrollShadowRotateIcon;

    if-eqz v8, :cond_6

    move-object v7, p1

    .line 57
    check-cast v7, Lcom/smartisanos/launcher/animations/PageScrollShadowRotateIcon;

    .line 58
    .local v7, "pageScrollShadow":Lcom/smartisanos/launcher/animations/PageScrollShadowRotateIcon;
    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {p0, p3, p2, v8, v9}, Lcom/smartisanos/smengine/mymaterial/DrawMultiTimesMaterial;->setVertexData(ZLcom/smartisanos/smengine/Mesh;ZZ)V

    .line 59
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/mymaterial/DrawMultiTimesMaterial;->setCameraMatrix(Lcom/smartisanos/smengine/SceneNode;)V

    .line 60
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/mymaterial/DrawMultiTimesMaterial;->setWorldMatrix(Lcom/smartisanos/smengine/SceneNode;)V

    .line 61
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/DrawMultiTimesMaterial;->setModularColor()V

    .line 62
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/DrawMultiTimesMaterial;->bindTexture()V

    .line 63
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/smartisanos/smengine/mymaterial/DrawMultiTimesMaterial;->setDiffuseMap(I)V

    .line 64
    iget v8, p0, Lcom/smartisanos/smengine/mymaterial/DrawMultiTimesMaterial;->mOffsetXYZHandle:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_5

    .line 65
    iget-object v8, p0, Lcom/smartisanos/smengine/mymaterial/DrawMultiTimesMaterial;->mShader:Lcom/smartisanos/smengine/Shader;

    const-string v9, "uOffsetXYZ"

    invoke-virtual {v8, v9}, Lcom/smartisanos/smengine/Shader;->getUniformLocation(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/smartisanos/smengine/mymaterial/DrawMultiTimesMaterial;->mOffsetXYZHandle:I

    .line 67
    :cond_5
    invoke-virtual {v7}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotateIcon;->getDrawTimes()I

    move-result v2

    .line 68
    .restart local v2    # "drawTimes":I
    invoke-virtual {p2}, Lcom/smartisanos/smengine/Mesh;->getIndexBuffer()Ljava/nio/ShortBuffer;

    move-result-object v5

    .line 69
    .local v5, "indexBuffer":Ljava/nio/ShortBuffer;
    const/4 v4, 0x0

    .restart local v4    # "index":I
    :goto_1
    if-ge v4, v2, :cond_a

    .line 70
    invoke-virtual {v7, v4}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotateIcon;->getDrawPositionOffset(I)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v6

    .line 71
    .restart local v6    # "offset":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-virtual {v7, v4}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotateIcon;->getDrawAnimIndex(I)I

    move-result v0

    .line 72
    .local v0, "animIndex":I
    iget-object v8, p0, Lcom/smartisanos/smengine/mymaterial/DrawMultiTimesMaterial;->mOffsetXYZ:[F

    invoke-virtual {v6, v8}, Lcom/smartisanos/smengine/math/Vector3f;->toArray([F)[F

    .line 73
    iget v8, p0, Lcom/smartisanos/smengine/mymaterial/DrawMultiTimesMaterial;->mOffsetXYZHandle:I

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/smartisanos/smengine/mymaterial/DrawMultiTimesMaterial;->mOffsetXYZ:[F

    const/4 v11, 0x0

    invoke-static {v8, v9, v10, v11}, Landroid/opengl/GLES20;->glUniform3fv(II[FI)V

    .line 74
    mul-int/lit8 v8, v0, 0xc

    invoke-virtual {v5, v8}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 75
    const v8, 0x8893

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 76
    const/4 v8, 0x4

    const/16 v9, 0xc

    const/16 v10, 0x1403

    invoke-static {v8, v9, v10, v5}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 69
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 78
    .end local v0    # "animIndex":I
    .end local v2    # "drawTimes":I
    .end local v4    # "index":I
    .end local v5    # "indexBuffer":Ljava/nio/ShortBuffer;
    .end local v6    # "offset":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v7    # "pageScrollShadow":Lcom/smartisanos/launcher/animations/PageScrollShadowRotateIcon;
    :cond_6
    instance-of v8, p1, Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;

    if-eqz v8, :cond_8

    move-object v7, p1

    .line 79
    check-cast v7, Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;

    .line 80
    .local v7, "pageScrollShadow":Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;
    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {p0, p3, p2, v8, v9}, Lcom/smartisanos/smengine/mymaterial/DrawMultiTimesMaterial;->setVertexData(ZLcom/smartisanos/smengine/Mesh;ZZ)V

    .line 81
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/mymaterial/DrawMultiTimesMaterial;->setCameraMatrix(Lcom/smartisanos/smengine/SceneNode;)V

    .line 82
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/mymaterial/DrawMultiTimesMaterial;->setWorldMatrix(Lcom/smartisanos/smengine/SceneNode;)V

    .line 83
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/DrawMultiTimesMaterial;->setModularColor()V

    .line 84
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/DrawMultiTimesMaterial;->bindTexture()V

    .line 85
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/smartisanos/smengine/mymaterial/DrawMultiTimesMaterial;->setDiffuseMap(I)V

    .line 86
    iget v8, p0, Lcom/smartisanos/smengine/mymaterial/DrawMultiTimesMaterial;->mOffsetXYZHandle:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_7

    .line 87
    iget-object v8, p0, Lcom/smartisanos/smengine/mymaterial/DrawMultiTimesMaterial;->mShader:Lcom/smartisanos/smengine/Shader;

    const-string v9, "uOffsetXYZ"

    invoke-virtual {v8, v9}, Lcom/smartisanos/smengine/Shader;->getUniformLocation(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/smartisanos/smengine/mymaterial/DrawMultiTimesMaterial;->mOffsetXYZHandle:I

    .line 89
    :cond_7
    invoke-virtual {v7}, Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;->getDrawTimes()I

    move-result v2

    .line 90
    .restart local v2    # "drawTimes":I
    invoke-virtual {p2}, Lcom/smartisanos/smengine/Mesh;->getIndexBuffer()Ljava/nio/ShortBuffer;

    move-result-object v5

    .line 91
    .restart local v5    # "indexBuffer":Ljava/nio/ShortBuffer;
    const/4 v4, 0x0

    .restart local v4    # "index":I
    :goto_2
    if-ge v4, v2, :cond_a

    .line 92
    invoke-virtual {v7, v4}, Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;->getDrawPositionOffset(I)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v6

    .line 93
    .restart local v6    # "offset":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-virtual {v7, v4}, Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;->getDrawAnimIndex(I)I

    move-result v0

    .line 94
    .restart local v0    # "animIndex":I
    iget-object v8, p0, Lcom/smartisanos/smengine/mymaterial/DrawMultiTimesMaterial;->mOffsetXYZ:[F

    invoke-virtual {v6, v8}, Lcom/smartisanos/smengine/math/Vector3f;->toArray([F)[F

    .line 95
    iget v8, p0, Lcom/smartisanos/smengine/mymaterial/DrawMultiTimesMaterial;->mOffsetXYZHandle:I

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/smartisanos/smengine/mymaterial/DrawMultiTimesMaterial;->mOffsetXYZ:[F

    const/4 v11, 0x0

    invoke-static {v8, v9, v10, v11}, Landroid/opengl/GLES20;->glUniform3fv(II[FI)V

    .line 96
    mul-int/lit8 v8, v0, 0xc

    invoke-virtual {v5, v8}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 97
    const v8, 0x8893

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 98
    const/4 v8, 0x4

    const/16 v9, 0xc

    const/16 v10, 0x1403

    invoke-static {v8, v9, v10, v5}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 91
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 100
    .end local v0    # "animIndex":I
    .end local v2    # "drawTimes":I
    .end local v4    # "index":I
    .end local v5    # "indexBuffer":Ljava/nio/ShortBuffer;
    .end local v6    # "offset":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v7    # "pageScrollShadow":Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;
    :cond_8
    instance-of v8, p1, Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;

    if-eqz v8, :cond_a

    move-object v7, p1

    .line 101
    check-cast v7, Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;

    .line 102
    .local v7, "pageScrollShadow":Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;
    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {p0, p3, p2, v8, v9}, Lcom/smartisanos/smengine/mymaterial/DrawMultiTimesMaterial;->setVertexData(ZLcom/smartisanos/smengine/Mesh;ZZ)V

    .line 103
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/mymaterial/DrawMultiTimesMaterial;->setCameraMatrix(Lcom/smartisanos/smengine/SceneNode;)V

    .line 104
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/mymaterial/DrawMultiTimesMaterial;->setWorldMatrix(Lcom/smartisanos/smengine/SceneNode;)V

    .line 105
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/DrawMultiTimesMaterial;->setModularColor()V

    .line 106
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/DrawMultiTimesMaterial;->bindTexture()V

    .line 107
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/smartisanos/smengine/mymaterial/DrawMultiTimesMaterial;->setDiffuseMap(I)V

    .line 108
    iget v8, p0, Lcom/smartisanos/smengine/mymaterial/DrawMultiTimesMaterial;->mOffsetXYZHandle:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_9

    .line 109
    iget-object v8, p0, Lcom/smartisanos/smengine/mymaterial/DrawMultiTimesMaterial;->mShader:Lcom/smartisanos/smengine/Shader;

    const-string v9, "uOffsetXYZ"

    invoke-virtual {v8, v9}, Lcom/smartisanos/smengine/Shader;->getUniformLocation(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/smartisanos/smengine/mymaterial/DrawMultiTimesMaterial;->mOffsetXYZHandle:I

    .line 111
    :cond_9
    invoke-virtual {v7}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;->getDrawTimes()I

    move-result v2

    .line 112
    .restart local v2    # "drawTimes":I
    invoke-virtual {p2}, Lcom/smartisanos/smengine/Mesh;->getIndexBuffer()Ljava/nio/ShortBuffer;

    move-result-object v5

    .line 113
    .restart local v5    # "indexBuffer":Ljava/nio/ShortBuffer;
    const/4 v4, 0x0

    .restart local v4    # "index":I
    :goto_3
    if-ge v4, v2, :cond_a

    .line 114
    invoke-virtual {v7, v4}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;->getDrawPositionOffset(I)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v6

    .line 115
    .restart local v6    # "offset":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-virtual {v7, v4}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;->getDrawAnimIndex(I)I

    move-result v0

    .line 116
    .restart local v0    # "animIndex":I
    iget-object v8, p0, Lcom/smartisanos/smengine/mymaterial/DrawMultiTimesMaterial;->mOffsetXYZ:[F

    invoke-virtual {v6, v8}, Lcom/smartisanos/smengine/math/Vector3f;->toArray([F)[F

    .line 117
    iget v8, p0, Lcom/smartisanos/smengine/mymaterial/DrawMultiTimesMaterial;->mOffsetXYZHandle:I

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/smartisanos/smengine/mymaterial/DrawMultiTimesMaterial;->mOffsetXYZ:[F

    const/4 v11, 0x0

    invoke-static {v8, v9, v10, v11}, Landroid/opengl/GLES20;->glUniform3fv(II[FI)V

    .line 118
    mul-int/lit8 v8, v0, 0xc

    invoke-virtual {v5, v8}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 119
    const v8, 0x8893

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 120
    const/4 v8, 0x4

    const/16 v9, 0xc

    const/16 v10, 0x1403

    invoke-static {v8, v9, v10, v5}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 113
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 124
    .end local v0    # "animIndex":I
    .end local v2    # "drawTimes":I
    .end local v4    # "index":I
    .end local v5    # "indexBuffer":Ljava/nio/ShortBuffer;
    .end local v6    # "offset":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v7    # "pageScrollShadow":Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;
    :cond_a
    return-void
.end method
