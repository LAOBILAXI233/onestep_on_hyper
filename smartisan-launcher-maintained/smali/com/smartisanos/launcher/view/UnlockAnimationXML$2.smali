.class Lcom/smartisanos/launcher/view/UnlockAnimationXML$2;
.super Lcom/smartisanos/smengine/Animation$AnimationListener;
.source "UnlockAnimationXML.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/UnlockAnimationXML;->init(Lcom/smartisanos/launcher/view/Page;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

.field final synthetic val$_page:Lcom/smartisanos/launcher/view/Page;


.method constructor <init>(Lcom/smartisanos/launcher/view/UnlockAnimationXML;Lcom/smartisanos/launcher/view/Page;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$2;->this$0:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    iput-object p2, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$2;->val$_page:Lcom/smartisanos/launcher/view/Page;

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    return-void
.end method


.method public onComplete()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 117
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$2;->this$0:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    invoke-static {v2}, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->access$200(Lcom/smartisanos/launcher/view/UnlockAnimationXML;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 118
    iget-object v2, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$2;->this$0:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    invoke-static {v2}, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->access$200(Lcom/smartisanos/launcher/view/UnlockAnimationXML;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/Cell;

    .line 119
    .local v1, "pc":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v1, v4}, Lcom/smartisanos/launcher/view/Cell;->setVisibilityForBatchDrawShadow(Z)V

    .line 120
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Cell;->hideUnlockShadow()V

    .line 117
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 124
    .end local v1    # "pc":Lcom/smartisanos/launcher/view/Cell;
    :cond_0
    iget-object v2, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$2;->this$0:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    invoke-static {v2}, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->access$200(Lcom/smartisanos/launcher/view/UnlockAnimationXML;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 127
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/DockView;->getSettingButton()Lcom/smartisanos/launcher/view/SettingButton;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 128
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/DockView;->getSettingButton()Lcom/smartisanos/launcher/view/SettingButton;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/smartisanos/launcher/view/SettingButton;->setVisibility(Z)V

    .line 131
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/DockView;->getTrashView()Lcom/smartisanos/launcher/view/TrashView;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 132
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/DockView;->getTrashView()Lcom/smartisanos/launcher/view/TrashView;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/smartisanos/launcher/view/TrashView;->setVisibility(Z)V

    .line 134
    :cond_2
    sget-boolean v2, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v2, :cond_4

    .line 135
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/MainView;->getStatusBar()Lcom/smartisanos/launcher/view/StatusBar;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/smartisanos/launcher/view/StatusBar;->setUseStaticGaussian(Z)V

    .line 136
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/smartisanos/launcher/view/DockView;->setUseStaticGaussian(Z)V

    .line 137
    iget-object v2, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$2;->val$_page:Lcom/smartisanos/launcher/view/Page;

    instance-of v2, v2, Lcom/smartisanos/launcher/view/PageWithRenderTarget;

    if-eqz v2, :cond_3

    .line 138
    iget-object v2, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$2;->val$_page:Lcom/smartisanos/launcher/view/Page;

    check-cast v2, Lcom/smartisanos/launcher/view/PageWithRenderTarget;

    invoke-virtual {v2, v4}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->setUseStaticGaussian(Z)V

    .line 140
    :cond_3
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/MainView;->getBackground()Lcom/smartisanos/smengine/RectNode;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    .line 141
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/MainView;->removeBackgroundUnlockRect()V

    .line 143
    :cond_4
    iget-object v2, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$2;->this$0:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    invoke-static {v2}, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->access$300(Lcom/smartisanos/launcher/view/UnlockAnimationXML;)Lcom/smartisanos/launcher/view/Page;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Page;->getBatchShadow()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 144
    iget-object v2, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$2;->this$0:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    invoke-static {v2}, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->access$300(Lcom/smartisanos/launcher/view/UnlockAnimationXML;)Lcom/smartisanos/launcher/view/Page;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Page;->getBatchShadow()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/BatchShadow;

    check-cast v2, Lcom/smartisanos/launcher/view/BatchShadow;

    invoke-virtual {v2, v5}, Lcom/smartisanos/launcher/view/BatchShadow;->setUseSelfColor(Z)V

    .line 145
    iget-object v2, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$2;->this$0:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    invoke-static {v2}, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->access$300(Lcom/smartisanos/launcher/view/UnlockAnimationXML;)Lcom/smartisanos/launcher/view/Page;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Page;->getBatchShadow()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/BatchShadow;

    check-cast v2, Lcom/smartisanos/launcher/view/BatchShadow;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v5, v3}, Lcom/smartisanos/launcher/view/BatchShadow;->setUseSelfZ(ZF)V

    .line 146
    iget-object v2, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$2;->this$0:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    invoke-static {v2}, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->access$300(Lcom/smartisanos/launcher/view/UnlockAnimationXML;)Lcom/smartisanos/launcher/view/Page;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Page;->getBatchShadow()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/BatchShadow;

    check-cast v2, Lcom/smartisanos/launcher/view/BatchShadow;

    invoke-virtual {v2, v4}, Lcom/smartisanos/launcher/view/BatchShadow;->setVisibility(Z)V

    .line 148
    :cond_5
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/smartisanos/home/Launcher;->setPauseEventStatus(Z)V

    .line 149
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/World;->getEventManager()Lcom/smartisanos/smengine/EventManager;

    move-result-object v2

    const/16 v3, 0x65

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/EventManager;->setEventStartByType(I)V

    .line 151
    iget-object v2, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$2;->this$0:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    iput-object v6, v2, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->mTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 153
    iget-object v2, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$2;->this$0:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    invoke-static {v2, v6}, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->access$302(Lcom/smartisanos/launcher/view/UnlockAnimationXML;Lcom/smartisanos/launcher/view/Page;)Lcom/smartisanos/launcher/view/Page;

    .line 155
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v2

    const/high16 v3, 0x20000

    invoke-virtual {v2, v3, v5}, Lcom/smartisanos/launcher/StatusManager;->setLauncherStatus(IZ)V

    .line 156
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/MainView;->unLockTouchEvent()V

    .line 157
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/MainView;->unLockHardKey()V

    .line 158
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 112
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->lockTouchEvent()V

    .line 113
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->lockHardKey()V

    .line 114
    return-void
.end method
