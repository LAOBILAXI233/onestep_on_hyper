.class public Lcom/smartisanos/smengine/Mesh;
.super Ljava/lang/Object;
.source "Mesh.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/smengine/Mesh$MeshException;,
        Lcom/smartisanos/smengine/Mesh$Property;,
        Lcom/smartisanos/smengine/Mesh$VertexType;
    }
.end annotation


.field public static final DIFFUSE_MAP_COORD:I = 0x0

.field public static final FLOAT_SIZE_BYTES:I = 0x4

.field public static final NORMAL_MAP_COORD:I = 0x1

.field public static final PRIMITIVE_INVALID:I = 0x0

.field public static final PRIMITIVE_LINES:I = 0x3

.field public static final PRIMITIVE_POINTS:I = 0x1

.field public static final PRIMITIVE_TRIANGLES:I = 0x2

.field public static final SHADOW_MAP_COORD:I = 0x3

.field public static final SHORT_SIZE_BYTES:I = 0x2

.field public static final SPECULAL_MAP_COORD:I = 0x2

.field public static final TEX_COORD_TYPE_NUM:I = 0x4


.field private mColorArray:[F

.field private mCurrentPrimitiveType:I

.field private mFaceArray:[S

.field private mIndexBuffer:Ljava/nio/ShortBuffer;

.field mIndexBufferID:I

.field private mIsInMeshManager:Z

.field private mIsTexYInverse:Z

.field private mMatIndexArray:[F

.field private mMeshProperty:Lcom/smartisanos/smengine/Mesh$Property;

.field private mName:Ljava/lang/String;

.field private mNormalArray:[F

.field private mPointArray:[F

.field private mTexVertexArray:[[F

.field private mUserDefinePointNum:I

.field private mVertexBuffer:Ljava/nio/FloatBuffer;

.field mVertexBufferID:I

.field private mVertexType:I


.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    new-instance v0, Lcom/smartisanos/smengine/Mesh$Property;

    invoke-direct {v0}, Lcom/smartisanos/smengine/Mesh$Property;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/Mesh;->mMeshProperty:Lcom/smartisanos/smengine/Mesh$Property;

    .line 209
    iput v1, p0, Lcom/smartisanos/smengine/Mesh;->mCurrentPrimitiveType:I

    .line 215
    iput-boolean v1, p0, Lcom/smartisanos/smengine/Mesh;->mIsInMeshManager:Z

    .line 217
    iput v2, p0, Lcom/smartisanos/smengine/Mesh;->mVertexBufferID:I

    .line 218
    iput v2, p0, Lcom/smartisanos/smengine/Mesh;->mIndexBufferID:I

    .line 222
    iput v1, p0, Lcom/smartisanos/smengine/Mesh;->mVertexType:I

    .line 229
    const/4 v0, 0x4

    new-array v0, v0, [[F

    iput-object v0, p0, Lcom/smartisanos/smengine/Mesh;->mTexVertexArray:[[F

    .line 230
    iput v1, p0, Lcom/smartisanos/smengine/Mesh;->mVertexType:I

    .line 231
    const-string v0, ""

    iput-object v0, p0, Lcom/smartisanos/smengine/Mesh;->mName:Ljava/lang/String;

    .line 232
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    new-instance v0, Lcom/smartisanos/smengine/Mesh$Property;

    invoke-direct {v0}, Lcom/smartisanos/smengine/Mesh$Property;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/Mesh;->mMeshProperty:Lcom/smartisanos/smengine/Mesh$Property;

    .line 209
    iput v1, p0, Lcom/smartisanos/smengine/Mesh;->mCurrentPrimitiveType:I

    .line 215
    iput-boolean v1, p0, Lcom/smartisanos/smengine/Mesh;->mIsInMeshManager:Z

    .line 217
    iput v2, p0, Lcom/smartisanos/smengine/Mesh;->mVertexBufferID:I

    .line 218
    iput v2, p0, Lcom/smartisanos/smengine/Mesh;->mIndexBufferID:I

    .line 222
    iput v1, p0, Lcom/smartisanos/smengine/Mesh;->mVertexType:I

    .line 269
    const/4 v0, 0x4

    new-array v0, v0, [[F

    iput-object v0, p0, Lcom/smartisanos/smengine/Mesh;->mTexVertexArray:[[F

    .line 270
    iput v1, p0, Lcom/smartisanos/smengine/Mesh;->mVertexType:I

    .line 271
    iput-object p1, p0, Lcom/smartisanos/smengine/Mesh;->mName:Ljava/lang/String;

    .line 272
    return-void
.end method

.method public static createMeshBySubdivisionRect(Ljava/lang/String;Lcom/smartisanos/smengine/math/Vector3f;IIFFZ)Lcom/smartisanos/smengine/Mesh;
    .locals 8
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "startPoint"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p2, "rowNum"    # I
    .param p3, "colNum"    # I
    .param p4, "pointCellWidth"    # F
    .param p5, "pointCellHeight"    # F
    .param p6, "isYInverse"    # Z

    .prologue
    const/4 v7, -0x1

    .line 637
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/smengine/World;->getMeshManager()Lcom/smartisanos/smengine/MeshManager;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/smartisanos/smengine/MeshManager;->getMesh(Ljava/lang/String;)Lcom/smartisanos/smengine/Mesh;

    move-result-object v0

    .line 638
    .local v0, "mesh":Lcom/smartisanos/smengine/Mesh;
    if-nez v0, :cond_0

    .line 639
    add-int/lit8 v4, p2, 0x1

    add-int/lit8 v5, p3, 0x1

    mul-int v6, v4, v5

    .line 640
    .local v6, "pointNum":I
    invoke-static {p1, p2, p3, p4, p5}, Lcom/smartisanos/smengine/Mesh;->createSubdivisionRectPoints(Lcom/smartisanos/smengine/math/Vector3f;IIFF)[F

    move-result-object v1

    .line 641
    .local v1, "points":[F
    invoke-static {p2, p3, v7, v7}, Lcom/smartisanos/smengine/Mesh;->createSubdivisionRectFaces(IIII)[S

    move-result-object v3

    .line 642
    .local v3, "faces":[S
    invoke-static {p2, p3}, Lcom/smartisanos/smengine/Mesh;->createSubdivisionRectTexPoints(II)[F

    move-result-object v2

    .line 643
    .local v2, "texCoords":[F
    new-instance v0, Lcom/smartisanos/smengine/Mesh;

    .end local v0    # "mesh":Lcom/smartisanos/smengine/Mesh;
    invoke-direct {v0, p0}, Lcom/smartisanos/smengine/Mesh;-><init>(Ljava/lang/String;)V

    .line 644
    .restart local v0    # "mesh":Lcom/smartisanos/smengine/Mesh;
    const/4 v4, 0x0

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/smartisanos/smengine/Mesh;->create([F[F[S[FZ)V

    .line 645
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/smengine/World;->getMeshManager()Lcom/smartisanos/smengine/MeshManager;

    move-result-object v4

    invoke-virtual {v4, p0, v0}, Lcom/smartisanos/smengine/MeshManager;->addMesh(Ljava/lang/String;Lcom/smartisanos/smengine/Mesh;)Lcom/smartisanos/smengine/Mesh;

    .line 647
    .end local v1    # "points":[F
    .end local v2    # "texCoords":[F
    .end local v3    # "faces":[S
    .end local v6    # "pointNum":I
    :cond_0
    return-object v0
.end method

.method public static createSubdivisionRectFaces(IIII)[S
    .locals 11
    .param p0, "rowNum"    # I
    .param p1, "colNum"    # I
    .param p2, "exceptRow"    # I
    .param p3, "exceptCol"    # I

    .prologue
    const/4 v10, -0x1

    .line 569
    mul-int v9, p0, p1

    mul-int/lit8 v0, v9, 0x2

    .line 570
    .local v0, "faceNum":I
    const/4 v1, 0x0

    .line 571
    .local v1, "faces":[S
    if-eq p3, v10, :cond_0

    if-ne p2, v10, :cond_2

    .line 572
    :cond_0
    mul-int/lit8 v9, v0, 0x3

    new-array v1, v9, [S

    .line 573
    const/4 v4, 0x0

    .line 574
    .local v4, "k":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p0, :cond_5

    .line 575
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, p1, :cond_1

    .line 576
    add-int/lit8 v9, p1, 0x1

    mul-int/2addr v9, v2

    add-int/2addr v9, v3

    int-to-short v5, v9

    .line 577
    .local v5, "v0":S
    add-int/lit8 v9, p1, 0x1

    mul-int/2addr v9, v2

    add-int/2addr v9, v3

    add-int/lit8 v9, v9, 0x1

    int-to-short v6, v9

    .line 578
    .local v6, "v1":S
    add-int/lit8 v9, v2, 0x1

    add-int/lit8 v10, p1, 0x1

    mul-int/2addr v9, v10

    add-int/2addr v9, v3

    add-int/lit8 v9, v9, 0x1

    int-to-short v7, v9

    .line 579
    .local v7, "v2":S
    add-int/lit8 v9, v2, 0x1

    add-int/lit8 v10, p1, 0x1

    mul-int/2addr v9, v10

    add-int/2addr v9, v3

    int-to-short v8, v9

    .line 580
    .local v8, "v3":S
    aput-short v5, v1, v4

    .line 581
    add-int/lit8 v9, v4, 0x1

    aput-short v6, v1, v9

    .line 582
    add-int/lit8 v9, v4, 0x2

    aput-short v7, v1, v9

    .line 583
    add-int/lit8 v9, v4, 0x3

    aput-short v5, v1, v9

    .line 584
    add-int/lit8 v9, v4, 0x4

    aput-short v7, v1, v9

    .line 585
    add-int/lit8 v9, v4, 0x5

    aput-short v8, v1, v9

    .line 586
    add-int/lit8 v4, v4, 0x6

    .line 575
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 574
    .end local v5    # "v0":S
    .end local v6    # "v1":S
    .end local v7    # "v2":S
    .end local v8    # "v3":S
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 590
    .end local v2    # "i":I
    .end local v3    # "j":I
    .end local v4    # "k":I
    :cond_2
    add-int/lit8 v9, v0, -0x2

    mul-int/lit8 v9, v9, 0x3

    new-array v1, v9, [S

    .line 591
    const/4 v4, 0x0

    .line 592
    .restart local v4    # "k":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    if-ge v2, p0, :cond_5

    .line 593
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_3
    if-ge v3, p1, :cond_4

    .line 594
    if-ne v2, p2, :cond_3

    if-ne v3, p3, :cond_3

    .line 593
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 597
    :cond_3
    add-int/lit8 v9, p1, 0x1

    mul-int/2addr v9, v2

    add-int/2addr v9, v3

    int-to-short v5, v9

    .line 598
    .restart local v5    # "v0":S
    add-int/lit8 v9, p1, 0x1

    mul-int/2addr v9, v2

    add-int/2addr v9, v3

    add-int/lit8 v9, v9, 0x1

    int-to-short v6, v9

    .line 599
    .restart local v6    # "v1":S
    add-int/lit8 v9, v2, 0x1

    add-int/lit8 v10, p1, 0x1

    mul-int/2addr v9, v10

    add-int/2addr v9, v3

    add-int/lit8 v9, v9, 0x1

    int-to-short v7, v9

    .line 600
    .restart local v7    # "v2":S
    add-int/lit8 v9, v2, 0x1

    add-int/lit8 v10, p1, 0x1

    mul-int/2addr v9, v10

    add-int/2addr v9, v3

    int-to-short v8, v9

    .line 601
    .restart local v8    # "v3":S
    aput-short v5, v1, v4

    .line 602
    add-int/lit8 v9, v4, 0x1

    aput-short v6, v1, v9

    .line 603
    add-int/lit8 v9, v4, 0x2

    aput-short v7, v1, v9

    .line 604
    add-int/lit8 v9, v4, 0x3

    aput-short v5, v1, v9

    .line 605
    add-int/lit8 v9, v4, 0x4

    aput-short v7, v1, v9

    .line 606
    add-int/lit8 v9, v4, 0x5

    aput-short v8, v1, v9

    .line 607
    add-int/lit8 v4, v4, 0x6

    goto :goto_4

    .line 592
    .end local v5    # "v0":S
    .end local v6    # "v1":S
    .end local v7    # "v2":S
    .end local v8    # "v3":S
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 611
    .end local v3    # "j":I
    :cond_5
    return-object v1
.end method

.method public static createSubdivisionRectPoints(Lcom/smartisanos/smengine/math/Vector3f;IIFF)[F
    .locals 10
    .param p0, "startPoint"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p1, "rowNum"    # I
    .param p2, "colNum"    # I
    .param p3, "pointCellWidth"    # F
    .param p4, "pointCellHeight"    # F

    .prologue
    .line 549
    add-int/lit8 v8, p1, 0x1

    add-int/lit8 v9, p2, 0x1

    mul-int v3, v8, v9

    .line 550
    .local v3, "pointNum":I
    mul-int/lit8 v8, v3, 0x3

    new-array v4, v8, [F

    .line 551
    .local v4, "points":[F
    const/4 v2, 0x0

    .line 552
    .local v2, "k":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    add-int/lit8 v8, p1, 0x1

    if-ge v0, v8, :cond_1

    .line 553
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    add-int/lit8 v8, p2, 0x1

    if-ge v1, v8, :cond_0

    .line 554
    iget v8, p0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    int-to-float v9, v1

    mul-float/2addr v9, p3

    add-float v5, v8, v9

    .line 555
    .local v5, "x":F
    iget v8, p0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    int-to-float v9, v0

    mul-float/2addr v9, p4

    add-float v6, v8, v9

    .line 556
    .local v6, "y":F
    iget v7, p0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    .line 557
    .local v7, "z":F
    mul-int/lit8 v8, v2, 0x3

    aput v5, v4, v8

    .line 558
    mul-int/lit8 v8, v2, 0x3

    add-int/lit8 v8, v8, 0x1

    aput v6, v4, v8

    .line 559
    mul-int/lit8 v8, v2, 0x3

    add-int/lit8 v8, v8, 0x2

    aput v7, v4, v8

    .line 560
    add-int/lit8 v2, v2, 0x1

    .line 553
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 552
    .end local v5    # "x":F
    .end local v6    # "y":F
    .end local v7    # "z":F
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 563
    .end local v1    # "j":I
    :cond_1
    if-eq v2, v3, :cond_2

    .line 564
    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "wrong point index for createMeshByCombineRect"

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 566
    :cond_2
    return-object v4
.end method

.method public static createSubdivisionRectTexPoints(II)[F
    .locals 12
    .param p0, "rowNum"    # I
    .param p1, "colNum"    # I

    .prologue
    const/high16 v11, 0x3f800000    # 1.0f

    .line 614
    add-int/lit8 v9, p0, 0x1

    add-int/lit8 v10, p1, 0x1

    mul-int v3, v9, v10

    .line 615
    .local v3, "pointNum":I
    int-to-float v9, p1

    div-float v7, v11, v9

    .line 616
    .local v7, "ustep":F
    int-to-float v9, p0

    div-float v8, v11, v9

    .line 617
    .local v8, "vstep":F
    mul-int/lit8 v9, v3, 0x2

    new-array v4, v9, [F

    .line 618
    .local v4, "texCoords":[F
    const/4 v2, 0x0

    .line 619
    .local v2, "k":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    add-int/lit8 v9, p0, 0x1

    if-ge v0, v9, :cond_1

    .line 620
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    add-int/lit8 v9, p1, 0x1

    if-ge v1, v9, :cond_0

    .line 621
    int-to-float v9, v1

    mul-float v5, v9, v7

    .line 622
    .local v5, "tx":F
    int-to-float v9, v0

    mul-float v6, v9, v8

    .line 623
    .local v6, "ty":F
    mul-int/lit8 v9, v2, 0x2

    aput v5, v4, v9

    .line 624
    mul-int/lit8 v9, v2, 0x2

    add-int/lit8 v9, v9, 0x1

    aput v6, v4, v9

    .line 625
    add-int/lit8 v2, v2, 0x1

    .line 620
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 619
    .end local v5    # "tx":F
    .end local v6    # "ty":F
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 628
    .end local v1    # "j":I
    :cond_1
    if-eq v2, v3, :cond_2

    .line 629
    new-instance v9, Ljava/lang/RuntimeException;

    const-string v10, "wrong texCoord index for createMeshByCombineRect"

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 631
    :cond_2
    return-object v4
.end method

.method private definePrimitiveType()V
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/smartisanos/smengine/Mesh;->mFaceArray:[S

    if-nez v0, :cond_0

    .line 354
    const/4 v0, 0x1

    iput v0, p0, Lcom/smartisanos/smengine/Mesh;->mCurrentPrimitiveType:I

    .line 358
    :goto_0
    return-void

    .line 356
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/smartisanos/smengine/Mesh;->mCurrentPrimitiveType:I

    goto :goto_0
.end method

.method private defineVertexType()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x0

    .line 360
    iget-object v0, p0, Lcom/smartisanos/smengine/Mesh;->mTexVertexArray:[[F

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartisanos/smengine/Mesh;->mTexVertexArray:[[F

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartisanos/smengine/Mesh;->mMatIndexArray:[F

    if-eqz v0, :cond_0

    .line 361
    const/4 v0, 0x7

    iput v0, p0, Lcom/smartisanos/smengine/Mesh;->mVertexType:I

    .line 381
    :goto_0
    return-void

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/smengine/Mesh;->mTexVertexArray:[[F

    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/smartisanos/smengine/Mesh;->mTexVertexArray:[[F

    aget-object v0, v0, v2

    if-eqz v0, :cond_1

    .line 363
    const/16 v0, 0x8

    iput v0, p0, Lcom/smartisanos/smengine/Mesh;->mVertexType:I

    goto :goto_0

    .line 364
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/smengine/Mesh;->mTexVertexArray:[[F

    aget-object v0, v0, v1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/smartisanos/smengine/Mesh;->mMatIndexArray:[F

    if-eqz v0, :cond_2

    .line 365
    const/4 v0, 0x5

    iput v0, p0, Lcom/smartisanos/smengine/Mesh;->mVertexType:I

    goto :goto_0

    .line 366
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/smengine/Mesh;->mTexVertexArray:[[F

    aget-object v0, v0, v1

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/smartisanos/smengine/Mesh;->mColorArray:[F

    if-nez v0, :cond_3

    .line 367
    const/4 v0, 0x6

    iput v0, p0, Lcom/smartisanos/smengine/Mesh;->mVertexType:I

    goto :goto_0

    .line 368
    :cond_3
    iget-object v0, p0, Lcom/smartisanos/smengine/Mesh;->mTexVertexArray:[[F

    aget-object v0, v0, v1

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/smartisanos/smengine/Mesh;->mColorArray:[F

    if-nez v0, :cond_5

    .line 369
    iget-object v0, p0, Lcom/smartisanos/smengine/Mesh;->mNormalArray:[F

    if-eqz v0, :cond_4

    .line 370
    const/4 v0, 0x2

    iput v0, p0, Lcom/smartisanos/smengine/Mesh;->mVertexType:I

    goto :goto_0

    .line 372
    :cond_4
    const/4 v0, 0x1

    iput v0, p0, Lcom/smartisanos/smengine/Mesh;->mVertexType:I

    goto :goto_0

    .line 374
    :cond_5
    iget-object v0, p0, Lcom/smartisanos/smengine/Mesh;->mTexVertexArray:[[F

    aget-object v0, v0, v1

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/smartisanos/smengine/Mesh;->mColorArray:[F

    if-eqz v0, :cond_6

    .line 375
    const/4 v0, 0x4

    iput v0, p0, Lcom/smartisanos/smengine/Mesh;->mVertexType:I

    goto :goto_0

    .line 376
    :cond_6
    iget-object v0, p0, Lcom/smartisanos/smengine/Mesh;->mTexVertexArray:[[F

    aget-object v0, v0, v1

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/smartisanos/smengine/Mesh;->mColorArray:[F

    if-eqz v0, :cond_7

    .line 377
    iput v2, p0, Lcom/smartisanos/smengine/Mesh;->mVertexType:I

    goto :goto_0

    .line 379
    :cond_7
    new-instance v0, Lcom/smartisanos/smengine/Mesh$MeshException;

    const-string v1, "never goto this statement"

    invoke-direct {v0, v1}, Lcom/smartisanos/smengine/Mesh$MeshException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private inverseTexPoint(I[F)V
    .locals 6
    .param p1, "texArrayType"    # I
    .param p2, "texVertexArray"    # [F

    .prologue
    .line 289
    const/4 v1, 0x2

    .line 290
    .local v1, "stride":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_0

    .line 291
    iget-object v2, p0, Lcom/smartisanos/smengine/Mesh;->mTexVertexArray:[[F

    aget-object v2, v2, p1

    aget v3, p2, v0

    aput v3, v2, v0

    .line 292
    iget-object v2, p0, Lcom/smartisanos/smengine/Mesh;->mTexVertexArray:[[F

    aget-object v2, v2, p1

    add-int/lit8 v3, v0, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    add-int/lit8 v5, v0, 0x1

    aget v5, p2, v5

    sub-float/2addr v4, v5

    aput v4, v2, v3

    .line 290
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 294
    :cond_0
    return-void
.end method

.method private updateIndexBufferObject()V
    .locals 5

    .prologue
    const v4, 0x8893

    .line 699
    iget v2, p0, Lcom/smartisanos/smengine/Mesh;->mIndexBufferID:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 708
    :goto_0
    return-void

    .line 702
    :cond_0
    iget v2, p0, Lcom/smartisanos/smengine/Mesh;->mIndexBufferID:I

    invoke-static {v4, v2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 703
    const-string v2, "glBindBuffer index"

    invoke-static {v2}, Lcom/smartisanos/smengine/GLContext;->checkGlError(Ljava/lang/String;)V

    .line 704
    invoke-virtual {p0}, Lcom/smartisanos/smengine/Mesh;->getIndexBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    .line 705
    .local v1, "sb":Ljava/nio/ShortBuffer;
    invoke-virtual {v1}, Ljava/nio/ShortBuffer;->limit()I

    move-result v2

    mul-int/lit8 v0, v2, 0x2

    .line 706
    .local v0, "datasize":I
    const v2, 0x88e4

    invoke-static {v4, v0, v1, v2}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 707
    const-string v2, "glBufferData index"

    invoke-static {v2}, Lcom/smartisanos/smengine/GLContext;->checkGlError(Ljava/lang/String;)V

    goto :goto_0
.end method


.method public bindIBO()V
    .locals 3

    .prologue
    .line 756
    iget v1, p0, Lcom/smartisanos/smengine/Mesh;->mCurrentPrimitiveType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 757
    invoke-virtual {p0}, Lcom/smartisanos/smengine/Mesh;->getIndexBufferObject()I

    move-result v0

    .line 758
    .local v0, "ibo":I
    const v1, 0x8893

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 760
    .end local v0    # "ibo":I
    :cond_0
    return-void
.end method

.method public bindVBO()V
    .locals 2

    .prologue
    .line 751
    invoke-virtual {p0}, Lcom/smartisanos/smengine/Mesh;->getVertexBufferObject()I

    move-result v0

    .line 752
    .local v0, "vbo":I
    const v1, 0x8892

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 754
    return-void
.end method

.method public clear(Z)V
    .locals 5
    .param p1, "cleanHardwareResource"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 680
    if-nez p1, :cond_0

    .line 681
    iput v2, p0, Lcom/smartisanos/smengine/Mesh;->mVertexBufferID:I

    .line 682
    iput v2, p0, Lcom/smartisanos/smengine/Mesh;->mIndexBufferID:I

    .line 684
    :cond_0
    iget v1, p0, Lcom/smartisanos/smengine/Mesh;->mVertexBufferID:I

    if-eq v1, v2, :cond_1

    if-eqz p1, :cond_1

    iget-boolean v1, p0, Lcom/smartisanos/smengine/Mesh;->mIsInMeshManager:Z

    if-nez v1, :cond_1

    .line 685
    new-array v0, v4, [I

    .line 686
    .local v0, "buffer":[I
    iget v1, p0, Lcom/smartisanos/smengine/Mesh;->mVertexBufferID:I

    aput v1, v0, v3

    .line 687
    invoke-static {v4, v0, v3}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    .line 688
    iput v2, p0, Lcom/smartisanos/smengine/Mesh;->mVertexBufferID:I

    .line 690
    .end local v0    # "buffer":[I
    :cond_1
    iget v1, p0, Lcom/smartisanos/smengine/Mesh;->mIndexBufferID:I

    if-eq v1, v2, :cond_2

    if-eqz p1, :cond_2

    iget-boolean v1, p0, Lcom/smartisanos/smengine/Mesh;->mIsInMeshManager:Z

    if-nez v1, :cond_2

    .line 691
    new-array v0, v4, [I

    .line 692
    .restart local v0    # "buffer":[I
    iget v1, p0, Lcom/smartisanos/smengine/Mesh;->mIndexBufferID:I

    aput v1, v0, v3

    .line 693
    invoke-static {v4, v0, v3}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    .line 694
    iput v2, p0, Lcom/smartisanos/smengine/Mesh;->mIndexBufferID:I

    .line 696
    .end local v0    # "buffer":[I
    :cond_2
    return-void
.end method

.method public clearHardwareResource()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 665
    iget v1, p0, Lcom/smartisanos/smengine/Mesh;->mVertexBufferID:I

    if-eq v1, v2, :cond_0

    .line 666
    new-array v0, v4, [I

    .line 667
    .local v0, "buffer":[I
    iget v1, p0, Lcom/smartisanos/smengine/Mesh;->mVertexBufferID:I

    aput v1, v0, v3

    .line 668
    invoke-static {v4, v0, v3}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    .line 670
    .end local v0    # "buffer":[I
    :cond_0
    iget v1, p0, Lcom/smartisanos/smengine/Mesh;->mIndexBufferID:I

    if-eq v1, v2, :cond_1

    .line 671
    new-array v0, v4, [I

    .line 672
    .restart local v0    # "buffer":[I
    iget v1, p0, Lcom/smartisanos/smengine/Mesh;->mIndexBufferID:I

    aput v1, v0, v3

    .line 673
    invoke-static {v4, v0, v3}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    .line 675
    .end local v0    # "buffer":[I
    :cond_1
    iput v2, p0, Lcom/smartisanos/smengine/Mesh;->mVertexBufferID:I

    .line 676
    iput v2, p0, Lcom/smartisanos/smengine/Mesh;->mIndexBufferID:I

    .line 677
    return-void
.end method

.method public clone()Lcom/smartisanos/smengine/Mesh;
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 234
    new-instance v0, Lcom/smartisanos/smengine/Mesh;

    invoke-direct {v0}, Lcom/smartisanos/smengine/Mesh;-><init>()V

    .line 235
    .local v0, "newMesh":Lcom/smartisanos/smengine/Mesh;
    invoke-virtual {p0}, Lcom/smartisanos/smengine/Mesh;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/Mesh;->setName(Ljava/lang/String;)V

    .line 236
    iget-object v1, p0, Lcom/smartisanos/smengine/Mesh;->mPointArray:[F

    array-length v1, v1

    new-array v1, v1, [F

    iput-object v1, v0, Lcom/smartisanos/smengine/Mesh;->mPointArray:[F

    .line 237
    iget-object v1, p0, Lcom/smartisanos/smengine/Mesh;->mPointArray:[F

    iget-object v2, v0, Lcom/smartisanos/smengine/Mesh;->mPointArray:[F

    iget-object v3, p0, Lcom/smartisanos/smengine/Mesh;->mPointArray:[F

    array-length v3, v3

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 238
    iget-object v1, p0, Lcom/smartisanos/smengine/Mesh;->mFaceArray:[S

    if-eqz v1, :cond_0

    .line 239
    iget-object v1, p0, Lcom/smartisanos/smengine/Mesh;->mFaceArray:[S

    array-length v1, v1

    new-array v1, v1, [S

    iput-object v1, v0, Lcom/smartisanos/smengine/Mesh;->mFaceArray:[S

    .line 240
    iget-object v1, p0, Lcom/smartisanos/smengine/Mesh;->mFaceArray:[S

    iget-object v2, v0, Lcom/smartisanos/smengine/Mesh;->mFaceArray:[S

    iget-object v3, p0, Lcom/smartisanos/smengine/Mesh;->mFaceArray:[S

    array-length v3, v3

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 242
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/smengine/Mesh;->mTexVertexArray:[[F

    aget-object v1, v1, v4

    if-eqz v1, :cond_1

    .line 243
    iget-object v1, v0, Lcom/smartisanos/smengine/Mesh;->mTexVertexArray:[[F

    iget-object v2, p0, Lcom/smartisanos/smengine/Mesh;->mTexVertexArray:[[F

    aget-object v2, v2, v4

    array-length v2, v2

    new-array v2, v2, [F

    aput-object v2, v1, v4

    .line 244
    iget-object v1, p0, Lcom/smartisanos/smengine/Mesh;->mTexVertexArray:[[F

    aget-object v1, v1, v4

    iget-object v2, v0, Lcom/smartisanos/smengine/Mesh;->mTexVertexArray:[[F

    aget-object v2, v2, v4

    iget-object v3, p0, Lcom/smartisanos/smengine/Mesh;->mTexVertexArray:[[F

    aget-object v3, v3, v4

    array-length v3, v3

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 246
    :cond_1
    iget-object v1, p0, Lcom/smartisanos/smengine/Mesh;->mTexVertexArray:[[F

    aget-object v1, v1, v5

    if-eqz v1, :cond_2

    .line 247
    iget-object v1, v0, Lcom/smartisanos/smengine/Mesh;->mTexVertexArray:[[F

    iget-object v2, p0, Lcom/smartisanos/smengine/Mesh;->mTexVertexArray:[[F

    aget-object v2, v2, v5

    array-length v2, v2

    new-array v2, v2, [F

    aput-object v2, v1, v5

    .line 248
    iget-object v1, p0, Lcom/smartisanos/smengine/Mesh;->mTexVertexArray:[[F

    aget-object v1, v1, v5

    iget-object v2, v0, Lcom/smartisanos/smengine/Mesh;->mTexVertexArray:[[F

    aget-object v2, v2, v5

    iget-object v3, p0, Lcom/smartisanos/smengine/Mesh;->mTexVertexArray:[[F

    aget-object v3, v3, v5

    array-length v3, v3

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 250
    :cond_2
    iget-object v1, p0, Lcom/smartisanos/smengine/Mesh;->mColorArray:[F

    if-eqz v1, :cond_3

    .line 251
    iget-object v1, p0, Lcom/smartisanos/smengine/Mesh;->mColorArray:[F

    array-length v1, v1

    new-array v1, v1, [F

    iput-object v1, v0, Lcom/smartisanos/smengine/Mesh;->mColorArray:[F

    .line 252
    iget-object v1, p0, Lcom/smartisanos/smengine/Mesh;->mColorArray:[F

    iget-object v2, v0, Lcom/smartisanos/smengine/Mesh;->mColorArray:[F

    iget-object v3, p0, Lcom/smartisanos/smengine/Mesh;->mColorArray:[F

    array-length v3, v3

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 254
    :cond_3
    iget-object v1, p0, Lcom/smartisanos/smengine/Mesh;->mMatIndexArray:[F

    if-eqz v1, :cond_4

    .line 255
    iget-object v1, p0, Lcom/smartisanos/smengine/Mesh;->mMatIndexArray:[F

    array-length v1, v1

    new-array v1, v1, [F

    iput-object v1, v0, Lcom/smartisanos/smengine/Mesh;->mMatIndexArray:[F

    .line 256
    iget-object v1, p0, Lcom/smartisanos/smengine/Mesh;->mMatIndexArray:[F

    iget-object v2, v0, Lcom/smartisanos/smengine/Mesh;->mMatIndexArray:[F

    iget-object v3, p0, Lcom/smartisanos/smengine/Mesh;->mMatIndexArray:[F

    array-length v3, v3

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 258
    :cond_4
    iget-object v1, p0, Lcom/smartisanos/smengine/Mesh;->mNormalArray:[F

    if-eqz v1, :cond_5

    .line 259
    iget-object v1, p0, Lcom/smartisanos/smengine/Mesh;->mNormalArray:[F

    array-length v1, v1

    new-array v1, v1, [F

    iput-object v1, v0, Lcom/smartisanos/smengine/Mesh;->mNormalArray:[F

    .line 260
    iget-object v1, p0, Lcom/smartisanos/smengine/Mesh;->mNormalArray:[F

    iget-object v2, v0, Lcom/smartisanos/smengine/Mesh;->mNormalArray:[F

    iget-object v3, p0, Lcom/smartisanos/smengine/Mesh;->mNormalArray:[F

    array-length v3, v3

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 262
    :cond_5
    iget v1, p0, Lcom/smartisanos/smengine/Mesh;->mCurrentPrimitiveType:I

    iput v1, v0, Lcom/smartisanos/smengine/Mesh;->mCurrentPrimitiveType:I

    .line 263
    iget-boolean v1, p0, Lcom/smartisanos/smengine/Mesh;->mIsTexYInverse:Z

    iput-boolean v1, v0, Lcom/smartisanos/smengine/Mesh;->mIsTexYInverse:Z

    .line 264
    iget v1, p0, Lcom/smartisanos/smengine/Mesh;->mVertexType:I

    iput v1, v0, Lcom/smartisanos/smengine/Mesh;->mVertexType:I

    .line 265
    iget v1, p0, Lcom/smartisanos/smengine/Mesh;->mUserDefinePointNum:I

    iput v1, v0, Lcom/smartisanos/smengine/Mesh;->mUserDefinePointNum:I

    .line 266
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/smartisanos/smengine/Mesh;->clone()Lcom/smartisanos/smengine/Mesh;

    move-result-object v0

    return-object v0
.end method

.method public create([F[F[F[S[FZ)V
    .locals 5
    .param p1, "pointArray"    # [F
    .param p2, "texVertexArray"    # [F
    .param p3, "normalArray"    # [F
    .param p4, "faceArray"    # [S
    .param p5, "colorArray"    # [F
    .param p6, "isTexYInverse"    # Z

    .prologue
    const/4 v4, 0x0

    .line 301
    if-nez p1, :cond_0

    .line 302
    new-instance v2, Lcom/smartisanos/smengine/Mesh$MeshException;

    const-string v3, "create mesh error: pointArray null error"

    invoke-direct {v2, v3}, Lcom/smartisanos/smengine/Mesh$MeshException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 304
    :cond_0
    array-length v2, p1

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/smartisanos/smengine/Mesh;->mPointArray:[F

    .line 305
    iget-object v2, p0, Lcom/smartisanos/smengine/Mesh;->mPointArray:[F

    array-length v3, p1

    invoke-static {p1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 306
    if-eqz p4, :cond_1

    .line 307
    array-length v2, p4

    new-array v2, v2, [S

    iput-object v2, p0, Lcom/smartisanos/smengine/Mesh;->mFaceArray:[S

    .line 308
    iget-object v2, p0, Lcom/smartisanos/smengine/Mesh;->mFaceArray:[S

    array-length v3, p4

    invoke-static {p4, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 311
    :cond_1
    if-eqz p2, :cond_3

    .line 312
    iget-object v2, p0, Lcom/smartisanos/smengine/Mesh;->mTexVertexArray:[[F

    array-length v3, p2

    new-array v3, v3, [F

    aput-object v3, v2, v4

    .line 313
    if-nez p6, :cond_2

    .line 314
    iget-object v2, p0, Lcom/smartisanos/smengine/Mesh;->mTexVertexArray:[[F

    aget-object v2, v2, v4

    array-length v3, p2

    invoke-static {p2, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 318
    :goto_0
    iget-object v2, p0, Lcom/smartisanos/smengine/Mesh;->mPointArray:[F

    array-length v2, v2

    div-int/lit8 v0, v2, 0x3

    .line 319
    .local v0, "pnum":I
    iget-object v2, p0, Lcom/smartisanos/smengine/Mesh;->mTexVertexArray:[[F

    aget-object v2, v2, v4

    array-length v2, v2

    div-int/lit8 v1, v2, 0x2

    .line 320
    .local v1, "tnum":I
    if-eq v0, v1, :cond_3

    .line 321
    new-instance v2, Lcom/smartisanos/smengine/Mesh$MeshException;

    const-string v3, "create mesh error: point num and tex num is not equal"

    invoke-direct {v2, v3}, Lcom/smartisanos/smengine/Mesh$MeshException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 316
    .end local v0    # "pnum":I
    .end local v1    # "tnum":I
    :cond_2
    invoke-direct {p0, v4, p2}, Lcom/smartisanos/smengine/Mesh;->inverseTexPoint(I[F)V

    goto :goto_0

    .line 324
    :cond_3
    if-eqz p5, :cond_4

    .line 325
    array-length v2, p5

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/smartisanos/smengine/Mesh;->mColorArray:[F

    .line 326
    iget-object v2, p0, Lcom/smartisanos/smengine/Mesh;->mColorArray:[F

    array-length v3, p5

    invoke-static {p5, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 327
    iget-object v2, p0, Lcom/smartisanos/smengine/Mesh;->mPointArray:[F

    array-length v2, v2

    div-int/lit8 v0, v2, 0x3

    .line 328
    .restart local v0    # "pnum":I
    iget-object v2, p0, Lcom/smartisanos/smengine/Mesh;->mColorArray:[F

    array-length v2, v2

    div-int/lit8 v1, v2, 0x4

    .line 329
    .restart local v1    # "tnum":I
    if-eq v0, v1, :cond_4

    .line 330
    new-instance v2, Lcom/smartisanos/smengine/Mesh$MeshException;

    const-string v3, "create mesh error: point num and color num is not equal"

    invoke-direct {v2, v3}, Lcom/smartisanos/smengine/Mesh$MeshException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 333
    .end local v0    # "pnum":I
    .end local v1    # "tnum":I
    :cond_4
    if-eqz p3, :cond_5

    .line 334
    array-length v2, p3

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/smartisanos/smengine/Mesh;->mNormalArray:[F

    .line 335
    iget-object v2, p0, Lcom/smartisanos/smengine/Mesh;->mNormalArray:[F

    array-length v3, p3

    invoke-static {p3, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 336
    iget-object v2, p0, Lcom/smartisanos/smengine/Mesh;->mPointArray:[F

    array-length v2, v2

    div-int/lit8 v0, v2, 0x3

    .line 337
    .restart local v0    # "pnum":I
    iget-object v2, p0, Lcom/smartisanos/smengine/Mesh;->mNormalArray:[F

    array-length v2, v2

    div-int/lit8 v1, v2, 0x3

    .line 338
    .restart local v1    # "tnum":I
    if-eq v0, v1, :cond_5

    .line 339
    new-instance v2, Lcom/smartisanos/smengine/Mesh$MeshException;

    const-string v3, "create mesh error: point num and normal num is not equal"

    invoke-direct {v2, v3}, Lcom/smartisanos/smengine/Mesh$MeshException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 342
    .end local v0    # "pnum":I
    .end local v1    # "tnum":I
    :cond_5
    iput-boolean p6, p0, Lcom/smartisanos/smengine/Mesh;->mIsTexYInverse:Z

    .line 343
    invoke-direct {p0}, Lcom/smartisanos/smengine/Mesh;->definePrimitiveType()V

    .line 344
    invoke-direct {p0}, Lcom/smartisanos/smengine/Mesh;->defineVertexType()V

    .line 345
    return-void
.end method

.method public create([F[F[S[FZ)V
    .locals 7
    .param p1, "pointArray"    # [F
    .param p2, "texVertexArray"    # [F
    .param p3, "faceArray"    # [S
    .param p4, "colorArray"    # [F
    .param p5, "isTexYInverse"    # Z

    .prologue
    .line 297
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/smartisanos/smengine/Mesh;->create([F[F[F[S[FZ)V

    .line 298
    return-void
.end method

.method public createIndexBuffer(I)V
    .locals 7
    .param p1, "faceNum"    # I

    .prologue
    const v6, 0x8893

    const/4 v5, 0x0

    .line 498
    iget v3, p0, Lcom/smartisanos/smengine/Mesh;->mCurrentPrimitiveType:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    .line 510
    :cond_0
    :goto_0
    return-void

    .line 501
    :cond_1
    mul-int/lit8 v3, p1, 0x3

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v2

    .line 502
    .local v2, "sb":Ljava/nio/ShortBuffer;
    iget-object v3, p0, Lcom/smartisanos/smengine/Mesh;->mFaceArray:[S

    mul-int/lit8 v4, p1, 0x3

    invoke-virtual {v2, v3, v5, v4}, Ljava/nio/ShortBuffer;->put([SII)Ljava/nio/ShortBuffer;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 503
    invoke-virtual {v2}, Ljava/nio/ShortBuffer;->limit()I

    move-result v1

    .line 504
    .local v1, "i":I
    iput-object v2, p0, Lcom/smartisanos/smengine/Mesh;->mIndexBuffer:Ljava/nio/ShortBuffer;

    .line 505
    iget v3, p0, Lcom/smartisanos/smengine/Mesh;->mIndexBufferID:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 506
    iget v3, p0, Lcom/smartisanos/smengine/Mesh;->mIndexBufferID:I

    invoke-static {v6, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 507
    mul-int/lit8 v3, p1, 0x3

    mul-int/lit8 v0, v3, 0x2

    .line 508
    .local v0, "datasize":I
    const v3, 0x88e4

    invoke-static {v6, v0, v2, v3}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    goto :goto_0
.end method

.method public getDiffuseTexCount()I
    .locals 2

    .prologue
    .line 487
    iget-object v0, p0, Lcom/smartisanos/smengine/Mesh;->mTexVertexArray:[[F

    const/4 v1, 0x0

    aget-object v0, v0, v1

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getDiffuseTexVertexArray()[Lcom/smartisanos/smengine/math/Vector2f;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 461
    iget-object v5, p0, Lcom/smartisanos/smengine/Mesh;->mTexVertexArray:[[F

    aget-object v5, v5, v7

    if-nez v5, :cond_1

    .line 462
    const/4 v4, 0x0

    .line 471
    :cond_0
    return-object v4

    .line 464
    :cond_1
    iget-object v5, p0, Lcom/smartisanos/smengine/Mesh;->mTexVertexArray:[[F

    aget-object v5, v5, v7

    array-length v5, v5

    div-int/lit8 v5, v5, 0x2

    new-array v4, v5, [Lcom/smartisanos/smengine/math/Vector2f;

    .line 465
    .local v4, "va":[Lcom/smartisanos/smengine/math/Vector2f;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, v4

    if-ge v0, v5, :cond_0

    .line 466
    mul-int/lit8 v2, v0, 0x2

    .line 467
    .local v2, "v0":I
    mul-int/lit8 v5, v0, 0x2

    add-int/lit8 v3, v5, 0x1

    .line 468
    .local v3, "v1":I
    new-instance v1, Lcom/smartisanos/smengine/math/Vector2f;

    iget-object v5, p0, Lcom/smartisanos/smengine/Mesh;->mTexVertexArray:[[F

    aget-object v5, v5, v7

    aget v5, v5, v2

    iget-object v6, p0, Lcom/smartisanos/smengine/Mesh;->mTexVertexArray:[[F

    aget-object v6, v6, v7

    aget v6, v6, v3

    invoke-direct {v1, v5, v6}, Lcom/smartisanos/smengine/math/Vector2f;-><init>(FF)V

    .line 469
    .local v1, "v":Lcom/smartisanos/smengine/math/Vector2f;
    aput-object v1, v4, v0

    .line 465
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getFaceCount()I
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lcom/smartisanos/smengine/Mesh;->mFaceArray:[S

    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public getIndexArraySize()I
    .locals 2

    .prologue
    .line 490
    iget-object v0, p0, Lcom/smartisanos/smengine/Mesh;->mIndexBuffer:Ljava/nio/ShortBuffer;

    if-eqz v0, :cond_0

    .line 491
    iget-object v0, p0, Lcom/smartisanos/smengine/Mesh;->mIndexBuffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->limit()I

    move-result v0

    return v0

    .line 494
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "index buffer null error"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getIndexBuffer()Ljava/nio/ShortBuffer;
    .locals 3

    .prologue
    .line 512
    iget v1, p0, Lcom/smartisanos/smengine/Mesh;->mCurrentPrimitiveType:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 513
    const/4 v0, 0x0

    .line 522
    :goto_0
    return-object v0

    .line 515
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/smengine/Mesh;->mIndexBuffer:Ljava/nio/ShortBuffer;

    if-eqz v1, :cond_1

    .line 516
    iget-object v0, p0, Lcom/smartisanos/smengine/Mesh;->mIndexBuffer:Ljava/nio/ShortBuffer;

    goto :goto_0

    .line 518
    :cond_1
    iget-object v1, p0, Lcom/smartisanos/smengine/Mesh;->mFaceArray:[S

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 519
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    .line 520
    .local v0, "sb":Ljava/nio/ShortBuffer;
    iget-object v1, p0, Lcom/smartisanos/smengine/Mesh;->mFaceArray:[S

    invoke-virtual {v0, v1}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 521
    iput-object v0, p0, Lcom/smartisanos/smengine/Mesh;->mIndexBuffer:Ljava/nio/ShortBuffer;

    goto :goto_0
.end method

.method public getIndexBufferObject()I
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 740
    iget v1, p0, Lcom/smartisanos/smengine/Mesh;->mIndexBufferID:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 741
    iget v1, p0, Lcom/smartisanos/smengine/Mesh;->mIndexBufferID:I

    .line 747
    :goto_0
    return v1

    .line 743
    :cond_0
    new-array v0, v4, [I

    .line 744
    .local v0, "bufferID":[I
    invoke-static {v4, v0, v3}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    .line 745
    aget v1, v0, v3

    iput v1, p0, Lcom/smartisanos/smengine/Mesh;->mIndexBufferID:I

    .line 746
    invoke-direct {p0}, Lcom/smartisanos/smengine/Mesh;->updateIndexBufferObject()V

    .line 747
    iget v1, p0, Lcom/smartisanos/smengine/Mesh;->mIndexBufferID:I

    goto :goto_0
.end method

.method public getMatIndexArray()[F
    .locals 1

    .prologue
    .line 539
    iget-object v0, p0, Lcom/smartisanos/smengine/Mesh;->mMatIndexArray:[F

    return-object v0
.end method

.method public getMeshProperty()Lcom/smartisanos/smengine/Mesh$Property;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/smartisanos/smengine/Mesh;->mMeshProperty:Lcom/smartisanos/smengine/Mesh$Property;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/smartisanos/smengine/Mesh;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNormal()[F
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcom/smartisanos/smengine/Mesh;->mNormalArray:[F

    return-object v0
.end method

.method public getNormalTexVertexArray()[F
    .locals 2

    .prologue
    .line 457
    iget-object v0, p0, Lcom/smartisanos/smengine/Mesh;->mTexVertexArray:[[F

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getPointCount()I
    .locals 1

    .prologue
    .line 477
    iget v0, p0, Lcom/smartisanos/smengine/Mesh;->mUserDefinePointNum:I

    if-lez v0, :cond_0

    .line 478
    iget v0, p0, Lcom/smartisanos/smengine/Mesh;->mUserDefinePointNum:I

    .line 480
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/smartisanos/smengine/Mesh;->mPointArray:[F

    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    goto :goto_0
.end method

.method public getPointVectorArray()[Lcom/smartisanos/smengine/math/Vector3f;
    .locals 9

    .prologue
    .line 443
    iget-object v6, p0, Lcom/smartisanos/smengine/Mesh;->mPointArray:[F

    array-length v6, v6

    div-int/lit8 v6, v6, 0x3

    new-array v5, v6, [Lcom/smartisanos/smengine/math/Vector3f;

    .line 444
    .local v5, "va":[Lcom/smartisanos/smengine/math/Vector3f;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v6, v5

    if-ge v0, v6, :cond_0

    .line 445
    mul-int/lit8 v2, v0, 0x3

    .line 446
    .local v2, "v0":I
    mul-int/lit8 v6, v0, 0x3

    add-int/lit8 v3, v6, 0x1

    .line 447
    .local v3, "v1":I
    mul-int/lit8 v6, v0, 0x3

    add-int/lit8 v4, v6, 0x2

    .line 448
    .local v4, "v2":I
    new-instance v1, Lcom/smartisanos/smengine/math/Vector3f;

    iget-object v6, p0, Lcom/smartisanos/smengine/Mesh;->mPointArray:[F

    aget v6, v6, v2

    iget-object v7, p0, Lcom/smartisanos/smengine/Mesh;->mPointArray:[F

    aget v7, v7, v3

    iget-object v8, p0, Lcom/smartisanos/smengine/Mesh;->mPointArray:[F

    aget v8, v8, v4

    invoke-direct {v1, v6, v7, v8}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    .line 449
    .local v1, "v":Lcom/smartisanos/smengine/math/Vector3f;
    aput-object v1, v5, v0

    .line 444
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 451
    .end local v1    # "v":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v2    # "v0":I
    .end local v3    # "v1":I
    .end local v4    # "v2":I
    :cond_0
    return-object v5
.end method

.method public getPoints()[F
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/smartisanos/smengine/Mesh;->mPointArray:[F

    return-object v0
.end method

.method public getPrimitiveType()I
    .locals 1

    .prologue
    .line 383
    iget v0, p0, Lcom/smartisanos/smengine/Mesh;->mCurrentPrimitiveType:I

    return v0
.end method

.method public getShadowTexVertexArray()[F
    .locals 2

    .prologue
    .line 454
    iget-object v0, p0, Lcom/smartisanos/smengine/Mesh;->mTexVertexArray:[[F

    const/4 v1, 0x3

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getTexVertexArray(I)[F
    .locals 1
    .param p1, "texArrayType"    # I

    .prologue
    .line 410
    iget-object v0, p0, Lcom/smartisanos/smengine/Mesh;->mTexVertexArray:[[F

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getVertexBuffer()Ljava/nio/FloatBuffer;
    .locals 18

    .prologue
    .line 763
    move-object/from16 v0, p0

    iget v15, v0, Lcom/smartisanos/smengine/Mesh;->mVertexType:I

    if-nez v15, :cond_0

    .line 764
    new-instance v15, Lcom/smartisanos/smengine/Mesh$MeshException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "invalid vertex type: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/Mesh;->mVertexType:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lcom/smartisanos/smengine/Mesh$MeshException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 766
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/smartisanos/smengine/Mesh;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v15, :cond_1

    .line 767
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/smartisanos/smengine/Mesh;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 768
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/smartisanos/smengine/Mesh;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 1025
    :goto_0
    return-object v15

    .line 770
    :cond_1
    const/4 v5, 0x0

    .line 771
    .local v5, "fb":Ljava/nio/FloatBuffer;
    move-object/from16 v0, p0

    iget v15, v0, Lcom/smartisanos/smengine/Mesh;->mVertexType:I

    packed-switch v15, :pswitch_data_0

    .line 1030
    new-instance v15, Lcom/smartisanos/smengine/Mesh$MeshException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "unsupport vertex type"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/Mesh;->mVertexType:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lcom/smartisanos/smengine/Mesh$MeshException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 774
    :pswitch_0
    move-object/from16 v0, p0

    iget v15, v0, Lcom/smartisanos/smengine/Mesh;->mVertexType:I

    invoke-static {v15}, Lcom/smartisanos/smengine/Mesh$VertexType;->getFloatNum(I)I

    move-result v14

    .line 775
    .local v14, "vertexFloatNum":I
    const/4 v15, 0x5

    if-eq v14, v15, :cond_2

    .line 776
    new-instance v15, Lcom/smartisanos/smengine/Mesh$MeshException;

    const-string v16, "create vertex buffer error : float must be 5"

    invoke-direct/range {v15 .. v16}, Lcom/smartisanos/smengine/Mesh$MeshException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 778
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/smengine/Mesh;->getPointCount()I

    move-result v7

    .line 779
    .local v7, "pointNum":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/smartisanos/smengine/Mesh;->mTexVertexArray:[[F

    const/16 v16, 0x0

    aget-object v15, v15, v16

    if-nez v15, :cond_3

    .line 780
    new-instance v15, Lcom/smartisanos/smengine/Mesh$MeshException;

    const-string v16, "create vertex buffer error: tex array null"

    invoke-direct/range {v15 .. v16}, Lcom/smartisanos/smengine/Mesh$MeshException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 782
    :cond_3
    mul-int v15, v7, v14

    new-array v13, v15, [F

    .line 783
    .local v13, "vertexArray":[F
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v7, :cond_4

    .line 784
    mul-int/lit8 v10, v6, 0x3

    .line 785
    .local v10, "v0":I
    mul-int/lit8 v15, v6, 0x3

    add-int/lit8 v11, v15, 0x1

    .line 786
    .local v11, "v1":I
    mul-int/lit8 v15, v6, 0x3

    add-int/lit8 v12, v15, 0x2

    .line 787
    .local v12, "v2":I
    mul-int/lit8 v8, v6, 0x2

    .line 788
    .local v8, "t0":I
    mul-int/lit8 v15, v6, 0x2

    add-int/lit8 v9, v15, 0x1

    .line 789
    .local v9, "t1":I
    mul-int v15, v6, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/Mesh;->mPointArray:[F

    move-object/from16 v16, v0

    aget v16, v16, v10

    aput v16, v13, v15

    .line 790
    mul-int v15, v6, v14

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/Mesh;->mPointArray:[F

    move-object/from16 v16, v0

    aget v16, v16, v11

    aput v16, v13, v15

    .line 791
    mul-int v15, v6, v14

    add-int/lit8 v15, v15, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/Mesh;->mPointArray:[F

    move-object/from16 v16, v0

    aget v16, v16, v12

    aput v16, v13, v15

    .line 792
    mul-int v15, v6, v14

    add-int/lit8 v15, v15, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/Mesh;->mTexVertexArray:[[F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget-object v16, v16, v17

    aget v16, v16, v8

    aput v16, v13, v15

    .line 793
    mul-int v15, v6, v14

    add-int/lit8 v15, v15, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/Mesh;->mTexVertexArray:[[F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget-object v16, v16, v17

    aget v16, v16, v9

    aput v16, v13, v15

    .line 783
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 795
    .end local v8    # "t0":I
    .end local v9    # "t1":I
    .end local v10    # "v0":I
    .end local v11    # "v1":I
    .end local v12    # "v2":I
    :cond_4
    array-length v15, v13

    mul-int/lit8 v15, v15, 0x4

    invoke-static {v15}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v15

    .line 796
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v5

    .line 797
    invoke-virtual {v5, v13}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 798
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/smartisanos/smengine/Mesh;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 799
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/smartisanos/smengine/Mesh;->mVertexBuffer:Ljava/nio/FloatBuffer;

    goto/16 :goto_0

    .line 803
    .end local v6    # "i":I
    .end local v7    # "pointNum":I
    .end local v13    # "vertexArray":[F
    .end local v14    # "vertexFloatNum":I
    :pswitch_1
    move-object/from16 v0, p0

    iget v15, v0, Lcom/smartisanos/smengine/Mesh;->mVertexType:I

    invoke-static {v15}, Lcom/smartisanos/smengine/Mesh$VertexType;->getFloatNum(I)I

    move-result v14

    .line 804
    .restart local v14    # "vertexFloatNum":I
    const/16 v15, 0x9

    if-eq v14, v15, :cond_5

    .line 805
    new-instance v15, Lcom/smartisanos/smengine/Mesh$MeshException;

    const-string v16, "create vertex buffer error : float must be 9"

    invoke-direct/range {v15 .. v16}, Lcom/smartisanos/smengine/Mesh$MeshException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 807
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/smengine/Mesh;->getPointCount()I

    move-result v7

    .line 808
    .restart local v7    # "pointNum":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/smartisanos/smengine/Mesh;->mTexVertexArray:[[F

    const/16 v16, 0x0

    aget-object v15, v15, v16

    if-nez v15, :cond_6

    .line 809
    new-instance v15, Lcom/smartisanos/smengine/Mesh$MeshException;

    const-string v16, "create vertex buffer error: tex array null"

    invoke-direct/range {v15 .. v16}, Lcom/smartisanos/smengine/Mesh$MeshException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 811
    :cond_6
    mul-int v15, v7, v14

    new-array v13, v15, [F

    .line 812
    .restart local v13    # "vertexArray":[F
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_2
    if-ge v6, v7, :cond_7

    .line 813
    mul-int/lit8 v10, v6, 0x3

    .line 814
    .restart local v10    # "v0":I
    mul-int/lit8 v15, v6, 0x3

    add-int/lit8 v11, v15, 0x1

    .line 815
    .restart local v11    # "v1":I
    mul-int/lit8 v15, v6, 0x3

    add-int/lit8 v12, v15, 0x2

    .line 816
    .restart local v12    # "v2":I
    mul-int/lit8 v8, v6, 0x2

    .line 817
    .restart local v8    # "t0":I
    mul-int/lit8 v15, v6, 0x2

    add-int/lit8 v9, v15, 0x1

    .line 818
    .restart local v9    # "t1":I
    mul-int/lit8 v1, v6, 0x4

    .line 819
    .local v1, "c0":I
    mul-int/lit8 v15, v6, 0x4

    add-int/lit8 v2, v15, 0x1

    .line 820
    .local v2, "c1":I
    mul-int/lit8 v15, v6, 0x4

    add-int/lit8 v3, v15, 0x2

    .line 821
    .local v3, "c2":I
    mul-int/lit8 v15, v6, 0x4

    add-int/lit8 v4, v15, 0x3

    .line 822
    .local v4, "c3":I
    mul-int v15, v6, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/Mesh;->mPointArray:[F

    move-object/from16 v16, v0

    aget v16, v16, v10

    aput v16, v13, v15

    .line 823
    mul-int v15, v6, v14

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/Mesh;->mPointArray:[F

    move-object/from16 v16, v0

    aget v16, v16, v11

    aput v16, v13, v15

    .line 824
    mul-int v15, v6, v14

    add-int/lit8 v15, v15, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/Mesh;->mPointArray:[F

    move-object/from16 v16, v0

    aget v16, v16, v12

    aput v16, v13, v15

    .line 825
    mul-int v15, v6, v14

    add-int/lit8 v15, v15, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/Mesh;->mTexVertexArray:[[F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget-object v16, v16, v17

    aget v16, v16, v8

    aput v16, v13, v15

    .line 826
    mul-int v15, v6, v14

    add-int/lit8 v15, v15, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/Mesh;->mTexVertexArray:[[F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget-object v16, v16, v17

    aget v16, v16, v9

    aput v16, v13, v15

    .line 827
    mul-int v15, v6, v14

    add-int/lit8 v15, v15, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/Mesh;->mColorArray:[F

    move-object/from16 v16, v0

    aget v16, v16, v1

    aput v16, v13, v15

    .line 828
    mul-int v15, v6, v14

    add-int/lit8 v15, v15, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/Mesh;->mColorArray:[F

    move-object/from16 v16, v0

    aget v16, v16, v2

    aput v16, v13, v15

    .line 829
    mul-int v15, v6, v14

    add-int/lit8 v15, v15, 0x7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/Mesh;->mColorArray:[F

    move-object/from16 v16, v0

    aget v16, v16, v3

    aput v16, v13, v15

    .line 830
    mul-int v15, v6, v14

    add-int/lit8 v15, v15, 0x8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/Mesh;->mColorArray:[F

    move-object/from16 v16, v0

    aget v16, v16, v4

    aput v16, v13, v15

    .line 812
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 832
    .end local v1    # "c0":I
    .end local v2    # "c1":I
    .end local v3    # "c2":I
    .end local v4    # "c3":I
    .end local v8    # "t0":I
    .end local v9    # "t1":I
    .end local v10    # "v0":I
    .end local v11    # "v1":I
    .end local v12    # "v2":I
    :cond_7
    array-length v15, v13

    mul-int/lit8 v15, v15, 0x4

    invoke-static {v15}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v15

    .line 833
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v5

    .line 834
    invoke-virtual {v5, v13}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 835
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/smartisanos/smengine/Mesh;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 836
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/smartisanos/smengine/Mesh;->mVertexBuffer:Ljava/nio/FloatBuffer;

    goto/16 :goto_0

    .line 840
    .end local v6    # "i":I
    .end local v7    # "pointNum":I
    .end local v13    # "vertexArray":[F
    .end local v14    # "vertexFloatNum":I
    :pswitch_2
    move-object/from16 v0, p0

    iget v15, v0, Lcom/smartisanos/smengine/Mesh;->mVertexType:I

    invoke-static {v15}, Lcom/smartisanos/smengine/Mesh$VertexType;->getFloatNum(I)I

    move-result v14

    .line 841
    .restart local v14    # "vertexFloatNum":I
    const/4 v15, 0x7

    if-eq v14, v15, :cond_8

    .line 842
    new-instance v15, Lcom/smartisanos/smengine/Mesh$MeshException;

    const-string v16, "create vertex buffer error : float must be 7"

    invoke-direct/range {v15 .. v16}, Lcom/smartisanos/smengine/Mesh$MeshException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 844
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/smengine/Mesh;->getPointCount()I

    move-result v7

    .line 845
    .restart local v7    # "pointNum":I
    mul-int v15, v7, v14

    new-array v13, v15, [F

    .line 846
    .restart local v13    # "vertexArray":[F
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_3
    if-ge v6, v7, :cond_9

    .line 847
    mul-int/lit8 v10, v6, 0x3

    .line 848
    .restart local v10    # "v0":I
    mul-int/lit8 v15, v6, 0x3

    add-int/lit8 v11, v15, 0x1

    .line 849
    .restart local v11    # "v1":I
    mul-int/lit8 v15, v6, 0x3

    add-int/lit8 v12, v15, 0x2

    .line 850
    .restart local v12    # "v2":I
    mul-int/lit8 v1, v6, 0x4

    .line 851
    .restart local v1    # "c0":I
    mul-int/lit8 v15, v6, 0x4

    add-int/lit8 v2, v15, 0x1

    .line 852
    .restart local v2    # "c1":I
    mul-int/lit8 v15, v6, 0x4

    add-int/lit8 v3, v15, 0x2

    .line 853
    .restart local v3    # "c2":I
    mul-int/lit8 v15, v6, 0x4

    add-int/lit8 v4, v15, 0x3

    .line 854
    .restart local v4    # "c3":I
    mul-int v15, v6, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/Mesh;->mPointArray:[F

    move-object/from16 v16, v0

    aget v16, v16, v10

    aput v16, v13, v15

    .line 855
    mul-int v15, v6, v14

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/Mesh;->mPointArray:[F

    move-object/from16 v16, v0

    aget v16, v16, v11

    aput v16, v13, v15

    .line 856
    mul-int v15, v6, v14

    add-int/lit8 v15, v15, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/Mesh;->mPointArray:[F

    move-object/from16 v16, v0

    aget v16, v16, v12

    aput v16, v13, v15

    .line 857
    mul-int v15, v6, v14

    add-int/lit8 v15, v15, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/Mesh;->mColorArray:[F

    move-object/from16 v16, v0

    aget v16, v16, v1

    aput v16, v13, v15

    .line 858
    mul-int v15, v6, v14

    add-int/lit8 v15, v15, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/Mesh;->mColorArray:[F

    move-object/from16 v16, v0

    aget v16, v16, v2

    aput v16, v13, v15

    .line 859
    mul-int v15, v6, v14

    add-int/lit8 v15, v15, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/Mesh;->mColorArray:[F

    move-object/from16 v16, v0

    aget v16, v16, v3

    aput v16, v13, v15

    .line 860
    mul-int v15, v6, v14

    add-int/lit8 v15, v15, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/Mesh;->mColorArray:[F

    move-object/from16 v16, v0

    aget v16, v16, v4

    aput v16, v13, v15

    .line 846
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 862
    .end local v1    # "c0":I
    .end local v2    # "c1":I
    .end local v3    # "c2":I
    .end local v4    # "c3":I
    .end local v10    # "v0":I
    .end local v11    # "v1":I
    .end local v12    # "v2":I
    :cond_9
    array-length v15, v13

    mul-int/lit8 v15, v15, 0x4

    invoke-static {v15}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v15

    .line 863
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v5

    .line 864
    invoke-virtual {v5, v13}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 865
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/smartisanos/smengine/Mesh;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 866
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/smartisanos/smengine/Mesh;->mVertexBuffer:Ljava/nio/FloatBuffer;

    goto/16 :goto_0

    .line 870
    .end local v6    # "i":I
    .end local v7    # "pointNum":I
    .end local v13    # "vertexArray":[F
    .end local v14    # "vertexFloatNum":I
    :pswitch_3
    move-object/from16 v0, p0

    iget v15, v0, Lcom/smartisanos/smengine/Mesh;->mVertexType:I

    invoke-static {v15}, Lcom/smartisanos/smengine/Mesh$VertexType;->getFloatNum(I)I

    move-result v14

    .line 871
    .restart local v14    # "vertexFloatNum":I
    const/4 v15, 0x6

    if-eq v14, v15, :cond_a

    .line 872
    new-instance v15, Lcom/smartisanos/smengine/Mesh$MeshException;

    const-string v16, "create vertex buffer error : float must be 6"

    invoke-direct/range {v15 .. v16}, Lcom/smartisanos/smengine/Mesh$MeshException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 874
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/smengine/Mesh;->getPointCount()I

    move-result v7

    .line 875
    .restart local v7    # "pointNum":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/smartisanos/smengine/Mesh;->mTexVertexArray:[[F

    const/16 v16, 0x0

    aget-object v15, v15, v16

    if-nez v15, :cond_b

    .line 876
    new-instance v15, Lcom/smartisanos/smengine/Mesh$MeshException;

    const-string v16, "create vertex buffer error: tex array null"

    invoke-direct/range {v15 .. v16}, Lcom/smartisanos/smengine/Mesh$MeshException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 878
    :cond_b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/smartisanos/smengine/Mesh;->mMatIndexArray:[F

    if-nez v15, :cond_c

    .line 879
    new-instance v15, Lcom/smartisanos/smengine/Mesh$MeshException;

    const-string v16, "create vertex buffer error: mat index array null"

    invoke-direct/range {v15 .. v16}, Lcom/smartisanos/smengine/Mesh$MeshException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 881
    :cond_c
    mul-int v15, v7, v14

    new-array v13, v15, [F

    .line 882
    .restart local v13    # "vertexArray":[F
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_4
    if-ge v6, v7, :cond_d

    .line 883
    mul-int/lit8 v10, v6, 0x3

    .line 884
    .restart local v10    # "v0":I
    mul-int/lit8 v15, v6, 0x3

    add-int/lit8 v11, v15, 0x1

    .line 885
    .restart local v11    # "v1":I
    mul-int/lit8 v15, v6, 0x3

    add-int/lit8 v12, v15, 0x2

    .line 886
    .restart local v12    # "v2":I
    mul-int/lit8 v8, v6, 0x2

    .line 887
    .restart local v8    # "t0":I
    mul-int/lit8 v15, v6, 0x2

    add-int/lit8 v9, v15, 0x1

    .line 888
    .restart local v9    # "t1":I
    mul-int v15, v6, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/Mesh;->mPointArray:[F

    move-object/from16 v16, v0

    aget v16, v16, v10

    aput v16, v13, v15

    .line 889
    mul-int v15, v6, v14

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/Mesh;->mPointArray:[F

    move-object/from16 v16, v0

    aget v16, v16, v11

    aput v16, v13, v15

    .line 890
    mul-int v15, v6, v14

    add-int/lit8 v15, v15, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/Mesh;->mPointArray:[F

    move-object/from16 v16, v0

    aget v16, v16, v12

    aput v16, v13, v15

    .line 891
    mul-int v15, v6, v14

    add-int/lit8 v15, v15, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/Mesh;->mTexVertexArray:[[F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget-object v16, v16, v17

    aget v16, v16, v8

    aput v16, v13, v15

    .line 892
    mul-int v15, v6, v14

    add-int/lit8 v15, v15, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/Mesh;->mTexVertexArray:[[F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget-object v16, v16, v17

    aget v16, v16, v9

    aput v16, v13, v15

    .line 893
    mul-int v15, v6, v14

    add-int/lit8 v15, v15, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/Mesh;->mMatIndexArray:[F

    move-object/from16 v16, v0

    aget v16, v16, v6

    aput v16, v13, v15

    .line 882
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 895
    .end local v8    # "t0":I
    .end local v9    # "t1":I
    .end local v10    # "v0":I
    .end local v11    # "v1":I
    .end local v12    # "v2":I
    :cond_d
    array-length v15, v13

    mul-int/lit8 v15, v15, 0x4

    invoke-static {v15}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v15

    .line 896
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v5

    .line 897
    invoke-virtual {v5, v13}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 898
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/smartisanos/smengine/Mesh;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 899
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/smartisanos/smengine/Mesh;->mVertexBuffer:Ljava/nio/FloatBuffer;

    goto/16 :goto_0

    .line 903
    .end local v6    # "i":I
    .end local v7    # "pointNum":I
    .end local v13    # "vertexArray":[F
    .end local v14    # "vertexFloatNum":I
    :pswitch_4
    move-object/from16 v0, p0

    iget v15, v0, Lcom/smartisanos/smengine/Mesh;->mVertexType:I

    invoke-static {v15}, Lcom/smartisanos/smengine/Mesh$VertexType;->getFloatNum(I)I

    move-result v14

    .line 904
    .restart local v14    # "vertexFloatNum":I
    const/4 v15, 0x3

    if-eq v14, v15, :cond_e

    .line 905
    new-instance v15, Lcom/smartisanos/smengine/Mesh$MeshException;

    const-string v16, "create vertex buffer error : float must be 3"

    invoke-direct/range {v15 .. v16}, Lcom/smartisanos/smengine/Mesh$MeshException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 907
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/smengine/Mesh;->getPointCount()I

    move-result v7

    .line 908
    .restart local v7    # "pointNum":I
    mul-int v15, v7, v14

    new-array v13, v15, [F

    .line 909
    .restart local v13    # "vertexArray":[F
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_5
    if-ge v6, v7, :cond_f

    .line 910
    mul-int/lit8 v10, v6, 0x3

    .line 911
    .restart local v10    # "v0":I
    mul-int/lit8 v15, v6, 0x3

    add-int/lit8 v11, v15, 0x1

    .line 912
    .restart local v11    # "v1":I
    mul-int/lit8 v15, v6, 0x3

    add-int/lit8 v12, v15, 0x2

    .line 913
    .restart local v12    # "v2":I
    mul-int v15, v6, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/Mesh;->mPointArray:[F

    move-object/from16 v16, v0

    aget v16, v16, v10

    aput v16, v13, v15

    .line 914
    mul-int v15, v6, v14

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/Mesh;->mPointArray:[F

    move-object/from16 v16, v0

    aget v16, v16, v11

    aput v16, v13, v15

    .line 915
    mul-int v15, v6, v14

    add-int/lit8 v15, v15, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/Mesh;->mPointArray:[F

    move-object/from16 v16, v0

    aget v16, v16, v12

    aput v16, v13, v15

    .line 909
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 917
    .end local v10    # "v0":I
    .end local v11    # "v1":I
    .end local v12    # "v2":I
    :cond_f
    array-length v15, v13

    mul-int/lit8 v15, v15, 0x4

    invoke-static {v15}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v15

    .line 918
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v5

    .line 919
    invoke-virtual {v5, v13}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 920
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/smartisanos/smengine/Mesh;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 921
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/smartisanos/smengine/Mesh;->mVertexBuffer:Ljava/nio/FloatBuffer;

    goto/16 :goto_0

    .line 925
    .end local v6    # "i":I
    .end local v7    # "pointNum":I
    .end local v13    # "vertexArray":[F
    .end local v14    # "vertexFloatNum":I
    :pswitch_5
    move-object/from16 v0, p0

    iget v15, v0, Lcom/smartisanos/smengine/Mesh;->mVertexType:I

    invoke-static {v15}, Lcom/smartisanos/smengine/Mesh$VertexType;->getFloatNum(I)I

    move-result v14

    .line 926
    .restart local v14    # "vertexFloatNum":I
    const/16 v15, 0x8

    if-eq v14, v15, :cond_10

    .line 927
    new-instance v15, Lcom/smartisanos/smengine/Mesh$MeshException;

    const-string v16, "create vertex buffer error : float must be 8"

    invoke-direct/range {v15 .. v16}, Lcom/smartisanos/smengine/Mesh$MeshException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 929
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/smengine/Mesh;->getPointCount()I

    move-result v7

    .line 930
    .restart local v7    # "pointNum":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/smartisanos/smengine/Mesh;->mTexVertexArray:[[F

    const/16 v16, 0x0

    aget-object v15, v15, v16

    if-nez v15, :cond_11

    .line 931
    new-instance v15, Lcom/smartisanos/smengine/Mesh$MeshException;

    const-string v16, "create vertex buffer error: tex array null"

    invoke-direct/range {v15 .. v16}, Lcom/smartisanos/smengine/Mesh$MeshException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 933
    :cond_11
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/smartisanos/smengine/Mesh;->mTexVertexArray:[[F

    const/16 v16, 0x3

    aget-object v15, v15, v16

    if-nez v15, :cond_12

    .line 934
    new-instance v15, Lcom/smartisanos/smengine/Mesh$MeshException;

    const-string v16, "create vertex buffer error: shadow array null"

    invoke-direct/range {v15 .. v16}, Lcom/smartisanos/smengine/Mesh$MeshException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 936
    :cond_12
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/smartisanos/smengine/Mesh;->mMatIndexArray:[F

    if-nez v15, :cond_13

    .line 937
    new-instance v15, Lcom/smartisanos/smengine/Mesh$MeshException;

    const-string v16, "create vertex buffer error: mat index array null"

    invoke-direct/range {v15 .. v16}, Lcom/smartisanos/smengine/Mesh$MeshException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 939
    :cond_13
    mul-int v15, v7, v14

    new-array v13, v15, [F

    .line 940
    .restart local v13    # "vertexArray":[F
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_6
    if-ge v6, v7, :cond_14

    .line 941
    mul-int/lit8 v10, v6, 0x3

    .line 942
    .restart local v10    # "v0":I
    mul-int/lit8 v15, v6, 0x3

    add-int/lit8 v11, v15, 0x1

    .line 943
    .restart local v11    # "v1":I
    mul-int/lit8 v15, v6, 0x3

    add-int/lit8 v12, v15, 0x2

    .line 944
    .restart local v12    # "v2":I
    mul-int/lit8 v8, v6, 0x2

    .line 945
    .restart local v8    # "t0":I
    mul-int/lit8 v15, v6, 0x2

    add-int/lit8 v9, v15, 0x1

    .line 946
    .restart local v9    # "t1":I
    mul-int v15, v6, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/Mesh;->mPointArray:[F

    move-object/from16 v16, v0

    aget v16, v16, v10

    aput v16, v13, v15

    .line 947
    mul-int v15, v6, v14

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/Mesh;->mPointArray:[F

    move-object/from16 v16, v0

    aget v16, v16, v11

    aput v16, v13, v15

    .line 948
    mul-int v15, v6, v14

    add-int/lit8 v15, v15, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/Mesh;->mPointArray:[F

    move-object/from16 v16, v0

    aget v16, v16, v12

    aput v16, v13, v15

    .line 949
    mul-int v15, v6, v14

    add-int/lit8 v15, v15, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/Mesh;->mTexVertexArray:[[F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget-object v16, v16, v17

    aget v16, v16, v8

    aput v16, v13, v15

    .line 950
    mul-int v15, v6, v14

    add-int/lit8 v15, v15, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/Mesh;->mTexVertexArray:[[F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget-object v16, v16, v17

    aget v16, v16, v9

    aput v16, v13, v15

    .line 951
    mul-int v15, v6, v14

    add-int/lit8 v15, v15, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/Mesh;->mTexVertexArray:[[F

    move-object/from16 v16, v0

    const/16 v17, 0x3

    aget-object v16, v16, v17

    aget v16, v16, v8

    aput v16, v13, v15

    .line 952
    mul-int v15, v6, v14

    add-int/lit8 v15, v15, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/Mesh;->mTexVertexArray:[[F

    move-object/from16 v16, v0

    const/16 v17, 0x3

    aget-object v16, v16, v17

    aget v16, v16, v9

    aput v16, v13, v15

    .line 953
    mul-int v15, v6, v14

    add-int/lit8 v15, v15, 0x7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/Mesh;->mMatIndexArray:[F

    move-object/from16 v16, v0

    aget v16, v16, v6

    aput v16, v13, v15

    .line 940
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_6

    .line 955
    .end local v8    # "t0":I
    .end local v9    # "t1":I
    .end local v10    # "v0":I
    .end local v11    # "v1":I
    .end local v12    # "v2":I
    :cond_14
    array-length v15, v13

    mul-int/lit8 v15, v15, 0x4

    invoke-static {v15}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v15

    .line 956
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v5

    .line 957
    invoke-virtual {v5, v13}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 958
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/smartisanos/smengine/Mesh;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 959
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/smartisanos/smengine/Mesh;->mVertexBuffer:Ljava/nio/FloatBuffer;

    goto/16 :goto_0

    .line 963
    .end local v6    # "i":I
    .end local v7    # "pointNum":I
    .end local v13    # "vertexArray":[F
    .end local v14    # "vertexFloatNum":I
    :pswitch_6
    move-object/from16 v0, p0

    iget v15, v0, Lcom/smartisanos/smengine/Mesh;->mVertexType:I

    invoke-static {v15}, Lcom/smartisanos/smengine/Mesh$VertexType;->getFloatNum(I)I

    move-result v14

    .line 964
    .restart local v14    # "vertexFloatNum":I
    const/4 v15, 0x7

    if-eq v14, v15, :cond_15

    .line 965
    new-instance v15, Lcom/smartisanos/smengine/Mesh$MeshException;

    const-string v16, "create vertex buffer error : float must be 8"

    invoke-direct/range {v15 .. v16}, Lcom/smartisanos/smengine/Mesh$MeshException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 967
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/smengine/Mesh;->getPointCount()I

    move-result v7

    .line 968
    .restart local v7    # "pointNum":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/smartisanos/smengine/Mesh;->mTexVertexArray:[[F

    const/16 v16, 0x0

    aget-object v15, v15, v16

    if-nez v15, :cond_16

    .line 969
    new-instance v15, Lcom/smartisanos/smengine/Mesh$MeshException;

    const-string v16, "create vertex buffer error: tex array null"

    invoke-direct/range {v15 .. v16}, Lcom/smartisanos/smengine/Mesh$MeshException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 971
    :cond_16
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/smartisanos/smengine/Mesh;->mTexVertexArray:[[F

    const/16 v16, 0x3

    aget-object v15, v15, v16

    if-nez v15, :cond_17

    .line 972
    new-instance v15, Lcom/smartisanos/smengine/Mesh$MeshException;

    const-string v16, "create vertex buffer error: shadow array null"

    invoke-direct/range {v15 .. v16}, Lcom/smartisanos/smengine/Mesh$MeshException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 974
    :cond_17
    mul-int v15, v7, v14

    new-array v13, v15, [F

    .line 975
    .restart local v13    # "vertexArray":[F
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_7
    if-ge v6, v7, :cond_18

    .line 976
    mul-int/lit8 v10, v6, 0x3

    .line 977
    .restart local v10    # "v0":I
    mul-int/lit8 v15, v6, 0x3

    add-int/lit8 v11, v15, 0x1

    .line 978
    .restart local v11    # "v1":I
    mul-int/lit8 v15, v6, 0x3

    add-int/lit8 v12, v15, 0x2

    .line 979
    .restart local v12    # "v2":I
    mul-int/lit8 v8, v6, 0x2

    .line 980
    .restart local v8    # "t0":I
    mul-int/lit8 v15, v6, 0x2

    add-int/lit8 v9, v15, 0x1

    .line 981
    .restart local v9    # "t1":I
    mul-int v15, v6, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/Mesh;->mPointArray:[F

    move-object/from16 v16, v0

    aget v16, v16, v10

    aput v16, v13, v15

    .line 982
    mul-int v15, v6, v14

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/Mesh;->mPointArray:[F

    move-object/from16 v16, v0

    aget v16, v16, v11

    aput v16, v13, v15

    .line 983
    mul-int v15, v6, v14

    add-int/lit8 v15, v15, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/Mesh;->mPointArray:[F

    move-object/from16 v16, v0

    aget v16, v16, v12

    aput v16, v13, v15

    .line 984
    mul-int v15, v6, v14

    add-int/lit8 v15, v15, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/Mesh;->mTexVertexArray:[[F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget-object v16, v16, v17

    aget v16, v16, v8

    aput v16, v13, v15

    .line 985
    mul-int v15, v6, v14

    add-int/lit8 v15, v15, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/Mesh;->mTexVertexArray:[[F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget-object v16, v16, v17

    aget v16, v16, v9

    aput v16, v13, v15

    .line 986
    mul-int v15, v6, v14

    add-int/lit8 v15, v15, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/Mesh;->mTexVertexArray:[[F

    move-object/from16 v16, v0

    const/16 v17, 0x3

    aget-object v16, v16, v17

    aget v16, v16, v8

    aput v16, v13, v15

    .line 987
    mul-int v15, v6, v14

    add-int/lit8 v15, v15, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/Mesh;->mTexVertexArray:[[F

    move-object/from16 v16, v0

    const/16 v17, 0x3

    aget-object v16, v16, v17

    aget v16, v16, v9

    aput v16, v13, v15

    .line 975
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_7

    .line 989
    .end local v8    # "t0":I
    .end local v9    # "t1":I
    .end local v10    # "v0":I
    .end local v11    # "v1":I
    .end local v12    # "v2":I
    :cond_18
    array-length v15, v13

    mul-int/lit8 v15, v15, 0x4

    invoke-static {v15}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v15

    .line 990
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v5

    .line 991
    invoke-virtual {v5, v13}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 992
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/smartisanos/smengine/Mesh;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 993
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/smartisanos/smengine/Mesh;->mVertexBuffer:Ljava/nio/FloatBuffer;

    goto/16 :goto_0

    .line 997
    .end local v6    # "i":I
    .end local v7    # "pointNum":I
    .end local v13    # "vertexArray":[F
    .end local v14    # "vertexFloatNum":I
    :pswitch_7
    move-object/from16 v0, p0

    iget v15, v0, Lcom/smartisanos/smengine/Mesh;->mVertexType:I

    invoke-static {v15}, Lcom/smartisanos/smengine/Mesh$VertexType;->getFloatNum(I)I

    move-result v14

    .line 998
    .restart local v14    # "vertexFloatNum":I
    const/16 v15, 0x8

    if-eq v14, v15, :cond_19

    .line 999
    new-instance v15, Lcom/smartisanos/smengine/Mesh$MeshException;

    const-string v16, "create vertex buffer error : float must be 5"

    invoke-direct/range {v15 .. v16}, Lcom/smartisanos/smengine/Mesh$MeshException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 1001
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/smengine/Mesh;->getPointCount()I

    move-result v7

    .line 1002
    .restart local v7    # "pointNum":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/smartisanos/smengine/Mesh;->mTexVertexArray:[[F

    const/16 v16, 0x0

    aget-object v15, v15, v16

    if-nez v15, :cond_1a

    .line 1003
    new-instance v15, Lcom/smartisanos/smengine/Mesh$MeshException;

    const-string v16, "create vertex buffer error: tex array null"

    invoke-direct/range {v15 .. v16}, Lcom/smartisanos/smengine/Mesh$MeshException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 1005
    :cond_1a
    mul-int v15, v7, v14

    new-array v13, v15, [F

    .line 1006
    .restart local v13    # "vertexArray":[F
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_8
    if-ge v6, v7, :cond_1b

    .line 1007
    mul-int/lit8 v10, v6, 0x3

    .line 1008
    .restart local v10    # "v0":I
    mul-int/lit8 v15, v6, 0x3

    add-int/lit8 v11, v15, 0x1

    .line 1009
    .restart local v11    # "v1":I
    mul-int/lit8 v15, v6, 0x3

    add-int/lit8 v12, v15, 0x2

    .line 1010
    .restart local v12    # "v2":I
    mul-int/lit8 v8, v6, 0x2

    .line 1011
    .restart local v8    # "t0":I
    mul-int/lit8 v15, v6, 0x2

    add-int/lit8 v9, v15, 0x1

    .line 1012
    .restart local v9    # "t1":I
    mul-int v15, v6, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/Mesh;->mPointArray:[F

    move-object/from16 v16, v0

    aget v16, v16, v10

    aput v16, v13, v15

    .line 1013
    mul-int v15, v6, v14

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/Mesh;->mPointArray:[F

    move-object/from16 v16, v0

    aget v16, v16, v11

    aput v16, v13, v15

    .line 1014
    mul-int v15, v6, v14

    add-int/lit8 v15, v15, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/Mesh;->mPointArray:[F

    move-object/from16 v16, v0

    aget v16, v16, v12

    aput v16, v13, v15

    .line 1015
    mul-int v15, v6, v14

    add-int/lit8 v15, v15, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/Mesh;->mTexVertexArray:[[F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget-object v16, v16, v17

    aget v16, v16, v8

    aput v16, v13, v15

    .line 1016
    mul-int v15, v6, v14

    add-int/lit8 v15, v15, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/Mesh;->mTexVertexArray:[[F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget-object v16, v16, v17

    aget v16, v16, v9

    aput v16, v13, v15

    .line 1017
    mul-int v15, v6, v14

    add-int/lit8 v15, v15, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/Mesh;->mNormalArray:[F

    move-object/from16 v16, v0

    aget v16, v16, v10

    aput v16, v13, v15

    .line 1018
    mul-int v15, v6, v14

    add-int/lit8 v15, v15, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/Mesh;->mNormalArray:[F

    move-object/from16 v16, v0

    aget v16, v16, v11

    aput v16, v13, v15

    .line 1019
    mul-int v15, v6, v14

    add-int/lit8 v15, v15, 0x7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/Mesh;->mNormalArray:[F

    move-object/from16 v16, v0

    aget v16, v16, v12

    aput v16, v13, v15

    .line 1006
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_8

    .line 1021
    .end local v8    # "t0":I
    .end local v9    # "t1":I
    .end local v10    # "v0":I
    .end local v11    # "v1":I
    .end local v12    # "v2":I
    :cond_1b
    array-length v15, v13

    mul-int/lit8 v15, v15, 0x4

    invoke-static {v15}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v15

    .line 1022
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v5

    .line 1023
    invoke-virtual {v5, v13}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 1024
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/smartisanos/smengine/Mesh;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 1025
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/smartisanos/smengine/Mesh;->mVertexBuffer:Ljava/nio/FloatBuffer;

    goto/16 :goto_0

    .line 771
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_7
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public getVertexBufferObject()I
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 722
    iget v1, p0, Lcom/smartisanos/smengine/Mesh;->mVertexBufferID:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 723
    iget v1, p0, Lcom/smartisanos/smengine/Mesh;->mVertexBufferID:I

    .line 737
    :goto_0
    return v1

    .line 725
    :cond_0
    new-array v0, v4, [I

    .line 726
    .local v0, "bufferID":[I
    invoke-static {v4, v0, v3}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    .line 727
    aget v1, v0, v3

    iput v1, p0, Lcom/smartisanos/smengine/Mesh;->mVertexBufferID:I

    .line 728
    invoke-virtual {p0}, Lcom/smartisanos/smengine/Mesh;->updateVertexBufferObject()V

    .line 737
    iget v1, p0, Lcom/smartisanos/smengine/Mesh;->mVertexBufferID:I

    goto :goto_0
.end method

.method public getVertexType()I
    .locals 1

    .prologue
    .line 546
    iget v0, p0, Lcom/smartisanos/smengine/Mesh;->mVertexType:I

    return v0
.end method

.method public isInMeshManager()Z
    .locals 1

    .prologue
    .line 283
    iget-boolean v0, p0, Lcom/smartisanos/smengine/Mesh;->mIsInMeshManager:Z

    return v0
.end method

.method public isYInverse()Z
    .locals 1

    .prologue
    .line 350
    iget-boolean v0, p0, Lcom/smartisanos/smengine/Mesh;->mIsTexYInverse:Z

    return v0
.end method

.method public setColorArray([F)V
    .locals 3
    .param p1, "colors"    # [F

    .prologue
    const/4 v2, 0x0

    .line 428
    array-length v0, p1

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/smartisanos/smengine/Mesh;->mColorArray:[F

    .line 429
    iget-object v0, p0, Lcom/smartisanos/smengine/Mesh;->mColorArray:[F

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 430
    invoke-direct {p0}, Lcom/smartisanos/smengine/Mesh;->defineVertexType()V

    .line 431
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartisanos/smengine/Mesh;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 432
    invoke-virtual {p0}, Lcom/smartisanos/smengine/Mesh;->clearHardwareResource()V

    .line 433
    return-void
.end method

.method public setFaceArray([S)V
    .locals 3
    .param p1, "faces"    # [S

    .prologue
    const/4 v2, 0x0

    .line 421
    array-length v0, p1

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/smartisanos/smengine/Mesh;->mFaceArray:[S

    .line 422
    iget-object v0, p0, Lcom/smartisanos/smengine/Mesh;->mFaceArray:[S

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 423
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartisanos/smengine/Mesh;->mIndexBuffer:Ljava/nio/ShortBuffer;

    .line 424
    invoke-direct {p0}, Lcom/smartisanos/smengine/Mesh;->updateIndexBufferObject()V

    .line 425
    return-void
.end method

.method public setIsInMeshManager(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 286
    iput-boolean p1, p0, Lcom/smartisanos/smengine/Mesh;->mIsInMeshManager:Z

    .line 287
    return-void
.end method

.method public setIsYInverse(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 347
    iput-boolean p1, p0, Lcom/smartisanos/smengine/Mesh;->mIsTexYInverse:Z

    .line 348
    return-void
.end method

.method public setMatIndexArray([F)V
    .locals 3
    .param p1, "matIndexArray"    # [F

    .prologue
    const/4 v2, 0x0

    .line 525
    if-eqz p1, :cond_2

    .line 526
    array-length v0, p1

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/smartisanos/smengine/Mesh;->mMatIndexArray:[F

    .line 527
    iget-object v0, p0, Lcom/smartisanos/smengine/Mesh;->mMatIndexArray:[F

    iget-object v1, p0, Lcom/smartisanos/smengine/Mesh;->mMatIndexArray:[F

    array-length v1, v1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 528
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartisanos/smengine/Mesh;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 529
    iget-object v0, p0, Lcom/smartisanos/smengine/Mesh;->mColorArray:[F

    if-eqz v0, :cond_0

    .line 530
    new-instance v0, Lcom/smartisanos/smengine/Mesh$MeshException;

    const-string v1, "can not support both mat index array and color array"

    invoke-direct {v0, v1}, Lcom/smartisanos/smengine/Mesh$MeshException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 532
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/smengine/Mesh;->mTexVertexArray:[[F

    if-nez v0, :cond_1

    .line 533
    new-instance v0, Lcom/smartisanos/smengine/Mesh$MeshException;

    const-string v1, "can not support tex array null and mat index array not null"

    invoke-direct {v0, v1}, Lcom/smartisanos/smengine/Mesh$MeshException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 535
    :cond_1
    const/4 v0, 0x5

    iput v0, p0, Lcom/smartisanos/smengine/Mesh;->mVertexType:I

    .line 537
    :cond_2
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 277
    iput-object p1, p0, Lcom/smartisanos/smengine/Mesh;->mName:Ljava/lang/String;

    .line 278
    return-void
.end method

.method public setPointArray([F)V
    .locals 3
    .param p1, "points"    # [F

    .prologue
    const/4 v2, 0x0

    .line 414
    array-length v0, p1

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/smartisanos/smengine/Mesh;->mPointArray:[F

    .line 415
    iget-object v0, p0, Lcom/smartisanos/smengine/Mesh;->mPointArray:[F

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 416
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartisanos/smengine/Mesh;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 417
    invoke-virtual {p0}, Lcom/smartisanos/smengine/Mesh;->clearHardwareResource()V

    .line 418
    invoke-direct {p0}, Lcom/smartisanos/smengine/Mesh;->defineVertexType()V

    .line 419
    return-void
.end method

.method public setPrimitiveType(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 386
    iput p1, p0, Lcom/smartisanos/smengine/Mesh;->mCurrentPrimitiveType:I

    .line 387
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartisanos/smengine/Mesh;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 388
    return-void
.end method

.method public setTexVertexArray(I[F)V
    .locals 4
    .param p1, "texArrayType"    # I
    .param p2, "texArray"    # [F

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 391
    if-nez p2, :cond_0

    .line 393
    iget-object v0, p0, Lcom/smartisanos/smengine/Mesh;->mTexVertexArray:[[F

    aput-object v3, v0, p1

    .line 404
    :goto_0
    iput-object v3, p0, Lcom/smartisanos/smengine/Mesh;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 405
    invoke-virtual {p0}, Lcom/smartisanos/smengine/Mesh;->clearHardwareResource()V

    .line 406
    invoke-direct {p0}, Lcom/smartisanos/smengine/Mesh;->defineVertexType()V

    .line 407
    return-void

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/smengine/Mesh;->mTexVertexArray:[[F

    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/smartisanos/smengine/Mesh;->mTexVertexArray:[[F

    aget-object v0, v0, p1

    array-length v0, v0

    array-length v1, p2

    if-eq v0, v1, :cond_2

    .line 396
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/smengine/Mesh;->mTexVertexArray:[[F

    array-length v1, p2

    new-array v1, v1, [F

    aput-object v1, v0, p1

    .line 398
    :cond_2
    iget-boolean v0, p0, Lcom/smartisanos/smengine/Mesh;->mIsTexYInverse:Z

    if-nez v0, :cond_3

    .line 399
    iget-object v0, p0, Lcom/smartisanos/smengine/Mesh;->mTexVertexArray:[[F

    aget-object v0, v0, p1

    array-length v1, p2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 401
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/smartisanos/smengine/Mesh;->inverseTexPoint(I[F)V

    goto :goto_0
.end method

.method public setUserDefinePointNum(I)V
    .locals 0
    .param p1, "n"    # I

    .prologue
    .line 474
    iput p1, p0, Lcom/smartisanos/smengine/Mesh;->mUserDefinePointNum:I

    .line 475
    return-void
.end method

.method public setVertexType(I)V
    .locals 1
    .param p1, "vertexType"    # I

    .prologue
    .line 542
    iput p1, p0, Lcom/smartisanos/smengine/Mesh;->mVertexType:I

    .line 543
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartisanos/smengine/Mesh;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 544
    return-void
.end method

.method public updateTexVertexFloatBuffer(I[F)V
    .locals 11
    .param p1, "type"    # I
    .param p2, "newTexVertexData"    # [F

    .prologue
    const/4 v10, 0x0

    .line 1055
    iget v7, p0, Lcom/smartisanos/smengine/Mesh;->mVertexType:I

    if-nez v7, :cond_0

    .line 1056
    new-instance v7, Lcom/smartisanos/smengine/Mesh$MeshException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "invalid vertex type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/smartisanos/smengine/Mesh;->mVertexType:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/smartisanos/smengine/Mesh$MeshException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1058
    :cond_0
    if-nez p2, :cond_3

    .line 1059
    iget-object v7, p0, Lcom/smartisanos/smengine/Mesh;->mTexVertexArray:[[F

    const/4 v8, 0x0

    aput-object v8, v7, p1

    .line 1070
    :goto_0
    iget-object v7, p0, Lcom/smartisanos/smengine/Mesh;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-nez v7, :cond_1

    .line 1071
    invoke-virtual {p0}, Lcom/smartisanos/smengine/Mesh;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v7

    iput-object v7, p0, Lcom/smartisanos/smengine/Mesh;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 1073
    :cond_1
    iget v7, p0, Lcom/smartisanos/smengine/Mesh;->mVertexType:I

    invoke-static {v7}, Lcom/smartisanos/smengine/Mesh$VertexType;->getFloatNum(I)I

    move-result v6

    .line 1074
    .local v6, "vertexFloatNum":I
    invoke-virtual {p0}, Lcom/smartisanos/smengine/Mesh;->getPointCount()I

    move-result v2

    .line 1076
    .local v2, "pointNum":I
    move v0, v6

    .line 1078
    .local v0, "floatStride":I
    const/4 v5, 0x0

    .line 1079
    .local v5, "texStride":I
    if-nez p1, :cond_7

    .line 1080
    const/4 v5, 0x3

    .line 1084
    :cond_2
    :goto_1
    iget-object v7, p0, Lcom/smartisanos/smengine/Mesh;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v7}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    .line 1085
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v2, :cond_8

    .line 1086
    mul-int v7, v1, v0

    add-int v3, v7, v5

    .line 1087
    .local v3, "tex0Index":I
    mul-int v7, v1, v0

    add-int/2addr v7, v5

    add-int/lit8 v4, v7, 0x1

    .line 1088
    .local v4, "tex1Index":I
    iget-object v7, p0, Lcom/smartisanos/smengine/Mesh;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v8, p0, Lcom/smartisanos/smengine/Mesh;->mTexVertexArray:[[F

    aget-object v8, v8, p1

    mul-int/lit8 v9, v1, 0x2

    aget v8, v8, v9

    invoke-virtual {v7, v3, v8}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 1089
    iget-object v7, p0, Lcom/smartisanos/smengine/Mesh;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v8, p0, Lcom/smartisanos/smengine/Mesh;->mTexVertexArray:[[F

    aget-object v8, v8, p1

    mul-int/lit8 v9, v1, 0x2

    add-int/lit8 v9, v9, 0x1

    aget v8, v8, v9

    invoke-virtual {v7, v4, v8}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 1085
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1061
    .end local v0    # "floatStride":I
    .end local v1    # "i":I
    .end local v2    # "pointNum":I
    .end local v3    # "tex0Index":I
    .end local v4    # "tex1Index":I
    .end local v5    # "texStride":I
    .end local v6    # "vertexFloatNum":I
    :cond_3
    iget-object v7, p0, Lcom/smartisanos/smengine/Mesh;->mTexVertexArray:[[F

    aget-object v7, v7, p1

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/smartisanos/smengine/Mesh;->mTexVertexArray:[[F

    aget-object v7, v7, p1

    array-length v7, v7

    array-length v8, p2

    if-eq v7, v8, :cond_5

    .line 1062
    :cond_4
    iget-object v7, p0, Lcom/smartisanos/smengine/Mesh;->mTexVertexArray:[[F

    array-length v8, p2

    new-array v8, v8, [F

    aput-object v8, v7, p1

    .line 1064
    :cond_5
    iget-boolean v7, p0, Lcom/smartisanos/smengine/Mesh;->mIsTexYInverse:Z

    if-nez v7, :cond_6

    .line 1065
    iget-object v7, p0, Lcom/smartisanos/smengine/Mesh;->mTexVertexArray:[[F

    aget-object v7, v7, p1

    array-length v8, p2

    invoke-static {p2, v10, v7, v10, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 1067
    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/smartisanos/smengine/Mesh;->inverseTexPoint(I[F)V

    goto :goto_0

    .line 1081
    .restart local v0    # "floatStride":I
    .restart local v2    # "pointNum":I
    .restart local v5    # "texStride":I
    .restart local v6    # "vertexFloatNum":I
    :cond_7
    const/4 v7, 0x3

    if-ne p1, v7, :cond_2

    .line 1082
    const/4 v5, 0x5

    goto :goto_1

    .line 1091
    .restart local v1    # "i":I
    :cond_8
    iget-object v7, p0, Lcom/smartisanos/smengine/Mesh;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v7, v10}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 1092
    return-void
.end method

.method public updateVertexBufferObject()V
    .locals 5

    .prologue
    const v4, 0x8892

    .line 710
    iget v2, p0, Lcom/smartisanos/smengine/Mesh;->mVertexBufferID:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 720
    :goto_0
    return-void

    .line 713
    :cond_0
    iget v2, p0, Lcom/smartisanos/smengine/Mesh;->mVertexBufferID:I

    invoke-static {v4, v2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 714
    const-string v2, "glBindBuffer"

    invoke-static {v2}, Lcom/smartisanos/smengine/GLContext;->checkGlError(Ljava/lang/String;)V

    .line 715
    invoke-virtual {p0}, Lcom/smartisanos/smengine/Mesh;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    .line 716
    .local v1, "fb":Ljava/nio/FloatBuffer;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 717
    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->limit()I

    move-result v2

    mul-int/lit8 v0, v2, 0x4

    .line 718
    .local v0, "datasize":I
    const v2, 0x88e4

    invoke-static {v4, v0, v1, v2}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 719
    const-string v2, "glBufferData"

    invoke-static {v2}, Lcom/smartisanos/smengine/GLContext;->checkGlError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeXML(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 6
    .param p1, "xmlWritter"    # Lorg/xmlpull/v1/XmlSerializer;

    .prologue
    const/4 v0, 0x0

    .line 1034
    const/4 v1, 0x0

    :try_start_0
    const-string v2, "Mesh"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1035
    const/4 v1, 0x0

    const-string v2, "name"

    iget-object v3, p0, Lcom/smartisanos/smengine/Mesh;->mName:Ljava/lang/String;

    invoke-interface {p1, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1036
    const/4 v2, 0x0

    const-string v3, "pointArrayCount"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v1, p0, Lcom/smartisanos/smengine/Mesh;->mPointArray:[F

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/smartisanos/smengine/Mesh;->mPointArray:[F

    array-length v1, v1

    :goto_0
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1037
    const/4 v2, 0x0

    const-string v3, "colorArrayCount"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v1, p0, Lcom/smartisanos/smengine/Mesh;->mColorArray:[F

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/smartisanos/smengine/Mesh;->mColorArray:[F

    array-length v1, v1

    :goto_1
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1038
    const/4 v2, 0x0

    const-string v3, "faceArrayCount"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v1, p0, Lcom/smartisanos/smengine/Mesh;->mFaceArray:[S

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/smartisanos/smengine/Mesh;->mFaceArray:[S

    array-length v1, v1

    :goto_2
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1039
    const/4 v2, 0x0

    const-string v3, "matIndexArrayCount"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v1, p0, Lcom/smartisanos/smengine/Mesh;->mMatIndexArray:[F

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/smartisanos/smengine/Mesh;->mMatIndexArray:[F

    array-length v1, v1

    :goto_3
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1040
    const/4 v1, 0x0

    const-string v2, "texVertexArray"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/smartisanos/smengine/Mesh;->mTexVertexArray:[[F

    const/4 v5, 0x0

    aget-object v4, v4, v5

    if-eqz v4, :cond_0

    iget-object v0, p0, Lcom/smartisanos/smengine/Mesh;->mTexVertexArray:[[F

    const/4 v4, 0x0

    aget-object v0, v0, v4

    array-length v0, v0

    :cond_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1041
    const/4 v0, 0x0

    const-string v1, "mCurrentPrimitiveType"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/smartisanos/smengine/Mesh;->mCurrentPrimitiveType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1042
    const/4 v0, 0x0

    const-string v1, "mIsTexYInverse"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/smartisanos/smengine/Mesh;->mIsTexYInverse:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1043
    const/4 v0, 0x0

    const-string v1, "mUseDefinePointNum"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/smartisanos/smengine/Mesh;->mUserDefinePointNum:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1044
    const/4 v0, 0x0

    const-string v1, "mIsInMeshManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/smartisanos/smengine/Mesh;->mIsInMeshManager:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1045
    const/4 v0, 0x0

    const-string v1, "mVertexBufferID"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/smartisanos/smengine/Mesh;->mVertexBufferID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1046
    const/4 v0, 0x0

    const-string v1, "mIndexBufferID"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/smartisanos/smengine/Mesh;->mIndexBufferID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1047
    const/4 v0, 0x0

    const-string v1, "mVertexType"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/smartisanos/smengine/Mesh;->mVertexType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1048
    const/4 v0, 0x0

    const-string v1, "Mesh"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1052
    :goto_4
    return-void

    :cond_1
    move v1, v0

    .line 1036
    goto/16 :goto_0

    :cond_2
    move v1, v0

    .line 1037
    goto/16 :goto_1

    :cond_3
    move v1, v0

    .line 1038
    goto/16 :goto_2

    :cond_4
    move v1, v0

    .line 1039
    goto/16 :goto_3

    .line 1049
    :catch_0
    move-exception v0

    goto :goto_4
.end method
