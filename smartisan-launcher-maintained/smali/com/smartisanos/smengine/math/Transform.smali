.class public final Lcom/smartisanos/smengine/math/Transform;
.super Ljava/lang/Object;
.source "Transform.java"

.implements Ljava/lang/Cloneable;


.field public static final IDENTITY:Lcom/smartisanos/smengine/math/Transform;

.field static final serialVersionUID:J = 0x1L


.field private mRotMatrix:Lcom/smartisanos/smengine/math/Matrix3f;

.field private mWorldMatrix:Lcom/smartisanos/smengine/math/Matrix4f;

.field private rot:Lcom/smartisanos/smengine/math/Quaternion;

.field private scale:Lcom/smartisanos/smengine/math/Vector3f;

.field private skew:Lcom/smartisanos/smengine/math/Vector3f;

.field private translation:Lcom/smartisanos/smengine/math/Vector3f;


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lcom/smartisanos/smengine/math/Transform;

    invoke-direct {v0}, Lcom/smartisanos/smengine/math/Transform;-><init>()V

    sput-object v0, Lcom/smartisanos/smengine/math/Transform;->IDENTITY:Lcom/smartisanos/smengine/math/Transform;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 75
    sget-object v0, Lcom/smartisanos/smengine/math/Vector3f;->ZERO:Lcom/smartisanos/smengine/math/Vector3f;

    sget-object v1, Lcom/smartisanos/smengine/math/Quaternion;->IDENTITY:Lcom/smartisanos/smengine/math/Quaternion;

    invoke-direct {p0, v0, v1}, Lcom/smartisanos/smengine/math/Transform;-><init>(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Quaternion;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Lcom/smartisanos/smengine/math/Quaternion;)V
    .locals 1
    .param p1, "rot"    # Lcom/smartisanos/smengine/math/Quaternion;

    .prologue
    .line 71
    sget-object v0, Lcom/smartisanos/smengine/math/Vector3f;->ZERO:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {p0, v0, p1}, Lcom/smartisanos/smengine/math/Transform;-><init>(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Quaternion;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Lcom/smartisanos/smengine/math/Vector3f;)V
    .locals 1
    .param p1, "translation"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 67
    sget-object v0, Lcom/smartisanos/smengine/math/Quaternion;->IDENTITY:Lcom/smartisanos/smengine/math/Quaternion;

    invoke-direct {p0, p1, v0}, Lcom/smartisanos/smengine/math/Transform;-><init>(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Quaternion;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Quaternion;)V
    .locals 2
    .param p1, "translation"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p2, "rot"    # Lcom/smartisanos/smengine/math/Quaternion;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lcom/smartisanos/smengine/math/Quaternion;

    invoke-direct {v0}, Lcom/smartisanos/smengine/math/Quaternion;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/math/Transform;->rot:Lcom/smartisanos/smengine/math/Quaternion;

    .line 50
    new-instance v0, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v0}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/math/Transform;->translation:Lcom/smartisanos/smengine/math/Vector3f;

    .line 51
    new-instance v0, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v0, v1, v1, v1}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    iput-object v0, p0, Lcom/smartisanos/smengine/math/Transform;->scale:Lcom/smartisanos/smengine/math/Vector3f;

    .line 53
    new-instance v0, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v0}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/math/Transform;->skew:Lcom/smartisanos/smengine/math/Vector3f;

    .line 54
    new-instance v0, Lcom/smartisanos/smengine/math/Matrix3f;

    invoke-direct {v0}, Lcom/smartisanos/smengine/math/Matrix3f;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/math/Transform;->mRotMatrix:Lcom/smartisanos/smengine/math/Matrix3f;

    .line 57
    iget-object v0, p0, Lcom/smartisanos/smengine/math/Transform;->translation:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/math/Vector3f;->set(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    .line 58
    iget-object v0, p0, Lcom/smartisanos/smengine/math/Transform;->rot:Lcom/smartisanos/smengine/math/Quaternion;

    invoke-virtual {v0, p2}, Lcom/smartisanos/smengine/math/Quaternion;->set(Lcom/smartisanos/smengine/math/Quaternion;)Lcom/smartisanos/smengine/math/Quaternion;

    .line 59
    return-void
.end method

.method public constructor <init>(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Quaternion;Lcom/smartisanos/smengine/math/Vector3f;)V
    .locals 1
    .param p1, "translation"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p2, "rot"    # Lcom/smartisanos/smengine/math/Quaternion;
    .param p3, "scale"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/smartisanos/smengine/math/Transform;-><init>(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Quaternion;)V

    .line 63
    iget-object v0, p0, Lcom/smartisanos/smengine/math/Transform;->scale:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {v0, p3}, Lcom/smartisanos/smengine/math/Vector3f;->set(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    .line 64
    return-void
.end method


.method public clone()Lcom/smartisanos/smengine/math/Transform;
    .locals 3

    .prologue
    .line 404
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/smengine/math/Transform;

    .line 405
    .local v1, "tq":Lcom/smartisanos/smengine/math/Transform;
    iget-object v2, p0, Lcom/smartisanos/smengine/math/Transform;->rot:Lcom/smartisanos/smengine/math/Quaternion;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/math/Quaternion;->clone()Lcom/smartisanos/smengine/math/Quaternion;

    move-result-object v2

    iput-object v2, v1, Lcom/smartisanos/smengine/math/Transform;->rot:Lcom/smartisanos/smengine/math/Quaternion;

    .line 406
    iget-object v2, p0, Lcom/smartisanos/smengine/math/Transform;->scale:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/math/Vector3f;->clone()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v2

    iput-object v2, v1, Lcom/smartisanos/smengine/math/Transform;->scale:Lcom/smartisanos/smengine/math/Vector3f;

    .line 407
    iget-object v2, p0, Lcom/smartisanos/smengine/math/Transform;->translation:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/math/Vector3f;->clone()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v2

    iput-object v2, v1, Lcom/smartisanos/smengine/math/Transform;->translation:Lcom/smartisanos/smengine/math/Vector3f;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 408
    return-object v1

    .line 409
    .end local v1    # "tq":Lcom/smartisanos/smengine/math/Transform;
    :catch_0
    move-exception v0

    .line 410
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
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
    invoke-virtual {p0}, Lcom/smartisanos/smengine/math/Transform;->clone()Lcom/smartisanos/smengine/math/Transform;

    move-result-object v0

    return-object v0
.end method

.method public combineWithParent(Lcom/smartisanos/smengine/math/Transform;)Lcom/smartisanos/smengine/math/Transform;
    .locals 4
    .param p1, "parent"    # Lcom/smartisanos/smengine/math/Transform;

    .prologue
    .line 265
    iget-object v1, p1, Lcom/smartisanos/smengine/math/Transform;->mWorldMatrix:Lcom/smartisanos/smengine/math/Matrix4f;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/smartisanos/smengine/math/Transform;->hasSkew()Z

    move-result v1

    if-nez v1, :cond_1

    .line 266
    iget-object v1, p1, Lcom/smartisanos/smengine/math/Transform;->rot:Lcom/smartisanos/smengine/math/Quaternion;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/math/Quaternion;->isIdentity()Z

    move-result v1

    if-nez v1, :cond_0

    .line 267
    iget-object v1, p0, Lcom/smartisanos/smengine/math/Transform;->scale:Lcom/smartisanos/smengine/math/Vector3f;

    iget-object v2, p1, Lcom/smartisanos/smengine/math/Transform;->scale:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/math/Vector3f;->multLocal(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    .line 268
    iget-object v1, p1, Lcom/smartisanos/smengine/math/Transform;->rot:Lcom/smartisanos/smengine/math/Quaternion;

    iget-object v2, p0, Lcom/smartisanos/smengine/math/Transform;->rot:Lcom/smartisanos/smengine/math/Quaternion;

    iget-object v3, p0, Lcom/smartisanos/smengine/math/Transform;->rot:Lcom/smartisanos/smengine/math/Quaternion;

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/smengine/math/Quaternion;->mult(Lcom/smartisanos/smengine/math/Quaternion;Lcom/smartisanos/smengine/math/Quaternion;)Lcom/smartisanos/smengine/math/Quaternion;

    .line 269
    iget-object v1, p0, Lcom/smartisanos/smengine/math/Transform;->translation:Lcom/smartisanos/smengine/math/Vector3f;

    iget-object v2, p1, Lcom/smartisanos/smengine/math/Transform;->scale:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/math/Vector3f;->multLocal(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    .line 270
    iget-object v1, p1, Lcom/smartisanos/smengine/math/Transform;->rot:Lcom/smartisanos/smengine/math/Quaternion;

    iget-object v2, p0, Lcom/smartisanos/smengine/math/Transform;->translation:Lcom/smartisanos/smengine/math/Vector3f;

    .line 272
    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/math/Quaternion;->multLocal(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v1

    iget-object v2, p1, Lcom/smartisanos/smengine/math/Transform;->translation:Lcom/smartisanos/smengine/math/Vector3f;

    .line 273
    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/math/Vector3f;->addLocal(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    .line 291
    :goto_0
    return-object p0

    .line 275
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/smengine/math/Transform;->scale:Lcom/smartisanos/smengine/math/Vector3f;

    iget-object v2, p1, Lcom/smartisanos/smengine/math/Transform;->scale:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/math/Vector3f;->multLocal(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    .line 276
    iget-object v1, p0, Lcom/smartisanos/smengine/math/Transform;->translation:Lcom/smartisanos/smengine/math/Vector3f;

    iget-object v2, p1, Lcom/smartisanos/smengine/math/Transform;->scale:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/math/Vector3f;->multLocal(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    .line 277
    iget-object v1, p0, Lcom/smartisanos/smengine/math/Transform;->translation:Lcom/smartisanos/smengine/math/Vector3f;

    iget-object v2, p1, Lcom/smartisanos/smengine/math/Transform;->translation:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/math/Vector3f;->addLocal(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    goto :goto_0

    .line 280
    :cond_1
    iget-object v1, p0, Lcom/smartisanos/smengine/math/Transform;->mWorldMatrix:Lcom/smartisanos/smengine/math/Matrix4f;

    if-nez v1, :cond_2

    .line 281
    new-instance v1, Lcom/smartisanos/smengine/math/Matrix4f;

    invoke-direct {v1}, Lcom/smartisanos/smengine/math/Matrix4f;-><init>()V

    iput-object v1, p0, Lcom/smartisanos/smengine/math/Transform;->mWorldMatrix:Lcom/smartisanos/smengine/math/Matrix4f;

    .line 283
    :cond_2
    iget-object v1, p0, Lcom/smartisanos/smengine/math/Transform;->mWorldMatrix:Lcom/smartisanos/smengine/math/Matrix4f;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/math/Matrix4f;->loadIdentity()V

    .line 284
    iget-object v0, p1, Lcom/smartisanos/smengine/math/Transform;->mWorldMatrix:Lcom/smartisanos/smengine/math/Matrix4f;

    .line 285
    .local v0, "parentMatrix":Lcom/smartisanos/smengine/math/Matrix4f;
    if-nez v0, :cond_3

    .line 286
    invoke-virtual {p1}, Lcom/smartisanos/smengine/math/Transform;->toMatrix4f()Lcom/smartisanos/smengine/math/Matrix4f;

    move-result-object v0

    .line 288
    :cond_3
    iget-object v1, p0, Lcom/smartisanos/smengine/math/Transform;->mWorldMatrix:Lcom/smartisanos/smengine/math/Matrix4f;

    invoke-virtual {p0, v1}, Lcom/smartisanos/smengine/math/Transform;->toMatrix4f(Lcom/smartisanos/smengine/math/Matrix4f;)Lcom/smartisanos/smengine/math/Matrix4f;

    .line 289
    iget-object v1, p0, Lcom/smartisanos/smengine/math/Transform;->mWorldMatrix:Lcom/smartisanos/smengine/math/Matrix4f;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/math/Matrix4f;->mult(Lcom/smartisanos/smengine/math/Matrix4f;)Lcom/smartisanos/smengine/math/Matrix4f;

    move-result-object v1

    iput-object v1, p0, Lcom/smartisanos/smengine/math/Transform;->mWorldMatrix:Lcom/smartisanos/smengine/math/Matrix4f;

    goto :goto_0
.end method

.method public getData([F)V
    .locals 2
    .param p1, "data"    # [F

    .prologue
    .line 78
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/smartisanos/smengine/math/Transform;->translation:Lcom/smartisanos/smengine/math/Vector3f;

    iget v1, v1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    aput v1, p1, v0

    .line 79
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/smartisanos/smengine/math/Transform;->translation:Lcom/smartisanos/smengine/math/Vector3f;

    iget v1, v1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    aput v1, p1, v0

    .line 80
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/smartisanos/smengine/math/Transform;->translation:Lcom/smartisanos/smengine/math/Vector3f;

    iget v1, v1, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    aput v1, p1, v0

    .line 81
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/smartisanos/smengine/math/Transform;->scale:Lcom/smartisanos/smengine/math/Vector3f;

    iget v1, v1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    aput v1, p1, v0

    .line 82
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/smartisanos/smengine/math/Transform;->scale:Lcom/smartisanos/smengine/math/Vector3f;

    iget v1, v1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    aput v1, p1, v0

    .line 83
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/smartisanos/smengine/math/Transform;->scale:Lcom/smartisanos/smengine/math/Vector3f;

    iget v1, v1, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    aput v1, p1, v0

    .line 84
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/smartisanos/smengine/math/Transform;->rot:Lcom/smartisanos/smengine/math/Quaternion;

    iget v1, v1, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    aput v1, p1, v0

    .line 85
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/smartisanos/smengine/math/Transform;->rot:Lcom/smartisanos/smengine/math/Quaternion;

    iget v1, v1, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    aput v1, p1, v0

    .line 86
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/smartisanos/smengine/math/Transform;->rot:Lcom/smartisanos/smengine/math/Quaternion;

    iget v1, v1, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    aput v1, p1, v0

    .line 87
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/smartisanos/smengine/math/Transform;->rot:Lcom/smartisanos/smengine/math/Quaternion;

    iget v1, v1, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    aput v1, p1, v0

    .line 88
    return-void
.end method

.method public getRotation()Lcom/smartisanos/smengine/math/Quaternion;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/smartisanos/smengine/math/Transform;->rot:Lcom/smartisanos/smengine/math/Quaternion;

    return-object v0
.end method

.method public getRotation(Lcom/smartisanos/smengine/math/Quaternion;)Lcom/smartisanos/smengine/math/Quaternion;
    .locals 1
    .param p1, "quat"    # Lcom/smartisanos/smengine/math/Quaternion;

    .prologue
    .line 220
    if-nez p1, :cond_0

    new-instance p1, Lcom/smartisanos/smengine/math/Quaternion;

    .end local p1    # "quat":Lcom/smartisanos/smengine/math/Quaternion;
    invoke-direct {p1}, Lcom/smartisanos/smengine/math/Quaternion;-><init>()V

    .line 221
    .restart local p1    # "quat":Lcom/smartisanos/smengine/math/Quaternion;
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/smengine/math/Transform;->rot:Lcom/smartisanos/smengine/math/Quaternion;

    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/math/Quaternion;->set(Lcom/smartisanos/smengine/math/Quaternion;)Lcom/smartisanos/smengine/math/Quaternion;

    .line 222
    return-object p1
.end method

.method public getScale()Lcom/smartisanos/smengine/math/Vector3f;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/smartisanos/smengine/math/Transform;->scale:Lcom/smartisanos/smengine/math/Vector3f;

    return-object v0
.end method

.method public getScale(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;
    .locals 1
    .param p1, "scale"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 240
    if-nez p1, :cond_0

    new-instance p1, Lcom/smartisanos/smengine/math/Vector3f;

    .end local p1    # "scale":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-direct {p1}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 241
    .restart local p1    # "scale":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/smengine/math/Transform;->scale:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/math/Vector3f;->set(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    .line 242
    return-object p1
.end method

.method public getTranslation()Lcom/smartisanos/smengine/math/Vector3f;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/smartisanos/smengine/math/Transform;->translation:Lcom/smartisanos/smengine/math/Vector3f;

    return-object v0
.end method

.method public getTranslation(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;
    .locals 1
    .param p1, "trans"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 208
    if-nez p1, :cond_0

    new-instance p1, Lcom/smartisanos/smengine/math/Vector3f;

    .end local p1    # "trans":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-direct {p1}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 209
    .restart local p1    # "trans":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/smengine/math/Transform;->translation:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/math/Vector3f;->set(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    .line 210
    return-object p1
.end method

.method public getWorldMatrix()Lcom/smartisanos/smengine/math/Matrix4f;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/smartisanos/smengine/math/Transform;->mWorldMatrix:Lcom/smartisanos/smengine/math/Matrix4f;

    return-object v0
.end method

.method public hasRotation()Z
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/smartisanos/smengine/math/Transform;->rot:Lcom/smartisanos/smengine/math/Quaternion;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/math/Quaternion;->isIdentity()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSkew()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 257
    iget-object v0, p0, Lcom/smartisanos/smengine/math/Transform;->skew:Lcom/smartisanos/smengine/math/Vector3f;

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/smartisanos/smengine/math/Transform;->skew:Lcom/smartisanos/smengine/math/Vector3f;

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public interpolateTransforms(Lcom/smartisanos/smengine/math/Transform;Lcom/smartisanos/smengine/math/Transform;F)V
    .locals 3
    .param p1, "t1"    # Lcom/smartisanos/smengine/math/Transform;
    .param p2, "t2"    # Lcom/smartisanos/smengine/math/Transform;
    .param p3, "delta"    # F

    .prologue
    .line 252
    iget-object v0, p0, Lcom/smartisanos/smengine/math/Transform;->rot:Lcom/smartisanos/smengine/math/Quaternion;

    iget-object v1, p1, Lcom/smartisanos/smengine/math/Transform;->rot:Lcom/smartisanos/smengine/math/Quaternion;

    iget-object v2, p2, Lcom/smartisanos/smengine/math/Transform;->rot:Lcom/smartisanos/smengine/math/Quaternion;

    invoke-virtual {v0, v1, v2, p3}, Lcom/smartisanos/smengine/math/Quaternion;->slerp(Lcom/smartisanos/smengine/math/Quaternion;Lcom/smartisanos/smengine/math/Quaternion;F)Lcom/smartisanos/smengine/math/Quaternion;

    .line 253
    iget-object v0, p0, Lcom/smartisanos/smengine/math/Transform;->translation:Lcom/smartisanos/smengine/math/Vector3f;

    iget-object v1, p1, Lcom/smartisanos/smengine/math/Transform;->translation:Lcom/smartisanos/smengine/math/Vector3f;

    iget-object v2, p2, Lcom/smartisanos/smengine/math/Transform;->translation:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {v0, v1, v2, p3}, Lcom/smartisanos/smengine/math/Vector3f;->interpolateLocal(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;F)Lcom/smartisanos/smengine/math/Vector3f;

    .line 254
    iget-object v0, p0, Lcom/smartisanos/smengine/math/Transform;->scale:Lcom/smartisanos/smengine/math/Vector3f;

    iget-object v1, p1, Lcom/smartisanos/smengine/math/Transform;->scale:Lcom/smartisanos/smengine/math/Vector3f;

    iget-object v2, p2, Lcom/smartisanos/smengine/math/Transform;->scale:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {v0, v1, v2, p3}, Lcom/smartisanos/smengine/math/Vector3f;->interpolateLocal(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;F)Lcom/smartisanos/smengine/math/Vector3f;

    .line 255
    return-void
.end method

.method public inverse()Lcom/smartisanos/smengine/math/Transform;
    .locals 6

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 345
    new-instance v1, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v1}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 346
    .local v1, "t":Lcom/smartisanos/smengine/math/Vector3f;
    new-instance v2, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v2, v3, v3, v3}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    invoke-virtual {p0, v2, v1}, Lcom/smartisanos/smengine/math/Transform;->transformInverseVector(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    .line 347
    new-instance v0, Lcom/smartisanos/smengine/math/Transform;

    invoke-direct {v0}, Lcom/smartisanos/smengine/math/Transform;-><init>()V

    .line 348
    .local v0, "newTransform":Lcom/smartisanos/smengine/math/Transform;
    iget-object v2, p0, Lcom/smartisanos/smengine/math/Transform;->scale:Lcom/smartisanos/smengine/math/Vector3f;

    iget v2, v2, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    div-float v2, v5, v2

    iget-object v3, p0, Lcom/smartisanos/smengine/math/Transform;->scale:Lcom/smartisanos/smengine/math/Vector3f;

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    div-float v3, v5, v3

    iget-object v4, p0, Lcom/smartisanos/smengine/math/Transform;->scale:Lcom/smartisanos/smengine/math/Vector3f;

    iget v4, v4, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    div-float v4, v5, v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/smartisanos/smengine/math/Transform;->setScale(FFF)Lcom/smartisanos/smengine/math/Transform;

    .line 349
    iget-object v2, p0, Lcom/smartisanos/smengine/math/Transform;->rot:Lcom/smartisanos/smengine/math/Quaternion;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/math/Quaternion;->inverse()Lcom/smartisanos/smengine/math/Quaternion;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/math/Transform;->setRotation(Lcom/smartisanos/smengine/math/Quaternion;)Lcom/smartisanos/smengine/math/Transform;

    .line 350
    iget v2, v1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v3, v1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v4, v1, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-virtual {v0, v2, v3, v4}, Lcom/smartisanos/smengine/math/Transform;->setTranslation(FFF)Lcom/smartisanos/smengine/math/Transform;

    .line 351
    return-object v0
.end method

.method public loadIdentity()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 374
    iget-object v0, p0, Lcom/smartisanos/smengine/math/Transform;->translation:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {v0, v1, v1, v1}, Lcom/smartisanos/smengine/math/Vector3f;->set(FFF)Lcom/smartisanos/smengine/math/Vector3f;

    .line 375
    iget-object v0, p0, Lcom/smartisanos/smengine/math/Transform;->scale:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {v0, v2, v2, v2}, Lcom/smartisanos/smengine/math/Vector3f;->set(FFF)Lcom/smartisanos/smengine/math/Vector3f;

    .line 376
    iget-object v0, p0, Lcom/smartisanos/smengine/math/Transform;->rot:Lcom/smartisanos/smengine/math/Quaternion;

    invoke-virtual {v0, v1, v1, v1, v2}, Lcom/smartisanos/smengine/math/Quaternion;->set(FFFF)Lcom/smartisanos/smengine/math/Quaternion;

    .line 377
    return-void
.end method

.method public scaleRotateMatrix()Lcom/smartisanos/smengine/math/Matrix4f;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 113
    new-instance v0, Lcom/smartisanos/smengine/math/Matrix4f;

    invoke-direct {v0}, Lcom/smartisanos/smengine/math/Matrix4f;-><init>()V

    .line 114
    .local v0, "m":Lcom/smartisanos/smengine/math/Matrix4f;
    iget-object v2, p0, Lcom/smartisanos/smengine/math/Transform;->rot:Lcom/smartisanos/smengine/math/Quaternion;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/math/Quaternion;->toRotationMatrix()Lcom/smartisanos/smengine/math/Matrix3f;

    move-result-object v1

    .line 115
    .local v1, "rotM":Lcom/smartisanos/smengine/math/Matrix3f;
    new-instance v2, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v2, v3, v3, v3}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    iget-object v3, p0, Lcom/smartisanos/smengine/math/Transform;->scale:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {v0, v2, v3, v1}, Lcom/smartisanos/smengine/math/Matrix4f;->setTransform(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Matrix3f;)V

    .line 116
    return-object v0
.end method

.method public scaleRotateMatrix(Lcom/smartisanos/smengine/math/Matrix4f;)Lcom/smartisanos/smengine/math/Matrix4f;
    .locals 5
    .param p1, "m"    # Lcom/smartisanos/smengine/math/Matrix4f;

    .prologue
    const/4 v4, 0x0

    .line 119
    invoke-static {}, Lcom/smartisanos/smengine/util/TempVars;->get()Lcom/smartisanos/smengine/util/TempVars;

    move-result-object v1

    .line 120
    .local v1, "tmpVar":Lcom/smartisanos/smengine/util/TempVars;
    iget-object v0, v1, Lcom/smartisanos/smengine/util/TempVars;->tempMat3:Lcom/smartisanos/smengine/math/Matrix3f;

    .line 121
    .local v0, "rotM":Lcom/smartisanos/smengine/math/Matrix3f;
    iget-object v3, p0, Lcom/smartisanos/smengine/math/Transform;->rot:Lcom/smartisanos/smengine/math/Quaternion;

    invoke-virtual {v3, v0}, Lcom/smartisanos/smengine/math/Quaternion;->toRotationMatrix(Lcom/smartisanos/smengine/math/Matrix3f;)Lcom/smartisanos/smengine/math/Matrix3f;

    .line 122
    iget-object v2, v1, Lcom/smartisanos/smengine/util/TempVars;->vect3:Lcom/smartisanos/smengine/math/Vector3f;

    .line 123
    .local v2, "v3":Lcom/smartisanos/smengine/math/Vector3f;
    iput v4, v2, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 124
    iput v4, v2, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 125
    iput v4, v2, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    .line 126
    iget-object v3, p0, Lcom/smartisanos/smengine/math/Transform;->scale:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {p1, v2, v3, v0}, Lcom/smartisanos/smengine/math/Matrix4f;->setTransform(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Matrix3f;)V

    .line 127
    invoke-virtual {v1}, Lcom/smartisanos/smengine/util/TempVars;->release()V

    .line 128
    return-object p1
.end method

.method public set(Lcom/smartisanos/smengine/math/Transform;)Lcom/smartisanos/smengine/math/Transform;
    .locals 2
    .param p1, "matrixQuat"    # Lcom/smartisanos/smengine/math/Transform;

    .prologue
    .line 392
    iget-object v0, p0, Lcom/smartisanos/smengine/math/Transform;->translation:Lcom/smartisanos/smengine/math/Vector3f;

    iget-object v1, p1, Lcom/smartisanos/smengine/math/Transform;->translation:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/math/Vector3f;->set(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    .line 393
    iget-object v0, p0, Lcom/smartisanos/smengine/math/Transform;->rot:Lcom/smartisanos/smengine/math/Quaternion;

    iget-object v1, p1, Lcom/smartisanos/smengine/math/Transform;->rot:Lcom/smartisanos/smengine/math/Quaternion;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/math/Quaternion;->set(Lcom/smartisanos/smengine/math/Quaternion;)Lcom/smartisanos/smengine/math/Quaternion;

    .line 394
    iget-object v0, p0, Lcom/smartisanos/smengine/math/Transform;->scale:Lcom/smartisanos/smengine/math/Vector3f;

    iget-object v1, p1, Lcom/smartisanos/smengine/math/Transform;->scale:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/math/Vector3f;->set(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    .line 395
    iget-object v0, p0, Lcom/smartisanos/smengine/math/Transform;->skew:Lcom/smartisanos/smengine/math/Vector3f;

    iget-object v1, p1, Lcom/smartisanos/smengine/math/Transform;->skew:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/math/Vector3f;->set(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    .line 396
    return-object p0
.end method

.method public setRotation(FFFF)Lcom/smartisanos/smengine/math/Transform;
    .locals 1
    .param p1, "qx"    # F
    .param p2, "qy"    # F
    .param p3, "qz"    # F
    .param p4, "qw"    # F

    .prologue
    .line 99
    iget-object v0, p0, Lcom/smartisanos/smengine/math/Transform;->rot:Lcom/smartisanos/smengine/math/Quaternion;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/smartisanos/smengine/math/Quaternion;->set(FFFF)Lcom/smartisanos/smengine/math/Quaternion;

    .line 100
    return-object p0
.end method

.method public setRotation(Lcom/smartisanos/smengine/math/Quaternion;)Lcom/smartisanos/smengine/math/Transform;
    .locals 1
    .param p1, "rot"    # Lcom/smartisanos/smengine/math/Quaternion;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/smartisanos/smengine/math/Transform;->rot:Lcom/smartisanos/smengine/math/Quaternion;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/math/Quaternion;->set(Lcom/smartisanos/smengine/math/Quaternion;)Lcom/smartisanos/smengine/math/Quaternion;

    .line 96
    return-object p0
.end method

.method public setScale(F)Lcom/smartisanos/smengine/math/Transform;
    .locals 1
    .param p1, "scale"    # F

    .prologue
    .line 189
    iget-object v0, p0, Lcom/smartisanos/smengine/math/Transform;->scale:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {v0, p1, p1, p1}, Lcom/smartisanos/smengine/math/Vector3f;->set(FFF)Lcom/smartisanos/smengine/math/Vector3f;

    .line 190
    return-object p0
.end method

.method public setScale(FFF)Lcom/smartisanos/smengine/math/Transform;
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 331
    iget-object v0, p0, Lcom/smartisanos/smengine/math/Transform;->scale:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {v0, p1, p2, p3}, Lcom/smartisanos/smengine/math/Vector3f;->set(FFF)Lcom/smartisanos/smengine/math/Vector3f;

    .line 332
    return-object p0
.end method

.method public setScale(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Transform;
    .locals 1
    .param p1, "scale"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 179
    iget-object v0, p0, Lcom/smartisanos/smengine/math/Transform;->scale:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/math/Vector3f;->set(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    .line 180
    return-object p0
.end method

.method public setSkewX(F)V
    .locals 2
    .param p1, "angle"    # F

    .prologue
    .line 107
    iget-object v0, p0, Lcom/smartisanos/smengine/math/Transform;->skew:Lcom/smartisanos/smengine/math/Vector3f;

    const v1, 0x3c8efa35

    mul-float/2addr v1, p1

    invoke-static {v1}, Lcom/smartisanos/smengine/math/FastMath;->tan(F)F

    move-result v1

    iput v1, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 108
    return-void
.end method

.method public setSkewY(F)V
    .locals 2
    .param p1, "angle"    # F

    .prologue
    .line 110
    iget-object v0, p0, Lcom/smartisanos/smengine/math/Transform;->skew:Lcom/smartisanos/smengine/math/Vector3f;

    const v1, 0x3c8efa35

    mul-float/2addr v1, p1

    invoke-static {v1}, Lcom/smartisanos/smengine/math/FastMath;->tan(F)F

    move-result v1

    iput v1, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 111
    return-void
.end method

.method public setTranslation(FFF)Lcom/smartisanos/smengine/math/Transform;
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 304
    iget-object v0, p0, Lcom/smartisanos/smengine/math/Transform;->translation:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {v0, p1, p2, p3}, Lcom/smartisanos/smengine/math/Vector3f;->set(FFF)Lcom/smartisanos/smengine/math/Vector3f;

    .line 305
    return-object p0
.end method

.method public setTranslation(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Transform;
    .locals 1
    .param p1, "trans"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 161
    iget-object v0, p0, Lcom/smartisanos/smengine/math/Transform;->translation:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/math/Vector3f;->set(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    .line 162
    return-object p0
.end method

.method public setTranslationX(F)Lcom/smartisanos/smengine/math/Transform;
    .locals 1
    .param p1, "x"    # F

    .prologue
    .line 309
    iget-object v0, p0, Lcom/smartisanos/smengine/math/Transform;->translation:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/math/Vector3f;->setX(F)Lcom/smartisanos/smengine/math/Vector3f;

    .line 310
    return-object p0
.end method

.method public setTranslationY(F)Lcom/smartisanos/smengine/math/Transform;
    .locals 1
    .param p1, "y"    # F

    .prologue
    .line 314
    iget-object v0, p0, Lcom/smartisanos/smengine/math/Transform;->translation:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/math/Vector3f;->setY(F)Lcom/smartisanos/smengine/math/Vector3f;

    .line 315
    return-object p0
.end method

.method public setTranslationZ(F)Lcom/smartisanos/smengine/math/Transform;
    .locals 1
    .param p1, "z"    # F

    .prologue
    .line 319
    iget-object v0, p0, Lcom/smartisanos/smengine/math/Transform;->translation:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/math/Vector3f;->setZ(F)Lcom/smartisanos/smengine/math/Vector3f;

    .line 320
    return-object p0
.end method

.method public toMatrix4f()Lcom/smartisanos/smengine/math/Matrix4f;
    .locals 6

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/smartisanos/smengine/math/Transform;->hasSkew()Z

    move-result v3

    if-nez v3, :cond_0

    .line 132
    new-instance v0, Lcom/smartisanos/smengine/math/Matrix4f;

    invoke-direct {v0}, Lcom/smartisanos/smengine/math/Matrix4f;-><init>()V

    .line 133
    .local v0, "m":Lcom/smartisanos/smengine/math/Matrix4f;
    iget-object v3, p0, Lcom/smartisanos/smengine/math/Transform;->rot:Lcom/smartisanos/smengine/math/Quaternion;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/math/Quaternion;->toRotationMatrix()Lcom/smartisanos/smengine/math/Matrix3f;

    move-result-object v2

    .line 134
    .local v2, "rotM":Lcom/smartisanos/smengine/math/Matrix3f;
    iget-object v3, p0, Lcom/smartisanos/smengine/math/Transform;->translation:Lcom/smartisanos/smengine/math/Vector3f;

    iget-object v4, p0, Lcom/smartisanos/smengine/math/Transform;->scale:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {v0, v3, v4, v2}, Lcom/smartisanos/smengine/math/Matrix4f;->setTransform(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Matrix3f;)V

    move-object v1, v0

    .line 140
    .end local v0    # "m":Lcom/smartisanos/smengine/math/Matrix4f;
    .local v1, "m":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 137
    .end local v1    # "m":Ljava/lang/Object;
    .end local v2    # "rotM":Lcom/smartisanos/smengine/math/Matrix3f;
    :cond_0
    new-instance v0, Lcom/smartisanos/smengine/math/Matrix4f;

    invoke-direct {v0}, Lcom/smartisanos/smengine/math/Matrix4f;-><init>()V

    .line 138
    .restart local v0    # "m":Lcom/smartisanos/smengine/math/Matrix4f;
    iget-object v3, p0, Lcom/smartisanos/smengine/math/Transform;->rot:Lcom/smartisanos/smengine/math/Quaternion;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/math/Quaternion;->toRotationMatrix()Lcom/smartisanos/smengine/math/Matrix3f;

    move-result-object v2

    .line 139
    .restart local v2    # "rotM":Lcom/smartisanos/smengine/math/Matrix3f;
    iget-object v3, p0, Lcom/smartisanos/smengine/math/Transform;->translation:Lcom/smartisanos/smengine/math/Vector3f;

    iget-object v4, p0, Lcom/smartisanos/smengine/math/Transform;->scale:Lcom/smartisanos/smengine/math/Vector3f;

    iget-object v5, p0, Lcom/smartisanos/smengine/math/Transform;->skew:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {v0, v3, v4, v2, v5}, Lcom/smartisanos/smengine/math/Matrix4f;->setTransformSkewAfterScale(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Matrix3f;Lcom/smartisanos/smengine/math/Vector3f;)V

    move-object v1, v0

    .line 140
    .restart local v1    # "m":Ljava/lang/Object;
    goto :goto_0
.end method

.method public toMatrix4f(Lcom/smartisanos/smengine/math/Matrix4f;)Lcom/smartisanos/smengine/math/Matrix4f;
    .locals 4
    .param p1, "out"    # Lcom/smartisanos/smengine/math/Matrix4f;

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/smartisanos/smengine/math/Transform;->hasSkew()Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/smartisanos/smengine/math/Transform;->rot:Lcom/smartisanos/smengine/math/Quaternion;

    iget-object v1, p0, Lcom/smartisanos/smengine/math/Transform;->mRotMatrix:Lcom/smartisanos/smengine/math/Matrix3f;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/math/Quaternion;->toRotationMatrix(Lcom/smartisanos/smengine/math/Matrix3f;)Lcom/smartisanos/smengine/math/Matrix3f;

    .line 147
    iget-object v0, p0, Lcom/smartisanos/smengine/math/Transform;->translation:Lcom/smartisanos/smengine/math/Vector3f;

    iget-object v1, p0, Lcom/smartisanos/smengine/math/Transform;->scale:Lcom/smartisanos/smengine/math/Vector3f;

    iget-object v2, p0, Lcom/smartisanos/smengine/math/Transform;->mRotMatrix:Lcom/smartisanos/smengine/math/Matrix3f;

    invoke-virtual {p1, v0, v1, v2}, Lcom/smartisanos/smengine/math/Matrix4f;->setTransform(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Matrix3f;)V

    .line 152
    :goto_0
    return-object p1

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/smengine/math/Transform;->rot:Lcom/smartisanos/smengine/math/Quaternion;

    iget-object v1, p0, Lcom/smartisanos/smengine/math/Transform;->mRotMatrix:Lcom/smartisanos/smengine/math/Matrix3f;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/math/Quaternion;->toRotationMatrix(Lcom/smartisanos/smengine/math/Matrix3f;)Lcom/smartisanos/smengine/math/Matrix3f;

    .line 151
    iget-object v0, p0, Lcom/smartisanos/smengine/math/Transform;->translation:Lcom/smartisanos/smengine/math/Vector3f;

    iget-object v1, p0, Lcom/smartisanos/smengine/math/Transform;->scale:Lcom/smartisanos/smengine/math/Vector3f;

    iget-object v2, p0, Lcom/smartisanos/smengine/math/Transform;->mRotMatrix:Lcom/smartisanos/smengine/math/Matrix3f;

    iget-object v3, p0, Lcom/smartisanos/smengine/math/Transform;->skew:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/smartisanos/smengine/math/Matrix4f;->setTransformSkewAfterScale(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Matrix3f;Lcom/smartisanos/smengine/math/Vector3f;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "{ ( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/smengine/math/Transform;->translation:Lcom/smartisanos/smengine/math/Vector3f;

    iget v1, v1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/smengine/math/Transform;->translation:Lcom/smartisanos/smengine/math/Vector3f;

    iget v1, v1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/smengine/math/Transform;->translation:Lcom/smartisanos/smengine/math/Vector3f;

    iget v1, v1, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  ( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/smengine/math/Transform;->rot:Lcom/smartisanos/smengine/math/Quaternion;

    iget v1, v1, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/smengine/math/Transform;->rot:Lcom/smartisanos/smengine/math/Quaternion;

    iget v1, v1, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/smengine/math/Transform;->rot:Lcom/smartisanos/smengine/math/Quaternion;

    iget v1, v1, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/smengine/math/Transform;->rot:Lcom/smartisanos/smengine/math/Quaternion;

    iget v1, v1, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  ( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/smengine/math/Transform;->scale:Lcom/smartisanos/smengine/math/Vector3f;

    iget v1, v1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/smengine/math/Transform;->scale:Lcom/smartisanos/smengine/math/Vector3f;

    iget v1, v1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/smengine/math/Transform;->scale:Lcom/smartisanos/smengine/math/Vector3f;

    iget v1, v1, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transformInverseVector(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;
    .locals 1
    .param p1, "in"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p2, "store"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 355
    if-nez p2, :cond_0

    .line 356
    new-instance p2, Lcom/smartisanos/smengine/math/Vector3f;

    .end local p2    # "store":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-direct {p2}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 363
    .restart local p2    # "store":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/smengine/math/Transform;->translation:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {p1, v0, p2}, Lcom/smartisanos/smengine/math/Vector3f;->subtract(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    .line 364
    iget-object v0, p0, Lcom/smartisanos/smengine/math/Transform;->rot:Lcom/smartisanos/smengine/math/Quaternion;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/math/Quaternion;->inverse()Lcom/smartisanos/smengine/math/Quaternion;

    move-result-object v0

    invoke-virtual {v0, p2, p2}, Lcom/smartisanos/smengine/math/Quaternion;->mult(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    .line 365
    iget-object v0, p0, Lcom/smartisanos/smengine/math/Transform;->scale:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {p2, v0}, Lcom/smartisanos/smengine/math/Vector3f;->divideLocal(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    .line 367
    return-object p2
.end method

.method public transformVector(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;
    .locals 3
    .param p1, "in"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p2, "store"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 336
    if-nez p2, :cond_0

    .line 337
    new-instance p2, Lcom/smartisanos/smengine/math/Vector3f;

    .end local p2    # "store":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-direct {p2}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 341
    .restart local p2    # "store":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/smengine/math/Transform;->rot:Lcom/smartisanos/smengine/math/Quaternion;

    invoke-virtual {p2, p1}, Lcom/smartisanos/smengine/math/Vector3f;->set(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v1

    iget-object v2, p0, Lcom/smartisanos/smengine/math/Transform;->scale:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/math/Vector3f;->multLocal(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/smartisanos/smengine/math/Quaternion;->mult(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/smengine/math/Transform;->translation:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/math/Vector3f;->addLocal(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v0

    return-object v0
.end method
