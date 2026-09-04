.class public abstract Lcom/smartisanos/home/net/CustomHttpRequest$CloseOperation;
.super Lcom/smartisanos/home/net/CustomHttpRequest$Operation;
.source "CustomHttpRequest.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/home/net/CustomHttpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "CloseOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/smartisanos/home/net/CustomHttpRequest$Operation",
        "<TV;>;"
    }
.end annotation


.field private final closeable:Ljava/io/Closeable;

.field private final ignoreCloseExceptions:Z


.method protected constructor <init>(Ljava/io/Closeable;Z)V
    .locals 0
    .param p1, "closeable"    # Ljava/io/Closeable;
    .param p2, "ignoreCloseExceptions"    # Z

    .prologue
    .line 748
    .local p0, "this":Lcom/smartisanos/home/net/CustomHttpRequest$CloseOperation;, "Lcom/smartisanos/home/net/CustomHttpRequest$CloseOperation<TV;>;"
    invoke-direct {p0}, Lcom/smartisanos/home/net/CustomHttpRequest$Operation;-><init>()V

    .line 749
    iput-object p1, p0, Lcom/smartisanos/home/net/CustomHttpRequest$CloseOperation;->closeable:Ljava/io/Closeable;

    .line 750
    iput-boolean p2, p0, Lcom/smartisanos/home/net/CustomHttpRequest$CloseOperation;->ignoreCloseExceptions:Z

    .line 751
    return-void
.end method


.method protected done()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 755
    .local p0, "this":Lcom/smartisanos/home/net/CustomHttpRequest$CloseOperation;, "Lcom/smartisanos/home/net/CustomHttpRequest$CloseOperation<TV;>;"
    iget-object v0, p0, Lcom/smartisanos/home/net/CustomHttpRequest$CloseOperation;->closeable:Ljava/io/Closeable;

    instance-of v0, v0, Ljava/io/Flushable;

    if-eqz v0, :cond_0

    .line 756
    iget-object v0, p0, Lcom/smartisanos/home/net/CustomHttpRequest$CloseOperation;->closeable:Ljava/io/Closeable;

    check-cast v0, Ljava/io/Flushable;

    invoke-interface {v0}, Ljava/io/Flushable;->flush()V

    .line 757
    :cond_0
    iget-boolean v0, p0, Lcom/smartisanos/home/net/CustomHttpRequest$CloseOperation;->ignoreCloseExceptions:Z

    if-eqz v0, :cond_1

    .line 759
    :try_start_0
    iget-object v0, p0, Lcom/smartisanos/home/net/CustomHttpRequest$CloseOperation;->closeable:Ljava/io/Closeable;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 765
    :goto_0
    return-void

    .line 764
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/home/net/CustomHttpRequest$CloseOperation;->closeable:Ljava/io/Closeable;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    goto :goto_0

    .line 760
    :catch_0
    move-exception v0

    goto :goto_0
.end method
