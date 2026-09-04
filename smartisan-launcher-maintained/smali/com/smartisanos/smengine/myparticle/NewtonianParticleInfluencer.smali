.class public Lcom/smartisanos/smengine/myparticle/NewtonianParticleInfluencer;
.super Lcom/smartisanos/smengine/myparticle/DefaultParticleInfluencer;
.source "NewtonianParticleInfluencer.java"


.field protected normalVelocity:F

.field protected surfaceTangentFactor:F

.field protected surfaceTangentRotation:F


.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/smartisanos/smengine/myparticle/DefaultParticleInfluencer;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/smartisanos/smengine/myparticle/NewtonianParticleInfluencer;->velocityVariation:F

    .line 55
    return-void
.end method


.method protected applyVelocityVariation(Lcom/smartisanos/smengine/myparticle/Particle;)V
    .locals 5
    .param p1, "particle"    # Lcom/smartisanos/smengine/myparticle/Particle;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/smartisanos/smengine/myparticle/NewtonianParticleInfluencer;->temp:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-static {}, Lcom/smartisanos/smengine/math/FastMath;->nextRandomFloat()F

    move-result v1

    iget v2, p0, Lcom/smartisanos/smengine/myparticle/NewtonianParticleInfluencer;->velocityVariation:F

    mul-float/2addr v1, v2

    invoke-static {}, Lcom/smartisanos/smengine/math/FastMath;->nextRandomFloat()F

    move-result v2

    iget v3, p0, Lcom/smartisanos/smengine/myparticle/NewtonianParticleInfluencer;->velocityVariation:F

    mul-float/2addr v2, v3

    invoke-static {}, Lcom/smartisanos/smengine/math/FastMath;->nextRandomFloat()F

    move-result v3

    iget v4, p0, Lcom/smartisanos/smengine/myparticle/NewtonianParticleInfluencer;->velocityVariation:F

    mul-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/smartisanos/smengine/math/Vector3f;->set(FFF)Lcom/smartisanos/smengine/math/Vector3f;

    .line 135
    iget-object v0, p1, Lcom/smartisanos/smengine/myparticle/Particle;->velocity:Lcom/smartisanos/smengine/math/Vector3f;

    iget-object v1, p0, Lcom/smartisanos/smengine/myparticle/NewtonianParticleInfluencer;->temp:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/math/Vector3f;->addLocal(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    .line 136
    return-void
.end method

.method public clone()Lcom/smartisanos/smengine/myparticle/ParticleInfluencer;
    .locals 2

    .prologue
    .line 140
    new-instance v0, Lcom/smartisanos/smengine/myparticle/NewtonianParticleInfluencer;

    invoke-direct {v0}, Lcom/smartisanos/smengine/myparticle/NewtonianParticleInfluencer;-><init>()V

    .line 141
    .local v0, "result":Lcom/smartisanos/smengine/myparticle/NewtonianParticleInfluencer;
    iget v1, p0, Lcom/smartisanos/smengine/myparticle/NewtonianParticleInfluencer;->normalVelocity:F

    iput v1, v0, Lcom/smartisanos/smengine/myparticle/NewtonianParticleInfluencer;->normalVelocity:F

    .line 142
    iget-object v1, p0, Lcom/smartisanos/smengine/myparticle/NewtonianParticleInfluencer;->initialVelocity:Lcom/smartisanos/smengine/math/Vector3f;

    iput-object v1, v0, Lcom/smartisanos/smengine/myparticle/NewtonianParticleInfluencer;->initialVelocity:Lcom/smartisanos/smengine/math/Vector3f;

    .line 143
    iget v1, p0, Lcom/smartisanos/smengine/myparticle/NewtonianParticleInfluencer;->velocityVariation:F

    iput v1, v0, Lcom/smartisanos/smengine/myparticle/NewtonianParticleInfluencer;->velocityVariation:F

    .line 144
    iget v1, p0, Lcom/smartisanos/smengine/myparticle/NewtonianParticleInfluencer;->surfaceTangentFactor:F

    iput v1, v0, Lcom/smartisanos/smengine/myparticle/NewtonianParticleInfluencer;->surfaceTangentFactor:F

    .line 145
    iget v1, p0, Lcom/smartisanos/smengine/myparticle/NewtonianParticleInfluencer;->surfaceTangentRotation:F

    iput v1, v0, Lcom/smartisanos/smengine/myparticle/NewtonianParticleInfluencer;->surfaceTangentRotation:F

    .line 146
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
    .line 41
    invoke-virtual {p0}, Lcom/smartisanos/smengine/myparticle/NewtonianParticleInfluencer;->clone()Lcom/smartisanos/smengine/myparticle/ParticleInfluencer;

    move-result-object v0

    return-object v0
.end method

.method public getNormalVelocity()F
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/smartisanos/smengine/myparticle/NewtonianParticleInfluencer;->normalVelocity:F

    return v0
.end method

.method public getSurfaceTangentFactor()F
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/smartisanos/smengine/myparticle/NewtonianParticleInfluencer;->surfaceTangentFactor:F

    return v0
.end method

.method public getSurfaceTangentRotation()F
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/smartisanos/smengine/myparticle/NewtonianParticleInfluencer;->surfaceTangentRotation:F

    return v0
.end method

.method public influenceParticle(Lcom/smartisanos/smengine/myparticle/Particle;Lcom/smartisanos/smengine/myparticle/EmitterShape;)V
    .locals 7
    .param p1, "particle"    # Lcom/smartisanos/smengine/myparticle/Particle;
    .param p2, "emitterShape"    # Lcom/smartisanos/smengine/myparticle/EmitterShape;

    .prologue
    const/4 v6, 0x0

    .line 59
    iget-object v1, p1, Lcom/smartisanos/smengine/myparticle/Particle;->position:Lcom/smartisanos/smengine/math/Vector3f;

    iget-object v2, p1, Lcom/smartisanos/smengine/myparticle/Particle;->velocity:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-interface {p2, v1, v2}, Lcom/smartisanos/smengine/myparticle/EmitterShape;->getRandomPointAndNormal(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 61
    iget v1, p0, Lcom/smartisanos/smengine/myparticle/NewtonianParticleInfluencer;->surfaceTangentFactor:F

    cmpl-float v1, v1, v6

    if-nez v1, :cond_1

    .line 62
    iget-object v1, p1, Lcom/smartisanos/smengine/myparticle/Particle;->velocity:Lcom/smartisanos/smengine/math/Vector3f;

    iget v2, p0, Lcom/smartisanos/smengine/myparticle/NewtonianParticleInfluencer;->normalVelocity:F

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/math/Vector3f;->multLocal(F)Lcom/smartisanos/smengine/math/Vector3f;

    .line 76
    :goto_0
    iget v1, p0, Lcom/smartisanos/smengine/myparticle/NewtonianParticleInfluencer;->velocityVariation:F

    cmpl-float v1, v1, v6

    if-eqz v1, :cond_0

    .line 77
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/myparticle/NewtonianParticleInfluencer;->applyVelocityVariation(Lcom/smartisanos/smengine/myparticle/Particle;)V

    .line 79
    :cond_0
    return-void

    .line 65
    :cond_1
    iget-object v1, p0, Lcom/smartisanos/smengine/myparticle/NewtonianParticleInfluencer;->temp:Lcom/smartisanos/smengine/math/Vector3f;

    iget-object v2, p1, Lcom/smartisanos/smengine/myparticle/Particle;->velocity:Lcom/smartisanos/smengine/math/Vector3f;

    iget v2, v2, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    iget v3, p0, Lcom/smartisanos/smengine/myparticle/NewtonianParticleInfluencer;->surfaceTangentFactor:F

    mul-float/2addr v2, v3

    iget-object v3, p1, Lcom/smartisanos/smengine/myparticle/Particle;->velocity:Lcom/smartisanos/smengine/math/Vector3f;

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v4, p0, Lcom/smartisanos/smengine/myparticle/NewtonianParticleInfluencer;->surfaceTangentFactor:F

    mul-float/2addr v3, v4

    iget-object v4, p1, Lcom/smartisanos/smengine/myparticle/Particle;->velocity:Lcom/smartisanos/smengine/math/Vector3f;

    iget v4, v4, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    neg-float v4, v4

    iget v5, p0, Lcom/smartisanos/smengine/myparticle/NewtonianParticleInfluencer;->surfaceTangentFactor:F

    mul-float/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/smartisanos/smengine/math/Vector3f;->set(FFF)Lcom/smartisanos/smengine/math/Vector3f;

    .line 66
    iget v1, p0, Lcom/smartisanos/smengine/myparticle/NewtonianParticleInfluencer;->surfaceTangentRotation:F

    cmpl-float v1, v1, v6

    if-eqz v1, :cond_2

    .line 67
    new-instance v0, Lcom/smartisanos/smengine/math/Matrix3f;

    invoke-direct {v0}, Lcom/smartisanos/smengine/math/Matrix3f;-><init>()V

    .line 68
    .local v0, "m":Lcom/smartisanos/smengine/math/Matrix3f;
    const v1, 0x40490fdb    # (float)Math.PI

    iget v2, p0, Lcom/smartisanos/smengine/myparticle/NewtonianParticleInfluencer;->surfaceTangentRotation:F

    mul-float/2addr v1, v2

    iget-object v2, p1, Lcom/smartisanos/smengine/myparticle/Particle;->velocity:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/smengine/math/Matrix3f;->fromAngleNormalAxis(FLcom/smartisanos/smengine/math/Vector3f;)V

    .line 69
    iget-object v1, p0, Lcom/smartisanos/smengine/myparticle/NewtonianParticleInfluencer;->temp:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/math/Matrix3f;->multLocal(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v1

    iput-object v1, p0, Lcom/smartisanos/smengine/myparticle/NewtonianParticleInfluencer;->temp:Lcom/smartisanos/smengine/math/Vector3f;

    .line 72
    .end local v0    # "m":Lcom/smartisanos/smengine/math/Matrix3f;
    :cond_2
    iget-object v1, p1, Lcom/smartisanos/smengine/myparticle/Particle;->velocity:Lcom/smartisanos/smengine/math/Vector3f;

    iget v2, p0, Lcom/smartisanos/smengine/myparticle/NewtonianParticleInfluencer;->normalVelocity:F

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/math/Vector3f;->multLocal(F)Lcom/smartisanos/smengine/math/Vector3f;

    .line 74
    iget-object v1, p1, Lcom/smartisanos/smengine/myparticle/Particle;->velocity:Lcom/smartisanos/smengine/math/Vector3f;

    iget-object v2, p0, Lcom/smartisanos/smengine/myparticle/NewtonianParticleInfluencer;->temp:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/math/Vector3f;->addLocal(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    goto :goto_0
.end method

.method public setNormalVelocity(F)V
    .locals 0
    .param p1, "normalVelocity"    # F

    .prologue
    .line 95
    iput p1, p0, Lcom/smartisanos/smengine/myparticle/NewtonianParticleInfluencer;->normalVelocity:F

    .line 96
    return-void
.end method

.method public setSurfaceTangentFactor(F)V
    .locals 0
    .param p1, "surfaceTangentFactor"    # F

    .prologue
    .line 104
    iput p1, p0, Lcom/smartisanos/smengine/myparticle/NewtonianParticleInfluencer;->surfaceTangentFactor:F

    .line 105
    return-void
.end method

.method public setSurfaceTangentRotation(F)V
    .locals 0
    .param p1, "surfaceTangentRotation"    # F

    .prologue
    .line 121
    iput p1, p0, Lcom/smartisanos/smengine/myparticle/NewtonianParticleInfluencer;->surfaceTangentRotation:F

    .line 122
    return-void
.end method
