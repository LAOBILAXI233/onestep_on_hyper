.class public final Lcom/smartisanos/launcher/view/PageView$MySlideAnimationListener;
.super Lcom/smartisanos/smengine/Animation$AnimationListener;
.source "PageView.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/view/PageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MySlideAnimationListener"
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/view/PageView;


.method public constructor <init>(Lcom/smartisanos/launcher/view/PageView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/PageView;

    .prologue
    .line 1089
    iput-object p1, p0, Lcom/smartisanos/launcher/view/PageView$MySlideAnimationListener;->this$0:Lcom/smartisanos/launcher/view/PageView;

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    return-void
.end method


.method public onComplete()V
    .locals 2

    .prologue
    .line 1092
    invoke-super {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;->onComplete()V

    .line 1093
    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageView$MySlideAnimationListener;->this$0:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/PageView;->unsinkPageAndhideDotView()V

    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageView$MySlideAnimationListener;->this$0:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/PageView;->getCurrentPageInWindowForSinglePageMode()Lcom/smartisanos/launcher/view/Page;

    move-result-object v1

    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageView$MySlideAnimationListener;->this$0:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/PageView;->refreshPageRenderTargetContent(Lcom/smartisanos/launcher/view/Page;)V

    .line 1095
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/StatusManager;->getLauncherStatus(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageView$MySlideAnimationListener;->this$0:Lcom/smartisanos/launcher/view/PageView;

    .line 1096
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/PageView;->getSelectedCell()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageView$MySlideAnimationListener;->this$0:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/PageView;->getSelectedCell()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/PageView$MySlideAnimationListener;->this$0:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/PageView;->getSelectedCell()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Cell;->getTouchX()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Cell;->whichSide(F)I

    move-result v0

    if-nez v0, :cond_0

    .line 1098
    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageView$MySlideAnimationListener;->this$0:Lcom/smartisanos/launcher/view/PageView;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/PageView$MySlideAnimationListener;->this$0:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/PageView;->getSelectedCell()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/PageView;->collideWith(Lcom/smartisanos/smengine/SceneNode;)I

    .line 1099
    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageView$MySlideAnimationListener;->this$0:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/PageView;->resetCollisionListenerForPageCell()V

    .line 1102
    :cond_0
    return-void
.end method
