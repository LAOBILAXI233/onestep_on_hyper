.class public Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;
.super Lorg/apache/http/message/BasicHttpRequest;
.source "BasicHttpEntityEnclosingRequest.java"

.implements Lorg/apache/http/HttpEntityEnclosingRequest;


.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


.field private entity:Lorg/apache/http/HttpEntity;


.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lorg/apache/http/message/BasicHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/ProtocolVersion;)V
    .locals 0
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "ver"    # Lorg/apache/http/ProtocolVersion;

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/http/message/BasicHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/ProtocolVersion;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/RequestLine;)V
    .locals 0
    .param p1, "requestline"    # Lorg/apache/http/RequestLine;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lorg/apache/http/message/BasicHttpRequest;-><init>(Lorg/apache/http/RequestLine;)V

    .line 60
    return-void
.end method


.method public expectContinue()Z
    .locals 3

    .prologue
    .line 71
    const-string v1, "Expect"

    invoke-virtual {p0, v1}, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 72
    .local v0, "expect":Lorg/apache/http/Header;
    if-eqz v0, :cond_0

    const-string v1, "100-continue"

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getEntity()Lorg/apache/http/HttpEntity;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;->entity:Lorg/apache/http/HttpEntity;

    return-object v0
.end method

.method public setEntity(Lorg/apache/http/HttpEntity;)V
    .locals 0
    .param p1, "entity"    # Lorg/apache/http/HttpEntity;

    .prologue
    .line 67
    iput-object p1, p0, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;->entity:Lorg/apache/http/HttpEntity;

    .line 68
    return-void
.end method
