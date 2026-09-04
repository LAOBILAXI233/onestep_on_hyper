.class Lcom/smartisanos/launcher/ApplicationProxy$7;
.super Lcom/smartisanos/smengine/Event;
.source "ApplicationProxy.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/ApplicationProxy;->createClearPasswordEvent()Lcom/smartisanos/smengine/Event;
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
    .line 410
    iput-object p1, p0, Lcom/smartisanos/launcher/ApplicationProxy$7;->this$0:Lcom/smartisanos/launcher/ApplicationProxy;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/Event;-><init>(I)V

    return-void
.end method


.method public run()V
    .locals 2

    .prologue
    .line 413
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/MainView;->setHasVerifyPassword(Z)V

    .line 414
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/World;->updateGLView()V

    .line 415
    return-void
.end method
