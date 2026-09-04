.class Lcom/smartisanos/launcher/view/MultiSelectNode$3;
.super Lcom/smartisanos/smengine/Animation$AnimationListener;
.source "MultiSelectNode.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/MultiSelectNode;->hideLongPressAppName(Lcom/smartisanos/smengine/AnimationTimeLine;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/view/MultiSelectNode;


.method constructor <init>(Lcom/smartisanos/launcher/view/MultiSelectNode;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/MultiSelectNode;

    .prologue
    .line 779
    iput-object p1, p0, Lcom/smartisanos/launcher/view/MultiSelectNode$3;->this$0:Lcom/smartisanos/launcher/view/MultiSelectNode;

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    return-void
.end method


.method public onComplete()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 783
    invoke-super {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;->onComplete()V

    .line 784
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectNode$3;->this$0:Lcom/smartisanos/launcher/view/MultiSelectNode;

    invoke-static {v0, v2}, Lcom/smartisanos/launcher/view/MultiSelectNode;->access$1402(Lcom/smartisanos/launcher/view/MultiSelectNode;Lcom/smartisanos/smengine/SceneNodeTweenAnimation;)Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    .line 785
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectNode$3;->this$0:Lcom/smartisanos/launcher/view/MultiSelectNode;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/MultiSelectNode;->access$1500(Lcom/smartisanos/launcher/view/MultiSelectNode;)Lcom/smartisanos/smengine/RectNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 786
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectNode$3;->this$0:Lcom/smartisanos/launcher/view/MultiSelectNode;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/MultiSelectNode;->access$1500(Lcom/smartisanos/launcher/view/MultiSelectNode;)Lcom/smartisanos/smengine/RectNode;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RectNode;->clear(Z)V

    .line 787
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectNode$3;->this$0:Lcom/smartisanos/launcher/view/MultiSelectNode;

    invoke-static {v0, v2}, Lcom/smartisanos/launcher/view/MultiSelectNode;->access$1502(Lcom/smartisanos/launcher/view/MultiSelectNode;Lcom/smartisanos/smengine/RectNode;)Lcom/smartisanos/smengine/RectNode;

    .line 788
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/World;->getTextureManager()Lcom/smartisanos/smengine/TextureManager;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/MultiSelectNode$3;->this$0:Lcom/smartisanos/launcher/view/MultiSelectNode;

    invoke-static {v1}, Lcom/smartisanos/launcher/view/MultiSelectNode;->access$1600(Lcom/smartisanos/launcher/view/MultiSelectNode;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/TextureManager;->deleteTexture(Ljava/lang/String;)V

    .line 789
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectNode$3;->this$0:Lcom/smartisanos/launcher/view/MultiSelectNode;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MultiSelectNode;->updateGeometricState()V

    .line 790
    return-void
.end method
