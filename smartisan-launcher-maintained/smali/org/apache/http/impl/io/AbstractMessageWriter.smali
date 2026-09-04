.class public abstract Lorg/apache/http/impl/io/AbstractMessageWriter;
.super Ljava/lang/Object;
.source "AbstractMessageWriter.java"

.implements Lorg/apache/http/io/HttpMessageWriter;


.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/http/HttpMessage;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/http/io/HttpMessageWriter",
        "<TT;>;"
    }
.end annotation

.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


.field protected final lineBuf:Lorg/apache/http/util/CharArrayBuffer;

.field protected final lineFormatter:Lorg/apache/http/message/LineFormatter;

.field protected final sessionBuffer:Lorg/apache/http/io/SessionOutputBuffer;


.method public constructor <init>(Lorg/apache/http/io/SessionOutputBuffer;Lorg/apache/http/message/LineFormatter;)V
    .locals 2
    .param p1, "buffer"    # Lorg/apache/http/io/SessionOutputBuffer;
    .param p2, "formatter"    # Lorg/apache/http/message/LineFormatter;

    .prologue
    .line 92
    .local p0, "this":Lorg/apache/http/impl/io/AbstractMessageWriter;, "Lorg/apache/http/impl/io/AbstractMessageWriter<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const-string v0, "Session input buffer"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/io/SessionOutputBuffer;

    iput-object v0, p0, Lorg/apache/http/impl/io/AbstractMessageWriter;->sessionBuffer:Lorg/apache/http/io/SessionOutputBuffer;

    .line 94
    if-eqz p2, :cond_0

    .end local p2    # "formatter":Lorg/apache/http/message/LineFormatter;
    :goto_0
    iput-object p2, p0, Lorg/apache/http/impl/io/AbstractMessageWriter;->lineFormatter:Lorg/apache/http/message/LineFormatter;

    .line 95
    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/apache/http/impl/io/AbstractMessageWriter;->lineBuf:Lorg/apache/http/util/CharArrayBuffer;

    .line 96
    return-void

    .line 94
    .restart local p2    # "formatter":Lorg/apache/http/message/LineFormatter;
    :cond_0
    sget-object p2, Lorg/apache/http/message/BasicLineFormatter;->INSTANCE:Lorg/apache/http/message/BasicLineFormatter;

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/http/io/SessionOutputBuffer;Lorg/apache/http/message/LineFormatter;Lorg/apache/http/params/HttpParams;)V
    .locals 2
    .param p1, "buffer"    # Lorg/apache/http/io/SessionOutputBuffer;
    .param p2, "formatter"    # Lorg/apache/http/message/LineFormatter;
    .param p3, "params"    # Lorg/apache/http/params/HttpParams;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 73
    .local p0, "this":Lorg/apache/http/impl/io/AbstractMessageWriter;, "Lorg/apache/http/impl/io/AbstractMessageWriter<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const-string v0, "Session input buffer"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 75
    iput-object p1, p0, Lorg/apache/http/impl/io/AbstractMessageWriter;->sessionBuffer:Lorg/apache/http/io/SessionOutputBuffer;

    .line 76
    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/apache/http/impl/io/AbstractMessageWriter;->lineBuf:Lorg/apache/http/util/CharArrayBuffer;

    .line 77
    if-eqz p2, :cond_0

    .end local p2    # "formatter":Lorg/apache/http/message/LineFormatter;
    :goto_0
    iput-object p2, p0, Lorg/apache/http/impl/io/AbstractMessageWriter;->lineFormatter:Lorg/apache/http/message/LineFormatter;

    .line 78
    return-void

    .line 77
    .restart local p2    # "formatter":Lorg/apache/http/message/LineFormatter;
    :cond_0
    sget-object p2, Lorg/apache/http/message/BasicLineFormatter;->INSTANCE:Lorg/apache/http/message/BasicLineFormatter;

    goto :goto_0
.end method


.method public write(Lorg/apache/http/HttpMessage;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;
        }
    .end annotation

    .prologue
    .line 108
    .local p0, "this":Lorg/apache/http/impl/io/AbstractMessageWriter;, "Lorg/apache/http/impl/io/AbstractMessageWriter<TT;>;"
    .local p1, "message":Lorg/apache/http/HttpMessage;, "TT;"
    const-string v2, "HTTP message"

    invoke-static {p1, v2}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 109
    invoke-virtual {p0, p1}, Lorg/apache/http/impl/io/AbstractMessageWriter;->writeHeadLine(Lorg/apache/http/HttpMessage;)V

    .line 110
    invoke-interface {p1}, Lorg/apache/http/HttpMessage;->headerIterator()Lorg/apache/http/HeaderIterator;

    move-result-object v1

    .local v1, "it":Lorg/apache/http/HeaderIterator;
    :goto_0
    invoke-interface {v1}, Lorg/apache/http/HeaderIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 111
    invoke-interface {v1}, Lorg/apache/http/HeaderIterator;->nextHeader()Lorg/apache/http/Header;

    move-result-object v0

    .line 112
    .local v0, "header":Lorg/apache/http/Header;
    iget-object v2, p0, Lorg/apache/http/impl/io/AbstractMessageWriter;->sessionBuffer:Lorg/apache/http/io/SessionOutputBuffer;

    iget-object v3, p0, Lorg/apache/http/impl/io/AbstractMessageWriter;->lineFormatter:Lorg/apache/http/message/LineFormatter;

    iget-object v4, p0, Lorg/apache/http/impl/io/AbstractMessageWriter;->lineBuf:Lorg/apache/http/util/CharArrayBuffer;

    invoke-interface {v3, v4, v0}, Lorg/apache/http/message/LineFormatter;->formatHeader(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/Header;)Lorg/apache/http/util/CharArrayBuffer;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/http/io/SessionOutputBuffer;->writeLine(Lorg/apache/http/util/CharArrayBuffer;)V

    goto :goto_0

    .line 115
    .end local v0    # "header":Lorg/apache/http/Header;
    :cond_0
    iget-object v2, p0, Lorg/apache/http/impl/io/AbstractMessageWriter;->lineBuf:Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {v2}, Lorg/apache/http/util/CharArrayBuffer;->clear()V

    .line 116
    iget-object v2, p0, Lorg/apache/http/impl/io/AbstractMessageWriter;->sessionBuffer:Lorg/apache/http/io/SessionOutputBuffer;

    iget-object v3, p0, Lorg/apache/http/impl/io/AbstractMessageWriter;->lineBuf:Lorg/apache/http/util/CharArrayBuffer;

    invoke-interface {v2, v3}, Lorg/apache/http/io/SessionOutputBuffer;->writeLine(Lorg/apache/http/util/CharArrayBuffer;)V

    .line 117
    return-void
.end method

.method protected abstract writeHeadLine(Lorg/apache/http/HttpMessage;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
