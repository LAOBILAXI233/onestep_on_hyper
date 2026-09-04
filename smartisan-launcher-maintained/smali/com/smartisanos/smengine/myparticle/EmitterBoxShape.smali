.class public Lcom/smartisanos/smengine/myparticle/EmitterBoxShape;
.super Ljava/lang/Object;
.source "EmitterBoxShape.java"

.implements Lcom/smartisanos/smengine/myparticle/EmitterShape;


.field private len:Lcom/smartisanos/smengine/math/Vector3f;

.field private min:Lcom/smartisanos/smengine/math/Vector3f;


.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method public constructor <init>(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)V
    .locals 2
    .param p1, "min"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p2, "max"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 47
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "min or max cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_1
    iput-object p1, p0, Lcom/smartisanos/smengine/myparticle/EmitterBoxShape;->min:Lcom/smartisanos/smengine/math/Vector3f;

    .line 51
    new-instance v0, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v0}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/myparticle/EmitterBoxShape;->len:Lcom/smartisanos/smengine/math/Vector3f;

    .line 52
    iget-object v0, p0, Lcom/smartisanos/smengine/myparticle/EmitterBoxShape;->len:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {v0, p2}, Lcom/smartisanos/smengine/math/Vector3f;->set(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/math/Vector3f;->subtractLocal(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    .line 53
    return-void
.end method


.method public deepClone()Lcom/smartisanos/smengine/myparticle/EmitterShape;
    .locals 3

    .prologue
    .line 76
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/smengine/myparticle/EmitterBoxShape;

    .line 77
    .local v0, "clone":Lcom/smartisanos/smengine/myparticle/EmitterBoxShape;
    iget-object v2, p0, Lcom/smartisanos/smengine/myparticle/EmitterBoxShape;->min:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/math/Vector3f;->clone()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v2

    iput-object v2, v0, Lcom/smartisanos/smengine/myparticle/EmitterBoxShape;->min:Lcom/smartisanos/smengine/math/Vector3f;

    .line 78
    iget-object v2, p0, Lcom/smartisanos/smengine/myparticle/EmitterBoxShape;->len:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/math/Vector3f;->clone()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v2

    iput-object v2, v0, Lcom/smartisanos/smengine/myparticle/EmitterBoxShape;->len:Lcom/smartisanos/smengine/math/Vector3f;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    return-object v0

    .line 80
    .end local v0    # "clone":Lcom/smartisanos/smengine/myparticle/EmitterBoxShape;
    :catch_0
    move-exception v1

    .line 81
    .local v1, "ex":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method public getLen()Lcom/smartisanos/smengine/math/Vector3f;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/smartisanos/smengine/myparticle/EmitterBoxShape;->len:Lcom/smartisanos/smengine/math/Vector3f;

    return-object v0
.end method

.method public getMin()Lcom/smartisanos/smengine/math/Vector3f;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/smartisanos/smengine/myparticle/EmitterBoxShape;->min:Lcom/smartisanos/smengine/math/Vector3f;

    return-object v0
.end method

.method public getRandomPoint(Lcom/smartisanos/smengine/math/Vector3f;)V
    .locals 3
    .param p1, "store"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/smartisanos/smengine/myparticle/EmitterBoxShape;->min:Lcom/smartisanos/smengine/math/Vector3f;

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget-object v1, p0, Lcom/smartisanos/smengine/myparticle/EmitterBoxShape;->len:Lcom/smartisanos/smengine/math/Vector3f;

    iget v1, v1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    invoke-static {}, Lcom/smartisanos/smengine/math/FastMath;->nextRandomFloat()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 58
    iget-object v0, p0, Lcom/smartisanos/smengine/myparticle/EmitterBoxShape;->min:Lcom/smartisanos/smengine/math/Vector3f;

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget-object v1, p0, Lcom/smartisanos/smengine/myparticle/EmitterBoxShape;->len:Lcom/smartisanos/smengine/math/Vector3f;

    iget v1, v1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    invoke-static {}, Lcom/smartisanos/smengine/math/FastMath;->nextRandomFloat()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 59
    iget-object v0, p0, Lcom/smartisanos/smengine/myparticle/EmitterBoxShape;->min:Lcom/smartisanos/smengine/math/Vector3f;

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    iget-object v1, p0, Lcom/smartisanos/smengine/myparticle/EmitterBoxShape;->len:Lcom/smartisanos/smengine/math/Vector3f;

    iget v1, v1, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-static {}, Lcom/smartisanos/smengine/math/FastMath;->nextRandomFloat()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p1, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    .line 60
    return-void
.end method

.method public getRandomPointAndNormal(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)V
    .locals 0
    .param p1, "store"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p2, "normal"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/myparticle/EmitterBoxShape;->getRandomPoint(Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 71
    return-void
.end method

.method public setLen(Lcom/smartisanos/smengine/math/Vector3f;)V
    .locals 0
    .param p1, "len"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/smartisanos/smengine/myparticle/EmitterBoxShape;->len:Lcom/smartisanos/smengine/math/Vector3f;

    .line 99
    return-void
.end method

.method public setMin(Lcom/smartisanos/smengine/math/Vector3f;)V
    .locals 0
    .param p1, "min"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/smartisanos/smengine/myparticle/EmitterBoxShape;->min:Lcom/smartisanos/smengine/math/Vector3f;

    .line 91
    return-void
.end method
