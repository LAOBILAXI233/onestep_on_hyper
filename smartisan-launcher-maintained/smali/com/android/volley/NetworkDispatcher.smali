.class public Lcom/android/volley/NetworkDispatcher;
.super Ljava/lang/Thread;
.source "NetworkDispatcher.java"


.field private final mCache:Lcom/android/volley/Cache;

.field private final mDelivery:Lcom/android/volley/ResponseDelivery;

.field private final mNetwork:Lcom/android/volley/Network;

.field private final mQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/android/volley/Request;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mQuit:Z


.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Lcom/android/volley/Network;Lcom/android/volley/Cache;Lcom/android/volley/ResponseDelivery;)V
    .locals 1
    .param p2, "network"    # Lcom/android/volley/Network;
    .param p3, "cache"    # Lcom/android/volley/Cache;
    .param p4, "delivery"    # Lcom/android/volley/ResponseDelivery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/android/volley/Request;",
            ">;",
            "Lcom/android/volley/Network;",
            "Lcom/android/volley/Cache;",
            "Lcom/android/volley/ResponseDelivery;",
            ")V"
        }
    .end annotation

    .prologue
    .line 55
    .local p1, "queue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Lcom/android/volley/Request;>;"
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/volley/NetworkDispatcher;->mQuit:Z

    .line 58
    iput-object p1, p0, Lcom/android/volley/NetworkDispatcher;->mQueue:Ljava/util/concurrent/BlockingQueue;

    .line 59
    iput-object p2, p0, Lcom/android/volley/NetworkDispatcher;->mNetwork:Lcom/android/volley/Network;

    .line 60
    iput-object p3, p0, Lcom/android/volley/NetworkDispatcher;->mCache:Lcom/android/volley/Cache;

    .line 61
    iput-object p4, p0, Lcom/android/volley/NetworkDispatcher;->mDelivery:Lcom/android/volley/ResponseDelivery;

    .line 62
    return-void
.end method

.method private parseAndDeliverNetworkError(Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V
    .locals 1
    .param p2, "error"    # Lcom/android/volley/VolleyError;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request",
            "<*>;",
            "Lcom/android/volley/VolleyError;",
            ")V"
        }
    .end annotation

    .prologue
    .line 139
    .local p1, "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
    invoke-virtual {p1, p2}, Lcom/android/volley/Request;->parseNetworkError(Lcom/android/volley/VolleyError;)Lcom/android/volley/VolleyError;

    move-result-object p2

    .line 140
    iget-object v0, p0, Lcom/android/volley/NetworkDispatcher;->mDelivery:Lcom/android/volley/ResponseDelivery;

    invoke-interface {v0, p1, p2}, Lcom/android/volley/ResponseDelivery;->postError(Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V

    .line 141
    return-void
.end method


.method public quit()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/volley/NetworkDispatcher;->mQuit:Z

    .line 70
    invoke-virtual {p0}, Lcom/android/volley/NetworkDispatcher;->interrupt()V

    .line 71
    return-void
.end method

.method public run()V
    .locals 9

    .prologue
    .line 75
    const/16 v5, 0xa

    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    .line 80
    :cond_0
    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/android/volley/NetworkDispatcher;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v5}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/volley/Request;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 90
    .local v2, "request":Lcom/android/volley/Request;
    :try_start_1
    const-string v5, "network-queue-take"

    invoke-virtual {v2, v5}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v2}, Lcom/android/volley/Request;->isCanceled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 95
    const-string v5, "network-discard-cancelled"

    invoke-virtual {v2, v5}, Lcom/android/volley/Request;->finish(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/android/volley/VolleyError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 129
    :catch_0
    move-exception v4

    .line 130
    .local v4, "volleyError":Lcom/android/volley/VolleyError;
    invoke-direct {p0, v2, v4}, Lcom/android/volley/NetworkDispatcher;->parseAndDeliverNetworkError(Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V

    goto :goto_0

    .line 81
    .end local v2    # "request":Lcom/android/volley/Request;
    .end local v4    # "volleyError":Lcom/android/volley/VolleyError;
    :catch_1
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/InterruptedException;
    iget-boolean v5, p0, Lcom/android/volley/NetworkDispatcher;->mQuit:Z

    if-eqz v5, :cond_0

    .line 84
    return-void

    .line 100
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .restart local v2    # "request":Lcom/android/volley/Request;
    :cond_1
    :try_start_2
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xe

    if-lt v5, v6, :cond_2

    .line 101
    invoke-virtual {v2}, Lcom/android/volley/Request;->getTrafficStatsTag()I

    move-result v5

    invoke-static {v5}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 105
    :cond_2
    iget-object v5, p0, Lcom/android/volley/NetworkDispatcher;->mNetwork:Lcom/android/volley/Network;

    invoke-interface {v5, v2}, Lcom/android/volley/Network;->performRequest(Lcom/android/volley/Request;)Lcom/android/volley/NetworkResponse;

    move-result-object v1

    .line 106
    .local v1, "networkResponse":Lcom/android/volley/NetworkResponse;
    const-string v5, "network-http-complete"

    invoke-virtual {v2, v5}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 110
    iget-boolean v5, v1, Lcom/android/volley/NetworkResponse;->notModified:Z

    if-eqz v5, :cond_3

    invoke-virtual {v2}, Lcom/android/volley/Request;->hasHadResponseDelivered()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 111
    const-string v5, "not-modified"

    invoke-virtual {v2, v5}, Lcom/android/volley/Request;->finish(Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/android/volley/VolleyError; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 131
    .end local v1    # "networkResponse":Lcom/android/volley/NetworkResponse;
    :catch_2
    move-exception v0

    .line 132
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "Unhandled exception %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v0, v5, v6}, Lcom/android/volley/VolleyLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 133
    iget-object v5, p0, Lcom/android/volley/NetworkDispatcher;->mDelivery:Lcom/android/volley/ResponseDelivery;

    new-instance v6, Lcom/android/volley/VolleyError;

    invoke-direct {v6, v0}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v5, v2, v6}, Lcom/android/volley/ResponseDelivery;->postError(Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V

    goto :goto_0

    .line 116
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "networkResponse":Lcom/android/volley/NetworkResponse;
    :cond_3
    :try_start_3
    invoke-virtual {v2, v1}, Lcom/android/volley/Request;->parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;

    move-result-object v3

    .line 117
    .local v3, "response":Lcom/android/volley/Response;, "Lcom/android/volley/Response<*>;"
    const-string v5, "network-parse-complete"

    invoke-virtual {v2, v5}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v2}, Lcom/android/volley/Request;->shouldCache()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, v3, Lcom/android/volley/Response;->cacheEntry:Lcom/android/volley/Cache$Entry;

    if-eqz v5, :cond_4

    .line 122
    iget-object v5, p0, Lcom/android/volley/NetworkDispatcher;->mCache:Lcom/android/volley/Cache;

    invoke-virtual {v2}, Lcom/android/volley/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v3, Lcom/android/volley/Response;->cacheEntry:Lcom/android/volley/Cache$Entry;

    invoke-interface {v5, v6, v7}, Lcom/android/volley/Cache;->put(Ljava/lang/String;Lcom/android/volley/Cache$Entry;)V

    .line 123
    const-string v5, "network-cache-written"

    invoke-virtual {v2, v5}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 127
    :cond_4
    invoke-virtual {v2}, Lcom/android/volley/Request;->markDelivered()V

    .line 128
    iget-object v5, p0, Lcom/android/volley/NetworkDispatcher;->mDelivery:Lcom/android/volley/ResponseDelivery;

    invoke-interface {v5, v2, v3}, Lcom/android/volley/ResponseDelivery;->postResponse(Lcom/android/volley/Request;Lcom/android/volley/Response;)V
    :try_end_3
    .catch Lcom/android/volley/VolleyError; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0
.end method
