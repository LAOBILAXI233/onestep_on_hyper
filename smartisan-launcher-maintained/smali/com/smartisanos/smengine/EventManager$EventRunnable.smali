.class Lcom/smartisanos/smengine/EventManager$EventRunnable;
.super Ljava/lang/Object;
.source "EventManager.java"

.implements Ljava/lang/Runnable;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/smengine/EventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventRunnable"
.end annotation


.field private mEvent:Lcom/smartisanos/smengine/Event;

.field private mTime:J

.field final synthetic this$0:Lcom/smartisanos/smengine/EventManager;


.method public constructor <init>(Lcom/smartisanos/smengine/EventManager;Lcom/smartisanos/smengine/Event;J)V
    .locals 3
    .param p2, "e"    # Lcom/smartisanos/smengine/Event;
    .param p3, "time"    # J

    .prologue
    .line 22
    iput-object p1, p0, Lcom/smartisanos/smengine/EventManager$EventRunnable;->this$0:Lcom/smartisanos/smengine/EventManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartisanos/smengine/EventManager$EventRunnable;->mEvent:Lcom/smartisanos/smengine/Event;

    .line 21
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/smartisanos/smengine/EventManager$EventRunnable;->mTime:J

    .line 23
    iput-object p2, p0, Lcom/smartisanos/smengine/EventManager$EventRunnable;->mEvent:Lcom/smartisanos/smengine/Event;

    .line 24
    iput-wide p3, p0, Lcom/smartisanos/smengine/EventManager$EventRunnable;->mTime:J

    .line 25
    return-void
.end method

.method static synthetic access$100(Lcom/smartisanos/smengine/EventManager$EventRunnable;)Lcom/smartisanos/smengine/Event;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/smengine/EventManager$EventRunnable;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/smartisanos/smengine/EventManager$EventRunnable;->mEvent:Lcom/smartisanos/smengine/Event;

    return-object v0
.end method


.method public run()V
    .locals 10

    .prologue
    .line 29
    iget-object v3, p0, Lcom/smartisanos/smengine/EventManager$EventRunnable;->this$0:Lcom/smartisanos/smengine/EventManager;

    invoke-static {v3}, Lcom/smartisanos/smengine/EventManager;->access$000(Lcom/smartisanos/smengine/EventManager;)Ljava/util/ArrayList;

    move-result-object v4

    monitor-enter v4

    .line 30
    const/4 v0, 0x0

    .line 31
    .local v0, "currentEvent":Lcom/smartisanos/smengine/Event;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/smartisanos/smengine/EventManager$EventRunnable;->this$0:Lcom/smartisanos/smengine/EventManager;

    invoke-static {v3}, Lcom/smartisanos/smengine/EventManager;->access$000(Lcom/smartisanos/smengine/EventManager;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 32
    iget-object v3, p0, Lcom/smartisanos/smengine/EventManager$EventRunnable;->this$0:Lcom/smartisanos/smengine/EventManager;

    invoke-static {v3}, Lcom/smartisanos/smengine/EventManager;->access$000(Lcom/smartisanos/smengine/EventManager;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/smengine/Event;

    .line 33
    .local v1, "e":Lcom/smartisanos/smengine/Event;
    iget-object v3, p0, Lcom/smartisanos/smengine/EventManager$EventRunnable;->mEvent:Lcom/smartisanos/smengine/Event;

    if-ne v1, v3, :cond_2

    iget-wide v6, p0, Lcom/smartisanos/smengine/EventManager$EventRunnable;->mTime:J

    invoke-virtual {v1}, Lcom/smartisanos/smengine/Event;->getTime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/16 v8, 0x1

    cmp-long v3, v6, v8

    if-gtz v3, :cond_2

    .line 34
    move-object v0, v1

    .line 38
    .end local v1    # "e":Lcom/smartisanos/smengine/Event;
    :cond_0
    if-eqz v0, :cond_1

    .line 39
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/Event;->setIsDelayEvent(Z)V

    .line 40
    iget-object v3, p0, Lcom/smartisanos/smengine/EventManager$EventRunnable;->this$0:Lcom/smartisanos/smengine/EventManager;

    invoke-static {v3}, Lcom/smartisanos/smengine/EventManager;->access$000(Lcom/smartisanos/smengine/EventManager;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 41
    iget-object v3, p0, Lcom/smartisanos/smengine/EventManager$EventRunnable;->this$0:Lcom/smartisanos/smengine/EventManager;

    invoke-static {v3}, Lcom/smartisanos/smengine/EventManager;->access$000(Lcom/smartisanos/smengine/EventManager;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/smengine/World;->updateGLView()V

    .line 45
    return-void

    .line 31
    .restart local v1    # "e":Lcom/smartisanos/smengine/Event;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 43
    .end local v1    # "e":Lcom/smartisanos/smengine/Event;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method
