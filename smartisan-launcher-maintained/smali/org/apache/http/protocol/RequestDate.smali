.class public Lorg/apache/http/protocol/RequestDate;
.super Ljava/lang/Object;
.source "RequestDate.java"

.implements Lorg/apache/http/HttpRequestInterceptor;


.annotation build Lorg/apache/http/annotation/ThreadSafe;
.end annotation


.field private static final DATE_GENERATOR:Lorg/apache/http/protocol/HttpDateGenerator;


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lorg/apache/http/protocol/HttpDateGenerator;

    invoke-direct {v0}, Lorg/apache/http/protocol/HttpDateGenerator;-><init>()V

    sput-object v0, Lorg/apache/http/protocol/RequestDate;->DATE_GENERATOR:Lorg/apache/http/protocol/HttpDateGenerator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method


.method public process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V
    .locals 2
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    const-string v1, "HTTP request"

    invoke-static {p1, v1}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 58
    instance-of v1, p1, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-eqz v1, :cond_0

    const-string v1, "Date"

    invoke-interface {p1, v1}, Lorg/apache/http/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 60
    sget-object v1, Lorg/apache/http/protocol/RequestDate;->DATE_GENERATOR:Lorg/apache/http/protocol/HttpDateGenerator;

    invoke-virtual {v1}, Lorg/apache/http/protocol/HttpDateGenerator;->getCurrentDate()Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "httpdate":Ljava/lang/String;
    const-string v1, "Date"

    invoke-interface {p1, v1, v0}, Lorg/apache/http/HttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .end local v0    # "httpdate":Ljava/lang/String;
    :cond_0
    return-void
.end method
