.class Lcom/smartisanos/launcher/view/SettingButton$2;
.super Lcom/smartisanos/smengine/Animation$AnimationListener;
.source "SettingButton.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/SettingButton;->handleTap(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/view/SettingButton;


.method constructor <init>(Lcom/smartisanos/launcher/view/SettingButton;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/SettingButton;

    .prologue
    .line 280
    iput-object p1, p0, Lcom/smartisanos/launcher/view/SettingButton$2;->this$0:Lcom/smartisanos/launcher/view/SettingButton;

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    return-void
.end method


.method public onComplete()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 284
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/DockView;->setSortButtonVisibleStatus(Z)V

    .line 285
    iget-object v0, p0, Lcom/smartisanos/launcher/view/SettingButton$2;->this$0:Lcom/smartisanos/launcher/view/SettingButton;

    iput-boolean v2, v0, Lcom/smartisanos/launcher/view/SettingButton;->buttonAlreadyDown:Z

    .line 286
    iget-object v0, p0, Lcom/smartisanos/launcher/view/SettingButton$2;->this$0:Lcom/smartisanos/launcher/view/SettingButton;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/view/SettingButton;->access$202(Lcom/smartisanos/launcher/view/SettingButton;Lcom/smartisanos/smengine/AnimationTimeLine;)Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 287
    iget-object v0, p0, Lcom/smartisanos/launcher/view/SettingButton$2;->this$0:Lcom/smartisanos/launcher/view/SettingButton;

    invoke-static {v0, v2}, Lcom/smartisanos/launcher/view/SettingButton;->access$300(Lcom/smartisanos/launcher/view/SettingButton;Z)V

    .line 288
    iget-object v0, p0, Lcom/smartisanos/launcher/view/SettingButton$2;->this$0:Lcom/smartisanos/launcher/view/SettingButton;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/SettingButton;->access$400(Lcom/smartisanos/launcher/view/SettingButton;)Lcom/smartisanos/smengine/RectNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RenderState;->setBlendMode(I)V

    .line 289
    iget-object v0, p0, Lcom/smartisanos/launcher/view/SettingButton$2;->this$0:Lcom/smartisanos/launcher/view/SettingButton;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/SettingButton;->access$400(Lcom/smartisanos/launcher/view/SettingButton;)Lcom/smartisanos/smengine/RectNode;

    move-result-object v0

    const-string v1, "***settingbuttonup***"

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RectNode;->setImageName(Ljava/lang/String;)V

    .line 290
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->unLockHardKey()V

    .line 292
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->unLockTouchEvent()V

    .line 293
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v0

    const/16 v1, 0x4000

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/StatusManager;->setLauncherStatus(IZ)V

    .line 294
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v0

    const v1, 0x8000

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/StatusManager;->setLauncherStatus(IZ)V

    .line 295
    return-void
.end method
