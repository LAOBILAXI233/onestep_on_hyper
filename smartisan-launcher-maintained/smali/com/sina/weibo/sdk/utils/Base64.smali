.class public final Lcom/sina/weibo/sdk/utils/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


.field private static alphabet:[C

.field private static codes:[B


.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x100

    .line 3
    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/="

    .line 4
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 3
    sput-object v0, Lcom/sina/weibo/sdk/utils/Base64;->alphabet:[C

    .line 6
    new-array v0, v3, [B

    sput-object v0, Lcom/sina/weibo/sdk/utils/Base64;->codes:[B

    .line 9
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v3, :cond_0

    .line 12
    const/16 v0, 0x41

    :goto_1
    const/16 v1, 0x5a

    if-le v0, v1, :cond_1

    .line 15
    const/16 v0, 0x61

    :goto_2
    const/16 v1, 0x7a

    if-le v0, v1, :cond_2

    .line 18
    const/16 v0, 0x30

    :goto_3
    const/16 v1, 0x39

    if-le v0, v1, :cond_3

    .line 21
    sget-object v0, Lcom/sina/weibo/sdk/utils/Base64;->codes:[B

    const/16 v1, 0x2b

    const/16 v2, 0x3e

    aput-byte v2, v0, v1

    .line 22
    sget-object v0, Lcom/sina/weibo/sdk/utils/Base64;->codes:[B

    const/16 v1, 0x2f

    const/16 v2, 0x3f

    aput-byte v2, v0, v1

    .line 23
    return-void

    .line 10
    :cond_0
    sget-object v1, Lcom/sina/weibo/sdk/utils/Base64;->codes:[B

    const/4 v2, -0x1

    aput-byte v2, v1, v0

    .line 9
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 13
    :cond_1
    sget-object v1, Lcom/sina/weibo/sdk/utils/Base64;->codes:[B

    add-int/lit8 v2, v0, -0x41

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 16
    :cond_2
    sget-object v1, Lcom/sina/weibo/sdk/utils/Base64;->codes:[B

    add-int/lit8 v2, v0, 0x1a

    add-int/lit8 v2, v2, -0x61

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 15
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 19
    :cond_3
    sget-object v1, Lcom/sina/weibo/sdk/utils/Base64;->codes:[B

    add-int/lit8 v2, v0, 0x34

    add-int/lit8 v2, v2, -0x30

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 18
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode([B)[B
    .locals 8

    .prologue
    const/16 v4, 0x3d

    const/4 v1, 0x0

    .line 29
    array-length v0, p0

    add-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x3

    .line 30
    array-length v2, p0

    if-lez v2, :cond_0

    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    aget-byte v2, p0, v2

    if-ne v2, v4, :cond_0

    .line 31
    add-int/lit8 v0, v0, -0x1

    .line 33
    :cond_0
    array-length v2, p0

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    array-length v2, p0

    add-int/lit8 v2, v2, -0x2

    aget-byte v2, p0, v2

    if-ne v2, v4, :cond_1

    .line 34
    add-int/lit8 v0, v0, -0x1

    .line 36
    :cond_1
    new-array v5, v0, [B

    move v0, v1

    move v2, v1

    move v3, v1

    .line 40
    :goto_0
    array-length v4, p0

    if-lt v0, v4, :cond_2

    .line 52
    array-length v0, v5

    if-eq v1, v0, :cond_4

    .line 53
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "miscalculated data length!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_2
    sget-object v4, Lcom/sina/weibo/sdk/utils/Base64;->codes:[B

    aget-byte v6, p0, v0

    and-int/lit16 v6, v6, 0xff

    aget-byte v4, v4, v6

    .line 42
    if-ltz v4, :cond_3

    .line 43
    shl-int/lit8 v6, v2, 0x6

    .line 44
    add-int/lit8 v2, v3, 0x6

    .line 45
    or-int v3, v6, v4

    .line 46
    const/16 v4, 0x8

    if-lt v2, v4, :cond_5

    .line 47
    add-int/lit8 v4, v2, -0x8

    .line 48
    add-int/lit8 v2, v1, 0x1

    shr-int v6, v3, v4

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v5, v1

    move v1, v2

    move v2, v3

    move v3, v4

    .line 40
    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 55
    :cond_4
    return-object v5

    :cond_5
    move v7, v3

    move v3, v2

    move v2, v7

    goto :goto_1
.end method

.method public static encode([B)[C
    .locals 11

    .prologue
    const/16 v7, 0x40

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 62
    array-length v0, p0

    add-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x4

    new-array v8, v0, [C

    move v0, v1

    move v2, v1

    .line 64
    :goto_0
    array-length v3, p0

    if-lt v2, v3, :cond_0

    .line 86
    return-object v8

    .line 67
    :cond_0
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    .line 68
    shl-int/lit8 v3, v3, 0x8

    .line 69
    add-int/lit8 v4, v2, 0x1

    array-length v6, p0

    if-ge v4, v6, :cond_4

    .line 70
    add-int/lit8 v4, v2, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    move v4, v5

    .line 73
    :goto_1
    shl-int/lit8 v3, v3, 0x8

    .line 74
    add-int/lit8 v6, v2, 0x2

    array-length v9, p0

    if-ge v6, v9, :cond_3

    .line 75
    add-int/lit8 v6, v2, 0x2

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v3, v6

    move v6, v5

    .line 78
    :goto_2
    add-int/lit8 v9, v0, 0x3

    sget-object v10, Lcom/sina/weibo/sdk/utils/Base64;->alphabet:[C

    if-eqz v6, :cond_1

    and-int/lit8 v6, v3, 0x3f

    :goto_3
    aget-char v6, v10, v6

    aput-char v6, v8, v9

    .line 79
    shr-int/lit8 v6, v3, 0x6

    .line 80
    add-int/lit8 v9, v0, 0x2

    sget-object v10, Lcom/sina/weibo/sdk/utils/Base64;->alphabet:[C

    if-eqz v4, :cond_2

    and-int/lit8 v3, v6, 0x3f

    :goto_4
    aget-char v3, v10, v3

    aput-char v3, v8, v9

    .line 81
    shr-int/lit8 v3, v6, 0x6

    .line 82
    add-int/lit8 v4, v0, 0x1

    sget-object v6, Lcom/sina/weibo/sdk/utils/Base64;->alphabet:[C

    and-int/lit8 v9, v3, 0x3f

    aget-char v6, v6, v9

    aput-char v6, v8, v4

    .line 83
    shr-int/lit8 v3, v3, 0x6

    .line 84
    add-int/lit8 v4, v0, 0x0

    sget-object v6, Lcom/sina/weibo/sdk/utils/Base64;->alphabet:[C

    and-int/lit8 v3, v3, 0x3f

    aget-char v3, v6, v3

    aput-char v3, v8, v4

    .line 64
    add-int/lit8 v2, v2, 0x3

    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_1
    move v6, v7

    .line 78
    goto :goto_3

    :cond_2
    move v3, v7

    .line 80
    goto :goto_4

    :cond_3
    move v6, v1

    goto :goto_2

    :cond_4
    move v4, v1

    goto :goto_1
.end method

.method public static encodebyte([B)[B
    .locals 11

    .prologue
    const/16 v7, 0x40

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 93
    array-length v0, p0

    add-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x4

    new-array v8, v0, [B

    move v0, v1

    move v2, v1

    .line 95
    :goto_0
    array-length v3, p0

    if-lt v2, v3, :cond_0

    .line 117
    return-object v8

    .line 98
    :cond_0
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    .line 99
    shl-int/lit8 v3, v3, 0x8

    .line 100
    add-int/lit8 v4, v2, 0x1

    array-length v6, p0

    if-ge v4, v6, :cond_4

    .line 101
    add-int/lit8 v4, v2, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    move v4, v5

    .line 104
    :goto_1
    shl-int/lit8 v3, v3, 0x8

    .line 105
    add-int/lit8 v6, v2, 0x2

    array-length v9, p0

    if-ge v6, v9, :cond_3

    .line 106
    add-int/lit8 v6, v2, 0x2

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v3, v6

    move v6, v5

    .line 109
    :goto_2
    add-int/lit8 v9, v0, 0x3

    sget-object v10, Lcom/sina/weibo/sdk/utils/Base64;->alphabet:[C

    if-eqz v6, :cond_1

    and-int/lit8 v6, v3, 0x3f

    :goto_3
    aget-char v6, v10, v6

    int-to-byte v6, v6

    aput-byte v6, v8, v9

    .line 110
    shr-int/lit8 v6, v3, 0x6

    .line 111
    add-int/lit8 v9, v0, 0x2

    sget-object v10, Lcom/sina/weibo/sdk/utils/Base64;->alphabet:[C

    if-eqz v4, :cond_2

    and-int/lit8 v3, v6, 0x3f

    :goto_4
    aget-char v3, v10, v3

    int-to-byte v3, v3

    aput-byte v3, v8, v9

    .line 112
    shr-int/lit8 v3, v6, 0x6

    .line 113
    add-int/lit8 v4, v0, 0x1

    sget-object v6, Lcom/sina/weibo/sdk/utils/Base64;->alphabet:[C

    and-int/lit8 v9, v3, 0x3f

    aget-char v6, v6, v9

    int-to-byte v6, v6

    aput-byte v6, v8, v4

    .line 114
    shr-int/lit8 v3, v3, 0x6

    .line 115
    add-int/lit8 v4, v0, 0x0

    sget-object v6, Lcom/sina/weibo/sdk/utils/Base64;->alphabet:[C

    and-int/lit8 v3, v3, 0x3f

    aget-char v3, v6, v3

    int-to-byte v3, v3

    aput-byte v3, v8, v4

    .line 95
    add-int/lit8 v2, v2, 0x3

    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_1
    move v6, v7

    .line 109
    goto :goto_3

    :cond_2
    move v3, v7

    .line 111
    goto :goto_4

    :cond_3
    move v6, v1

    goto :goto_2

    :cond_4
    move v4, v1

    goto :goto_1
.end method
