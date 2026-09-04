.class public Lcom/smartisanos/smengine/myparticle/ParticleManager;
.super Ljava/lang/Object;
.source "ParticleManager.java"


.field private static final TAG:Ljava/lang/String; = "ParticleManager"


.field private mList:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/smartisanos/smengine/myparticle/ParticleEmitter;",
            ">;"
        }
    .end annotation
.end field


.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public addParticleEmitter(Lcom/smartisanos/smengine/myparticle/ParticleEmitter;)Z
    .locals 1
    .param p1, "emitter"    # Lcom/smartisanos/smengine/myparticle/ParticleEmitter;

    .prologue
    .line 14
    if-nez p1, :cond_0

    .line 15
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/smengine/myparticle/ParticleManager;->mList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-nez v0, :cond_1

    .line 17
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/myparticle/ParticleManager;->mList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 18
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/smengine/myparticle/ParticleManager;->mList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 19
    const/4 v0, 0x0

    .line 20
    :goto_0
    return v0

    :cond_2
    iget-object v0, p0, Lcom/smartisanos/smengine/myparticle/ParticleManager;->mList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public destroy()V
    .locals 3

    .prologue
    .line 50
    iget-object v2, p0, Lcom/smartisanos/smengine/myparticle/ParticleManager;->mList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v2, :cond_0

    .line 51
    iget-object v2, p0, Lcom/smartisanos/smengine/myparticle/ParticleManager;->mList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 52
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/smartisanos/smengine/myparticle/ParticleEmitter;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 53
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;

    .line 54
    .local v0, "emitter":Lcom/smartisanos/smengine/myparticle/ParticleEmitter;
    invoke-virtual {v0}, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->destroy()V

    goto :goto_0

    .line 57
    .end local v0    # "emitter":Lcom/smartisanos/smengine/myparticle/ParticleEmitter;
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/smartisanos/smengine/myparticle/ParticleEmitter;>;"
    :cond_0
    return-void
.end method

.method public removeParticleEmitter(Lcom/smartisanos/smengine/myparticle/ParticleEmitter;)Z
    .locals 2
    .param p1, "emitter"    # Lcom/smartisanos/smengine/myparticle/ParticleEmitter;

    .prologue
    .line 24
    const/4 v0, 0x0

    .line 25
    .local v0, "bool":Z
    iget-object v1, p0, Lcom/smartisanos/smengine/myparticle/ParticleManager;->mList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v1, :cond_0

    .line 26
    iget-object v1, p0, Lcom/smartisanos/smengine/myparticle/ParticleManager;->mList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 27
    invoke-virtual {p1}, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->destroy()V

    .line 29
    :cond_0
    return v0
.end method

.method public updateAllParticleEmitter(F)V
    .locals 4
    .param p1, "deltaT"    # F

    .prologue
    .line 33
    iget-object v3, p0, Lcom/smartisanos/smengine/myparticle/ParticleManager;->mList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-nez v3, :cond_1

    .line 47
    :cond_0
    :goto_0
    return-void

    .line 35
    :cond_1
    iget-object v3, p0, Lcom/smartisanos/smengine/myparticle/ParticleManager;->mList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 36
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/smartisanos/smengine/myparticle/ParticleEmitter;>;"
    const/4 v2, 0x0

    .line 37
    .local v2, "update":Z
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 38
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;

    .line 39
    .local v0, "emitter":Lcom/smartisanos/smengine/myparticle/ParticleEmitter;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 40
    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->update(F)V

    .line 41
    const/4 v2, 0x1

    goto :goto_1

    .line 44
    .end local v0    # "emitter":Lcom/smartisanos/smengine/myparticle/ParticleEmitter;
    :cond_3
    if-eqz v2, :cond_0

    .line 45
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/smengine/World;->updateGLView()V

    goto :goto_0
.end method
