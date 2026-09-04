.class public Lcom/smartisanos/launcher/view/BaseNode;
.super Lcom/smartisanos/smengine/SceneNode;
.source "BaseNode.java"


.field private mPreParent:Lcom/smartisanos/smengine/SceneNode;


.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/SceneNode;-><init>(Ljava/lang/String;)V

    .line 14
    return-void
.end method


.method public changeAncestor(Lcom/smartisanos/smengine/SceneNode;)Z
    .locals 1
    .param p1, "ancestor"    # Lcom/smartisanos/smengine/SceneNode;

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/BaseNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/BaseNode;->mPreParent:Lcom/smartisanos/smengine/SceneNode;

    .line 18
    invoke-super {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->changeAncestor(Lcom/smartisanos/smengine/SceneNode;)Z

    move-result v0

    return v0
.end method

.method public getPreParent()Lcom/smartisanos/smengine/SceneNode;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/smartisanos/launcher/view/BaseNode;->mPreParent:Lcom/smartisanos/smengine/SceneNode;

    return-object v0
.end method
