.class Lcom/smartisanos/home/net/CustomHttpRequest$10;
.super Lcom/smartisanos/home/net/CustomHttpRequest$FlushOperation;
.source "CustomHttpRequest.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/home/net/CustomHttpRequest;->send(Ljava/io/Reader;)Lcom/smartisanos/home/net/CustomHttpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/smartisanos/home/net/CustomHttpRequest$FlushOperation",
        "<",
        "Lcom/smartisanos/home/net/CustomHttpRequest;",
        ">;"
    }
.end annotation


.field final synthetic this$0:Lcom/smartisanos/home/net/CustomHttpRequest;

.field final synthetic val$input:Ljava/io/Reader;

.field final synthetic val$writer:Ljava/io/Writer;


.method constructor <init>(Lcom/smartisanos/home/net/CustomHttpRequest;Ljava/io/Flushable;Ljava/io/Reader;Ljava/io/Writer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/home/net/CustomHttpRequest;
    .param p2, "flushable"    # Ljava/io/Flushable;

    .prologue
    .line 3026
    iput-object p1, p0, Lcom/smartisanos/home/net/CustomHttpRequest$10;->this$0:Lcom/smartisanos/home/net/CustomHttpRequest;

    iput-object p3, p0, Lcom/smartisanos/home/net/CustomHttpRequest$10;->val$input:Ljava/io/Reader;

    iput-object p4, p0, Lcom/smartisanos/home/net/CustomHttpRequest$10;->val$writer:Ljava/io/Writer;

    invoke-direct {p0, p2}, Lcom/smartisanos/home/net/CustomHttpRequest$FlushOperation;-><init>(Ljava/io/Flushable;)V

    return-void
.end method


.method protected run()Lcom/smartisanos/home/net/CustomHttpRequest;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3030
    iget-object v0, p0, Lcom/smartisanos/home/net/CustomHttpRequest$10;->this$0:Lcom/smartisanos/home/net/CustomHttpRequest;

    iget-object v1, p0, Lcom/smartisanos/home/net/CustomHttpRequest$10;->val$input:Ljava/io/Reader;

    iget-object v2, p0, Lcom/smartisanos/home/net/CustomHttpRequest$10;->val$writer:Ljava/io/Writer;

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/home/net/CustomHttpRequest;->copy(Ljava/io/Reader;Ljava/io/Writer;)Lcom/smartisanos/home/net/CustomHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic run()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3026
    invoke-virtual {p0}, Lcom/smartisanos/home/net/CustomHttpRequest$10;->run()Lcom/smartisanos/home/net/CustomHttpRequest;

    move-result-object v0

    return-object v0
.end method
