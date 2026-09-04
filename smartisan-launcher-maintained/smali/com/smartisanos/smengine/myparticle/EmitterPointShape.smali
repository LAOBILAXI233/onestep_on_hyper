.class public Lcom/smartisanos/smengine/myparticle/EmitterPointShape;
.super Ljava/lang/Object;
.source "EmitterPointShape.java"

.implements Lcom/smartisanos/smengine/myparticle/EmitterShape;


.field private point:Lcom/smartisanos/smengine/math/Vector3f;


.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method public constructor <init>(Lcom/smartisanos/smengine/math/Vector3f;)V
    .locals 0
    .param p1, "point"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/smartisanos/smengine/myparticle/EmitterPointShape;->point:Lcom/smartisanos/smengine/math/Vector3f;

    .line 47
    return-void
.end method


.method public deepClone()Lcom/smartisanos/smengine/myparticle/EmitterShape;
    .locals 3

    .prologue
    .line 52
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/smengine/myparticle/EmitterPointShape;

    .line 53
    .local v0, "clone":Lcom/smartisanos/smengine/myparticle/EmitterPointShape;
    iget-object v2, p0, Lcom/smartisanos/smengine/myparticle/EmitterPointShape;->point:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/math/Vector3f;->clone()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v2

    iput-object v2, v0, Lcom/smartisanos/smengine/myparticle/EmitterPointShape;->point:Lcom/smartisanos/smengine/math/Vector3f;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    return-object v0

    .line 55
    .end local v0    # "clone":Lcom/smartisanos/smengine/myparticle/EmitterPointShape;
    :catch_0
    move-exception v1

    .line 56
    .local v1, "ex":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method public getPoint()Lcom/smartisanos/smengine/math/Vector3f;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/smartisanos/smengine/myparticle/EmitterPointShape;->point:Lcom/smartisanos/smengine/math/Vector3f;

    return-object v0
.end method

.method public getRandomPoint(Lcom/smartisanos/smengine/math/Vector3f;)V
    .locals 1
    .param p1, "store"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/smartisanos/smengine/myparticle/EmitterPointShape;->point:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/math/Vector3f;->set(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    .line 63
    return-void
.end method

.method public getRandomPointAndNormal(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)V
    .locals 1
    .param p1, "store"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p2, "normal"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/smartisanos/smengine/myparticle/EmitterPointShape;->point:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/math/Vector3f;->set(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    .line 74
    return-void
.end method

.method public setPoint(Lcom/smartisanos/smengine/math/Vector3f;)V
    .locals 0
    .param p1, "point"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/smartisanos/smengine/myparticle/EmitterPointShape;->point:Lcom/smartisanos/smengine/math/Vector3f;

    .line 82
    return-void
.end method
