.class Lcom/smartisanos/launcher/view/StatusBar$1;
.super Lcom/smartisanos/smengine/Animation$AnimationListener;
.source "StatusBar.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/StatusBar;->getGaussianBackAnimForIconSort(ZF)Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/view/StatusBar;

.field final synthetic val$show:Z


.method constructor <init>(Lcom/smartisanos/launcher/view/StatusBar;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/StatusBar;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/smartisanos/launcher/view/StatusBar$1;->this$0:Lcom/smartisanos/launcher/view/StatusBar;

    iput-boolean p2, p0, Lcom/smartisanos/launcher/view/StatusBar$1;->val$show:Z

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    return-void
.end method


.method public onComplete()V
    .locals 2

    .prologue
    .line 193
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/StatusBar$1;->val$show:Z

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/smartisanos/launcher/view/StatusBar$1;->this$0:Lcom/smartisanos/launcher/view/StatusBar;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/StatusBar;->access$000(Lcom/smartisanos/launcher/view/StatusBar;)Lcom/smartisanos/smengine/RectNode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/smartisanos/launcher/view/StatusBar$1;->this$0:Lcom/smartisanos/launcher/view/StatusBar;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/StatusBar;->access$000(Lcom/smartisanos/launcher/view/StatusBar;)Lcom/smartisanos/smengine/RectNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 196
    iget-object v0, p0, Lcom/smartisanos/launcher/view/StatusBar$1;->this$0:Lcom/smartisanos/launcher/view/StatusBar;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/StatusBar;->access$000(Lcom/smartisanos/launcher/view/StatusBar;)Lcom/smartisanos/smengine/RectNode;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RectNode;->clear(Z)V

    .line 197
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/World;->getMeshManager()Lcom/smartisanos/smengine/MeshManager;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/StatusBar$1;->this$0:Lcom/smartisanos/launcher/view/StatusBar;

    invoke-static {v1}, Lcom/smartisanos/launcher/view/StatusBar;->access$000(Lcom/smartisanos/launcher/view/StatusBar;)Lcom/smartisanos/smengine/RectNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/RectNode;->getMesh()Lcom/smartisanos/smengine/Mesh;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/MeshManager;->removeMesh(Lcom/smartisanos/smengine/Mesh;)V

    .line 198
    iget-object v0, p0, Lcom/smartisanos/launcher/view/StatusBar$1;->this$0:Lcom/smartisanos/launcher/view/StatusBar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/view/StatusBar;->access$002(Lcom/smartisanos/launcher/view/StatusBar;Lcom/smartisanos/smengine/RectNode;)Lcom/smartisanos/smengine/RectNode;

    .line 201
    :cond_0
    return-void
.end method
