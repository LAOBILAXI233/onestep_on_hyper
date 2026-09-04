.class Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor$1;
.super Ljava/lang/Object;
.source "ContactChangeMonitor.java"

.implements Ljava/lang/Runnable;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor;->initTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor;


.method constructor <init>(Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor$1;->this$0:Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "newTaskCount : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor$1;->this$0:Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor;

    invoke-static {v2}, Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor;->access$000(Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | oldTaskCount : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor$1;->this$0:Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor;

    invoke-static {v2}, Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor;->access$100(Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/smartisanos/quicksearchbox/util/LogUtil;->debug(Ljava/lang/String;)V

    .line 43
    iget-object v1, p0, Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor$1;->this$0:Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor;

    invoke-static {v1}, Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor;->access$100(Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor;)I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor$1;->this$0:Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor;

    invoke-static {v1}, Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor;->access$000(Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor;)I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor$1;->this$0:Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor;

    invoke-static {v1}, Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor;->access$100(Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor;)I

    move-result v1

    iget-object v2, p0, Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor$1;->this$0:Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor;

    invoke-static {v2}, Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor;->access$000(Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor;)I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 45
    iget-object v1, p0, Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor$1;->this$0:Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor;

    invoke-static {v1}, Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor;->access$200(Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->getInstance(Landroid/content/Context;)Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;

    move-result-object v0

    .line 46
    .local v0, "contactSearchIndexHelper":Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;
    invoke-virtual {v0}, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->syncContactAccurate()V

    .line 48
    iget-object v1, p0, Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor$1;->this$0:Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor;

    invoke-static {v1, v3}, Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor;->access$002(Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor;I)I

    .line 49
    iget-object v1, p0, Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor$1;->this$0:Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor;

    invoke-static {v1, v3}, Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor;->access$102(Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor;I)I

    .line 53
    .end local v0    # "contactSearchIndexHelper":Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    iget-object v1, p0, Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor$1;->this$0:Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor;

    invoke-static {v1}, Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor;->access$100(Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor;)I

    move-result v1

    iget-object v2, p0, Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor$1;->this$0:Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor;

    invoke-static {v2}, Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor;->access$000(Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor;)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 51
    iget-object v1, p0, Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor$1;->this$0:Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor;

    iget-object v2, p0, Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor$1;->this$0:Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor;

    invoke-static {v2}, Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor;->access$000(Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor;->access$102(Lcom/smartisanos/quicksearchbox/repository/contact/db/ContactChangeMonitor;I)I

    goto :goto_0
.end method
