.class public Lcom/smartisanos/smengine/myparticle/EmptyParticleInfluencer;
.super Ljava/lang/Object;
.source "EmptyParticleInfluencer.java"

.implements Lcom/smartisanos/smengine/myparticle/ParticleInfluencer;


.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public clone()Lcom/smartisanos/smengine/myparticle/ParticleInfluencer;
    .locals 2

    .prologue
    .line 69
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/smengine/myparticle/ParticleInfluencer;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/smartisanos/smengine/myparticle/EmptyParticleInfluencer;->clone()Lcom/smartisanos/smengine/myparticle/ParticleInfluencer;

    move-result-object v0

    return-object v0
.end method

.method public getInitialVelocity()Lcom/smartisanos/smengine/math/Vector3f;
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVelocityVariation()F
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public influenceParticle(Lcom/smartisanos/smengine/myparticle/Particle;Lcom/smartisanos/smengine/myparticle/EmitterShape;)V
    .locals 0
    .param p1, "particle"    # Lcom/smartisanos/smengine/myparticle/Particle;
    .param p2, "emitterShape"    # Lcom/smartisanos/smengine/myparticle/EmitterShape;

    .prologue
    .line 46
    return-void
.end method

.method public setInitialVelocity(Lcom/smartisanos/smengine/math/Vector3f;)V
    .locals 0
    .param p1, "initialVelocity"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 50
    return-void
.end method

.method public setVelocityVariation(F)V
    .locals 0
    .param p1, "variation"    # F

    .prologue
    .line 59
    return-void
.end method
