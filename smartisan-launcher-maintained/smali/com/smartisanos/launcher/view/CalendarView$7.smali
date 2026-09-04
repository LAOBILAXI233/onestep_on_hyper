.class Lcom/smartisanos/launcher/view/CalendarView$7;
.super Ljava/lang/Object;
.source "CalendarView.java"

.implements Ljava/lang/Runnable;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/CalendarView;->setTimeout()V
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
    .line 864
    iput-object p1, p0, Lcom/smartisanos/launcher/view/CalendarView$7;->this$0:Lcom/smartisanos/launcher/view/CalendarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public run()V
    .locals 2

    .prologue
    .line 867
    new-instance v0, Lcom/smartisanos/launcher/view/CalendarView$7$1;

    const/16 v1, 0x64

    invoke-direct {v0, p0, v1}, Lcom/smartisanos/launcher/view/CalendarView$7$1;-><init>(Lcom/smartisanos/launcher/view/CalendarView$7;I)V

    const/4 v1, 0x0

    .line 873
    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/CalendarView$7$1;->send(F)V

    .line 874
    return-void
.end method
