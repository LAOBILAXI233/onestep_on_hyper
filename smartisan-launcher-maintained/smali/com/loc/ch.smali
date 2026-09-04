.class public Lcom/loc/ch;
.super Ljava/lang/Object;
.source "BinaryRandomAccessFile.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loc/ch$a;
    }
.end annotation


.field private a:Ljava/io/ByteArrayInputStream;

.field private b:J

.field private c:Z

.field private d:Ljava/io/RandomAccessFile;

.field private e:Z

.field private final f:[B

.field private g:Lcom/loc/ch$a;

.field private h:Ljava/lang/String;


.method public constructor <init>(Ljava/io/File;Lcom/loc/ch$a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;,
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/loc/ch;->c:Z

    iput-object v1, p0, Lcom/loc/ch;->d:Ljava/io/RandomAccessFile;

    iput-boolean v2, p0, Lcom/loc/ch;->e:Z

    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/loc/ch;->f:[B

    iput-object v1, p0, Lcom/loc/ch;->h:Ljava/lang/String;

    if-eqz p2, :cond_0

    iget-boolean v0, p2, Lcom/loc/ch$a;->a:Z

    if-ne v0, v3, :cond_1

    invoke-static {p1}, Lcom/loc/cw;->a(Ljava/io/File;)[B

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v1, p0, Lcom/loc/ch;->a:Ljava/io/ByteArrayInputStream;

    array-length v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/loc/ch;->b:J

    iput-boolean v2, p0, Lcom/loc/ch;->c:Z

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/ch;->h:Ljava/lang/String;

    :goto_0
    iput-object p2, p0, Lcom/loc/ch;->g:Lcom/loc/ch$a;

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/loc/ch;->d:Ljava/io/RandomAccessFile;

    iput-boolean v3, p0, Lcom/loc/ch;->c:Z

    goto :goto_0
.end method

.method private h()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/loc/ch;->e:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "file closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


.method public a(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "offset < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/loc/ch;->h()V

    iget-boolean v0, p0, Lcom/loc/ch;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/loc/ch;->d:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/loc/ch;->a:Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->reset()V

    iget-object v0, p0, Lcom/loc/ch;->a:Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/ByteArrayInputStream;->skip(J)J

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/loc/ch;->g:Lcom/loc/ch$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/loc/ch;->g:Lcom/loc/ch$a;

    iget-boolean v0, v0, Lcom/loc/ch$a;->a:Z

    goto :goto_0
.end method

.method public b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/loc/ch;->c:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/loc/ch;->a:Ljava/io/ByteArrayInputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/ch;->a:Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/ch;->a:Ljava/io/ByteArrayInputStream;

    :cond_0
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/ch;->e:Z

    monitor-exit p0

    return-void

    :cond_1
    iget-object v0, p0, Lcom/loc/ch;->d:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/ch;->d:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/ch;->d:Ljava/io/RandomAccessFile;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final c()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/loc/ch;->h()V

    iget-boolean v0, p0, Lcom/loc/ch;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/ch;->d:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/loc/ch;->a:Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/loc/ch;->f:[B

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->read([B)I

    iget-object v0, p0, Lcom/loc/ch;->f:[B

    invoke-static {v0}, Lcom/loc/cw;->b([B)J

    move-result-wide v0

    goto :goto_0
.end method

.method public final d()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/loc/ch;->h()V

    iget-boolean v0, p0, Lcom/loc/ch;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/ch;->d:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readUnsignedShort()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/loc/ch;->a:Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/loc/ch;->f:[B

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayInputStream;->read([BII)I

    iget-object v0, p0, Lcom/loc/ch;->f:[B

    invoke-static {v0}, Lcom/loc/cw;->c([B)I

    move-result v0

    goto :goto_0
.end method

.method public final e()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/loc/ch;->h()V

    iget-boolean v0, p0, Lcom/loc/ch;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/ch;->d:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/loc/ch;->a:Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/loc/ch;->f:[B

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayInputStream;->read([BII)I

    iget-object v0, p0, Lcom/loc/ch;->f:[B

    invoke-static {v0}, Lcom/loc/cw;->d([B)I

    move-result v0

    goto :goto_0
.end method

.method public final f()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/loc/ch;->h()V

    iget-boolean v0, p0, Lcom/loc/ch;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/ch;->d:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readUnsignedByte()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/loc/ch;->a:Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/loc/ch;->b()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public g()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/loc/ch;->e:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "file closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-boolean v0, p0, Lcom/loc/ch;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/loc/ch;->d:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_1
    iget-wide v0, p0, Lcom/loc/ch;->b:J

    goto :goto_0
.end method
