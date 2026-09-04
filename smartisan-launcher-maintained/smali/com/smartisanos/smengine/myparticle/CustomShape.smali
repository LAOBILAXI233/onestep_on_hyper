.class public Lcom/smartisanos/smengine/myparticle/CustomShape;
.super Ljava/lang/Object;
.source "CustomShape.java"

.implements Lcom/smartisanos/smengine/myparticle/EmitterShape;


.field static final synthetic $assertionsDisabled:Z

.field private static final TAG:Ljava/lang/String; = "CustomShape"


.field private height:F

.field private len:Lcom/smartisanos/smengine/math/Vector3f;

.field private min:Lcom/smartisanos/smengine/math/Vector3f;

.field private process:F

.field private width:F


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const-class v0, Lcom/smartisanos/smengine/myparticle/CustomShape;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/smartisanos/smengine/myparticle/CustomShape;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(FF)V
    .locals 2
    .param p1, "w"    # F
    .param p2, "h"    # F

    .prologue
    const/4 v1, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput v1, p0, Lcom/smartisanos/smengine/myparticle/CustomShape;->process:F

    .line 17
    sget-boolean v0, Lcom/smartisanos/smengine/myparticle/CustomShape;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    cmpl-float v0, p1, v1

    if-lez v0, :cond_0

    cmpl-float v0, p2, v1

    if-gtz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 18
    :cond_1
    iput p1, p0, Lcom/smartisanos/smengine/myparticle/CustomShape;->width:F

    .line 19
    iput p2, p0, Lcom/smartisanos/smengine/myparticle/CustomShape;->height:F

    .line 20
    return-void
.end method


.method public deepClone()Lcom/smartisanos/smengine/myparticle/EmitterShape;
    .locals 3

    .prologue
    .line 48
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/smengine/myparticle/CustomShape;

    .line 49
    .local v0, "clone":Lcom/smartisanos/smengine/myparticle/CustomShape;
    iget v2, p0, Lcom/smartisanos/smengine/myparticle/CustomShape;->width:F

    iput v2, v0, Lcom/smartisanos/smengine/myparticle/CustomShape;->width:F

    .line 50
    iget v2, p0, Lcom/smartisanos/smengine/myparticle/CustomShape;->height:F

    iput v2, v0, Lcom/smartisanos/smengine/myparticle/CustomShape;->height:F
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    return-object v0

    .line 52
    .end local v0    # "clone":Lcom/smartisanos/smengine/myparticle/CustomShape;
    :catch_0
    move-exception v1

    .line 53
    .local v1, "ex":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method public getRandomPoint(Lcom/smartisanos/smengine/math/Vector3f;)V
    .locals 3
    .param p1, "store"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    .line 33
    iget v0, p0, Lcom/smartisanos/smengine/myparticle/CustomShape;->process:F

    sub-float/2addr v0, v2

    iget v1, p0, Lcom/smartisanos/smengine/myparticle/CustomShape;->width:F

    mul-float/2addr v0, v1

    iput v0, p1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 35
    iget v0, p0, Lcom/smartisanos/smengine/myparticle/CustomShape;->height:F

    const/high16 v1, -0x41000000    # -0.5f

    invoke-static {v1, v2}, Lcom/smartisanos/smengine/math/FastMath;->nextRandomFloat(FF)F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 36
    const/4 v0, 0x0

    iput v0, p1, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    .line 38
    return-void
.end method

.method public getRandomPointAndNormal(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)V
    .locals 0
    .param p1, "store"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p2, "normal"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/myparticle/CustomShape;->getRandomPoint(Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 43
    return-void
.end method

.method public updateProcess(F)V
    .locals 0
    .param p1, "process"    # F

    .prologue
    .line 23
    iput p1, p0, Lcom/smartisanos/smengine/myparticle/CustomShape;->process:F

    .line 24
    return-void
.end method
