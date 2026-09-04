.class public final Lorg/apache/http/impl/ConnSupport;
.super Ljava/lang/Object;
.source "ConnSupport.java"


.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createDecoder(Lorg/apache/http/config/ConnectionConfig;)Ljava/nio/charset/CharsetDecoder;
    .locals 4
    .param p0, "cconfig"    # Lorg/apache/http/config/ConnectionConfig;

    .prologue
    const/4 v3, 0x0

    .line 44
    if-nez p0, :cond_1

    .line 55
    :cond_0
    :goto_0
    return-object v3

    .line 47
    :cond_1
    invoke-virtual {p0}, Lorg/apache/http/config/ConnectionConfig;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    .line 48
    .local v0, "charset":Ljava/nio/charset/Charset;
    invoke-virtual {p0}, Lorg/apache/http/config/ConnectionConfig;->getMalformedInputAction()Ljava/nio/charset/CodingErrorAction;

    move-result-object v1

    .line 49
    .local v1, "malformed":Ljava/nio/charset/CodingErrorAction;
    invoke-virtual {p0}, Lorg/apache/http/config/ConnectionConfig;->getUnmappableInputAction()Ljava/nio/charset/CodingErrorAction;

    move-result-object v2

    .line 50
    .local v2, "unmappable":Ljava/nio/charset/CodingErrorAction;
    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v3

    if-eqz v1, :cond_2

    .end local v1    # "malformed":Ljava/nio/charset/CodingErrorAction;
    :goto_1
    invoke-virtual {v3, v1}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v3

    if-eqz v2, :cond_3

    .end local v2    # "unmappable":Ljava/nio/charset/CodingErrorAction;
    :goto_2
    invoke-virtual {v3, v2}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v3

    goto :goto_0

    .restart local v1    # "malformed":Ljava/nio/charset/CodingErrorAction;
    .restart local v2    # "unmappable":Ljava/nio/charset/CodingErrorAction;
    :cond_2
    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    goto :goto_1

    .end local v1    # "malformed":Ljava/nio/charset/CodingErrorAction;
    :cond_3
    sget-object v2, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    goto :goto_2
.end method

.method public static createEncoder(Lorg/apache/http/config/ConnectionConfig;)Ljava/nio/charset/CharsetEncoder;
    .locals 4
    .param p0, "cconfig"    # Lorg/apache/http/config/ConnectionConfig;

    .prologue
    const/4 v3, 0x0

    .line 60
    if-nez p0, :cond_1

    .line 71
    :cond_0
    :goto_0
    return-object v3

    .line 63
    :cond_1
    invoke-virtual {p0}, Lorg/apache/http/config/ConnectionConfig;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    .line 64
    .local v0, "charset":Ljava/nio/charset/Charset;
    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p0}, Lorg/apache/http/config/ConnectionConfig;->getMalformedInputAction()Ljava/nio/charset/CodingErrorAction;

    move-result-object v1

    .line 66
    .local v1, "malformed":Ljava/nio/charset/CodingErrorAction;
    invoke-virtual {p0}, Lorg/apache/http/config/ConnectionConfig;->getUnmappableInputAction()Ljava/nio/charset/CodingErrorAction;

    move-result-object v2

    .line 67
    .local v2, "unmappable":Ljava/nio/charset/CodingErrorAction;
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v3

    if-eqz v1, :cond_2

    .end local v1    # "malformed":Ljava/nio/charset/CodingErrorAction;
    :goto_1
    invoke-virtual {v3, v1}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v3

    if-eqz v2, :cond_3

    .end local v2    # "unmappable":Ljava/nio/charset/CodingErrorAction;
    :goto_2
    invoke-virtual {v3, v2}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v3

    goto :goto_0

    .restart local v1    # "malformed":Ljava/nio/charset/CodingErrorAction;
    .restart local v2    # "unmappable":Ljava/nio/charset/CodingErrorAction;
    :cond_2
    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    goto :goto_1

    .end local v1    # "malformed":Ljava/nio/charset/CodingErrorAction;
    :cond_3
    sget-object v2, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    goto :goto_2
.end method
