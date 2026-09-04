.class public Lorg/apache/http/entity/InputStreamEntity;
.super Lorg/apache/http/entity/AbstractHttpEntity;
.source "InputStreamEntity.java"


.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


.field private final content:Ljava/io/InputStream;

.field private final length:J


.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "instream"    # Ljava/io/InputStream;

    .prologue
    .line 58
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;J)V
    .locals 2
    .param p1, "instream"    # Ljava/io/InputStream;
    .param p2, "length"    # J

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;JLorg/apache/http/entity/ContentType;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;JLorg/apache/http/entity/ContentType;)V
    .locals 2
    .param p1, "instream"    # Ljava/io/InputStream;
    .param p2, "length"    # J
    .param p4, "contentType"    # Lorg/apache/http/entity/ContentType;

    .prologue
    .line 93
    invoke-direct {p0}, Lorg/apache/http/entity/AbstractHttpEntity;-><init>()V

    .line 94
    const-string v0, "Source input stream"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    iput-object v0, p0, Lorg/apache/http/entity/InputStreamEntity;->content:Ljava/io/InputStream;

    .line 95
    iput-wide p2, p0, Lorg/apache/http/entity/InputStreamEntity;->length:J

    .line 96
    if-eqz p4, :cond_0

    .line 97
    invoke-virtual {p4}, Lorg/apache/http/entity/ContentType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/http/entity/InputStreamEntity;->setContentType(Ljava/lang/String;)V

    .line 99
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/apache/http/entity/ContentType;)V
    .locals 2
    .param p1, "instream"    # Ljava/io/InputStream;
    .param p2, "contentType"    # Lorg/apache/http/entity/ContentType;

    .prologue
    .line 82
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1, p2}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;JLorg/apache/http/entity/ContentType;)V

    .line 83
    return-void
.end method


.method public getContent()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lorg/apache/http/entity/InputStreamEntity;->content:Ljava/io/InputStream;

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .prologue
    .line 109
    iget-wide v0, p0, Lorg/apache/http/entity/InputStreamEntity;->length:J

    return-wide v0
.end method

.method public isRepeatable()Z
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public isStreaming()Z
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x1

    return v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 12
    .param p1, "outstream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v10, 0x0

    const/4 v8, -0x1

    .line 124
    const-string v3, "Output stream"

    invoke-static {p1, v3}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 125
    iget-object v1, p0, Lorg/apache/http/entity/InputStreamEntity;->content:Ljava/io/InputStream;

    .line 127
    .local v1, "instream":Ljava/io/InputStream;
    const/16 v3, 0x1000

    :try_start_0
    new-array v0, v3, [B

    .line 129
    .local v0, "buffer":[B
    iget-wide v6, p0, Lorg/apache/http/entity/InputStreamEntity;->length:J

    cmp-long v3, v6, v10

    if-gez v3, :cond_0

    .line 131
    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, "l":I
    if-eq v2, v8, :cond_1

    .line 132
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 147
    .end local v0    # "buffer":[B
    .end local v2    # "l":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v3

    .line 136
    .restart local v0    # "buffer":[B
    :cond_0
    :try_start_1
    iget-wide v4, p0, Lorg/apache/http/entity/InputStreamEntity;->length:J

    .line 137
    .local v4, "remaining":J
    :goto_1
    cmp-long v3, v4, v10

    if-lez v3, :cond_1

    .line 138
    const/4 v3, 0x0

    const-wide/16 v6, 0x1000

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v6, v6

    invoke-virtual {v1, v0, v3, v6}, Ljava/io/InputStream;->read([BII)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 139
    .restart local v2    # "l":I
    if-ne v2, v8, :cond_2

    .line 147
    .end local v2    # "l":I
    .end local v4    # "remaining":J
    :cond_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 149
    return-void

    .line 142
    .restart local v2    # "l":I
    .restart local v4    # "remaining":J
    :cond_2
    const/4 v3, 0x0

    :try_start_2
    invoke-virtual {p1, v0, v3, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 143
    int-to-long v6, v2

    sub-long/2addr v4, v6

    goto :goto_1
.end method
