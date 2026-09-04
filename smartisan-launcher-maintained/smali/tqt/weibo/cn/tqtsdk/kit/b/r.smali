.class public Ltqt/weibo/cn/tqtsdk/kit/b/r;
.super Ljava/lang/Object;
.source "TqtSecurityUtils.java"


.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 54
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    :goto_0
    return-object p0

    .line 59
    :cond_0
    :try_start_0
    const-string v0, "utf8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 61
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 62
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 63
    sget-object v3, Ltqt/weibo/cn/tqtsdk/kit/constants/KitConstants;->a:[B

    invoke-static {v0, v3, v2}, Ltqt/weibo/cn/tqtsdk/kit/b/r;->a([B[BLjava/io/BufferedOutputStream;)V

    .line 64
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V

    .line 65
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 66
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 67
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V

    .line 69
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    array-length v0, v3

    if-ge v1, v0, :cond_2

    .line 72
    aget-byte v0, v3, v1

    .line 73
    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 75
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 77
    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 79
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 82
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static final a([B[BLjava/io/BufferedOutputStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 29
    move v0, v1

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_2

    move v3, v1

    move v4, v1

    .line 31
    :goto_1
    const/16 v2, 0x40

    if-ge v3, v2, :cond_1

    .line 33
    rsub-int/lit8 v2, v3, 0x3f

    aget-byte v2, p1, v2

    rsub-int/lit8 v2, v2, 0x3f

    .line 36
    div-int/lit8 v5, v2, 0x8

    add-int/2addr v5, v0

    .line 37
    array-length v6, p0

    add-int/lit8 v6, v6, -0x1

    if-gt v5, v6, :cond_3

    .line 38
    aget-byte v5, p0, v5

    .line 39
    rem-int/lit8 v2, v2, 0x8

    .line 40
    rsub-int/lit8 v2, v2, 0x7

    shr-int v2, v5, v2

    and-int/lit8 v2, v2, 0x1

    .line 42
    :goto_2
    rem-int/lit8 v5, v3, 0x8

    rsub-int/lit8 v5, v5, 0x7

    shl-int/2addr v2, v5

    or-int/2addr v2, v4

    int-to-byte v2, v2

    .line 45
    rem-int/lit8 v4, v3, 0x8

    const/4 v5, 0x7

    if-ne v4, v5, :cond_0

    .line 46
    invoke-virtual {p2, v2}, Ljava/io/BufferedOutputStream;->write(I)V

    move v2, v1

    .line 31
    :cond_0
    add-int/lit8 v3, v3, 0x1

    move v4, v2

    goto :goto_1

    .line 29
    :cond_1
    add-int/lit8 v0, v0, 0x8

    goto :goto_0

    .line 51
    :cond_2
    return-void

    :cond_3
    move v2, v1

    goto :goto_2
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 88
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    :goto_0
    return-object p0

    .line 93
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    new-array v2, v1, [B

    move v1, v0

    .line 95
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 96
    add-int/lit8 v3, v1, 0x2

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 97
    div-int/lit8 v4, v1, 0x2

    const/16 v5, 0x10

    invoke-static {v3, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v4

    .line 95
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 100
    :cond_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 101
    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-direct {v3, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 102
    sget-object v4, Ltqt/weibo/cn/tqtsdk/kit/constants/KitConstants;->a:[B

    invoke-static {v2, v4, v3}, Ltqt/weibo/cn/tqtsdk/kit/b/r;->a([B[BLjava/io/BufferedOutputStream;)V

    .line 103
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V

    .line 104
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 105
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 106
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V

    .line 108
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 110
    array-length v3, v2

    :goto_2
    if-ge v0, v3, :cond_3

    aget-byte v4, v2, v0

    .line 111
    if-nez v4, :cond_2

    .line 110
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 114
    :cond_2
    invoke-virtual {v1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 120
    :catch_0
    move-exception v0

    .line 121
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 122
    const/4 p0, 0x0

    goto :goto_0

    .line 117
    :cond_3
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 119
    new-instance p0, Ljava/lang/String;

    const-string v1, "utf8"

    invoke-direct {p0, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
