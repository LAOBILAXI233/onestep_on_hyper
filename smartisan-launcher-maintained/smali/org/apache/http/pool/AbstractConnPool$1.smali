.class Lorg/apache/http/pool/AbstractConnPool$1;
.super Lorg/apache/http/pool/RouteSpecificPool;
.source "AbstractConnPool.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/http/pool/AbstractConnPool;->getPool(Ljava/lang/Object;)Lorg/apache/http/pool/RouteSpecificPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/http/pool/RouteSpecificPool",
        "<TT;TC;TE;>;"
    }
.end annotation


.field final synthetic this$0:Lorg/apache/http/pool/AbstractConnPool;

.field final synthetic val$route:Ljava/lang/Object;


.method constructor <init>(Lorg/apache/http/pool/AbstractConnPool;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 146
    .local p0, "this":Lorg/apache/http/pool/AbstractConnPool$1;, "Lorg/apache/http/pool/AbstractConnPool.1;"
    .local p2, "x0":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lorg/apache/http/pool/AbstractConnPool$1;->this$0:Lorg/apache/http/pool/AbstractConnPool;

    iput-object p3, p0, Lorg/apache/http/pool/AbstractConnPool$1;->val$route:Ljava/lang/Object;

    invoke-direct {p0, p2}, Lorg/apache/http/pool/RouteSpecificPool;-><init>(Ljava/lang/Object;)V

    return-void
.end method


.method protected createEntry(Ljava/lang/Object;)Lorg/apache/http/pool/PoolEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)TE;"
        }
    .end annotation

    .prologue
    .line 150
    .local p0, "this":Lorg/apache/http/pool/AbstractConnPool$1;, "Lorg/apache/http/pool/AbstractConnPool.1;"
    .local p1, "conn":Ljava/lang/Object;, "TC;"
    iget-object v0, p0, Lorg/apache/http/pool/AbstractConnPool$1;->this$0:Lorg/apache/http/pool/AbstractConnPool;

    iget-object v1, p0, Lorg/apache/http/pool/AbstractConnPool$1;->val$route:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lorg/apache/http/pool/AbstractConnPool;->createEntry(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/http/pool/PoolEntry;

    move-result-object v0

    return-object v0
.end method
