.class Lcom/loc/bu;
.super Ljava/lang/Object;
.source "HttpUrlUtil.java"

.implements Ljavax/net/ssl/HostnameVerifier;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loc/bq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic a:Lcom/loc/bq;


.method constructor <init>(Lcom/loc/bq;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/bu;->a:Lcom/loc/bq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 2

    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    const-string v1, "*.amap.com"

    invoke-interface {v0, v1, p2}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v0

    return v0
.end method
