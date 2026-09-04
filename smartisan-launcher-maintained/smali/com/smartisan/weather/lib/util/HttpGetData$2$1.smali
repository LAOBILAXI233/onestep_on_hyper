.class Lcom/smartisan/weather/lib/util/HttpGetData$2$1;
.super Lorg/apache/http/entity/HttpEntityWrapper;
.source "HttpGetData.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisan/weather/lib/util/HttpGetData$2;->process(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$1:Lcom/smartisan/weather/lib/util/HttpGetData$2;


.method constructor <init>(Lcom/smartisan/weather/lib/util/HttpGetData$2;Lorg/apache/http/HttpEntity;)V
    .locals 0
    .param p1, "this$1"    # Lcom/smartisan/weather/lib/util/HttpGetData$2;
    .param p2, "x0"    # Lorg/apache/http/HttpEntity;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/smartisan/weather/lib/util/HttpGetData$2$1;->this$1:Lcom/smartisan/weather/lib/util/HttpGetData$2;

    invoke-direct {p0, p2}, Lorg/apache/http/entity/HttpEntityWrapper;-><init>(Lorg/apache/http/HttpEntity;)V

    return-void
.end method


.method public getContent()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    iget-object v1, p0, Lcom/smartisan/weather/lib/util/HttpGetData$2$1;->wrappedEntity:Lorg/apache/http/HttpEntity;

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method
