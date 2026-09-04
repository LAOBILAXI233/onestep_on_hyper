.class Lcom/smartisanos/launcher/view/CalendarView$3;
.super Lcom/smartisanos/smengine/Animation$AnimationListener;
.source "CalendarView.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/CalendarView;->playAnimation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/view/CalendarView;

.field final synthetic val$reverse:Z


.method constructor <init>(Lcom/smartisanos/launcher/view/CalendarView;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/CalendarView;

    .prologue
    .line 500
    iput-object p1, p0, Lcom/smartisanos/launcher/view/CalendarView$3;->this$0:Lcom/smartisanos/launcher/view/CalendarView;

    iput-boolean p2, p0, Lcom/smartisanos/launcher/view/CalendarView$3;->val$reverse:Z

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    return-void
.end method


.method public onStart()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 502
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/CalendarView$3;->val$reverse:Z

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CalendarView$3;->this$0:Lcom/smartisanos/launcher/view/CalendarView;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/CalendarView;->access$200(Lcom/smartisanos/launcher/view/CalendarView;)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 504
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CalendarView$3;->this$0:Lcom/smartisanos/launcher/view/CalendarView;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/CalendarView;->access$600(Lcom/smartisanos/launcher/view/CalendarView;)Lcom/smartisanos/smengine/RectNode;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    .line 509
    :goto_0
    return-void

    .line 506
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CalendarView$3;->this$0:Lcom/smartisanos/launcher/view/CalendarView;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/CalendarView;->access$000(Lcom/smartisanos/launcher/view/CalendarView;)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 507
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CalendarView$3;->this$0:Lcom/smartisanos/launcher/view/CalendarView;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/CalendarView;->access$600(Lcom/smartisanos/launcher/view/CalendarView;)Lcom/smartisanos/smengine/RectNode;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    goto :goto_0
.end method
