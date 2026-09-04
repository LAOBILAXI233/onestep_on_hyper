.class public Lorg/apache/http/protocol/ResponseDate;
.super Ljava/lang/Object;
.source "ResponseDate.java"

.implements Lorg/apache/http/HttpResponseInterceptor;


.annotation build Lorg/apache/http/annotation/ThreadSafe;
.end annotation


.field private static final DATE_GENERATOR:Lorg/apache/http/protocol/HttpDateGenerator;


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lorg/apache/http/protocol/HttpDateGenerator;

    invoke-direct {v0}, Lorg/apache/http/protocol/HttpDateGenerator;-><init>()V

    sput-object v0, Lorg/apache/http/protocol/ResponseDate;->DATE_GENERATOR:Lorg/apache/http/protocol/HttpDateGenerator;

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


.method public process(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    .locals 3
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    const-string v2, "HTTP response"

    invoke-static {p1, v2}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 58
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    .line 59
    .local v1, "status":I
    const/16 v2, 0xc8

    if-lt v1, v2, :cond_0

    const-string v2, "Date"

    invoke-interface {p1, v2}, Lorg/apache/http/HttpResponse;->containsHeader(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 61
    sget-object v2, Lorg/apache/http/protocol/ResponseDate;->DATE_GENERATOR:Lorg/apache/http/protocol/HttpDateGenerator;

    invoke-virtual {v2}, Lorg/apache/http/protocol/HttpDateGenerator;->getCurrentDate()Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "httpdate":Ljava/lang/String;
    const-string v2, "Date"

    invoke-interface {p1, v2, v0}, Lorg/apache/http/HttpResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .end local v0    # "httpdate":Ljava/lang/String;
    :cond_0
    return-void
.end method
