.class public Lorg/apache/http/impl/pool/BasicConnPool;
.super Lorg/apache/http/pool/AbstractConnPool;
.source "BasicConnPool.java"


.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/http/pool/AbstractConnPool",
        "<",
        "Lorg/apache/http/HttpHost;",
        "Lorg/apache/http/HttpClientConnection;",
        "Lorg/apache/http/impl/pool/BasicPoolEntry;",
        ">;"
    }
.end annotation

.annotation build Lorg/apache/http/annotation/ThreadSafe;
.end annotation


.field private static final COUNTER:Ljava/util/concurrent/atomic/AtomicLong;


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lorg/apache/http/impl/pool/BasicConnPool;->COUNTER:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 79
    new-instance v0, Lorg/apache/http/impl/pool/BasicConnFactory;

    sget-object v1, Lorg/apache/http/config/SocketConfig;->DEFAULT:Lorg/apache/http/config/SocketConfig;

    sget-object v2, Lorg/apache/http/config/ConnectionConfig;->DEFAULT:Lorg/apache/http/config/ConnectionConfig;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/pool/BasicConnFactory;-><init>(Lorg/apache/http/config/SocketConfig;Lorg/apache/http/config/ConnectionConfig;)V

    const/4 v1, 0x2

    const/16 v2, 0x14

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/http/pool/AbstractConnPool;-><init>(Lorg/apache/http/pool/ConnFactory;II)V

    .line 80
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/config/SocketConfig;Lorg/apache/http/config/ConnectionConfig;)V
    .locals 3
    .param p1, "sconfig"    # Lorg/apache/http/config/SocketConfig;
    .param p2, "cconfig"    # Lorg/apache/http/config/ConnectionConfig;

    .prologue
    .line 72
    new-instance v0, Lorg/apache/http/impl/pool/BasicConnFactory;

    invoke-direct {v0, p1, p2}, Lorg/apache/http/impl/pool/BasicConnFactory;-><init>(Lorg/apache/http/config/SocketConfig;Lorg/apache/http/config/ConnectionConfig;)V

    const/4 v1, 0x2

    const/16 v2, 0x14

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/http/pool/AbstractConnPool;-><init>(Lorg/apache/http/pool/ConnFactory;II)V

    .line 73
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/params/HttpParams;)V
    .locals 3
    .param p1, "params"    # Lorg/apache/http/params/HttpParams;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 65
    new-instance v0, Lorg/apache/http/impl/pool/BasicConnFactory;

    invoke-direct {v0, p1}, Lorg/apache/http/impl/pool/BasicConnFactory;-><init>(Lorg/apache/http/params/HttpParams;)V

    const/4 v1, 0x2

    const/16 v2, 0x14

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/http/pool/AbstractConnPool;-><init>(Lorg/apache/http/pool/ConnFactory;II)V

    .line 66
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/pool/ConnFactory;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/pool/ConnFactory",
            "<",
            "Lorg/apache/http/HttpHost;",
            "Lorg/apache/http/HttpClientConnection;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p1, "connFactory":Lorg/apache/http/pool/ConnFactory;, "Lorg/apache/http/pool/ConnFactory<Lorg/apache/http/HttpHost;Lorg/apache/http/HttpClientConnection;>;"
    const/4 v0, 0x2

    const/16 v1, 0x14

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/http/pool/AbstractConnPool;-><init>(Lorg/apache/http/pool/ConnFactory;II)V

    .line 58
    return-void
.end method


.method protected createEntry(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpClientConnection;)Lorg/apache/http/impl/pool/BasicPoolEntry;
    .locals 4
    .param p1, "host"    # Lorg/apache/http/HttpHost;
    .param p2, "conn"    # Lorg/apache/http/HttpClientConnection;

    .prologue
    .line 86
    new-instance v0, Lorg/apache/http/impl/pool/BasicPoolEntry;

    sget-object v1, Lorg/apache/http/impl/pool/BasicConnPool;->COUNTER:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lorg/apache/http/impl/pool/BasicPoolEntry;-><init>(Ljava/lang/String;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpClientConnection;)V

    return-object v0
.end method

.method protected bridge synthetic createEntry(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/http/pool/PoolEntry;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 50
    check-cast p1, Lorg/apache/http/HttpHost;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lorg/apache/http/HttpClientConnection;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/http/impl/pool/BasicConnPool;->createEntry(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpClientConnection;)Lorg/apache/http/impl/pool/BasicPoolEntry;

    move-result-object v0

    return-object v0
.end method
