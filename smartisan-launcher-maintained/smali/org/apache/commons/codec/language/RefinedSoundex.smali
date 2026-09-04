.class public Lorg/apache/commons/codec/language/RefinedSoundex;
.super Ljava/lang/Object;
.source "RefinedSoundex.java"

.implements Lorg/apache/commons/codec/StringEncoder;


.field public static final US_ENGLISH:Lorg/apache/commons/codec/language/RefinedSoundex;

.field private static final US_ENGLISH_MAPPING:[C

.field public static final US_ENGLISH_MAPPING_STRING:Ljava/lang/String; = "01360240043788015936020505"


.field private final soundexMapping:[C


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-string v0, "01360240043788015936020505"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/apache/commons/codec/language/RefinedSoundex;->US_ENGLISH_MAPPING:[C

    .line 57
    new-instance v0, Lorg/apache/commons/codec/language/RefinedSoundex;

    invoke-direct {v0}, Lorg/apache/commons/codec/language/RefinedSoundex;-><init>()V

    sput-object v0, Lorg/apache/commons/codec/language/RefinedSoundex;->US_ENGLISH:Lorg/apache/commons/codec/language/RefinedSoundex;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    sget-object v0, Lorg/apache/commons/codec/language/RefinedSoundex;->US_ENGLISH_MAPPING:[C

    iput-object v0, p0, Lorg/apache/commons/codec/language/RefinedSoundex;->soundexMapping:[C

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "mapping"    # Ljava/lang/String;

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/codec/language/RefinedSoundex;->soundexMapping:[C

    .line 91
    return-void
.end method

.method public constructor <init>([C)V
    .locals 3
    .param p1, "mapping"    # [C

    .prologue
    const/4 v2, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    array-length v0, p1

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/apache/commons/codec/language/RefinedSoundex;->soundexMapping:[C

    .line 78
    iget-object v0, p0, Lorg/apache/commons/codec/language/RefinedSoundex;->soundexMapping:[C

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 79
    return-void
.end method


.method public difference(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "s1"    # Ljava/lang/String;
    .param p2, "s2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/EncoderException;
        }
    .end annotation

    .prologue
    .line 116
    invoke-static {p0, p1, p2}, Lorg/apache/commons/codec/language/SoundexUtils;->difference(Lorg/apache/commons/codec/StringEncoder;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/EncoderException;
        }
    .end annotation

    .prologue
    .line 134
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 135
    new-instance v0, Lorg/apache/commons/codec/EncoderException;

    const-string v1, "Parameter supplied to RefinedSoundex encode is not of type java.lang.String"

    invoke-direct {v0, v1}, Lorg/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_0
    check-cast p1, Ljava/lang/String;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/language/RefinedSoundex;->soundex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 149
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/language/RefinedSoundex;->soundex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getMappingCode(C)C
    .locals 2
    .param p1, "c"    # C

    .prologue
    .line 162
    invoke-static {p1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    const/4 v0, 0x0

    .line 165
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/codec/language/RefinedSoundex;->soundexMapping:[C

    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    add-int/lit8 v1, v1, -0x41

    aget-char v0, v0, v1

    goto :goto_0
.end method

.method public soundex(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 176
    if-nez p1, :cond_0

    .line 177
    const/4 v4, 0x0

    .line 203
    :goto_0
    return-object v4

    .line 179
    :cond_0
    invoke-static {p1}, Lorg/apache/commons/codec/language/SoundexUtils;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 180
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    move-object v4, p1

    .line 181
    goto :goto_0

    .line 184
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    .local v3, "sBuf":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 188
    const/16 v2, 0x2a

    .line 190
    .local v2, "last":C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 192
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {p0, v4}, Lorg/apache/commons/codec/language/RefinedSoundex;->getMappingCode(C)C

    move-result v0

    .line 193
    .local v0, "current":C
    if-ne v0, v2, :cond_2

    .line 190
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 195
    :cond_2
    if-eqz v0, :cond_3

    .line 196
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 199
    :cond_3
    move v2, v0

    goto :goto_2

    .line 203
    .end local v0    # "current":C
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method
