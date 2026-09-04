.class public Lcom/smartisanos/launcher/view/SwitchPageNode$MyTouchListener;
.super Ljava/lang/Object;
.source "SwitchPageNode.java"

.implements Lcom/smartisanos/smengine/SceneNode$TouchListener;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/view/SwitchPageNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyTouchListener"
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/view/SwitchPageNode;


.method public constructor <init>(Lcom/smartisanos/launcher/view/SwitchPageNode;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/SwitchPageNode;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/smartisanos/launcher/view/SwitchPageNode$MyTouchListener;->this$0:Lcom/smartisanos/launcher/view/SwitchPageNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onDown(Lcom/smartisanos/smengine/TouchEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/smartisanos/smengine/TouchEvent;

    .prologue
    .line 214
    return-void
.end method

.method public onMove(Lcom/smartisanos/smengine/TouchEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/smartisanos/smengine/TouchEvent;

    .prologue
    .line 217
    return-void
.end method

.method public onUp(Lcom/smartisanos/smengine/TouchEvent;)V
    .locals 4
    .param p1, "event"    # Lcom/smartisanos/smengine/TouchEvent;

    .prologue
    .line 219
    sget-boolean v1, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/smartisanos/launcher/view/SwitchPageNode;->access$700()Lcom/smartisanos/launcher/LOG;

    move-result-object v1

    const-string v2, "#### switchPageNode onUP"

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 220
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/PageView;->forceUpdateGeometricState()V

    .line 221
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/MainView;->isEditMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 222
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/MainView;->showStatusBar()V

    .line 225
    :cond_1
    iget-object v1, p0, Lcom/smartisanos/launcher/view/SwitchPageNode$MyTouchListener;->this$0:Lcom/smartisanos/launcher/view/SwitchPageNode;

    iget-object v1, v1, Lcom/smartisanos/launcher/view/SwitchPageNode;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/PageView;->getAnimationController()Lcom/smartisanos/launcher/view/AnimationController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/AnimationController;->clearAllAnimationEventInQueue()V

    .line 227
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/World;->getInputManager()Lcom/smartisanos/smengine/InputManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/InputManager;->setBatchMode(Z)V

    .line 229
    iget-object v1, p0, Lcom/smartisanos/launcher/view/SwitchPageNode$MyTouchListener;->this$0:Lcom/smartisanos/launcher/view/SwitchPageNode;

    invoke-static {v1}, Lcom/smartisanos/launcher/view/SwitchPageNode;->access$800(Lcom/smartisanos/launcher/view/SwitchPageNode;)V

    .line 232
    new-instance v0, Lcom/smartisanos/smengine/Notification;

    invoke-direct {v0}, Lcom/smartisanos/smengine/Notification;-><init>()V

    .line 233
    .local v0, "n1":Lcom/smartisanos/smengine/Notification;
    iget-object v1, p0, Lcom/smartisanos/launcher/view/SwitchPageNode$MyTouchListener;->this$0:Lcom/smartisanos/launcher/view/SwitchPageNode;

    invoke-static {v1}, Lcom/smartisanos/launcher/view/SwitchPageNode;->access$900(Lcom/smartisanos/launcher/view/SwitchPageNode;)Lcom/smartisanos/smengine/NotificationManager;

    move-result-object v1

    const-string v2, "titleViewUp"

    invoke-virtual {v1, v2, v0}, Lcom/smartisanos/smengine/NotificationManager;->postNotification(Ljava/lang/String;Lcom/smartisanos/smengine/Notification;)V

    .line 234
    sget-boolean v1, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/smartisanos/launcher/view/SwitchPageNode;->access$700()Lcom/smartisanos/launcher/LOG;

    move-result-object v1

    const-string v2, "DEBUG"

    const-string v3, "@@@@@@@@@@@@@@@@@@@@ TitleView UP!!!!!!!!!"

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    :cond_2
    iget-object v1, p0, Lcom/smartisanos/launcher/view/SwitchPageNode$MyTouchListener;->this$0:Lcom/smartisanos/launcher/view/SwitchPageNode;

    invoke-static {v1}, Lcom/smartisanos/launcher/view/SwitchPageNode;->access$1000(Lcom/smartisanos/launcher/view/SwitchPageNode;)Lcom/smartisanos/launcher/view/Page;

    move-result-object v1

    iget-object v2, p0, Lcom/smartisanos/launcher/view/SwitchPageNode$MyTouchListener;->this$0:Lcom/smartisanos/launcher/view/SwitchPageNode;

    invoke-static {v2}, Lcom/smartisanos/launcher/view/SwitchPageNode;->access$1000(Lcom/smartisanos/launcher/view/SwitchPageNode;)Lcom/smartisanos/launcher/view/Page;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Page;->getPreParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/view/Page;->changeAncestor(Lcom/smartisanos/smengine/SceneNode;)Z

    .line 240
    iget-object v1, p0, Lcom/smartisanos/launcher/view/SwitchPageNode$MyTouchListener;->this$0:Lcom/smartisanos/launcher/view/SwitchPageNode;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/SwitchPageNode;->pageBackToCenterAnimation()V

    .line 242
    iget-object v1, p0, Lcom/smartisanos/launcher/view/SwitchPageNode$MyTouchListener;->this$0:Lcom/smartisanos/launcher/view/SwitchPageNode;

    iget-object v1, v1, Lcom/smartisanos/launcher/view/SwitchPageNode;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    iget-object v2, p0, Lcom/smartisanos/launcher/view/SwitchPageNode$MyTouchListener;->this$0:Lcom/smartisanos/launcher/view/SwitchPageNode;

    invoke-static {v2}, Lcom/smartisanos/launcher/view/SwitchPageNode;->access$1100(Lcom/smartisanos/launcher/view/SwitchPageNode;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/view/PageView;->updatePageList(Ljava/util/ArrayList;)V

    .line 243
    iget-object v1, p0, Lcom/smartisanos/launcher/view/SwitchPageNode$MyTouchListener;->this$0:Lcom/smartisanos/launcher/view/SwitchPageNode;

    invoke-static {v1}, Lcom/smartisanos/launcher/view/SwitchPageNode;->access$1200(Lcom/smartisanos/launcher/view/SwitchPageNode;)V

    .line 246
    sget-boolean v1, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/smartisanos/launcher/view/SwitchPageNode;->access$700()Lcom/smartisanos/launcher/LOG;

    move-result-object v1

    const-string v2, "SwitchPageNode onUp mSomethingIsFloat set false"

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 248
    :cond_3
    return-void
.end method
