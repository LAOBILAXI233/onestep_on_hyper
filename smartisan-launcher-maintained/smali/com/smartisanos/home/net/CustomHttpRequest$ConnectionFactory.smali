.class public interface abstract Lcom/smartisanos/home/net/CustomHttpRequest$ConnectionFactory;
.super Ljava/lang/Object;
.source "CustomHttpRequest.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/home/net/CustomHttpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ConnectionFactory"
.end annotation


.field public static final DEFAULT:Lcom/smartisanos/home/net/CustomHttpRequest$ConnectionFactory;


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 387
    new-instance v0, Lcom/smartisanos/home/net/CustomHttpRequest$ConnectionFactory$1;

    invoke-direct {v0}, Lcom/smartisanos/home/net/CustomHttpRequest$ConnectionFactory$1;-><init>()V

    sput-object v0, Lcom/smartisanos/home/net/CustomHttpRequest$ConnectionFactory;->DEFAULT:Lcom/smartisanos/home/net/CustomHttpRequest$ConnectionFactory;

    return-void
.end method


.method public abstract create(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract create(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
