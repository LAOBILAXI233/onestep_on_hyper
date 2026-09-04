.class Lcom/smartisanos/launcher/view/DockView$7;
.super Lcom/smartisanos/smengine/Animation$AnimationListener;
.source "DockView.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/DockView;->getGaussianBackAnimForIconSort(ZF)Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/view/DockView;

.field final synthetic val$show:Z


.method constructor <init>(Lcom/smartisanos/launcher/view/DockView;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/DockView;

    .prologue
    .line 1758
    iput-object p1, p0, Lcom/smartisanos/launcher/view/DockView$7;->this$0:Lcom/smartisanos/launcher/view/DockView;

    iput-boolean p2, p0, Lcom/smartisanos/launcher/view/DockView$7;->val$show:Z

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    return-void
.end method


.method public onComplete()V
    .locals 2

    .prologue
    .line 1760
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/DockView$7;->val$show:Z

    if-eqz v0, :cond_0

    .line 1761
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DockView$7;->this$0:Lcom/smartisanos/launcher/view/DockView;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/DockView;->access$1300(Lcom/smartisanos/launcher/view/DockView;)Lcom/smartisanos/smengine/RectNode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1762
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DockView$7;->this$0:Lcom/smartisanos/launcher/view/DockView;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/DockView;->access$1300(Lcom/smartisanos/launcher/view/DockView;)Lcom/smartisanos/smengine/RectNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 1763
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DockView$7;->this$0:Lcom/smartisanos/launcher/view/DockView;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/DockView;->access$1300(Lcom/smartisanos/launcher/view/DockView;)Lcom/smartisanos/smengine/RectNode;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RectNode;->clear(Z)V

    .line 1764
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/World;->getMeshManager()Lcom/smartisanos/smengine/MeshManager;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/DockView$7;->this$0:Lcom/smartisanos/launcher/view/DockView;

    invoke-static {v1}, Lcom/smartisanos/launcher/view/DockView;->access$1300(Lcom/smartisanos/launcher/view/DockView;)Lcom/smartisanos/smengine/RectNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/RectNode;->getMesh()Lcom/smartisanos/smengine/Mesh;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/MeshManager;->removeMesh(Lcom/smartisanos/smengine/Mesh;)V

    .line 1765
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DockView$7;->this$0:Lcom/smartisanos/launcher/view/DockView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/view/DockView;->access$1302(Lcom/smartisanos/launcher/view/DockView;Lcom/smartisanos/smengine/RectNode;)Lcom/smartisanos/smengine/RectNode;

    .line 1768
    :cond_0
    return-void
.end method
