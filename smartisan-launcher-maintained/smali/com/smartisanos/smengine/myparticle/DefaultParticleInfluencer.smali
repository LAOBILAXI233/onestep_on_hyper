.class public Lcom/smartisanos/smengine/myparticle/DefaultParticleInfluencer;
.super Ljava/lang/Object;
.source "DefaultParticleInfluencer.java"

.implements Lcom/smartisanos/smengine/myparticle/ParticleInfluencer;


.field public static final SAVABLE_VERSION:I = 0x1


.field protected initialVelocity:Lcom/smartisanos/smengine/math/Vector3f;

.field protected transient temp:Lcom/smartisanos/smengine/math/Vector3f;

.field protected velocityVariation:F


.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v0}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/myparticle/DefaultParticleInfluencer;->temp:Lcom/smartisanos/smengine/math/Vector3f;

    .line 51
    new-instance v0, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v0}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/myparticle/DefaultParticleInfluencer;->initialVelocity:Lcom/smartisanos/smengine/math/Vector3f;

    .line 53
    const v0, 0x3e4ccccd    # 0.2f

    iput v0, p0, Lcom/smartisanos/smengine/myparticle/DefaultParticleInfluencer;->velocityVariation:F

    return-void
.end method


.method protected applyVelocityVariation(Lcom/smartisanos/smengine/myparticle/Particle;)V
    .locals 5
    .param p1, "particle"    # Lcom/smartisanos/smengine/myparticle/Particle;

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 68
    iget-object v0, p0, Lcom/smartisanos/smengine/myparticle/DefaultParticleInfluencer;->temp:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-static {}, Lcom/smartisanos/smengine/math/FastMath;->nextRandomFloat()F

    move-result v1

    invoke-static {}, Lcom/smartisanos/smengine/math/FastMath;->nextRandomFloat()F

    move-result v2

    invoke-static {}, Lcom/smartisanos/smengine/math/FastMath;->nextRandomFloat()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/smartisanos/smengine/math/Vector3f;->set(FFF)Lcom/smartisanos/smengine/math/Vector3f;

    .line 69
    iget-object v0, p0, Lcom/smartisanos/smengine/myparticle/DefaultParticleInfluencer;->temp:Lcom/smartisanos/smengine/math/Vector3f;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/math/Vector3f;->multLocal(F)Lcom/smartisanos/smengine/math/Vector3f;

    .line 70
    iget-object v0, p0, Lcom/smartisanos/smengine/myparticle/DefaultParticleInfluencer;->temp:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {v0, v4, v4, v4}, Lcom/smartisanos/smengine/math/Vector3f;->subtractLocal(FFF)Lcom/smartisanos/smengine/math/Vector3f;

    .line 71
    iget-object v0, p0, Lcom/smartisanos/smengine/myparticle/DefaultParticleInfluencer;->temp:Lcom/smartisanos/smengine/math/Vector3f;

    iget-object v1, p0, Lcom/smartisanos/smengine/myparticle/DefaultParticleInfluencer;->initialVelocity:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/math/Vector3f;->length()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/math/Vector3f;->multLocal(F)Lcom/smartisanos/smengine/math/Vector3f;

    .line 73
    return-void
.end method

.method public clone()Lcom/smartisanos/smengine/myparticle/ParticleInfluencer;
    .locals 3

    .prologue
    .line 79
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/smengine/myparticle/DefaultParticleInfluencer;

    .line 80
    .local v0, "clone":Lcom/smartisanos/smengine/myparticle/DefaultParticleInfluencer;
    iget-object v2, p0, Lcom/smartisanos/smengine/myparticle/DefaultParticleInfluencer;->initialVelocity:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/math/Vector3f;->clone()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v2

    iput-object v2, v0, Lcom/smartisanos/smengine/myparticle/DefaultParticleInfluencer;->initialVelocity:Lcom/smartisanos/smengine/math/Vector3f;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    return-object v0

    .line 82
    .end local v0    # "clone":Lcom/smartisanos/smengine/myparticle/DefaultParticleInfluencer;
    :catch_0
    move-exception v1

    .line 83
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/smartisanos/smengine/myparticle/DefaultParticleInfluencer;->clone()Lcom/smartisanos/smengine/myparticle/ParticleInfluencer;

    move-result-object v0

    return-object v0
.end method

.method public getInitialVelocity()Lcom/smartisanos/smengine/math/Vector3f;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/smartisanos/smengine/myparticle/DefaultParticleInfluencer;->initialVelocity:Lcom/smartisanos/smengine/math/Vector3f;

    return-object v0
.end method

.method public getVelocityVariation()F
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/smartisanos/smengine/myparticle/DefaultParticleInfluencer;->velocityVariation:F

    return v0
.end method

.method public influenceParticle(Lcom/smartisanos/smengine/myparticle/Particle;Lcom/smartisanos/smengine/myparticle/EmitterShape;)V
    .locals 1
    .param p1, "particle"    # Lcom/smartisanos/smengine/myparticle/Particle;
    .param p2, "emitterShape"    # Lcom/smartisanos/smengine/myparticle/EmitterShape;

    .prologue
    .line 57
    iget-object v0, p1, Lcom/smartisanos/smengine/myparticle/Particle;->position:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-interface {p2, v0}, Lcom/smartisanos/smengine/myparticle/EmitterShape;->getRandomPoint(Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 58
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/myparticle/DefaultParticleInfluencer;->applyVelocityVariation(Lcom/smartisanos/smengine/myparticle/Particle;)V

    .line 59
    return-void
.end method

.method public setInitialVelocity(Lcom/smartisanos/smengine/math/Vector3f;)V
    .locals 1
    .param p1, "initialVelocity"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/smartisanos/smengine/myparticle/DefaultParticleInfluencer;->initialVelocity:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/math/Vector3f;->set(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    .line 90
    return-void
.end method

.method public setVelocityVariation(F)V
    .locals 0
    .param p1, "variation"    # F

    .prologue
    .line 99
    iput p1, p0, Lcom/smartisanos/smengine/myparticle/DefaultParticleInfluencer;->velocityVariation:F

    .line 100
    return-void
.end method
