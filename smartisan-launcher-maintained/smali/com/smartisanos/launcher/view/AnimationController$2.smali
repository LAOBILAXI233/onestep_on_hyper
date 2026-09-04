.class Lcom/smartisanos/launcher/view/AnimationController$2;
.super Lcom/smartisanos/smengine/Event;
.source "AnimationController.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/AnimationController;->createHandleMyNotifyAnimationEvent()Lcom/smartisanos/smengine/Event;
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
    .line 277
    iput-object p1, p0, Lcom/smartisanos/launcher/view/AnimationController$2;->this$0:Lcom/smartisanos/launcher/view/AnimationController;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/Event;-><init>(I)V

    return-void
.end method


.method public run()V
    .locals 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/smartisanos/launcher/view/AnimationController$2;->this$0:Lcom/smartisanos/launcher/view/AnimationController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/view/AnimationController;->access$300(Lcom/smartisanos/launcher/view/AnimationController;I)V

    .line 285
    return-void
.end method
