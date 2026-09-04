.class Lcom/smartisanos/home/net/CustomHttpRequest$5;
.super Lcom/smartisanos/home/net/CustomHttpRequest$CloseOperation;
.source "CustomHttpRequest.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/home/net/CustomHttpRequest;->receive(Ljava/io/File;)Lcom/smartisanos/home/net/CustomHttpRequest;
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

.field final synthetic val$output:Ljava/io/OutputStream;


.method constructor <init>(Lcom/smartisanos/home/net/CustomHttpRequest;Ljava/io/Closeable;ZLjava/io/OutputStream;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/home/net/CustomHttpRequest;
    .param p2, "closeable"    # Ljava/io/Closeable;
    .param p3, "ignoreCloseExceptions"    # Z

    .prologue
    .line 1955
    iput-object p1, p0, Lcom/smartisanos/home/net/CustomHttpRequest$5;->this$0:Lcom/smartisanos/home/net/CustomHttpRequest;

    iput-object p4, p0, Lcom/smartisanos/home/net/CustomHttpRequest$5;->val$output:Ljava/io/OutputStream;

    invoke-direct {p0, p2, p3}, Lcom/smartisanos/home/net/CustomHttpRequest$CloseOperation;-><init>(Ljava/io/Closeable;Z)V

    return-void
.end method


.method protected run()Lcom/smartisanos/home/net/CustomHttpRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1959
    iget-object v0, p0, Lcom/smartisanos/home/net/CustomHttpRequest$5;->this$0:Lcom/smartisanos/home/net/CustomHttpRequest;

    iget-object v1, p0, Lcom/smartisanos/home/net/CustomHttpRequest$5;->val$output:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Lcom/smartisanos/home/net/CustomHttpRequest;->receive(Ljava/io/OutputStream;)Lcom/smartisanos/home/net/CustomHttpRequest;

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
    .line 1955
    invoke-virtual {p0}, Lcom/smartisanos/home/net/CustomHttpRequest$5;->run()Lcom/smartisanos/home/net/CustomHttpRequest;

    move-result-object v0

    return-object v0
.end method
