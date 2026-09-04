.class Lcom/smartisanos/home/net/CustomHttpRequest$7;
.super Lcom/smartisanos/home/net/CustomHttpRequest$CloseOperation;
.source "CustomHttpRequest.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/home/net/CustomHttpRequest;->receive(Ljava/io/Writer;)Lcom/smartisanos/home/net/CustomHttpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/smartisanos/home/net/CustomHttpRequest$CloseOperation",
        "<",
        "Lcom/smartisanos/home/net/CustomHttpRequest;",
        ">;"
    }
.end annotation


.field final synthetic this$0:Lcom/smartisanos/home/net/CustomHttpRequest;

.field final synthetic val$reader:Ljava/io/BufferedReader;

.field final synthetic val$writer:Ljava/io/Writer;


.method constructor <init>(Lcom/smartisanos/home/net/CustomHttpRequest;Ljava/io/Closeable;ZLjava/io/BufferedReader;Ljava/io/Writer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/home/net/CustomHttpRequest;
    .param p2, "closeable"    # Ljava/io/Closeable;
    .param p3, "ignoreCloseExceptions"    # Z

    .prologue
    .line 2027
    iput-object p1, p0, Lcom/smartisanos/home/net/CustomHttpRequest$7;->this$0:Lcom/smartisanos/home/net/CustomHttpRequest;

    iput-object p4, p0, Lcom/smartisanos/home/net/CustomHttpRequest$7;->val$reader:Ljava/io/BufferedReader;

    iput-object p5, p0, Lcom/smartisanos/home/net/CustomHttpRequest$7;->val$writer:Ljava/io/Writer;

    invoke-direct {p0, p2, p3}, Lcom/smartisanos/home/net/CustomHttpRequest$CloseOperation;-><init>(Ljava/io/Closeable;Z)V

    return-void
.end method


.method public run()Lcom/smartisanos/home/net/CustomHttpRequest;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2031
    iget-object v0, p0, Lcom/smartisanos/home/net/CustomHttpRequest$7;->this$0:Lcom/smartisanos/home/net/CustomHttpRequest;

    iget-object v1, p0, Lcom/smartisanos/home/net/CustomHttpRequest$7;->val$reader:Ljava/io/BufferedReader;

    iget-object v2, p0, Lcom/smartisanos/home/net/CustomHttpRequest$7;->val$writer:Ljava/io/Writer;

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/home/net/CustomHttpRequest;->copy(Ljava/io/Reader;Ljava/io/Writer;)Lcom/smartisanos/home/net/CustomHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2027
    invoke-virtual {p0}, Lcom/smartisanos/home/net/CustomHttpRequest$7;->run()Lcom/smartisanos/home/net/CustomHttpRequest;

    move-result-object v0

    return-object v0
.end method
