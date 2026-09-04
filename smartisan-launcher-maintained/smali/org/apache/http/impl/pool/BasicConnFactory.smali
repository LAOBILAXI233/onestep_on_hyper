.class public Lorg/apache/http/impl/pool/BasicConnFactory;
.super Ljava/lang/Object;
.source "BasicConnFactory.java"

.implements Lorg/apache/http/pool/ConnFactory;


.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/http/pool/ConnFactory",
        "<",
        "Lorg/apache/http/HttpHost;",
        "Lorg/apache/http/HttpClientConnection;",
        ">;"
    }
.end annotation

.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


.field private final connFactory:Lorg/apache/http/HttpConnectionFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/http/HttpConnectionFactory",
            "<+",
            "Lorg/apache/http/HttpClientConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final connectTimeout:I

.field private final plainfactory:Ljavax/net/SocketFactory;

.field private final sconfig:Lorg/apache/http/config/SocketConfig;

.field private final sslfactory:Ljavax/net/ssl/SSLSocketFactory;


.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 130
    const/4 v3, 0x0

    sget-object v4, Lorg/apache/http/config/SocketConfig;->DEFAULT:Lorg/apache/http/config/SocketConfig;

    sget-object v5, Lorg/apache/http/config/ConnectionConfig;->DEFAULT:Lorg/apache/http/config/ConnectionConfig;

    move-object v0, p0

    move-object v2, v1

    invoke-direct/range {v0 .. v5}, Lorg/apache/http/impl/pool/BasicConnFactory;-><init>(Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;ILorg/apache/http/config/SocketConfig;Lorg/apache/http/config/ConnectionConfig;)V

    .line 131
    return-void
.end method

.method public constructor <init>(ILorg/apache/http/config/SocketConfig;Lorg/apache/http/config/ConnectionConfig;)V
    .locals 6
    .param p1, "connectTimeout"    # I
    .param p2, "sconfig"    # Lorg/apache/http/config/SocketConfig;
    .param p3, "cconfig"    # Lorg/apache/http/config/ConnectionConfig;

    .prologue
    const/4 v1, 0x0

    .line 116
    move-object v0, p0

    move-object v2, v1

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/http/impl/pool/BasicConnFactory;-><init>(Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;ILorg/apache/http/config/SocketConfig;Lorg/apache/http/config/ConnectionConfig;)V

    .line 117
    return-void
.end method

.method public constructor <init>(Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;ILorg/apache/http/config/SocketConfig;Lorg/apache/http/config/ConnectionConfig;)V
    .locals 1
    .param p1, "plainfactory"    # Ljavax/net/SocketFactory;
    .param p2, "sslfactory"    # Ljavax/net/ssl/SSLSocketFactory;
    .param p3, "connectTimeout"    # I
    .param p4, "sconfig"    # Lorg/apache/http/config/SocketConfig;
    .param p5, "cconfig"    # Lorg/apache/http/config/ConnectionConfig;

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lorg/apache/http/impl/pool/BasicConnFactory;->plainfactory:Ljavax/net/SocketFactory;

    .line 104
    iput-object p2, p0, Lorg/apache/http/impl/pool/BasicConnFactory;->sslfactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 105
    iput p3, p0, Lorg/apache/http/impl/pool/BasicConnFactory;->connectTimeout:I

    .line 106
    if-eqz p4, :cond_0

    .end local p4    # "sconfig":Lorg/apache/http/config/SocketConfig;
    :goto_0
    iput-object p4, p0, Lorg/apache/http/impl/pool/BasicConnFactory;->sconfig:Lorg/apache/http/config/SocketConfig;

    .line 107
    new-instance v0, Lorg/apache/http/impl/DefaultBHttpClientConnectionFactory;

    if-eqz p5, :cond_1

    .end local p5    # "cconfig":Lorg/apache/http/config/ConnectionConfig;
    :goto_1
    invoke-direct {v0, p5}, Lorg/apache/http/impl/DefaultBHttpClientConnectionFactory;-><init>(Lorg/apache/http/config/ConnectionConfig;)V

    iput-object v0, p0, Lorg/apache/http/impl/pool/BasicConnFactory;->connFactory:Lorg/apache/http/HttpConnectionFactory;

    .line 109
    return-void

    .line 106
    .restart local p4    # "sconfig":Lorg/apache/http/config/SocketConfig;
    .restart local p5    # "cconfig":Lorg/apache/http/config/ConnectionConfig;
    :cond_0
    sget-object p4, Lorg/apache/http/config/SocketConfig;->DEFAULT:Lorg/apache/http/config/SocketConfig;

    goto :goto_0

    .line 107
    .end local p4    # "sconfig":Lorg/apache/http/config/SocketConfig;
    :cond_1
    sget-object p5, Lorg/apache/http/config/ConnectionConfig;->DEFAULT:Lorg/apache/http/config/ConnectionConfig;

    goto :goto_1
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLSocketFactory;Lorg/apache/http/params/HttpParams;)V
    .locals 2
    .param p1, "sslfactory"    # Ljavax/net/ssl/SSLSocketFactory;
    .param p2, "params"    # Lorg/apache/http/params/HttpParams;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const-string v0, "HTTP params"

    invoke-static {p2, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/http/impl/pool/BasicConnFactory;->plainfactory:Ljavax/net/SocketFactory;

    .line 77
    iput-object p1, p0, Lorg/apache/http/impl/pool/BasicConnFactory;->sslfactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 78
    const-string v0, "http.connection.timeout"

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Lorg/apache/http/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/apache/http/impl/pool/BasicConnFactory;->connectTimeout:I

    .line 79
    invoke-static {p2}, Lorg/apache/http/params/HttpParamConfig;->getSocketConfig(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/config/SocketConfig;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/pool/BasicConnFactory;->sconfig:Lorg/apache/http/config/SocketConfig;

    .line 80
    new-instance v0, Lorg/apache/http/impl/DefaultBHttpClientConnectionFactory;

    invoke-static {p2}, Lorg/apache/http/params/HttpParamConfig;->getConnectionConfig(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/config/ConnectionConfig;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/impl/DefaultBHttpClientConnectionFactory;-><init>(Lorg/apache/http/config/ConnectionConfig;)V

    iput-object v0, p0, Lorg/apache/http/impl/pool/BasicConnFactory;->connFactory:Lorg/apache/http/HttpConnectionFactory;

    .line 82
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/config/SocketConfig;Lorg/apache/http/config/ConnectionConfig;)V
    .locals 6
    .param p1, "sconfig"    # Lorg/apache/http/config/SocketConfig;
    .param p2, "cconfig"    # Lorg/apache/http/config/ConnectionConfig;

    .prologue
    const/4 v1, 0x0

    .line 123
    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, v1

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/http/impl/pool/BasicConnFactory;-><init>(Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;ILorg/apache/http/config/SocketConfig;Lorg/apache/http/config/ConnectionConfig;)V

    .line 124
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/params/HttpParams;)V
    .locals 1
    .param p1, "params"    # Lorg/apache/http/params/HttpParams;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/apache/http/impl/pool/BasicConnFactory;-><init>(Ljavax/net/ssl/SSLSocketFactory;Lorg/apache/http/params/HttpParams;)V

    .line 91
    return-void
.end method


.method public bridge synthetic create(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    check-cast p1, Lorg/apache/http/HttpHost;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/http/impl/pool/BasicConnFactory;->create(Lorg/apache/http/HttpHost;)Lorg/apache/http/HttpClientConnection;

    move-result-object v0

    return-object v0
.end method

.method protected create(Ljava/net/Socket;Lorg/apache/http/params/HttpParams;)Lorg/apache/http/HttpClientConnection;
    .locals 4
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "params"    # Lorg/apache/http/params/HttpParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 138
    const-string v2, "http.socket.buffer-size"

    const/16 v3, 0x2000

    invoke-interface {p2, v2, v3}, Lorg/apache/http/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v0

    .line 139
    .local v0, "bufsize":I
    new-instance v1, Lorg/apache/http/impl/DefaultBHttpClientConnection;

    invoke-direct {v1, v0}, Lorg/apache/http/impl/DefaultBHttpClientConnection;-><init>(I)V

    .line 140
    .local v1, "conn":Lorg/apache/http/impl/DefaultBHttpClientConnection;
    invoke-virtual {v1, p1}, Lorg/apache/http/impl/DefaultBHttpClientConnection;->bind(Ljava/net/Socket;)V

    .line 141
    return-object v1
.end method

.method public create(Lorg/apache/http/HttpHost;)Lorg/apache/http/HttpClientConnection;
    .locals 8
    .param p1, "host"    # Lorg/apache/http/HttpHost;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 145
    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v3

    .line 146
    .local v3, "scheme":Ljava/lang/String;
    const/4 v4, 0x0

    .line 147
    .local v4, "socket":Ljava/net/Socket;
    const-string v5, "http"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 148
    iget-object v5, p0, Lorg/apache/http/impl/pool/BasicConnFactory;->plainfactory:Ljavax/net/SocketFactory;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lorg/apache/http/impl/pool/BasicConnFactory;->plainfactory:Ljavax/net/SocketFactory;

    invoke-virtual {v5}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v4

    .line 150
    :cond_0
    :goto_0
    const-string v5, "https"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 151
    iget-object v5, p0, Lorg/apache/http/impl/pool/BasicConnFactory;->sslfactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lorg/apache/http/impl/pool/BasicConnFactory;->sslfactory:Ljavax/net/ssl/SSLSocketFactory;

    :goto_1
    invoke-virtual {v5}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v4

    .line 154
    :cond_1
    if-nez v4, :cond_4

    .line 155
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " scheme is not supported"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 148
    :cond_2
    new-instance v4, Ljava/net/Socket;

    .end local v4    # "socket":Ljava/net/Socket;
    invoke-direct {v4}, Ljava/net/Socket;-><init>()V

    goto :goto_0

    .line 151
    .restart local v4    # "socket":Ljava/net/Socket;
    :cond_3
    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v5

    goto :goto_1

    .line 157
    :cond_4
    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "hostname":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v2

    .line 159
    .local v2, "port":I
    const/4 v5, -0x1

    if-ne v2, v5, :cond_5

    .line 160
    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "http"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 161
    const/16 v2, 0x50

    .line 166
    :cond_5
    :goto_2
    iget-object v5, p0, Lorg/apache/http/impl/pool/BasicConnFactory;->sconfig:Lorg/apache/http/config/SocketConfig;

    invoke-virtual {v5}, Lorg/apache/http/config/SocketConfig;->getSoTimeout()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 167
    new-instance v5, Ljava/net/InetSocketAddress;

    invoke-direct {v5, v0, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    iget v6, p0, Lorg/apache/http/impl/pool/BasicConnFactory;->connectTimeout:I

    invoke-virtual {v4, v5, v6}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 168
    iget-object v5, p0, Lorg/apache/http/impl/pool/BasicConnFactory;->sconfig:Lorg/apache/http/config/SocketConfig;

    invoke-virtual {v5}, Lorg/apache/http/config/SocketConfig;->isTcpNoDelay()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 169
    iget-object v5, p0, Lorg/apache/http/impl/pool/BasicConnFactory;->sconfig:Lorg/apache/http/config/SocketConfig;

    invoke-virtual {v5}, Lorg/apache/http/config/SocketConfig;->getSoLinger()I

    move-result v1

    .line 170
    .local v1, "linger":I
    if-ltz v1, :cond_6

    .line 171
    if-lez v1, :cond_8

    const/4 v5, 0x1

    :goto_3
    invoke-virtual {v4, v5, v1}, Ljava/net/Socket;->setSoLinger(ZI)V

    .line 173
    :cond_6
    iget-object v5, p0, Lorg/apache/http/impl/pool/BasicConnFactory;->sconfig:Lorg/apache/http/config/SocketConfig;

    invoke-virtual {v5}, Lorg/apache/http/config/SocketConfig;->isSoKeepAlive()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/net/Socket;->setKeepAlive(Z)V

    .line 174
    iget-object v5, p0, Lorg/apache/http/impl/pool/BasicConnFactory;->connFactory:Lorg/apache/http/HttpConnectionFactory;

    invoke-interface {v5, v4}, Lorg/apache/http/HttpConnectionFactory;->createConnection(Ljava/net/Socket;)Lorg/apache/http/HttpConnection;

    move-result-object v5

    check-cast v5, Lorg/apache/http/HttpClientConnection;

    return-object v5

    .line 162
    .end local v1    # "linger":I
    :cond_7
    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "https"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 163
    const/16 v2, 0x1bb

    goto :goto_2

    .line 171
    .restart local v1    # "linger":I
    :cond_8
    const/4 v5, 0x0

    goto :goto_3
.end method
