.class public Lcom/smartisanos/home/net/CustomHttpRequest$Base64;
.super Ljava/lang/Object;
.source "CustomHttpRequest.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/home/net/CustomHttpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Base64"
.end annotation


.field private static final EQUALS_SIGN:B = 0x3dt

.field private static final PREFERRED_ENCODING:Ljava/lang/String; = "US-ASCII"

.field private static final _STANDARD_ALPHABET:[B


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 454
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/smartisanos/home/net/CustomHttpRequest$Base64;->_STANDARD_ALPHABET:[B

    return-void

    :array_0
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 468
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 469
    return-void
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 546
    :try_start_0
    const-string v2, "US-ASCII"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 550
    .local v0, "bytes":[B
    :goto_0
    invoke-static {v0}, Lcom/smartisanos/home/net/CustomHttpRequest$Base64;->encodeBytes([B)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 547
    .end local v0    # "bytes":[B
    :catch_0
    move-exception v1

    .line 548
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .restart local v0    # "bytes":[B
    goto :goto_0
.end method

.method private static encode3to4([BII[BI)[B
    .locals 6
    .param p0, "source"    # [B
    .param p1, "srcOffset"    # I
    .param p2, "numSigBytes"    # I
    .param p3, "destination"    # [B
    .param p4, "destOffset"    # I

    .prologue
    const/16 v5, 0x3d

    const/4 v2, 0x0

    .line 504
    sget-object v0, Lcom/smartisanos/home/net/CustomHttpRequest$Base64;->_STANDARD_ALPHABET:[B

    .line 506
    .local v0, "ALPHABET":[B
    if-lez p2, :cond_1

    aget-byte v3, p0, p1

    shl-int/lit8 v3, v3, 0x18

    ushr-int/lit8 v3, v3, 0x8

    move v4, v3

    :goto_0
    const/4 v3, 0x1

    if-le p2, v3, :cond_2

    add-int/lit8 v3, p1, 0x1

    aget-byte v3, p0, v3

    shl-int/lit8 v3, v3, 0x18

    ushr-int/lit8 v3, v3, 0x10

    :goto_1
    or-int/2addr v3, v4

    const/4 v4, 0x2

    if-le p2, v4, :cond_0

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    shl-int/lit8 v2, v2, 0x18

    ushr-int/lit8 v2, v2, 0x18

    :cond_0
    or-int v1, v3, v2

    .line 510
    .local v1, "inBuff":I
    packed-switch p2, :pswitch_data_0

    .line 533
    :goto_2
    return-object p3

    .end local v1    # "inBuff":I
    :cond_1
    move v4, v2

    .line 506
    goto :goto_0

    :cond_2
    move v3, v2

    goto :goto_1

    .line 512
    .restart local v1    # "inBuff":I
    :pswitch_0
    ushr-int/lit8 v2, v1, 0x12

    aget-byte v2, v0, v2

    aput-byte v2, p3, p4

    .line 513
    add-int/lit8 v2, p4, 0x1

    ushr-int/lit8 v3, v1, 0xc

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v0, v3

    aput-byte v3, p3, v2

    .line 514
    add-int/lit8 v2, p4, 0x2

    ushr-int/lit8 v3, v1, 0x6

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v0, v3

    aput-byte v3, p3, v2

    .line 515
    add-int/lit8 v2, p4, 0x3

    and-int/lit8 v3, v1, 0x3f

    aget-byte v3, v0, v3

    aput-byte v3, p3, v2

    goto :goto_2

    .line 519
    :pswitch_1
    ushr-int/lit8 v2, v1, 0x12

    aget-byte v2, v0, v2

    aput-byte v2, p3, p4

    .line 520
    add-int/lit8 v2, p4, 0x1

    ushr-int/lit8 v3, v1, 0xc

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v0, v3

    aput-byte v3, p3, v2

    .line 521
    add-int/lit8 v2, p4, 0x2

    ushr-int/lit8 v3, v1, 0x6

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v0, v3

    aput-byte v3, p3, v2

    .line 522
    add-int/lit8 v2, p4, 0x3

    aput-byte v5, p3, v2

    goto :goto_2

    .line 526
    :pswitch_2
    ushr-int/lit8 v2, v1, 0x12

    aget-byte v2, v0, v2

    aput-byte v2, p3, p4

    .line 527
    add-int/lit8 v2, p4, 0x1

    ushr-int/lit8 v3, v1, 0xc

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v0, v3

    aput-byte v3, p3, v2

    .line 528
    add-int/lit8 v2, p4, 0x2

    aput-byte v5, p3, v2

    .line 529
    add-int/lit8 v2, p4, 0x3

    aput-byte v5, p3, v2

    goto :goto_2

    .line 510
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static encodeBytes([B)Ljava/lang/String;
    .locals 2
    .param p0, "source"    # [B

    .prologue
    .line 566
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/smartisanos/home/net/CustomHttpRequest$Base64;->encodeBytes([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeBytes([BII)Ljava/lang/String;
    .locals 4
    .param p0, "source"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I

    .prologue
    .line 586
    invoke-static {p0, p1, p2}, Lcom/smartisanos/home/net/CustomHttpRequest$Base64;->encodeBytesToBytes([BII)[B

    move-result-object v0

    .line 588
    .local v0, "encoded":[B
    :try_start_0
    new-instance v2, Ljava/lang/String;

    const-string v3, "US-ASCII"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 590
    :goto_0
    return-object v2

    .line 589
    :catch_0
    move-exception v1

    .line 590
    .local v1, "uue":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method public static encodeBytesToBytes([BII)[B
    .locals 11
    .param p0, "source"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I

    .prologue
    const/4 v9, 0x3

    const/4 v7, 0x0

    .line 615
    if-nez p0, :cond_0

    .line 616
    new-instance v6, Ljava/lang/NullPointerException;

    const-string v7, "Cannot serialize a null array."

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 618
    :cond_0
    if-gez p1, :cond_1

    .line 619
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot have negative offset: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 622
    :cond_1
    if-gez p2, :cond_2

    .line 623
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot have length offset: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 625
    :cond_2
    add-int v6, p1, p2

    array-length v8, p0

    if-le v6, v8, :cond_3

    .line 626
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v8, "Cannot have offset of %d and length of %d with array of length %d"

    new-array v9, v9, [Ljava/lang/Object;

    .line 630
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v7

    const/4 v7, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v7

    const/4 v7, 0x2

    array-length v10, p0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v7

    .line 628
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 633
    :cond_3
    div-int/lit8 v6, p2, 0x3

    mul-int/lit8 v8, v6, 0x4

    rem-int/lit8 v6, p2, 0x3

    if-lez v6, :cond_4

    const/4 v6, 0x4

    :goto_0
    add-int v2, v8, v6

    .line 635
    .local v2, "encLen":I
    new-array v5, v2, [B

    .line 637
    .local v5, "outBuff":[B
    const/4 v0, 0x0

    .line 638
    .local v0, "d":I
    const/4 v1, 0x0

    .line 639
    .local v1, "e":I
    add-int/lit8 v4, p2, -0x2

    .line 640
    .local v4, "len2":I
    :goto_1
    if-ge v0, v4, :cond_5

    .line 641
    add-int v6, v0, p1

    invoke-static {p0, v6, v9, v5, v1}, Lcom/smartisanos/home/net/CustomHttpRequest$Base64;->encode3to4([BII[BI)[B

    .line 640
    add-int/lit8 v0, v0, 0x3

    add-int/lit8 v1, v1, 0x4

    goto :goto_1

    .end local v0    # "d":I
    .end local v1    # "e":I
    .end local v2    # "encLen":I
    .end local v4    # "len2":I
    .end local v5    # "outBuff":[B
    :cond_4
    move v6, v7

    .line 633
    goto :goto_0

    .line 643
    .restart local v0    # "d":I
    .restart local v1    # "e":I
    .restart local v2    # "encLen":I
    .restart local v4    # "len2":I
    .restart local v5    # "outBuff":[B
    :cond_5
    if-ge v0, p2, :cond_6

    .line 644
    add-int v6, v0, p1

    sub-int v8, p2, v0

    invoke-static {p0, v6, v8, v5, v1}, Lcom/smartisanos/home/net/CustomHttpRequest$Base64;->encode3to4([BII[BI)[B

    .line 645
    add-int/lit8 v1, v1, 0x4

    .line 648
    :cond_6
    array-length v6, v5

    add-int/lit8 v6, v6, -0x1

    if-gt v1, v6, :cond_7

    .line 649
    new-array v3, v1, [B

    .line 650
    .local v3, "finalOut":[B
    invoke-static {v5, v7, v3, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 653
    .end local v3    # "finalOut":[B
    :goto_2
    return-object v3

    :cond_7
    move-object v3, v5

    goto :goto_2
.end method
