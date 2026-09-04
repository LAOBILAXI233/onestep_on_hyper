.class Lcom/smartisanos/launcher/view/CalendarView$1;
.super Lcom/smartisanos/smengine/Event;
.source "CalendarView.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/CalendarView;->updateCalendar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/view/CalendarView;

.field final synthetic val$currentD:I

.field final synthetic val$prevD:I

.field final synthetic val$rev:Z


.method constructor <init>(Lcom/smartisanos/launcher/view/CalendarView;IIIZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/CalendarView;
    .param p2, "type"    # I

    .prologue
    .line 110
    iput-object p1, p0, Lcom/smartisanos/launcher/view/CalendarView$1;->this$0:Lcom/smartisanos/launcher/view/CalendarView;

    iput p3, p0, Lcom/smartisanos/launcher/view/CalendarView$1;->val$prevD:I

    iput p4, p0, Lcom/smartisanos/launcher/view/CalendarView$1;->val$currentD:I

    iput-boolean p5, p0, Lcom/smartisanos/launcher/view/CalendarView$1;->val$rev:Z

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/Event;-><init>(I)V

    return-void
.end method


.method public run()V
    .locals 3

    .prologue
    .line 113
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CalendarView$1;->this$0:Lcom/smartisanos/launcher/view/CalendarView;

    iget v1, p0, Lcom/smartisanos/launcher/view/CalendarView$1;->val$prevD:I

    iget-object v2, p0, Lcom/smartisanos/launcher/view/CalendarView$1;->this$0:Lcom/smartisanos/launcher/view/CalendarView;

    invoke-static {v2}, Lcom/smartisanos/launcher/view/CalendarView;->access$000(Lcom/smartisanos/launcher/view/CalendarView;)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/smartisanos/launcher/view/CalendarView;->access$100(Lcom/smartisanos/launcher/view/CalendarView;ILcom/smartisanos/smengine/SceneNode;)V

    .line 114
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CalendarView$1;->this$0:Lcom/smartisanos/launcher/view/CalendarView;

    iget v1, p0, Lcom/smartisanos/launcher/view/CalendarView$1;->val$currentD:I

    iget-object v2, p0, Lcom/smartisanos/launcher/view/CalendarView$1;->this$0:Lcom/smartisanos/launcher/view/CalendarView;

    invoke-static {v2}, Lcom/smartisanos/launcher/view/CalendarView;->access$200(Lcom/smartisanos/launcher/view/CalendarView;)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/smartisanos/launcher/view/CalendarView;->access$100(Lcom/smartisanos/launcher/view/CalendarView;ILcom/smartisanos/smengine/SceneNode;)V

    .line 115
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CalendarView$1;->this$0:Lcom/smartisanos/launcher/view/CalendarView;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/CalendarView$1;->this$0:Lcom/smartisanos/launcher/view/CalendarView;

    invoke-static {v1}, Lcom/smartisanos/launcher/view/CalendarView;->access$300(Lcom/smartisanos/launcher/view/CalendarView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/CalendarView;->setLayer(I)V

    .line 116
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    sget v1, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    if-ne v0, v1, :cond_0

    .line 117
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->getFloatPageNode()Lcom/smartisanos/launcher/view/FloatPageNode;

    move-result-object v0

    if-nez v0, :cond_0

    .line 121
    :goto_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CalendarView$1;->this$0:Lcom/smartisanos/launcher/view/CalendarView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/CalendarView;->setVisibility(Z)V

    .line 122
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CalendarView$1;->this$0:Lcom/smartisanos/launcher/view/CalendarView;

    iget-boolean v1, p0, Lcom/smartisanos/launcher/view/CalendarView$1;->val$rev:Z

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/CalendarView;->playAnimation(Z)V

    .line 123
    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CalendarView$1;->this$0:Lcom/smartisanos/launcher/view/CalendarView;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/CalendarView;->updatePageCell()V

    goto :goto_0
.end method
