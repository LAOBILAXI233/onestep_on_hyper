.class Lcom/smartisanos/launcher/view/AnimationController$1;
.super Lcom/smartisanos/smengine/Event;
.source "AnimationController.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/AnimationController;->createChangeScreenAnimationEvent()Lcom/smartisanos/smengine/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/view/AnimationController;


.method constructor <init>(Lcom/smartisanos/launcher/view/AnimationController;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/AnimationController;
    .param p2, "type"    # I

    .prologue
    .line 263
    iput-object p1, p0, Lcom/smartisanos/launcher/view/AnimationController$1;->this$0:Lcom/smartisanos/launcher/view/AnimationController;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/Event;-><init>(I)V

    return-void
.end method


.method public run()V
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/smartisanos/launcher/view/AnimationController$1;->this$0:Lcom/smartisanos/launcher/view/AnimationController;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/AnimationController;->access$000(Lcom/smartisanos/launcher/view/AnimationController;)Lcom/smartisanos/launcher/view/PageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/PageView;->getSelectedCell()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/smartisanos/launcher/view/AnimationController$1;->this$0:Lcom/smartisanos/launcher/view/AnimationController;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/AnimationController;->access$100(Lcom/smartisanos/launcher/view/AnimationController;)V

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/AnimationController$1;->this$0:Lcom/smartisanos/launcher/view/AnimationController;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/AnimationController;->access$200(Lcom/smartisanos/launcher/view/AnimationController;)V

    .line 270
    return-void
.end method
