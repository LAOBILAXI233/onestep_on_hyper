.class public Lorg/apache/http/impl/io/SocketInputBuffer;
.super Lorg/apache/http/impl/io/AbstractSessionInputBuffer;
.source "SocketInputBuffer.java"

.implements Lorg/apache/http/io/EofSensor;


.annotation runtime Ljava/lang/Deprecated;
.end annotation

.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


.field private eof:Z

.field private final socket:Ljava/net/Socket;


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
    .line 68
    invoke-direct {p0}, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;-><init>()V

    .line 69
    const-string v1, "Socket"

    invoke-static {p1, v1}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 70
    iput-object p1, p0, Lorg/apache/http/impl/io/SocketInputBuffer;->socket:Ljava/net/Socket;

    .line 71
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/http/impl/io/SocketInputBuffer;->eof:Z

    .line 72
    move v0, p2

    .line 73
    .local v0, "n":I
    if-gez v0, :cond_0

    .line 74
    invoke-virtual {p1}, Ljava/net/Socket;->getReceiveBufferSize()I

    move-result v0

    .line 76
    :cond_0
    const/16 v1, 0x400

    if-ge v0, v1, :cond_1

    .line 77
    const/16 v0, 0x400

    .line 79
    :cond_1
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {p0, v1, v0, p3}, Lorg/apache/http/impl/io/SocketInputBuffer;->init(Ljava/io/InputStream;ILorg/apache/http/params/HttpParams;)V

    .line 80
    return-void
.end method


.method protected fillBuffer()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    invoke-super {p0}, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->fillBuffer()I

    move-result v0

    .line 85
    .local v0, "i":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lorg/apache/http/impl/io/SocketInputBuffer;->eof:Z

    .line 86
    return v0

    .line 85
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isDataAvailable(I)Z
    .locals 4
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    invoke-virtual {p0}, Lorg/apache/http/impl/io/SocketInputBuffer;->hasBufferedData()Z

    move-result v1

    .line 91
    .local v1, "result":Z
    if-nez v1, :cond_0

    .line 92
    iget-object v2, p0, Lorg/apache/http/impl/io/SocketInputBuffer;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getSoTimeout()I

    move-result v0

    .line 94
    .local v0, "oldtimeout":I
    :try_start_0
    iget-object v2, p0, Lorg/apache/http/impl/io/SocketInputBuffer;->socket:Ljava/net/Socket;

    invoke-virtual {v2, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 95
    invoke-virtual {p0}, Lorg/apache/http/impl/io/SocketInputBuffer;->fillBuffer()I

    .line 96
    invoke-virtual {p0}, Lorg/apache/http/impl/io/SocketInputBuffer;->hasBufferedData()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 98
    iget-object v2, p0, Lorg/apache/http/impl/io/SocketInputBuffer;->socket:Ljava/net/Socket;

    invoke-virtual {v2, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 101
    .end local v0    # "oldtimeout":I
    :cond_0
    return v1

    .line 98
    .restart local v0    # "oldtimeout":I
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/apache/http/impl/io/SocketInputBuffer;->socket:Ljava/net/Socket;

    invoke-virtual {v3, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    throw v2
.end method

.method public isEof()Z
    .locals 1

    .prologue
    .line 105
    iget-boolean v0, p0, Lorg/apache/http/impl/io/SocketInputBuffer;->eof:Z

    return v0
.end method
