.class Lcom/smartisanos/launcher/view/Cell$5;
.super Ljava/lang/Object;
.source "Cell.java"

.implements Lcom/smartisanos/smengine/SceneNode$OnLongClickListener;


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
    .line 932
    iput-object p1, p0, Lcom/smartisanos/launcher/view/Cell$5;->this$0:Lcom/smartisanos/launcher/view/Cell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onLongClick(Lcom/smartisanos/smengine/SceneNode;)Z
    .locals 4
    .param p1, "view"    # Lcom/smartisanos/smengine/SceneNode;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 936
    iget-object v2, p0, Lcom/smartisanos/launcher/view/Cell$5;->this$0:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Cell;->isEmptyCell()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/MainView;->isEditMode()Z

    move-result v2

    if-nez v2, :cond_1

    .line 965
    :cond_0
    :goto_0
    return v0

    .line 940
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/StatusManager;->getLauncherStatus(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 941
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/PageView;->getAnimationController()Lcom/smartisanos/launcher/view/AnimationController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/AnimationController;->hasAnimationPlaying()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v0, v1

    .line 942
    goto :goto_0

    .line 945
    :cond_3
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v2

    const/16 v3, 0x200

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/StatusManager;->getLauncherStatus(I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 946
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v2

    const/high16 v3, 0x10000

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/StatusManager;->getLauncherStatus(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 947
    :cond_4
    sget-boolean v2, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/smartisanos/launcher/view/Cell;->access$100()Lcom/smartisanos/launcher/LOG;

    move-result-object v2

    const-string v3, "########## longclickcancel,because ON_ALL_CELL_RESET_BACKGROUND_ANIMATION"

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    :cond_5
    move v0, v1

    .line 948
    goto :goto_0

    .line 951
    :cond_6
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/MainView;->isEditMode()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 953
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v1

    iget-object v1, v1, Lcom/smartisanos/launcher/view/PageView;->mMultiSelectNode:Lcom/smartisanos/launcher/view/MultiSelectNode;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/MultiSelectNode;->getCurrentSelectedCellCount()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/Cell$5;->this$0:Lcom/smartisanos/launcher/view/Cell;

    sget v2, Lcom/smartisanos/launcher/view/Cell;->CELL_IN_MULTI_SELECT:I

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/view/Cell;->getCellHasAnimationStatus(I)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/smartisanos/launcher/view/Cell$5;->this$0:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Cell;->isEmptyCell()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 954
    :cond_7
    invoke-static {}, Lcom/smartisanos/launcher/view/DragLayer;->getInstance()Lcom/smartisanos/launcher/view/DragLayer;

    move-result-object v1

    iget-object v2, p0, Lcom/smartisanos/launcher/view/Cell$5;->this$0:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/view/DragLayer;->startDragMutiIcon(Lcom/smartisanos/launcher/view/Cell;)Z

    move-result v0

    goto :goto_0

    .line 960
    :cond_8
    invoke-static {}, Lcom/smartisanos/launcher/view/DragLayer;->getInstance()Lcom/smartisanos/launcher/view/DragLayer;

    move-result-object v1

    iget-object v2, p0, Lcom/smartisanos/launcher/view/Cell$5;->this$0:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/view/DragLayer;->startDragIcon(Lcom/smartisanos/launcher/view/Cell;)Z

    move-result v0

    .line 961
    .local v0, "res":Z
    if-eqz v0, :cond_0

    .line 963
    iget-object v1, p0, Lcom/smartisanos/launcher/view/Cell$5;->this$0:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Cell;->disableUnpressedAnimation()V

    goto/16 :goto_0
.end method
