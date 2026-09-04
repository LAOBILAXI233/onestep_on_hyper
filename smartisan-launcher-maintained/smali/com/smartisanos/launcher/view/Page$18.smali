.class Lcom/smartisanos/launcher/view/Page$18;
.super Lcom/smartisanos/smengine/Animation$AnimationListener;
.source "Page.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/Page;->getGaussianBackAnimForIconSort(ZF)Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/view/Page;

.field final synthetic val$cells:Ljava/util/ArrayList;

.field final synthetic val$show:Z


.method constructor <init>(Lcom/smartisanos/launcher/view/Page;ZLjava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/Page;

    .prologue
    .line 2768
    iput-object p1, p0, Lcom/smartisanos/launcher/view/Page$18;->this$0:Lcom/smartisanos/launcher/view/Page;

    iput-boolean p2, p0, Lcom/smartisanos/launcher/view/Page$18;->val$show:Z

    iput-object p3, p0, Lcom/smartisanos/launcher/view/Page$18;->val$cells:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    return-void
.end method


.method public onComplete()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2770
    iget-boolean v1, p0, Lcom/smartisanos/launcher/view/Page$18;->val$show:Z

    if-eqz v1, :cond_0

    .line 2771
    iget-object v1, p0, Lcom/smartisanos/launcher/view/Page$18;->this$0:Lcom/smartisanos/launcher/view/Page;

    invoke-static {v1}, Lcom/smartisanos/launcher/view/Page;->access$300(Lcom/smartisanos/launcher/view/Page;)Lcom/smartisanos/smengine/RectNode;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2772
    iget-object v1, p0, Lcom/smartisanos/launcher/view/Page$18;->this$0:Lcom/smartisanos/launcher/view/Page;

    invoke-static {v1}, Lcom/smartisanos/launcher/view/Page;->access$300(Lcom/smartisanos/launcher/view/Page;)Lcom/smartisanos/smengine/RectNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/RectNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 2773
    iget-object v1, p0, Lcom/smartisanos/launcher/view/Page$18;->this$0:Lcom/smartisanos/launcher/view/Page;

    invoke-static {v1}, Lcom/smartisanos/launcher/view/Page;->access$300(Lcom/smartisanos/launcher/view/Page;)Lcom/smartisanos/smengine/RectNode;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/RectNode;->clear(Z)V

    .line 2774
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/World;->getMeshManager()Lcom/smartisanos/smengine/MeshManager;

    move-result-object v1

    iget-object v2, p0, Lcom/smartisanos/launcher/view/Page$18;->this$0:Lcom/smartisanos/launcher/view/Page;

    invoke-static {v2}, Lcom/smartisanos/launcher/view/Page;->access$300(Lcom/smartisanos/launcher/view/Page;)Lcom/smartisanos/smengine/RectNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/RectNode;->getMesh()Lcom/smartisanos/smengine/Mesh;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/MeshManager;->removeMesh(Lcom/smartisanos/smengine/Mesh;)V

    .line 2775
    iget-object v1, p0, Lcom/smartisanos/launcher/view/Page$18;->this$0:Lcom/smartisanos/launcher/view/Page;

    invoke-static {v1, v3}, Lcom/smartisanos/launcher/view/Page;->access$302(Lcom/smartisanos/launcher/view/Page;Lcom/smartisanos/smengine/RectNode;)Lcom/smartisanos/smengine/RectNode;

    .line 2776
    iget-object v1, p0, Lcom/smartisanos/launcher/view/Page$18;->this$0:Lcom/smartisanos/launcher/view/Page;

    invoke-static {v1, v3}, Lcom/smartisanos/launcher/view/Page;->access$402(Lcom/smartisanos/launcher/view/Page;Ljava/lang/String;)Ljava/lang/String;

    .line 2777
    iget-object v1, p0, Lcom/smartisanos/launcher/view/Page$18;->val$cells:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/Cell;

    .line 2782
    .local v0, "cell":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->getDisplayRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/RectNode;->setIsEnableBlend(Z)V

    goto :goto_0

    .line 2794
    .end local v0    # "cell":Lcom/smartisanos/launcher/view/Cell;
    :cond_0
    return-void
.end method
