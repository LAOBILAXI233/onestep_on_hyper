.class final Lcom/smartisanos/launcher/data/DatabaseHandler$11;
.super Lcom/smartisanos/smengine/Event;
.source "DatabaseHandler.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/data/DatabaseHandler;->handleEventInstallShortcut(Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


.field final synthetic val$pTask:Lcom/smartisanos/launcher/data/DatabaseHandler$PackageTask;


.method constructor <init>(ILcom/smartisanos/launcher/data/DatabaseHandler$PackageTask;)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 2480
    iput-object p2, p0, Lcom/smartisanos/launcher/data/DatabaseHandler$11;->val$pTask:Lcom/smartisanos/launcher/data/DatabaseHandler$PackageTask;

    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/Event;-><init>(I)V

    return-void
.end method


.method public run()V
    .locals 1

    .prologue
    .line 2483
    iget-object v0, p0, Lcom/smartisanos/launcher/data/DatabaseHandler$11;->val$pTask:Lcom/smartisanos/launcher/data/DatabaseHandler$PackageTask;

    invoke-static {v0}, Lcom/smartisanos/launcher/data/DatabaseHandler$PackageTask;->appendTask(Lcom/smartisanos/launcher/data/DatabaseHandler$PackageTask;)V

    .line 2484
    invoke-static {}, Lcom/smartisanos/launcher/data/DatabaseHandler$PackageTask;->handleTaskList()V

    .line 2485
    return-void
.end method
