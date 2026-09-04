.class Lcom/smartisanos/launcher/view/DragLayer$2;
.super Lcom/smartisanos/smengine/Animation$AnimationListener;
.source "DragLayer.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/DragLayer;->canSweep(Lcom/smartisanos/smengine/TMotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/view/DragLayer;


.method constructor <init>(Lcom/smartisanos/launcher/view/DragLayer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/DragLayer;

    .prologue
    .line 394
    iput-object p1, p0, Lcom/smartisanos/launcher/view/DragLayer$2;->this$0:Lcom/smartisanos/launcher/view/DragLayer;

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    return-void
.end method


.method public onComplete()V
    .locals 3

    .prologue
    .line 397
    invoke-super {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;->onComplete()V

    .line 398
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_0

    .line 399
    invoke-static {}, Lcom/smartisanos/launcher/view/DragLayer;->access$100()Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    const-string v1, "DEBUG"

    const-string v2, "############################ onSweep II "

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DragLayer$2;->this$0:Lcom/smartisanos/launcher/view/DragLayer;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/DragLayer;->access$200(Lcom/smartisanos/launcher/view/DragLayer;)Lcom/smartisanos/smengine/TVelocityAndGestureTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->sweep()V

    .line 401
    return-void
.end method
