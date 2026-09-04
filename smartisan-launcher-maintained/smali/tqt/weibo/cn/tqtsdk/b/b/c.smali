.class public final Ltqt/weibo/cn/tqtsdk/b/b/c;
.super Ljava/lang/Object;
.source "FakeX509TrustManager.java"

.implements Ljavax/net/ssl/X509TrustManager;


.field private static final a:[Ljava/security/cert/X509Certificate;

.field private static final b:[Ljavax/net/ssl/TrustManager;


.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 18
    new-array v0, v2, [Ljava/security/cert/X509Certificate;

    sput-object v0, Ltqt/weibo/cn/tqtsdk/b/b/c;->a:[Ljava/security/cert/X509Certificate;

    .line 19
    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    new-instance v1, Ltqt/weibo/cn/tqtsdk/b/b/c;

    invoke-direct {v1}, Ltqt/weibo/cn/tqtsdk/b/b/c;-><init>()V

    aput-object v1, v0, v2

    sput-object v0, Ltqt/weibo/cn/tqtsdk/b/b/c;->b:[Ljavax/net/ssl/TrustManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public static final a()V
    .locals 4

    .prologue
    .line 26
    new-instance v0, Ltqt/weibo/cn/tqtsdk/b/b/c$1;

    invoke-direct {v0}, Ltqt/weibo/cn/tqtsdk/b/b/c$1;-><init>()V

    invoke-static {v0}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 37
    :try_start_0
    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 38
    const/4 v1, 0x0

    sget-object v2, Ltqt/weibo/cn/tqtsdk/b/b/c;->b:[Ljavax/net/ssl/TrustManager;

    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 40
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    .line 39
    invoke-static {v0}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_1

    .line 46
    :goto_0
    return-void

    .line 41
    :catch_0
    move-exception v0

    .line 42
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0

    .line 43
    :catch_1
    move-exception v0

    .line 44
    invoke-virtual {v0}, Ljava/security/KeyManagementException;->printStackTrace()V

    goto :goto_0
.end method


.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 51
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 56
    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Ltqt/weibo/cn/tqtsdk/b/b/c;->a:[Ljava/security/cert/X509Certificate;

    return-object v0
.end method
