.class public Lorg/apache/http/impl/io/ContentLengthOutputStream;
.super Ljava/io/OutputStream;
.source "ContentLengthOutputStream.java"


.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


.field private closed:Z

.field private final contentLength:J

.field private final out:Lorg/apache/http/io/SessionOutputBuffer;

.field private total:J


.method public constructor <init>(Lorg/apache/http/io/SessionOutputBuffer;J)V
    .locals 2
    .param p1, "out"    # Lorg/apache/http/io/SessionOutputBuffer;
    .param p2, "contentLength"    # J

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 65
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/http/impl/io/ContentLengthOutputStream;->total:J

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/http/impl/io/ContentLengthOutputStream;->closed:Z

    .line 82
    const-string v0, "Session output buffer"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/io/SessionOutputBuffer;

    iput-object v0, p0, Lorg/apache/http/impl/io/ContentLengthOutputStream;->out:Lorg/apache/http/io/SessionOutputBuffer;

    .line 83
    const-string v0, "Content length"

    invoke-static {p2, p3, v0}, Lorg/apache/http/util/Args;->notNegative(JLjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/http/impl/io/ContentLengthOutputStream;->contentLength:J

    .line 84
    return-void
.end method


.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    iget-boolean v0, p0, Lorg/apache/http/impl/io/ContentLengthOutputStream;->closed:Z

    if-nez v0, :cond_0

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/http/impl/io/ContentLengthOutputStream;->closed:Z

    .line 95
    iget-object v0, p0, Lorg/apache/http/impl/io/ContentLengthOutputStream;->out:Lorg/apache/http/io/SessionOutputBuffer;

    invoke-interface {v0}, Lorg/apache/http/io/SessionOutputBuffer;->flush()V

    .line 97
    :cond_0
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lorg/apache/http/impl/io/ContentLengthOutputStream;->out:Lorg/apache/http/io/SessionOutputBuffer;

    invoke-interface {v0}, Lorg/apache/http/io/SessionOutputBuffer;->flush()V

    .line 102
    return-void
.end method

.method public write(I)V
    .locals 4
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    iget-boolean v0, p0, Lorg/apache/http/impl/io/ContentLengthOutputStream;->closed:Z

    if-eqz v0, :cond_0

    .line 128
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attempted write to closed stream."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_0
    iget-wide v0, p0, Lorg/apache/http/impl/io/ContentLengthOutputStream;->total:J

    iget-wide v2, p0, Lorg/apache/http/impl/io/ContentLengthOutputStream;->contentLength:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 131
    iget-object v0, p0, Lorg/apache/http/impl/io/ContentLengthOutputStream;->out:Lorg/apache/http/io/SessionOutputBuffer;

    invoke-interface {v0, p1}, Lorg/apache/http/io/SessionOutputBuffer;->write(I)V

    .line 132
    iget-wide v0, p0, Lorg/apache/http/impl/io/ContentLengthOutputStream;->total:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/http/impl/io/ContentLengthOutputStream;->total:J

    .line 134
    :cond_1
    return-void
.end method

.method public write([B)V
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 122
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/http/impl/io/ContentLengthOutputStream;->write([BII)V

    .line 123
    return-void
.end method

.method public write([BII)V
    .locals 8
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    iget-boolean v1, p0, Lorg/apache/http/impl/io/ContentLengthOutputStream;->closed:Z

    if-eqz v1, :cond_0

    .line 107
    new-instance v1, Ljava/io/IOException;

    const-string v4, "Attempted write to closed stream."

    invoke-direct {v1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 109
    :cond_0
    iget-wide v4, p0, Lorg/apache/http/impl/io/ContentLengthOutputStream;->total:J

    iget-wide v6, p0, Lorg/apache/http/impl/io/ContentLengthOutputStream;->contentLength:J

    cmp-long v1, v4, v6

    if-gez v1, :cond_2

    .line 110
    iget-wide v4, p0, Lorg/apache/http/impl/io/ContentLengthOutputStream;->contentLength:J

    iget-wide v6, p0, Lorg/apache/http/impl/io/ContentLengthOutputStream;->total:J

    sub-long v2, v4, v6

    .line 111
    .local v2, "max":J
    move v0, p3

    .line 112
    .local v0, "chunk":I
    int-to-long v4, v0

    cmp-long v1, v4, v2

    if-lez v1, :cond_1

    .line 113
    long-to-int v0, v2

    .line 115
    :cond_1
    iget-object v1, p0, Lorg/apache/http/impl/io/ContentLengthOutputStream;->out:Lorg/apache/http/io/SessionOutputBuffer;

    invoke-interface {v1, p1, p2, v0}, Lorg/apache/http/io/SessionOutputBuffer;->write([BII)V

    .line 116
    iget-wide v4, p0, Lorg/apache/http/impl/io/ContentLengthOutputStream;->total:J

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p0, Lorg/apache/http/impl/io/ContentLengthOutputStream;->total:J

    .line 118
    .end local v0    # "chunk":I
    .end local v2    # "max":J
    :cond_2
    return-void
.end method
