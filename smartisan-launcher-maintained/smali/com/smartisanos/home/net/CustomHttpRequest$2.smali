.class final Lcom/smartisanos/home/net/CustomHttpRequest$2;
.super Ljava/lang/Object;
.source "CustomHttpRequest.java"

.implements Ljavax/net/ssl/HostnameVerifier;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/home/net/CustomHttpRequest;->getTrustedVerifier()Ljavax/net/ssl/HostnameVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


.method constructor <init>()V
    .locals 0

    .prologue
    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 1
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "session"    # Ljavax/net/ssl/SSLSession;

    .prologue
    .line 307
    const/4 v0, 0x1

    return v0
.end method
