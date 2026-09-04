.class public Lorg/apache/http/protocol/HttpRequestHandlerRegistry;
.super Ljava/lang/Object;
.source "HttpRequestHandlerRegistry.java"

.implements Lorg/apache/http/protocol/HttpRequestHandlerResolver;


.annotation runtime Ljava/lang/Deprecated;
.end annotation

.annotation build Lorg/apache/http/annotation/ThreadSafe;
.end annotation


.field private final matcher:Lorg/apache/http/protocol/UriPatternMatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/http/protocol/UriPatternMatcher",
            "<",
            "Lorg/apache/http/protocol/HttpRequestHandler;",
            ">;"
        }
    .end annotation
.end field


.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lorg/apache/http/protocol/UriPatternMatcher;

    invoke-direct {v0}, Lorg/apache/http/protocol/UriPatternMatcher;-><init>()V

    iput-object v0, p0, Lorg/apache/http/protocol/HttpRequestHandlerRegistry;->matcher:Lorg/apache/http/protocol/UriPatternMatcher;

    .line 61
    return-void
.end method


.method public getHandlers()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/http/protocol/HttpRequestHandler;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lorg/apache/http/protocol/HttpRequestHandlerRegistry;->matcher:Lorg/apache/http/protocol/UriPatternMatcher;

    invoke-virtual {v0}, Lorg/apache/http/protocol/UriPatternMatcher;->getObjects()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public lookup(Ljava/lang/String;)Lorg/apache/http/protocol/HttpRequestHandler;
    .locals 1
    .param p1, "requestURI"    # Ljava/lang/String;

    .prologue
    .line 104
    iget-object v0, p0, Lorg/apache/http/protocol/HttpRequestHandlerRegistry;->matcher:Lorg/apache/http/protocol/UriPatternMatcher;

    invoke-virtual {v0, p1}, Lorg/apache/http/protocol/UriPatternMatcher;->lookup(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/protocol/HttpRequestHandler;

    return-object v0
.end method

.method public register(Ljava/lang/String;Lorg/apache/http/protocol/HttpRequestHandler;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "handler"    # Lorg/apache/http/protocol/HttpRequestHandler;

    .prologue
    .line 71
    const-string v0, "URI request pattern"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 72
    const-string v0, "Request handler"

    invoke-static {p2, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 73
    iget-object v0, p0, Lorg/apache/http/protocol/HttpRequestHandlerRegistry;->matcher:Lorg/apache/http/protocol/UriPatternMatcher;

    invoke-virtual {v0, p1, p2}, Lorg/apache/http/protocol/UriPatternMatcher;->register(Ljava/lang/String;Ljava/lang/Object;)V

    .line 74
    return-void
.end method

.method public setHandlers(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/http/protocol/HttpRequestHandler;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/http/protocol/HttpRequestHandler;>;"
    iget-object v0, p0, Lorg/apache/http/protocol/HttpRequestHandlerRegistry;->matcher:Lorg/apache/http/protocol/UriPatternMatcher;

    invoke-virtual {v0, p1}, Lorg/apache/http/protocol/UriPatternMatcher;->setObjects(Ljava/util/Map;)V

    .line 91
    return-void
.end method

.method public unregister(Ljava/lang/String;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 82
    iget-object v0, p0, Lorg/apache/http/protocol/HttpRequestHandlerRegistry;->matcher:Lorg/apache/http/protocol/UriPatternMatcher;

    invoke-virtual {v0, p1}, Lorg/apache/http/protocol/UriPatternMatcher;->unregister(Ljava/lang/String;)V

    .line 83
    return-void
.end method
