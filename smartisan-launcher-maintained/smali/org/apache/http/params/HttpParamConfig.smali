.class public final Lorg/apache/http/params/HttpParamConfig;
.super Ljava/lang/Object;
.source "HttpParamConfig.java"


.annotation runtime Ljava/lang/Deprecated;
.end annotation


.method private constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method public static getConnectionConfig(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/config/ConnectionConfig;
    .locals 4
    .param p0, "params"    # Lorg/apache/http/params/HttpParams;

    .prologue
    .line 66
    invoke-static {p0}, Lorg/apache/http/params/HttpParamConfig;->getMessageConstraints(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/config/MessageConstraints;

    move-result-object v1

    .line 67
    .local v1, "messageConstraints":Lorg/apache/http/config/MessageConstraints;
    const-string v2, "http.protocol.element-charset"

    invoke-interface {p0, v2}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 68
    .local v0, "csname":Ljava/lang/String;
    invoke-static {}, Lorg/apache/http/config/ConnectionConfig;->custom()Lorg/apache/http/config/ConnectionConfig$Builder;

    move-result-object v3

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    :goto_0
    invoke-virtual {v3, v2}, Lorg/apache/http/config/ConnectionConfig$Builder;->setCharset(Ljava/nio/charset/Charset;)Lorg/apache/http/config/ConnectionConfig$Builder;

    move-result-object v3

    const-string v2, "http.malformed.input.action"

    invoke-interface {p0, v2}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v3, v2}, Lorg/apache/http/config/ConnectionConfig$Builder;->setMalformedInputAction(Ljava/nio/charset/CodingErrorAction;)Lorg/apache/http/config/ConnectionConfig$Builder;

    move-result-object v3

    const-string v2, "http.unmappable.input.action"

    invoke-interface {p0, v2}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v3, v2}, Lorg/apache/http/config/ConnectionConfig$Builder;->setMalformedInputAction(Ljava/nio/charset/CodingErrorAction;)Lorg/apache/http/config/ConnectionConfig$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/apache/http/config/ConnectionConfig$Builder;->setMessageConstraints(Lorg/apache/http/config/MessageConstraints;)Lorg/apache/http/config/ConnectionConfig$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/http/config/ConnectionConfig$Builder;->build()Lorg/apache/http/config/ConnectionConfig;

    move-result-object v2

    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getMessageConstraints(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/config/MessageConstraints;
    .locals 3
    .param p0, "params"    # Lorg/apache/http/params/HttpParams;

    .prologue
    const/4 v2, -0x1

    .line 59
    invoke-static {}, Lorg/apache/http/config/MessageConstraints;->custom()Lorg/apache/http/config/MessageConstraints$Builder;

    move-result-object v0

    const-string v1, "http.connection.max-header-count"

    invoke-interface {p0, v1, v2}, Lorg/apache/http/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/http/config/MessageConstraints$Builder;->setMaxHeaderCount(I)Lorg/apache/http/config/MessageConstraints$Builder;

    move-result-object v0

    const-string v1, "http.connection.max-line-length"

    invoke-interface {p0, v1, v2}, Lorg/apache/http/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/http/config/MessageConstraints$Builder;->setMaxLineLength(I)Lorg/apache/http/config/MessageConstraints$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/config/MessageConstraints$Builder;->build()Lorg/apache/http/config/MessageConstraints;

    move-result-object v0

    return-object v0
.end method

.method public static getSocketConfig(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/config/SocketConfig;
    .locals 3
    .param p0, "params"    # Lorg/apache/http/params/HttpParams;

    .prologue
    const/4 v2, 0x0

    .line 49
    invoke-static {}, Lorg/apache/http/config/SocketConfig;->custom()Lorg/apache/http/config/SocketConfig$Builder;

    move-result-object v0

    const-string v1, "http.socket.timeout"

    invoke-interface {p0, v1, v2}, Lorg/apache/http/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/http/config/SocketConfig$Builder;->setSoTimeout(I)Lorg/apache/http/config/SocketConfig$Builder;

    move-result-object v0

    const-string v1, "http.socket.reuseaddr"

    invoke-interface {p0, v1, v2}, Lorg/apache/http/params/HttpParams;->getBooleanParameter(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/http/config/SocketConfig$Builder;->setSoReuseAddress(Z)Lorg/apache/http/config/SocketConfig$Builder;

    move-result-object v0

    const-string v1, "http.socket.keepalive"

    invoke-interface {p0, v1, v2}, Lorg/apache/http/params/HttpParams;->getBooleanParameter(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/http/config/SocketConfig$Builder;->setSoKeepAlive(Z)Lorg/apache/http/config/SocketConfig$Builder;

    move-result-object v0

    const-string v1, "http.socket.linger"

    const/4 v2, -0x1

    invoke-interface {p0, v1, v2}, Lorg/apache/http/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/http/config/SocketConfig$Builder;->setSoLinger(I)Lorg/apache/http/config/SocketConfig$Builder;

    move-result-object v0

    const-string v1, "http.tcp.nodelay"

    const/4 v2, 0x1

    invoke-interface {p0, v1, v2}, Lorg/apache/http/params/HttpParams;->getBooleanParameter(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/http/config/SocketConfig$Builder;->setTcpNoDelay(Z)Lorg/apache/http/config/SocketConfig$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/config/SocketConfig$Builder;->build()Lorg/apache/http/config/SocketConfig;

    move-result-object v0

    return-object v0
.end method
