.class final Lcom/smartisanos/home/net/CustomHttpRequest$1;
.super Ljava/lang/Object;
.source "CustomHttpRequest.java"

.implements Ljavax/net/ssl/X509TrustManager;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/home/net/CustomHttpRequest;->getTrustedFactory()Ljavax/net/ssl/SSLSocketFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


.method constructor <init>()V
    .locals 0

    .prologue
    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;

    .prologue
    .line 281
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;

    .prologue
    .line 285
    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 276
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    return-object v0
.end method
