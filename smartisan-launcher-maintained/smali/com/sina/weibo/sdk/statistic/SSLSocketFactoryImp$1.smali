.class Lcom/sina/weibo/sdk/statistic/SSLSocketFactoryImp$1;
.super Ljava/lang/Object;
.source "SSLSocketFactoryImp.java"

.implements Ljavax/net/ssl/X509TrustManager;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sina/weibo/sdk/statistic/SSLSocketFactoryImp;-><init>(Ljava/security/KeyStore;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/sina/weibo/sdk/statistic/SSLSocketFactoryImp;


.method constructor <init>(Lcom/sina/weibo/sdk/statistic/SSLSocketFactoryImp;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sina/weibo/sdk/statistic/SSLSocketFactoryImp$1;->this$0:Lcom/sina/weibo/sdk/statistic/SSLSocketFactoryImp;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 42
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
    .line 47
    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    return-object v0
.end method
