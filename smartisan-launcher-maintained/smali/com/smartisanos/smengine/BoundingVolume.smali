.class public abstract Lcom/smartisanos/smengine/BoundingVolume;
.super Ljava/lang/Object;
.source "BoundingVolume.java"


.field protected mParent:Lcom/smartisanos/smengine/SceneNode;


.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public equals(Lcom/smartisanos/smengine/BoundingVolume;)Z
    .locals 1
    .param p1, "bv"    # Lcom/smartisanos/smengine/BoundingVolume;

    .prologue
    .line 25
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract getSize(Lcom/smartisanos/smengine/math/Vector3f;)V
.end method

.method public abstract isIntersect(Lcom/smartisanos/smengine/BoundingVolume;)Z
.end method

.method public abstract isPointInBoundingVolume(FFF)Z
.end method

.method public abstract isPointInBoundingVolume(Lcom/smartisanos/smengine/math/Vector3f;)Z
.end method

.method public setParent(Lcom/smartisanos/smengine/SceneNode;)V
    .locals 0
    .param p1, "parent"    # Lcom/smartisanos/smengine/SceneNode;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/smartisanos/smengine/BoundingVolume;->mParent:Lcom/smartisanos/smengine/SceneNode;

    .line 22
    return-void
.end method

.method public abstract transform(Lcom/smartisanos/smengine/math/Matrix4f;)Lcom/smartisanos/smengine/BoundingVolume;
.end method

.method public abstract transform(Lcom/smartisanos/smengine/math/Transform;)Lcom/smartisanos/smengine/BoundingVolume;
.end method

.method public abstract transform(Lcom/smartisanos/smengine/math/Matrix4f;Lcom/smartisanos/smengine/BoundingVolume;)V
.end method

.method public abstract transform(Lcom/smartisanos/smengine/math/Transform;Lcom/smartisanos/smengine/BoundingVolume;)V
.end method
