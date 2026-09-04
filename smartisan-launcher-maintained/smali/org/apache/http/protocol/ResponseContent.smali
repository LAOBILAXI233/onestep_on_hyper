.class public Lorg/apache/http/protocol/ResponseContent;
.super Ljava/lang/Object;
.source "ResponseContent.java"

.implements Lorg/apache/http/HttpResponseInterceptor;


.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


.field private final overwrite:Z


.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/http/protocol/ResponseContent;-><init>(Z)V

    .line 65
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "overwrite"    # Z

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-boolean p1, p0, Lorg/apache/http/protocol/ResponseContent;->overwrite:Z

    .line 81
    return-void
.end method


.method public process(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    .locals 8
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    const-string v5, "HTTP response"

    invoke-static {p1, v5}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 93
    iget-boolean v5, p0, Lorg/apache/http/protocol/ResponseContent;->overwrite:Z

    if-eqz v5, :cond_4

    .line 94
    const-string v5, "Transfer-Encoding"

    invoke-interface {p1, v5}, Lorg/apache/http/HttpResponse;->removeHeaders(Ljava/lang/String;)V

    .line 95
    const-string v5, "Content-Length"

    invoke-interface {p1, v5}, Lorg/apache/http/HttpResponse;->removeHeaders(Ljava/lang/String;)V

    .line 104
    :cond_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v4

    .line 105
    .local v4, "ver":Lorg/apache/http/ProtocolVersion;
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 106
    .local v0, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v0, :cond_7

    .line 107
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v2

    .line 108
    .local v2, "len":J
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->isChunked()Z

    move-result v5

    if-eqz v5, :cond_6

    sget-object v5, Lorg/apache/http/HttpVersion;->HTTP_1_0:Lorg/apache/http/HttpVersion;

    invoke-virtual {v4, v5}, Lorg/apache/http/ProtocolVersion;->lessEquals(Lorg/apache/http/ProtocolVersion;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 109
    const-string v5, "Transfer-Encoding"

    const-string v6, "chunked"

    invoke-interface {p1, v5, v6}, Lorg/apache/http/HttpResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :cond_1
    :goto_0
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v5

    if-eqz v5, :cond_2

    const-string v5, "Content-Type"

    invoke-interface {p1, v5}, Lorg/apache/http/HttpResponse;->containsHeader(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 116
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v5

    invoke-interface {p1, v5}, Lorg/apache/http/HttpResponse;->addHeader(Lorg/apache/http/Header;)V

    .line 119
    :cond_2
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v5

    if-eqz v5, :cond_3

    const-string v5, "Content-Encoding"

    invoke-interface {p1, v5}, Lorg/apache/http/HttpResponse;->containsHeader(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 121
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v5

    invoke-interface {p1, v5}, Lorg/apache/http/HttpResponse;->addHeader(Lorg/apache/http/Header;)V

    .line 131
    .end local v2    # "len":J
    :cond_3
    :goto_1
    return-void

    .line 97
    .end local v0    # "entity":Lorg/apache/http/HttpEntity;
    .end local v4    # "ver":Lorg/apache/http/ProtocolVersion;
    :cond_4
    const-string v5, "Transfer-Encoding"

    invoke-interface {p1, v5}, Lorg/apache/http/HttpResponse;->containsHeader(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 98
    new-instance v5, Lorg/apache/http/ProtocolException;

    const-string v6, "Transfer-encoding header already present"

    invoke-direct {v5, v6}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 100
    :cond_5
    const-string v5, "Content-Length"

    invoke-interface {p1, v5}, Lorg/apache/http/HttpResponse;->containsHeader(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 101
    new-instance v5, Lorg/apache/http/ProtocolException;

    const-string v6, "Content-Length header already present"

    invoke-direct {v5, v6}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 110
    .restart local v0    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v2    # "len":J
    .restart local v4    # "ver":Lorg/apache/http/ProtocolVersion;
    :cond_6
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-ltz v5, :cond_1

    .line 111
    const-string v5, "Content-Length"

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v5, v6}, Lorg/apache/http/HttpResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 124
    .end local v2    # "len":J
    :cond_7
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    .line 125
    .local v1, "status":I
    const/16 v5, 0xcc

    if-eq v1, v5, :cond_3

    const/16 v5, 0x130

    if-eq v1, v5, :cond_3

    const/16 v5, 0xcd

    if-eq v1, v5, :cond_3

    .line 128
    const-string v5, "Content-Length"

    const-string v6, "0"

    invoke-interface {p1, v5, v6}, Lorg/apache/http/HttpResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
