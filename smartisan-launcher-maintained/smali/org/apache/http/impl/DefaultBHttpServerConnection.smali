.class public Lorg/apache/http/impl/DefaultBHttpServerConnection;
.super Lorg/apache/http/impl/BHttpConnectionBase;
.source "DefaultBHttpServerConnection.java"

.implements Lorg/apache/http/HttpServerConnection;


.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


.field private final requestParser:Lorg/apache/http/io/HttpMessageParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/http/io/HttpMessageParser",
            "<",
            "Lorg/apache/http/HttpRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final responseWriter:Lorg/apache/http/io/HttpMessageWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/http/io/HttpMessageWriter",
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

    invoke-direct/range {v0 .. v9}, Lorg/apache/http/impl/DefaultBHttpServerConnection;-><init>(IILjava/nio/charset/CharsetDecoder;Ljava/nio/charset/CharsetEncoder;Lorg/apache/http/config/MessageConstraints;Lorg/apache/http/entity/ContentLengthStrategy;Lorg/apache/http/entity/ContentLengthStrategy;Lorg/apache/http/io/HttpMessageParserFactory;Lorg/apache/http/io/HttpMessageWriterFactory;)V

    .line 115
    return-void
.end method

.method public constructor <init>(IILjava/nio/charset/CharsetDecoder;Ljava/nio/charset/CharsetEncoder;Lorg/apache/http/config/MessageConstraints;Lorg/apache/http/entity/ContentLengthStrategy;Lorg/apache/http/entity/ContentLengthStrategy;Lorg/apache/http/io/HttpMessageParserFactory;Lorg/apache/http/io/HttpMessageWriterFactory;)V
    .locals 9
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
            "Lorg/apache/http/io/HttpMessageParserFactory",
            "<",
            "Lorg/apache/http/HttpRequest;",
            ">;",
            "Lorg/apache/http/io/HttpMessageWriterFactory",
            "<",
            "Lorg/apache/http/HttpResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 96
    .local p8, "requestParserFactory":Lorg/apache/http/io/HttpMessageParserFactory;, "Lorg/apache/http/io/HttpMessageParserFactory<Lorg/apache/http/HttpRequest;>;"
    .local p9, "responseWriterFactory":Lorg/apache/http/io/HttpMessageWriterFactory;, "Lorg/apache/http/io/HttpMessageWriterFactory<Lorg/apache/http/HttpResponse;>;"
    if-eqz p6, :cond_0

    move-object v7, p6

    :goto_0
    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lorg/apache/http/impl/BHttpConnectionBase;-><init>(IILjava/nio/charset/CharsetDecoder;Ljava/nio/charset/CharsetEncoder;Lorg/apache/http/config/MessageConstraints;Lorg/apache/http/entity/ContentLengthStrategy;Lorg/apache/http/entity/ContentLengthStrategy;)V

    .line 99
    if-eqz p8, :cond_1

    .end local p8    # "requestParserFactory":Lorg/apache/http/io/HttpMessageParserFactory;, "Lorg/apache/http/io/HttpMessageParserFactory<Lorg/apache/http/HttpRequest;>;"
    :goto_1
    invoke-virtual {p0}, Lorg/apache/http/impl/DefaultBHttpServerConnection;->getSessionInputBuffer()Lorg/apache/http/io/SessionInputBuffer;

    move-result-object v1

    move-object/from16 v0, p8

    invoke-interface {v0, v1, p5}, Lorg/apache/http/io/HttpMessageParserFactory;->create(Lorg/apache/http/io/SessionInputBuffer;Lorg/apache/http/config/MessageConstraints;)Lorg/apache/http/io/HttpMessageParser;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/http/impl/DefaultBHttpServerConnection;->requestParser:Lorg/apache/http/io/HttpMessageParser;

    .line 101
    if-eqz p9, :cond_2

    .end local p9    # "responseWriterFactory":Lorg/apache/http/io/HttpMessageWriterFactory;, "Lorg/apache/http/io/HttpMessageWriterFactory<Lorg/apache/http/HttpResponse;>;"
    :goto_2
    invoke-virtual {p0}, Lorg/apache/http/impl/DefaultBHttpServerConnection;->getSessionOutputBuffer()Lorg/apache/http/io/SessionOutputBuffer;

    move-result-object v1

    move-object/from16 v0, p9

    invoke-interface {v0, v1}, Lorg/apache/http/io/HttpMessageWriterFactory;->create(Lorg/apache/http/io/SessionOutputBuffer;)Lorg/apache/http/io/HttpMessageWriter;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/http/impl/DefaultBHttpServerConnection;->responseWriter:Lorg/apache/http/io/HttpMessageWriter;

    .line 103
    return-void

    .line 96
    .restart local p8    # "requestParserFactory":Lorg/apache/http/io/HttpMessageParserFactory;, "Lorg/apache/http/io/HttpMessageParserFactory<Lorg/apache/http/HttpRequest;>;"
    .restart local p9    # "responseWriterFactory":Lorg/apache/http/io/HttpMessageWriterFactory;, "Lorg/apache/http/io/HttpMessageWriterFactory<Lorg/apache/http/HttpResponse;>;"
    :cond_0
    sget-object v7, Lorg/apache/http/impl/entity/DisallowIdentityContentLengthStrategy;->INSTANCE:Lorg/apache/http/impl/entity/DisallowIdentityContentLengthStrategy;

    goto :goto_0

    .line 99
    :cond_1
    sget-object p8, Lorg/apache/http/impl/io/DefaultHttpRequestParserFactory;->INSTANCE:Lorg/apache/http/impl/io/DefaultHttpRequestParserFactory;

    goto :goto_1

    .line 101
    .end local p8    # "requestParserFactory":Lorg/apache/http/io/HttpMessageParserFactory;, "Lorg/apache/http/io/HttpMessageParserFactory<Lorg/apache/http/HttpRequest;>;"
    :cond_2
    sget-object p9, Lorg/apache/http/impl/io/DefaultHttpResponseWriterFactory;->INSTANCE:Lorg/apache/http/impl/io/DefaultHttpResponseWriterFactory;

    goto :goto_2
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

    invoke-direct/range {v0 .. v9}, Lorg/apache/http/impl/DefaultBHttpServerConnection;-><init>(IILjava/nio/charset/CharsetDecoder;Ljava/nio/charset/CharsetEncoder;Lorg/apache/http/config/MessageConstraints;Lorg/apache/http/entity/ContentLengthStrategy;Lorg/apache/http/entity/ContentLengthStrategy;Lorg/apache/http/io/HttpMessageParserFactory;Lorg/apache/http/io/HttpMessageWriterFactory;)V

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
    .line 170
    invoke-virtual {p0}, Lorg/apache/http/impl/DefaultBHttpServerConnection;->ensureOpen()V

    .line 171
    invoke-virtual {p0}, Lorg/apache/http/impl/DefaultBHttpServerConnection;->doFlush()V

    .line 172
    return-void
.end method

.method protected onRequestReceived(Lorg/apache/http/HttpRequest;)V
    .locals 0
    .param p1, "request"    # Lorg/apache/http/HttpRequest;

    .prologue
    .line 118
    return-void
.end method

.method protected onResponseSubmitted(Lorg/apache/http/HttpResponse;)V
    .locals 0
    .param p1, "response"    # Lorg/apache/http/HttpResponse;

    .prologue
    .line 121
    return-void
.end method

.method public receiveRequestEntity(Lorg/apache/http/HttpEntityEnclosingRequest;)V
    .locals 2
    .param p1, "request"    # Lorg/apache/http/HttpEntityEnclosingRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 139
    const-string v1, "HTTP request"

    invoke-static {p1, v1}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 140
    invoke-virtual {p0}, Lorg/apache/http/impl/DefaultBHttpServerConnection;->ensureOpen()V

    .line 141
    invoke-virtual {p0, p1}, Lorg/apache/http/impl/DefaultBHttpServerConnection;->prepareInput(Lorg/apache/http/HttpMessage;)Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 142
    .local v0, "entity":Lorg/apache/http/HttpEntity;
    invoke-interface {p1, v0}, Lorg/apache/http/HttpEntityEnclosingRequest;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 143
    return-void
.end method

.method public receiveRequestHeader()Lorg/apache/http/HttpRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 130
    invoke-virtual {p0}, Lorg/apache/http/impl/DefaultBHttpServerConnection;->ensureOpen()V

    .line 131
    iget-object v1, p0, Lorg/apache/http/impl/DefaultBHttpServerConnection;->requestParser:Lorg/apache/http/io/HttpMessageParser;

    invoke-interface {v1}, Lorg/apache/http/io/HttpMessageParser;->parse()Lorg/apache/http/HttpMessage;

    move-result-object v0

    check-cast v0, Lorg/apache/http/HttpRequest;

    .line 132
    .local v0, "request":Lorg/apache/http/HttpRequest;
    invoke-virtual {p0, v0}, Lorg/apache/http/impl/DefaultBHttpServerConnection;->onRequestReceived(Lorg/apache/http/HttpRequest;)V

    .line 133
    invoke-virtual {p0}, Lorg/apache/http/impl/DefaultBHttpServerConnection;->incrementRequestCount()V

    .line 134
    return-object v0
.end method

.method public sendResponseEntity(Lorg/apache/http/HttpResponse;)V
    .locals 3
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 158
    const-string v2, "HTTP response"

    invoke-static {p1, v2}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 159
    invoke-virtual {p0}, Lorg/apache/http/impl/DefaultBHttpServerConnection;->ensureOpen()V

    .line 160
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 161
    .local v0, "entity":Lorg/apache/http/HttpEntity;
    if-nez v0, :cond_0

    .line 167
    :goto_0
    return-void

    .line 164
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/http/impl/DefaultBHttpServerConnection;->prepareOutput(Lorg/apache/http/HttpMessage;)Ljava/io/OutputStream;

    move-result-object v1

    .line 165
    .local v1, "outstream":Ljava/io/OutputStream;
    invoke-interface {v0, v1}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 166
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    goto :goto_0
.end method

.method public sendResponseHeader(Lorg/apache/http/HttpResponse;)V
    .locals 2
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 147
    const-string v0, "HTTP response"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 148
    invoke-virtual {p0}, Lorg/apache/http/impl/DefaultBHttpServerConnection;->ensureOpen()V

    .line 149
    iget-object v0, p0, Lorg/apache/http/impl/DefaultBHttpServerConnection;->responseWriter:Lorg/apache/http/io/HttpMessageWriter;

    invoke-interface {v0, p1}, Lorg/apache/http/io/HttpMessageWriter;->write(Lorg/apache/http/HttpMessage;)V

    .line 150
    invoke-virtual {p0, p1}, Lorg/apache/http/impl/DefaultBHttpServerConnection;->onResponseSubmitted(Lorg/apache/http/HttpResponse;)V

    .line 151
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    .line 152
    invoke-virtual {p0}, Lorg/apache/http/impl/DefaultBHttpServerConnection;->incrementResponseCount()V

    .line 154
    :cond_0
    return-void
.end method
