.class public Lorg/apache/http/impl/SocketHttpServerConnection;
.super Lorg/apache/http/impl/AbstractHttpServerConnection;
.source "SocketHttpServerConnection.java"

.implements Lorg/apache/http/HttpInetConnection;


.annotation runtime Ljava/lang/Deprecated;
.end annotation


.field private volatile open:Z

.field private volatile socket:Ljava/net/Socket;


.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lorg/apache/http/impl/AbstractHttpServerConnection;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/http/impl/SocketHttpServerConnection;->socket:Ljava/net/Socket;

    .line 56
    return-void
.end method

.method private static formatAddress(Ljava/lang/StringBuilder;Ljava/net/SocketAddress;)V
    .locals 3
    .param p0, "buffer"    # Ljava/lang/StringBuilder;
    .param p1, "socketAddress"    # Ljava/net/SocketAddress;

    .prologue
    .line 243
    instance-of v1, p1, Ljava/net/InetSocketAddress;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 244
    check-cast v0, Ljava/net/InetSocketAddress;

    .line 245
    .local v0, "addr":Ljava/net/InetSocketAddress;
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 252
    .end local v0    # "addr":Ljava/net/InetSocketAddress;
    :goto_1
    return-void

    .line 245
    .restart local v0    # "addr":Ljava/net/InetSocketAddress;
    :cond_0
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    goto :goto_0

    .line 250
    .end local v0    # "addr":Ljava/net/InetSocketAddress;
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method


.method protected assertNotOpen()V
    .locals 2

    .prologue
    .line 59
    iget-boolean v0, p0, Lorg/apache/http/impl/SocketHttpServerConnection;->open:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Connection is already open"

    invoke-static {v0, v1}, Lorg/apache/http/util/Asserts;->check(ZLjava/lang/String;)V

    .line 60
    return-void

    .line 59
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected assertOpen()V
    .locals 2

    .prologue
    .line 64
    iget-boolean v0, p0, Lorg/apache/http/impl/SocketHttpServerConnection;->open:Z

    const-string v1, "Connection is not open"

    invoke-static {v0, v1}, Lorg/apache/http/util/Asserts;->check(ZLjava/lang/String;)V

    .line 65
    return-void
.end method

.method protected bind(Ljava/net/Socket;Lorg/apache/http/params/HttpParams;)V
    .locals 3
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "params"    # Lorg/apache/http/params/HttpParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 130
    const-string v1, "Socket"

    invoke-static {p1, v1}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 131
    const-string v1, "HTTP parameters"

    invoke-static {p2, v1}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 132
    iput-object p1, p0, Lorg/apache/http/impl/SocketHttpServerConnection;->socket:Ljava/net/Socket;

    .line 134
    const-string v1, "http.socket.buffer-size"

    const/4 v2, -0x1

    invoke-interface {p2, v1, v2}, Lorg/apache/http/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v0

    .line 135
    .local v0, "buffersize":I
    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/http/impl/SocketHttpServerConnection;->createSessionInputBuffer(Ljava/net/Socket;ILorg/apache/http/params/HttpParams;)Lorg/apache/http/io/SessionInputBuffer;

    move-result-object v1

    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/http/impl/SocketHttpServerConnection;->createSessionOutputBuffer(Ljava/net/Socket;ILorg/apache/http/params/HttpParams;)Lorg/apache/http/io/SessionOutputBuffer;

    move-result-object v2

    invoke-virtual {p0, v1, v2, p2}, Lorg/apache/http/impl/SocketHttpServerConnection;->init(Lorg/apache/http/io/SessionInputBuffer;Lorg/apache/http/io/SessionOutputBuffer;Lorg/apache/http/params/HttpParams;)V

    .line 140
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/http/impl/SocketHttpServerConnection;->open:Z

    .line 141
    return-void
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 217
    iget-boolean v1, p0, Lorg/apache/http/impl/SocketHttpServerConnection;->open:Z

    if-nez v1, :cond_0

    .line 240
    :goto_0
    return-void

    .line 220
    :cond_0
    iput-boolean v2, p0, Lorg/apache/http/impl/SocketHttpServerConnection;->open:Z

    .line 221
    iput-boolean v2, p0, Lorg/apache/http/impl/SocketHttpServerConnection;->open:Z

    .line 222
    iget-object v0, p0, Lorg/apache/http/impl/SocketHttpServerConnection;->socket:Ljava/net/Socket;

    .line 224
    .local v0, "sock":Ljava/net/Socket;
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/http/impl/SocketHttpServerConnection;->doFlush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    :try_start_1
    invoke-virtual {v0}, Ljava/net/Socket;->shutdownOutput()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 231
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/net/Socket;->shutdownInput()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 238
    :goto_2
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    throw v1

    .line 228
    :catch_0
    move-exception v1

    goto :goto_1

    .line 232
    :catch_1
    move-exception v1

    goto :goto_2

    .line 234
    :catch_2
    move-exception v1

    goto :goto_2
.end method

.method protected createSessionInputBuffer(Ljava/net/Socket;ILorg/apache/http/params/HttpParams;)Lorg/apache/http/io/SessionInputBuffer;
    .locals 1
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "buffersize"    # I
    .param p3, "params"    # Lorg/apache/http/params/HttpParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    new-instance v0, Lorg/apache/http/impl/io/SocketInputBuffer;

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/http/impl/io/SocketInputBuffer;-><init>(Ljava/net/Socket;ILorg/apache/http/params/HttpParams;)V

    return-object v0
.end method

.method protected createSessionOutputBuffer(Ljava/net/Socket;ILorg/apache/http/params/HttpParams;)Lorg/apache/http/io/SessionOutputBuffer;
    .locals 1
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "buffersize"    # I
    .param p3, "params"    # Lorg/apache/http/params/HttpParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    new-instance v0, Lorg/apache/http/impl/io/SocketOutputBuffer;

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/http/impl/io/SocketOutputBuffer;-><init>(Ljava/net/Socket;ILorg/apache/http/params/HttpParams;)V

    return-object v0
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lorg/apache/http/impl/SocketHttpServerConnection;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lorg/apache/http/impl/SocketHttpServerConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 155
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLocalPort()I
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lorg/apache/http/impl/SocketHttpServerConnection;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lorg/apache/http/impl/SocketHttpServerConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalPort()I

    move-result v0

    .line 163
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getRemoteAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lorg/apache/http/impl/SocketHttpServerConnection;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lorg/apache/http/impl/SocketHttpServerConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 171
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRemotePort()I
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lorg/apache/http/impl/SocketHttpServerConnection;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lorg/apache/http/impl/SocketHttpServerConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getPort()I

    move-result v0

    .line 179
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method protected getSocket()Ljava/net/Socket;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lorg/apache/http/impl/SocketHttpServerConnection;->socket:Ljava/net/Socket;

    return-object v0
.end method

.method public getSocketTimeout()I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 197
    iget-object v2, p0, Lorg/apache/http/impl/SocketHttpServerConnection;->socket:Ljava/net/Socket;

    if-eqz v2, :cond_0

    .line 199
    :try_start_0
    iget-object v2, p0, Lorg/apache/http/impl/SocketHttpServerConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getSoTimeout()I
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 204
    :cond_0
    :goto_0
    return v1

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, "ignore":Ljava/net/SocketException;
    goto :goto_0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 148
    iget-boolean v0, p0, Lorg/apache/http/impl/SocketHttpServerConnection;->open:Z

    return v0
.end method

.method public setSocketTimeout(I)V
    .locals 1
    .param p1, "timeout"    # I

    .prologue
    .line 184
    invoke-virtual {p0}, Lorg/apache/http/impl/SocketHttpServerConnection;->assertOpen()V

    .line 185
    iget-object v0, p0, Lorg/apache/http/impl/SocketHttpServerConnection;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 187
    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/SocketHttpServerConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 188
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public shutdown()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 209
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/http/impl/SocketHttpServerConnection;->open:Z

    .line 210
    iget-object v0, p0, Lorg/apache/http/impl/SocketHttpServerConnection;->socket:Ljava/net/Socket;

    .line 211
    .local v0, "tmpsocket":Ljava/net/Socket;
    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 214
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 256
    iget-object v3, p0, Lorg/apache/http/impl/SocketHttpServerConnection;->socket:Ljava/net/Socket;

    if-eqz v3, :cond_1

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 258
    .local v0, "buffer":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lorg/apache/http/impl/SocketHttpServerConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v2

    .line 259
    .local v2, "remoteAddress":Ljava/net/SocketAddress;
    iget-object v3, p0, Lorg/apache/http/impl/SocketHttpServerConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v1

    .line 260
    .local v1, "localAddress":Ljava/net/SocketAddress;
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 261
    invoke-static {v0, v1}, Lorg/apache/http/impl/SocketHttpServerConnection;->formatAddress(Ljava/lang/StringBuilder;Ljava/net/SocketAddress;)V

    .line 262
    const-string v3, "<->"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    invoke-static {v0, v2}, Lorg/apache/http/impl/SocketHttpServerConnection;->formatAddress(Ljava/lang/StringBuilder;Ljava/net/SocketAddress;)V

    .line 265
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 267
    .end local v0    # "buffer":Ljava/lang/StringBuilder;
    .end local v1    # "localAddress":Ljava/net/SocketAddress;
    .end local v2    # "remoteAddress":Ljava/net/SocketAddress;
    :goto_0
    return-object v3

    :cond_1
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method
