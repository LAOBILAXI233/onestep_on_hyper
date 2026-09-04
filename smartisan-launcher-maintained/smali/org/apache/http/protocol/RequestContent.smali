.class public Lorg/apache/http/protocol/RequestContent;
.super Ljava/lang/Object;
.source "RequestContent.java"

.implements Lorg/apache/http/HttpRequestInterceptor;


.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


.field private final overwrite:Z


.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/http/protocol/RequestContent;-><init>(Z)V

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
    iput-boolean p1, p0, Lorg/apache/http/protocol/RequestContent;->overwrite:Z

    .line 81
    return-void
.end method


.method public process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V
    .locals 6
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    const-string v2, "HTTP request"

    invoke-static {p1, v2}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 86
    instance-of v2, p1, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-eqz v2, :cond_1

    .line 87
    iget-boolean v2, p0, Lorg/apache/http/protocol/RequestContent;->overwrite:Z

    if-eqz v2, :cond_2

    .line 88
    const-string v2, "Transfer-Encoding"

    invoke-interface {p1, v2}, Lorg/apache/http/HttpRequest;->removeHeaders(Ljava/lang/String;)V

    .line 89
    const-string v2, "Content-Length"

    invoke-interface {p1, v2}, Lorg/apache/http/HttpRequest;->removeHeaders(Ljava/lang/String;)V

    .line 98
    :cond_0
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/RequestLine;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v1

    .local v1, "ver":Lorg/apache/http/ProtocolVersion;
    move-object v2, p1

    .line 99
    check-cast v2, Lorg/apache/http/HttpEntityEnclosingRequest;

    invoke-interface {v2}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 100
    .local v0, "entity":Lorg/apache/http/HttpEntity;
    if-nez v0, :cond_4

    .line 101
    const-string v2, "Content-Length"

    const-string v3, "0"

    invoke-interface {p1, v2, v3}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .end local v0    # "entity":Lorg/apache/http/HttpEntity;
    .end local v1    # "ver":Lorg/apache/http/ProtocolVersion;
    :cond_1
    :goto_0
    return-void

    .line 91
    :cond_2
    const-string v2, "Transfer-Encoding"

    invoke-interface {p1, v2}, Lorg/apache/http/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 92
    new-instance v2, Lorg/apache/http/ProtocolException;

    const-string v3, "Transfer-encoding header already present"

    invoke-direct {v2, v3}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 94
    :cond_3
    const-string v2, "Content-Length"

    invoke-interface {p1, v2}, Lorg/apache/http/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 95
    new-instance v2, Lorg/apache/http/ProtocolException;

    const-string v3, "Content-Length header already present"

    invoke-direct {v2, v3}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 105
    .restart local v0    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v1    # "ver":Lorg/apache/http/ProtocolVersion;
    :cond_4
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->isChunked()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_8

    .line 106
    :cond_5
    sget-object v2, Lorg/apache/http/HttpVersion;->HTTP_1_0:Lorg/apache/http/HttpVersion;

    invoke-virtual {v1, v2}, Lorg/apache/http/ProtocolVersion;->lessEquals(Lorg/apache/http/ProtocolVersion;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 107
    new-instance v2, Lorg/apache/http/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Chunked transfer encoding not allowed for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 110
    :cond_6
    const-string v2, "Transfer-Encoding"

    const-string v3, "chunked"

    invoke-interface {p1, v2, v3}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :goto_1
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v2

    if-eqz v2, :cond_7

    const-string v2, "Content-Type"

    invoke-interface {p1, v2}, Lorg/apache/http/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 117
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v2

    invoke-interface {p1, v2}, Lorg/apache/http/HttpRequest;->addHeader(Lorg/apache/http/Header;)V

    .line 120
    :cond_7
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v2, "Content-Encoding"

    invoke-interface {p1, v2}, Lorg/apache/http/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 122
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v2

    invoke-interface {p1, v2}, Lorg/apache/http/HttpRequest;->addHeader(Lorg/apache/http/Header;)V

    goto/16 :goto_0

    .line 112
    :cond_8
    const-string v2, "Content-Length"

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
