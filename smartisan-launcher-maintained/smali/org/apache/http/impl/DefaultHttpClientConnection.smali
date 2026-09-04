.class public Lorg/apache/http/impl/DefaultHttpClientConnection;
.super Lorg/apache/http/impl/SocketHttpClientConnection;
.source "DefaultHttpClientConnection.java"


.annotation runtime Ljava/lang/Deprecated;
.end annotation

.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lorg/apache/http/impl/SocketHttpClientConnection;-><init>()V

    .line 51
    return-void
.end method


.method public bind(Ljava/net/Socket;Lorg/apache/http/params/HttpParams;)V
    .locals 5
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "params"    # Lorg/apache/http/params/HttpParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 57
    const-string v3, "Socket"

    invoke-static {p1, v3}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 58
    const-string v3, "HTTP parameters"

    invoke-static {p2, v3}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 59
    invoke-virtual {p0}, Lorg/apache/http/impl/DefaultHttpClientConnection;->assertNotOpen()V

    .line 60
    const-string v3, "http.tcp.nodelay"

    invoke-interface {p2, v3, v1}, Lorg/apache/http/params/HttpParams;->getBooleanParameter(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {p1, v3}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 61
    const-string v3, "http.socket.timeout"

    invoke-interface {p2, v3, v2}, Lorg/apache/http/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 62
    const-string v3, "http.socket.keepalive"

    invoke-interface {p2, v3, v2}, Lorg/apache/http/params/HttpParams;->getBooleanParameter(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {p1, v3}, Ljava/net/Socket;->setKeepAlive(Z)V

    .line 63
    const-string v3, "http.socket.linger"

    const/4 v4, -0x1

    invoke-interface {p2, v3, v4}, Lorg/apache/http/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v0

    .line 64
    .local v0, "linger":I
    if-ltz v0, :cond_0

    .line 65
    if-lez v0, :cond_1

    :goto_0
    invoke-virtual {p1, v1, v0}, Ljava/net/Socket;->setSoLinger(ZI)V

    .line 67
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/apache/http/impl/SocketHttpClientConnection;->bind(Ljava/net/Socket;Lorg/apache/http/params/HttpParams;)V

    .line 68
    return-void

    :cond_1
    move v1, v2

    .line 65
    goto :goto_0
.end method
