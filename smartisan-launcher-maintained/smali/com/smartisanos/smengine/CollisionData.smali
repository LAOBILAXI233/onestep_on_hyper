.class public Lcom/smartisanos/smengine/CollisionData;
.super Ljava/lang/Object;
.source "CollisionData.java"


.field public static final COLLISION_ENTER_HANDLE_NO:I = 0x1

.field public static final COLLISION_ENTER_HANDLE_YES:I


.field private mCollidedNode:Lcom/smartisanos/smengine/SceneNode;

.field private mColliderNode:Lcom/smartisanos/smengine/SceneNode;

.field private mIsFirstEnter:Z


.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public constructor <init>(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/smengine/SceneNode;)V
    .locals 0
    .param p1, "colliderNode"    # Lcom/smartisanos/smengine/SceneNode;
    .param p2, "collidedNode"    # Lcom/smartisanos/smengine/SceneNode;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/smartisanos/smengine/CollisionData;->setCollision(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/smengine/SceneNode;)V

    .line 19
    return-void
.end method


.method public equals(Lcom/smartisanos/smengine/CollisionData;)Z
    .locals 3
    .param p1, "cd"    # Lcom/smartisanos/smengine/CollisionData;

    .prologue
    const/4 v0, 0x0

    .line 37
    if-nez p1, :cond_1

    .line 43
    :cond_0
    :goto_0
    return v0

    .line 40
    :cond_1
    iget-object v1, p0, Lcom/smartisanos/smengine/CollisionData;->mCollidedNode:Lcom/smartisanos/smengine/SceneNode;

    iget-object v2, p1, Lcom/smartisanos/smengine/CollisionData;->mCollidedNode:Lcom/smartisanos/smengine/SceneNode;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/smartisanos/smengine/CollisionData;->mColliderNode:Lcom/smartisanos/smengine/SceneNode;

    iget-object v2, p1, Lcom/smartisanos/smengine/CollisionData;->mColliderNode:Lcom/smartisanos/smengine/SceneNode;

    if-ne v1, v2, :cond_0

    .line 41
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getCollidedNode()Lcom/smartisanos/smengine/SceneNode;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/smartisanos/smengine/CollisionData;->mCollidedNode:Lcom/smartisanos/smengine/SceneNode;

    return-object v0
.end method

.method public getColliderNode()Lcom/smartisanos/smengine/SceneNode;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/smartisanos/smengine/CollisionData;->mColliderNode:Lcom/smartisanos/smengine/SceneNode;

    return-object v0
.end method

.method public isFirstEnter()Z
    .locals 1

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/smartisanos/smengine/CollisionData;->mIsFirstEnter:Z

    return v0
.end method

.method public setCollision(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/smengine/SceneNode;)V
    .locals 0
    .param p1, "colliderNode"    # Lcom/smartisanos/smengine/SceneNode;
    .param p2, "collidedNode"    # Lcom/smartisanos/smengine/SceneNode;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/smartisanos/smengine/CollisionData;->mColliderNode:Lcom/smartisanos/smengine/SceneNode;

    .line 28
    iput-object p2, p0, Lcom/smartisanos/smengine/CollisionData;->mCollidedNode:Lcom/smartisanos/smengine/SceneNode;

    .line 29
    return-void
.end method

.method public setIsFirstEnter(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/smartisanos/smengine/CollisionData;->mIsFirstEnter:Z

    .line 22
    return-void
.end method
