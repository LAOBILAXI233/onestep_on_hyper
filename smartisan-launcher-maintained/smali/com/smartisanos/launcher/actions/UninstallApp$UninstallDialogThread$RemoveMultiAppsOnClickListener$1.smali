.class Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread$RemoveMultiAppsOnClickListener$1;
.super Lcom/smartisanos/smengine/Event;
.source "UninstallApp.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread$RemoveMultiAppsOnClickListener;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$2:Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread$RemoveMultiAppsOnClickListener;


.method constructor <init>(Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread$RemoveMultiAppsOnClickListener;I)V
    .locals 0
    .param p1, "this$2"    # Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread$RemoveMultiAppsOnClickListener;
    .param p2, "type"    # I

    .prologue
    .line 672
    iput-object p1, p0, Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread$RemoveMultiAppsOnClickListener$1;->this$2:Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread$RemoveMultiAppsOnClickListener;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/Event;-><init>(I)V

    return-void
.end method


.method public run()V
    .locals 8

    .prologue
    .line 675
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v1

    .line 676
    .local v1, "mainView":Lcom/smartisanos/launcher/view/MainView;
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v0

    .line 677
    .local v0, "dockView":Lcom/smartisanos/launcher/view/DockView;
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/DockView;->getTrashView()Lcom/smartisanos/launcher/view/TrashView;

    move-result-object v6

    .line 678
    .local v6, "trashView":Lcom/smartisanos/launcher/view/TrashView;
    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/TrashView;->getWaitingUninstallApps()Lcom/smartisanos/launcher/view/MultiSelectNode;

    move-result-object v2

    .line 679
    .local v2, "multiSelectNode":Lcom/smartisanos/launcher/view/MultiSelectNode;
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/MultiSelectNode;->uninstallOKAllPageDoFinish()Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v5

    .line 680
    .local v5, "timeLine":Lcom/smartisanos/smengine/AnimationTimeLine;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 681
    .local v3, "params":Ljava/util/ArrayList;
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 682
    const v4, 0x3e99999a    # 0.3f

    .line 683
    .local v4, "time":F
    sget-object v7, Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;->SETTING_BTN_SCALE_APPEAR:Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;

    invoke-virtual {v0, v7, v4, v3}, Lcom/smartisanos/launcher/view/DockView;->handleAnimation(Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;FLjava/util/List;)V

    .line 684
    sget-object v7, Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;->TRASH_REDUCE:Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;

    invoke-virtual {v6, v7, v4, v3}, Lcom/smartisanos/launcher/view/TrashView;->handleAnimation(Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;FLjava/util/ArrayList;)V

    .line 685
    sget-object v7, Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;->TRASH_FALL:Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;

    invoke-virtual {v6, v7, v4, v3}, Lcom/smartisanos/launcher/view/TrashView;->handleAnimation(Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;FLjava/util/ArrayList;)V

    .line 686
    invoke-virtual {v5}, Lcom/smartisanos/smengine/AnimationTimeLine;->start()V

    .line 687
    return-void
.end method
