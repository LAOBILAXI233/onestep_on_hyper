.class public Lcom/fasterxml/jackson/core/util/RequestPayload;
.super Ljava/lang/Object;
.source "RequestPayload.java"

.implements Ljava/io/Serializable;


.field private static final serialVersionUID:J = 0x1L


.field protected _charset:Ljava/lang/String;

.field protected _payloadAsBytes:[B

.field protected _payloadAsText:Ljava/lang/CharSequence;


.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/CharSequence;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    if-nez p1, :cond_0

    .line 37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 39
    :cond_0
    iput-object p1, p0, Lcom/fasterxml/jackson/core/util/RequestPayload;->_payloadAsText:Ljava/lang/CharSequence;

    .line 40
    return-void
.end method

.method public constructor <init>([BLjava/lang/String;)V
    .locals 1
    .param p1, "bytes"    # [B
    .param p2, "charset"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    if-nez p1, :cond_0

    .line 29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 31
    :cond_0
    iput-object p1, p0, Lcom/fasterxml/jackson/core/util/RequestPayload;->_payloadAsBytes:[B

    .line 32
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string p2, "UTF-8"

    .end local p2    # "charset":Ljava/lang/String;
    :cond_2
    iput-object p2, p0, Lcom/fasterxml/jackson/core/util/RequestPayload;->_charset:Ljava/lang/String;

    .line 33
    return-void
.end method


.method public getRawPayload()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/RequestPayload;->_payloadAsBytes:[B

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/RequestPayload;->_payloadAsBytes:[B

    .line 53
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/RequestPayload;->_payloadAsText:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 58
    iget-object v1, p0, Lcom/fasterxml/jackson/core/util/RequestPayload;->_payloadAsBytes:[B

    if-eqz v1, :cond_0

    .line 60
    :try_start_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/fasterxml/jackson/core/util/RequestPayload;->_payloadAsBytes:[B

    iget-object v3, p0, Lcom/fasterxml/jackson/core/util/RequestPayload;->_charset:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    return-object v1

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 65
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/core/util/RequestPayload;->_payloadAsText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
