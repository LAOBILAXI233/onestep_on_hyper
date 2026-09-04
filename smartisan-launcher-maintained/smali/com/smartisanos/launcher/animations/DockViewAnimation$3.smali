.class Lcom/smartisanos/launcher/animations/DockViewAnimation$3;
.super Lcom/smartisanos/smengine/Animation$AnimationListener;
.source "DockViewAnimation.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/animations/DockViewAnimation;->runDockUp(FLjava/util/List;)V
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
    .line 329
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/DockViewAnimation$3;->this$0:Lcom/smartisanos/launcher/animations/DockViewAnimation;

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    return-void
.end method


.method public onBeforeUpdateOneFrame(Lcom/smartisanos/smengine/SceneNode;)V
    .locals 1
    .param p1, "sn"    # Lcom/smartisanos/smengine/SceneNode;

    .prologue
    .line 332
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/DockViewAnimation$3;->this$0:Lcom/smartisanos/launcher/animations/DockViewAnimation;

    invoke-static {v0}, Lcom/smartisanos/launcher/animations/DockViewAnimation;->access$000(Lcom/smartisanos/launcher/animations/DockViewAnimation;)Lcom/smartisanos/launcher/view/DockView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/DockView;->updateUV()V

    .line 333
    return-void
.end method
