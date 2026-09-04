.class public Lcom/smartisanos/smengine/myparticle/EmitterSphereShape;
.super Ljava/lang/Object;
.source "EmitterSphereShape.java"

.implements Lcom/smartisanos/smengine/myparticle/EmitterShape;


.field private center:Lcom/smartisanos/smengine/math/Vector3f;

.field private radius:F


.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method public constructor <init>(Lcom/smartisanos/smengine/math/Vector3f;F)V
    .locals 2
    .param p1, "center"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p2, "radius"    # F

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    if-nez p1, :cond_0

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "center cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_1

    .line 53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Radius must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_1
    iput-object p1, p0, Lcom/smartisanos/smengine/myparticle/EmitterSphereShape;->center:Lcom/smartisanos/smengine/math/Vector3f;

    .line 57
    iput p2, p0, Lcom/smartisanos/smengine/myparticle/EmitterSphereShape;->radius:F

    .line 58
    return-void
.end method


.method public deepClone()Lcom/smartisanos/smengine/myparticle/EmitterShape;
    .locals 3

    .prologue
    .line 63
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/smengine/myparticle/EmitterSphereShape;

    .line 64
    .local v0, "clone":Lcom/smartisanos/smengine/myparticle/EmitterSphereShape;
    iget-object v2, p0, Lcom/smartisanos/smengine/myparticle/EmitterSphereShape;->center:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/math/Vector3f;->clone()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v2

    iput-object v2, v0, Lcom/smartisanos/smengine/myparticle/EmitterSphereShape;->center:Lcom/smartisanos/smengine/math/Vector3f;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    return-object v0

    .line 66
    .end local v0    # "clone":Lcom/smartisanos/smengine/myparticle/EmitterSphereShape;
    :catch_0
    move-exception v1

    .line 67
    .local v1, "ex":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method public getCenter()Lcom/smartisanos/smengine/math/Vector3f;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/smartisanos/smengine/myparticle/EmitterSphereShape;->center:Lcom/smartisanos/smengine/math/Vector3f;

    return-object v0
.end method

.method public getRadius()F
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/smartisanos/smengine/myparticle/EmitterSphereShape;->radius:F

    return v0
.end method

.method public getRandomPoint(Lcom/smartisanos/smengine/math/Vector3f;)V
    .locals 4
    .param p1, "store"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 74
    :cond_0
    invoke-static {}, Lcom/smartisanos/smengine/math/FastMath;->nextRandomFloat()F

    move-result v0

    mul-float/2addr v0, v3

    sub-float/2addr v0, v2

    iget v1, p0, Lcom/smartisanos/smengine/myparticle/EmitterSphereShape;->radius:F

    mul-float/2addr v0, v1

    iput v0, p1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 75
    invoke-static {}, Lcom/smartisanos/smengine/math/FastMath;->nextRandomFloat()F

    move-result v0

    mul-float/2addr v0, v3

    sub-float/2addr v0, v2

    iget v1, p0, Lcom/smartisanos/smengine/myparticle/EmitterSphereShape;->radius:F

    mul-float/2addr v0, v1

    iput v0, p1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 76
    invoke-static {}, Lcom/smartisanos/smengine/math/FastMath;->nextRandomFloat()F

    move-result v0

    mul-float/2addr v0, v3

    sub-float/2addr v0, v2

    iget v1, p0, Lcom/smartisanos/smengine/myparticle/EmitterSphereShape;->radius:F

    mul-float/2addr v0, v1

    iput v0, p1, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    .line 77
    iget-object v0, p0, Lcom/smartisanos/smengine/myparticle/EmitterSphereShape;->center:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/math/Vector3f;->distance(Lcom/smartisanos/smengine/math/Vector3f;)F

    move-result v0

    iget v1, p0, Lcom/smartisanos/smengine/myparticle/EmitterSphereShape;->radius:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 78
    return-void
.end method

.method public getRandomPointAndNormal(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)V
    .locals 0
    .param p1, "store"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p2, "normal"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/myparticle/EmitterSphereShape;->getRandomPoint(Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 83
    return-void
.end method

.method public setCenter(Lcom/smartisanos/smengine/math/Vector3f;)V
    .locals 0
    .param p1, "center"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/smartisanos/smengine/myparticle/EmitterSphereShape;->center:Lcom/smartisanos/smengine/math/Vector3f;

    .line 91
    return-void
.end method

.method public setRadius(F)V
    .locals 0
    .param p1, "radius"    # F

    .prologue
    .line 98
    iput p1, p0, Lcom/smartisanos/smengine/myparticle/EmitterSphereShape;->radius:F

    .line 99
    return-void
.end method
