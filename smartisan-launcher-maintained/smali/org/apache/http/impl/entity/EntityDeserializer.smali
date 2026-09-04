.class public Lorg/apache/http/impl/entity/EntityDeserializer;
.super Ljava/lang/Object;
.source "EntityDeserializer.java"


.annotation runtime Ljava/lang/Deprecated;
.end annotation

.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


.field private final lenStrategy:Lorg/apache/http/entity/ContentLengthStrategy;


.method public constructor <init>(Lorg/apache/http/entity/ContentLengthStrategy;)V
    .locals 1
    .param p1, "lenStrategy"    # Lorg/apache/http/entity/ContentLengthStrategy;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const-string v0, "Content length strategy"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/entity/ContentLengthStrategy;

    iput-object v0, p0, Lorg/apache/http/impl/entity/EntityDeserializer;->lenStrategy:Lorg/apache/http/entity/ContentLengthStrategy;

    .line 73
    return-void
.end method


.method public deserialize(Lorg/apache/http/io/SessionInputBuffer;Lorg/apache/http/HttpMessage;)Lorg/apache/http/HttpEntity;
    .locals 1
    .param p1, "inbuffer"    # Lorg/apache/http/io/SessionInputBuffer;
    .param p2, "message"    # Lorg/apache/http/HttpMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 138
    const-string v0, "Session input buffer"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 139
    const-string v0, "HTTP message"

    invoke-static {p2, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 140
    invoke-virtual {p0, p1, p2}, Lorg/apache/http/impl/entity/EntityDeserializer;->doDeserialize(Lorg/apache/http/io/SessionInputBuffer;Lorg/apache/http/HttpMessage;)Lorg/apache/http/entity/BasicHttpEntity;

    move-result-object v0

    return-object v0
.end method

.method protected doDeserialize(Lorg/apache/http/io/SessionInputBuffer;Lorg/apache/http/HttpMessage;)Lorg/apache/http/entity/BasicHttpEntity;
    .locals 11
    .param p1, "inbuffer"    # Lorg/apache/http/io/SessionInputBuffer;
    .param p2, "message"    # Lorg/apache/http/HttpMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const-wide/16 v8, -0x1

    .line 93
    new-instance v2, Lorg/apache/http/entity/BasicHttpEntity;

    invoke-direct {v2}, Lorg/apache/http/entity/BasicHttpEntity;-><init>()V

    .line 95
    .local v2, "entity":Lorg/apache/http/entity/BasicHttpEntity;
    iget-object v3, p0, Lorg/apache/http/impl/entity/EntityDeserializer;->lenStrategy:Lorg/apache/http/entity/ContentLengthStrategy;

    invoke-interface {v3, p2}, Lorg/apache/http/entity/ContentLengthStrategy;->determineLength(Lorg/apache/http/HttpMessage;)J

    move-result-wide v4

    .line 96
    .local v4, "len":J
    const-wide/16 v6, -0x2

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    .line 97
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/apache/http/entity/BasicHttpEntity;->setChunked(Z)V

    .line 98
    invoke-virtual {v2, v8, v9}, Lorg/apache/http/entity/BasicHttpEntity;->setContentLength(J)V

    .line 99
    new-instance v3, Lorg/apache/http/impl/io/ChunkedInputStream;

    invoke-direct {v3, p1}, Lorg/apache/http/impl/io/ChunkedInputStream;-><init>(Lorg/apache/http/io/SessionInputBuffer;)V

    invoke-virtual {v2, v3}, Lorg/apache/http/entity/BasicHttpEntity;->setContent(Ljava/io/InputStream;)V

    .line 110
    :goto_0
    const-string v3, "Content-Type"

    invoke-interface {p2, v3}, Lorg/apache/http/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    .line 111
    .local v1, "contentTypeHeader":Lorg/apache/http/Header;
    if-eqz v1, :cond_0

    .line 112
    invoke-virtual {v2, v1}, Lorg/apache/http/entity/BasicHttpEntity;->setContentType(Lorg/apache/http/Header;)V

    .line 114
    :cond_0
    const-string v3, "Content-Encoding"

    invoke-interface {p2, v3}, Lorg/apache/http/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 115
    .local v0, "contentEncodingHeader":Lorg/apache/http/Header;
    if-eqz v0, :cond_1

    .line 116
    invoke-virtual {v2, v0}, Lorg/apache/http/entity/BasicHttpEntity;->setContentEncoding(Lorg/apache/http/Header;)V

    .line 118
    :cond_1
    return-object v2

    .line 100
    .end local v0    # "contentEncodingHeader":Lorg/apache/http/Header;
    .end local v1    # "contentTypeHeader":Lorg/apache/http/Header;
    :cond_2
    cmp-long v3, v4, v8

    if-nez v3, :cond_3

    .line 101
    invoke-virtual {v2, v10}, Lorg/apache/http/entity/BasicHttpEntity;->setChunked(Z)V

    .line 102
    invoke-virtual {v2, v8, v9}, Lorg/apache/http/entity/BasicHttpEntity;->setContentLength(J)V

    .line 103
    new-instance v3, Lorg/apache/http/impl/io/IdentityInputStream;

    invoke-direct {v3, p1}, Lorg/apache/http/impl/io/IdentityInputStream;-><init>(Lorg/apache/http/io/SessionInputBuffer;)V

    invoke-virtual {v2, v3}, Lorg/apache/http/entity/BasicHttpEntity;->setContent(Ljava/io/InputStream;)V

    goto :goto_0

    .line 105
    :cond_3
    invoke-virtual {v2, v10}, Lorg/apache/http/entity/BasicHttpEntity;->setChunked(Z)V

    .line 106
    invoke-virtual {v2, v4, v5}, Lorg/apache/http/entity/BasicHttpEntity;->setContentLength(J)V

    .line 107
    new-instance v3, Lorg/apache/http/impl/io/ContentLengthInputStream;

    invoke-direct {v3, p1, v4, v5}, Lorg/apache/http/impl/io/ContentLengthInputStream;-><init>(Lorg/apache/http/io/SessionInputBuffer;J)V

    invoke-virtual {v2, v3}, Lorg/apache/http/entity/BasicHttpEntity;->setContent(Ljava/io/InputStream;)V

    goto :goto_0
.end method
