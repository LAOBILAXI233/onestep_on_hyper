.class Lcom/tendcloud/tenddata/ba$b;
.super Ljava/lang/Object;

.implements Ljavax/net/ssl/X509TrustManager;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tendcloud/tenddata/ba;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


.field a:Ljava/security/cert/X509Certificate;


.method constructor <init>(Ljava/security/cert/X509Certificate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tendcloud/tenddata/ba$b;->a:Ljava/security/cert/X509Certificate;

    return-void
.end method


.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 4

    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    iget-object v3, p0, Lcom/tendcloud/tenddata/ba$b;->a:Ljava/security/cert/X509Certificate;

    invoke-virtual {v2, v3}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "no trusted cert"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
