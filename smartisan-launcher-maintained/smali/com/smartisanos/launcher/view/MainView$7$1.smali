.class Lcom/smartisanos/launcher/view/MainView$7$1;
.super Lcom/smartisanos/smengine/Event;
.source "MainView.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/MainView$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$1:Lcom/smartisanos/launcher/view/MainView$7;

.field final synthetic val$isUsePostEffect:Z


.method constructor <init>(Lcom/smartisanos/launcher/view/MainView$7;IZ)V
    .locals 0
    .param p1, "this$1"    # Lcom/smartisanos/launcher/view/MainView$7;
    .param p2, "type"    # I

    .prologue
    .line 974
    iput-object p1, p0, Lcom/smartisanos/launcher/view/MainView$7$1;->this$1:Lcom/smartisanos/launcher/view/MainView$7;

    iput-boolean p3, p0, Lcom/smartisanos/launcher/view/MainView$7$1;->val$isUsePostEffect:Z

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/Event;-><init>(I)V

    return-void
.end method


.method public run()V
    .locals 2

    .prologue
    .line 976
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/MainView$7$1;->val$isUsePostEffect:Z

    if-eqz v0, :cond_0

    .line 977
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/World;->getRenderManager()Lcom/smartisanos/smengine/RenderManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RenderManager;->setUsePostEffect(Z)V

    .line 979
    :cond_0
    return-void
.end method
