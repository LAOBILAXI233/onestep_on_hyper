.class public Lcom/smartisanos/smengine/EventManager;
.super Ljava/lang/Object;
.source "EventManager.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/smengine/EventManager$EventRunnable;
    }
.end annotation


.field private static final log:Lcom/smartisanos/launcher/LOG;


.field private mCurrentEventList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/smengine/Event;",
            ">;"
        }
    .end annotation
.end field

.field private mDelayRunnableList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/smengine/EventManager$EventRunnable;",
            ">;"
        }
    .end annotation
.end field

.field private mEventQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/smengine/Event;",
            ">;"
        }
    .end annotation
.end field

.field private mTmpEventList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/smengine/Event;",
            ">;"
        }
    .end annotation
.end field


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/smartisanos/smengine/EventManager;

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/smengine/EventManager;->log:Lcom/smartisanos/launcher/LOG;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/EventManager;->mEventQueue:Ljava/util/ArrayList;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/EventManager;->mCurrentEventList:Ljava/util/ArrayList;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/EventManager;->mDelayRunnableList:Ljava/util/ArrayList;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/EventManager;->mTmpEventList:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/smartisanos/smengine/EventManager;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/smengine/EventManager;

    .prologue
    .line 12
    iget-object v0, p0, Lcom/smartisanos/smengine/EventManager;->mEventQueue:Ljava/util/ArrayList;

    return-object v0
.end method


.method public removeEvent(Lcom/smartisanos/smengine/Event;)V
    .locals 5
    .param p1, "event"    # Lcom/smartisanos/smengine/Event;

    .prologue
    .line 74
    if-nez p1, :cond_1

    .line 98
    :cond_0
    return-void

    .line 77
    :cond_1
    iget-object v4, p0, Lcom/smartisanos/smengine/EventManager;->mEventQueue:Ljava/util/ArrayList;

    monitor-enter v4

    .line 78
    :try_start_0
    iget-object v3, p0, Lcom/smartisanos/smengine/EventManager;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 79
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .local v2, "rmFromMainHandler":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/smengine/EventManager$EventRunnable;>;"
    iget-object v4, p0, Lcom/smartisanos/smengine/EventManager;->mDelayRunnableList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 82
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_1
    iget-object v3, p0, Lcom/smartisanos/smengine/EventManager;->mDelayRunnableList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 83
    iget-object v3, p0, Lcom/smartisanos/smengine/EventManager;->mDelayRunnableList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/smengine/EventManager$EventRunnable;

    .line 84
    .local v0, "er":Lcom/smartisanos/smengine/EventManager$EventRunnable;
    invoke-static {v0}, Lcom/smartisanos/smengine/EventManager$EventRunnable;->access$100(Lcom/smartisanos/smengine/EventManager$EventRunnable;)Lcom/smartisanos/smengine/Event;

    move-result-object v3

    if-ne v3, p1, :cond_2

    .line 85
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 82
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 79
    .end local v0    # "er":Lcom/smartisanos/smengine/EventManager$EventRunnable;
    .end local v1    # "i":I
    .end local v2    # "rmFromMainHandler":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/smengine/EventManager$EventRunnable;>;"
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 88
    .restart local v1    # "i":I
    .restart local v2    # "rmFromMainHandler":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/smengine/EventManager$EventRunnable;>;"
    :cond_3
    const/4 v1, 0x0

    :goto_1
    :try_start_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 89
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/smengine/EventManager$EventRunnable;

    .line 90
    .restart local v0    # "er":Lcom/smartisanos/smengine/EventManager$EventRunnable;
    iget-object v3, p0, Lcom/smartisanos/smengine/EventManager;->mDelayRunnableList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 88
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 92
    .end local v0    # "er":Lcom/smartisanos/smengine/EventManager$EventRunnable;
    :cond_4
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 93
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 94
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/smengine/EventManager$EventRunnable;

    .line 95
    .restart local v0    # "er":Lcom/smartisanos/smengine/EventManager$EventRunnable;
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/smengine/World;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 93
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 92
    .end local v0    # "er":Lcom/smartisanos/smengine/EventManager$EventRunnable;
    :catchall_1
    move-exception v3

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v3
.end method

.method public sendEvent(Lcom/smartisanos/smengine/Event;)V
    .locals 1
    .param p1, "event"    # Lcom/smartisanos/smengine/Event;

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/smartisanos/smengine/EventManager;->sendEvent(Lcom/smartisanos/smengine/Event;F)V

    .line 102
    return-void
.end method

.method public sendEvent(Lcom/smartisanos/smengine/Event;F)V
    .locals 9
    .param p1, "event"    # Lcom/smartisanos/smengine/Event;
    .param p2, "delay"    # F

    .prologue
    const/high16 v8, 0x447a0000    # 1000.0f

    .line 49
    if-nez p1, :cond_0

    .line 72
    :goto_0
    return-void

    .line 52
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 53
    .local v0, "currentTime":J
    mul-float v3, p2, v8

    float-to-long v6, v3

    add-long v4, v0, v6

    .line 54
    .local v4, "time":J
    invoke-virtual {p1, v4, v5}, Lcom/smartisanos/smengine/Event;->setTime(J)V

    .line 55
    const/4 v3, 0x0

    cmpg-float v3, p2, v3

    if-gtz v3, :cond_1

    .line 56
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lcom/smartisanos/smengine/Event;->setIsDelayEvent(Z)V

    .line 57
    iget-object v6, p0, Lcom/smartisanos/smengine/EventManager;->mEventQueue:Ljava/util/ArrayList;

    monitor-enter v6

    .line 58
    :try_start_0
    iget-object v3, p0, Lcom/smartisanos/smengine/EventManager;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/smengine/World;->updateGLView()V

    goto :goto_0

    .line 59
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 62
    :cond_1
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Lcom/smartisanos/smengine/Event;->setIsDelayEvent(Z)V

    .line 63
    new-instance v2, Lcom/smartisanos/smengine/EventManager$EventRunnable;

    invoke-direct {v2, p0, p1, v4, v5}, Lcom/smartisanos/smengine/EventManager$EventRunnable;-><init>(Lcom/smartisanos/smengine/EventManager;Lcom/smartisanos/smengine/Event;J)V

    .line 64
    .local v2, "re":Lcom/smartisanos/smengine/EventManager$EventRunnable;
    iget-object v6, p0, Lcom/smartisanos/smengine/EventManager;->mEventQueue:Ljava/util/ArrayList;

    monitor-enter v6

    .line 65
    :try_start_2
    iget-object v3, p0, Lcom/smartisanos/smengine/EventManager;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 67
    iget-object v6, p0, Lcom/smartisanos/smengine/EventManager;->mDelayRunnableList:Ljava/util/ArrayList;

    monitor-enter v6

    .line 68
    :try_start_3
    iget-object v3, p0, Lcom/smartisanos/smengine/EventManager;->mDelayRunnableList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 70
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/smengine/World;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v3

    mul-float v6, v8, p2

    float-to-long v6, v6

    invoke-virtual {v3, v2, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 66
    :catchall_1
    move-exception v3

    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v3

    .line 69
    :catchall_2
    move-exception v3

    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v3
.end method

.method public setEventStartByType(I)V
    .locals 4
    .param p1, "eventType"    # I

    .prologue
    .line 104
    iget-object v3, p0, Lcom/smartisanos/smengine/EventManager;->mEventQueue:Ljava/util/ArrayList;

    monitor-enter v3

    .line 105
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/smartisanos/smengine/EventManager;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 106
    iget-object v2, p0, Lcom/smartisanos/smengine/EventManager;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/smengine/Event;

    .line 107
    .local v0, "e":Lcom/smartisanos/smengine/Event;
    invoke-virtual {v0}, Lcom/smartisanos/smengine/Event;->getType()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 108
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/Event;->setPause(Z)Lcom/smartisanos/smengine/Event;

    .line 105
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 111
    .end local v0    # "e":Lcom/smartisanos/smengine/Event;
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/World;->updateGLView()V

    .line 113
    return-void

    .line 111
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public update(F)V
    .locals 0
    .param p1, "deltaT"    # F

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/smartisanos/smengine/EventManager;->updateAllEvent()V

    .line 167
    return-void
.end method

.method public updateAllEvent()V
    .locals 6

    .prologue
    .line 135
    iget-object v3, p0, Lcom/smartisanos/smengine/EventManager;->mCurrentEventList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 136
    iget-object v3, p0, Lcom/smartisanos/smengine/EventManager;->mTmpEventList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 137
    iget-object v4, p0, Lcom/smartisanos/smengine/EventManager;->mEventQueue:Ljava/util/ArrayList;

    monitor-enter v4

    .line 138
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/smartisanos/smengine/EventManager;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 139
    iget-object v3, p0, Lcom/smartisanos/smengine/EventManager;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/smengine/Event;

    .line 140
    .local v0, "e":Lcom/smartisanos/smengine/Event;
    invoke-virtual {v0}, Lcom/smartisanos/smengine/Event;->isPause()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Event;->isDelayEvent()Z

    move-result v3

    if-nez v3, :cond_0

    .line 141
    iget-object v3, p0, Lcom/smartisanos/smengine/EventManager;->mCurrentEventList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 143
    :cond_0
    iget-object v3, p0, Lcom/smartisanos/smengine/EventManager;->mTmpEventList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 152
    .end local v0    # "e":Lcom/smartisanos/smengine/Event;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 146
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/smartisanos/smengine/EventManager;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 147
    const/4 v2, 0x0

    :goto_2
    iget-object v3, p0, Lcom/smartisanos/smengine/EventManager;->mTmpEventList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 148
    iget-object v3, p0, Lcom/smartisanos/smengine/EventManager;->mTmpEventList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/smengine/Event;

    .line 149
    .restart local v0    # "e":Lcom/smartisanos/smengine/Event;
    iget-object v3, p0, Lcom/smartisanos/smengine/EventManager;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 151
    .end local v0    # "e":Lcom/smartisanos/smengine/Event;
    :cond_2
    iget-object v3, p0, Lcom/smartisanos/smengine/EventManager;->mTmpEventList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 152
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 153
    const/4 v2, 0x0

    :goto_3
    iget-object v3, p0, Lcom/smartisanos/smengine/EventManager;->mCurrentEventList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 154
    iget-object v3, p0, Lcom/smartisanos/smengine/EventManager;->mCurrentEventList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/smengine/Event;

    .line 155
    .local v1, "event":Lcom/smartisanos/smengine/Event;
    invoke-virtual {v1}, Lcom/smartisanos/smengine/Event;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 156
    sget-boolean v3, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v3, :cond_3

    sget-object v3, Lcom/smartisanos/smengine/EventManager;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "event run:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/smartisanos/smengine/Event;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 158
    :cond_3
    invoke-virtual {v1}, Lcom/smartisanos/smengine/Event;->run()V

    .line 159
    invoke-virtual {p0, v1}, Lcom/smartisanos/smengine/EventManager;->removeEvent(Lcom/smartisanos/smengine/Event;)V

    .line 153
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 161
    .end local v1    # "event":Lcom/smartisanos/smengine/Event;
    :cond_4
    iget-object v3, p0, Lcom/smartisanos/smengine/EventManager;->mCurrentEventList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 162
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/smengine/World;->updateGLView()V

    .line 164
    :cond_5
    return-void
.end method
