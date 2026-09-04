.class public Lorg/apache/http/message/BasicHeaderValueParser;
.super Ljava/lang/Object;
.source "BasicHeaderValueParser.java"

.implements Lorg/apache/http/message/HeaderValueParser;


.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


.field private static final ALL_DELIMITERS:[C

.field public static final DEFAULT:Lorg/apache/http/message/BasicHeaderValueParser;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final ELEM_DELIMITER:C = ','

.field public static final INSTANCE:Lorg/apache/http/message/BasicHeaderValueParser;

.field private static final PARAM_DELIMITER:C = ';'


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    new-instance v0, Lorg/apache/http/message/BasicHeaderValueParser;

    invoke-direct {v0}, Lorg/apache/http/message/BasicHeaderValueParser;-><init>()V

    sput-object v0, Lorg/apache/http/message/BasicHeaderValueParser;->DEFAULT:Lorg/apache/http/message/BasicHeaderValueParser;

    .line 63
    new-instance v0, Lorg/apache/http/message/BasicHeaderValueParser;

    invoke-direct {v0}, Lorg/apache/http/message/BasicHeaderValueParser;-><init>()V

    sput-object v0, Lorg/apache/http/message/BasicHeaderValueParser;->INSTANCE:Lorg/apache/http/message/BasicHeaderValueParser;

    .line 67
    const/4 v0, 0x2

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/http/message/BasicHeaderValueParser;->ALL_DELIMITERS:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x3bs
        0x2cs
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    return-void
.end method

.method private static isOneOf(C[C)Z
    .locals 5
    .param p0, "ch"    # C
    .param p1, "chs"    # [C

    .prologue
    .line 249
    if-eqz p1, :cond_1

    .line 250
    move-object v0, p1

    .local v0, "arr$":[C
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-char v1, v0, v2

    .line 251
    .local v1, "ch2":C
    if-ne p0, v1, :cond_0

    .line 252
    const/4 v4, 0x1

    .line 256
    .end local v0    # "arr$":[C
    .end local v1    # "ch2":C
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :goto_1
    return v4

    .line 250
    .restart local v0    # "arr$":[C
    .restart local v1    # "ch2":C
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 256
    .end local v0    # "arr$":[C
    .end local v1    # "ch2":C
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static parseElements(Ljava/lang/String;Lorg/apache/http/message/HeaderValueParser;)[Lorg/apache/http/HeaderElement;
    .locals 4
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "parser"    # Lorg/apache/http/message/HeaderValueParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ParseException;
        }
    .end annotation

    .prologue
    .line 87
    const-string v2, "Value"

    invoke-static {p0, v2}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 89
    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v0, v2}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 90
    .local v0, "buffer":Lorg/apache/http/util/CharArrayBuffer;
    invoke-virtual {v0, p0}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 91
    new-instance v1, Lorg/apache/http/message/ParserCursor;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/ParserCursor;-><init>(II)V

    .line 92
    .local v1, "cursor":Lorg/apache/http/message/ParserCursor;
    if-eqz p1, :cond_0

    .end local p1    # "parser":Lorg/apache/http/message/HeaderValueParser;
    :goto_0
    invoke-interface {p1, v0, v1}, Lorg/apache/http/message/HeaderValueParser;->parseElements(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)[Lorg/apache/http/HeaderElement;

    move-result-object v2

    return-object v2

    .restart local p1    # "parser":Lorg/apache/http/message/HeaderValueParser;
    :cond_0
    sget-object p1, Lorg/apache/http/message/BasicHeaderValueParser;->INSTANCE:Lorg/apache/http/message/BasicHeaderValueParser;

    goto :goto_0
.end method

.method public static parseHeaderElement(Ljava/lang/String;Lorg/apache/http/message/HeaderValueParser;)Lorg/apache/http/HeaderElement;
    .locals 4
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "parser"    # Lorg/apache/http/message/HeaderValueParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ParseException;
        }
    .end annotation

    .prologue
    .line 124
    const-string v2, "Value"

    invoke-static {p0, v2}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 126
    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v0, v2}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 127
    .local v0, "buffer":Lorg/apache/http/util/CharArrayBuffer;
    invoke-virtual {v0, p0}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 128
    new-instance v1, Lorg/apache/http/message/ParserCursor;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/ParserCursor;-><init>(II)V

    .line 129
    .local v1, "cursor":Lorg/apache/http/message/ParserCursor;
    if-eqz p1, :cond_0

    .end local p1    # "parser":Lorg/apache/http/message/HeaderValueParser;
    :goto_0
    invoke-interface {p1, v0, v1}, Lorg/apache/http/message/HeaderValueParser;->parseHeaderElement(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Lorg/apache/http/HeaderElement;

    move-result-object v2

    return-object v2

    .restart local p1    # "parser":Lorg/apache/http/message/HeaderValueParser;
    :cond_0
    sget-object p1, Lorg/apache/http/message/BasicHeaderValueParser;->INSTANCE:Lorg/apache/http/message/BasicHeaderValueParser;

    goto :goto_0
.end method

.method public static parseNameValuePair(Ljava/lang/String;Lorg/apache/http/message/HeaderValueParser;)Lorg/apache/http/NameValuePair;
    .locals 4
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "parser"    # Lorg/apache/http/message/HeaderValueParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ParseException;
        }
    .end annotation

    .prologue
    .line 232
    const-string v2, "Value"

    invoke-static {p0, v2}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 234
    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v0, v2}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 235
    .local v0, "buffer":Lorg/apache/http/util/CharArrayBuffer;
    invoke-virtual {v0, p0}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 236
    new-instance v1, Lorg/apache/http/message/ParserCursor;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/ParserCursor;-><init>(II)V

    .line 237
    .local v1, "cursor":Lorg/apache/http/message/ParserCursor;
    if-eqz p1, :cond_0

    .end local p1    # "parser":Lorg/apache/http/message/HeaderValueParser;
    :goto_0
    invoke-interface {p1, v0, v1}, Lorg/apache/http/message/HeaderValueParser;->parseNameValuePair(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Lorg/apache/http/NameValuePair;

    move-result-object v2

    return-object v2

    .restart local p1    # "parser":Lorg/apache/http/message/HeaderValueParser;
    :cond_0
    sget-object p1, Lorg/apache/http/message/BasicHeaderValueParser;->INSTANCE:Lorg/apache/http/message/BasicHeaderValueParser;

    goto :goto_0
.end method

.method public static parseParameters(Ljava/lang/String;Lorg/apache/http/message/HeaderValueParser;)[Lorg/apache/http/NameValuePair;
    .locals 4
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "parser"    # Lorg/apache/http/message/HeaderValueParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ParseException;
        }
    .end annotation

    .prologue
    .line 176
    const-string v2, "Value"

    invoke-static {p0, v2}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 178
    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v0, v2}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 179
    .local v0, "buffer":Lorg/apache/http/util/CharArrayBuffer;
    invoke-virtual {v0, p0}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 180
    new-instance v1, Lorg/apache/http/message/ParserCursor;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/ParserCursor;-><init>(II)V

    .line 181
    .local v1, "cursor":Lorg/apache/http/message/ParserCursor;
    if-eqz p1, :cond_0

    .end local p1    # "parser":Lorg/apache/http/message/HeaderValueParser;
    :goto_0
    invoke-interface {p1, v0, v1}, Lorg/apache/http/message/HeaderValueParser;->parseParameters(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)[Lorg/apache/http/NameValuePair;

    move-result-object v2

    return-object v2

    .restart local p1    # "parser":Lorg/apache/http/message/HeaderValueParser;
    :cond_0
    sget-object p1, Lorg/apache/http/message/BasicHeaderValueParser;->INSTANCE:Lorg/apache/http/message/BasicHeaderValueParser;

    goto :goto_0
.end method


.method protected createHeaderElement(Ljava/lang/String;Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Lorg/apache/http/HeaderElement;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "params"    # [Lorg/apache/http/NameValuePair;

    .prologue
    .line 161
    new-instance v0, Lorg/apache/http/message/BasicHeaderElement;

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/http/message/BasicHeaderElement;-><init>(Ljava/lang/String;Ljava/lang/String;[Lorg/apache/http/NameValuePair;)V

    return-object v0
.end method

.method protected createNameValuePair(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/NameValuePair;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 355
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v0, p1, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public parseElements(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)[Lorg/apache/http/HeaderElement;
    .locals 3
    .param p1, "buffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "cursor"    # Lorg/apache/http/message/ParserCursor;

    .prologue
    .line 100
    const-string v2, "Char array buffer"

    invoke-static {p1, v2}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 101
    const-string v2, "Parser cursor"

    invoke-static {p2, v2}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 102
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .local v1, "elements":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/HeaderElement;>;"
    :cond_0
    :goto_0
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->atEnd()Z

    move-result v2

    if-nez v2, :cond_2

    .line 104
    invoke-virtual {p0, p1, p2}, Lorg/apache/http/message/BasicHeaderValueParser;->parseHeaderElement(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Lorg/apache/http/HeaderElement;

    move-result-object v0

    .line 105
    .local v0, "element":Lorg/apache/http/HeaderElement;
    invoke-interface {v0}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v0}, Lorg/apache/http/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 106
    :cond_1
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 109
    .end local v0    # "element":Lorg/apache/http/HeaderElement;
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lorg/apache/http/HeaderElement;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/apache/http/HeaderElement;

    return-object v2
.end method

.method public parseHeaderElement(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Lorg/apache/http/HeaderElement;
    .locals 5
    .param p1, "buffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "cursor"    # Lorg/apache/http/message/ParserCursor;

    .prologue
    .line 137
    const-string v3, "Char array buffer"

    invoke-static {p1, v3}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 138
    const-string v3, "Parser cursor"

    invoke-static {p2, v3}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 139
    invoke-virtual {p0, p1, p2}, Lorg/apache/http/message/BasicHeaderValueParser;->parseNameValuePair(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Lorg/apache/http/NameValuePair;

    move-result-object v1

    .line 140
    .local v1, "nvp":Lorg/apache/http/NameValuePair;
    const/4 v2, 0x0

    .line 141
    .local v2, "params":[Lorg/apache/http/NameValuePair;
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->atEnd()Z

    move-result v3

    if-nez v3, :cond_0

    .line 142
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->getPos()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p1, v3}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v0

    .line 143
    .local v0, "ch":C
    const/16 v3, 0x2c

    if-eq v0, v3, :cond_0

    .line 144
    invoke-virtual {p0, p1, p2}, Lorg/apache/http/message/BasicHeaderValueParser;->parseParameters(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)[Lorg/apache/http/NameValuePair;

    move-result-object v2

    .line 147
    .end local v0    # "ch":C
    :cond_0
    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4, v2}, Lorg/apache/http/message/BasicHeaderValueParser;->createHeaderElement(Ljava/lang/String;Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Lorg/apache/http/HeaderElement;

    move-result-object v3

    return-object v3
.end method

.method public parseNameValuePair(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Lorg/apache/http/NameValuePair;
    .locals 1
    .param p1, "buffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "cursor"    # Lorg/apache/http/message/ParserCursor;

    .prologue
    .line 245
    sget-object v0, Lorg/apache/http/message/BasicHeaderValueParser;->ALL_DELIMITERS:[C

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/http/message/BasicHeaderValueParser;->parseNameValuePair(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;[C)Lorg/apache/http/NameValuePair;

    move-result-object v0

    return-object v0
.end method

.method public parseNameValuePair(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;[C)Lorg/apache/http/NameValuePair;
    .locals 14
    .param p1, "buffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "cursor"    # Lorg/apache/http/message/ParserCursor;
    .param p3, "delimiters"    # [C

    .prologue
    .line 262
    const-string v12, "Char array buffer"

    invoke-static {p1, v12}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 263
    const-string v12, "Parser cursor"

    move-object/from16 v0, p2

    invoke-static {v0, v12}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 265
    const/4 v10, 0x0

    .line 267
    .local v10, "terminated":Z
    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/message/ParserCursor;->getPos()I

    move-result v8

    .line 268
    .local v8, "pos":I
    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/message/ParserCursor;->getPos()I

    move-result v5

    .line 269
    .local v5, "indexFrom":I
    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/message/ParserCursor;->getUpperBound()I

    move-result v6

    .line 273
    .local v6, "indexTo":I
    :goto_0
    if-ge v8, v6, :cond_0

    .line 274
    invoke-virtual {p1, v8}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v1

    .line 275
    .local v1, "ch":C
    const/16 v12, 0x3d

    if-ne v1, v12, :cond_1

    .line 285
    .end local v1    # "ch":C
    :cond_0
    :goto_1
    if-ne v8, v6, :cond_3

    .line 286
    const/4 v10, 0x1

    .line 287
    invoke-virtual {p1, v5, v6}, Lorg/apache/http/util/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;

    move-result-object v7

    .line 293
    .local v7, "name":Ljava/lang/String;
    :goto_2
    if-eqz v10, :cond_4

    .line 294
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Lorg/apache/http/message/ParserCursor;->updatePos(I)V

    .line 295
    const/4 v12, 0x0

    invoke-virtual {p0, v7, v12}, Lorg/apache/http/message/BasicHeaderValueParser;->createNameValuePair(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/NameValuePair;

    move-result-object v12

    .line 342
    :goto_3
    return-object v12

    .line 278
    .end local v7    # "name":Ljava/lang/String;
    .restart local v1    # "ch":C
    :cond_1
    move-object/from16 v0, p3

    invoke-static {v1, v0}, Lorg/apache/http/message/BasicHeaderValueParser;->isOneOf(C[C)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 279
    const/4 v10, 0x1

    .line 280
    goto :goto_1

    .line 282
    :cond_2
    add-int/lit8 v8, v8, 0x1

    .line 283
    goto :goto_0

    .line 289
    .end local v1    # "ch":C
    :cond_3
    invoke-virtual {p1, v5, v8}, Lorg/apache/http/util/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;

    move-result-object v7

    .line 290
    .restart local v7    # "name":Ljava/lang/String;
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 300
    :cond_4
    move v3, v8

    .line 302
    .local v3, "i1":I
    const/4 v9, 0x0

    .line 303
    .local v9, "qouted":Z
    const/4 v2, 0x0

    .line 304
    .local v2, "escaped":Z
    :goto_4
    if-ge v8, v6, :cond_6

    .line 305
    invoke-virtual {p1, v8}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v1

    .line 306
    .restart local v1    # "ch":C
    const/16 v12, 0x22

    if-ne v1, v12, :cond_5

    if-nez v2, :cond_5

    .line 307
    if-nez v9, :cond_7

    const/4 v9, 0x1

    .line 309
    :cond_5
    :goto_5
    if-nez v9, :cond_8

    if-nez v2, :cond_8

    move-object/from16 v0, p3

    invoke-static {v1, v0}, Lorg/apache/http/message/BasicHeaderValueParser;->isOneOf(C[C)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 310
    const/4 v10, 0x1

    .line 321
    .end local v1    # "ch":C
    :cond_6
    move v4, v8

    .line 323
    .local v4, "i2":I
    :goto_6
    if-ge v3, v4, :cond_b

    invoke-virtual {p1, v3}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v12

    invoke-static {v12}, Lorg/apache/http/protocol/HTTP;->isWhitespace(C)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 324
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 307
    .end local v4    # "i2":I
    .restart local v1    # "ch":C
    :cond_7
    const/4 v9, 0x0

    goto :goto_5

    .line 313
    :cond_8
    if-eqz v2, :cond_9

    .line 314
    const/4 v2, 0x0

    .line 318
    :goto_7
    add-int/lit8 v8, v8, 0x1

    .line 319
    goto :goto_4

    .line 316
    :cond_9
    if-eqz v9, :cond_a

    const/16 v12, 0x5c

    if-ne v1, v12, :cond_a

    const/4 v2, 0x1

    :goto_8
    goto :goto_7

    :cond_a
    const/4 v2, 0x0

    goto :goto_8

    .line 327
    .end local v1    # "ch":C
    .restart local v4    # "i2":I
    :cond_b
    :goto_9
    if-le v4, v3, :cond_c

    add-int/lit8 v12, v4, -0x1

    invoke-virtual {p1, v12}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v12

    invoke-static {v12}, Lorg/apache/http/protocol/HTTP;->isWhitespace(C)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 328
    add-int/lit8 v4, v4, -0x1

    goto :goto_9

    .line 331
    :cond_c
    sub-int v12, v4, v3

    const/4 v13, 0x2

    if-lt v12, v13, :cond_d

    invoke-virtual {p1, v3}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v12

    const/16 v13, 0x22

    if-ne v12, v13, :cond_d

    add-int/lit8 v12, v4, -0x1

    invoke-virtual {p1, v12}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v12

    const/16 v13, 0x22

    if-ne v12, v13, :cond_d

    .line 334
    add-int/lit8 v3, v3, 0x1

    .line 335
    add-int/lit8 v4, v4, -0x1

    .line 337
    :cond_d
    invoke-virtual {p1, v3, v4}, Lorg/apache/http/util/CharArrayBuffer;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 338
    .local v11, "value":Ljava/lang/String;
    if-eqz v10, :cond_e

    .line 339
    add-int/lit8 v8, v8, 0x1

    .line 341
    :cond_e
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Lorg/apache/http/message/ParserCursor;->updatePos(I)V

    .line 342
    invoke-virtual {p0, v7, v11}, Lorg/apache/http/message/BasicHeaderValueParser;->createNameValuePair(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/NameValuePair;

    move-result-object v12

    goto/16 :goto_3
.end method

.method public parseParameters(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)[Lorg/apache/http/NameValuePair;
    .locals 6
    .param p1, "buffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "cursor"    # Lorg/apache/http/message/ParserCursor;

    .prologue
    .line 190
    const-string v5, "Char array buffer"

    invoke-static {p1, v5}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 191
    const-string v5, "Parser cursor"

    invoke-static {p2, v5}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 192
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->getPos()I

    move-result v4

    .line 193
    .local v4, "pos":I
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->getUpperBound()I

    move-result v1

    .line 195
    .local v1, "indexTo":I
    :goto_0
    if-ge v4, v1, :cond_0

    .line 196
    invoke-virtual {p1, v4}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v0

    .line 197
    .local v0, "ch":C
    invoke-static {v0}, Lorg/apache/http/protocol/HTTP;->isWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 198
    add-int/lit8 v4, v4, 0x1

    .line 202
    goto :goto_0

    .line 203
    .end local v0    # "ch":C
    :cond_0
    invoke-virtual {p2, v4}, Lorg/apache/http/message/ParserCursor;->updatePos(I)V

    .line 204
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->atEnd()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 205
    const/4 v5, 0x0

    new-array v5, v5, [Lorg/apache/http/NameValuePair;

    .line 218
    :goto_1
    return-object v5

    .line 208
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 209
    .local v3, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :cond_2
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->atEnd()Z

    move-result v5

    if-nez v5, :cond_3

    .line 210
    invoke-virtual {p0, p1, p2}, Lorg/apache/http/message/BasicHeaderValueParser;->parseNameValuePair(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Lorg/apache/http/NameValuePair;

    move-result-object v2

    .line 211
    .local v2, "param":Lorg/apache/http/NameValuePair;
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->getPos()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p1, v5}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v0

    .line 213
    .restart local v0    # "ch":C
    const/16 v5, 0x2c

    if-ne v0, v5, :cond_2

    .line 218
    .end local v0    # "ch":C
    .end local v2    # "param":Lorg/apache/http/NameValuePair;
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Lorg/apache/http/NameValuePair;

    invoke-interface {v3, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lorg/apache/http/NameValuePair;

    goto :goto_1
.end method
