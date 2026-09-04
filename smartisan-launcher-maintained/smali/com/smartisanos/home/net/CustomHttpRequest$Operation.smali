.class public abstract Lcom/smartisanos/home/net/CustomHttpRequest$Operation;
.super Ljava/lang/Object;
.source "CustomHttpRequest.java"

.implements Ljava/util/concurrent/Callable;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/home/net/CustomHttpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "Operation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<TV;>;"
    }
.end annotation


.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 690
    .local p0, "this":Lcom/smartisanos/home/net/CustomHttpRequest$Operation;, "Lcom/smartisanos/home/net/CustomHttpRequest$Operation<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 709
    .local p0, "this":Lcom/smartisanos/home/net/CustomHttpRequest$Operation;, "Lcom/smartisanos/home/net/CustomHttpRequest$Operation<TV;>;"
    const/4 v1, 0x0

    .line 711
    .local v1, "thrown":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/smartisanos/home/net/CustomHttpRequest$Operation;->run()Ljava/lang/Object;
    :try_end_0
    .catch Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 720
    :try_start_1
    invoke-virtual {p0}, Lcom/smartisanos/home/net/CustomHttpRequest$Operation;->done()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 724
    :cond_0
    return-object v2

    .line 721
    :catch_0
    move-exception v0

    .line 722
    .local v0, "e":Ljava/io/IOException;
    if-nez v1, :cond_0

    .line 723
    new-instance v2, Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;

    invoke-direct {v2, v0}, Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v2

    .line 712
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 713
    .local v0, "e":Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;
    const/4 v1, 0x1

    .line 714
    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 719
    .end local v0    # "e":Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;
    :catchall_0
    move-exception v2

    .line 720
    :try_start_3
    invoke-virtual {p0}, Lcom/smartisanos/home/net/CustomHttpRequest$Operation;->done()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 724
    :cond_1
    throw v2

    .line 715
    :catch_2
    move-exception v0

    .line 716
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x1

    .line 717
    :try_start_4
    new-instance v2, Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;

    invoke-direct {v2, v0}, Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 721
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 722
    .restart local v0    # "e":Ljava/io/IOException;
    if-nez v1, :cond_1

    .line 723
    new-instance v2, Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;

    invoke-direct {v2, v0}, Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v2
.end method

.method protected abstract done()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract run()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
