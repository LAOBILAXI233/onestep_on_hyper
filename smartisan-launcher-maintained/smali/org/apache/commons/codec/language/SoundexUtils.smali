.class final Lorg/apache/commons/codec/language/SoundexUtils;
.super Ljava/lang/Object;
.source "SoundexUtils.java"


.method constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static clean(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 42
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 56
    .end local p0    # "str":Ljava/lang/String;
    .local v0, "chars":[C
    .local v2, "count":I
    .local v3, "i":I
    .local v4, "len":I
    :cond_0
    :goto_0
    return-object p0

    .line 45
    .end local v0    # "chars":[C
    .end local v2    # "count":I
    .end local v3    # "i":I
    .end local v4    # "len":I
    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 46
    .restart local v4    # "len":I
    new-array v0, v4, [C

    .line 47
    .restart local v0    # "chars":[C
    const/4 v1, 0x0

    .line 48
    .local v1, "count":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    move v2, v1

    .end local v1    # "count":I
    .restart local v2    # "count":I
    :goto_1
    if-ge v3, v4, :cond_2

    .line 49
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isLetter(C)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 50
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "count":I
    .restart local v1    # "count":I
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aput-char v5, v0, v2

    .line 48
    :goto_2
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    .end local v1    # "count":I
    .restart local v2    # "count":I
    goto :goto_1

    .line 53
    :cond_2
    if-ne v2, v4, :cond_3

    .line 54
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 56
    :cond_3
    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v5, v0, v6, v2}, Ljava/lang/String;-><init>([CII)V

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_4
    move v1, v2

    .end local v2    # "count":I
    .restart local v1    # "count":I
    goto :goto_2
.end method

.method static difference(Lorg/apache/commons/codec/StringEncoder;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "encoder"    # Lorg/apache/commons/codec/StringEncoder;
    .param p1, "s1"    # Ljava/lang/String;
    .param p2, "s2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/EncoderException;
        }
    .end annotation

    .prologue
    .line 86
    invoke-interface {p0, p1}, Lorg/apache/commons/codec/StringEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p2}, Lorg/apache/commons/codec/StringEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/codec/language/SoundexUtils;->differenceEncoded(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static differenceEncoded(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p0, "es1"    # Ljava/lang/String;
    .param p1, "es2"    # Ljava/lang/String;

    .prologue
    .line 111
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 112
    :cond_0
    const/4 v0, 0x0

    .line 121
    :cond_1
    return v0

    .line 114
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 115
    .local v2, "lengthToMatch":I
    const/4 v0, 0x0

    .line 116
    .local v0, "diff":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 117
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v3, v4, :cond_3

    .line 118
    add-int/lit8 v0, v0, 0x1

    .line 116
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
