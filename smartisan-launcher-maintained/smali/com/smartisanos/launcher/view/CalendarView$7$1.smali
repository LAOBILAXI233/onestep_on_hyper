.class Lcom/smartisanos/launcher/view/CalendarView$7$1;
.super Lcom/smartisanos/smengine/Event;
.source "CalendarView.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/CalendarView$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$1:Lcom/smartisanos/launcher/view/CalendarView$7;


.method constructor <init>(Lcom/smartisanos/launcher/view/CalendarView$7;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/smartisanos/launcher/view/CalendarView$7;
    .param p2, "type"    # I

    .prologue
    .line 867
    iput-object p1, p0, Lcom/smartisanos/launcher/view/CalendarView$7$1;->this$1:Lcom/smartisanos/launcher/view/CalendarView$7;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/Event;-><init>(I)V

    return-void
.end method


.method public run()V
    .locals 1

    .prologue
    .line 869
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CalendarView$7$1;->this$1:Lcom/smartisanos/launcher/view/CalendarView$7;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/CalendarView$7;->this$0:Lcom/smartisanos/launcher/view/CalendarView;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/CalendarView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 870
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CalendarView$7$1;->this$1:Lcom/smartisanos/launcher/view/CalendarView$7;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/CalendarView$7;->this$0:Lcom/smartisanos/launcher/view/CalendarView;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/CalendarView;->access$700(Lcom/smartisanos/launcher/view/CalendarView;)V

    .line 872
    :cond_0
    return-void
.end method
