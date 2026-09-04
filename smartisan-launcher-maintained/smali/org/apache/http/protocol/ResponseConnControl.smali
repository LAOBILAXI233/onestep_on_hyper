.class public Lorg/apache/http/protocol/ResponseConnControl;
.super Ljava/lang/Object;
.source "ResponseConnControl.java"

.implements Lorg/apache/http/HttpResponseInterceptor;


.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method


.method public process(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    .locals 12
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    const-string v7, "HTTP response"

    invoke-static {p1, v7}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 63
    invoke-static {p2}, Lorg/apache/http/protocol/HttpCoreContext;->adapt(Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/protocol/HttpCoreContext;

    move-result-object v0

    .line 66
    .local v0, "corecontext":Lorg/apache/http/protocol/HttpCoreContext;
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    .line 67
    .local v5, "status":I
    const/16 v7, 0x190

    if-eq v5, v7, :cond_0

    const/16 v7, 0x198

    if-eq v5, v7, :cond_0

    const/16 v7, 0x19b

    if-eq v5, v7, :cond_0

    const/16 v7, 0x19d

    if-eq v5, v7, :cond_0

    const/16 v7, 0x19e

    if-eq v5, v7, :cond_0

    const/16 v7, 0x1f7

    if-eq v5, v7, :cond_0

    const/16 v7, 0x1f5

    if-ne v5, v7, :cond_2

    .line 74
    :cond_0
    const-string v7, "Connection"

    const-string v8, "Close"

    invoke-interface {p1, v7, v8}, Lorg/apache/http/HttpResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :cond_1
    :goto_0
    return-void

    .line 77
    :cond_2
    const-string v7, "Connection"

    invoke-interface {p1, v7}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    .line 78
    .local v2, "explicit":Lorg/apache/http/Header;
    if-eqz v2, :cond_3

    const-string v7, "Close"

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 84
    :cond_3
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 85
    .local v1, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v1, :cond_5

    .line 86
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v6

    .line 87
    .local v6, "ver":Lorg/apache/http/ProtocolVersion;
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-gez v7, :cond_5

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->isChunked()Z

    move-result v7

    if-eqz v7, :cond_4

    sget-object v7, Lorg/apache/http/HttpVersion;->HTTP_1_0:Lorg/apache/http/HttpVersion;

    invoke-virtual {v6, v7}, Lorg/apache/http/ProtocolVersion;->lessEquals(Lorg/apache/http/ProtocolVersion;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 89
    :cond_4
    const-string v7, "Connection"

    const-string v8, "Close"

    invoke-interface {p1, v7, v8}, Lorg/apache/http/HttpResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 94
    .end local v6    # "ver":Lorg/apache/http/ProtocolVersion;
    :cond_5
    invoke-virtual {v0}, Lorg/apache/http/protocol/HttpCoreContext;->getRequest()Lorg/apache/http/HttpRequest;

    move-result-object v4

    .line 95
    .local v4, "request":Lorg/apache/http/HttpRequest;
    if-eqz v4, :cond_1

    .line 96
    const-string v7, "Connection"

    invoke-interface {v4, v7}, Lorg/apache/http/HttpRequest;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v3

    .line 97
    .local v3, "header":Lorg/apache/http/Header;
    if-eqz v3, :cond_6

    .line 98
    const-string v7, "Connection"

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v7, v8}, Lorg/apache/http/HttpResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 99
    :cond_6
    invoke-interface {v4}, Lorg/apache/http/HttpRequest;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v7

    sget-object v8, Lorg/apache/http/HttpVersion;->HTTP_1_0:Lorg/apache/http/HttpVersion;

    invoke-virtual {v7, v8}, Lorg/apache/http/ProtocolVersion;->lessEquals(Lorg/apache/http/ProtocolVersion;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 100
    const-string v7, "Connection"

    const-string v8, "Close"

    invoke-interface {p1, v7, v8}, Lorg/apache/http/HttpResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
