.class Lcom/smartisanos/smengine/util/BufferUtils$ClearReferences;
.super Ljava/lang/Thread;
.source "BufferUtils.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/smengine/util/BufferUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ClearReferences"
.end annotation


.method constructor <init>()V
    .locals 1

    .prologue
    .line 1346
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1347
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/util/BufferUtils$ClearReferences;->setDaemon(Z)V

    .line 1348
    return-void
.end method


.method public run()V
    .locals 3

    .prologue
    .line 1354
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/smartisanos/smengine/util/BufferUtils;->access$200()Ljava/lang/ref/ReferenceQueue;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/ReferenceQueue;->remove()Ljava/lang/ref/Reference;

    move-result-object v1

    .line 1355
    .local v1, "toclean":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<+Ljava/nio/Buffer;>;"
    invoke-static {}, Lcom/smartisanos/smengine/util/BufferUtils;->access$300()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1358
    .end local v1    # "toclean":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<+Ljava/nio/Buffer;>;"
    :catch_0
    move-exception v0

    .line 1359
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1361
    return-void
.end method
