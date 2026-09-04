.class public final Lorg/apache/http/util/NetUtils;
.super Ljava/lang/Object;
.source "NetUtils.java"


.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatAddress(Ljava/lang/StringBuilder;Ljava/net/SocketAddress;)V
    .locals 4
    .param p0, "buffer"    # Ljava/lang/StringBuilder;
    .param p1, "socketAddress"    # Ljava/net/SocketAddress;

    .prologue
    .line 42
    const-string v2, "Buffer"

    invoke-static {p0, v2}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 43
    const-string v2, "Socket address"

    invoke-static {p1, v2}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 44
    instance-of v2, p1, Ljava/net/InetSocketAddress;

    if-eqz v2, :cond_1

    move-object v1, p1

    .line 45
    check-cast v1, Ljava/net/InetSocketAddress;

    .line 46
    .local v1, "socketaddr":Ljava/net/InetSocketAddress;
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 47
    .local v0, "inetaddr":Ljava/net/InetAddress;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "inetaddr":Ljava/net/InetAddress;
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .end local v1    # "socketaddr":Ljava/net/InetSocketAddress;
    :goto_0
    return-void

    .line 50
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
