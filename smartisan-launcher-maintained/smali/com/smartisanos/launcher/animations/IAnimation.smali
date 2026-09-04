.class public abstract Lcom/smartisanos/launcher/animations/IAnimation;
.super Ljava/lang/Object;
.source "IAnimation.java"


.field public static final COLOR4F:I = 0x3

.field public static final CUBIC_IN:I = 0xd

.field public static final CUBIC_IN_OUT:I = 0xf

.field public static final CUBIC_OUT:I = 0xe

.field public static final QUAD_IN:I = 0x1

.field public static final QUAD_IN_OUT:I = 0x3

.field public static final QUAD_OUT:I = 0x2

.field public static final SCALE:I = 0x1

.field public static final TRANSLATE:I


.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createAnim(Lcom/smartisanos/smengine/SceneNode;IFI)Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    .locals 2
    .param p1, "node"    # Lcom/smartisanos/smengine/SceneNode;
    .param p2, "animType"    # I
    .param p3, "time"    # F
    .param p4, "inOut"    # I

    .prologue
    .line 40
    new-instance v0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    invoke-direct {v0, p1}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 41
    .local v0, "anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 42
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setPreserveNodeScale(Z)V

    .line 44
    :cond_0
    invoke-virtual {v0, p3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 45
    invoke-virtual {v0, p4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 46
    return-object v0
.end method


.method public anim(Lcom/smartisanos/smengine/SceneNode;IFILcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    .locals 8
    .param p1, "node"    # Lcom/smartisanos/smengine/SceneNode;
    .param p2, "animType"    # I
    .param p3, "time"    # F
    .param p4, "inOut"    # I
    .param p5, "from"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p6, "to"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/smartisanos/launcher/animations/IAnimation;->createAnim(Lcom/smartisanos/smengine/SceneNode;IFI)Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-result-object v0

    .line 29
    .local v0, "anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    iget v2, p5, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v3, p5, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v4, p5, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    iget v5, p6, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v6, p6, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v7, p6, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    move v1, p2

    invoke-virtual/range {v0 .. v7}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFF)V

    .line 30
    return-object v0
.end method

.method public anim(Lcom/smartisanos/smengine/SceneNode;IFILcom/smartisanos/smengine/math/Vector4f;Lcom/smartisanos/smengine/math/Vector4f;)Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    .locals 11
    .param p1, "node"    # Lcom/smartisanos/smengine/SceneNode;
    .param p2, "animType"    # I
    .param p3, "time"    # F
    .param p4, "inOut"    # I
    .param p5, "from"    # Lcom/smartisanos/smengine/math/Vector4f;
    .param p6, "to"    # Lcom/smartisanos/smengine/math/Vector4f;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/smartisanos/launcher/animations/IAnimation;->createAnim(Lcom/smartisanos/smengine/SceneNode;IFI)Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-result-object v1

    .line 35
    .local v1, "anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    move-object/from16 v0, p5

    iget v3, v0, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    move-object/from16 v0, p5

    iget v4, v0, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    move-object/from16 v0, p5

    iget v5, v0, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    move-object/from16 v0, p5

    iget v6, v0, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    move-object/from16 v0, p6

    iget v7, v0, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    move-object/from16 v0, p6

    iget v8, v0, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    move-object/from16 v0, p6

    iget v9, v0, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    move-object/from16 v0, p6

    iget v10, v0, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    move v2, p2

    invoke-virtual/range {v1 .. v10}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFFFF)V

    .line 36
    return-object v1
.end method
