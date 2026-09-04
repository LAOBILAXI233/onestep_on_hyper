.class public Lcom/smartisan/trackerlib/TrackerCache;
.super Ljava/lang/Object;
.source "TrackerCache.java"


.field private mMaxItems:I

.field private mTransList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/smartisan/trackerlib/TransportEntity;",
            ">;"
        }
    .end annotation
.end field


.method constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/16 v0, 0x9

    iput v0, p0, Lcom/smartisan/trackerlib/TrackerCache;->mMaxItems:I

    .line 15
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisan/trackerlib/TrackerCache;->mTransList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 16
    return-void
.end method


.method checkNeedFlush()V
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/smartisan/trackerlib/TrackerCache;->mTransList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/smartisan/trackerlib/TrackerCache;->mMaxItems:I

    if-le v0, v1, :cond_0

    .line 32
    invoke-virtual {p0}, Lcom/smartisan/trackerlib/TrackerCache;->flushCacheData()V

    .line 34
    :cond_0
    return-void
.end method

.method flushCacheData()V
    .locals 2

    .prologue
    .line 24
    iget-object v1, p0, Lcom/smartisan/trackerlib/TrackerCache;->mTransList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    new-array v0, v1, [Lcom/smartisan/trackerlib/TransportEntity;

    .line 25
    .local v0, "array":[Lcom/smartisan/trackerlib/TransportEntity;
    iget-object v1, p0, Lcom/smartisan/trackerlib/TrackerCache;->mTransList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 26
    iget-object v1, p0, Lcom/smartisan/trackerlib/TrackerCache;->mTransList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 27
    invoke-virtual {p0, v0}, Lcom/smartisan/trackerlib/TrackerCache;->startUploadTask([Lcom/smartisan/trackerlib/TransportEntity;)V

    .line 28
    return-void
.end method

.method insertOrUpdateCache(Lcom/smartisan/trackerlib/TransportEntity;)V
    .locals 1
    .param p1, "entity"    # Lcom/smartisan/trackerlib/TransportEntity;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/smartisan/trackerlib/TrackerCache;->mTransList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    invoke-virtual {p0}, Lcom/smartisan/trackerlib/TrackerCache;->checkNeedFlush()V

    .line 21
    return-void
.end method

.method size()I
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/smartisan/trackerlib/TrackerCache;->mTransList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    return v0
.end method

.method public startUploadTask([Lcom/smartisan/trackerlib/TransportEntity;)V
    .locals 2
    .param p1, "transportEntities"    # [Lcom/smartisan/trackerlib/TransportEntity;

    .prologue
    .line 43
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 44
    invoke-static {}, Lcom/smartisan/trackerlib/task/UploadTask;->getInstance()Lcom/smartisan/trackerlib/task/UploadTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/smartisan/trackerlib/task/UploadTask;->saveOrGetData(I[Lcom/smartisan/trackerlib/TransportEntity;)[[Lcom/smartisan/trackerlib/TransportEntity;

    .line 46
    :cond_0
    return-void
.end method
