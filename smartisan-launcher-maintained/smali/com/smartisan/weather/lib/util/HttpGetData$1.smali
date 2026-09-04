.class Lcom/smartisan/weather/lib/util/HttpGetData$1;
.super Ljava/lang/Object;
.source "HttpGetData.java"

.implements Lorg/apache/http/HttpRequestInterceptor;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisan/weather/lib/util/HttpGetData;->executeHttpGet(Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisan/weather/lib/util/HttpGetData;

.field final synthetic val$client:Lorg/apache/http/impl/client/DefaultHttpClient;


.method constructor <init>(Lcom/smartisan/weather/lib/util/HttpGetData;Lorg/apache/http/impl/client/DefaultHttpClient;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisan/weather/lib/util/HttpGetData;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/smartisan/weather/lib/util/HttpGetData$1;->this$0:Lcom/smartisan/weather/lib/util/HttpGetData;

    iput-object p2, p0, Lcom/smartisan/weather/lib/util/HttpGetData$1;->val$client:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    .line 66
    iget-object v0, p0, Lcom/smartisan/weather/lib/util/HttpGetData$1;->val$client:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v1, Lcom/smartisan/weather/lib/util/HttpGetData$1$1;

    invoke-direct {v1, p0}, Lcom/smartisan/weather/lib/util/HttpGetData$1$1;-><init>(Lcom/smartisan/weather/lib/util/HttpGetData$1;)V

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 74
    return-void
.end method
