.class public Lcom/tendcloud/tenddata/ba;
.super Ljava/lang/Object;


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tendcloud/tenddata/ba$b;,
        Lcom/tendcloud/tenddata/ba$a;
    }
.end annotation


.field private static final e:I = 0xea60

.field private static final f:I = 0xea60


.field final a:Ljava/lang/String;

.field final b:I

.field c:Lorg/apache/http/client/HttpClient;

.field d:Ljava/lang/String;


.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    invoke-static {p1}, Lcom/tendcloud/tenddata/ba;->h(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1, p3}, Lcom/tendcloud/tenddata/ba;-><init>(Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    invoke-static {p1}, Lcom/tendcloud/tenddata/ba;->h(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/tendcloud/tenddata/ba;-><init>(Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/tendcloud/tenddata/ba;->a:Ljava/lang/String;

    iput p4, p0, Lcom/tendcloud/tenddata/ba;->b:I

    iput-object p3, p0, Lcom/tendcloud/tenddata/ba;->d:Ljava/lang/String;

    :try_start_0
    new-instance v0, Lcom/tendcloud/tenddata/ba$a;

    invoke-direct {v0, p1}, Lcom/tendcloud/tenddata/ba$a;-><init>(Ljava/security/cert/X509Certificate;)V

    sget-object v1, Lorg/apache/http/conn/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    new-instance v1, Lorg/apache/http/conn/scheme/Scheme;

    const-string v2, "https"

    invoke-direct {v1, v2, v0, p4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-direct {p0, p2}, Lcom/tendcloud/tenddata/ba;->g(Ljava/lang/String;)Lorg/apache/http/client/HttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/tendcloud/tenddata/ba;->c:Lorg/apache/http/client/HttpClient;

    iget-object v0, p0, Lcom/tendcloud/tenddata/ba;->c:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    invoke-static {}, Lcom/tendcloud/tenddata/bb;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tendcloud/tenddata/ba;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tendcloud/tenddata/ba;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private g(Ljava/lang/String;)Lorg/apache/http/client/HttpClient;
    .locals 4

    const v1, 0xea60

    const/4 v3, 0x1

    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    invoke-static {v0, v3}, Lorg/apache/http/params/HttpConnectionParams;->setTcpNoDelay(Lorg/apache/http/params/HttpParams;Z)V

    new-instance v1, Lorg/apache/http/ProtocolVersion;

    const-string v2, "HTTP"

    invoke-direct {v1, v2, v3, v3}, Lorg/apache/http/ProtocolVersion;-><init>(Ljava/lang/String;II)V

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    new-instance v0, Lcom/tendcloud/tenddata/aj;

    invoke-direct {v0, p0, p1}, Lcom/tendcloud/tenddata/aj;-><init>(Lcom/tendcloud/tenddata/ba;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    return-object v1
.end method

.method private static h(Ljava/lang/String;)Ljava/security/cert/X509Certificate;
    .locals 3

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "X.509"

    invoke-static {v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    throw v0
.end method


.method public a(Ljava/lang/String;[B)I
    .locals 2

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const-string v1, "https"

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/tendcloud/tenddata/ba;->b(Ljava/lang/String;[B)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    const/16 v0, 0x259

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    :try_start_0
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {p0, p1}, Lcom/tendcloud/tenddata/ba;->f(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    invoke-virtual {p0}, Lcom/tendcloud/tenddata/ba;->a()Lorg/apache/http/client/HttpClient;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :try_start_1
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_1

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x40

    new-array v3, v3, [C

    :goto_0
    invoke-virtual {v2, v3}, Ljava/io/Reader;->read([C)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V

    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    :goto_1
    const/4 v0, 0x0

    :goto_2
    return-object v0

    :cond_0
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    :try_start_4
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V

    goto :goto_2

    :cond_1
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;
    .locals 7

    :try_start_0
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {p0, p1}, Lcom/tendcloud/tenddata/ba;->f(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    invoke-virtual {p0}, Lcom/tendcloud/tenddata/ba;->a()Lorg/apache/http/client/HttpClient;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :try_start_1
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_1

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    const/16 v4, 0x1000

    :try_start_2
    new-array v4, v4, [B

    :goto_0
    invoke-virtual {v0, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v6, v5}, Ljava/io/FileOutputStream;->write([BII)V

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V

    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    :goto_1
    const/4 v0, 0x0

    :goto_2
    return-object v0

    :cond_0
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/an;->a([B)Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v0

    :try_start_6
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V

    goto :goto_2

    :cond_1
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_1
.end method

.method public a()Lorg/apache/http/client/HttpClient;
    .locals 1

    iget-object v0, p0, Lcom/tendcloud/tenddata/ba;->c:Lorg/apache/http/client/HttpClient;

    return-object v0
.end method

.method public b(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/tendcloud/tenddata/ba;->b(Ljava/lang/String;[B)I

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;[B)I
    .locals 2

    :try_start_0
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {p0, p1}, Lcom/tendcloud/tenddata/ba;->f(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/net/URI;)V

    if-eqz p2, :cond_0

    array-length v1, p2

    if-lez v1, :cond_0

    new-instance v1, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v1, p2}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    :cond_0
    invoke-virtual {p0}, Lcom/tendcloud/tenddata/ba;->a()Lorg/apache/http/client/HttpClient;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/16 v0, 0x258

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/tendcloud/tenddata/ba;->a(Ljava/lang/String;[B)I

    move-result v0

    return v0
.end method

.method public d(Ljava/lang/String;)I
    .locals 2

    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/tendcloud/tenddata/ba;->a()Lorg/apache/http/client/HttpClient;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/16 v0, 0x258

    goto :goto_0
.end method

.method protected e(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tendcloud/tenddata/ba;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected f(Ljava/lang/String;)Ljava/net/URI;
    .locals 5

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tendcloud/tenddata/bb;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tendcloud/tenddata/ba;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v4

    invoke-virtual {v0}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v3, v4, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v0

    goto :goto_0
.end method
