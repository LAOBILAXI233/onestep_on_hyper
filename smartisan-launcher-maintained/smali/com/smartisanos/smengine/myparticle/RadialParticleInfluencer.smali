.class public Lcom/smartisanos/smengine/myparticle/RadialParticleInfluencer;
.super Lcom/smartisanos/smengine/myparticle/DefaultParticleInfluencer;
.source "RadialParticleInfluencer.java"


.field private horizontal:Z

.field private origin:Lcom/smartisanos/smengine/math/Vector3f;

.field private radialVelocity:F


.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Lcom/smartisanos/smengine/myparticle/DefaultParticleInfluencer;-><init>()V

    .line 43
    iput v1, p0, Lcom/smartisanos/smengine/myparticle/RadialParticleInfluencer;->radialVelocity:F

    .line 44
    new-instance v0, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v0, v1, v1, v1}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    iput-object v0, p0, Lcom/smartisanos/smengine/myparticle/RadialParticleInfluencer;->origin:Lcom/smartisanos/smengine/math/Vector3f;

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smartisanos/smengine/myparticle/RadialParticleInfluencer;->horizontal:Z

    return-void
.end method


.method protected applyVelocityVariation(Lcom/smartisanos/smengine/myparticle/Particle;)V
    .locals 5
    .param p1, "particle"    # Lcom/smartisanos/smengine/myparticle/Particle;

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 54
    iget-object v0, p1, Lcom/smartisanos/smengine/myparticle/Particle;->velocity:Lcom/smartisanos/smengine/math/Vector3f;

    iget-object v1, p0, Lcom/smartisanos/smengine/myparticle/RadialParticleInfluencer;->initialVelocity:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/math/Vector3f;->set(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    .line 55
    iget-object v0, p0, Lcom/smartisanos/smengine/myparticle/RadialParticleInfluencer;->temp:Lcom/smartisanos/smengine/math/Vector3f;

    iget-object v1, p1, Lcom/smartisanos/smengine/myparticle/Particle;->position:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/math/Vector3f;->set(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/smengine/myparticle/RadialParticleInfluencer;->origin:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/math/Vector3f;->subtractLocal(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/math/Vector3f;->normalizeLocal()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v0

    iget v1, p0, Lcom/smartisanos/smengine/myparticle/RadialParticleInfluencer;->radialVelocity:F

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/math/Vector3f;->multLocal(F)Lcom/smartisanos/smengine/math/Vector3f;

    .line 56
    iget-boolean v0, p0, Lcom/smartisanos/smengine/myparticle/RadialParticleInfluencer;->horizontal:Z

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/smartisanos/smengine/myparticle/RadialParticleInfluencer;->temp:Lcom/smartisanos/smengine/math/Vector3f;

    const/4 v1, 0x0

    iput v1, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 59
    :cond_0
    iget-object v0, p1, Lcom/smartisanos/smengine/myparticle/Particle;->velocity:Lcom/smartisanos/smengine/math/Vector3f;

    iget-object v1, p0, Lcom/smartisanos/smengine/myparticle/RadialParticleInfluencer;->temp:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/math/Vector3f;->addLocal(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    .line 61
    iget-object v0, p0, Lcom/smartisanos/smengine/myparticle/RadialParticleInfluencer;->temp:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-static {}, Lcom/smartisanos/smengine/math/FastMath;->nextRandomFloat()F

    move-result v1

    invoke-static {}, Lcom/smartisanos/smengine/math/FastMath;->nextRandomFloat()F

    move-result v2

    invoke-static {}, Lcom/smartisanos/smengine/math/FastMath;->nextRandomFloat()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/smartisanos/smengine/math/Vector3f;->set(FFF)Lcom/smartisanos/smengine/math/Vector3f;

    .line 62
    iget-object v0, p0, Lcom/smartisanos/smengine/myparticle/RadialParticleInfluencer;->temp:Lcom/smartisanos/smengine/math/Vector3f;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/math/Vector3f;->multLocal(F)Lcom/smartisanos/smengine/math/Vector3f;

    .line 63
    iget-object v0, p0, Lcom/smartisanos/smengine/myparticle/RadialParticleInfluencer;->temp:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {v0, v4, v4, v4}, Lcom/smartisanos/smengine/math/Vector3f;->subtractLocal(FFF)Lcom/smartisanos/smengine/math/Vector3f;

    .line 64
    iget-object v0, p0, Lcom/smartisanos/smengine/myparticle/RadialParticleInfluencer;->temp:Lcom/smartisanos/smengine/math/Vector3f;

    iget-object v1, p0, Lcom/smartisanos/smengine/myparticle/RadialParticleInfluencer;->initialVelocity:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/math/Vector3f;->length()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/math/Vector3f;->multLocal(F)Lcom/smartisanos/smengine/math/Vector3f;

    .line 65
    iget-object v0, p1, Lcom/smartisanos/smengine/myparticle/Particle;->velocity:Lcom/smartisanos/smengine/math/Vector3f;

    iget-object v1, p0, Lcom/smartisanos/smengine/myparticle/RadialParticleInfluencer;->temp:Lcom/smartisanos/smengine/math/Vector3f;

    iget v2, p0, Lcom/smartisanos/smengine/myparticle/RadialParticleInfluencer;->velocityVariation:F

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/smengine/math/Vector3f;->interpolateLocal(Lcom/smartisanos/smengine/math/Vector3f;F)Lcom/smartisanos/smengine/math/Vector3f;

    .line 66
    return-void
.end method

.method public getOrigin()Lcom/smartisanos/smengine/math/Vector3f;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/smartisanos/smengine/myparticle/RadialParticleInfluencer;->origin:Lcom/smartisanos/smengine/math/Vector3f;

    return-object v0
.end method

.method public getRadialVelocity()F
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/smartisanos/smengine/myparticle/RadialParticleInfluencer;->radialVelocity:F

    return v0
.end method

.method public isHorizontal()Z
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/smartisanos/smengine/myparticle/RadialParticleInfluencer;->horizontal:Z

    return v0
.end method

.method public setHorizontal(Z)V
    .locals 0
    .param p1, "horizontal"    # Z

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/smartisanos/smengine/myparticle/RadialParticleInfluencer;->horizontal:Z

    .line 116
    return-void
.end method

.method public setOrigin(Lcom/smartisanos/smengine/math/Vector3f;)V
    .locals 0
    .param p1, "origin"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/smartisanos/smengine/myparticle/RadialParticleInfluencer;->origin:Lcom/smartisanos/smengine/math/Vector3f;

    .line 82
    return-void
.end method

.method public setRadialVelocity(F)V
    .locals 0
    .param p1, "radialVelocity"    # F

    .prologue
    .line 97
    iput p1, p0, Lcom/smartisanos/smengine/myparticle/RadialParticleInfluencer;->radialVelocity:F

    .line 98
    return-void
.end method
