.class Lcom/smartisanos/launcher/view/Cell$4;
.super Ljava/lang/Object;
.source "Cell.java"

.implements Lcom/smartisanos/smengine/SceneNode$OnClickListener;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/Cell;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/view/Cell;


.method constructor <init>(Lcom/smartisanos/launcher/view/Cell;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/Cell;

    .prologue
    .line 916
    iput-object p1, p0, Lcom/smartisanos/launcher/view/Cell$4;->this$0:Lcom/smartisanos/launcher/view/Cell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onClick(Lcom/smartisanos/smengine/SceneNode;)V
    .locals 4
    .param p1, "v"    # Lcom/smartisanos/smengine/SceneNode;

    .prologue
    const/4 v3, 0x0

    .line 919
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v1

    const/high16 v2, 0x80000

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/StatusManager;->getLauncherStatus(I)Z

    move-result v0

    .line 920
    .local v0, "preview":Z
    if-eqz v0, :cond_0

    .line 921
    invoke-static {}, Lcom/smartisanos/launcher/view/Cell;->access$100()Lcom/smartisanos/launcher/LOG;

    move-result-object v1

    const-string v2, "onClick return by preview true"

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 930
    :goto_0
    return-void

    .line 924
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/launcher/view/Cell$4;->this$0:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Cell;->isCellOnPage()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 925
    iget-object v1, p0, Lcom/smartisanos/launcher/view/Cell$4;->this$0:Lcom/smartisanos/launcher/view/Cell;

    iget-object v1, v1, Lcom/smartisanos/launcher/view/Cell;->pageCellStatus:Lcom/smartisanos/launcher/view/CellStatusForPage;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/CellStatusForPage;->getSingleTapListener()Lcom/smartisanos/launcher/view/CellStatusForPage$SingleTapListenerForPageCell;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/smartisanos/launcher/view/CellStatusForPage$SingleTapListenerForPageCell;->onClick(Lcom/smartisanos/smengine/TouchEvent;)V

    goto :goto_0

    .line 927
    :cond_1
    iget-object v1, p0, Lcom/smartisanos/launcher/view/Cell$4;->this$0:Lcom/smartisanos/launcher/view/Cell;

    iget-object v1, v1, Lcom/smartisanos/launcher/view/Cell;->dockCellStatus:Lcom/smartisanos/launcher/view/CellStatusForDock;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/CellStatusForDock;->getSingleTapListener()Lcom/smartisanos/launcher/view/CellStatusForDock$SingleTapListenerForDockCell;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/smartisanos/launcher/view/CellStatusForDock$SingleTapListenerForDockCell;->onClick(Lcom/smartisanos/smengine/TouchEvent;)V

    goto :goto_0
.end method
