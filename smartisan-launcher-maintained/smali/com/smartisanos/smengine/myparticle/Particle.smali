.class public Lcom/smartisanos/smengine/myparticle/Particle;
.super Ljava/lang/Object;
.source "Particle.java"


.field public angle:F

.field public final color:Lcom/smartisanos/smengine/math/Vector4f;

.field public imageIndex:I

.field public life:F

.field public final position:Lcom/smartisanos/smengine/math/Vector3f;

.field public rotateSpeed:F

.field public size:F

.field public startlife:F

.field public final velocity:Lcom/smartisanos/smengine/math/Vector3f;


.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v0}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/myparticle/Particle;->velocity:Lcom/smartisanos/smengine/math/Vector3f;

    .line 17
    new-instance v0, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v0}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/myparticle/Particle;->position:Lcom/smartisanos/smengine/math/Vector3f;

    .line 22
    new-instance v0, Lcom/smartisanos/smengine/math/Vector4f;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/smartisanos/smengine/math/Vector4f;-><init>(FFFF)V

    iput-object v0, p0, Lcom/smartisanos/smengine/myparticle/Particle;->color:Lcom/smartisanos/smengine/math/Vector4f;

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/smartisanos/smengine/myparticle/Particle;->imageIndex:I

    return-void
.end method
