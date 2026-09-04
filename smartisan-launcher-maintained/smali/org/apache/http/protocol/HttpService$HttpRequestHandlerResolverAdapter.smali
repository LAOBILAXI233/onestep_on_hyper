.class Lorg/apache/http/protocol/HttpService$HttpRequestHandlerResolverAdapter;
.super Ljava/lang/Object;
.source "HttpService.java"

.implements Lorg/apache/http/protocol/HttpRequestHandlerMapper;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/http/protocol/HttpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HttpRequestHandlerResolverAdapter"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


.field private final resolver:Lorg/apache/http/protocol/HttpRequestHandlerResolver;


.method public constructor <init>(Lorg/apache/http/protocol/HttpRequestHandlerResolver;)V
    .locals 0
    .param p1, "resolver"    # Lorg/apache/http/protocol/HttpRequestHandlerResolver;

    .prologue
    .line 437
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 438
    iput-object p1, p0, Lorg/apache/http/protocol/HttpService$HttpRequestHandlerResolverAdapter;->resolver:Lorg/apache/http/protocol/HttpRequestHandlerResolver;

    .line 439
    return-void
.end method


.method public lookup(Lorg/apache/http/HttpRequest;)Lorg/apache/http/protocol/HttpRequestHandler;
    .locals 2
    .param p1, "request"    # Lorg/apache/http/HttpRequest;

    .prologue
    .line 442
    iget-object v0, p0, Lorg/apache/http/protocol/HttpService$HttpRequestHandlerResolverAdapter;->resolver:Lorg/apache/http/protocol/HttpRequestHandlerResolver;

    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/http/protocol/HttpRequestHandlerResolver;->lookup(Ljava/lang/String;)Lorg/apache/http/protocol/HttpRequestHandler;

    move-result-object v0

    return-object v0
.end method
