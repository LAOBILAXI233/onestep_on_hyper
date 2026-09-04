.class public Lorg/apache/http/protocol/HttpRequestExecutor;
.super Ljava/lang/Object;
.source "HttpRequestExecutor.java"


.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


.field public static final DEFAULT_WAIT_FOR_CONTINUE:I = 0xbb8


.field private final waitForContinue:I


.method public constructor <init>()V
    .locals 1

    .prologue
    .line 75
    const/16 v0, 0xbb8

    invoke-direct {p0, v0}, Lorg/apache/http/protocol/HttpRequestExecutor;-><init>(I)V

    .line 76
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "waitForContinue"    # I

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const-string v0, "Wait for continue time"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->positive(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/apache/http/protocol/HttpRequestExecutor;->waitForContinue:I

    .line 72
    return-void
.end method

.method private static closeConnection(Lorg/apache/http/HttpClientConnection;)V
    .locals 1
    .param p0, "conn"    # Lorg/apache/http/HttpClientConnection;

    .prologue
    .line 140
    :try_start_0
    invoke-interface {p0}, Lorg/apache/http/HttpClientConnection;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :goto_0
    return-void

    .line 141
    :catch_0
    move-exception v0

    goto :goto_0
.end method


.method protected canResponseHaveBody(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;)Z
    .locals 4
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .param p2, "response"    # Lorg/apache/http/HttpResponse;

    .prologue
    const/4 v1, 0x0

    .line 91
    const-string v2, "HEAD"

    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 95
    :cond_0
    :goto_0
    return v1

    .line 94
    :cond_1
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 95
    .local v0, "status":I
    const/16 v2, 0xc8

    if-lt v0, v2, :cond_0

    const/16 v2, 0xcc

    if-eq v0, v2, :cond_0

    const/16 v2, 0x130

    if-eq v0, v2, :cond_0

    const/16 v2, 0xcd

    if-eq v0, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected doReceiveResponse(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpClientConnection;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .locals 3
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .param p2, "conn"    # Lorg/apache/http/HttpClientConnection;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 263
    const-string v2, "HTTP request"

    invoke-static {p1, v2}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 264
    const-string v2, "Client connection"

    invoke-static {p2, v2}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 265
    const-string v2, "HTTP context"

    invoke-static {p3, v2}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 266
    const/4 v0, 0x0

    .line 267
    .local v0, "response":Lorg/apache/http/HttpResponse;
    const/4 v1, 0x0

    .line 269
    .local v1, "statusCode":I
    :goto_0
    if-eqz v0, :cond_0

    const/16 v2, 0xc8

    if-ge v1, v2, :cond_2

    .line 271
    :cond_0
    invoke-interface {p2}, Lorg/apache/http/HttpClientConnection;->receiveResponseHeader()Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 272
    invoke-virtual {p0, p1, v0}, Lorg/apache/http/protocol/HttpRequestExecutor;->canResponseHaveBody(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 273
    invoke-interface {p2, v0}, Lorg/apache/http/HttpClientConnection;->receiveResponseEntity(Lorg/apache/http/HttpResponse;)V

    .line 275
    :cond_1
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    goto :goto_0

    .line 279
    :cond_2
    return-object v0
.end method

.method protected doSendRequest(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpClientConnection;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .locals 7
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .param p2, "conn"    # Lorg/apache/http/HttpClientConnection;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;
        }
    .end annotation

    .prologue
    .line 194
    const-string v4, "HTTP request"

    invoke-static {p1, v4}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 195
    const-string v4, "Client connection"

    invoke-static {p2, v4}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 196
    const-string v4, "HTTP context"

    invoke-static {p3, v4}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 198
    const/4 v0, 0x0

    .line 200
    .local v0, "response":Lorg/apache/http/HttpResponse;
    const-string v4, "http.connection"

    invoke-interface {p3, v4, p2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 201
    const-string v4, "http.request_sent"

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p3, v4, v5}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 203
    invoke-interface {p2, p1}, Lorg/apache/http/HttpClientConnection;->sendRequestHeader(Lorg/apache/http/HttpRequest;)V

    .line 204
    instance-of v4, p1, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-eqz v4, :cond_3

    .line 208
    const/4 v1, 0x1

    .line 209
    .local v1, "sendentity":Z
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/RequestLine;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v3

    .local v3, "ver":Lorg/apache/http/ProtocolVersion;
    move-object v4, p1

    .line 211
    check-cast v4, Lorg/apache/http/HttpEntityEnclosingRequest;

    invoke-interface {v4}, Lorg/apache/http/HttpEntityEnclosingRequest;->expectContinue()Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lorg/apache/http/HttpVersion;->HTTP_1_0:Lorg/apache/http/HttpVersion;

    invoke-virtual {v3, v4}, Lorg/apache/http/ProtocolVersion;->lessEquals(Lorg/apache/http/ProtocolVersion;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 214
    invoke-interface {p2}, Lorg/apache/http/HttpClientConnection;->flush()V

    .line 217
    iget v4, p0, Lorg/apache/http/protocol/HttpRequestExecutor;->waitForContinue:I

    invoke-interface {p2, v4}, Lorg/apache/http/HttpClientConnection;->isResponseAvailable(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 218
    invoke-interface {p2}, Lorg/apache/http/HttpClientConnection;->receiveResponseHeader()Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 219
    invoke-virtual {p0, p1, v0}, Lorg/apache/http/protocol/HttpRequestExecutor;->canResponseHaveBody(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 220
    invoke-interface {p2, v0}, Lorg/apache/http/HttpClientConnection;->receiveResponseEntity(Lorg/apache/http/HttpResponse;)V

    .line 222
    :cond_0
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    .line 223
    .local v2, "status":I
    const/16 v4, 0xc8

    if-ge v2, v4, :cond_4

    .line 224
    const/16 v4, 0x64

    if-eq v2, v4, :cond_1

    .line 225
    new-instance v4, Lorg/apache/http/ProtocolException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected response: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 229
    :cond_1
    const/4 v0, 0x0

    .line 235
    .end local v2    # "status":I
    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 236
    check-cast p1, Lorg/apache/http/HttpEntityEnclosingRequest;

    .end local p1    # "request":Lorg/apache/http/HttpRequest;
    invoke-interface {p2, p1}, Lorg/apache/http/HttpClientConnection;->sendRequestEntity(Lorg/apache/http/HttpEntityEnclosingRequest;)V

    .line 239
    .end local v1    # "sendentity":Z
    .end local v3    # "ver":Lorg/apache/http/ProtocolVersion;
    :cond_3
    invoke-interface {p2}, Lorg/apache/http/HttpClientConnection;->flush()V

    .line 240
    const-string v4, "http.request_sent"

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p3, v4, v5}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 241
    return-object v0

    .line 231
    .restart local v1    # "sendentity":Z
    .restart local v2    # "status":I
    .restart local v3    # "ver":Lorg/apache/http/ProtocolVersion;
    .restart local p1    # "request":Lorg/apache/http/HttpRequest;
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public execute(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpClientConnection;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .locals 3
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .param p2, "conn"    # Lorg/apache/http/HttpClientConnection;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;
        }
    .end annotation

    .prologue
    .line 117
    const-string v2, "HTTP request"

    invoke-static {p1, v2}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 118
    const-string v2, "Client connection"

    invoke-static {p2, v2}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 119
    const-string v2, "HTTP context"

    invoke-static {p3, v2}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 121
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/http/protocol/HttpRequestExecutor;->doSendRequest(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpClientConnection;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 122
    .local v1, "response":Lorg/apache/http/HttpResponse;
    if-nez v1, :cond_0

    .line 123
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/http/protocol/HttpRequestExecutor;->doReceiveResponse(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpClientConnection;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/HttpException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    .line 125
    :cond_0
    return-object v1

    .line 126
    .end local v1    # "response":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v0

    .line 127
    .local v0, "ex":Ljava/io/IOException;
    invoke-static {p2}, Lorg/apache/http/protocol/HttpRequestExecutor;->closeConnection(Lorg/apache/http/HttpClientConnection;)V

    .line 128
    throw v0

    .line 129
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 130
    .local v0, "ex":Lorg/apache/http/HttpException;
    invoke-static {p2}, Lorg/apache/http/protocol/HttpRequestExecutor;->closeConnection(Lorg/apache/http/HttpClientConnection;)V

    .line 131
    throw v0

    .line 132
    .end local v0    # "ex":Lorg/apache/http/HttpException;
    :catch_2
    move-exception v0

    .line 133
    .local v0, "ex":Ljava/lang/RuntimeException;
    invoke-static {p2}, Lorg/apache/http/protocol/HttpRequestExecutor;->closeConnection(Lorg/apache/http/HttpClientConnection;)V

    .line 134
    throw v0
.end method

.method public postProcess(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpProcessor;Lorg/apache/http/protocol/HttpContext;)V
    .locals 1
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .param p2, "processor"    # Lorg/apache/http/protocol/HttpProcessor;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 304
    const-string v0, "HTTP response"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 305
    const-string v0, "HTTP processor"

    invoke-static {p2, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 306
    const-string v0, "HTTP context"

    invoke-static {p3, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 307
    const-string v0, "http.response"

    invoke-interface {p3, v0, p1}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 308
    invoke-interface {p2, p1, p3}, Lorg/apache/http/protocol/HttpProcessor;->process(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V

    .line 309
    return-void
.end method

.method public preProcess(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpProcessor;Lorg/apache/http/protocol/HttpContext;)V
    .locals 1
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .param p2, "processor"    # Lorg/apache/http/protocol/HttpProcessor;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    const-string v0, "HTTP request"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 162
    const-string v0, "HTTP processor"

    invoke-static {p2, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 163
    const-string v0, "HTTP context"

    invoke-static {p3, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 164
    const-string v0, "http.request"

    invoke-interface {p3, v0, p1}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 165
    invoke-interface {p2, p1, p3}, Lorg/apache/http/protocol/HttpProcessor;->process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V

    .line 166
    return-void
.end method
