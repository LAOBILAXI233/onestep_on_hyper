.class public Lorg/apache/http/protocol/RequestExpectContinue;
.super Ljava/lang/Object;
.source "RequestExpectContinue.java"

.implements Lorg/apache/http/HttpRequestInterceptor;


.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


.field private final activeByDefault:Z


.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/http/protocol/RequestExpectContinue;-><init>(Z)V

    .line 62
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "activeByDefault"    # Z

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-boolean p1, p0, Lorg/apache/http/protocol/RequestExpectContinue;->activeByDefault:Z

    .line 70
    return-void
.end method


.method public process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V
    .locals 8
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    const-string v3, "HTTP request"

    invoke-static {p1, v3}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 76
    const-string v3, "Expect"

    invoke-interface {p1, v3}, Lorg/apache/http/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 77
    instance-of v3, p1, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-eqz v3, :cond_0

    .line 78
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/RequestLine;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v2

    .local v2, "ver":Lorg/apache/http/ProtocolVersion;
    move-object v3, p1

    .line 79
    check-cast v3, Lorg/apache/http/HttpEntityEnclosingRequest;

    invoke-interface {v3}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 81
    .local v1, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    sget-object v3, Lorg/apache/http/HttpVersion;->HTTP_1_0:Lorg/apache/http/HttpVersion;

    invoke-virtual {v2, v3}, Lorg/apache/http/ProtocolVersion;->lessEquals(Lorg/apache/http/ProtocolVersion;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 83
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v3

    const-string v4, "http.protocol.expect-continue"

    iget-boolean v5, p0, Lorg/apache/http/protocol/RequestExpectContinue;->activeByDefault:Z

    invoke-interface {v3, v4, v5}, Lorg/apache/http/params/HttpParams;->getBooleanParameter(Ljava/lang/String;Z)Z

    move-result v0

    .line 85
    .local v0, "active":Z
    if-eqz v0, :cond_0

    .line 86
    const-string v3, "Expect"

    const-string v4, "100-continue"

    invoke-interface {p1, v3, v4}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .end local v0    # "active":Z
    .end local v1    # "entity":Lorg/apache/http/HttpEntity;
    .end local v2    # "ver":Lorg/apache/http/ProtocolVersion;
    :cond_0
    return-void
.end method
