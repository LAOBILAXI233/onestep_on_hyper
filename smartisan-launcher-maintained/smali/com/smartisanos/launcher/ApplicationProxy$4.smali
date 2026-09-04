.class Lcom/smartisanos/launcher/ApplicationProxy$4;
.super Lcom/smartisanos/smengine/Event;
.source "ApplicationProxy.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/ApplicationProxy;->createForceFinishUnlockAnimationEvent()Lcom/smartisanos/smengine/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/ApplicationProxy;


.method constructor <init>(Lcom/smartisanos/launcher/ApplicationProxy;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/ApplicationProxy;
    .param p2, "type"    # I

    .prologue
    .line 360
    iput-object p1, p0, Lcom/smartisanos/launcher/ApplicationProxy$4;->this$0:Lcom/smartisanos/launcher/ApplicationProxy;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/Event;-><init>(I)V

    return-void
.end method


.method public run()V
    .locals 4

    .prologue
    .line 363
    sget-boolean v2, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/smartisanos/launcher/ApplicationProxy;->access$200()Lcom/smartisanos/launcher/LOG;

    move-result-object v2

    const-string v3, "### forceFinish unlock animation."

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 364
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    .line 365
    .local v0, "mainView":Lcom/smartisanos/launcher/view/MainView;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 366
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v1

    .line 367
    .local v1, "pageView":Lcom/smartisanos/launcher/view/PageView;
    if-eqz v1, :cond_1

    .line 368
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/PageView;->getAnimationController()Lcom/smartisanos/launcher/view/AnimationController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/AnimationController;->forceFinishUnlockAnimation()V

    .line 369
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/World;->updateGLView()V

    .line 372
    .end local v1    # "pageView":Lcom/smartisanos/launcher/view/PageView;
    :cond_1
    return-void
.end method
