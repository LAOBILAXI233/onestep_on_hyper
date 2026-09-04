.class public final Lcom/loc/ee;
.super Ljava/lang/Object;


.field private a:Ljava/io/RandomAccessFile;

.field private b:Lcom/loc/di;

.field private c:Ljava/io/File;


.method protected constructor <init>(Lcom/loc/di;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/ee;->c:Ljava/io/File;

    iput-object p1, p0, Lcom/loc/ee;->b:Lcom/loc/di;

    return-void
.end method

.method private static a([B)B
    .locals 8

    const/4 v7, 0x0

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v2, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 v3, 0x400

    new-array v3, v3, [B

    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_0
    const/4 v5, 0x0

    array-length v6, v3

    invoke-virtual {v2, v3, v5, v6}, Ljava/util/zip/GZIPInputStream;->read([BII)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    const/4 v6, 0x0

    invoke-virtual {v4, v3, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_1
    aget-byte v0, v0, v7

    return v0

    :cond_0
    :try_start_1
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v2}, Ljava/util/zip/GZIPInputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private static a(III)I
    .locals 1

    add-int/lit8 v0, p2, -0x1

    mul-int/lit16 v0, v0, 0x5dc

    add-int/2addr v0, p0

    :goto_0
    if-lt v0, p1, :cond_0

    add-int/lit16 v0, v0, -0x5dc

    goto :goto_0

    :cond_0
    return v0
.end method

.method private a(Ljava/util/BitSet;)I
    .locals 3

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    invoke-virtual {p1}, Ljava/util/BitSet;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit16 v0, v0, 0x5dc

    add-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lcom/loc/ee;->b:Lcom/loc/di;

    invoke-virtual {v1}, Lcom/loc/di;->a()I

    move-result v1

    add-int/2addr v1, v0

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private a(II)Ljava/util/ArrayList;
    .locals 6

    const/4 v0, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-gt p1, p2, :cond_3

    :try_start_0
    iget-object v2, p0, Lcom/loc/ee;->a:Ljava/io/RandomAccessFile;

    int-to-long v4, p1

    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v2, p0, Lcom/loc/ee;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v2

    iget-object v3, p0, Lcom/loc/ee;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readLong()J

    if-lez v2, :cond_0

    const/16 v3, 0x5dc

    if-le v2, v3, :cond_1

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    new-array v2, v2, [B

    iget-object v3, p0, Lcom/loc/ee;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v3, v2}, Ljava/io/RandomAccessFile;->read([B)I

    invoke-static {v2}, Lcom/loc/ee;->a([B)B

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    const/4 v4, 0x4

    if-eq v3, v4, :cond_2

    const/16 v4, 0x29

    if-ne v3, v4, :cond_0

    :cond_2
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    add-int/lit16 p1, p1, 0x5dc

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_2
.end method

.method private b()Ljava/util/BitSet;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/loc/ee;->b:Lcom/loc/di;

    invoke-virtual {v1}, Lcom/loc/di;->a()I

    move-result v1

    new-array v1, v1, [B

    :try_start_0
    iget-object v2, p0, Lcom/loc/ee;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v2, v1}, Ljava/io/RandomAccessFile;->read([B)I

    invoke-static {v1}, Lcom/loc/di;->b([B)Ljava/util/BitSet;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method


.method protected final a()I
    .locals 4

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/loc/ee;->b:Lcom/loc/di;

    invoke-virtual {v1}, Lcom/loc/di;->b()Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcom/loc/ee;->c:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/loc/ee;->c:Ljava/io/File;

    if-eqz v1, :cond_3

    new-instance v1, Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lcom/loc/ee;->b:Lcom/loc/di;

    invoke-virtual {v2}, Lcom/loc/di;->b()Ljava/io/File;

    move-result-object v2

    const-string v3, "rw"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/loc/ee;->a:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/loc/ee;->b:Lcom/loc/di;

    invoke-virtual {v1}, Lcom/loc/di;->a()I

    move-result v1

    new-array v1, v1, [B

    sget-boolean v2, Lcom/loc/dl;->c:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/loc/ee;->a:Ljava/io/RandomAccessFile;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_1

    :try_start_2
    iget-object v2, p0, Lcom/loc/ee;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v1, p0, Lcom/loc/ee;->a:Ljava/io/RandomAccessFile;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_0

    :try_start_4
    iget-object v1, p0, Lcom/loc/ee;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_9
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_0
    :goto_0
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_1
    return v0

    :catch_0
    move-exception v2

    :cond_1
    :try_start_6
    iget-object v2, p0, Lcom/loc/ee;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v2, v1}, Ljava/io/RandomAccessFile;->read([B)I

    invoke-static {v1}, Lcom/loc/di;->b([B)Ljava/util/BitSet;

    move-result-object v2

    move v1, v0

    :goto_2
    invoke-virtual {v2}, Ljava/util/BitSet;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->get(I)Z
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    :try_start_7
    iget-object v1, p0, Lcom/loc/ee;->a:Ljava/io/RandomAccessFile;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v1, :cond_4

    :try_start_8
    iget-object v1, p0, Lcom/loc/ee;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_4
    :goto_3
    const/4 v1, 0x0

    :try_start_9
    iput-object v1, p0, Lcom/loc/ee;->c:Ljava/io/File;

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_1
    move-exception v1

    :try_start_a
    iget-object v1, p0, Lcom/loc/ee;->a:Ljava/io/RandomAccessFile;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-eqz v1, :cond_4

    :try_start_b
    iget-object v1, p0, Lcom/loc/ee;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    :try_start_c
    iget-object v1, p0, Lcom/loc/ee;->a:Ljava/io/RandomAccessFile;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    if-eqz v1, :cond_4

    :try_start_d
    iget-object v1, p0, Lcom/loc/ee;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_3

    :catch_5
    move-exception v1

    :try_start_e
    iget-object v1, p0, Lcom/loc/ee;->a:Ljava/io/RandomAccessFile;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    if-eqz v1, :cond_4

    :try_start_f
    iget-object v1, p0, Lcom/loc/ee;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_6
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto :goto_3

    :catch_6
    move-exception v1

    goto :goto_3

    :catchall_1
    move-exception v0

    :try_start_10
    iget-object v1, p0, Lcom/loc/ee;->a:Ljava/io/RandomAccessFile;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    if-eqz v1, :cond_5

    :try_start_11
    iget-object v1, p0, Lcom/loc/ee;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_7
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    :cond_5
    :goto_4
    :try_start_12
    throw v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    :catch_7
    move-exception v1

    goto :goto_4

    :catch_8
    move-exception v1

    goto :goto_3

    :catch_9
    move-exception v1

    goto :goto_0
.end method

.method protected final declared-synchronized a(I)Lcom/loc/dh;
    .locals 7

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/loc/ee;->b:Lcom/loc/di;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v1, p0, Lcom/loc/ee;->b:Lcom/loc/di;

    invoke-virtual {v1}, Lcom/loc/di;->b()Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcom/loc/ee;->c:Ljava/io/File;

    iget-object v1, p0, Lcom/loc/ee;->c:Ljava/io/File;

    if-nez v1, :cond_1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_4
    new-instance v1, Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lcom/loc/ee;->c:Ljava/io/File;

    const-string v3, "rw"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/loc/ee;->a:Ljava/io/RandomAccessFile;

    sget-boolean v1, Lcom/loc/dl;->c:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/loc/ee;->a:Ljava/io/RandomAccessFile;
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v1, :cond_3

    :try_start_5
    iget-object v1, p0, Lcom/loc/ee;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    iget-object v1, p0, Lcom/loc/ee;->a:Ljava/io/RandomAccessFile;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v1, :cond_2

    :try_start_7
    iget-object v1, p0, Lcom/loc/ee;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_9
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_2
    :goto_1
    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :cond_3
    :try_start_9
    invoke-direct {p0}, Lcom/loc/ee;->b()Ljava/util/BitSet;

    move-result-object v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/loc/ee;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    iget-object v1, p0, Lcom/loc/ee;->a:Ljava/io/RandomAccessFile;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-eqz v1, :cond_4

    :try_start_b
    iget-object v1, p0, Lcom/loc/ee;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :cond_4
    :goto_2
    :try_start_c
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_0

    :cond_5
    :try_start_d
    invoke-direct {p0, v1}, Lcom/loc/ee;->a(Ljava/util/BitSet;)I

    move-result v1

    iget-object v2, p0, Lcom/loc/ee;->c:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v1, v2, p1}, Lcom/loc/ee;->a(III)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/loc/ee;->a(II)Ljava/util/ArrayList;

    move-result-object v3

    if-nez v3, :cond_7

    iget-object v1, p0, Lcom/loc/ee;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :try_start_e
    iget-object v1, p0, Lcom/loc/ee;->a:Ljava/io/RandomAccessFile;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    if-eqz v1, :cond_6

    :try_start_f
    iget-object v1, p0, Lcom/loc/ee;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_7
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :cond_6
    :goto_3
    :try_start_10
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto :goto_0

    :cond_7
    const/4 v4, 0x2

    :try_start_11
    new-array v4, v4, [I

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/loc/ee;->b:Lcom/loc/di;

    invoke-virtual {v6}, Lcom/loc/di;->a()I

    move-result v6

    sub-int/2addr v1, v6

    add-int/lit8 v1, v1, -0x4

    div-int/lit16 v1, v1, 0x5dc

    aput v1, v4, v5

    const/4 v1, 0x1

    iget-object v5, p0, Lcom/loc/ee;->b:Lcom/loc/di;

    invoke-virtual {v5}, Lcom/loc/di;->a()I

    move-result v5

    sub-int/2addr v2, v5

    add-int/lit8 v2, v2, -0x4

    div-int/lit16 v2, v2, 0x5dc

    aput v2, v4, v1

    new-instance v1, Lcom/loc/dh;

    iget-object v2, p0, Lcom/loc/ee;->c:Ljava/io/File;

    invoke-direct {v1, v2, v3, v4}, Lcom/loc/dh;-><init>(Ljava/io/File;Ljava/util/ArrayList;[I)V
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_11} :catch_1
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_3
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    :try_start_12
    iget-object v2, p0, Lcom/loc/ee;->a:Ljava/io/RandomAccessFile;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    if-eqz v2, :cond_8

    :try_start_13
    iget-object v2, p0, Lcom/loc/ee;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_6
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    :cond_8
    :goto_4
    if-eqz v1, :cond_9

    :try_start_14
    invoke-virtual {v1}, Lcom/loc/dh;->c()I

    move-result v2

    const/16 v3, 0x64

    if-le v2, v3, :cond_9

    invoke-virtual {v1}, Lcom/loc/dh;->c()I

    move-result v2

    const/high16 v3, 0x500000

    if-lt v2, v3, :cond_b

    :cond_9
    iget-object v1, p0, Lcom/loc/ee;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/loc/ee;->c:Ljava/io/File;

    monitor-exit p0

    goto/16 :goto_0

    :catch_1
    move-exception v1

    iget-object v1, p0, Lcom/loc/ee;->a:Ljava/io/RandomAccessFile;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    if-eqz v1, :cond_c

    :try_start_15
    iget-object v1, p0, Lcom/loc/ee;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_2
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    move-object v1, v0

    goto :goto_4

    :catch_2
    move-exception v1

    move-object v1, v0

    goto :goto_4

    :catch_3
    move-exception v1

    :try_start_16
    iget-object v1, p0, Lcom/loc/ee;->a:Ljava/io/RandomAccessFile;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    if-eqz v1, :cond_c

    :try_start_17
    iget-object v1, p0, Lcom/loc/ee;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_4
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    move-object v1, v0

    goto :goto_4

    :catch_4
    move-exception v1

    move-object v1, v0

    goto :goto_4

    :catchall_2
    move-exception v0

    :try_start_18
    iget-object v1, p0, Lcom/loc/ee;->a:Ljava/io/RandomAccessFile;
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    if-eqz v1, :cond_a

    :try_start_19
    iget-object v1, p0, Lcom/loc/ee;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_5
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    :cond_a
    :goto_5
    :try_start_1a
    throw v0
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    :cond_b
    :try_start_1b
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1

    move-object v0, v1

    goto/16 :goto_0

    :catch_5
    move-exception v1

    goto :goto_5

    :catch_6
    move-exception v2

    goto :goto_4

    :catch_7
    move-exception v1

    goto :goto_3

    :catch_8
    move-exception v1

    goto/16 :goto_2

    :catch_9
    move-exception v1

    goto/16 :goto_1

    :cond_c
    move-object v1, v0

    goto :goto_4
.end method

.method protected final declared-synchronized a(Lcom/loc/dh;)V
    .locals 4

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p1, Lcom/loc/dh;->a:Ljava/io/File;

    iput-object v1, p0, Lcom/loc/ee;->c:Ljava/io/File;

    iget-object v1, p0, Lcom/loc/ee;->c:Ljava/io/File;

    if-nez v1, :cond_0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_2
    new-instance v1, Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lcom/loc/ee;->c:Ljava/io/File;

    const-string v3, "rw"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/loc/ee;->a:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/loc/ee;->b:Lcom/loc/di;

    invoke-virtual {v1}, Lcom/loc/di;->a()I

    move-result v1

    new-array v1, v1, [B

    sget-boolean v2, Lcom/loc/dl;->c:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/loc/ee;->a:Ljava/io/RandomAccessFile;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v2, :cond_2

    :try_start_3
    iget-object v2, p0, Lcom/loc/ee;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    iget-object v0, p0, Lcom/loc/ee;->a:Ljava/io/RandomAccessFile;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v0, :cond_1

    :try_start_5
    iget-object v0, p0, Lcom/loc/ee;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_1
    :goto_1
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_7
    monitor-exit p0

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v2

    :cond_2
    :try_start_8
    iget-object v2, p0, Lcom/loc/ee;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v2, v1}, Ljava/io/RandomAccessFile;->read([B)I

    invoke-static {v1}, Lcom/loc/di;->b([B)Ljava/util/BitSet;

    move-result-object v0

    invoke-virtual {p1}, Lcom/loc/dh;->b()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p1, Lcom/loc/dh;->b:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    :goto_2
    iget-object v2, p1, Lcom/loc/dh;->b:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    if-gt v1, v2, :cond_3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/loc/ee;->a:Ljava/io/RandomAccessFile;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v1, p0, Lcom/loc/ee;->a:Ljava/io/RandomAccessFile;

    invoke-static {v0}, Lcom/loc/di;->a(Ljava/util/BitSet;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :cond_4
    :try_start_9
    iget-object v1, p0, Lcom/loc/ee;->a:Ljava/io/RandomAccessFile;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz v1, :cond_5

    :try_start_a
    iget-object v1, p0, Lcom/loc/ee;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :cond_5
    :goto_3
    :try_start_b
    invoke-virtual {v0}, Ljava/util/BitSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/loc/ee;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_6
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/ee;->c:Ljava/io/File;

    monitor-exit p0

    goto :goto_0

    :catch_1
    move-exception v1

    iget-object v1, p0, Lcom/loc/ee;->a:Ljava/io/RandomAccessFile;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-eqz v1, :cond_5

    :try_start_c
    iget-object v1, p0, Lcom/loc/ee;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    :try_start_d
    iget-object v1, p0, Lcom/loc/ee;->a:Ljava/io/RandomAccessFile;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    if-eqz v1, :cond_5

    :try_start_e
    iget-object v1, p0, Lcom/loc/ee;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_3

    :catchall_2
    move-exception v0

    :try_start_f
    iget-object v1, p0, Lcom/loc/ee;->a:Ljava/io/RandomAccessFile;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    if-eqz v1, :cond_7

    :try_start_10
    iget-object v1, p0, Lcom/loc/ee;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_5
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    :cond_7
    :goto_4
    :try_start_11
    throw v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    :catch_5
    move-exception v1

    goto :goto_4

    :catch_6
    move-exception v1

    goto :goto_3

    :catch_7
    move-exception v0

    goto :goto_1
.end method
