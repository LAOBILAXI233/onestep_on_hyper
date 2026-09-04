.class Lcom/smartisanos/home/net/CustomHttpRequest$9;
.super Lcom/smartisanos/home/net/CustomHttpRequest$CloseOperation;
.source "CustomHttpRequest.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/home/net/CustomHttpRequest;->copy(Ljava/io/Reader;Ljava/io/Writer;)Lcom/smartisanos/home/net/CustomHttpRequest;
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

.field final synthetic val$input:Ljava/io/Reader;

.field final synthetic val$output:Ljava/io/Writer;


.method constructor <init>(Lcom/smartisanos/home/net/CustomHttpRequest;Ljava/io/Closeable;ZLjava/io/Reader;Ljava/io/Writer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/home/net/CustomHttpRequest;
    .param p2, "closeable"    # Ljava/io/Closeable;
    .param p3, "ignoreCloseExceptions"    # Z

    .prologue
    .line 2639
    iput-object p1, p0, Lcom/smartisanos/home/net/CustomHttpRequest$9;->this$0:Lcom/smartisanos/home/net/CustomHttpRequest;

    iput-object p4, p0, Lcom/smartisanos/home/net/CustomHttpRequest$9;->val$input:Ljava/io/Reader;

    iput-object p5, p0, Lcom/smartisanos/home/net/CustomHttpRequest$9;->val$output:Ljava/io/Writer;

    invoke-direct {p0, p2, p3}, Lcom/smartisanos/home/net/CustomHttpRequest$CloseOperation;-><init>(Ljava/io/Closeable;Z)V

    return-void
.end method


.method public run()Lcom/smartisanos/home/net/CustomHttpRequest;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2643
    iget-object v2, p0, Lcom/smartisanos/home/net/CustomHttpRequest$9;->this$0:Lcom/smartisanos/home/net/CustomHttpRequest;

    invoke-static {v2}, Lcom/smartisanos/home/net/CustomHttpRequest;->access$100(Lcom/smartisanos/home/net/CustomHttpRequest;)I

    move-result v2

    new-array v0, v2, [C

    .line 2645
    .local v0, "buffer":[C
    :goto_0
    iget-object v2, p0, Lcom/smartisanos/home/net/CustomHttpRequest$9;->val$input:Ljava/io/Reader;

    invoke-virtual {v2, v0}, Ljava/io/Reader;->read([C)I

    move-result v1

    .local v1, "read":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 2646
    iget-object v2, p0, Lcom/smartisanos/home/net/CustomHttpRequest$9;->val$output:Ljava/io/Writer;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/Writer;->write([CII)V

    .line 2647
    iget-object v2, p0, Lcom/smartisanos/home/net/CustomHttpRequest$9;->this$0:Lcom/smartisanos/home/net/CustomHttpRequest;

    iget-object v3, p0, Lcom/smartisanos/home/net/CustomHttpRequest$9;->this$0:Lcom/smartisanos/home/net/CustomHttpRequest;

    invoke-static {v3}, Lcom/smartisanos/home/net/CustomHttpRequest;->access$200(Lcom/smartisanos/home/net/CustomHttpRequest;)J

    move-result-wide v4

    int-to-long v6, v1

    add-long/2addr v4, v6

    invoke-static {v2, v4, v5}, Lcom/smartisanos/home/net/CustomHttpRequest;->access$202(Lcom/smartisanos/home/net/CustomHttpRequest;J)J

    .line 2648
    iget-object v2, p0, Lcom/smartisanos/home/net/CustomHttpRequest$9;->this$0:Lcom/smartisanos/home/net/CustomHttpRequest;

    invoke-static {v2}, Lcom/smartisanos/home/net/CustomHttpRequest;->access$400(Lcom/smartisanos/home/net/CustomHttpRequest;)Lcom/smartisanos/home/net/CustomHttpRequest$UploadProgress;

    move-result-object v2

    iget-object v3, p0, Lcom/smartisanos/home/net/CustomHttpRequest$9;->this$0:Lcom/smartisanos/home/net/CustomHttpRequest;

    invoke-static {v3}, Lcom/smartisanos/home/net/CustomHttpRequest;->access$200(Lcom/smartisanos/home/net/CustomHttpRequest;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    invoke-interface {v2, v4, v5, v6, v7}, Lcom/smartisanos/home/net/CustomHttpRequest$UploadProgress;->onUpload(JJ)V

    goto :goto_0

    .line 2650
    :cond_0
    iget-object v2, p0, Lcom/smartisanos/home/net/CustomHttpRequest$9;->this$0:Lcom/smartisanos/home/net/CustomHttpRequest;

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
    .line 2639
    invoke-virtual {p0}, Lcom/smartisanos/home/net/CustomHttpRequest$9;->run()Lcom/smartisanos/home/net/CustomHttpRequest;

    move-result-object v0

    return-object v0
.end method
