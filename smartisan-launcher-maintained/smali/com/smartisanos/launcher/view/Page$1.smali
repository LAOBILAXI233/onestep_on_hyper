.class Lcom/smartisanos/launcher/view/Page$1;
.super Lcom/smartisanos/smengine/Animation$AnimationListener;
.source "Page.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/Page;->removePageCell(Lcom/smartisanos/smengine/SceneNode;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/view/Page;

.field final synthetic val$removed:Lcom/smartisanos/launcher/view/Cell;


.method constructor <init>(Lcom/smartisanos/launcher/view/Page;Lcom/smartisanos/launcher/view/Cell;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/Page;

    .prologue
    .line 628
    iput-object p1, p0, Lcom/smartisanos/launcher/view/Page$1;->this$0:Lcom/smartisanos/launcher/view/Page;

    iput-object p2, p0, Lcom/smartisanos/launcher/view/Page$1;->val$removed:Lcom/smartisanos/launcher/view/Cell;

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    return-void
.end method


.method public onBegin()V
    .locals 0

    .prologue
    .line 631
    invoke-super {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;->onBegin()V

    .line 633
    return-void
.end method

.method public onComplete()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 636
    invoke-super {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;->onComplete()V

    .line 637
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Page$1;->val$removed:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Cell;->setRenderBgToRenderTarget(Z)V

    .line 638
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Page$1;->val$removed:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->getBackgroundRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RectNode;->setIsEnableBlend(Z)V

    .line 639
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/World;->getSceneManager()Lcom/smartisanos/smengine/SceneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneManager;->getRootNode()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/Page$1;->val$removed:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->removeChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 640
    return-void
.end method
