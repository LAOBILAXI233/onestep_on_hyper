.class public Lorg/apache/http/impl/io/HttpResponseWriter;
.super Lorg/apache/http/impl/io/AbstractMessageWriter;
.source "HttpResponseWriter.java"


.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/http/impl/io/AbstractMessageWriter",
        "<",
        "Lorg/apache/http/HttpResponse;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation

.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


.method public constructor <init>(Lorg/apache/http/io/SessionOutputBuffer;Lorg/apache/http/message/LineFormatter;Lorg/apache/http/params/HttpParams;)V
    .locals 0
    .param p1, "buffer"    # Lorg/apache/http/io/SessionOutputBuffer;
    .param p2, "formatter"    # Lorg/apache/http/message/LineFormatter;
    .param p3, "params"    # Lorg/apache/http/params/HttpParams;

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/http/impl/io/AbstractMessageWriter;-><init>(Lorg/apache/http/io/SessionOutputBuffer;Lorg/apache/http/message/LineFormatter;Lorg/apache/http/params/HttpParams;)V

    .line 54
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
    .line 46
    check-cast p1, Lorg/apache/http/HttpResponse;

    .end local p1    # "x0":Lorg/apache/http/HttpMessage;
    invoke-virtual {p0, p1}, Lorg/apache/http/impl/io/HttpResponseWriter;->writeHeadLine(Lorg/apache/http/HttpResponse;)V

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
    .line 58
    iget-object v0, p0, Lorg/apache/http/impl/io/HttpResponseWriter;->lineFormatter:Lorg/apache/http/message/LineFormatter;

    iget-object v1, p0, Lorg/apache/http/impl/io/HttpResponseWriter;->lineBuf:Lorg/apache/http/util/CharArrayBuffer;

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/http/message/LineFormatter;->formatStatusLine(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/StatusLine;)Lorg/apache/http/util/CharArrayBuffer;

    .line 59
    iget-object v0, p0, Lorg/apache/http/impl/io/HttpResponseWriter;->sessionBuffer:Lorg/apache/http/io/SessionOutputBuffer;

    iget-object v1, p0, Lorg/apache/http/impl/io/HttpResponseWriter;->lineBuf:Lorg/apache/http/util/CharArrayBuffer;

    invoke-interface {v0, v1}, Lorg/apache/http/io/SessionOutputBuffer;->writeLine(Lorg/apache/http/util/CharArrayBuffer;)V

    .line 60
    return-void
.end method
