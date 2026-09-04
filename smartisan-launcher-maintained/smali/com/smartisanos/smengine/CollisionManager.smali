.class public Lcom/smartisanos/smengine/CollisionManager;
.super Ljava/lang/Object;
.source "CollisionManager.java"


.field private mCurrentCollisionData:Lcom/smartisanos/smengine/CollisionData;


.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public clean()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartisanos/smengine/CollisionManager;->mCurrentCollisionData:Lcom/smartisanos/smengine/CollisionData;

    .line 16
    return-void
.end method

.method public getCurrentCollisionData()Lcom/smartisanos/smengine/CollisionData;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/smartisanos/smengine/CollisionManager;->mCurrentCollisionData:Lcom/smartisanos/smengine/CollisionData;

    return-object v0
.end method

.method public setCurrentCollisionData(Lcom/smartisanos/smengine/CollisionData;)V
    .locals 0
    .param p1, "cd"    # Lcom/smartisanos/smengine/CollisionData;

    .prologue
    .line 9
    iput-object p1, p0, Lcom/smartisanos/smengine/CollisionManager;->mCurrentCollisionData:Lcom/smartisanos/smengine/CollisionData;

    .line 10
    return-void
.end method
