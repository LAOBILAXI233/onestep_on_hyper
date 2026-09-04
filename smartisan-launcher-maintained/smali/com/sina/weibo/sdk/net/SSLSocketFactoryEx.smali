.class public Lcom/sina/weibo/sdk/net/SSLSocketFactoryEx;
.super Lorg/apache/http/conn/ssl/SSLSocketFactory;
.source "SSLSocketFactoryEx.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sina/weibo/sdk/net/SSLSocketFactoryEx$KeyStoresTrustManagerEX;
    }
.end annotation


.field private static final TAG:Ljava/lang/String;


.field sslContext:Ljavax/net/ssl/SSLContext;


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/sina/weibo/sdk/net/SSLSocketFactoryEx;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sina/weibo/sdk/net/SSLSocketFactoryEx;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/security/KeyStore;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyManagementException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 31
    invoke-direct {p0, p1}, Lorg/apache/http/conn/ssl/SSLSocketFactory;-><init>(Ljava/security/KeyStore;)V

    .line 26
    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/net/SSLSocketFactoryEx;->sslContext:Ljavax/net/ssl/SSLContext;

    .line 32
    iget-object v0, p0, Lcom/sina/weibo/sdk/net/SSLSocketFactoryEx;->sslContext:Ljavax/net/ssl/SSLContext;

    new-array v1, v3, [Ljavax/net/ssl/TrustManager;

    new-instance v2, Lcom/sina/weibo/sdk/net/SSLSocketFactoryEx$KeyStoresTrustManagerEX;

    new-array v3, v3, [Ljava/security/KeyStore;

    aput-object p1, v3, v4

    invoke-direct {v2, v3}, Lcom/sina/weibo/sdk/net/SSLSocketFactoryEx$KeyStoresTrustManagerEX;-><init>([Ljava/security/KeyStore;)V

    aput-object v2, v1, v4

    invoke-virtual {v0, v5, v1, v5}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 33
    return-void
.end method


.method public createSocket()Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sina/weibo/sdk/net/SSLSocketFactoryEx;->sslContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sina/weibo/sdk/net/SSLSocketFactoryEx;->sslContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method
