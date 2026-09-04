.class final Lcom/smartisanos/smengine/SceneNode$updateRTTrave;
.super Ljava/lang/Object;
.source "SceneNode.java"

.implements Lcom/smartisanos/smengine/SceneNode$NodeTravel;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/smengine/SceneNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "updateRTTrave"
.end annotation


.method constructor <init>()V
    .locals 0

    .prologue
    .line 1480
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public visit(Lcom/smartisanos/smengine/SceneNode;)V
    .locals 0
    .param p1, "node"    # Lcom/smartisanos/smengine/SceneNode;

    .prologue
    .line 1483
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->setNeedDisplay()V

    .line 1484
    return-void
.end method
