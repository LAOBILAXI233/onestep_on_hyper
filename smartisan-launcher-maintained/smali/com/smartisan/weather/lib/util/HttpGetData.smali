.class public Lcom/smartisan/weather/lib/util/HttpGetData;
.super Ljava/lang/Object;
.source "HttpGetData.java"


.field private static final ENCODING_GZIP:Ljava/lang/String; = "gzip"

.field private static final HEADER_ACCEPT_ENCODING:Ljava/lang/String; = "Accept-Encoding"


.field private m_retry:I


.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x3

    iput v0, p0, Lcom/smartisan/weather/lib/util/HttpGetData;->m_retry:I

    return-void
.end method


.method public executeHttpGet(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 57
    :try_start_0
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 58
    .local v2, "httpParameters":Lorg/apache/http/params/HttpParams;
    const/16 v6, 0x1388

    invoke-static {v2, v6}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 59
    const/16 v6, 0x2710

    invoke-static {v2, v6}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 60
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 61
    .local v0, "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v6, Lcom/smartisan/weather/lib/util/HttpGetData$1;

    invoke-direct {v6, p0, v0}, Lcom/smartisan/weather/lib/util/HttpGetData$1;-><init>(Lcom/smartisan/weather/lib/util/HttpGetData;Lorg/apache/http/impl/client/DefaultHttpClient;)V

    invoke-virtual {v0, v6}, Lorg/apache/http/impl/client/DefaultHttpClient;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 76
    new-instance v6, Lcom/smartisan/weather/lib/util/HttpGetData$2;

    invoke-direct {v6, p0}, Lcom/smartisan/weather/lib/util/HttpGetData$2;-><init>(Lcom/smartisan/weather/lib/util/HttpGetData;)V

    invoke-virtual {v0, v6}, Lorg/apache/http/impl/client/DefaultHttpClient;->addResponseInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    .line 102
    new-instance v3, Ljava/net/URI;

    invoke-direct {v3, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 103
    .local v3, "myurl":Ljava/net/URI;
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v4, v3}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    .line 104
    .local v4, "request":Lorg/apache/http/client/methods/HttpUriRequest;
    invoke-virtual {v0, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 106
    .local v5, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 110
    .end local v0    # "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v2    # "httpParameters":Lorg/apache/http/params/HttpParams;
    .end local v3    # "myurl":Ljava/net/URI;
    .end local v4    # "request":Lorg/apache/http/client/methods/HttpUriRequest;
    .end local v5    # "response":Lorg/apache/http/HttpResponse;
    :goto_0
    return-object v6

    .line 107
    :catch_0
    move-exception v1

    .line 108
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "Excepition"

    const-string v7, "executeHttpGet"

    invoke-static {v6, v7, v1}, Lcom/smartisan/weather/lib/util/DebugLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 110
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public executeHttpGetWithRetry(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 40
    const/4 v0, 0x0

    .line 41
    .local v0, "count":I
    const/4 v1, 0x0

    .line 42
    .local v1, "result":Ljava/lang/String;
    :cond_0
    iget v2, p0, Lcom/smartisan/weather/lib/util/HttpGetData;->m_retry:I

    if-ge v0, v2, :cond_1

    .line 43
    add-int/lit8 v0, v0, 0x1

    .line 44
    invoke-virtual {p0, p1}, Lcom/smartisan/weather/lib/util/HttpGetData;->executeHttpGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 45
    if-eqz v1, :cond_0

    .line 49
    :cond_1
    return-object v1
.end method
