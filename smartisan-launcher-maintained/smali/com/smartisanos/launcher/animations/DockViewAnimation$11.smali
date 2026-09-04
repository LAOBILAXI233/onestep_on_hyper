.class Lcom/smartisanos/launcher/animations/DockViewAnimation$11;
.super Lcom/smartisanos/smengine/Animation$AnimationListener;
.source "DockViewAnimation.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/animations/DockViewAnimation;->runSwitchSortConfirmButtonStatus(FLjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/animations/DockViewAnimation;

.field final synthetic val$node:Lcom/smartisanos/smengine/SceneNode;

.field final synthetic val$setNodeVisible:Z


.method constructor <init>(Lcom/smartisanos/launcher/animations/DockViewAnimation;ZLcom/smartisanos/smengine/SceneNode;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/animations/DockViewAnimation;

    .prologue
    .line 1219
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/DockViewAnimation$11;->this$0:Lcom/smartisanos/launcher/animations/DockViewAnimation;

    iput-boolean p2, p0, Lcom/smartisanos/launcher/animations/DockViewAnimation$11;->val$setNodeVisible:Z

    iput-object p3, p0, Lcom/smartisanos/launcher/animations/DockViewAnimation$11;->val$node:Lcom/smartisanos/smengine/SceneNode;

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    return-void
.end method


.method public onComplete()V
    .locals 2

    .prologue
    .line 1222
    iget-boolean v0, p0, Lcom/smartisanos/launcher/animations/DockViewAnimation$11;->val$setNodeVisible:Z

    if-nez v0, :cond_0

    .line 1224
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/DockViewAnimation$11;->val$node:Lcom/smartisanos/smengine/SceneNode;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 1226
    :cond_0
    return-void
.end method
