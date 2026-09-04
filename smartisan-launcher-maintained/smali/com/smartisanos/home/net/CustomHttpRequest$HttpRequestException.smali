.class public Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;
.super Ljava/lang/RuntimeException;
.source "CustomHttpRequest.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/home/net/CustomHttpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HttpRequestException"
.end annotation


.field private static final serialVersionUID:J = -0x103e55869b430237L


.method public constructor <init>(Ljava/io/IOException;)V
    .locals 0
    .param p1, "cause"    # Ljava/io/IOException;

    .prologue
    .line 670
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 671
    return-void
.end method


.method public getCause()Ljava/io/IOException;
    .locals 1

    .prologue
    .line 680
    invoke-super {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/io/IOException;

    return-object v0
.end method

.method public bridge synthetic getCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 660
    invoke-virtual {p0}, Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    return-object v0
.end method
