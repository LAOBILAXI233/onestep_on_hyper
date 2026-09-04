.class public Lorg/apache/http/impl/io/DefaultHttpResponseWriter;
.super Lorg/apache/http/impl/io/AbstractMessageWriter;
.source "DefaultHttpResponseWriter.java"


.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/http/impl/io/AbstractMessageWriter",
        "<",
        "Lorg/apache/http/HttpResponse;",
        ">;"
    }
.end annotation

.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


.method public constructor <init>(Lorg/apache/http/io/SessionOutputBuffer;)V
    .locals 1
    .param p1, "buffer"    # Lorg/apache/http/io/SessionOutputBuffer;

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/http/impl/io/AbstractMessageWriter;-><init>(Lorg/apache/http/io/SessionOutputBuffer;Lorg/apache/http/message/LineFormatter;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/io/SessionOutputBuffer;Lorg/apache/http/message/LineFormatter;)V
    .locals 0
    .param p1, "buffer"    # Lorg/apache/http/io/SessionOutputBuffer;
    .param p2, "formatter"    # Lorg/apache/http/message/LineFormatter;

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/io/AbstractMessageWriter;-><init>(Lorg/apache/http/io/SessionOutputBuffer;Lorg/apache/http/message/LineFormatter;)V

    .line 57
    return-void
.end method


.method protected bridge synthetic writeHeadLine(Lorg/apache/http/HttpMessage;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/http/HttpMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    check-cast p1, Lorg/apache/http/HttpResponse;

    .end local p1    # "x0":Lorg/apache/http/HttpMessage;
    invoke-virtual {p0, p1}, Lorg/apache/http/impl/io/DefaultHttpResponseWriter;->writeHeadLine(Lorg/apache/http/HttpResponse;)V

    return-void
.end method

.method protected writeHeadLine(Lorg/apache/http/HttpResponse;)V
    .locals 3
    .param p1, "message"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lorg/apache/http/impl/io/DefaultHttpResponseWriter;->lineFormatter:Lorg/apache/http/message/LineFormatter;

    iget-object v1, p0, Lorg/apache/http/impl/io/DefaultHttpResponseWriter;->lineBuf:Lorg/apache/http/util/CharArrayBuffer;

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/http/message/LineFormatter;->formatStatusLine(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/StatusLine;)Lorg/apache/http/util/CharArrayBuffer;

    .line 66
    iget-object v0, p0, Lorg/apache/http/impl/io/DefaultHttpResponseWriter;->sessionBuffer:Lorg/apache/http/io/SessionOutputBuffer;

    iget-object v1, p0, Lorg/apache/http/impl/io/DefaultHttpResponseWriter;->lineBuf:Lorg/apache/http/util/CharArrayBuffer;

    invoke-interface {v0, v1}, Lorg/apache/http/io/SessionOutputBuffer;->writeLine(Lorg/apache/http/util/CharArrayBuffer;)V

    .line 67
    return-void
.end method
