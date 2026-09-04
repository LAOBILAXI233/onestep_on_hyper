.class Lcom/smartisan/weather/lib/util/HttpGetData$2;
.super Ljava/lang/Object;
.source "HttpGetData.java"

.implements Lorg/apache/http/HttpResponseInterceptor;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisan/weather/lib/util/HttpGetData;->executeHttpGet(Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisan/weather/lib/util/HttpGetData;


.method constructor <init>(Lcom/smartisan/weather/lib/util/HttpGetData;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisan/weather/lib/util/HttpGetData;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/smartisan/weather/lib/util/HttpGetData$2;->this$0:Lcom/smartisan/weather/lib/util/HttpGetData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public process(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    .locals 8
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 83
    .local v2, "entity":Lorg/apache/http/HttpEntity;
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v1

    .line 84
    .local v1, "encoding":Lorg/apache/http/Header;
    if-eqz v1, :cond_0

    .line 85
    invoke-interface {v1}, Lorg/apache/http/Header;->getElements()[Lorg/apache/http/HeaderElement;

    move-result-object v4

    array-length v5, v4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v0, v4, v3

    .line 86
    .local v0, "element":Lorg/apache/http/HeaderElement;
    invoke-interface {v0}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "gzip"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 87
    new-instance v3, Lcom/smartisan/weather/lib/util/HttpGetData$2$1;

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/smartisan/weather/lib/util/HttpGetData$2$1;-><init>(Lcom/smartisan/weather/lib/util/HttpGetData$2;Lorg/apache/http/HttpEntity;)V

    invoke-interface {p1, v3}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 100
    .end local v0    # "element":Lorg/apache/http/HeaderElement;
    :cond_0
    return-void

    .line 85
    .restart local v0    # "element":Lorg/apache/http/HeaderElement;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
