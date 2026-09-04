.class Lcom/tendcloud/tenddata/aj;
.super Ljava/lang/Object;

.implements Lorg/apache/http/HttpRequestInterceptor;


.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/tendcloud/tenddata/ba;


.method constructor <init>(Lcom/tendcloud/tenddata/ba;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tendcloud/tenddata/aj;->b:Lcom/tendcloud/tenddata/ba;

    iput-object p2, p0, Lcom/tendcloud/tenddata/aj;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V
    .locals 6

    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    const-string v4, "Content-Length"

    invoke-interface {v3}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {p1, v3}, Lorg/apache/http/HttpRequest;->removeHeader(Lorg/apache/http/Header;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "Host"

    iget-object v1, p0, Lcom/tendcloud/tenddata/aj;->a:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lorg/apache/http/HttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
