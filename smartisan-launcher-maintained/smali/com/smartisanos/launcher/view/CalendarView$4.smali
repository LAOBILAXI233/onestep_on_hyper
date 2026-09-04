.class Lcom/smartisanos/launcher/view/CalendarView$4;
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


.method constructor <init>(Lcom/smartisanos/launcher/view/CalendarView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/CalendarView;

    .prologue
    .line 523
    iput-object p1, p0, Lcom/smartisanos/launcher/view/CalendarView$4;->this$0:Lcom/smartisanos/launcher/view/CalendarView;

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    return-void
.end method


.method public onComplete()V
    .locals 1

    .prologue
    .line 525
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CalendarView$4;->this$0:Lcom/smartisanos/launcher/view/CalendarView;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/CalendarView;->access$700(Lcom/smartisanos/launcher/view/CalendarView;)V

    .line 526
    return-void
.end method
