.class public Landroid/support/v4/net/TrafficStatsCompatApi24;
.super Ljava/lang/Object;
.source "TrafficStatsCompatApi24.java"


.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static tagDatagramSocket(Ljava/net/DatagramSocket;)V
    .locals 0
    .param p0, "socket"    # Ljava/net/DatagramSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 27
    invoke-static {p0}, Landroid/net/TrafficStats;->tagDatagramSocket(Ljava/net/DatagramSocket;)V

    .line 28
    return-void
.end method

.method public static untagDatagramSocket(Ljava/net/DatagramSocket;)V
    .locals 0
    .param p0, "socket"    # Ljava/net/DatagramSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 31
    invoke-static {p0}, Landroid/net/TrafficStats;->untagDatagramSocket(Ljava/net/DatagramSocket;)V

    .line 32
    return-void
.end method
