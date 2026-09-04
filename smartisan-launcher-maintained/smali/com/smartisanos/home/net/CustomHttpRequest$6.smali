.class Lcom/smartisanos/home/net/CustomHttpRequest$6;
.super Lcom/smartisanos/home/net/CustomHttpRequest$CloseOperation;
.source "CustomHttpRequest.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/home/net/CustomHttpRequest;->receive(Ljava/lang/Appendable;)Lcom/smartisanos/home/net/CustomHttpRequest;
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

.field final synthetic val$appendable:Ljava/lang/Appendable;

.field final synthetic val$reader:Ljava/io/BufferedReader;


.method constructor <init>(Lcom/smartisanos/home/net/CustomHttpRequest;Ljava/io/Closeable;ZLjava/io/BufferedReader;Ljava/lang/Appendable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/home/net/CustomHttpRequest;
    .param p2, "closeable"    # Ljava/io/Closeable;
    .param p3, "ignoreCloseExceptions"    # Z

    .prologue
    .line 2002
    iput-object p1, p0, Lcom/smartisanos/home/net/CustomHttpRequest$6;->this$0:Lcom/smartisanos/home/net/CustomHttpRequest;

    iput-object p4, p0, Lcom/smartisanos/home/net/CustomHttpRequest$6;->val$reader:Ljava/io/BufferedReader;

    iput-object p5, p0, Lcom/smartisanos/home/net/CustomHttpRequest$6;->val$appendable:Ljava/lang/Appendable;

    invoke-direct {p0, p2, p3}, Lcom/smartisanos/home/net/CustomHttpRequest$CloseOperation;-><init>(Ljava/io/Closeable;Z)V

    return-void
.end method


.method public run()Lcom/smartisanos/home/net/CustomHttpRequest;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2006
    iget-object v2, p0, Lcom/smartisanos/home/net/CustomHttpRequest$6;->this$0:Lcom/smartisanos/home/net/CustomHttpRequest;

    invoke-static {v2}, Lcom/smartisanos/home/net/CustomHttpRequest;->access$100(Lcom/smartisanos/home/net/CustomHttpRequest;)I

    move-result v2

    invoke-static {v2}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 2008
    .local v0, "buffer":Ljava/nio/CharBuffer;
    :goto_0
    iget-object v2, p0, Lcom/smartisanos/home/net/CustomHttpRequest$6;->val$reader:Ljava/io/BufferedReader;

    invoke-virtual {v2, v0}, Ljava/io/BufferedReader;->read(Ljava/nio/CharBuffer;)I

    move-result v1

    .local v1, "read":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 2009
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->rewind()Ljava/nio/Buffer;

    .line 2010
    iget-object v2, p0, Lcom/smartisanos/home/net/CustomHttpRequest$6;->val$appendable:Ljava/lang/Appendable;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    .line 2011
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->rewind()Ljava/nio/Buffer;

    goto :goto_0

    .line 2013
    :cond_0
    iget-object v2, p0, Lcom/smartisanos/home/net/CustomHttpRequest$6;->this$0:Lcom/smartisanos/home/net/CustomHttpRequest;

    return-object v2
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
    .line 2002
    invoke-virtual {p0}, Lcom/smartisanos/home/net/CustomHttpRequest$6;->run()Lcom/smartisanos/home/net/CustomHttpRequest;

    move-result-object v0

    return-object v0
.end method
