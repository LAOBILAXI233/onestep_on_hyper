.class public abstract Lcom/smartisanos/home/net/CustomHttpRequest$FlushOperation;
.super Lcom/smartisanos/home/net/CustomHttpRequest$Operation;
.source "CustomHttpRequest.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/home/net/CustomHttpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "FlushOperation"
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


.field private final flushable:Ljava/io/Flushable;


.method protected constructor <init>(Ljava/io/Flushable;)V
    .locals 0
    .param p1, "flushable"    # Ljava/io/Flushable;

    .prologue
    .line 783
    .local p0, "this":Lcom/smartisanos/home/net/CustomHttpRequest$FlushOperation;, "Lcom/smartisanos/home/net/CustomHttpRequest$FlushOperation<TV;>;"
    invoke-direct {p0}, Lcom/smartisanos/home/net/CustomHttpRequest$Operation;-><init>()V

    .line 784
    iput-object p1, p0, Lcom/smartisanos/home/net/CustomHttpRequest$FlushOperation;->flushable:Ljava/io/Flushable;

    .line 785
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
    .line 789
    .local p0, "this":Lcom/smartisanos/home/net/CustomHttpRequest$FlushOperation;, "Lcom/smartisanos/home/net/CustomHttpRequest$FlushOperation<TV;>;"
    iget-object v0, p0, Lcom/smartisanos/home/net/CustomHttpRequest$FlushOperation;->flushable:Ljava/io/Flushable;

    invoke-interface {v0}, Ljava/io/Flushable;->flush()V

    .line 790
    return-void
.end method
