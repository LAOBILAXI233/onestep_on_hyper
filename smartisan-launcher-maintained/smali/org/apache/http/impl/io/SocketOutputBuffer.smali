.class public Lorg/apache/http/impl/io/SocketOutputBuffer;
.super Lorg/apache/http/impl/io/AbstractSessionOutputBuffer;
.source "SocketOutputBuffer.java"


.annotation runtime Ljava/lang/Deprecated;
.end annotation

.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


.method public constructor <init>(Ljava/net/Socket;ILorg/apache/http/params/HttpParams;)V
    .locals 2
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "buffersize"    # I
    .param p3, "params"    # Lorg/apache/http/params/HttpParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0}, Lorg/apache/http/impl/io/AbstractSessionOutputBuffer;-><init>()V

    .line 64
    const-string v1, "Socket"

    invoke-static {p1, v1}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 65
    move v0, p2

    .line 66
    .local v0, "n":I
    if-gez v0, :cond_0

    .line 67
    invoke-virtual {p1}, Ljava/net/Socket;->getSendBufferSize()I

    move-result v0

    .line 69
    :cond_0
    const/16 v1, 0x400

    if-ge v0, v1, :cond_1

    .line 70
    const/16 v0, 0x400

    .line 72
    :cond_1
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {p0, v1, v0, p3}, Lorg/apache/http/impl/io/SocketOutputBuffer;->init(Ljava/io/OutputStream;ILorg/apache/http/params/HttpParams;)V

    .line 73
    return-void
.end method
