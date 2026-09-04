.class Lcom/smartisanos/launcher/view/MainView$12;
.super Lcom/smartisanos/smengine/Event;
.source "MainView.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/MainView;->forceFinishDismissAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/view/MainView;


.method constructor <init>(Lcom/smartisanos/launcher/view/MainView;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/MainView;
    .param p2, "type"    # I

    .prologue
    .line 2096
    iput-object p1, p0, Lcom/smartisanos/launcher/view/MainView$12;->this$0:Lcom/smartisanos/launcher/view/MainView;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/Event;-><init>(I)V

    return-void
.end method


.method public run()V
    .locals 2

    .prologue
    .line 2099
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MainView$12;->this$0:Lcom/smartisanos/launcher/view/MainView;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/MainView;->access$800(Lcom/smartisanos/launcher/view/MainView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2100
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/World;->getAnimationManager()Lcom/smartisanos/smengine/AnimationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/AnimationManager;->forceFinishAllAnimation()V

    .line 2101
    sget-boolean v0, Lcom/smartisanos/launcher/DebugInfoManager;->isParitcleConfigDebugEnable:Z

    if-nez v0, :cond_1

    .line 2102
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MainView$12;->this$0:Lcom/smartisanos/launcher/view/MainView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/view/MainView;->access$900(Lcom/smartisanos/launcher/view/MainView;F)V

    .line 2107
    :cond_0
    :goto_0
    return-void

    .line 2104
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MainView$12;->this$0:Lcom/smartisanos/launcher/view/MainView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/view/MainView;->access$802(Lcom/smartisanos/launcher/view/MainView;Z)Z

    goto :goto_0
.end method
