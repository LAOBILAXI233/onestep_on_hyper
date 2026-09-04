.class Lcom/smartisanos/launcher/data/DatabaseHandler$6$1;
.super Lcom/smartisanos/smengine/Event;
.source "DatabaseHandler.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/data/DatabaseHandler$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/data/DatabaseHandler$6;


.method constructor <init>(Lcom/smartisanos/launcher/data/DatabaseHandler$6;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/data/DatabaseHandler$6;
    .param p2, "type"    # I

    .prologue
    .line 2157
    iput-object p1, p0, Lcom/smartisanos/launcher/data/DatabaseHandler$6$1;->this$0:Lcom/smartisanos/launcher/data/DatabaseHandler$6;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/Event;-><init>(I)V

    return-void
.end method


.method public run()V
    .locals 4

    .prologue
    .line 2160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2161
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    iget-object v2, p0, Lcom/smartisanos/launcher/data/DatabaseHandler$6$1;->this$0:Lcom/smartisanos/launcher/data/DatabaseHandler$6;

    iget-object v2, v2, Lcom/smartisanos/launcher/data/DatabaseHandler$6;->val$item:Lcom/smartisanos/launcher/data/ItemInfo;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2162
    new-instance v1, Lcom/smartisanos/launcher/data/DatabaseHandler$PackageTask;

    iget-object v2, p0, Lcom/smartisanos/launcher/data/DatabaseHandler$6$1;->this$0:Lcom/smartisanos/launcher/data/DatabaseHandler$6;

    iget-object v2, v2, Lcom/smartisanos/launcher/data/DatabaseHandler$6;->val$item:Lcom/smartisanos/launcher/data/ItemInfo;

    iget-object v2, v2, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3, v0}, Lcom/smartisanos/launcher/data/DatabaseHandler$PackageTask;-><init>(Ljava/lang/String;ILjava/util/List;)V

    .line 2163
    .local v1, "pTask":Lcom/smartisanos/launcher/data/DatabaseHandler$PackageTask;
    invoke-static {v1}, Lcom/smartisanos/launcher/data/DatabaseHandler$PackageTask;->appendTask(Lcom/smartisanos/launcher/data/DatabaseHandler$PackageTask;)V

    .line 2164
    invoke-static {}, Lcom/smartisanos/launcher/data/DatabaseHandler$PackageTask;->handleTaskList()V

    .line 2165
    return-void
.end method
