.class public interface abstract Lcom/smartisanos/smengine/myparticle/ParticleInfluencer;
.super Ljava/lang/Object;
.source "ParticleInfluencer.java"

.implements Ljava/lang/Cloneable;


.method public abstract clone()Lcom/smartisanos/smengine/myparticle/ParticleInfluencer;
.end method

.method public abstract getInitialVelocity()Lcom/smartisanos/smengine/math/Vector3f;
.end method

.method public abstract getVelocityVariation()F
.end method

.method public abstract influenceParticle(Lcom/smartisanos/smengine/myparticle/Particle;Lcom/smartisanos/smengine/myparticle/EmitterShape;)V
.end method

.method public abstract setInitialVelocity(Lcom/smartisanos/smengine/math/Vector3f;)V
.end method

.method public abstract setVelocityVariation(F)V
.end method
