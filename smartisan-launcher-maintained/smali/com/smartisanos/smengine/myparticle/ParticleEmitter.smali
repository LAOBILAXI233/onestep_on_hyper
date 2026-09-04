.class public Lcom/smartisanos/smengine/myparticle/ParticleEmitter;
.super Lcom/smartisanos/smengine/SceneNode;
.source "ParticleEmitter.java"


.field private static final DEFAULT_INFLUENCER:Lcom/smartisanos/smengine/myparticle/ParticleInfluencer;

.field private static final DEFAULT_SHAPE:Lcom/smartisanos/smengine/myparticle/EmitterShape;

.field private static final mMeshIDPrefix:Ljava/lang/String; = "particle.mesh"


.field private enabled:Z

.field private endColor:Lcom/smartisanos/smengine/math/Vector4f;

.field private endSize:F

.field private faceNormal:Lcom/smartisanos/smengine/math/Vector3f;

.field private facingVelocity:Z

.field private firstUnUsed:I

.field private gravity:Lcom/smartisanos/smengine/math/Vector3f;

.field private highLife:F

.field private imagesX:I

.field private imagesY:I

.field private lastUsed:I

.field private lowLife:F

.field private mIsMainControlEmitter:Z

.field private mMeshID:Ljava/lang/String;

.field private meshType:I

.field private particleInfluencer:Lcom/smartisanos/smengine/myparticle/ParticleInfluencer;

.field private particleMesh:Lcom/smartisanos/smengine/myparticle/ParticleMesh;

.field private particles:[Lcom/smartisanos/smengine/myparticle/Particle;

.field private particlesPerSec:F

.field private randomAngle:Z

.field private rotateSpeed:F

.field private selectRandomImage:Z

.field private shape:Lcom/smartisanos/smengine/myparticle/EmitterShape;

.field private startColor:Lcom/smartisanos/smengine/math/Vector4f;

.field private startSize:F

.field private transient temp:Lcom/smartisanos/smengine/math/Vector3f;

.field private timeDifference:F

.field private worldSpace:Z


.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    new-instance v0, Lcom/smartisanos/smengine/myparticle/EmitterPointShape;

    sget-object v1, Lcom/smartisanos/smengine/math/Vector3f;->ZERO:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v0, v1}, Lcom/smartisanos/smengine/myparticle/EmitterPointShape;-><init>(Lcom/smartisanos/smengine/math/Vector3f;)V

    sput-object v0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->DEFAULT_SHAPE:Lcom/smartisanos/smengine/myparticle/EmitterShape;

    .line 23
    new-instance v0, Lcom/smartisanos/smengine/myparticle/DefaultParticleInfluencer;

    invoke-direct {v0}, Lcom/smartisanos/smengine/myparticle/DefaultParticleInfluencer;-><init>()V

    sput-object v0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->DEFAULT_INFLUENCER:Lcom/smartisanos/smengine/myparticle/ParticleInfluencer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 7
    .param p1, "particleID"    # Ljava/lang/String;
    .param p2, "particleType"    # I
    .param p3, "particleNum"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const v4, 0x3f666666    # 0.9f

    const v3, 0x3dcccccd    # 0.1f

    const/4 v2, 0x0

    .line 70
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/SceneNode;-><init>(Ljava/lang/String;)V

    .line 21
    iput-boolean v5, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->enabled:Z

    .line 24
    sget-object v0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->DEFAULT_SHAPE:Lcom/smartisanos/smengine/myparticle/EmitterShape;

    iput-object v0, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->shape:Lcom/smartisanos/smengine/myparticle/EmitterShape;

    .line 26
    sget-object v0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->DEFAULT_INFLUENCER:Lcom/smartisanos/smengine/myparticle/ParticleInfluencer;

    iput-object v0, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->particleInfluencer:Lcom/smartisanos/smengine/myparticle/ParticleInfluencer;

    .line 36
    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->particlesPerSec:F

    .line 37
    iput v2, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->timeDifference:F

    .line 38
    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->lowLife:F

    .line 39
    const/high16 v0, 0x40e00000    # 7.0f

    iput v0, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->highLife:F

    .line 40
    new-instance v0, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v0, v2, v3, v2}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    iput-object v0, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->gravity:Lcom/smartisanos/smengine/math/Vector3f;

    .line 42
    new-instance v0, Lcom/smartisanos/smengine/math/Vector3f;

    sget-object v1, Lcom/smartisanos/smengine/math/Vector3f;->NAN:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v0, v1}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(Lcom/smartisanos/smengine/math/Vector3f;)V

    iput-object v0, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->faceNormal:Lcom/smartisanos/smengine/math/Vector3f;

    .line 43
    iput v5, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->imagesX:I

    .line 44
    iput v5, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->imagesY:I

    .line 46
    new-instance v0, Lcom/smartisanos/smengine/math/Vector4f;

    const v1, 0x3f333333    # 0.7f

    invoke-direct {v0, v4, v4, v4, v1}, Lcom/smartisanos/smengine/math/Vector4f;-><init>(FFFF)V

    iput-object v0, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->startColor:Lcom/smartisanos/smengine/math/Vector4f;

    .line 47
    new-instance v0, Lcom/smartisanos/smengine/math/Vector4f;

    invoke-direct {v0, v3, v3, v3, v2}, Lcom/smartisanos/smengine/math/Vector4f;-><init>(FFFF)V

    iput-object v0, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->endColor:Lcom/smartisanos/smengine/math/Vector4f;

    .line 48
    const v0, 0x3e4ccccd    # 0.2f

    iput v0, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->startSize:F

    .line 49
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->endSize:F

    .line 50
    iput-boolean v6, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->worldSpace:Z

    .line 51
    iput-boolean v6, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->mIsMainControlEmitter:Z

    .line 55
    new-instance v0, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v0}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->temp:Lcom/smartisanos/smengine/math/Vector3f;

    .line 71
    iput p2, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->meshType:I

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "particle.mesh_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->mMeshID:Ljava/lang/String;

    .line 75
    invoke-virtual {p0, p3}, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->setNumParticles(I)V

    .line 76
    return-void
.end method

.method private createParticleMesh(II)V
    .locals 4
    .param p1, "meshType"    # I
    .param p2, "particleNum"    # I

    .prologue
    .line 57
    iget-object v1, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->mMeshID:Ljava/lang/String;

    .line 58
    .local v1, "meshID":Ljava/lang/String;
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/World;->getMeshManager()Lcom/smartisanos/smengine/MeshManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/smartisanos/smengine/MeshManager;->getMesh(Ljava/lang/String;)Lcom/smartisanos/smengine/Mesh;

    move-result-object v0

    .line 59
    .local v0, "mesh":Lcom/smartisanos/smengine/Mesh;
    if-eqz v0, :cond_0

    .line 60
    check-cast v0, Lcom/smartisanos/smengine/myparticle/ParticleMesh;

    .end local v0    # "mesh":Lcom/smartisanos/smengine/Mesh;
    iput-object v0, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->particleMesh:Lcom/smartisanos/smengine/myparticle/ParticleMesh;

    .line 67
    :goto_0
    return-void

    .line 62
    .restart local v0    # "mesh":Lcom/smartisanos/smengine/Mesh;
    :cond_0
    new-instance v2, Lcom/smartisanos/smengine/myparticle/ParticleMesh;

    invoke-direct {v2, p1}, Lcom/smartisanos/smengine/myparticle/ParticleMesh;-><init>(I)V

    iput-object v2, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->particleMesh:Lcom/smartisanos/smengine/myparticle/ParticleMesh;

    .line 63
    iget-object v2, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->particleMesh:Lcom/smartisanos/smengine/myparticle/ParticleMesh;

    invoke-virtual {v2, p0, p2}, Lcom/smartisanos/smengine/myparticle/ParticleMesh;->initParticleData(Lcom/smartisanos/smengine/myparticle/ParticleEmitter;I)V

    .line 64
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/World;->getMeshManager()Lcom/smartisanos/smengine/MeshManager;

    move-result-object v2

    iget-object v3, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->particleMesh:Lcom/smartisanos/smengine/myparticle/ParticleMesh;

    invoke-virtual {v2, v1, v3}, Lcom/smartisanos/smengine/MeshManager;->addMesh(Ljava/lang/String;Lcom/smartisanos/smengine/Mesh;)Lcom/smartisanos/smengine/Mesh;

    .line 65
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->mIsMainControlEmitter:Z

    goto :goto_0
.end method

.method private emitParticle(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/myparticle/Particle;
    .locals 6
    .param p1, "min"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p2, "max"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    const/4 v4, 0x0

    .line 606
    iget v2, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->lastUsed:I

    add-int/lit8 v0, v2, 0x1

    .line 607
    .local v0, "idx":I
    iget-object v2, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->particles:[Lcom/smartisanos/smengine/myparticle/Particle;

    array-length v2, v2

    if-lt v0, v2, :cond_0

    .line 608
    const/4 v1, 0x0

    .line 636
    :goto_0
    return-object v1

    .line 611
    :cond_0
    iget-object v2, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->particles:[Lcom/smartisanos/smengine/myparticle/Particle;

    aget-object v1, v2, v0

    .line 612
    .local v1, "p":Lcom/smartisanos/smengine/myparticle/Particle;
    iget-boolean v2, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->selectRandomImage:Z

    if-eqz v2, :cond_1

    .line 613
    iget v2, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->imagesY:I

    add-int/lit8 v2, v2, -0x1

    invoke-static {v4, v2}, Lcom/smartisanos/smengine/math/FastMath;->nextRandomInt(II)I

    move-result v2

    iget v3, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->imagesX:I

    mul-int/2addr v2, v3

    iget v3, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->imagesX:I

    add-int/lit8 v3, v3, -0x1

    invoke-static {v4, v3}, Lcom/smartisanos/smengine/math/FastMath;->nextRandomInt(II)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Lcom/smartisanos/smengine/myparticle/Particle;->imageIndex:I

    .line 616
    :cond_1
    iget v2, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->lowLife:F

    invoke-static {}, Lcom/smartisanos/smengine/math/FastMath;->nextRandomFloat()F

    move-result v3

    iget v4, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->highLife:F

    iget v5, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->lowLife:F

    sub-float/2addr v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v1, Lcom/smartisanos/smengine/myparticle/Particle;->startlife:F

    .line 617
    iget v2, v1, Lcom/smartisanos/smengine/myparticle/Particle;->startlife:F

    iput v2, v1, Lcom/smartisanos/smengine/myparticle/Particle;->life:F

    .line 618
    iget-object v2, v1, Lcom/smartisanos/smengine/myparticle/Particle;->color:Lcom/smartisanos/smengine/math/Vector4f;

    iget-object v3, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->startColor:Lcom/smartisanos/smengine/math/Vector4f;

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/math/Vector4f;->set(Lcom/smartisanos/smengine/math/Vector4f;)Lcom/smartisanos/smengine/math/Vector4f;

    .line 619
    iget v2, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->startSize:F

    iput v2, v1, Lcom/smartisanos/smengine/myparticle/Particle;->size:F

    .line 621
    iget-object v2, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->particleInfluencer:Lcom/smartisanos/smengine/myparticle/ParticleInfluencer;

    iget-object v3, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->shape:Lcom/smartisanos/smengine/myparticle/EmitterShape;

    invoke-interface {v2, v1, v3}, Lcom/smartisanos/smengine/myparticle/ParticleInfluencer;->influenceParticle(Lcom/smartisanos/smengine/myparticle/Particle;Lcom/smartisanos/smengine/myparticle/EmitterShape;)V

    .line 622
    iget-boolean v2, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->randomAngle:Z

    if-eqz v2, :cond_2

    .line 623
    invoke-static {}, Lcom/smartisanos/smengine/math/FastMath;->nextRandomFloat()F

    move-result v2

    const v3, 0x40c90fdb

    mul-float/2addr v2, v3

    iput v2, v1, Lcom/smartisanos/smengine/myparticle/Particle;->angle:F

    .line 625
    :cond_2
    iget v2, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->rotateSpeed:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_3

    .line 626
    iget v2, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->rotateSpeed:F

    const v3, 0x3e4ccccd    # 0.2f

    invoke-static {}, Lcom/smartisanos/smengine/math/FastMath;->nextRandomFloat()F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v4, v5

    const v5, 0x3f4ccccd    # 0.8f

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    mul-float/2addr v2, v3

    iput v2, v1, Lcom/smartisanos/smengine/myparticle/Particle;->rotateSpeed:F

    .line 629
    :cond_3
    iget-object v2, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->temp:Lcom/smartisanos/smengine/math/Vector3f;

    iget-object v3, v1, Lcom/smartisanos/smengine/myparticle/Particle;->position:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/math/Vector3f;->set(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v2

    iget v3, v1, Lcom/smartisanos/smengine/myparticle/Particle;->size:F

    iget v4, v1, Lcom/smartisanos/smengine/myparticle/Particle;->size:F

    iget v5, v1, Lcom/smartisanos/smengine/myparticle/Particle;->size:F

    invoke-virtual {v2, v3, v4, v5}, Lcom/smartisanos/smengine/math/Vector3f;->addLocal(FFF)Lcom/smartisanos/smengine/math/Vector3f;

    .line 630
    iget-object v2, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->temp:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {p2, v2}, Lcom/smartisanos/smengine/math/Vector3f;->maxLocal(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    .line 631
    iget-object v2, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->temp:Lcom/smartisanos/smengine/math/Vector3f;

    iget-object v3, v1, Lcom/smartisanos/smengine/myparticle/Particle;->position:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/math/Vector3f;->set(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v2

    iget v3, v1, Lcom/smartisanos/smengine/myparticle/Particle;->size:F

    iget v4, v1, Lcom/smartisanos/smengine/myparticle/Particle;->size:F

    iget v5, v1, Lcom/smartisanos/smengine/myparticle/Particle;->size:F

    invoke-virtual {v2, v3, v4, v5}, Lcom/smartisanos/smengine/math/Vector3f;->subtractLocal(FFF)Lcom/smartisanos/smengine/math/Vector3f;

    .line 632
    iget-object v2, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->temp:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {p1, v2}, Lcom/smartisanos/smengine/math/Vector3f;->minLocal(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    .line 634
    iget v2, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->lastUsed:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->lastUsed:I

    .line 635
    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->firstUnUsed:I

    goto/16 :goto_0
.end method

.method private freeParticle(I)V
    .locals 4
    .param p1, "idx"    # I

    .prologue
    const v2, -0x383cb000    # -100000.0f

    const/4 v3, 0x0

    .line 690
    iget-object v1, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->particles:[Lcom/smartisanos/smengine/myparticle/Particle;

    aget-object v0, v1, p1

    .line 691
    .local v0, "p":Lcom/smartisanos/smengine/myparticle/Particle;
    iput v3, v0, Lcom/smartisanos/smengine/myparticle/Particle;->life:F

    .line 692
    iput v3, v0, Lcom/smartisanos/smengine/myparticle/Particle;->size:F

    .line 693
    iget-object v1, v0, Lcom/smartisanos/smengine/myparticle/Particle;->color:Lcom/smartisanos/smengine/math/Vector4f;

    invoke-virtual {v1, v3, v3, v3, v3}, Lcom/smartisanos/smengine/math/Vector4f;->set(FFFF)Lcom/smartisanos/smengine/math/Vector4f;

    .line 694
    const/4 v1, 0x0

    iput v1, v0, Lcom/smartisanos/smengine/myparticle/Particle;->imageIndex:I

    .line 695
    iput v3, v0, Lcom/smartisanos/smengine/myparticle/Particle;->angle:F

    .line 696
    iput v3, v0, Lcom/smartisanos/smengine/myparticle/Particle;->rotateSpeed:F

    .line 697
    iget-object v1, v0, Lcom/smartisanos/smengine/myparticle/Particle;->position:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {v1, v2, v2, v2}, Lcom/smartisanos/smengine/math/Vector3f;->set(FFF)Lcom/smartisanos/smengine/math/Vector3f;

    .line 699
    iget v1, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->lastUsed:I

    if-ne p1, v1, :cond_0

    .line 700
    :goto_0
    iget v1, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->lastUsed:I

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->particles:[Lcom/smartisanos/smengine/myparticle/Particle;

    iget v2, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->lastUsed:I

    aget-object v1, v1, v2

    iget v1, v1, Lcom/smartisanos/smengine/myparticle/Particle;->life:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_0

    .line 701
    iget v1, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->lastUsed:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->lastUsed:I

    goto :goto_0

    .line 704
    :cond_0
    iget v1, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->firstUnUsed:I

    if-ge p1, v1, :cond_1

    .line 705
    iput p1, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->firstUnUsed:I

    .line 707
    :cond_1
    return-void
.end method

.method private swap(II)V
    .locals 3
    .param p1, "idx1"    # I
    .param p2, "idx2"    # I

    .prologue
    .line 710
    iget-object v1, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->particles:[Lcom/smartisanos/smengine/myparticle/Particle;

    aget-object v0, v1, p1

    .line 711
    .local v0, "p1":Lcom/smartisanos/smengine/myparticle/Particle;
    iget-object v1, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->particles:[Lcom/smartisanos/smengine/myparticle/Particle;

    iget-object v2, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->particles:[Lcom/smartisanos/smengine/myparticle/Particle;

    aget-object v2, v2, p2

    aput-object v2, v1, p1

    .line 712
    iget-object v1, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->particles:[Lcom/smartisanos/smengine/myparticle/Particle;

    aput-object v0, v1, p2

    .line 713
    return-void
.end method

.method private updateParticle(Lcom/smartisanos/smengine/myparticle/Particle;FLcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)V
    .locals 5
    .param p1, "p"    # Lcom/smartisanos/smengine/myparticle/Particle;
    .param p2, "tpf"    # F
    .param p3, "min"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p4, "max"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 717
    iget-object v1, p1, Lcom/smartisanos/smengine/myparticle/Particle;->velocity:Lcom/smartisanos/smengine/math/Vector3f;

    iget v2, v1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget-object v3, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->gravity:Lcom/smartisanos/smengine/math/Vector3f;

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    mul-float/2addr v3, p2

    sub-float/2addr v2, v3

    iput v2, v1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 718
    iget-object v1, p1, Lcom/smartisanos/smengine/myparticle/Particle;->velocity:Lcom/smartisanos/smengine/math/Vector3f;

    iget v2, v1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget-object v3, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->gravity:Lcom/smartisanos/smengine/math/Vector3f;

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    mul-float/2addr v3, p2

    sub-float/2addr v2, v3

    iput v2, v1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 719
    iget-object v1, p1, Lcom/smartisanos/smengine/myparticle/Particle;->velocity:Lcom/smartisanos/smengine/math/Vector3f;

    iget v2, v1, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    iget-object v3, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->gravity:Lcom/smartisanos/smengine/math/Vector3f;

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    mul-float/2addr v3, p2

    sub-float/2addr v2, v3

    iput v2, v1, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    .line 720
    iget-object v1, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->temp:Lcom/smartisanos/smengine/math/Vector3f;

    iget-object v2, p1, Lcom/smartisanos/smengine/myparticle/Particle;->velocity:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/math/Vector3f;->set(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/smartisanos/smengine/math/Vector3f;->multLocal(F)Lcom/smartisanos/smengine/math/Vector3f;

    .line 721
    iget-object v1, p1, Lcom/smartisanos/smengine/myparticle/Particle;->position:Lcom/smartisanos/smengine/math/Vector3f;

    iget-object v2, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->temp:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/math/Vector3f;->addLocal(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    .line 724
    iget v1, p1, Lcom/smartisanos/smengine/myparticle/Particle;->startlife:F

    iget v2, p1, Lcom/smartisanos/smengine/myparticle/Particle;->life:F

    sub-float/2addr v1, v2

    iget v2, p1, Lcom/smartisanos/smengine/myparticle/Particle;->startlife:F

    div-float v0, v1, v2

    .line 725
    .local v0, "b":F
    iget-object v1, p1, Lcom/smartisanos/smengine/myparticle/Particle;->color:Lcom/smartisanos/smengine/math/Vector4f;

    iget-object v2, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->startColor:Lcom/smartisanos/smengine/math/Vector4f;

    iget-object v3, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->endColor:Lcom/smartisanos/smengine/math/Vector4f;

    invoke-virtual {v1, v2, v3, v0}, Lcom/smartisanos/smengine/math/Vector4f;->interpolateLocal(Lcom/smartisanos/smengine/math/Vector4f;Lcom/smartisanos/smengine/math/Vector4f;F)Lcom/smartisanos/smengine/math/Vector4f;

    .line 726
    iget v1, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->startSize:F

    iget v2, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->endSize:F

    invoke-static {v0, v1, v2}, Lcom/smartisanos/smengine/math/FastMath;->interpolateLinear(FFF)F

    move-result v1

    iput v1, p1, Lcom/smartisanos/smengine/myparticle/Particle;->size:F

    .line 727
    iget v1, p1, Lcom/smartisanos/smengine/myparticle/Particle;->angle:F

    iget v2, p1, Lcom/smartisanos/smengine/myparticle/Particle;->rotateSpeed:F

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    iput v1, p1, Lcom/smartisanos/smengine/myparticle/Particle;->angle:F

    .line 730
    iget-object v1, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->temp:Lcom/smartisanos/smengine/math/Vector3f;

    iget-object v2, p1, Lcom/smartisanos/smengine/myparticle/Particle;->position:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/math/Vector3f;->set(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v1

    iget v2, p1, Lcom/smartisanos/smengine/myparticle/Particle;->size:F

    iget v3, p1, Lcom/smartisanos/smengine/myparticle/Particle;->size:F

    iget v4, p1, Lcom/smartisanos/smengine/myparticle/Particle;->size:F

    invoke-virtual {v1, v2, v3, v4}, Lcom/smartisanos/smengine/math/Vector3f;->addLocal(FFF)Lcom/smartisanos/smengine/math/Vector3f;

    .line 731
    iget-object v1, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->temp:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {p4, v1}, Lcom/smartisanos/smengine/math/Vector3f;->maxLocal(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    .line 732
    iget-object v1, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->temp:Lcom/smartisanos/smengine/math/Vector3f;

    iget-object v2, p1, Lcom/smartisanos/smengine/myparticle/Particle;->position:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/math/Vector3f;->set(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v1

    iget v2, p1, Lcom/smartisanos/smengine/myparticle/Particle;->size:F

    iget v3, p1, Lcom/smartisanos/smengine/myparticle/Particle;->size:F

    iget v4, p1, Lcom/smartisanos/smengine/myparticle/Particle;->size:F

    invoke-virtual {v1, v2, v3, v4}, Lcom/smartisanos/smengine/math/Vector3f;->subtractLocal(FFF)Lcom/smartisanos/smengine/math/Vector3f;

    .line 733
    iget-object v1, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->temp:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {p3, v1}, Lcom/smartisanos/smengine/math/Vector3f;->minLocal(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    .line 735
    iget-boolean v1, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->selectRandomImage:Z

    if-nez v1, :cond_0

    .line 736
    iget v1, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->imagesX:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    iget v2, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->imagesY:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Lcom/smartisanos/smengine/myparticle/Particle;->imageIndex:I

    .line 738
    :cond_0
    return-void
.end method

.method private updateParticleState(F)V
    .locals 10
    .param p1, "tpf"    # F

    .prologue
    const/4 v9, 0x0

    .line 742
    invoke-virtual {p0}, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->getWorldTransform()Lcom/smartisanos/smengine/math/Transform;

    .line 744
    invoke-static {}, Lcom/smartisanos/smengine/util/TempVars;->get()Lcom/smartisanos/smengine/util/TempVars;

    move-result-object v6

    .line 745
    .local v6, "vars":Lcom/smartisanos/smengine/util/TempVars;
    iget-object v7, v6, Lcom/smartisanos/smengine/util/TempVars;->vect1:Lcom/smartisanos/smengine/math/Vector3f;

    sget-object v8, Lcom/smartisanos/smengine/math/Vector3f;->POSITIVE_INFINITY:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {v7, v8}, Lcom/smartisanos/smengine/math/Vector3f;->set(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v4

    .line 746
    .local v4, "min":Lcom/smartisanos/smengine/math/Vector3f;
    iget-object v7, v6, Lcom/smartisanos/smengine/util/TempVars;->vect2:Lcom/smartisanos/smengine/math/Vector3f;

    sget-object v8, Lcom/smartisanos/smengine/math/Vector3f;->NEGATIVE_INFINITY:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {v7, v8}, Lcom/smartisanos/smengine/math/Vector3f;->set(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v3

    .line 748
    .local v3, "max":Lcom/smartisanos/smengine/math/Vector3f;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v7, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->particles:[Lcom/smartisanos/smengine/myparticle/Particle;

    array-length v7, v7

    if-ge v1, v7, :cond_4

    .line 749
    iget-object v7, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->particles:[Lcom/smartisanos/smengine/myparticle/Particle;

    aget-object v5, v7, v1

    .line 750
    .local v5, "p":Lcom/smartisanos/smengine/myparticle/Particle;
    iget v7, v5, Lcom/smartisanos/smengine/myparticle/Particle;->life:F

    cmpl-float v7, v7, v9

    if-nez v7, :cond_1

    .line 748
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 755
    :cond_1
    iget v7, v5, Lcom/smartisanos/smengine/myparticle/Particle;->life:F

    sub-float/2addr v7, p1

    iput v7, v5, Lcom/smartisanos/smengine/myparticle/Particle;->life:F

    .line 756
    iget v7, v5, Lcom/smartisanos/smengine/myparticle/Particle;->life:F

    cmpg-float v7, v7, v9

    if-gtz v7, :cond_2

    .line 757
    invoke-direct {p0, v1}, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->freeParticle(I)V

    goto :goto_1

    .line 761
    :cond_2
    invoke-direct {p0, v5, p1, v4, v3}, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->updateParticle(Lcom/smartisanos/smengine/myparticle/Particle;FLcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 763
    iget v7, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->firstUnUsed:I

    if-ge v7, v1, :cond_0

    .line 764
    iget v7, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->firstUnUsed:I

    invoke-direct {p0, v7, v1}, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->swap(II)V

    .line 765
    iget v7, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->lastUsed:I

    if-ne v1, v7, :cond_3

    .line 766
    iget v7, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->firstUnUsed:I

    iput v7, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->lastUsed:I

    .line 768
    :cond_3
    iget v7, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->firstUnUsed:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->firstUnUsed:I

    goto :goto_1

    .line 773
    .end local v5    # "p":Lcom/smartisanos/smengine/myparticle/Particle;
    :cond_4
    const/high16 v7, 0x3f800000    # 1.0f

    iget v8, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->particlesPerSec:F

    div-float v2, v7, v8

    .line 774
    .local v2, "interval":F
    iget v7, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->timeDifference:F

    add-float/2addr p1, v7

    .line 775
    const/4 v0, 0x0

    .line 776
    .local v0, "count":I
    :cond_5
    :goto_2
    cmpl-float v7, p1, v2

    if-lez v7, :cond_7

    .line 777
    sub-float/2addr p1, v2

    .line 778
    invoke-direct {p0, v4, v3}, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->emitParticle(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/myparticle/Particle;

    move-result-object v5

    .line 779
    .restart local v5    # "p":Lcom/smartisanos/smengine/myparticle/Particle;
    if-eqz v5, :cond_5

    .line 780
    iget v7, v5, Lcom/smartisanos/smengine/myparticle/Particle;->life:F

    sub-float/2addr v7, p1

    iput v7, v5, Lcom/smartisanos/smengine/myparticle/Particle;->life:F

    .line 781
    iget v7, v5, Lcom/smartisanos/smengine/myparticle/Particle;->life:F

    cmpg-float v7, v7, v9

    if-gtz v7, :cond_6

    .line 782
    iget v7, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->lastUsed:I

    invoke-direct {p0, v7}, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->freeParticle(I)V

    goto :goto_2

    .line 784
    :cond_6
    invoke-direct {p0, v5, p1, v4, v3}, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->updateParticle(Lcom/smartisanos/smengine/myparticle/Particle;FLcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 785
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 789
    .end local v5    # "p":Lcom/smartisanos/smengine/myparticle/Particle;
    :cond_7
    sget-boolean v7, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v7, :cond_8

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "## add count = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ###"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/smartisanos/launcher/LOG;->i(Ljava/lang/String;)V

    .line 790
    :cond_8
    iput p1, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->timeDifference:F

    .line 796
    invoke-virtual {v6}, Lcom/smartisanos/smengine/util/TempVars;->release()V

    .line 797
    return-void
.end method


.method public destroy()V
    .locals 0

    .prologue
    .line 835
    invoke-virtual {p0}, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 836
    invoke-virtual {p0}, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->killAllParticles()V

    .line 837
    return-void
.end method

.method public draw(Lcom/smartisanos/smengine/Camera;)V
    .locals 0
    .param p1, "c"    # Lcom/smartisanos/smengine/Camera;

    .prologue
    .line 809
    invoke-super {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->draw(Lcom/smartisanos/smengine/Camera;)V

    .line 810
    return-void
.end method

.method public emitAllParticles(Z)V
    .locals 5
    .param p1, "needEmitAll"    # Z

    .prologue
    .line 645
    invoke-virtual {p0}, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->getWorldTransform()Lcom/smartisanos/smengine/math/Transform;

    .line 647
    invoke-static {}, Lcom/smartisanos/smengine/util/TempVars;->get()Lcom/smartisanos/smengine/util/TempVars;

    move-result-object v3

    .line 649
    .local v3, "vars":Lcom/smartisanos/smengine/util/TempVars;
    iget-object v2, v3, Lcom/smartisanos/smengine/util/TempVars;->vect1:Lcom/smartisanos/smengine/math/Vector3f;

    .line 650
    .local v2, "min":Lcom/smartisanos/smengine/math/Vector3f;
    iget-object v1, v3, Lcom/smartisanos/smengine/util/TempVars;->vect2:Lcom/smartisanos/smengine/math/Vector3f;

    .line 652
    .local v1, "max":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-static {v2}, Lcom/smartisanos/smengine/math/Vector3f;->isValidVector(Lcom/smartisanos/smengine/math/Vector3f;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 653
    sget-object v4, Lcom/smartisanos/smengine/math/Vector3f;->POSITIVE_INFINITY:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {v2, v4}, Lcom/smartisanos/smengine/math/Vector3f;->set(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    .line 655
    :cond_0
    invoke-static {v1}, Lcom/smartisanos/smengine/math/Vector3f;->isValidVector(Lcom/smartisanos/smengine/math/Vector3f;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 656
    sget-object v4, Lcom/smartisanos/smengine/math/Vector3f;->NEGATIVE_INFINITY:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {v1, v4}, Lcom/smartisanos/smengine/math/Vector3f;->set(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    .line 658
    :cond_1
    if-eqz p1, :cond_3

    .line 659
    :cond_2
    invoke-direct {p0, v2, v1}, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->emitParticle(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/myparticle/Particle;

    move-result-object v4

    if-nez v4, :cond_2

    .line 661
    :cond_3
    iget-object v4, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->particleMesh:Lcom/smartisanos/smengine/myparticle/ParticleMesh;

    invoke-virtual {p0, v4}, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->setMesh(Lcom/smartisanos/smengine/Mesh;)V

    .line 662
    const-string v4, "VertexColorTextureMaterial"

    invoke-static {v4}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v0

    .line 663
    .local v0, "m":Lcom/smartisanos/smengine/mymaterial/Material;
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 664
    invoke-virtual {v3}, Lcom/smartisanos/smengine/util/TempVars;->release()V

    .line 665
    return-void
.end method

.method public getEndColor()Lcom/smartisanos/smengine/math/Vector4f;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->endColor:Lcom/smartisanos/smengine/math/Vector4f;

    return-object v0
.end method

.method public getEndSize()F
    .locals 1

    .prologue
    .line 339
    iget v0, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->endSize:F

    return v0
.end method

.method public getFaceNormal()Lcom/smartisanos/smengine/math/Vector3f;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->faceNormal:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-static {v0}, Lcom/smartisanos/smengine/math/Vector3f;->isValidVector(Lcom/smartisanos/smengine/math/Vector3f;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->faceNormal:Lcom/smartisanos/smengine/math/Vector3f;

    .line 185
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getGravity()Lcom/smartisanos/smengine/math/Vector3f;
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->gravity:Lcom/smartisanos/smengine/math/Vector3f;

    return-object v0
.end method

.method public getHighLife()F
    .locals 1

    .prologue
    .line 397
    iget v0, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->highLife:F

    return v0
.end method

.method public getImagesX()I
    .locals 1

    .prologue
    .line 420
    iget v0, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->imagesX:I

    return v0
.end method

.method public getImagesY()I
    .locals 1

    .prologue
    .line 445
    iget v0, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->imagesY:I

    return v0
.end method

.method public getInitialVelocity()Lcom/smartisanos/smengine/math/Vector3f;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 556
    iget-object v0, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->particleInfluencer:Lcom/smartisanos/smengine/myparticle/ParticleInfluencer;

    invoke-interface {v0}, Lcom/smartisanos/smengine/myparticle/ParticleInfluencer;->getInitialVelocity()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v0

    return-object v0
.end method

.method public getLowLife()F
    .locals 1

    .prologue
    .line 469
    iget v0, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->lowLife:F

    return v0
.end method

.method public getMaxNumParticles()I
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->particles:[Lcom/smartisanos/smengine/myparticle/Particle;

    array-length v0, v0

    return v0
.end method

.method public getMeshType()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->meshType:I

    return v0
.end method

.method public getNumVisibleParticles()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->lastUsed:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getParticleInfluencer()Lcom/smartisanos/smengine/myparticle/ParticleInfluencer;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->particleInfluencer:Lcom/smartisanos/smengine/myparticle/ParticleInfluencer;

    return-object v0
.end method

.method public getParticles()[Lcom/smartisanos/smengine/myparticle/Particle;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->particles:[Lcom/smartisanos/smengine/myparticle/Particle;

    return-object v0
.end method

.method public getParticlesPerSec()F
    .locals 1

    .prologue
    .line 494
    iget v0, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->particlesPerSec:F

    return v0
.end method

.method public getRotateSpeed()F
    .locals 1

    .prologue
    .line 217
    iget v0, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->rotateSpeed:F

    return v0
.end method

.method public getShape()Lcom/smartisanos/smengine/myparticle/EmitterShape;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->shape:Lcom/smartisanos/smengine/myparticle/EmitterShape;

    return-object v0
.end method

.method public getStartColor()Lcom/smartisanos/smengine/math/Vector4f;
    .locals 1

    .prologue
    .line 511
    iget-object v0, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->startColor:Lcom/smartisanos/smengine/math/Vector4f;

    return-object v0
.end method

.method public getStartSize()F
    .locals 1

    .prologue
    .line 535
    iget v0, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->startSize:F

    return v0
.end method

.method public getVelocityVariation()F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 586
    iget-object v0, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->particleInfluencer:Lcom/smartisanos/smengine/myparticle/ParticleInfluencer;

    invoke-interface {v0}, Lcom/smartisanos/smengine/myparticle/ParticleInfluencer;->getVelocityVariation()F

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 831
    iget-boolean v0, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->enabled:Z

    return v0
.end method

.method public isFacingVelocity()Z
    .locals 1

    .prologue
    .line 296
    iget-boolean v0, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->facingVelocity:Z

    return v0
.end method

.method public isRandomAngle()Z
    .locals 1

    .prologue
    .line 241
    iget-boolean v0, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->randomAngle:Z

    return v0
.end method

.method public isSelectRandomImage()Z
    .locals 1

    .prologue
    .line 265
    iget-boolean v0, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->selectRandomImage:Z

    return v0
.end method

.method public killAllParticles()V
    .locals 3

    .prologue
    .line 672
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->particles:[Lcom/smartisanos/smengine/myparticle/Particle;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 673
    iget-object v1, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->particles:[Lcom/smartisanos/smengine/myparticle/Particle;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/smartisanos/smengine/myparticle/Particle;->life:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 674
    invoke-direct {p0, v0}, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->freeParticle(I)V

    .line 672
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 677
    :cond_1
    return-void
.end method

.method public killParticle(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 686
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->freeParticle(I)V

    .line 687
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 820
    iput-boolean p1, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->enabled:Z

    .line 821
    return-void
.end method

.method public setEndColor(Lcom/smartisanos/smengine/math/Vector4f;)V
    .locals 1
    .param p1, "endColor"    # Lcom/smartisanos/smengine/math/Vector4f;

    .prologue
    .line 328
    iget-object v0, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->endColor:Lcom/smartisanos/smengine/math/Vector4f;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/math/Vector4f;->set(Lcom/smartisanos/smengine/math/Vector4f;)Lcom/smartisanos/smengine/math/Vector4f;

    .line 329
    return-void
.end method

.method public setEndSize(F)V
    .locals 0
    .param p1, "endSize"    # F

    .prologue
    .line 353
    iput p1, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->endSize:F

    .line 354
    return-void
.end method

.method public setFaceNormal(Lcom/smartisanos/smengine/math/Vector3f;)V
    .locals 2
    .param p1, "faceNormal"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 202
    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/smartisanos/smengine/math/Vector3f;->isValidVector(Lcom/smartisanos/smengine/math/Vector3f;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->faceNormal:Lcom/smartisanos/smengine/math/Vector3f;

    sget-object v1, Lcom/smartisanos/smengine/math/Vector3f;->NAN:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/math/Vector3f;->set(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    .line 207
    :goto_0
    return-void

    .line 205
    :cond_1
    iput-object p1, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->faceNormal:Lcom/smartisanos/smengine/math/Vector3f;

    goto :goto_0
.end method

.method public setFacingVelocity(Z)V
    .locals 0
    .param p1, "followVelocity"    # Z

    .prologue
    .line 309
    iput-boolean p1, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->facingVelocity:Z

    .line 310
    return-void
.end method

.method public setGravity(FFF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 384
    iget-object v0, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->gravity:Lcom/smartisanos/smengine/math/Vector3f;

    iput p1, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 385
    iget-object v0, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->gravity:Lcom/smartisanos/smengine/math/Vector3f;

    iput p2, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 386
    iget-object v0, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->gravity:Lcom/smartisanos/smengine/math/Vector3f;

    iput p3, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    .line 387
    return-void
.end method

.method public setGravity(Lcom/smartisanos/smengine/math/Vector3f;)V
    .locals 1
    .param p1, "gravity"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 373
    iget-object v0, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->gravity:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/math/Vector3f;->set(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    .line 374
    return-void
.end method

.method public setHighLife(F)V
    .locals 0
    .param p1, "highLife"    # F

    .prologue
    .line 409
    iput p1, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->highLife:F

    .line 410
    return-void
.end method

.method public setImagesX(I)V
    .locals 3
    .param p1, "imagesX"    # I

    .prologue
    .line 433
    iput p1, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->imagesX:I

    .line 434
    iget-object v0, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->particleMesh:Lcom/smartisanos/smengine/myparticle/ParticleMesh;

    iget v1, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->imagesX:I

    iget v2, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->imagesY:I

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/smengine/myparticle/ParticleMesh;->setImagesXY(II)V

    .line 435
    return-void
.end method

.method public setImagesY(I)V
    .locals 3
    .param p1, "imagesY"    # I

    .prologue
    .line 457
    iput p1, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->imagesY:I

    .line 458
    iget-object v0, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->particleMesh:Lcom/smartisanos/smengine/myparticle/ParticleMesh;

    iget v1, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->imagesX:I

    iget v2, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->imagesY:I

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/smengine/myparticle/ParticleMesh;->setImagesXY(II)V

    .line 459
    return-void
.end method

.method public setInitialVelocity(Lcom/smartisanos/smengine/math/Vector3f;)V
    .locals 1
    .param p1, "initialVelocity"    # Lcom/smartisanos/smengine/math/Vector3f;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 575
    iget-object v0, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->particleInfluencer:Lcom/smartisanos/smengine/myparticle/ParticleInfluencer;

    invoke-interface {v0, p1}, Lcom/smartisanos/smengine/myparticle/ParticleInfluencer;->setInitialVelocity(Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 576
    return-void
.end method

.method public setLowLife(F)V
    .locals 0
    .param p1, "lowLife"    # F

    .prologue
    .line 481
    iput p1, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->lowLife:F

    .line 482
    return-void
.end method

.method public setMeshType(I)V
    .locals 1
    .param p1, "meshType"    # I

    .prologue
    .line 120
    iput p1, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->meshType:I

    .line 121
    iget-object v0, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->particles:[Lcom/smartisanos/smengine/myparticle/Particle;

    array-length v0, v0

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->setNumParticles(I)V

    .line 122
    return-void
.end method

.method public final setNumParticles(I)V
    .locals 4
    .param p1, "numParticles"    # I

    .prologue
    .line 144
    new-array v1, p1, [Lcom/smartisanos/smengine/myparticle/Particle;

    iput-object v1, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->particles:[Lcom/smartisanos/smengine/myparticle/Particle;

    .line 145
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 146
    iget-object v1, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->particles:[Lcom/smartisanos/smengine/myparticle/Particle;

    new-instance v2, Lcom/smartisanos/smengine/myparticle/Particle;

    invoke-direct {v2}, Lcom/smartisanos/smengine/myparticle/Particle;-><init>()V

    aput-object v2, v1, v0

    .line 145
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 149
    :cond_0
    iget v1, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->meshType:I

    invoke-direct {p0, v1, p1}, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->createParticleMesh(II)V

    .line 150
    iget-object v1, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->particleMesh:Lcom/smartisanos/smengine/myparticle/ParticleMesh;

    iget v2, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->imagesX:I

    iget v3, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->imagesY:I

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/smengine/myparticle/ParticleMesh;->setImagesXY(II)V

    .line 151
    const/4 v1, 0x0

    iput v1, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->firstUnUsed:I

    .line 152
    const/4 v1, -0x1

    iput v1, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->lastUsed:I

    .line 153
    return-void
.end method

.method public setParticleInfluencer(Lcom/smartisanos/smengine/myparticle/ParticleInfluencer;)V
    .locals 0
    .param p1, "particleInfluencer"    # Lcom/smartisanos/smengine/myparticle/ParticleInfluencer;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->particleInfluencer:Lcom/smartisanos/smengine/myparticle/ParticleInfluencer;

    .line 95
    return-void
.end method

.method public setParticlesPerSec(F)V
    .locals 1
    .param p1, "particlesPerSec"    # F

    .prologue
    .line 505
    iput p1, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->particlesPerSec:F

    .line 506
    const/4 v0, 0x0

    iput v0, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->timeDifference:F

    .line 507
    return-void
.end method

.method public setRandomAngle(Z)V
    .locals 0
    .param p1, "randomAngle"    # Z

    .prologue
    .line 252
    iput-boolean p1, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->randomAngle:Z

    .line 253
    return-void
.end method

.method public setRotateSpeed(F)V
    .locals 0
    .param p1, "rotateSpeed"    # F

    .prologue
    .line 228
    iput p1, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->rotateSpeed:F

    .line 229
    return-void
.end method

.method public setSelectRandomImage(Z)V
    .locals 0
    .param p1, "selectRandomImage"    # Z

    .prologue
    .line 285
    iput-boolean p1, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->selectRandomImage:Z

    .line 286
    return-void
.end method

.method public setShape(Lcom/smartisanos/smengine/myparticle/EmitterShape;)V
    .locals 0
    .param p1, "shape"    # Lcom/smartisanos/smengine/myparticle/EmitterShape;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->shape:Lcom/smartisanos/smengine/myparticle/EmitterShape;

    .line 79
    return-void
.end method

.method public setStartColor(Lcom/smartisanos/smengine/math/Vector4f;)V
    .locals 1
    .param p1, "startColor"    # Lcom/smartisanos/smengine/math/Vector4f;

    .prologue
    .line 524
    iget-object v0, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->startColor:Lcom/smartisanos/smengine/math/Vector4f;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/math/Vector4f;->set(Lcom/smartisanos/smengine/math/Vector4f;)Lcom/smartisanos/smengine/math/Vector4f;

    .line 525
    return-void
.end method

.method public setStartSize(F)V
    .locals 0
    .param p1, "startSize"    # F

    .prologue
    .line 548
    iput p1, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->startSize:F

    .line 549
    return-void
.end method

.method public setVelocityVariation(F)V
    .locals 1
    .param p1, "variation"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 602
    iget-object v0, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->particleInfluencer:Lcom/smartisanos/smengine/myparticle/ParticleInfluencer;

    invoke-interface {v0, p1}, Lcom/smartisanos/smengine/myparticle/ParticleInfluencer;->setVelocityVariation(F)V

    .line 603
    return-void
.end method

.method public update(F)V
    .locals 3
    .param p1, "deltaT"    # F

    .prologue
    const/4 v2, 0x0

    .line 801
    iget-boolean v0, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->mIsMainControlEmitter:Z

    if-eqz v0, :cond_0

    .line 802
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->updateParticleState(F)V

    .line 803
    iget-object v0, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->particleMesh:Lcom/smartisanos/smengine/myparticle/ParticleMesh;

    iget-object v1, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->particles:[Lcom/smartisanos/smengine/myparticle/Particle;

    invoke-virtual {v0, v1, v2, v2}, Lcom/smartisanos/smengine/myparticle/ParticleMesh;->updateParticleData([Lcom/smartisanos/smengine/myparticle/Particle;Lcom/smartisanos/smengine/Camera;Lcom/smartisanos/smengine/math/Matrix3f;)V

    .line 804
    iget-object v0, p0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->particleMesh:Lcom/smartisanos/smengine/myparticle/ParticleMesh;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/myparticle/ParticleMesh;->updateVertexBufferObject()V

    .line 806
    :cond_0
    return-void
.end method
