.class Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor$2;
.super Landroid/database/ContentObserver;
.source "ContactChangeMonitor.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor;->registMonitor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor;


.method constructor <init>(Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor;
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor$2;->this$0:Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 90
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 91
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor$2;->this$0:Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor;

    invoke-static {v0}, Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor;->access$008(Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor;)I

    .line 92
    return-void
.end method
