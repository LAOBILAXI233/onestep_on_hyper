.class public Lcom/smartisanos/smengine/BoundingRect;
.super Lcom/smartisanos/smengine/BoundingVolume;
.source "BoundingRect.java"


.field private static final TAG:Ljava/lang/String; = "BoundingRect"


.field private mMaxPoint:Lcom/smartisanos/smengine/math/Vector2f;

.field private mMinPoint:Lcom/smartisanos/smengine/math/Vector2f;


.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/smartisanos/smengine/BoundingVolume;-><init>()V

    .line 15
    new-instance v0, Lcom/smartisanos/smengine/math/Vector2f;

    invoke-direct {v0}, Lcom/smartisanos/smengine/math/Vector2f;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/BoundingRect;->mMinPoint:Lcom/smartisanos/smengine/math/Vector2f;

    .line 16
    new-instance v0, Lcom/smartisanos/smengine/math/Vector2f;

    invoke-direct {v0}, Lcom/smartisanos/smengine/math/Vector2f;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/BoundingRect;->mMaxPoint:Lcom/smartisanos/smengine/math/Vector2f;

    .line 26
    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 1
    .param p1, "minx"    # F
    .param p2, "miny"    # F
    .param p3, "maxx"    # F
    .param p4, "maxy"    # F

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/smartisanos/smengine/BoundingVolume;-><init>()V

    .line 15
    new-instance v0, Lcom/smartisanos/smengine/math/Vector2f;

    invoke-direct {v0}, Lcom/smartisanos/smengine/math/Vector2f;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/BoundingRect;->mMinPoint:Lcom/smartisanos/smengine/math/Vector2f;

    .line 16
    new-instance v0, Lcom/smartisanos/smengine/math/Vector2f;

    invoke-direct {v0}, Lcom/smartisanos/smengine/math/Vector2f;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/BoundingRect;->mMaxPoint:Lcom/smartisanos/smengine/math/Vector2f;

    .line 22
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/smartisanos/smengine/BoundingRect;->setBoundingRect(FFFF)V

    .line 23
    return-void
.end method

.method public constructor <init>(Lcom/smartisanos/smengine/math/Vector2f;Lcom/smartisanos/smengine/math/Vector2f;)V
    .locals 1
    .param p1, "minPoint"    # Lcom/smartisanos/smengine/math/Vector2f;
    .param p2, "maxPoint"    # Lcom/smartisanos/smengine/math/Vector2f;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/smartisanos/smengine/BoundingVolume;-><init>()V

    .line 15
    new-instance v0, Lcom/smartisanos/smengine/math/Vector2f;

    invoke-direct {v0}, Lcom/smartisanos/smengine/math/Vector2f;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/BoundingRect;->mMinPoint:Lcom/smartisanos/smengine/math/Vector2f;

    .line 16
    new-instance v0, Lcom/smartisanos/smengine/math/Vector2f;

    invoke-direct {v0}, Lcom/smartisanos/smengine/math/Vector2f;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/BoundingRect;->mMaxPoint:Lcom/smartisanos/smengine/math/Vector2f;

    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/smartisanos/smengine/BoundingRect;->setBoundingRect(Lcom/smartisanos/smengine/math/Vector2f;Lcom/smartisanos/smengine/math/Vector2f;)V

    .line 20
    return-void
.end method


.method public equals(Lcom/smartisanos/smengine/BoundingVolume;)Z
    .locals 4
    .param p1, "bv"    # Lcom/smartisanos/smengine/BoundingVolume;

    .prologue
    const/4 v1, 0x0

    .line 275
    instance-of v2, p1, Lcom/smartisanos/smengine/BoundingRect;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 276
    check-cast v0, Lcom/smartisanos/smengine/BoundingRect;

    .line 277
    .local v0, "br":Lcom/smartisanos/smengine/BoundingRect;
    iget-object v2, p0, Lcom/smartisanos/smengine/BoundingRect;->mMinPoint:Lcom/smartisanos/smengine/math/Vector2f;

    iget v2, v2, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    iget-object v3, v0, Lcom/smartisanos/smengine/BoundingRect;->mMinPoint:Lcom/smartisanos/smengine/math/Vector2f;

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/smartisanos/smengine/BoundingRect;->mMinPoint:Lcom/smartisanos/smengine/math/Vector2f;

    iget v2, v2, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    iget-object v3, v0, Lcom/smartisanos/smengine/BoundingRect;->mMinPoint:Lcom/smartisanos/smengine/math/Vector2f;

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/smartisanos/smengine/BoundingRect;->mMaxPoint:Lcom/smartisanos/smengine/math/Vector2f;

    iget v2, v2, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    iget-object v3, v0, Lcom/smartisanos/smengine/BoundingRect;->mMaxPoint:Lcom/smartisanos/smengine/math/Vector2f;

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/smartisanos/smengine/BoundingRect;->mMaxPoint:Lcom/smartisanos/smengine/math/Vector2f;

    iget v2, v2, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    iget-object v3, v0, Lcom/smartisanos/smengine/BoundingRect;->mMaxPoint:Lcom/smartisanos/smengine/math/Vector2f;

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 279
    .end local v0    # "br":Lcom/smartisanos/smengine/BoundingRect;
    :cond_0
    return v1
.end method

.method public getMaxPoint()Lcom/smartisanos/smengine/math/Vector2f;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/smartisanos/smengine/BoundingRect;->mMaxPoint:Lcom/smartisanos/smengine/math/Vector2f;

    return-object v0
.end method

.method public getMinPoint()Lcom/smartisanos/smengine/math/Vector2f;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/smartisanos/smengine/BoundingRect;->mMinPoint:Lcom/smartisanos/smengine/math/Vector2f;

    return-object v0
.end method

.method public getSize(Lcom/smartisanos/smengine/math/Vector3f;)V
    .locals 2
    .param p1, "v"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/smartisanos/smengine/BoundingRect;->mMaxPoint:Lcom/smartisanos/smengine/math/Vector2f;

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    iget-object v1, p0, Lcom/smartisanos/smengine/BoundingRect;->mMinPoint:Lcom/smartisanos/smengine/math/Vector2f;

    iget v1, v1, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    sub-float/2addr v0, v1

    iput v0, p1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 40
    iget-object v0, p0, Lcom/smartisanos/smengine/BoundingRect;->mMaxPoint:Lcom/smartisanos/smengine/math/Vector2f;

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    iget-object v1, p0, Lcom/smartisanos/smengine/BoundingRect;->mMinPoint:Lcom/smartisanos/smengine/math/Vector2f;

    iget v1, v1, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    sub-float/2addr v0, v1

    iput v0, p1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 41
    const/4 v0, 0x0

    iput v0, p1, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    .line 42
    return-void
.end method

.method public isIntersect(Lcom/smartisanos/smengine/BoundingVolume;)Z
    .locals 3
    .param p1, "bv"    # Lcom/smartisanos/smengine/BoundingVolume;

    .prologue
    .line 86
    instance-of v1, p1, Lcom/smartisanos/smengine/BoundingRect;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 87
    check-cast v0, Lcom/smartisanos/smengine/BoundingRect;

    .line 88
    .local v0, "rect1":Lcom/smartisanos/smengine/BoundingRect;
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/BoundingRect;->isRectIntersect(Lcom/smartisanos/smengine/BoundingRect;)Z

    move-result v1

    return v1

    .line 90
    .end local v0    # "rect1":Lcom/smartisanos/smengine/BoundingRect;
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "unknown bounding volume intersect"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isPointInBoundingVolume(FFF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 271
    invoke-virtual {p0, p1, p2}, Lcom/smartisanos/smengine/BoundingRect;->isPointInRect(FF)Z

    move-result v0

    return v0
.end method

.method public isPointInBoundingVolume(Lcom/smartisanos/smengine/math/Vector3f;)Z
    .locals 2
    .param p1, "point"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 267
    iget v0, p1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v1, p1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/smengine/BoundingRect;->isPointInRect(FF)Z

    move-result v0

    return v0
.end method

.method public isPointInRect(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 69
    iget-object v0, p0, Lcom/smartisanos/smengine/BoundingRect;->mMinPoint:Lcom/smartisanos/smengine/math/Vector2f;

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/smartisanos/smengine/BoundingRect;->mMinPoint:Lcom/smartisanos/smengine/math/Vector2f;

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/smartisanos/smengine/BoundingRect;->mMaxPoint:Lcom/smartisanos/smengine/math/Vector2f;

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/smartisanos/smengine/BoundingRect;->mMaxPoint:Lcom/smartisanos/smengine/math/Vector2f;

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_0

    .line 70
    const/4 v0, 0x1

    .line 72
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPointInRect(Lcom/smartisanos/smengine/math/Vector2f;)Z
    .locals 2
    .param p1, "point"    # Lcom/smartisanos/smengine/math/Vector2f;

    .prologue
    .line 64
    iget v0, p1, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    iget v1, p1, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/smengine/BoundingRect;->isPointInRect(FF)Z

    move-result v0

    return v0
.end method

.method public isRectIntersect(Lcom/smartisanos/smengine/BoundingRect;)Z
    .locals 9
    .param p1, "rect1"    # Lcom/smartisanos/smengine/BoundingRect;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 76
    iget-object v7, p0, Lcom/smartisanos/smengine/BoundingRect;->mMinPoint:Lcom/smartisanos/smengine/math/Vector2f;

    iget v7, v7, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    iget-object v8, p1, Lcom/smartisanos/smengine/BoundingRect;->mMaxPoint:Lcom/smartisanos/smengine/math/Vector2f;

    iget v8, v8, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_1

    move v0, v5

    .line 77
    .local v0, "b1":Z
    :goto_0
    iget-object v7, p1, Lcom/smartisanos/smengine/BoundingRect;->mMinPoint:Lcom/smartisanos/smengine/math/Vector2f;

    iget v7, v7, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    iget-object v8, p0, Lcom/smartisanos/smengine/BoundingRect;->mMaxPoint:Lcom/smartisanos/smengine/math/Vector2f;

    iget v8, v8, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_2

    move v1, v5

    .line 78
    .local v1, "b2":Z
    :goto_1
    iget-object v7, p0, Lcom/smartisanos/smengine/BoundingRect;->mMinPoint:Lcom/smartisanos/smengine/math/Vector2f;

    iget v7, v7, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    iget-object v8, p1, Lcom/smartisanos/smengine/BoundingRect;->mMaxPoint:Lcom/smartisanos/smengine/math/Vector2f;

    iget v8, v8, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_3

    move v2, v5

    .line 79
    .local v2, "b3":Z
    :goto_2
    iget-object v7, p1, Lcom/smartisanos/smengine/BoundingRect;->mMinPoint:Lcom/smartisanos/smengine/math/Vector2f;

    iget v7, v7, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    iget-object v8, p0, Lcom/smartisanos/smengine/BoundingRect;->mMaxPoint:Lcom/smartisanos/smengine/math/Vector2f;

    iget v8, v8, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_4

    move v3, v5

    .line 80
    .local v3, "b4":Z
    :goto_3
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    if-nez v2, :cond_0

    if-eqz v3, :cond_5

    :cond_0
    move v4, v5

    .line 81
    .local v4, "ret":Z
    :goto_4
    if-nez v4, :cond_6

    :goto_5
    return v5

    .end local v0    # "b1":Z
    .end local v1    # "b2":Z
    .end local v2    # "b3":Z
    .end local v3    # "b4":Z
    .end local v4    # "ret":Z
    :cond_1
    move v0, v6

    .line 76
    goto :goto_0

    .restart local v0    # "b1":Z
    :cond_2
    move v1, v6

    .line 77
    goto :goto_1

    .restart local v1    # "b2":Z
    :cond_3
    move v2, v6

    .line 78
    goto :goto_2

    .restart local v2    # "b3":Z
    :cond_4
    move v3, v6

    .line 79
    goto :goto_3

    .restart local v3    # "b4":Z
    :cond_5
    move v4, v6

    .line 80
    goto :goto_4

    .restart local v4    # "ret":Z
    :cond_6
    move v5, v6

    .line 81
    goto :goto_5
.end method

.method public setBoundingRect(FFFF)V
    .locals 1
    .param p1, "minx"    # F
    .param p2, "miny"    # F
    .param p3, "maxx"    # F
    .param p4, "maxy"    # F

    .prologue
    .line 50
    iget-object v0, p0, Lcom/smartisanos/smengine/BoundingRect;->mMinPoint:Lcom/smartisanos/smengine/math/Vector2f;

    iput p1, v0, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    .line 51
    iget-object v0, p0, Lcom/smartisanos/smengine/BoundingRect;->mMinPoint:Lcom/smartisanos/smengine/math/Vector2f;

    iput p2, v0, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    .line 52
    iget-object v0, p0, Lcom/smartisanos/smengine/BoundingRect;->mMaxPoint:Lcom/smartisanos/smengine/math/Vector2f;

    iput p3, v0, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    .line 53
    iget-object v0, p0, Lcom/smartisanos/smengine/BoundingRect;->mMaxPoint:Lcom/smartisanos/smengine/math/Vector2f;

    iput p4, v0, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    .line 54
    return-void
.end method

.method public setBoundingRect(Lcom/smartisanos/smengine/math/Vector2f;Lcom/smartisanos/smengine/math/Vector2f;)V
    .locals 2
    .param p1, "minPoint"    # Lcom/smartisanos/smengine/math/Vector2f;
    .param p2, "maxPoint"    # Lcom/smartisanos/smengine/math/Vector2f;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/smartisanos/smengine/BoundingRect;->mMinPoint:Lcom/smartisanos/smengine/math/Vector2f;

    iget v1, p1, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    iput v1, v0, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    .line 45
    iget-object v0, p0, Lcom/smartisanos/smengine/BoundingRect;->mMinPoint:Lcom/smartisanos/smengine/math/Vector2f;

    iget v1, p1, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    iput v1, v0, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    .line 46
    iget-object v0, p0, Lcom/smartisanos/smengine/BoundingRect;->mMaxPoint:Lcom/smartisanos/smengine/math/Vector2f;

    iget v1, p2, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    iput v1, v0, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    .line 47
    iget-object v0, p0, Lcom/smartisanos/smengine/BoundingRect;->mMaxPoint:Lcom/smartisanos/smengine/math/Vector2f;

    iget v1, p2, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    iput v1, v0, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    .line 48
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mMinPoint = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/smengine/BoundingRect;->mMinPoint:Lcom/smartisanos/smengine/math/Vector2f;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/math/Vector2f;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , mMaxPoint = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/smengine/BoundingRect;->mMaxPoint:Lcom/smartisanos/smengine/math/Vector2f;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/math/Vector2f;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transform(Lcom/smartisanos/smengine/math/Matrix4f;)Lcom/smartisanos/smengine/BoundingVolume;
    .locals 1
    .param p1, "tm"    # Lcom/smartisanos/smengine/math/Matrix4f;

    .prologue
    .line 94
    new-instance v0, Lcom/smartisanos/smengine/BoundingRect;

    invoke-direct {v0}, Lcom/smartisanos/smengine/BoundingRect;-><init>()V

    .line 95
    .local v0, "br":Lcom/smartisanos/smengine/BoundingRect;
    invoke-virtual {p0, p1, v0}, Lcom/smartisanos/smengine/BoundingRect;->transform(Lcom/smartisanos/smengine/math/Matrix4f;Lcom/smartisanos/smengine/BoundingVolume;)V

    .line 96
    return-object v0
.end method

.method public transform(Lcom/smartisanos/smengine/math/Transform;)Lcom/smartisanos/smengine/BoundingVolume;
    .locals 1
    .param p1, "transform"    # Lcom/smartisanos/smengine/math/Transform;

    .prologue
    .line 261
    new-instance v0, Lcom/smartisanos/smengine/BoundingRect;

    invoke-direct {v0}, Lcom/smartisanos/smengine/BoundingRect;-><init>()V

    .line 262
    .local v0, "br":Lcom/smartisanos/smengine/BoundingRect;
    invoke-virtual {p0, p1, v0}, Lcom/smartisanos/smengine/BoundingRect;->transform(Lcom/smartisanos/smengine/math/Transform;Lcom/smartisanos/smengine/BoundingVolume;)V

    .line 263
    return-object v0
.end method

.method public transform(Lcom/smartisanos/smengine/math/Matrix4f;Lcom/smartisanos/smengine/BoundingVolume;)V
    .locals 21
    .param p1, "tm"    # Lcom/smartisanos/smengine/math/Matrix4f;
    .param p2, "result"    # Lcom/smartisanos/smengine/BoundingVolume;

    .prologue
    .line 99
    invoke-static/range {p1 .. p1}, Lcom/smartisanos/smengine/util/GeomUtil;->isMatrixHasRotate(Lcom/smartisanos/smengine/math/Matrix4f;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 100
    invoke-static {}, Lcom/smartisanos/smengine/util/TempVars;->get()Lcom/smartisanos/smengine/util/TempVars;

    move-result-object v17

    .line 102
    .local v17, "tmpVar":Lcom/smartisanos/smengine/util/TempVars;
    move-object/from16 v0, v17

    iget-object v12, v0, Lcom/smartisanos/smengine/util/TempVars;->vect1:Lcom/smartisanos/smengine/math/Vector3f;

    .line 103
    .local v12, "p1":Lcom/smartisanos/smengine/math/Vector3f;
    move-object/from16 v0, v17

    iget-object v13, v0, Lcom/smartisanos/smengine/util/TempVars;->vect2:Lcom/smartisanos/smengine/math/Vector3f;

    .line 104
    .local v13, "p2":Lcom/smartisanos/smengine/math/Vector3f;
    move-object/from16 v0, v17

    iget-object v14, v0, Lcom/smartisanos/smengine/util/TempVars;->vect3:Lcom/smartisanos/smengine/math/Vector3f;

    .line 105
    .local v14, "p3":Lcom/smartisanos/smengine/math/Vector3f;
    move-object/from16 v0, v17

    iget-object v15, v0, Lcom/smartisanos/smengine/util/TempVars;->vect4:Lcom/smartisanos/smengine/math/Vector3f;

    .line 106
    .local v15, "p4":Lcom/smartisanos/smengine/math/Vector3f;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/BoundingRect;->mMinPoint:Lcom/smartisanos/smengine/math/Vector2f;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/BoundingRect;->mMinPoint:Lcom/smartisanos/smengine/math/Vector2f;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    move/from16 v19, v0

    const/16 v20, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v12, v0, v1, v2}, Lcom/smartisanos/smengine/math/Vector3f;->set(FFF)Lcom/smartisanos/smengine/math/Vector3f;

    .line 107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/BoundingRect;->mMaxPoint:Lcom/smartisanos/smengine/math/Vector2f;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/BoundingRect;->mMinPoint:Lcom/smartisanos/smengine/math/Vector2f;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    move/from16 v19, v0

    const/16 v20, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v13, v0, v1, v2}, Lcom/smartisanos/smengine/math/Vector3f;->set(FFF)Lcom/smartisanos/smengine/math/Vector3f;

    .line 108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/BoundingRect;->mMaxPoint:Lcom/smartisanos/smengine/math/Vector2f;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/BoundingRect;->mMaxPoint:Lcom/smartisanos/smengine/math/Vector2f;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    move/from16 v19, v0

    const/16 v20, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v14, v0, v1, v2}, Lcom/smartisanos/smengine/math/Vector3f;->set(FFF)Lcom/smartisanos/smengine/math/Vector3f;

    .line 109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/BoundingRect;->mMinPoint:Lcom/smartisanos/smengine/math/Vector2f;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/BoundingRect;->mMaxPoint:Lcom/smartisanos/smengine/math/Vector2f;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    move/from16 v19, v0

    const/16 v20, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v15, v0, v1, v2}, Lcom/smartisanos/smengine/math/Vector3f;->set(FFF)Lcom/smartisanos/smengine/math/Vector3f;

    .line 111
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/smartisanos/smengine/math/Matrix4f;->mult(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v12

    .line 112
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/smartisanos/smengine/math/Matrix4f;->mult(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v13

    .line 113
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/smartisanos/smengine/math/Matrix4f;->mult(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v14

    .line 114
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/smartisanos/smengine/math/Matrix4f;->mult(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v15

    .line 115
    iget v9, v12, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 116
    .local v9, "minx":F
    iget v10, v12, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 117
    .local v10, "miny":F
    iget v6, v12, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 118
    .local v6, "maxx":F
    iget v7, v12, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 119
    .local v7, "maxy":F
    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v0, v0, [Lcom/smartisanos/smengine/math/Vector3f;

    move-object/from16 v16, v0

    const/16 v18, 0x0

    aput-object v13, v16, v18

    const/16 v18, 0x1

    aput-object v14, v16, v18

    const/16 v18, 0x2

    aput-object v15, v16, v18

    .line 120
    .local v16, "points":[Lcom/smartisanos/smengine/math/Vector3f;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    const/16 v18, 0x3

    move/from16 v0, v18

    if-ge v4, v0, :cond_4

    .line 121
    aget-object v11, v16, v4

    .line 122
    .local v11, "p":Lcom/smartisanos/smengine/math/Vector3f;
    iget v0, v11, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v18, v0

    cmpg-float v18, v18, v9

    if-gez v18, :cond_0

    .line 123
    iget v9, v11, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 125
    :cond_0
    iget v0, v11, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v18, v0

    cmpg-float v18, v18, v10

    if-gez v18, :cond_1

    .line 126
    iget v10, v11, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 128
    :cond_1
    iget v0, v11, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v18, v0

    cmpl-float v18, v18, v6

    if-lez v18, :cond_2

    .line 129
    iget v6, v11, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 131
    :cond_2
    iget v0, v11, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v18, v0

    cmpl-float v18, v18, v7

    if-lez v18, :cond_3

    .line 132
    iget v7, v11, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 120
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v11    # "p":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_4
    move-object/from16 v3, p2

    .line 135
    check-cast v3, Lcom/smartisanos/smengine/BoundingRect;

    .line 136
    .local v3, "br":Lcom/smartisanos/smengine/BoundingRect;
    invoke-virtual {v3, v9, v10, v6, v7}, Lcom/smartisanos/smengine/BoundingRect;->setBoundingRect(FFFF)V

    .line 137
    invoke-virtual/range {v17 .. v17}, Lcom/smartisanos/smengine/util/TempVars;->release()V

    .line 174
    .end local v4    # "i":I
    .end local v14    # "p3":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v15    # "p4":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v16    # "points":[Lcom/smartisanos/smengine/math/Vector3f;
    :goto_1
    return-void

    .line 140
    .end local v3    # "br":Lcom/smartisanos/smengine/BoundingRect;
    .end local v6    # "maxx":F
    .end local v7    # "maxy":F
    .end local v9    # "minx":F
    .end local v10    # "miny":F
    .end local v12    # "p1":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v13    # "p2":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v17    # "tmpVar":Lcom/smartisanos/smengine/util/TempVars;
    :cond_5
    invoke-static {}, Lcom/smartisanos/smengine/util/TempVars;->get()Lcom/smartisanos/smengine/util/TempVars;

    move-result-object v17

    .line 141
    .restart local v17    # "tmpVar":Lcom/smartisanos/smengine/util/TempVars;
    move-object/from16 v0, v17

    iget-object v8, v0, Lcom/smartisanos/smengine/util/TempVars;->vect1:Lcom/smartisanos/smengine/math/Vector3f;

    .line 142
    .local v8, "minPoint":Lcom/smartisanos/smengine/math/Vector3f;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/BoundingRect;->mMinPoint:Lcom/smartisanos/smengine/math/Vector2f;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v8, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/BoundingRect;->mMinPoint:Lcom/smartisanos/smengine/math/Vector2f;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v8, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 144
    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v8, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    .line 145
    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/smartisanos/smengine/util/TempVars;->vect2:Lcom/smartisanos/smengine/math/Vector3f;

    .line 146
    .local v5, "maxPoint":Lcom/smartisanos/smengine/math/Vector3f;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/BoundingRect;->mMaxPoint:Lcom/smartisanos/smengine/math/Vector2f;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v5, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/BoundingRect;->mMaxPoint:Lcom/smartisanos/smengine/math/Vector2f;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v5, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 148
    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v5, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    .line 149
    move-object/from16 v0, v17

    iget-object v12, v0, Lcom/smartisanos/smengine/util/TempVars;->vect3:Lcom/smartisanos/smengine/math/Vector3f;

    .line 150
    .restart local v12    # "p1":Lcom/smartisanos/smengine/math/Vector3f;
    move-object/from16 v0, v17

    iget-object v13, v0, Lcom/smartisanos/smengine/util/TempVars;->vect4:Lcom/smartisanos/smengine/math/Vector3f;

    .line 151
    .restart local v13    # "p2":Lcom/smartisanos/smengine/math/Vector3f;
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v12}, Lcom/smartisanos/smengine/math/Matrix4f;->mult(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    .line 152
    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v13}, Lcom/smartisanos/smengine/math/Matrix4f;->mult(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    .line 153
    iget v9, v12, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 154
    .restart local v9    # "minx":F
    iget v10, v12, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 155
    .restart local v10    # "miny":F
    iget v6, v12, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 156
    .restart local v6    # "maxx":F
    iget v7, v12, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 157
    .restart local v7    # "maxy":F
    iget v0, v13, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v18, v0

    cmpg-float v18, v18, v9

    if-gez v18, :cond_6

    .line 158
    iget v9, v13, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 160
    :cond_6
    iget v0, v13, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v18, v0

    cmpg-float v18, v18, v10

    if-gez v18, :cond_7

    .line 161
    iget v10, v13, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 163
    :cond_7
    iget v0, v13, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v18, v0

    cmpl-float v18, v18, v6

    if-lez v18, :cond_8

    .line 164
    iget v6, v13, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 166
    :cond_8
    iget v0, v13, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v18, v0

    cmpl-float v18, v18, v7

    if-lez v18, :cond_9

    .line 167
    iget v7, v13, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    :cond_9
    move-object/from16 v3, p2

    .line 169
    check-cast v3, Lcom/smartisanos/smengine/BoundingRect;

    .line 170
    .restart local v3    # "br":Lcom/smartisanos/smengine/BoundingRect;
    invoke-virtual {v3, v9, v10, v6, v7}, Lcom/smartisanos/smengine/BoundingRect;->setBoundingRect(FFFF)V

    .line 171
    invoke-virtual/range {v17 .. v17}, Lcom/smartisanos/smengine/util/TempVars;->release()V

    goto/16 :goto_1
.end method

.method public transform(Lcom/smartisanos/smengine/math/Transform;Lcom/smartisanos/smengine/BoundingVolume;)V
    .locals 26
    .param p1, "transform"    # Lcom/smartisanos/smengine/math/Transform;
    .param p2, "result"    # Lcom/smartisanos/smengine/BoundingVolume;

    .prologue
    .line 177
    invoke-virtual/range {p1 .. p1}, Lcom/smartisanos/smengine/math/Transform;->hasRotation()Z

    move-result v23

    if-eqz v23, :cond_5

    .line 179
    invoke-static {}, Lcom/smartisanos/smengine/util/TempVars;->get()Lcom/smartisanos/smengine/util/TempVars;

    move-result-object v22

    .line 180
    .local v22, "tmpVar":Lcom/smartisanos/smengine/util/TempVars;
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/smartisanos/smengine/util/TempVars;->vect1:Lcom/smartisanos/smengine/math/Vector3f;

    move-object/from16 v17, v0

    .line 181
    .local v17, "p1":Lcom/smartisanos/smengine/math/Vector3f;
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/smartisanos/smengine/util/TempVars;->vect2:Lcom/smartisanos/smengine/math/Vector3f;

    move-object/from16 v18, v0

    .line 182
    .local v18, "p2":Lcom/smartisanos/smengine/math/Vector3f;
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/smartisanos/smengine/util/TempVars;->vect3:Lcom/smartisanos/smengine/math/Vector3f;

    move-object/from16 v19, v0

    .line 183
    .local v19, "p3":Lcom/smartisanos/smengine/math/Vector3f;
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/smartisanos/smengine/util/TempVars;->vect4:Lcom/smartisanos/smengine/math/Vector3f;

    move-object/from16 v20, v0

    .line 184
    .local v20, "p4":Lcom/smartisanos/smengine/math/Vector3f;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/BoundingRect;->mMinPoint:Lcom/smartisanos/smengine/math/Vector2f;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/BoundingRect;->mMinPoint:Lcom/smartisanos/smengine/math/Vector2f;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    move/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/smartisanos/smengine/math/Vector3f;->set(FFF)Lcom/smartisanos/smengine/math/Vector3f;

    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/BoundingRect;->mMaxPoint:Lcom/smartisanos/smengine/math/Vector2f;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/BoundingRect;->mMinPoint:Lcom/smartisanos/smengine/math/Vector2f;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    move/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/smartisanos/smengine/math/Vector3f;->set(FFF)Lcom/smartisanos/smengine/math/Vector3f;

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/BoundingRect;->mMaxPoint:Lcom/smartisanos/smengine/math/Vector2f;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/BoundingRect;->mMaxPoint:Lcom/smartisanos/smengine/math/Vector2f;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    move/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/smartisanos/smengine/math/Vector3f;->set(FFF)Lcom/smartisanos/smengine/math/Vector3f;

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/BoundingRect;->mMinPoint:Lcom/smartisanos/smengine/math/Vector2f;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/BoundingRect;->mMaxPoint:Lcom/smartisanos/smengine/math/Vector2f;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    move/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/smartisanos/smengine/math/Vector3f;->set(FFF)Lcom/smartisanos/smengine/math/Vector3f;

    .line 189
    move-object/from16 v0, v22

    iget-object v12, v0, Lcom/smartisanos/smengine/util/TempVars;->vect5:Lcom/smartisanos/smengine/math/Vector3f;

    .line 190
    .local v12, "outp1":Lcom/smartisanos/smengine/math/Vector3f;
    move-object/from16 v0, v22

    iget-object v13, v0, Lcom/smartisanos/smengine/util/TempVars;->vect6:Lcom/smartisanos/smengine/math/Vector3f;

    .line 191
    .local v13, "outp2":Lcom/smartisanos/smengine/math/Vector3f;
    move-object/from16 v0, v22

    iget-object v14, v0, Lcom/smartisanos/smengine/util/TempVars;->vect7:Lcom/smartisanos/smengine/math/Vector3f;

    .line 192
    .local v14, "outp3":Lcom/smartisanos/smengine/math/Vector3f;
    move-object/from16 v0, v22

    iget-object v15, v0, Lcom/smartisanos/smengine/util/TempVars;->vect8:Lcom/smartisanos/smengine/math/Vector3f;

    .line 194
    .local v15, "outp4":Lcom/smartisanos/smengine/math/Vector3f;
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v12}, Lcom/smartisanos/smengine/math/Transform;->transformVector(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v12

    .line 195
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v13}, Lcom/smartisanos/smengine/math/Transform;->transformVector(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v13

    .line 196
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v14}, Lcom/smartisanos/smengine/math/Transform;->transformVector(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v14

    .line 197
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v15}, Lcom/smartisanos/smengine/math/Transform;->transformVector(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v15

    .line 198
    iget v10, v12, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 199
    .local v10, "minx":F
    iget v11, v12, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 200
    .local v11, "miny":F
    iget v7, v12, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 201
    .local v7, "maxx":F
    iget v8, v12, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 202
    .local v8, "maxy":F
    const/16 v23, 0x3

    move/from16 v0, v23

    new-array v0, v0, [Lcom/smartisanos/smengine/math/Vector3f;

    move-object/from16 v21, v0

    const/16 v23, 0x0

    aput-object v13, v21, v23

    const/16 v23, 0x1

    aput-object v14, v21, v23

    const/16 v23, 0x2

    aput-object v15, v21, v23

    .line 203
    .local v21, "points":[Lcom/smartisanos/smengine/math/Vector3f;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    const/16 v23, 0x3

    move/from16 v0, v23

    if-ge v5, v0, :cond_4

    .line 204
    aget-object v16, v21, v5

    .line 205
    .local v16, "p":Lcom/smartisanos/smengine/math/Vector3f;
    move-object/from16 v0, v16

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v23, v0

    cmpg-float v23, v23, v10

    if-gez v23, :cond_0

    .line 206
    move-object/from16 v0, v16

    iget v10, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 208
    :cond_0
    move-object/from16 v0, v16

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v23, v0

    cmpg-float v23, v23, v11

    if-gez v23, :cond_1

    .line 209
    move-object/from16 v0, v16

    iget v11, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 211
    :cond_1
    move-object/from16 v0, v16

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v23, v0

    cmpl-float v23, v23, v7

    if-lez v23, :cond_2

    .line 212
    move-object/from16 v0, v16

    iget v7, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 214
    :cond_2
    move-object/from16 v0, v16

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v23, v0

    cmpl-float v23, v23, v8

    if-lez v23, :cond_3

    .line 215
    move-object/from16 v0, v16

    iget v8, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 203
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .end local v16    # "p":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_4
    move-object/from16 v4, p2

    .line 218
    check-cast v4, Lcom/smartisanos/smengine/BoundingRect;

    .line 219
    .local v4, "br":Lcom/smartisanos/smengine/BoundingRect;
    invoke-virtual {v4, v10, v11, v7, v8}, Lcom/smartisanos/smengine/BoundingRect;->setBoundingRect(FFFF)V

    .line 220
    invoke-virtual/range {v22 .. v22}, Lcom/smartisanos/smengine/util/TempVars;->release()V

    .line 257
    .end local v5    # "i":I
    .end local v12    # "outp1":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v13    # "outp2":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v14    # "outp3":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v15    # "outp4":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v19    # "p3":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v20    # "p4":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v21    # "points":[Lcom/smartisanos/smengine/math/Vector3f;
    :goto_1
    return-void

    .line 224
    .end local v4    # "br":Lcom/smartisanos/smengine/BoundingRect;
    .end local v7    # "maxx":F
    .end local v8    # "maxy":F
    .end local v10    # "minx":F
    .end local v11    # "miny":F
    .end local v17    # "p1":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v18    # "p2":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v22    # "tmpVar":Lcom/smartisanos/smengine/util/TempVars;
    :cond_5
    invoke-static {}, Lcom/smartisanos/smengine/util/TempVars;->get()Lcom/smartisanos/smengine/util/TempVars;

    move-result-object v22

    .line 225
    .restart local v22    # "tmpVar":Lcom/smartisanos/smengine/util/TempVars;
    move-object/from16 v0, v22

    iget-object v9, v0, Lcom/smartisanos/smengine/util/TempVars;->vect1:Lcom/smartisanos/smengine/math/Vector3f;

    .line 226
    .local v9, "minPoint":Lcom/smartisanos/smengine/math/Vector3f;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/BoundingRect;->mMinPoint:Lcom/smartisanos/smengine/math/Vector2f;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    move/from16 v23, v0

    move/from16 v0, v23

    iput v0, v9, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/BoundingRect;->mMinPoint:Lcom/smartisanos/smengine/math/Vector2f;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    move/from16 v23, v0

    move/from16 v0, v23

    iput v0, v9, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 228
    const/16 v23, 0x0

    move/from16 v0, v23

    iput v0, v9, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    .line 229
    move-object/from16 v0, v22

    iget-object v6, v0, Lcom/smartisanos/smengine/util/TempVars;->vect2:Lcom/smartisanos/smengine/math/Vector3f;

    .line 230
    .local v6, "maxPoint":Lcom/smartisanos/smengine/math/Vector3f;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/BoundingRect;->mMaxPoint:Lcom/smartisanos/smengine/math/Vector2f;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    move/from16 v23, v0

    move/from16 v0, v23

    iput v0, v6, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/BoundingRect;->mMaxPoint:Lcom/smartisanos/smengine/math/Vector2f;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    move/from16 v23, v0

    move/from16 v0, v23

    iput v0, v6, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 232
    const/16 v23, 0x0

    move/from16 v0, v23

    iput v0, v6, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    .line 233
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/smartisanos/smengine/util/TempVars;->vect3:Lcom/smartisanos/smengine/math/Vector3f;

    move-object/from16 v17, v0

    .line 234
    .restart local v17    # "p1":Lcom/smartisanos/smengine/math/Vector3f;
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/smartisanos/smengine/util/TempVars;->vect4:Lcom/smartisanos/smengine/math/Vector3f;

    move-object/from16 v18, v0

    .line 235
    .restart local v18    # "p2":Lcom/smartisanos/smengine/math/Vector3f;
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v9, v1}, Lcom/smartisanos/smengine/math/Transform;->transformVector(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    .line 236
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v6, v1}, Lcom/smartisanos/smengine/math/Transform;->transformVector(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    .line 237
    move-object/from16 v0, v17

    iget v10, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 238
    .restart local v10    # "minx":F
    move-object/from16 v0, v17

    iget v11, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 239
    .restart local v11    # "miny":F
    move-object/from16 v0, v17

    iget v7, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 240
    .restart local v7    # "maxx":F
    move-object/from16 v0, v17

    iget v8, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 241
    .restart local v8    # "maxy":F
    move-object/from16 v0, v18

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v23, v0

    cmpg-float v23, v23, v10

    if-gez v23, :cond_6

    .line 242
    move-object/from16 v0, v18

    iget v10, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 244
    :cond_6
    move-object/from16 v0, v18

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v23, v0

    cmpg-float v23, v23, v11

    if-gez v23, :cond_7

    .line 245
    move-object/from16 v0, v18

    iget v11, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 247
    :cond_7
    move-object/from16 v0, v18

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v23, v0

    cmpl-float v23, v23, v7

    if-lez v23, :cond_8

    .line 248
    move-object/from16 v0, v18

    iget v7, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 250
    :cond_8
    move-object/from16 v0, v18

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v23, v0

    cmpl-float v23, v23, v8

    if-lez v23, :cond_9

    .line 251
    move-object/from16 v0, v18

    iget v8, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    :cond_9
    move-object/from16 v4, p2

    .line 253
    check-cast v4, Lcom/smartisanos/smengine/BoundingRect;

    .line 254
    .restart local v4    # "br":Lcom/smartisanos/smengine/BoundingRect;
    invoke-virtual {v4, v10, v11, v7, v8}, Lcom/smartisanos/smengine/BoundingRect;->setBoundingRect(FFFF)V

    .line 255
    invoke-virtual/range {v22 .. v22}, Lcom/smartisanos/smengine/util/TempVars;->release()V

    goto/16 :goto_1
.end method
