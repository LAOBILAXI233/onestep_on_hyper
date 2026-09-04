.class public Lorg/apache/http/entity/mime/content/InputStreamBody;
.super Lorg/apache/http/entity/mime/content/AbstractContentBody;
.source "InputStreamBody.java"


.field private final filename:Ljava/lang/String;

.field private final in:Ljava/io/InputStream;


.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    .line 62
    sget-object v0, Lorg/apache/http/entity/ContentType;->DEFAULT_BINARY:Lorg/apache/http/entity/ContentType;

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/http/entity/mime/content/InputStreamBody;-><init>(Ljava/io/InputStream;Lorg/apache/http/entity/ContentType;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "filename"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 58
    invoke-static {p2}, Lorg/apache/http/entity/ContentType;->create(Ljava/lang/String;)Lorg/apache/http/entity/ContentType;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lorg/apache/http/entity/mime/content/InputStreamBody;-><init>(Ljava/io/InputStream;Lorg/apache/http/entity/ContentType;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/apache/http/entity/ContentType;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "contentType"    # Lorg/apache/http/entity/ContentType;

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/http/entity/mime/content/InputStreamBody;-><init>(Ljava/io/InputStream;Lorg/apache/http/entity/ContentType;Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/apache/http/entity/ContentType;Ljava/lang/String;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "contentType"    # Lorg/apache/http/entity/ContentType;
    .param p3, "filename"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-direct {p0, p2}, Lorg/apache/http/entity/mime/content/AbstractContentBody;-><init>(Lorg/apache/http/entity/ContentType;)V

    .line 70
    const-string v0, "Input stream"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 71
    iput-object p1, p0, Lorg/apache/http/entity/mime/content/InputStreamBody;->in:Ljava/io/InputStream;

    .line 72
    iput-object p3, p0, Lorg/apache/http/entity/mime/content/InputStreamBody;->filename:Ljava/lang/String;

    .line 73
    return-void
.end method


.method public getContentLength()J
    .locals 2

    .prologue
    .line 105
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lorg/apache/http/entity/mime/content/InputStreamBody;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lorg/apache/http/entity/mime/content/InputStreamBody;->in:Ljava/io/InputStream;

    return-object v0
.end method

.method public getTransferEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    const-string v0, "binary"

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    const-string v2, "Output stream"

    invoke-static {p1, v2}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 89
    const/16 v2, 0x1000

    :try_start_0
    new-array v1, v2, [B

    .line 91
    .local v1, "tmp":[B
    :goto_0
    iget-object v2, p0, Lorg/apache/http/entity/mime/content/InputStreamBody;->in:Ljava/io/InputStream;

    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .local v0, "l":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 92
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 96
    .end local v0    # "l":I
    .end local v1    # "tmp":[B
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/apache/http/entity/mime/content/InputStreamBody;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    throw v2

    .line 94
    .restart local v0    # "l":I
    .restart local v1    # "tmp":[B
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    iget-object v2, p0, Lorg/apache/http/entity/mime/content/InputStreamBody;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 98
    return-void
.end method
