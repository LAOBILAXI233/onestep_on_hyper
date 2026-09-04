.class Lcom/smartisanos/launcher/view/TrashView$2$2;
.super Lcom/smartisanos/smengine/Animation$AnimationListener;
.source "TrashView.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/TrashView$2;->onComplete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$1:Lcom/smartisanos/launcher/view/TrashView$2;


.method constructor <init>(Lcom/smartisanos/launcher/view/TrashView$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/smartisanos/launcher/view/TrashView$2;

    .prologue
    .line 483
    iput-object p1, p0, Lcom/smartisanos/launcher/view/TrashView$2$2;->this$1:Lcom/smartisanos/launcher/view/TrashView$2;

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    return-void
.end method


.method public onComplete()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 486
    iget-object v1, p0, Lcom/smartisanos/launcher/view/TrashView$2$2;->this$1:Lcom/smartisanos/launcher/view/TrashView$2;

    iget-object v1, v1, Lcom/smartisanos/launcher/view/TrashView$2;->val$removedCells:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 487
    iget-object v1, p0, Lcom/smartisanos/launcher/view/TrashView$2$2;->this$1:Lcom/smartisanos/launcher/view/TrashView$2;

    iget-object v1, v1, Lcom/smartisanos/launcher/view/TrashView$2;->val$removedCells:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/Cell;

    .line 488
    .local v0, "cell":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 489
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->deleteTextureForCell()V

    .line 490
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/Cell;->clear(Z)V

    goto :goto_0

    .line 493
    .end local v0    # "cell":Lcom/smartisanos/launcher/view/Cell;
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/launcher/view/TrashView$2$2;->this$1:Lcom/smartisanos/launcher/view/TrashView$2;

    iget-object v1, v1, Lcom/smartisanos/launcher/view/TrashView$2;->this$0:Lcom/smartisanos/launcher/view/TrashView;

    invoke-static {v1, v4}, Lcom/smartisanos/launcher/view/TrashView;->access$102(Lcom/smartisanos/launcher/view/TrashView;Lcom/smartisanos/launcher/view/Cell;)Lcom/smartisanos/launcher/view/Cell;

    .line 494
    iget-object v1, p0, Lcom/smartisanos/launcher/view/TrashView$2$2;->this$1:Lcom/smartisanos/launcher/view/TrashView$2;

    iget-object v1, v1, Lcom/smartisanos/launcher/view/TrashView$2;->this$0:Lcom/smartisanos/launcher/view/TrashView;

    invoke-static {v1, v4}, Lcom/smartisanos/launcher/view/TrashView;->access$202(Lcom/smartisanos/launcher/view/TrashView;Lcom/smartisanos/smengine/AnimationTimeLine;)Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 495
    sget-object v1, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->EVENT_REFRESH:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    invoke-static {v1}, Lcom/smartisanos/launcher/data/DatabaseUpdater;->updateDatabase(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;)V

    .line 496
    iget-object v1, p0, Lcom/smartisanos/launcher/view/TrashView$2$2;->this$1:Lcom/smartisanos/launcher/view/TrashView$2;

    iget-object v1, v1, Lcom/smartisanos/launcher/view/TrashView$2;->val$finishCallback:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    .line 497
    iget-object v1, p0, Lcom/smartisanos/launcher/view/TrashView$2$2;->this$1:Lcom/smartisanos/launcher/view/TrashView$2;

    iget-object v1, v1, Lcom/smartisanos/launcher/view/TrashView$2;->val$finishCallback:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 499
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/smartisanos/launcher/view/MainView;->setUsePostEffect(Z)V

    .line 500
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v1

    const/high16 v2, 0x10000

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/launcher/StatusManager;->setLauncherStatus(IZ)V

    .line 501
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/launcher/StatusManager;->setLauncherStatus(IZ)V

    .line 502
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/PageView;->cleanPageViewWhenCellOnUpNoDelay()V

    .line 503
    return-void
.end method
