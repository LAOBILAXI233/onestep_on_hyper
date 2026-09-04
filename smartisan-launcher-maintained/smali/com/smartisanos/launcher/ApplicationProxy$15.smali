.class Lcom/smartisanos/launcher/ApplicationProxy$15;
.super Lcom/smartisanos/smengine/Event;
.source "ApplicationProxy.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/ApplicationProxy;->onConfigChanged(Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/smartisanos/launcher/ApplicationProxy$15;->this$0:Lcom/smartisanos/launcher/ApplicationProxy;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/Event;-><init>(I)V

    return-void
.end method


.method public run()V
    .locals 2

    .prologue
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    if-eqz v0, :cond_end

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v0

    if-eqz v0, :cond_end

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/PageView;->refreshAllRenderTargetContent()V

    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/World;->updateGLView()V

    :cond_end
    return-void
.end method
