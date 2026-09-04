.class Lcom/smartisanos/launcher/animations/DockViewAnimation$2;
.super Lcom/smartisanos/smengine/Animation$AnimationListener;
.source "DockViewAnimation.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/animations/DockViewAnimation;->runDockFall(FLjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/animations/DockViewAnimation;


.method constructor <init>(Lcom/smartisanos/launcher/animations/DockViewAnimation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/animations/DockViewAnimation;

    .prologue
    .line 289
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/DockViewAnimation$2;->this$0:Lcom/smartisanos/launcher/animations/DockViewAnimation;

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    return-void
.end method


.method public onBeforeUpdateOneFrame(Lcom/smartisanos/smengine/SceneNode;)V
    .locals 1
    .param p1, "sn"    # Lcom/smartisanos/smengine/SceneNode;

    .prologue
    .line 293
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/DockViewAnimation$2;->this$0:Lcom/smartisanos/launcher/animations/DockViewAnimation;

    invoke-static {v0}, Lcom/smartisanos/launcher/animations/DockViewAnimation;->access$000(Lcom/smartisanos/launcher/animations/DockViewAnimation;)Lcom/smartisanos/launcher/view/DockView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/DockView;->updateUV()V

    .line 294
    return-void
.end method

.method public onComplete()V
    .locals 3

    .prologue
    .line 299
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/smartisanos/launcher/animations/DockViewAnimation;->access$100()Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    const-string v1, "DEBUG"

    const-string v2, "DOCK_FALL onComplete begin"

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/DockViewAnimation$2;->this$0:Lcom/smartisanos/launcher/animations/DockViewAnimation;

    invoke-static {v0}, Lcom/smartisanos/launcher/animations/DockViewAnimation;->access$000(Lcom/smartisanos/launcher/animations/DockViewAnimation;)Lcom/smartisanos/launcher/view/DockView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/DockView;->getTrashView()Lcom/smartisanos/launcher/view/TrashView;

    move-result-object v0

    sget v1, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/TrashView;->updateTrashByMode(I)V

    .line 301
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/DockViewAnimation$2;->this$0:Lcom/smartisanos/launcher/animations/DockViewAnimation;

    invoke-static {v0}, Lcom/smartisanos/launcher/animations/DockViewAnimation;->access$000(Lcom/smartisanos/launcher/animations/DockViewAnimation;)Lcom/smartisanos/launcher/view/DockView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/DockView;->updateGeometricState()V

    .line 302
    return-void
.end method
