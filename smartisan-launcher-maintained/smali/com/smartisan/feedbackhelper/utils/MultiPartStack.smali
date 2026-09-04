.class public Lcom/smartisan/feedbackhelper/utils/MultiPartStack;
.super Lcom/android/volley/toolbox/HurlStack;
.source "MultiPartStack.java"


.field private static final HEADER_CONTENT_TYPE:Ljava/lang/String; = "Content-Type"

.field private static final TAG:Ljava/lang/String;


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/smartisan/feedbackhelper/utils/MultiPartStack;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/smartisan/feedbackhelper/utils/MultiPartStack;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    return-void
.end method

.method private static addHeaders(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/util/Map;)V
    .locals 3
    .param p0, "httpRequest"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 56
    .local v0, "key":Ljava/lang/String;
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 58
    .end local v0    # "key":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method static createMultiPartRequest(Lcom/android/volley/Request;Ljava/util/Map;)Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/http/client/methods/HttpUriRequest;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .prologue
    .line 82
    .local p0, "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
    .local p1, "additionalHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/volley/Request;->getMethod()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 125
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Unknown request method."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 89
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/volley/Request;->getBody()[B

    move-result-object v1

    .line 90
    .local v1, "postBody":[B
    if-eqz v1, :cond_1

    .line 91
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {p0}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 92
    .local v2, "postRequest":Lorg/apache/http/client/methods/HttpPost;
    invoke-virtual {p0}, Lcom/android/volley/Request;->getBodyContentType()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 93
    const-string v4, "Content-Type"

    .line 94
    invoke-virtual {p0}, Lcom/android/volley/Request;->getBodyContentType()Ljava/lang/String;

    move-result-object v5

    .line 93
    invoke-virtual {v2, v4, v5}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :cond_0
    new-instance v0, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v0, v1}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 97
    .local v0, "entity":Lorg/apache/http/HttpEntity;
    invoke-virtual {v2, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 122
    .end local v0    # "entity":Lorg/apache/http/HttpEntity;
    .end local v1    # "postBody":[B
    .end local v2    # "postRequest":Lorg/apache/http/client/methods/HttpPost;
    :goto_0
    return-object v2

    .line 100
    .restart local v1    # "postBody":[B
    :cond_1
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {p0}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 104
    .end local v1    # "postBody":[B
    :pswitch_1
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {p0}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 106
    :pswitch_2
    new-instance v2, Lorg/apache/http/client/methods/HttpDelete;

    invoke-virtual {p0}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 108
    :pswitch_3
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {p0}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 109
    .restart local v2    # "postRequest":Lorg/apache/http/client/methods/HttpPost;
    invoke-virtual {p0}, Lcom/android/volley/Request;->getBodyContentType()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 110
    const-string v4, "Content-Type"

    .line 111
    invoke-virtual {p0}, Lcom/android/volley/Request;->getBodyContentType()Ljava/lang/String;

    move-result-object v5

    .line 110
    invoke-virtual {v2, v4, v5}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :cond_2
    invoke-static {v2, p0}, Lcom/smartisan/feedbackhelper/utils/MultiPartStack;->setMultiPartBody(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lcom/android/volley/Request;)V

    goto :goto_0

    .line 117
    .end local v2    # "postRequest":Lorg/apache/http/client/methods/HttpPost;
    :pswitch_4
    new-instance v3, Lorg/apache/http/client/methods/HttpPut;

    invoke-virtual {p0}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    .line 118
    .local v3, "putRequest":Lorg/apache/http/client/methods/HttpPut;
    invoke-virtual {p0}, Lcom/android/volley/Request;->getBodyContentType()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 119
    const-string v4, "Content-Type"

    .line 120
    invoke-virtual {p0}, Lcom/android/volley/Request;->getBodyContentType()Ljava/lang/String;

    move-result-object v5

    .line 119
    invoke-virtual {v3, v4, v5}, Lorg/apache/http/client/methods/HttpPut;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :cond_3
    invoke-static {v3, p0}, Lcom/smartisan/feedbackhelper/utils/MultiPartStack;->setMultiPartBody(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lcom/android/volley/Request;)V

    move-object v2, v3

    .line 122
    goto :goto_0

    .line 82
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method private static setMultiPartBody(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lcom/android/volley/Request;)V
    .locals 11
    .param p0, "httpRequest"    # Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;",
            "Lcom/android/volley/Request",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .prologue
    .line 142
    .local p1, "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
    instance-of v7, p1, Lcom/smartisan/feedbackhelper/utils/MultiPartRequest;

    if-nez v7, :cond_0

    .line 180
    .end local p1    # "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
    :goto_0
    return-void

    .line 149
    .restart local p1    # "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
    :cond_0
    invoke-static {}, Lorg/apache/http/entity/mime/MultipartEntityBuilder;->create()Lorg/apache/http/entity/mime/MultipartEntityBuilder;

    move-result-object v0

    .line 152
    .local v0, "builder":Lorg/apache/http/entity/mime/MultipartEntityBuilder;
    sget-object v7, Lorg/apache/http/entity/mime/HttpMultipartMode;->BROWSER_COMPATIBLE:Lorg/apache/http/entity/mime/HttpMultipartMode;

    invoke-virtual {v0, v7}, Lorg/apache/http/entity/mime/MultipartEntityBuilder;->setMode(Lorg/apache/http/entity/mime/HttpMultipartMode;)Lorg/apache/http/entity/mime/MultipartEntityBuilder;

    move-object v7, p1

    .line 155
    check-cast v7, Lcom/smartisan/feedbackhelper/utils/MultiPartRequest;

    .line 156
    invoke-interface {v7}, Lcom/smartisan/feedbackhelper/utils/MultiPartRequest;->getFileUploads()Ljava/util/Map;

    move-result-object v5

    .line 157
    .local v5, "fileUpload":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/io/File;>;"
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 159
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/io/File;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    new-instance v10, Lorg/apache/http/entity/mime/content/FileBody;

    .line 160
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/io/File;

    invoke-direct {v10, v8}, Lorg/apache/http/entity/mime/content/FileBody;-><init>(Ljava/io/File;)V

    .line 159
    invoke-virtual {v0, v7, v10}, Lorg/apache/http/entity/mime/MultipartEntityBuilder;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)Lorg/apache/http/entity/mime/MultipartEntityBuilder;

    goto :goto_1

    .line 163
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/io/File;>;"
    :cond_1
    const-string v7, "text/plain"

    const-string v8, "UTF-8"

    invoke-static {v7, v8}, Lorg/apache/http/entity/ContentType;->create(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/entity/ContentType;

    move-result-object v1

    .line 166
    .local v1, "contentType":Lorg/apache/http/entity/ContentType;
    check-cast p1, Lcom/smartisan/feedbackhelper/utils/MultiPartRequest;

    .line 167
    .end local p1    # "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
    invoke-interface {p1}, Lcom/smartisan/feedbackhelper/utils/MultiPartRequest;->getStringUploads()Ljava/util/Map;

    move-result-object v6

    .line 168
    .local v6, "stringUpload":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v6, :cond_2

    .line 169
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 171
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    new-instance v10, Lorg/apache/http/entity/mime/content/StringBody;

    .line 172
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct {v10, v8, v1}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;Lorg/apache/http/entity/ContentType;)V

    .line 171
    invoke-virtual {v0, v7, v10}, Lorg/apache/http/entity/mime/MultipartEntityBuilder;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)Lorg/apache/http/entity/mime/MultipartEntityBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 173
    :catch_0
    move-exception v2

    .line 174
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 179
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    invoke-virtual {v0}, Lorg/apache/http/entity/mime/MultipartEntityBuilder;->build()Lorg/apache/http/HttpEntity;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto :goto_0
.end method


.method public performMultiPartRequest(Lcom/android/volley/Request;Ljava/util/Map;)Lorg/apache/http/HttpResponse;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/http/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .prologue
    .line 63
    .local p1, "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
    .local p2, "additionalHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1, p2}, Lcom/smartisan/feedbackhelper/utils/MultiPartStack;->createMultiPartRequest(Lcom/android/volley/Request;Ljava/util/Map;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v2

    .line 65
    .local v2, "httpRequest":Lorg/apache/http/client/methods/HttpUriRequest;
    invoke-static {v2, p2}, Lcom/smartisan/feedbackhelper/utils/MultiPartStack;->addHeaders(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/util/Map;)V

    .line 66
    invoke-virtual {p1}, Lcom/android/volley/Request;->getHeaders()Ljava/util/Map;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/smartisan/feedbackhelper/utils/MultiPartStack;->addHeaders(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/util/Map;)V

    .line 67
    invoke-interface {v2}, Lorg/apache/http/client/methods/HttpUriRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    .line 68
    .local v1, "httpParams":Lorg/apache/http/params/HttpParams;
    invoke-virtual {p1}, Lcom/android/volley/Request;->getTimeoutMs()I

    move-result v3

    .line 70
    .local v3, "timeoutMs":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 71
    invoke-static {v1, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 75
    :cond_0
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 77
    .local v0, "httpClient":Lorg/apache/http/client/HttpClient;
    invoke-interface {v0, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    return-object v4
.end method

.method public performRequest(Lcom/android/volley/Request;Ljava/util/Map;)Lorg/apache/http/HttpResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/http/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .prologue
    .line 46
    .local p1, "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
    .local p2, "additionalHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    instance-of v0, p1, Lcom/smartisan/feedbackhelper/utils/MultiPartRequest;

    if-nez v0, :cond_0

    .line 47
    invoke-super {p0, p1, p2}, Lcom/android/volley/toolbox/HurlStack;->performRequest(Lcom/android/volley/Request;Ljava/util/Map;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 49
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/smartisan/feedbackhelper/utils/MultiPartStack;->performMultiPartRequest(Lcom/android/volley/Request;Ljava/util/Map;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    goto :goto_0
.end method
