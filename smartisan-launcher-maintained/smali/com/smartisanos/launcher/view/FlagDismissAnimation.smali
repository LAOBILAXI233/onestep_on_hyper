.class public Lcom/smartisanos/launcher/view/FlagDismissAnimation;
.super Lcom/smartisanos/smengine/SceneNode;
.source "FlagDismissAnimation.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/launcher/view/FlagDismissAnimation$ParticleAccessor;,
        Lcom/smartisanos/launcher/view/FlagDismissAnimation$FlagParticle;
    }
.end annotation


.field public static final BLOCK_FLAGS:I = 0x1

.field private static DURATION:F = 0.0f

.field public static final EMITTER_COUNT_EVERY_BLOCK:I = 0x1

.field public static final EMITTER_WIDTH_EVERY:F = 3.0f

.field public static final EMITTER_WIDTH_SUM:F = 2.0f

.field public static final END_COLORS:[[Lcom/smartisanos/smengine/math/Vector4f;

.field public static final FLAG_TYPE_NEW:I = 0x1

.field public static final FLAG_TYPE_NUM_MESSAGE:I = 0x0

.field private static NUM_PARITCLE_PER_EMITTER:I = 0x0

.field private static NUM_PARITCLE_PER_SECOND_PER_EMITTER:I = 0x0

.field private static final SCALE_FACTOR:F = 2.0f

.field public static final START_COLORS:[[Lcom/smartisanos/smengine/math/Vector4f;

.field private static final TAG:Ljava/lang/String; = "FlagDismissAnimation"


.field public EMITTER_HEGHT_SUM:F

.field public EMITTER_HEIGHT_EVERY:F

.field private mCell:Lcom/smartisanos/launcher/view/Cell;

.field private mFlag:Lcom/smartisanos/smengine/SceneNode;

.field private mFlagType:I

.field private mParticleEmitters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/smengine/myparticle/ParticleEmitter;",
            ">;"
        }
    .end annotation
.end field

.field private mProgress:F

.field private mTween:Laurelienribon/tweenengine/Tween;

.field private targetHeight:F

.field private targetStart:F

.field private targetWidth:F


.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const v6, 0x3df8f8f9

    .line 55
    invoke-static {}, Lcom/smartisanos/launcher/view/FlagDismissAnimation$FlagParticle;->reset()V

    .line 71
    const/4 v0, 0x2

    new-array v0, v0, [[Lcom/smartisanos/smengine/math/Vector4f;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/smartisanos/smengine/math/Vector4f;

    new-instance v2, Lcom/smartisanos/smengine/math/Vector4f;

    const v3, 0x3e68e8e9

    const v4, 0x3dc8c8c9

    const v5, 0x3db8b8b9

    invoke-direct {v2, v3, v4, v5, v8}, Lcom/smartisanos/smengine/math/Vector4f;-><init>(FFFF)V

    aput-object v2, v1, v9

    new-instance v2, Lcom/smartisanos/smengine/math/Vector4f;

    const v3, 0x3e008081

    const v4, 0x3ce0e0e1

    const v5, 0x3d008081

    invoke-direct {v2, v3, v4, v5, v8}, Lcom/smartisanos/smengine/math/Vector4f;-><init>(FFFF)V

    aput-object v2, v1, v10

    const/4 v2, 0x2

    new-instance v3, Lcom/smartisanos/smengine/math/Vector4f;

    const v4, 0x3eacacad

    invoke-direct {v3, v4, v6, v6, v8}, Lcom/smartisanos/smengine/math/Vector4f;-><init>(FFFF)V

    aput-object v3, v1, v2

    aput-object v1, v0, v9

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/smartisanos/smengine/math/Vector4f;

    new-instance v2, Lcom/smartisanos/smengine/math/Vector4f;

    const v3, 0x3dc8c8c9

    const v4, 0x3db8b8b9

    const v5, 0x3e68e8e9

    invoke-direct {v2, v3, v4, v5, v8}, Lcom/smartisanos/smengine/math/Vector4f;-><init>(FFFF)V

    aput-object v2, v1, v9

    new-instance v2, Lcom/smartisanos/smengine/math/Vector4f;

    const v3, 0x3ce0e0e1

    const v4, 0x3d008081

    const v5, 0x3e008081

    invoke-direct {v2, v3, v4, v5, v8}, Lcom/smartisanos/smengine/math/Vector4f;-><init>(FFFF)V

    aput-object v2, v1, v10

    const/4 v2, 0x2

    new-instance v3, Lcom/smartisanos/smengine/math/Vector4f;

    const v4, 0x3eacacad

    invoke-direct {v3, v6, v6, v4, v8}, Lcom/smartisanos/smengine/math/Vector4f;-><init>(FFFF)V

    aput-object v3, v1, v2

    aput-object v1, v0, v10

    sput-object v0, Lcom/smartisanos/launcher/view/FlagDismissAnimation;->START_COLORS:[[Lcom/smartisanos/smengine/math/Vector4f;

    .line 79
    const/4 v0, 0x2

    new-array v0, v0, [[Lcom/smartisanos/smengine/math/Vector4f;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/smartisanos/smengine/math/Vector4f;

    new-instance v2, Lcom/smartisanos/smengine/math/Vector4f;

    const v3, 0x3e68e8e9

    const v4, 0x3dc8c8c9

    const v5, 0x3db8b8b9

    invoke-direct {v2, v3, v4, v5, v7}, Lcom/smartisanos/smengine/math/Vector4f;-><init>(FFFF)V

    aput-object v2, v1, v9

    new-instance v2, Lcom/smartisanos/smengine/math/Vector4f;

    const v3, 0x3e008081

    const v4, 0x3ce0e0e1

    const v5, 0x3d008081

    invoke-direct {v2, v3, v4, v5, v7}, Lcom/smartisanos/smengine/math/Vector4f;-><init>(FFFF)V

    aput-object v2, v1, v10

    const/4 v2, 0x2

    new-instance v3, Lcom/smartisanos/smengine/math/Vector4f;

    const v4, 0x3eacacad

    invoke-direct {v3, v4, v6, v6, v7}, Lcom/smartisanos/smengine/math/Vector4f;-><init>(FFFF)V

    aput-object v3, v1, v2

    aput-object v1, v0, v9

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/smartisanos/smengine/math/Vector4f;

    new-instance v2, Lcom/smartisanos/smengine/math/Vector4f;

    const v3, 0x3dc8c8c9

    const v4, 0x3db8b8b9

    const v5, 0x3e68e8e9

    invoke-direct {v2, v3, v4, v5, v7}, Lcom/smartisanos/smengine/math/Vector4f;-><init>(FFFF)V

    aput-object v2, v1, v9

    new-instance v2, Lcom/smartisanos/smengine/math/Vector4f;

    const v3, 0x3ce0e0e1

    const v4, 0x3d008081

    const v5, 0x3e008081

    invoke-direct {v2, v3, v4, v5, v7}, Lcom/smartisanos/smengine/math/Vector4f;-><init>(FFFF)V

    aput-object v2, v1, v10

    const/4 v2, 0x2

    new-instance v3, Lcom/smartisanos/smengine/math/Vector4f;

    const v4, 0x3eacacad

    invoke-direct {v3, v6, v6, v4, v7}, Lcom/smartisanos/smengine/math/Vector4f;-><init>(FFFF)V

    aput-object v3, v1, v2

    aput-object v1, v0, v10

    sput-object v0, Lcom/smartisanos/launcher/view/FlagDismissAnimation;->END_COLORS:[[Lcom/smartisanos/smengine/math/Vector4f;

    .line 89
    const/16 v0, 0x190

    sput v0, Lcom/smartisanos/launcher/view/FlagDismissAnimation;->NUM_PARITCLE_PER_EMITTER:I

    .line 91
    const/16 v0, 0x640

    sput v0, Lcom/smartisanos/launcher/view/FlagDismissAnimation;->NUM_PARITCLE_PER_SECOND_PER_EMITTER:I

    .line 93
    const/high16 v0, 0x40400000    # 3.0f

    sput v0, Lcom/smartisanos/launcher/view/FlagDismissAnimation;->DURATION:F

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lcom/smartisanos/launcher/view/Cell;FF)V
    .locals 4
    .param p1, "flagType"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "cell"    # Lcom/smartisanos/launcher/view/Cell;
    .param p4, "flagWidth"    # F
    .param p5, "flagHeight"    # F

    .prologue
    const/high16 v3, 0x42a00000    # 80.0f

    const/4 v2, 0x0

    .line 110
    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/SceneNode;-><init>(Ljava/lang/String;)V

    .line 60
    const/high16 v1, 0x41500000    # 13.0f

    iput v1, p0, Lcom/smartisanos/launcher/view/FlagDismissAnimation;->EMITTER_HEGHT_SUM:F

    .line 62
    iget v1, p0, Lcom/smartisanos/launcher/view/FlagDismissAnimation;->EMITTER_HEGHT_SUM:F

    iput v1, p0, Lcom/smartisanos/launcher/view/FlagDismissAnimation;->EMITTER_HEIGHT_EVERY:F

    .line 69
    const/4 v1, 0x0

    iput v1, p0, Lcom/smartisanos/launcher/view/FlagDismissAnimation;->mFlagType:I

    .line 95
    iput v3, p0, Lcom/smartisanos/launcher/view/FlagDismissAnimation;->targetWidth:F

    .line 96
    iput v2, p0, Lcom/smartisanos/launcher/view/FlagDismissAnimation;->targetStart:F

    .line 97
    iput v3, p0, Lcom/smartisanos/launcher/view/FlagDismissAnimation;->targetHeight:F

    .line 99
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/smartisanos/launcher/view/FlagDismissAnimation;->mParticleEmitters:Ljava/util/ArrayList;

    .line 106
    iput v2, p0, Lcom/smartisanos/launcher/view/FlagDismissAnimation;->mProgress:F

    .line 107
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/smartisanos/launcher/view/FlagDismissAnimation;->mTween:Laurelienribon/tweenengine/Tween;

    .line 111
    const-class v1, Lcom/smartisanos/launcher/view/FlagDismissAnimation;

    invoke-static {v1}, Laurelienribon/tweenengine/Tween;->getRegisteredAccessor(Ljava/lang/Class;)Laurelienribon/tweenengine/TweenAccessor;

    move-result-object v0

    .line 112
    .local v0, "a":Laurelienribon/tweenengine/TweenAccessor;, "Laurelienribon/tweenengine/TweenAccessor<Lcom/smartisanos/launcher/view/FlagDismissAnimation;>;"
    if-nez v0, :cond_0

    .line 113
    const-class v1, Lcom/smartisanos/launcher/view/FlagDismissAnimation;

    new-instance v2, Lcom/smartisanos/launcher/view/FlagDismissAnimation$ParticleAccessor;

    invoke-direct {v2, p0}, Lcom/smartisanos/launcher/view/FlagDismissAnimation$ParticleAccessor;-><init>(Lcom/smartisanos/launcher/view/FlagDismissAnimation;)V

    invoke-static {v1, v2}, Laurelienribon/tweenengine/Tween;->registerAccessor(Ljava/lang/Class;Laurelienribon/tweenengine/TweenAccessor;)V

    .line 115
    :cond_0
    iput p1, p0, Lcom/smartisanos/launcher/view/FlagDismissAnimation;->mFlagType:I

    .line 116
    iput-object p3, p0, Lcom/smartisanos/launcher/view/FlagDismissAnimation;->mCell:Lcom/smartisanos/launcher/view/Cell;

    .line 117
    iget-object v1, p0, Lcom/smartisanos/launcher/view/FlagDismissAnimation;->mCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v1, p1}, Lcom/smartisanos/launcher/view/Cell;->getFlagRect(I)Lcom/smartisanos/smengine/RectNode;

    move-result-object v1

    iput-object v1, p0, Lcom/smartisanos/launcher/view/FlagDismissAnimation;->mFlag:Lcom/smartisanos/smengine/SceneNode;

    .line 119
    const v1, 0x3e19999a    # 0.15f

    mul-float/2addr v1, p5

    iput v1, p0, Lcom/smartisanos/launcher/view/FlagDismissAnimation;->targetStart:F

    .line 120
    iget v1, p0, Lcom/smartisanos/launcher/view/FlagDismissAnimation;->targetStart:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    sub-float v1, p4, v1

    iput v1, p0, Lcom/smartisanos/launcher/view/FlagDismissAnimation;->targetWidth:F

    .line 122
    const v1, 0x3f19999a    # 0.6f

    mul-float/2addr v1, p5

    iput v1, p0, Lcom/smartisanos/launcher/view/FlagDismissAnimation;->targetHeight:F

    .line 125
    return-void
.end method

.method static synthetic access$000(Lcom/smartisanos/launcher/view/FlagDismissAnimation;)V
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/FlagDismissAnimation;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/FlagDismissAnimation;->startEmitters()V

    return-void
.end method

.method static synthetic access$100(Lcom/smartisanos/launcher/view/FlagDismissAnimation;)V
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/FlagDismissAnimation;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/FlagDismissAnimation;->onEmitterFinish()V

    return-void
.end method

.method static synthetic access$202(Lcom/smartisanos/launcher/view/FlagDismissAnimation;Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Tween;
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/FlagDismissAnimation;
    .param p1, "x1"    # Laurelienribon/tweenengine/Tween;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/smartisanos/launcher/view/FlagDismissAnimation;->mTween:Laurelienribon/tweenengine/Tween;

    return-object p1
.end method

.method private clearEmitter()V
    .locals 4

    .prologue
    .line 232
    iget-object v1, p0, Lcom/smartisanos/launcher/view/FlagDismissAnimation;->mParticleEmitters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;

    .line 233
    .local v0, "emitter":Lcom/smartisanos/smengine/myparticle/ParticleEmitter;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->setParticlesPerSec(F)V

    .line 234
    invoke-virtual {v0}, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 235
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/World;->getMeshManager()Lcom/smartisanos/smengine/MeshManager;

    move-result-object v2

    invoke-virtual {v0}, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->getMesh()Lcom/smartisanos/smengine/Mesh;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/MeshManager;->removeMesh(Lcom/smartisanos/smengine/Mesh;)V

    .line 236
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/World;->getParticleManager()Lcom/smartisanos/smengine/myparticle/ParticleManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/smartisanos/smengine/myparticle/ParticleManager;->removeParticleEmitter(Lcom/smartisanos/smengine/myparticle/ParticleEmitter;)Z

    goto :goto_0

    .line 238
    .end local v0    # "emitter":Lcom/smartisanos/smengine/myparticle/ParticleEmitter;
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/launcher/view/FlagDismissAnimation;->mParticleEmitters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 239
    return-void
.end method

.method private createEmitter(I)Lcom/smartisanos/smengine/myparticle/ParticleEmitter;
    .locals 13
    .param p1, "which"    # I

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 185
    new-instance v1, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "particle"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/smartisanos/launcher/view/FlagDismissAnimation;->mFlagType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    sget v8, Lcom/smartisanos/launcher/view/FlagDismissAnimation;->NUM_PARITCLE_PER_EMITTER:I

    invoke-direct {v1, v6, v7, v8}, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;-><init>(Ljava/lang/String;II)V

    .line 186
    .local v1, "emitter":Lcom/smartisanos/smengine/myparticle/ParticleEmitter;
    new-instance v6, Lcom/smartisanos/smengine/myparticle/FlagDismissParticleInfluencer;

    invoke-direct {v6}, Lcom/smartisanos/smengine/myparticle/FlagDismissParticleInfluencer;-><init>()V

    invoke-virtual {v1, v6}, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->setParticleInfluencer(Lcom/smartisanos/smengine/myparticle/ParticleInfluencer;)V

    .line 187
    invoke-virtual {v1, v10}, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->setRandomAngle(Z)V

    .line 188
    new-instance v4, Lcom/smartisanos/smengine/myparticle/CustomShape;

    iget v6, p0, Lcom/smartisanos/launcher/view/FlagDismissAnimation;->targetWidth:F

    iget v7, p0, Lcom/smartisanos/launcher/view/FlagDismissAnimation;->targetHeight:F

    invoke-direct {v4, v6, v7}, Lcom/smartisanos/smengine/myparticle/CustomShape;-><init>(FF)V

    .line 189
    .local v4, "smartShape":Lcom/smartisanos/smengine/myparticle/CustomShape;
    invoke-virtual {v1, v4}, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->setShape(Lcom/smartisanos/smengine/myparticle/EmitterShape;)V

    .line 191
    sget-object v6, Lcom/smartisanos/launcher/view/FlagDismissAnimation;->START_COLORS:[[Lcom/smartisanos/smengine/math/Vector4f;

    iget v7, p0, Lcom/smartisanos/launcher/view/FlagDismissAnimation;->mFlagType:I

    aget-object v5, v6, v7

    .line 192
    .local v5, "startColor":[Lcom/smartisanos/smengine/math/Vector4f;
    sget-object v6, Lcom/smartisanos/launcher/view/FlagDismissAnimation;->END_COLORS:[[Lcom/smartisanos/smengine/math/Vector4f;

    iget v7, p0, Lcom/smartisanos/launcher/view/FlagDismissAnimation;->mFlagType:I

    aget-object v2, v6, v7

    .line 193
    .local v2, "endColor":[Lcom/smartisanos/smengine/math/Vector4f;
    aget-object v6, v5, v11

    invoke-virtual {v1, v6}, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->setStartColor(Lcom/smartisanos/smengine/math/Vector4f;)V

    .line 194
    aget-object v6, v2, v11

    invoke-virtual {v1, v6}, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->setEndColor(Lcom/smartisanos/smengine/math/Vector4f;)V

    .line 196
    sget v6, Lcom/smartisanos/launcher/view/FlagDismissAnimation$FlagParticle;->mTestGravityX:F

    sget v7, Lcom/smartisanos/launcher/view/FlagDismissAnimation$FlagParticle;->mTestGravityY:F

    invoke-virtual {v1, v6, v7, v12}, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->setGravity(FFF)V

    .line 197
    sget v6, Lcom/smartisanos/launcher/view/FlagDismissAnimation$FlagParticle;->mTestLifeL:F

    invoke-virtual {v1, v6}, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->setLowLife(F)V

    .line 198
    sget v6, Lcom/smartisanos/launcher/view/FlagDismissAnimation$FlagParticle;->mTestLifeH:F

    invoke-virtual {v1, v6}, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->setHighLife(F)V

    .line 199
    invoke-virtual {v1}, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->getParticleInfluencer()Lcom/smartisanos/smengine/myparticle/ParticleInfluencer;

    move-result-object v6

    sget v7, Lcom/smartisanos/launcher/view/FlagDismissAnimation$FlagParticle;->mTestVelocityI:F

    invoke-interface {v6, v7}, Lcom/smartisanos/smengine/myparticle/ParticleInfluencer;->setVelocityVariation(F)V

    .line 200
    invoke-virtual {v1}, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->getParticleInfluencer()Lcom/smartisanos/smengine/myparticle/ParticleInfluencer;

    move-result-object v6

    new-instance v7, Lcom/smartisanos/smengine/math/Vector3f;

    sget v8, Lcom/smartisanos/launcher/view/FlagDismissAnimation$FlagParticle;->mTestVelocityX:F

    sget v9, Lcom/smartisanos/launcher/view/FlagDismissAnimation$FlagParticle;->mTestVelocityY:F

    invoke-direct {v7, v8, v9, v12}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    invoke-interface {v6, v7}, Lcom/smartisanos/smengine/myparticle/ParticleInfluencer;->setInitialVelocity(Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 201
    sget v6, Lcom/smartisanos/launcher/view/FlagDismissAnimation;->NUM_PARITCLE_PER_SECOND_PER_EMITTER:I

    int-to-float v6, v6

    invoke-virtual {v1, v6}, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->setParticlesPerSec(F)V

    .line 203
    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v1, v6}, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->setStartSize(F)V

    .line 204
    const/high16 v6, 0x3f000000    # 0.5f

    invoke-virtual {v1, v6}, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->setEndSize(F)V

    .line 205
    invoke-virtual {v1, v10}, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->setImagesX(I)V

    .line 206
    invoke-virtual {v1, v10}, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->setImagesY(I)V

    .line 207
    const-string v6, "spark.png"

    invoke-static {v6}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->setImageName(Ljava/lang/String;)V

    .line 209
    invoke-virtual {v1, v11}, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->setEnabled(Z)V

    .line 211
    invoke-virtual {p0, v1}, Lcom/smartisanos/launcher/view/FlagDismissAnimation;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 213
    invoke-virtual {v1}, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v3

    .line 214
    .local v3, "rs":Lcom/smartisanos/smengine/RenderState;
    invoke-virtual {v3, v10}, Lcom/smartisanos/smengine/RenderState;->setIsEnableBlend(Z)V

    .line 215
    invoke-virtual {v3, v11}, Lcom/smartisanos/smengine/RenderState;->setIsEnableDepthTest(Z)V

    .line 216
    invoke-virtual {v3, v10}, Lcom/smartisanos/smengine/RenderState;->setIsUseVBO(Z)V

    .line 217
    invoke-virtual {v3, v10}, Lcom/smartisanos/smengine/RenderState;->setBlendMode(I)V

    .line 218
    invoke-static {}, Lcom/smartisanos/launcher/view/LayerManager;->getInstance()Lcom/smartisanos/launcher/view/LayerManager;

    move-result-object v6

    iget-object v7, p0, Lcom/smartisanos/launcher/view/FlagDismissAnimation;->mCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/Cell;->getLayStatus()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/smartisanos/launcher/view/LayerManager;->getCellLayer(I)Lcom/smartisanos/launcher/view/LayerManager$CellLayer;

    move-result-object v0

    .line 219
    .local v0, "cellLayer":Lcom/smartisanos/launcher/view/LayerManager$CellLayer;
    iget v6, v0, Lcom/smartisanos/launcher/view/LayerManager$CellLayer;->FLAG_DISMISS_ANIMATION:I

    invoke-virtual {v1, v6}, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->setLayer(I)V

    .line 220
    invoke-virtual {v1, v10}, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->setRenderQueue(I)V

    .line 221
    return-object v1
.end method

.method private createEmitters()V
    .locals 3

    .prologue
    .line 176
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    .line 177
    invoke-direct {p0, v1}, Lcom/smartisanos/launcher/view/FlagDismissAnimation;->createEmitter(I)Lcom/smartisanos/smengine/myparticle/ParticleEmitter;

    move-result-object v0

    .line 178
    .local v0, "emitter":Lcom/smartisanos/smengine/myparticle/ParticleEmitter;
    invoke-virtual {v0}, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->updateGeometricState()V

    .line 179
    iget-object v2, p0, Lcom/smartisanos/launcher/view/FlagDismissAnimation;->mParticleEmitters:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/World;->getParticleManager()Lcom/smartisanos/smengine/myparticle/ParticleManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/smartisanos/smengine/myparticle/ParticleManager;->addParticleEmitter(Lcom/smartisanos/smengine/myparticle/ParticleEmitter;)Z

    .line 176
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 182
    .end local v0    # "emitter":Lcom/smartisanos/smengine/myparticle/ParticleEmitter;
    :cond_0
    return-void
.end method

.method private onEmitterFinish()V
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/smartisanos/launcher/view/FlagDismissAnimation;->mCell:Lcom/smartisanos/launcher/view/Cell;

    iget v1, p0, Lcom/smartisanos/launcher/view/FlagDismissAnimation;->mFlagType:I

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Cell;->clearFlag(I)V

    .line 243
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/FlagDismissAnimation;->clearEmitter()V

    .line 244
    return-void
.end method

.method private startEmitters()V
    .locals 3

    .prologue
    .line 225
    iget-object v1, p0, Lcom/smartisanos/launcher/view/FlagDismissAnimation;->mParticleEmitters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;

    .line 226
    .local v0, "emitter":Lcom/smartisanos/smengine/myparticle/ParticleEmitter;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->setEnabled(Z)V

    .line 227
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->emitAllParticles(Z)V

    goto :goto_0

    .line 229
    .end local v0    # "emitter":Lcom/smartisanos/smengine/myparticle/ParticleEmitter;
    :cond_0
    return-void
.end method


.method public draw(Lcom/smartisanos/smengine/Camera;)V
    .locals 3
    .param p1, "c"    # Lcom/smartisanos/smengine/Camera;

    .prologue
    .line 169
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/FlagDismissAnimation;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 170
    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/FlagDismissAnimation;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    .line 171
    .local v1, "node":Lcom/smartisanos/smengine/SceneNode;
    invoke-virtual {v1, p1}, Lcom/smartisanos/smengine/SceneNode;->draw(Lcom/smartisanos/smengine/Camera;)V

    .line 169
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 173
    .end local v1    # "node":Lcom/smartisanos/smengine/SceneNode;
    :cond_0
    return-void
.end method

.method public getProgress()F
    .locals 1

    .prologue
    .line 278
    iget v0, p0, Lcom/smartisanos/launcher/view/FlagDismissAnimation;->mProgress:F

    return v0
.end method

.method public isOnPlaying()Z
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/smartisanos/launcher/view/FlagDismissAnimation;->mTween:Laurelienribon/tweenengine/Tween;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public play(Laurelienribon/tweenengine/Timeline;)V
    .locals 6
    .param p1, "timeline"    # Laurelienribon/tweenengine/Timeline;

    .prologue
    const v5, 0x3dcccccd    # 0.1f

    .line 128
    const v2, 0x3c8b4396    # 0.017f

    .line 129
    .local v2, "perFrameTime":F
    iget v3, p0, Lcom/smartisanos/launcher/view/FlagDismissAnimation;->targetWidth:F

    sget v4, Lcom/smartisanos/launcher/view/FlagDismissAnimation$FlagParticle;->mTestAnimTime:F

    mul-float/2addr v3, v4

    add-float/2addr v3, v5

    sget v4, Lcom/smartisanos/launcher/view/FlagDismissAnimation$FlagParticle;->mTestLifeH:F

    add-float/2addr v3, v4

    sput v3, Lcom/smartisanos/launcher/view/FlagDismissAnimation;->DURATION:F

    .line 131
    sget v3, Lcom/smartisanos/launcher/view/FlagDismissAnimation$FlagParticle;->mTestParticleNumPerFrame:I

    int-to-float v3, v3

    div-float/2addr v3, v2

    float-to-int v3, v3

    sput v3, Lcom/smartisanos/launcher/view/FlagDismissAnimation;->NUM_PARITCLE_PER_SECOND_PER_EMITTER:I

    .line 133
    iget v3, p0, Lcom/smartisanos/launcher/view/FlagDismissAnimation;->targetWidth:F

    sget v4, Lcom/smartisanos/launcher/view/FlagDismissAnimation$FlagParticle;->mTestAnimTime:F

    mul-float/2addr v3, v4

    add-float/2addr v3, v5

    div-float/2addr v3, v2

    float-to-int v1, v3

    .line 135
    .local v1, "frameNum":I
    sget v3, Lcom/smartisanos/launcher/view/FlagDismissAnimation$FlagParticle;->mTestLifeL:F

    sget v4, Lcom/smartisanos/launcher/view/FlagDismissAnimation$FlagParticle;->mTestLifeH:F

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v4, v2

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 137
    .local v0, "dismissFrameNum":I
    if-le v0, v1, :cond_0

    .end local v1    # "frameNum":I
    :goto_0
    sget v3, Lcom/smartisanos/launcher/view/FlagDismissAnimation$FlagParticle;->mTestParticleNumPerFrame:I

    mul-int/2addr v3, v1

    sput v3, Lcom/smartisanos/launcher/view/FlagDismissAnimation;->NUM_PARITCLE_PER_EMITTER:I

    .line 138
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/FlagDismissAnimation;->clearEmitter()V

    .line 139
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/FlagDismissAnimation;->createEmitters()V

    .line 140
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/smartisanos/launcher/view/FlagDismissAnimation;->setProgress(F)V

    .line 141
    const/4 v3, 0x0

    sget v4, Lcom/smartisanos/launcher/view/FlagDismissAnimation;->DURATION:F

    invoke-static {p0, v3, v4}, Laurelienribon/tweenengine/Tween;->to(Ljava/lang/Object;IF)Laurelienribon/tweenengine/Tween;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Laurelienribon/tweenengine/Tween;->target(F)Laurelienribon/tweenengine/Tween;

    move-result-object v3

    sget-object v4, Laurelienribon/tweenengine/equations/Linear;->INOUT:Laurelienribon/tweenengine/equations/Linear;

    invoke-virtual {v3, v4}, Laurelienribon/tweenengine/Tween;->ease(Laurelienribon/tweenengine/TweenEquation;)Laurelienribon/tweenengine/Tween;

    move-result-object v3

    const/16 v4, 0xff

    invoke-virtual {v3, v4}, Laurelienribon/tweenengine/Tween;->setCallbackTriggers(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laurelienribon/tweenengine/Tween;

    new-instance v4, Lcom/smartisanos/launcher/view/FlagDismissAnimation$1;

    invoke-direct {v4, p0}, Lcom/smartisanos/launcher/view/FlagDismissAnimation$1;-><init>(Lcom/smartisanos/launcher/view/FlagDismissAnimation;)V

    invoke-virtual {v3, v4}, Laurelienribon/tweenengine/Tween;->setCallback(Laurelienribon/tweenengine/TweenCallback;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laurelienribon/tweenengine/Tween;

    iput-object v3, p0, Lcom/smartisanos/launcher/view/FlagDismissAnimation;->mTween:Laurelienribon/tweenengine/Tween;

    .line 159
    iget-object v3, p0, Lcom/smartisanos/launcher/view/FlagDismissAnimation;->mTween:Laurelienribon/tweenengine/Tween;

    invoke-virtual {p1, v3}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    .line 161
    return-void

    .restart local v1    # "frameNum":I
    :cond_0
    move v1, v0

    .line 137
    goto :goto_0
.end method

.method public setProgress(F)V
    .locals 11
    .param p1, "progress"    # F

    .prologue
    const/high16 v10, 0x40000000    # 2.0f

    const/high16 v9, 0x3f800000    # 1.0f

    .line 247
    iput p1, p0, Lcom/smartisanos/launcher/view/FlagDismissAnimation;->mProgress:F

    .line 249
    sget v6, Lcom/smartisanos/launcher/view/FlagDismissAnimation;->DURATION:F

    mul-float/2addr v6, p1

    sget v7, Lcom/smartisanos/launcher/view/FlagDismissAnimation;->DURATION:F

    sget v8, Lcom/smartisanos/launcher/view/FlagDismissAnimation$FlagParticle;->mTestLifeH:F

    sub-float/2addr v7, v8

    div-float p1, v6, v7

    .line 251
    iget-object v6, p0, Lcom/smartisanos/launcher/view/FlagDismissAnimation;->mTween:Laurelienribon/tweenengine/Tween;

    if-eqz v6, :cond_1

    .line 252
    iget v6, p0, Lcom/smartisanos/launcher/view/FlagDismissAnimation;->targetStart:F

    iget v7, p0, Lcom/smartisanos/launcher/view/FlagDismissAnimation;->targetStart:F

    mul-float/2addr v7, v10

    iget v8, p0, Lcom/smartisanos/launcher/view/FlagDismissAnimation;->targetWidth:F

    add-float/2addr v7, v8

    div-float v4, v6, v7

    .line 253
    .local v4, "startProcess":F
    mul-float v6, v10, v4

    sub-float v6, v9, v6

    mul-float/2addr v6, p1

    add-float v3, v4, v6

    .line 254
    .local v3, "realProcess":F
    cmpl-float v6, v3, v9

    if-lez v6, :cond_0

    .line 255
    const/high16 v3, 0x3f800000    # 1.0f

    .line 257
    :cond_0
    new-instance v5, Lcom/smartisanos/smengine/math/Vector2f;

    invoke-direct {v5, v3, v3}, Lcom/smartisanos/smengine/math/Vector2f;-><init>(FF)V

    .line 258
    .local v5, "v":Lcom/smartisanos/smengine/math/Vector2f;
    iget-object v6, p0, Lcom/smartisanos/launcher/view/FlagDismissAnimation;->mFlag:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v6}, Lcom/smartisanos/smengine/SceneNode;->getMaterial()Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v2

    .line 259
    .local v2, "m":Lcom/smartisanos/smengine/mymaterial/Material;
    if-eqz v2, :cond_1

    .line 260
    const/4 v6, 0x6

    invoke-virtual {v2, v6, v5}, Lcom/smartisanos/smengine/mymaterial/Material;->setParam(ILjava/lang/Object;)V

    .line 263
    .end local v2    # "m":Lcom/smartisanos/smengine/mymaterial/Material;
    .end local v3    # "realProcess":F
    .end local v4    # "startProcess":F
    .end local v5    # "v":Lcom/smartisanos/smengine/math/Vector2f;
    :cond_1
    iget-object v6, p0, Lcom/smartisanos/launcher/view/FlagDismissAnimation;->mParticleEmitters:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;

    .line 264
    .local v1, "emitter":Lcom/smartisanos/smengine/myparticle/ParticleEmitter;
    invoke-virtual {v1}, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->getShape()Lcom/smartisanos/smengine/myparticle/EmitterShape;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/smengine/myparticle/CustomShape;

    .line 265
    .local v0, "cs":Lcom/smartisanos/smengine/myparticle/CustomShape;
    move v3, p1

    .line 266
    .restart local v3    # "realProcess":F
    cmpl-float v7, v3, v9

    if-lez v7, :cond_2

    .line 267
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->setParticlesPerSec(F)V

    .line 268
    const/high16 v3, 0x3f800000    # 1.0f

    .line 272
    :goto_1
    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/myparticle/CustomShape;->updateProcess(F)V

    goto :goto_0

    .line 270
    :cond_2
    sget v7, Lcom/smartisanos/launcher/view/FlagDismissAnimation;->NUM_PARITCLE_PER_SECOND_PER_EMITTER:I

    int-to-float v7, v7

    invoke-virtual {v1, v7}, Lcom/smartisanos/smengine/myparticle/ParticleEmitter;->setParticlesPerSec(F)V

    goto :goto_1

    .line 275
    .end local v0    # "cs":Lcom/smartisanos/smengine/myparticle/CustomShape;
    .end local v1    # "emitter":Lcom/smartisanos/smengine/myparticle/ParticleEmitter;
    .end local v3    # "realProcess":F
    :cond_3
    return-void
.end method
