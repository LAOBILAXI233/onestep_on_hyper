.class Lcom/smartisan/weather/lib/util/HttpGetData$1$1;
.super Ljava/lang/Object;
.source "HttpGetData.java"

.implements Lorg/apache/http/HttpRequestInterceptor;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisan/weather/lib/util/HttpGetData$1;->process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$1:Lcom/smartisan/weather/lib/util/HttpGetData$1;


.method constructor <init>(Lcom/smartisan/weather/lib/util/HttpGetData$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/smartisan/weather/lib/util/HttpGetData$1;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/smartisan/weather/lib/util/HttpGetData$1$1;->this$1:Lcom/smartisan/weather/lib/util/HttpGetData$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V
    .locals 2
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;

    .prologue
    .line 69
    const-string v0, "Accept-Encoding"

    invoke-interface {p1, v0}, Lorg/apache/http/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    const-string v0, "Accept-Encoding"

    const-string v1, "gzip"

    invoke-interface {p1, v0, v1}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :cond_0
    return-void
.end method
