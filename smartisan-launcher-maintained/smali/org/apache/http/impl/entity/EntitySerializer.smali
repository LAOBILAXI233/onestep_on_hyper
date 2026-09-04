.class public Lorg/apache/http/impl/entity/EntitySerializer;
.super Ljava/lang/Object;
.source "EntitySerializer.java"


.annotation runtime Ljava/lang/Deprecated;
.end annotation

.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


.field private final lenStrategy:Lorg/apache/http/entity/ContentLengthStrategy;


.method public constructor <init>(Lorg/apache/http/entity/ContentLengthStrategy;)V
    .locals 1
    .param p1, "lenStrategy"    # Lorg/apache/http/entity/ContentLengthStrategy;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const-string v0, "Content length strategy"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/entity/ContentLengthStrategy;

    iput-object v0, p0, Lorg/apache/http/impl/entity/EntitySerializer;->lenStrategy:Lorg/apache/http/entity/ContentLengthStrategy;

    .line 70
    return-void
.end method


.method protected doSerialize(Lorg/apache/http/io/SessionOutputBuffer;Lorg/apache/http/HttpMessage;)Ljava/io/OutputStream;
    .locals 4
    .param p1, "outbuffer"    # Lorg/apache/http/io/SessionOutputBuffer;
    .param p2, "message"    # Lorg/apache/http/HttpMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    iget-object v2, p0, Lorg/apache/http/impl/entity/EntitySerializer;->lenStrategy:Lorg/apache/http/entity/ContentLengthStrategy;

    invoke-interface {v2, p2}, Lorg/apache/http/entity/ContentLengthStrategy;->determineLength(Lorg/apache/http/HttpMessage;)J

    move-result-wide v0

    .line 90
    .local v0, "len":J
    const-wide/16 v2, -0x2

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 91
    new-instance v2, Lorg/apache/http/impl/io/ChunkedOutputStream;

    invoke-direct {v2, p1}, Lorg/apache/http/impl/io/ChunkedOutputStream;-><init>(Lorg/apache/http/io/SessionOutputBuffer;)V

    .line 95
    :goto_0
    return-object v2

    .line 92
    :cond_0
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    .line 93
    new-instance v2, Lorg/apache/http/impl/io/IdentityOutputStream;

    invoke-direct {v2, p1}, Lorg/apache/http/impl/io/IdentityOutputStream;-><init>(Lorg/apache/http/io/SessionOutputBuffer;)V

    goto :goto_0

    .line 95
    :cond_1
    new-instance v2, Lorg/apache/http/impl/io/ContentLengthOutputStream;

    invoke-direct {v2, p1, v0, v1}, Lorg/apache/http/impl/io/ContentLengthOutputStream;-><init>(Lorg/apache/http/io/SessionOutputBuffer;J)V

    goto :goto_0
.end method

.method public serialize(Lorg/apache/http/io/SessionOutputBuffer;Lorg/apache/http/HttpMessage;Lorg/apache/http/HttpEntity;)V
    .locals 2
    .param p1, "outbuffer"    # Lorg/apache/http/io/SessionOutputBuffer;
    .param p2, "message"    # Lorg/apache/http/HttpMessage;
    .param p3, "entity"    # Lorg/apache/http/HttpEntity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    const-string v1, "Session output buffer"

    invoke-static {p1, v1}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 114
    const-string v1, "HTTP message"

    invoke-static {p2, v1}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 115
    const-string v1, "HTTP entity"

    invoke-static {p3, v1}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 116
    invoke-virtual {p0, p1, p2}, Lorg/apache/http/impl/entity/EntitySerializer;->doSerialize(Lorg/apache/http/io/SessionOutputBuffer;Lorg/apache/http/HttpMessage;)Ljava/io/OutputStream;

    move-result-object v0

    .line 117
    .local v0, "outstream":Ljava/io/OutputStream;
    invoke-interface {p3, v0}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 118
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 119
    return-void
.end method
