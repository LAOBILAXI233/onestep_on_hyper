.class public Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;
.super Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer;
.source "UUIDDeserializer.java"


.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer",
        "<",
        "Ljava/util/UUID;",
        ">;"
    }
.end annotation


.field static final HEX_DIGITS:[I

.field private static final serialVersionUID:J = 0x1L


.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 17
    const/16 v1, 0x7f

    new-array v1, v1, [I

    sput-object v1, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->HEX_DIGITS:[I

    .line 19
    sget-object v1, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->HEX_DIGITS:[I

    const/4 v2, -0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 20
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    sget-object v1, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->HEX_DIGITS:[I

    add-int/lit8 v2, v0, 0x30

    aput v0, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x6

    if-ge v0, v1, :cond_1

    .line 22
    sget-object v1, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->HEX_DIGITS:[I

    add-int/lit8 v2, v0, 0x61

    add-int/lit8 v3, v0, 0xa

    aput v3, v1, v2

    .line 23
    sget-object v1, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->HEX_DIGITS:[I

    add-int/lit8 v2, v0, 0x41

    add-int/lit8 v3, v0, 0xa

    aput v3, v1, v2

    .line 21
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 25
    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Ljava/util/UUID;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method private _badFormat(Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/util/UUID;
    .locals 3
    .param p1, "uuidStr"    # Ljava/lang/String;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->handledType()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "UUID has to be represented by standard 36-char representation"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p2, v0, p1, v1, v2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleWeirdStringValue(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/UUID;

    return-object v0
.end method

.method private _fromBytes([BLcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/util/UUID;
    .locals 6
    .param p1, "bytes"    # [B
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 121
    array-length v0, p1

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 122
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getParser()Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can only construct UUIDs from byte[16]; got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->handledType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v0, v1, p1, v2}, Lcom/fasterxml/jackson/databind/exc/InvalidFormatException;->from(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/exc/InvalidFormatException;

    move-result-object v0

    throw v0

    .line 126
    :cond_0
    new-instance v0, Ljava/util/UUID;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->_long([BI)J

    move-result-wide v2

    const/16 v1, 0x8

    invoke-static {p1, v1}, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->_long([BI)J

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Ljava/util/UUID;-><init>(JJ)V

    return-object v0
.end method

.method private static _int([BI)I
    .locals 2
    .param p0, "b"    # [B
    .param p1, "offset"    # I

    .prologue
    .line 138
    aget-byte v0, p0, p1

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method private static _long([BI)J
    .locals 7
    .param p0, "b"    # [B
    .param p1, "offset"    # I

    .prologue
    const/16 v6, 0x20

    .line 130
    invoke-static {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->_int([BI)I

    move-result v4

    int-to-long v4, v4

    shl-long v0, v4, v6

    .line 131
    .local v0, "l1":J
    add-int/lit8 v4, p1, 0x4

    invoke-static {p0, v4}, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->_int([BI)I

    move-result v4

    int-to-long v2, v4

    .line 133
    .local v2, "l2":J
    shl-long v4, v2, v6

    ushr-long v2, v4, v6

    .line 134
    or-long v4, v0, v2

    return-wide v4
.end method


.method _badChar(Ljava/lang/String;ILcom/fasterxml/jackson/databind/DeserializationContext;C)I
    .locals 5
    .param p1, "uuidStr"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p4, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->handledType()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "Non-hex character \'%c\' (value 0x%s), not valid for UUID String"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, p1, v0, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->weirdStringException(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v0

    throw v0
.end method

.method protected bridge synthetic _deserialize(Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->_deserialize(Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method

.method protected _deserialize(Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/util/UUID;
    .locals 13
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v11, 0x24

    if-eq v10, v11, :cond_1

    .line 38
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v11, 0x18

    if-ne v10, v11, :cond_0

    .line 39
    invoke-static {}, Lcom/fasterxml/jackson/core/Base64Variants;->getDefaultVariant()Lcom/fasterxml/jackson/core/Base64Variant;

    move-result-object v10

    invoke-virtual {v10, p1}, Lcom/fasterxml/jackson/core/Base64Variant;->decode(Ljava/lang/String;)[B

    move-result-object v3

    .line 40
    .local v3, "stuff":[B
    invoke-direct {p0, v3, p2}, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->_fromBytes([BLcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/util/UUID;

    move-result-object v10

    .line 63
    .end local v3    # "stuff":[B
    :goto_0
    return-object v10

    .line 42
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->_badFormat(Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/util/UUID;

    move-result-object v10

    goto :goto_0

    .line 46
    :cond_1
    const/16 v10, 0x8

    invoke-virtual {p1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x2d

    if-ne v10, v11, :cond_2

    const/16 v10, 0xd

    invoke-virtual {p1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x2d

    if-ne v10, v11, :cond_2

    const/16 v10, 0x12

    invoke-virtual {p1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x2d

    if-ne v10, v11, :cond_2

    const/16 v10, 0x17

    invoke-virtual {p1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x2d

    if-eq v10, v11, :cond_3

    .line 48
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->_badFormat(Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/util/UUID;

    .line 50
    :cond_3
    const/4 v10, 0x0

    invoke-virtual {p0, p1, v10, p2}, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->intFromChars(Ljava/lang/String;ILcom/fasterxml/jackson/databind/DeserializationContext;)I

    move-result v10

    int-to-long v4, v10

    .line 51
    .local v4, "l1":J
    const/16 v10, 0x20

    shl-long/2addr v4, v10

    .line 52
    const/16 v10, 0x9

    invoke-virtual {p0, p1, v10, p2}, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->shortFromChars(Ljava/lang/String;ILcom/fasterxml/jackson/databind/DeserializationContext;)I

    move-result v10

    int-to-long v10, v10

    const/16 v12, 0x10

    shl-long v6, v10, v12

    .line 53
    .local v6, "l2":J
    const/16 v10, 0xe

    invoke-virtual {p0, p1, v10, p2}, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->shortFromChars(Ljava/lang/String;ILcom/fasterxml/jackson/databind/DeserializationContext;)I

    move-result v10

    int-to-long v10, v10

    or-long/2addr v6, v10

    .line 54
    add-long v0, v4, v6

    .line 56
    .local v0, "hi":J
    const/16 v10, 0x13

    invoke-virtual {p0, p1, v10, p2}, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->shortFromChars(Ljava/lang/String;ILcom/fasterxml/jackson/databind/DeserializationContext;)I

    move-result v10

    shl-int/lit8 v10, v10, 0x10

    const/16 v11, 0x18

    invoke-virtual {p0, p1, v11, p2}, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->shortFromChars(Ljava/lang/String;ILcom/fasterxml/jackson/databind/DeserializationContext;)I

    move-result v11

    or-int v2, v10, v11

    .line 57
    .local v2, "i1":I
    int-to-long v4, v2

    .line 58
    const/16 v10, 0x20

    shl-long/2addr v4, v10

    .line 59
    const/16 v10, 0x1c

    invoke-virtual {p0, p1, v10, p2}, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->intFromChars(Ljava/lang/String;ILcom/fasterxml/jackson/databind/DeserializationContext;)I

    move-result v10

    int-to-long v6, v10

    .line 60
    const/16 v10, 0x20

    shl-long v10, v6, v10

    const/16 v12, 0x20

    ushr-long v6, v10, v12

    .line 61
    or-long v8, v4, v6

    .line 63
    .local v8, "lo":J
    new-instance v10, Ljava/util/UUID;

    invoke-direct {v10, v0, v1, v8, v9}, Ljava/util/UUID;-><init>(JJ)V

    goto :goto_0
.end method

.method protected bridge synthetic _deserializeEmbedded(Ljava/lang/Object;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->_deserializeEmbedded(Ljava/lang/Object;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method

.method protected _deserializeEmbedded(Ljava/lang/Object;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/util/UUID;
    .locals 1
    .param p1, "ob"    # Ljava/lang/Object;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    instance-of v0, p1, [B

    if-eqz v0, :cond_0

    .line 70
    check-cast p1, [B

    .end local p1    # "ob":Ljava/lang/Object;
    check-cast p1, [B

    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->_fromBytes([BLcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/util/UUID;

    move-result-object v0

    .line 73
    :goto_0
    return-object v0

    .line 72
    .restart local p1    # "ob":Ljava/lang/Object;
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer;->_deserializeEmbedded(Ljava/lang/Object;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    .line 73
    const/4 v0, 0x0

    goto :goto_0
.end method

.method byteFromChars(Ljava/lang/String;ILcom/fasterxml/jackson/databind/DeserializationContext;)I
    .locals 6
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x7f

    .line 96
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 97
    .local v0, "c1":C
    add-int/lit8 v3, p2, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 99
    .local v1, "c2":C
    if-gt v0, v5, :cond_0

    if-gt v1, v5, :cond_0

    .line 100
    sget-object v3, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->HEX_DIGITS:[I

    aget v3, v3, v0

    shl-int/lit8 v3, v3, 0x4

    sget-object v4, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->HEX_DIGITS:[I

    aget v4, v4, v1

    or-int v2, v3, v4

    .line 101
    .local v2, "hex":I
    if-ltz v2, :cond_0

    .line 108
    .end local v2    # "hex":I
    :goto_0
    return v2

    .line 105
    :cond_0
    if-gt v0, v5, :cond_1

    sget-object v3, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->HEX_DIGITS:[I

    aget v3, v3, v0

    if-gez v3, :cond_2

    .line 106
    :cond_1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->_badChar(Ljava/lang/String;ILcom/fasterxml/jackson/databind/DeserializationContext;C)I

    move-result v2

    goto :goto_0

    .line 108
    :cond_2
    add-int/lit8 v3, p2, 0x1

    invoke-virtual {p0, p1, v3, p3, v1}, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->_badChar(Ljava/lang/String;ILcom/fasterxml/jackson/databind/DeserializationContext;C)I

    move-result v2

    goto :goto_0
.end method

.method intFromChars(Ljava/lang/String;ILcom/fasterxml/jackson/databind/DeserializationContext;)I
    .locals 2
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 84
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->byteFromChars(Ljava/lang/String;ILcom/fasterxml/jackson/databind/DeserializationContext;)I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p2, 0x2

    invoke-virtual {p0, p1, v1, p3}, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->byteFromChars(Ljava/lang/String;ILcom/fasterxml/jackson/databind/DeserializationContext;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x4

    invoke-virtual {p0, p1, v1, p3}, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->byteFromChars(Ljava/lang/String;ILcom/fasterxml/jackson/databind/DeserializationContext;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x6

    invoke-virtual {p0, p1, v1, p3}, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->byteFromChars(Ljava/lang/String;ILcom/fasterxml/jackson/databind/DeserializationContext;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method shortFromChars(Ljava/lang/String;ILcom/fasterxml/jackson/databind/DeserializationContext;)I
    .locals 2
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 91
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->byteFromChars(Ljava/lang/String;ILcom/fasterxml/jackson/databind/DeserializationContext;)I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p2, 0x2

    invoke-virtual {p0, p1, v1, p3}, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->byteFromChars(Ljava/lang/String;ILcom/fasterxml/jackson/databind/DeserializationContext;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
