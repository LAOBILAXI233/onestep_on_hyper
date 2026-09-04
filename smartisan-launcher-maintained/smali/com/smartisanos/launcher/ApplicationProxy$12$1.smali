.class Lcom/smartisanos/launcher/ApplicationProxy$12$1;
.super Ljava/lang/Object;
.source "ApplicationProxy.java"

.implements Ljava/lang/Runnable;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/ApplicationProxy$12;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$1:Lcom/smartisanos/launcher/ApplicationProxy$12;


.method constructor <init>(Lcom/smartisanos/launcher/ApplicationProxy$12;)V
    .locals 0
    .param p1, "this$1"    # Lcom/smartisanos/launcher/ApplicationProxy$12;

    .prologue
    .line 666
    iput-object p1, p0, Lcom/smartisanos/launcher/ApplicationProxy$12$1;->this$1:Lcom/smartisanos/launcher/ApplicationProxy$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public run()V
    .locals 3

    .prologue
    .line 669
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v1

    sget-object v2, Lcom/smartisanos/launcher/view/CalendarView;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/view/MainView;->getActiveIconView(Ljava/lang/String;)Lcom/smartisanos/launcher/view/ActiveIconView;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/CalendarView;

    .line 671
    .local v0, "cv":Lcom/smartisanos/launcher/view/CalendarView;
    if-eqz v0, :cond_0

    .line 672
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/CalendarView;->updateCalendar()V

    .line 673
    iget-object v1, p0, Lcom/smartisanos/launcher/ApplicationProxy$12$1;->this$1:Lcom/smartisanos/launcher/ApplicationProxy$12;

    iget-object v1, v1, Lcom/smartisanos/launcher/ApplicationProxy$12;->this$0:Lcom/smartisanos/launcher/ApplicationProxy;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/ApplicationProxy;->setDateChangeIntent()V

    .line 675
    :cond_0
    return-void
.end method
