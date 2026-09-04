.class public Lorg/apache/http/entity/FileEntity;
.super Lorg/apache/http/entity/AbstractHttpEntity;
.source "FileEntity.java"

.implements Ljava/lang/Cloneable;


.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


.field protected final file:Ljava/io/File;


.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 74
    invoke-direct {p0}, Lorg/apache/http/entity/AbstractHttpEntity;-><init>()V

    .line 75
    const-string v0, "File"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    iput-object v0, p0, Lorg/apache/http/entity/FileEntity;->file:Ljava/io/File;

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .param p2, "contentType"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0}, Lorg/apache/http/entity/AbstractHttpEntity;-><init>()V

    .line 55
    const-string v0, "File"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    iput-object v0, p0, Lorg/apache/http/entity/FileEntity;->file:Ljava/io/File;

    .line 56
    invoke-virtual {p0, p2}, Lorg/apache/http/entity/FileEntity;->setContentType(Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lorg/apache/http/entity/ContentType;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .param p2, "contentType"    # Lorg/apache/http/entity/ContentType;

    .prologue
    .line 63
    invoke-direct {p0}, Lorg/apache/http/entity/AbstractHttpEntity;-><init>()V

    .line 64
    const-string v0, "File"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    iput-object v0, p0, Lorg/apache/http/entity/FileEntity;->file:Ljava/io/File;

    .line 65
    if-eqz p2, :cond_0

    .line 66
    invoke-virtual {p2}, Lorg/apache/http/entity/ContentType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/http/entity/FileEntity;->setContentType(Ljava/lang/String;)V

    .line 68
    :cond_0
    return-void
.end method


.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 118
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lorg/apache/http/entity/FileEntity;->file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lorg/apache/http/entity/FileEntity;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public isRepeatable()Z
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x1

    return v0
.end method

.method public isStreaming()Z
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 4
    .param p1, "outstream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    const-string v3, "Output stream"

    invoke-static {p1, v3}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 92
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v3, p0, Lorg/apache/http/entity/FileEntity;->file:Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 94
    .local v0, "instream":Ljava/io/InputStream;
    const/16 v3, 0x1000

    :try_start_0
    new-array v2, v3, [B

    .line 96
    .local v2, "tmp":[B
    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "l":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 97
    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 101
    .end local v1    # "l":I
    .end local v2    # "tmp":[B
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v3

    .line 99
    .restart local v1    # "l":I
    .restart local v2    # "tmp":[B
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 103
    return-void
.end method
