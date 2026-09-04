.class Lcom/smartisanos/launcher/view/CalendarView$6;
.super Lcom/smartisanos/smengine/Event;
.source "CalendarView.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/CalendarView;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/view/CalendarView;


.method constructor <init>(Lcom/smartisanos/launcher/view/CalendarView;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/CalendarView;
    .param p2, "type"    # I

    .prologue
    .line 812
    iput-object p1, p0, Lcom/smartisanos/launcher/view/CalendarView$6;->this$0:Lcom/smartisanos/launcher/view/CalendarView;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/Event;-><init>(I)V

    return-void
.end method


.method public run()V
    .locals 1

    .prologue
    .line 815
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CalendarView$6;->this$0:Lcom/smartisanos/launcher/view/CalendarView;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/CalendarView;->updateCalendar()V

    .line 816
    return-void
.end method
