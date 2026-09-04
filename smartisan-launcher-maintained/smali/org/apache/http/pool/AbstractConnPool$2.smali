.class Lorg/apache/http/pool/AbstractConnPool$2;
.super Lorg/apache/http/pool/PoolEntryFuture;
.source "AbstractConnPool.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/http/pool/AbstractConnPool;->lease(Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/http/concurrent/FutureCallback;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/http/pool/PoolEntryFuture",
        "<TE;>;"
    }
.end annotation


.field final synthetic this$0:Lorg/apache/http/pool/AbstractConnPool;

.field final synthetic val$route:Ljava/lang/Object;

.field final synthetic val$state:Ljava/lang/Object;


.method constructor <init>(Lorg/apache/http/pool/AbstractConnPool;Ljava/util/concurrent/locks/Lock;Lorg/apache/http/concurrent/FutureCallback;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p2, "x0"    # Ljava/util/concurrent/locks/Lock;

    .prologue
    .line 170
    .local p0, "this":Lorg/apache/http/pool/AbstractConnPool$2;, "Lorg/apache/http/pool/AbstractConnPool.2;"
    .local p3, "x1":Lorg/apache/http/concurrent/FutureCallback;, "Lorg/apache/http/concurrent/FutureCallback<TE;>;"
    iput-object p1, p0, Lorg/apache/http/pool/AbstractConnPool$2;->this$0:Lorg/apache/http/pool/AbstractConnPool;

    iput-object p4, p0, Lorg/apache/http/pool/AbstractConnPool$2;->val$route:Ljava/lang/Object;

    iput-object p5, p0, Lorg/apache/http/pool/AbstractConnPool$2;->val$state:Ljava/lang/Object;

    invoke-direct {p0, p2, p3}, Lorg/apache/http/pool/PoolEntryFuture;-><init>(Ljava/util/concurrent/locks/Lock;Lorg/apache/http/concurrent/FutureCallback;)V

    return-void
.end method


.method public bridge synthetic getPoolEntry(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # J
    .param p3, "x1"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 170
    .local p0, "this":Lorg/apache/http/pool/AbstractConnPool$2;, "Lorg/apache/http/pool/AbstractConnPool.2;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/http/pool/AbstractConnPool$2;->getPoolEntry(JLjava/util/concurrent/TimeUnit;)Lorg/apache/http/pool/PoolEntry;

    move-result-object v0

    return-object v0
.end method

.method public getPoolEntry(JLjava/util/concurrent/TimeUnit;)Lorg/apache/http/pool/PoolEntry;
    .locals 9
    .param p1, "timeout"    # J
    .param p3, "tunit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 177
    .local p0, "this":Lorg/apache/http/pool/AbstractConnPool$2;, "Lorg/apache/http/pool/AbstractConnPool.2;"
    iget-object v1, p0, Lorg/apache/http/pool/AbstractConnPool$2;->this$0:Lorg/apache/http/pool/AbstractConnPool;

    iget-object v2, p0, Lorg/apache/http/pool/AbstractConnPool$2;->val$route:Ljava/lang/Object;

    iget-object v3, p0, Lorg/apache/http/pool/AbstractConnPool$2;->val$state:Ljava/lang/Object;

    move-wide v4, p1

    move-object v6, p3

    move-object v7, p0

    invoke-static/range {v1 .. v7}, Lorg/apache/http/pool/AbstractConnPool;->access$000(Lorg/apache/http/pool/AbstractConnPool;Ljava/lang/Object;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;Lorg/apache/http/pool/PoolEntryFuture;)Lorg/apache/http/pool/PoolEntry;

    move-result-object v0

    .line 178
    .local v0, "entry":Lorg/apache/http/pool/PoolEntry;, "TE;"
    iget-object v1, p0, Lorg/apache/http/pool/AbstractConnPool$2;->this$0:Lorg/apache/http/pool/AbstractConnPool;

    invoke-virtual {v1, v0}, Lorg/apache/http/pool/AbstractConnPool;->onLease(Lorg/apache/http/pool/PoolEntry;)V

    .line 179
    return-object v0
.end method
