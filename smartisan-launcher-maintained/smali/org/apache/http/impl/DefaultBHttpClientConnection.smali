.class public Lorg/apache/http/impl/DefaultBHttpClientConnection;
.super Lorg/apache/http/impl/BHttpConnectionBase;
.source "DefaultBHttpClientConnection.java"

.implements Lorg/apache/http/HttpClientConnection;


.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


.field private final requestWriter:Lorg/apache/http/io/HttpMessageWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/http/io/HttpMessageWriter",
            "<",
            "Lorg/apache/http/HttpRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final responseParser:Lorg/apache/http/io/HttpMessageParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/http/io/HttpMessageParser",
            "<",
            "Lorg/apache/http/HttpResponse;",
            ">;"
        }
    .end annotation
.end field


.method public constructor <init>(I)V
    .locals 10
    .param p1, "buffersize"    # I

    .prologue
    const/4 v3, 0x0

    .line 114
    move-object v0, p0

    move v1, p1

    move v2, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    move-object v8, v3

    move-object v9, v3

    invoke-direct/range {v0 .. v9}, Lorg/apache/http/impl/DefaultBHttpClientConnection;-><init>(IILjava/nio/charset/CharsetDecoder;Ljava/nio/charset/CharsetEncoder;Lorg/apache/http/config/MessageConstraints;Lorg/apache/http/entity/ContentLengthStrategy;Lorg/apache/http/entity/ContentLengthStrategy;Lorg/apache/http/io/HttpMessageWriterFactory;Lorg/apache/http/io/HttpMessageParserFactory;)V

    .line 115
    return-void
.end method

.method public constructor <init>(IILjava/nio/charset/CharsetDecoder;Ljava/nio/charset/CharsetEncoder;Lorg/apache/http/config/MessageConstraints;Lorg/apache/http/entity/ContentLengthStrategy;Lorg/apache/http/entity/ContentLengthStrategy;Lorg/apache/http/io/HttpMessageWriterFactory;Lorg/apache/http/io/HttpMessageParserFactory;)V
    .locals 1
    .param p1, "buffersize"    # I
    .param p2, "fragmentSizeHint"    # I
    .param p3, "chardecoder"    # Ljava/nio/charset/CharsetDecoder;
    .param p4, "charencoder"    # Ljava/nio/charset/CharsetEncoder;
    .param p5, "constraints"    # Lorg/apache/http/config/MessageConstraints;
    .param p6, "incomingContentStrategy"    # Lorg/apache/http/entity/ContentLengthStrategy;
    .param p7, "outgoingContentStrategy"    # Lorg/apache/http/entity/ContentLengthStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/nio/charset/CharsetDecoder;",
            "Ljava/nio/charset/CharsetEncoder;",
            "Lorg/apache/http/config/MessageConstraints;",
            "Lorg/apache/http/entity/ContentLengthStrategy;",
            "Lorg/apache/http/entity/ContentLengthStrategy;",
            "Lorg/apache/http/io/HttpMessageWriterFactory",
            "<",
            "Lorg/apache/http/HttpRequest;",
            ">;",
            "Lorg/apache/http/io/HttpMessageParserFactory",
            "<",
            "Lorg/apache/http/HttpResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 97
    .local p8, "requestWriterFactory":Lorg/apache/http/io/HttpMessageWriterFactory;, "Lorg/apache/http/io/HttpMessageWriterFactory<Lorg/apache/http/HttpRequest;>;"
    .local p9, "responseParserFactory":Lorg/apache/http/io/HttpMessageParserFactory;, "Lorg/apache/http/io/HttpMessageParserFactory<Lorg/apache/http/HttpResponse;>;"
    invoke-direct/range {p0 .. p7}, Lorg/apache/http/impl/BHttpConnectionBase;-><init>(IILjava/nio/charset/CharsetDecoder;Ljava/nio/charset/CharsetEncoder;Lorg/apache/http/config/MessageConstraints;Lorg/apache/http/entity/ContentLengthStrategy;Lorg/apache/http/entity/ContentLengthStrategy;)V

    .line 99
    if-eqz p8, :cond_0

    .end local p8    # "requestWriterFactory":Lorg/apache/http/io/HttpMessageWriterFactory;, "Lorg/apache/http/io/HttpMessageWriterFactory<Lorg/apache/http/HttpRequest;>;"
    :goto_0
    invoke-virtual {p0}, Lorg/apache/http/impl/DefaultBHttpClientConnection;->getSessionOutputBuffer()Lorg/apache/http/io/SessionOutputBuffer;

    move-result-object v0

    invoke-interface {p8, v0}, Lorg/apache/http/io/HttpMessageWriterFactory;->create(Lorg/apache/http/io/SessionOutputBuffer;)Lorg/apache/http/io/HttpMessageWriter;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/DefaultBHttpClientConnection;->requestWriter:Lorg/apache/http/io/HttpMessageWriter;

    .line 101
    if-eqz p9, :cond_1

    .end local p9    # "responseParserFactory":Lorg/apache/http/io/HttpMessageParserFactory;, "Lorg/apache/http/io/HttpMessageParserFactory<Lorg/apache/http/HttpResponse;>;"
    :goto_1
    invoke-virtual {p0}, Lorg/apache/http/impl/DefaultBHttpClientConnection;->getSessionInputBuffer()Lorg/apache/http/io/SessionInputBuffer;

    move-result-object v0

    invoke-interface {p9, v0, p5}, Lorg/apache/http/io/HttpMessageParserFactory;->create(Lorg/apache/http/io/SessionInputBuffer;Lorg/apache/http/config/MessageConstraints;)Lorg/apache/http/io/HttpMessageParser;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/DefaultBHttpClientConnection;->responseParser:Lorg/apache/http/io/HttpMessageParser;

    .line 103
    return-void

    .line 99
    .restart local p8    # "requestWriterFactory":Lorg/apache/http/io/HttpMessageWriterFactory;, "Lorg/apache/http/io/HttpMessageWriterFactory<Lorg/apache/http/HttpRequest;>;"
    .restart local p9    # "responseParserFactory":Lorg/apache/http/io/HttpMessageParserFactory;, "Lorg/apache/http/io/HttpMessageParserFactory<Lorg/apache/http/HttpResponse;>;"
    :cond_0
    sget-object p8, Lorg/apache/http/impl/io/DefaultHttpRequestWriterFactory;->INSTANCE:Lorg/apache/http/impl/io/DefaultHttpRequestWriterFactory;

    goto :goto_0

    .line 101
    .end local p8    # "requestWriterFactory":Lorg/apache/http/io/HttpMessageWriterFactory;, "Lorg/apache/http/io/HttpMessageWriterFactory<Lorg/apache/http/HttpRequest;>;"
    :cond_1
    sget-object p9, Lorg/apache/http/impl/io/DefaultHttpResponseParserFactory;->INSTANCE:Lorg/apache/http/impl/io/DefaultHttpResponseParserFactory;

    goto :goto_1
.end method

.method public constructor <init>(ILjava/nio/charset/CharsetDecoder;Ljava/nio/charset/CharsetEncoder;Lorg/apache/http/config/MessageConstraints;)V
    .locals 10
    .param p1, "buffersize"    # I
    .param p2, "chardecoder"    # Ljava/nio/charset/CharsetDecoder;
    .param p3, "charencoder"    # Ljava/nio/charset/CharsetEncoder;
    .param p4, "constraints"    # Lorg/apache/http/config/MessageConstraints;

    .prologue
    const/4 v6, 0x0

    .line 110
    move-object v0, p0

    move v1, p1

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v7, v6

    move-object v8, v6

    move-object v9, v6

    invoke-direct/range {v0 .. v9}, Lorg/apache/http/impl/DefaultBHttpClientConnection;-><init>(IILjava/nio/charset/CharsetDecoder;Ljava/nio/charset/CharsetEncoder;Lorg/apache/http/config/MessageConstraints;Lorg/apache/http/entity/ContentLengthStrategy;Lorg/apache/http/entity/ContentLengthStrategy;Lorg/apache/http/io/HttpMessageWriterFactory;Lorg/apache/http/io/HttpMessageParserFactory;)V

    .line 111
    return-void
.end method


.method public bind(Ljava/net/Socket;)V
    .locals 0
    .param p1, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 125
    invoke-super {p0, p1}, Lorg/apache/http/impl/BHttpConnectionBase;->bind(Ljava/net/Socket;)V

    .line 126
    return-void
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 178
    invoke-virtual {p0}, Lorg/apache/http/impl/DefaultBHttpClientConnection;->ensureOpen()V

    .line 179
    invoke-virtual {p0}, Lorg/apache/http/impl/DefaultBHttpClientConnection;->doFlush()V

    .line 180
    return-void
.end method

.method public isResponseAvailable(I)Z
    .locals 2
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    invoke-virtual {p0}, Lorg/apache/http/impl/DefaultBHttpClientConnection;->ensureOpen()V

    .line 131
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/http/impl/DefaultBHttpClientConnection;->awaitInput(I)Z
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 133
    :goto_0
    return v1

    .line 132
    :catch_0
    move-exception v0

    .line 133
    .local v0, "ex":Ljava/net/SocketTimeoutException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onRequestSubmitted(Lorg/apache/http/HttpRequest;)V
    .locals 0
    .param p1, "request"    # Lorg/apache/http/HttpRequest;

    .prologue
    .line 121
    return-void
.end method

.method protected onResponseReceived(Lorg/apache/http/HttpResponse;)V
    .locals 0
    .param p1, "response"    # Lorg/apache/http/HttpResponse;

    .prologue
    .line 118
    return-void
.end method

.method public receiveResponseEntity(Lorg/apache/http/HttpResponse;)V
    .locals 2
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 171
    const-string v1, "HTTP response"

    invoke-static {p1, v1}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 172
    invoke-virtual {p0}, Lorg/apache/http/impl/DefaultBHttpClientConnection;->ensureOpen()V

    .line 173
    invoke-virtual {p0, p1}, Lorg/apache/http/impl/DefaultBHttpClientConnection;->prepareInput(Lorg/apache/http/HttpMessage;)Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 174
    .local v0, "entity":Lorg/apache/http/HttpEntity;
    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 175
    return-void
.end method

.method public receiveResponseHeader()Lorg/apache/http/HttpResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 160
    invoke-virtual {p0}, Lorg/apache/http/impl/DefaultBHttpClientConnection;->ensureOpen()V

    .line 161
    iget-object v1, p0, Lorg/apache/http/impl/DefaultBHttpClientConnection;->responseParser:Lorg/apache/http/io/HttpMessageParser;

    invoke-interface {v1}, Lorg/apache/http/io/HttpMessageParser;->parse()Lorg/apache/http/HttpMessage;

    move-result-object v0

    check-cast v0, Lorg/apache/http/HttpResponse;

    .line 162
    .local v0, "response":Lorg/apache/http/HttpResponse;
    invoke-virtual {p0, v0}, Lorg/apache/http/impl/DefaultBHttpClientConnection;->onResponseReceived(Lorg/apache/http/HttpResponse;)V

    .line 163
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-lt v1, v2, :cond_0

    .line 164
    invoke-virtual {p0}, Lorg/apache/http/impl/DefaultBHttpClientConnection;->incrementResponseCount()V

    .line 166
    :cond_0
    return-object v0
.end method

.method public sendRequestEntity(Lorg/apache/http/HttpEntityEnclosingRequest;)V
    .locals 3
    .param p1, "request"    # Lorg/apache/http/HttpEntityEnclosingRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 148
    const-string v2, "HTTP request"

    invoke-static {p1, v2}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 149
    invoke-virtual {p0}, Lorg/apache/http/impl/DefaultBHttpClientConnection;->ensureOpen()V

    .line 150
    invoke-interface {p1}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 151
    .local v0, "entity":Lorg/apache/http/HttpEntity;
    if-nez v0, :cond_0

    .line 157
    :goto_0
    return-void

    .line 154
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/http/impl/DefaultBHttpClientConnection;->prepareOutput(Lorg/apache/http/HttpMessage;)Ljava/io/OutputStream;

    move-result-object v1

    .line 155
    .local v1, "outstream":Ljava/io/OutputStream;
    invoke-interface {v0, v1}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 156
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    goto :goto_0
.end method

.method public sendRequestHeader(Lorg/apache/http/HttpRequest;)V
    .locals 1
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 139
    const-string v0, "HTTP request"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 140
    invoke-virtual {p0}, Lorg/apache/http/impl/DefaultBHttpClientConnection;->ensureOpen()V

    .line 141
    iget-object v0, p0, Lorg/apache/http/impl/DefaultBHttpClientConnection;->requestWriter:Lorg/apache/http/io/HttpMessageWriter;

    invoke-interface {v0, p1}, Lorg/apache/http/io/HttpMessageWriter;->write(Lorg/apache/http/HttpMessage;)V

    .line 142
    invoke-virtual {p0, p1}, Lorg/apache/http/impl/DefaultBHttpClientConnection;->onRequestSubmitted(Lorg/apache/http/HttpRequest;)V

    .line 143
    invoke-virtual {p0}, Lorg/apache/http/impl/DefaultBHttpClientConnection;->incrementRequestCount()V

    .line 144
    return-void
.end method
