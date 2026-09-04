.class public Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;
.super Lcom/fasterxml/jackson/databind/ser/std/StdScalarSerializer;
.source "UUIDSerializer.java"


.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/ser/std/StdScalarSerializer",
        "<",
        "Ljava/util/UUID;",
        ">;"
    }
.end annotation


.field static final HEX_CHARS:[C


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string v0, "0123456789abcdef"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;->HEX_CHARS:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Ljava/util/UUID;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdScalarSerializer;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method private static final _appendInt(I[BI)V
    .locals 1
    .param p0, "value"    # I
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 107
    shr-int/lit8 v0, p0, 0x18

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 108
    add-int/lit8 p2, p2, 0x1

    shr-int/lit8 v0, p0, 0x10

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 109
    add-int/lit8 p2, p2, 0x1

    shr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 110
    add-int/lit8 p2, p2, 0x1

    int-to-byte v0, p0

    aput-byte v0, p1, p2

    .line 111
    return-void
.end method

.method private static _appendInt(I[CI)V
    .locals 1
    .param p0, "bits"    # I
    .param p1, "ch"    # [C
    .param p2, "offset"    # I

    .prologue
    .line 80
    shr-int/lit8 v0, p0, 0x10

    invoke-static {v0, p1, p2}, Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;->_appendShort(I[CI)V

    .line 81
    add-int/lit8 v0, p2, 0x4

    invoke-static {p0, p1, v0}, Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;->_appendShort(I[CI)V

    .line 82
    return-void
.end method

.method private static _appendShort(I[CI)V
    .locals 2
    .param p0, "bits"    # I
    .param p1, "ch"    # [C
    .param p2, "offset"    # I

    .prologue
    .line 86
    sget-object v0, Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;->HEX_CHARS:[C

    shr-int/lit8 v1, p0, 0xc

    and-int/lit8 v1, v1, 0xf

    aget-char v0, v0, v1

    aput-char v0, p1, p2

    .line 87
    add-int/lit8 p2, p2, 0x1

    sget-object v0, Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;->HEX_CHARS:[C

    shr-int/lit8 v1, p0, 0x8

    and-int/lit8 v1, v1, 0xf

    aget-char v0, v0, v1

    aput-char v0, p1, p2

    .line 88
    add-int/lit8 p2, p2, 0x1

    sget-object v0, Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;->HEX_CHARS:[C

    shr-int/lit8 v1, p0, 0x4

    and-int/lit8 v1, v1, 0xf

    aget-char v0, v0, v1

    aput-char v0, p1, p2

    .line 89
    add-int/lit8 p2, p2, 0x1

    sget-object v0, Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;->HEX_CHARS:[C

    and-int/lit8 v1, p0, 0xf

    aget-char v0, v0, v1

    aput-char v0, p1, p2

    .line 91
    return-void
.end method

.method private static final _asBytes(Ljava/util/UUID;)[B
    .locals 9
    .param p0, "uuid"    # Ljava/util/UUID;

    .prologue
    const/16 v8, 0x20

    .line 95
    const/16 v1, 0x10

    new-array v0, v1, [B

    .line 96
    .local v0, "buffer":[B
    invoke-virtual {p0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v2

    .line 97
    .local v2, "hi":J
    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v4

    .line 98
    .local v4, "lo":J
    shr-long v6, v2, v8

    long-to-int v1, v6

    const/4 v6, 0x0

    invoke-static {v1, v0, v6}, Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;->_appendInt(I[BI)V

    .line 99
    long-to-int v1, v2

    const/4 v6, 0x4

    invoke-static {v1, v0, v6}, Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;->_appendInt(I[BI)V

    .line 100
    shr-long v6, v4, v8

    long-to-int v1, v6

    const/16 v6, 0x8

    invoke-static {v1, v0, v6}, Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;->_appendInt(I[BI)V

    .line 101
    long-to-int v1, v4

    const/16 v6, 0xc

    invoke-static {v1, v0, v6}, Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;->_appendInt(I[BI)V

    .line 102
    return-object v0
.end method


.method public bridge synthetic isEmpty(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 17
    check-cast p2, Ljava/util/UUID;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;->isEmpty(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/util/UUID;)Z

    move-result v0

    return v0
.end method

.method public isEmpty(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/util/UUID;)Z
    .locals 6
    .param p1, "prov"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .param p2, "value"    # Ljava/util/UUID;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v0, 0x1

    .line 28
    if-nez p2, :cond_1

    .line 36
    :cond_0
    :goto_0
    return v0

    .line 32
    :cond_1
    invoke-virtual {p2}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    invoke-virtual {p2}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 36
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "x2"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 17
    check-cast p1, Ljava/util/UUID;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;->serialize(Ljava/util/UUID;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    return-void
.end method

.method public serialize(Ljava/util/UUID;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 12
    .param p1, "value"    # Ljava/util/UUID;
    .param p2, "gen"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "provider"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x24

    const/16 v10, 0x20

    const/4 v9, 0x0

    const/16 v8, 0x2d

    .line 44
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->canWriteBinaryNatively()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 50
    instance-of v6, p2, Lcom/fasterxml/jackson/databind/util/TokenBuffer;

    if-nez v6, :cond_0

    .line 51
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;->_asBytes(Ljava/util/UUID;)[B

    move-result-object v6

    invoke-virtual {p2, v6}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeBinary([B)V

    .line 76
    :goto_0
    return-void

    .line 59
    :cond_0
    new-array v0, v11, [C

    .line 60
    .local v0, "ch":[C
    invoke-virtual {p1}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v4

    .line 61
    .local v4, "msb":J
    shr-long v6, v4, v10

    long-to-int v6, v6

    invoke-static {v6, v0, v9}, Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;->_appendInt(I[CI)V

    .line 62
    const/16 v6, 0x8

    aput-char v8, v0, v6

    .line 63
    long-to-int v1, v4

    .line 64
    .local v1, "i":I
    ushr-int/lit8 v6, v1, 0x10

    const/16 v7, 0x9

    invoke-static {v6, v0, v7}, Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;->_appendShort(I[CI)V

    .line 65
    const/16 v6, 0xd

    aput-char v8, v0, v6

    .line 66
    const/16 v6, 0xe

    invoke-static {v1, v0, v6}, Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;->_appendShort(I[CI)V

    .line 67
    const/16 v6, 0x12

    aput-char v8, v0, v6

    .line 69
    invoke-virtual {p1}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    .line 70
    .local v2, "lsb":J
    const/16 v6, 0x30

    ushr-long v6, v2, v6

    long-to-int v6, v6

    const/16 v7, 0x13

    invoke-static {v6, v0, v7}, Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;->_appendShort(I[CI)V

    .line 71
    const/16 v6, 0x17

    aput-char v8, v0, v6

    .line 72
    ushr-long v6, v2, v10

    long-to-int v6, v6

    const/16 v7, 0x18

    invoke-static {v6, v0, v7}, Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;->_appendShort(I[CI)V

    .line 73
    long-to-int v6, v2

    const/16 v7, 0x1c

    invoke-static {v6, v0, v7}, Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;->_appendInt(I[CI)V

    .line 75
    invoke-virtual {p2, v0, v9, v11}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString([CII)V

    goto :goto_0
.end method
