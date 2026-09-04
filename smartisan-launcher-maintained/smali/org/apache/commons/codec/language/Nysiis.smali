.class public Lorg/apache/commons/codec/language/Nysiis;
.super Ljava/lang/Object;
.source "Nysiis.java"

.implements Lorg/apache/commons/codec/StringEncoder;


.field private static final CHARS_A:[C

.field private static final CHARS_AF:[C

.field private static final CHARS_C:[C

.field private static final CHARS_FF:[C

.field private static final CHARS_G:[C

.field private static final CHARS_N:[C

.field private static final CHARS_NN:[C

.field private static final CHARS_S:[C

.field private static final CHARS_SSS:[C

.field private static final PAT_DT_ETC:Ljava/util/regex/Pattern;

.field private static final PAT_EE_IE:Ljava/util/regex/Pattern;

.field private static final PAT_K:Ljava/util/regex/Pattern;

.field private static final PAT_KN:Ljava/util/regex/Pattern;

.field private static final PAT_MAC:Ljava/util/regex/Pattern;

.field private static final PAT_PH_PF:Ljava/util/regex/Pattern;

.field private static final PAT_SCH:Ljava/util/regex/Pattern;

.field private static final SPACE:C = ' '

.field private static final TRUE_LENGTH:I = 0x6


.field private final strict:Z


.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 72
    new-array v0, v3, [C

    const/16 v1, 0x41

    aput-char v1, v0, v2

    sput-object v0, Lorg/apache/commons/codec/language/Nysiis;->CHARS_A:[C

    .line 73
    new-array v0, v4, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/codec/language/Nysiis;->CHARS_AF:[C

    .line 74
    new-array v0, v3, [C

    const/16 v1, 0x43

    aput-char v1, v0, v2

    sput-object v0, Lorg/apache/commons/codec/language/Nysiis;->CHARS_C:[C

    .line 75
    new-array v0, v4, [C

    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/commons/codec/language/Nysiis;->CHARS_FF:[C

    .line 76
    new-array v0, v3, [C

    const/16 v1, 0x47

    aput-char v1, v0, v2

    sput-object v0, Lorg/apache/commons/codec/language/Nysiis;->CHARS_G:[C

    .line 77
    new-array v0, v3, [C

    const/16 v1, 0x4e

    aput-char v1, v0, v2

    sput-object v0, Lorg/apache/commons/codec/language/Nysiis;->CHARS_N:[C

    .line 78
    new-array v0, v4, [C

    fill-array-data v0, :array_2

    sput-object v0, Lorg/apache/commons/codec/language/Nysiis;->CHARS_NN:[C

    .line 79
    new-array v0, v3, [C

    const/16 v1, 0x53

    aput-char v1, v0, v2

    sput-object v0, Lorg/apache/commons/codec/language/Nysiis;->CHARS_S:[C

    .line 80
    const/4 v0, 0x3

    new-array v0, v0, [C

    fill-array-data v0, :array_3

    sput-object v0, Lorg/apache/commons/codec/language/Nysiis;->CHARS_SSS:[C

    .line 82
    const-string v0, "^MAC"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/codec/language/Nysiis;->PAT_MAC:Ljava/util/regex/Pattern;

    .line 83
    const-string v0, "^KN"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/codec/language/Nysiis;->PAT_KN:Ljava/util/regex/Pattern;

    .line 84
    const-string v0, "^K"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/codec/language/Nysiis;->PAT_K:Ljava/util/regex/Pattern;

    .line 85
    const-string v0, "^(PH|PF)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/codec/language/Nysiis;->PAT_PH_PF:Ljava/util/regex/Pattern;

    .line 86
    const-string v0, "^SCH"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/codec/language/Nysiis;->PAT_SCH:Ljava/util/regex/Pattern;

    .line 87
    const-string v0, "(EE|IE)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/codec/language/Nysiis;->PAT_EE_IE:Ljava/util/regex/Pattern;

    .line 88
    const-string v0, "(DT|RT|RD|NT|ND)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/codec/language/Nysiis;->PAT_DT_ETC:Ljava/util/regex/Pattern;

    return-void

    .line 73
    nop

    :array_0
    .array-data 2
        0x41s
        0x46s
    .end array-data

    .line 75
    :array_1
    .array-data 2
        0x46s
        0x46s
    .end array-data

    .line 78
    :array_2
    .array-data 2
        0x4es
        0x4es
    .end array-data

    .line 80
    :array_3
    .array-data 2
        0x53s
        0x53s
        0x53s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/commons/codec/language/Nysiis;-><init>(Z)V

    .line 179
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "strict"    # Z

    .prologue
    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    iput-boolean p1, p0, Lorg/apache/commons/codec/language/Nysiis;->strict:Z

    .line 194
    return-void
.end method

.method private static isVowel(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 101
    const/16 v0, 0x41

    if-eq p0, v0, :cond_0

    const/16 v0, 0x45

    if-eq p0, v0, :cond_0

    const/16 v0, 0x49

    if-eq p0, v0, :cond_0

    const/16 v0, 0x4f

    if-eq p0, v0, :cond_0

    const/16 v0, 0x55

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static transcodeRemaining(CCCC)[C
    .locals 4
    .param p0, "prev"    # C
    .param p1, "curr"    # C
    .param p2, "next"    # C
    .param p3, "aNext"    # C

    .prologue
    const/16 v3, 0x48

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 120
    const/16 v0, 0x45

    if-ne p1, v0, :cond_0

    const/16 v0, 0x56

    if-ne p2, v0, :cond_0

    .line 121
    sget-object v0, Lorg/apache/commons/codec/language/Nysiis;->CHARS_AF:[C

    .line 167
    :goto_0
    return-object v0

    .line 125
    :cond_0
    invoke-static {p1}, Lorg/apache/commons/codec/language/Nysiis;->isVowel(C)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    sget-object v0, Lorg/apache/commons/codec/language/Nysiis;->CHARS_A:[C

    goto :goto_0

    .line 130
    :cond_1
    const/16 v0, 0x51

    if-ne p1, v0, :cond_2

    .line 131
    sget-object v0, Lorg/apache/commons/codec/language/Nysiis;->CHARS_G:[C

    goto :goto_0

    .line 132
    :cond_2
    const/16 v0, 0x5a

    if-ne p1, v0, :cond_3

    .line 133
    sget-object v0, Lorg/apache/commons/codec/language/Nysiis;->CHARS_S:[C

    goto :goto_0

    .line 134
    :cond_3
    const/16 v0, 0x4d

    if-ne p1, v0, :cond_4

    .line 135
    sget-object v0, Lorg/apache/commons/codec/language/Nysiis;->CHARS_N:[C

    goto :goto_0

    .line 139
    :cond_4
    const/16 v0, 0x4b

    if-ne p1, v0, :cond_6

    .line 140
    const/16 v0, 0x4e

    if-ne p2, v0, :cond_5

    .line 141
    sget-object v0, Lorg/apache/commons/codec/language/Nysiis;->CHARS_NN:[C

    goto :goto_0

    .line 143
    :cond_5
    sget-object v0, Lorg/apache/commons/codec/language/Nysiis;->CHARS_C:[C

    goto :goto_0

    .line 148
    :cond_6
    const/16 v0, 0x53

    if-ne p1, v0, :cond_7

    const/16 v0, 0x43

    if-ne p2, v0, :cond_7

    if-ne p3, v3, :cond_7

    .line 149
    sget-object v0, Lorg/apache/commons/codec/language/Nysiis;->CHARS_SSS:[C

    goto :goto_0

    .line 153
    :cond_7
    const/16 v0, 0x50

    if-ne p1, v0, :cond_8

    if-ne p2, v3, :cond_8

    .line 154
    sget-object v0, Lorg/apache/commons/codec/language/Nysiis;->CHARS_FF:[C

    goto :goto_0

    .line 158
    :cond_8
    if-ne p1, v3, :cond_a

    invoke-static {p0}, Lorg/apache/commons/codec/language/Nysiis;->isVowel(C)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {p2}, Lorg/apache/commons/codec/language/Nysiis;->isVowel(C)Z

    move-result v0

    if-nez v0, :cond_a

    .line 159
    :cond_9
    new-array v0, v2, [C

    aput-char p0, v0, v1

    goto :goto_0

    .line 163
    :cond_a
    const/16 v0, 0x57

    if-ne p1, v0, :cond_b

    invoke-static {p0}, Lorg/apache/commons/codec/language/Nysiis;->isVowel(C)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 164
    new-array v0, v2, [C

    aput-char p0, v0, v1

    goto :goto_0

    .line 167
    :cond_b
    new-array v0, v2, [C

    aput-char p1, v0, v1

    goto :goto_0
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
    .line 211
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 212
    new-instance v0, Lorg/apache/commons/codec/EncoderException;

    const-string v1, "Parameter supplied to Nysiis encode is not of type java.lang.String"

    invoke-direct {v0, v1}, Lorg/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_0
    check-cast p1, Ljava/lang/String;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/language/Nysiis;->nysiis(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 228
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/language/Nysiis;->nysiis(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isStrict()Z
    .locals 1

    .prologue
    .line 237
    iget-boolean v0, p0, Lorg/apache/commons/codec/language/Nysiis;->strict:Z

    return v0
.end method

.method public nysiis(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 248
    if-nez p1, :cond_1

    .line 249
    const/4 v8, 0x0

    .line 316
    :cond_0
    :goto_0
    return-object v8

    .line 253
    :cond_1
    invoke-static {p1}, Lorg/apache/commons/codec/language/SoundexUtils;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 255
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_2

    move-object v8, p1

    .line 256
    goto :goto_0

    .line 261
    :cond_2
    sget-object v10, Lorg/apache/commons/codec/language/Nysiis;->PAT_MAC:Ljava/util/regex/Pattern;

    invoke-virtual {v10, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    const-string v11, "MCC"

    invoke-virtual {v10, v11}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 262
    sget-object v10, Lorg/apache/commons/codec/language/Nysiis;->PAT_KN:Ljava/util/regex/Pattern;

    invoke-virtual {v10, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    const-string v11, "NN"

    invoke-virtual {v10, v11}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 263
    sget-object v10, Lorg/apache/commons/codec/language/Nysiis;->PAT_K:Ljava/util/regex/Pattern;

    invoke-virtual {v10, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    const-string v11, "C"

    invoke-virtual {v10, v11}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 264
    sget-object v10, Lorg/apache/commons/codec/language/Nysiis;->PAT_PH_PF:Ljava/util/regex/Pattern;

    invoke-virtual {v10, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    const-string v11, "FF"

    invoke-virtual {v10, v11}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 265
    sget-object v10, Lorg/apache/commons/codec/language/Nysiis;->PAT_SCH:Ljava/util/regex/Pattern;

    invoke-virtual {v10, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    const-string v11, "SSS"

    invoke-virtual {v10, v11}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 269
    sget-object v10, Lorg/apache/commons/codec/language/Nysiis;->PAT_EE_IE:Ljava/util/regex/Pattern;

    invoke-virtual {v10, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    const-string v11, "Y"

    invoke-virtual {v10, v11}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 270
    sget-object v10, Lorg/apache/commons/codec/language/Nysiis;->PAT_DT_ETC:Ljava/util/regex/Pattern;

    invoke-virtual {v10, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    const-string v11, "D"

    invoke-virtual {v10, v11}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 273
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 274
    .local v3, "key":Ljava/lang/StringBuilder;
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 277
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 278
    .local v1, "chars":[C
    array-length v6, v1

    .line 280
    .local v6, "len":I
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_1
    if-ge v2, v6, :cond_6

    .line 281
    add-int/lit8 v10, v6, -0x1

    if-ge v2, v10, :cond_4

    add-int/lit8 v10, v2, 0x1

    aget-char v7, v1, v10

    .line 282
    .local v7, "next":C
    :goto_2
    add-int/lit8 v10, v6, -0x2

    if-ge v2, v10, :cond_5

    add-int/lit8 v10, v2, 0x2

    aget-char v0, v1, v10

    .line 283
    .local v0, "aNext":C
    :goto_3
    add-int/lit8 v10, v2, -0x1

    aget-char v10, v1, v10

    aget-char v11, v1, v2

    invoke-static {v10, v11, v7, v0}, Lorg/apache/commons/codec/language/Nysiis;->transcodeRemaining(CCCC)[C

    move-result-object v9

    .line 284
    .local v9, "transcoded":[C
    const/4 v10, 0x0

    array-length v11, v9

    invoke-static {v9, v10, v1, v2, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 287
    aget-char v10, v1, v2

    add-int/lit8 v11, v2, -0x1

    aget-char v11, v1, v11

    if-eq v10, v11, :cond_3

    .line 288
    aget-char v10, v1, v2

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 280
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 281
    .end local v0    # "aNext":C
    .end local v7    # "next":C
    .end local v9    # "transcoded":[C
    :cond_4
    const/16 v7, 0x20

    goto :goto_2

    .line 282
    .restart local v7    # "next":C
    :cond_5
    const/16 v0, 0x20

    goto :goto_3

    .line 292
    .end local v7    # "next":C
    :cond_6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    const/4 v11, 0x1

    if-le v10, v11, :cond_9

    .line 293
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    .line 296
    .local v5, "lastChar":C
    const/16 v10, 0x53

    if-ne v5, v10, :cond_7

    .line 297
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 298
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    .line 301
    :cond_7
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    const/4 v11, 0x2

    if-le v10, v11, :cond_8

    .line 302
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x2

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    .line 304
    .local v4, "last2Char":C
    const/16 v10, 0x41

    if-ne v4, v10, :cond_8

    const/16 v10, 0x59

    if-ne v5, v10, :cond_8

    .line 305
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x2

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 310
    .end local v4    # "last2Char":C
    :cond_8
    const/16 v10, 0x41

    if-ne v5, v10, :cond_9

    .line 311
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 315
    .end local v5    # "lastChar":C
    :cond_9
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 316
    .local v8, "string":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/commons/codec/language/Nysiis;->isStrict()Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x0

    const/4 v11, 0x6

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-virtual {v8, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0
.end method
