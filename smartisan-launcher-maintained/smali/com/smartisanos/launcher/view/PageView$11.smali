.class Lcom/smartisanos/launcher/view/PageView$11;
.super Lcom/smartisanos/smengine/Animation$AnimationListener;
.source "PageView.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/PageView;->unsinkPageAndhideDotView(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/view/PageView;


.method constructor <init>(Lcom/smartisanos/launcher/view/PageView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/PageView;

    .prologue
    .line 2731
    iput-object p1, p0, Lcom/smartisanos/launcher/view/PageView$11;->this$0:Lcom/smartisanos/launcher/view/PageView;

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    return-void
.end method


.method public onComplete()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2735
    invoke-super {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;->onComplete()V

    .line 2736
    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageView$11;->this$0:Lcom/smartisanos/launcher/view/PageView;

    iput-boolean v2, v0, Lcom/smartisanos/launcher/view/PageView;->mIsPageSinked:Z

    .line 2737
    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageView$11;->this$0:Lcom/smartisanos/launcher/view/PageView;

    iget-boolean v0, v0, Lcom/smartisanos/launcher/view/PageView;->mIsInMultiSelectMode:Z

    if-eqz v0, :cond_0

    .line 2738
    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageView$11;->this$0:Lcom/smartisanos/launcher/view/PageView;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/PageView;->mMultiSelectNode:Lcom/smartisanos/launcher/view/MultiSelectNode;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MultiSelectNode;->notifyScreenChange()V

    .line 2740
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/StatusManager;->setLauncherStatus(IZ)V

    .line 2741
    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageView$11;->this$0:Lcom/smartisanos/launcher/view/PageView;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/PageView;->mPageParentForTranslate:Lcom/smartisanos/launcher/view/PageParentForTranslate;

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/PageParentForTranslate;->setOnScroll(Z)V

    .line 2742
    return-void
.end method
