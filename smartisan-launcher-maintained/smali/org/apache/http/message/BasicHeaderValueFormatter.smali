.class public Lorg/apache/http/message/BasicHeaderValueFormatter;
.super Ljava/lang/Object;
.source "BasicHeaderValueFormatter.java"

.implements Lorg/apache/http/message/HeaderValueFormatter;


.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


.field public static final DEFAULT:Lorg/apache/http/message/BasicHeaderValueFormatter;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final INSTANCE:Lorg/apache/http/message/BasicHeaderValueFormatter;

.field public static final SEPARATORS:Ljava/lang/String; = " ;,:@()<>\\\"/[]?={}\t"

.field public static final UNSAFE_CHARS:Ljava/lang/String; = "\"\\"


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    new-instance v0, Lorg/apache/http/message/BasicHeaderValueFormatter;

    invoke-direct {v0}, Lorg/apache/http/message/BasicHeaderValueFormatter;-><init>()V

    sput-object v0, Lorg/apache/http/message/BasicHeaderValueFormatter;->DEFAULT:Lorg/apache/http/message/BasicHeaderValueFormatter;

    .line 58
    new-instance v0, Lorg/apache/http/message/BasicHeaderValueFormatter;

    invoke-direct {v0}, Lorg/apache/http/message/BasicHeaderValueFormatter;-><init>()V

    sput-object v0, Lorg/apache/http/message/BasicHeaderValueFormatter;->INSTANCE:Lorg/apache/http/message/BasicHeaderValueFormatter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    return-void
.end method

.method public static formatElements([Lorg/apache/http/HeaderElement;ZLorg/apache/http/message/HeaderValueFormatter;)Ljava/lang/String;
    .locals 1
    .param p0, "elems"    # [Lorg/apache/http/HeaderElement;
    .param p1, "quote"    # Z
    .param p2, "formatter"    # Lorg/apache/http/message/HeaderValueFormatter;

    .prologue
    .line 92
    if-eqz p2, :cond_0

    .end local p2    # "formatter":Lorg/apache/http/message/HeaderValueFormatter;
    :goto_0
    const/4 v0, 0x0

    invoke-interface {p2, v0, p0, p1}, Lorg/apache/http/message/HeaderValueFormatter;->formatElements(Lorg/apache/http/util/CharArrayBuffer;[Lorg/apache/http/HeaderElement;Z)Lorg/apache/http/util/CharArrayBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .restart local p2    # "formatter":Lorg/apache/http/message/HeaderValueFormatter;
    :cond_0
    sget-object p2, Lorg/apache/http/message/BasicHeaderValueFormatter;->INSTANCE:Lorg/apache/http/message/BasicHeaderValueFormatter;

    goto :goto_0
.end method

.method public static formatHeaderElement(Lorg/apache/http/HeaderElement;ZLorg/apache/http/message/HeaderValueFormatter;)Ljava/lang/String;
    .locals 1
    .param p0, "elem"    # Lorg/apache/http/HeaderElement;
    .param p1, "quote"    # Z
    .param p2, "formatter"    # Lorg/apache/http/message/HeaderValueFormatter;

    .prologue
    .line 158
    if-eqz p2, :cond_0

    .end local p2    # "formatter":Lorg/apache/http/message/HeaderValueFormatter;
    :goto_0
    const/4 v0, 0x0

    invoke-interface {p2, v0, p0, p1}, Lorg/apache/http/message/HeaderValueFormatter;->formatHeaderElement(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/HeaderElement;Z)Lorg/apache/http/util/CharArrayBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .restart local p2    # "formatter":Lorg/apache/http/message/HeaderValueFormatter;
    :cond_0
    sget-object p2, Lorg/apache/http/message/BasicHeaderValueFormatter;->INSTANCE:Lorg/apache/http/message/BasicHeaderValueFormatter;

    goto :goto_0
.end method

.method public static formatNameValuePair(Lorg/apache/http/NameValuePair;ZLorg/apache/http/message/HeaderValueFormatter;)Ljava/lang/String;
    .locals 1
    .param p0, "nvp"    # Lorg/apache/http/NameValuePair;
    .param p1, "quote"    # Z
    .param p2, "formatter"    # Lorg/apache/http/message/HeaderValueFormatter;

    .prologue
    .line 308
    if-eqz p2, :cond_0

    .end local p2    # "formatter":Lorg/apache/http/message/HeaderValueFormatter;
    :goto_0
    const/4 v0, 0x0

    invoke-interface {p2, v0, p0, p1}, Lorg/apache/http/message/HeaderValueFormatter;->formatNameValuePair(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/NameValuePair;Z)Lorg/apache/http/util/CharArrayBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .restart local p2    # "formatter":Lorg/apache/http/message/HeaderValueFormatter;
    :cond_0
    sget-object p2, Lorg/apache/http/message/BasicHeaderValueFormatter;->INSTANCE:Lorg/apache/http/message/BasicHeaderValueFormatter;

    goto :goto_0
.end method

.method public static formatParameters([Lorg/apache/http/NameValuePair;ZLorg/apache/http/message/HeaderValueFormatter;)Ljava/lang/String;
    .locals 1
    .param p0, "nvps"    # [Lorg/apache/http/NameValuePair;
    .param p1, "quote"    # Z
    .param p2, "formatter"    # Lorg/apache/http/message/HeaderValueFormatter;

    .prologue
    .line 243
    if-eqz p2, :cond_0

    .end local p2    # "formatter":Lorg/apache/http/message/HeaderValueFormatter;
    :goto_0
    const/4 v0, 0x0

    invoke-interface {p2, v0, p0, p1}, Lorg/apache/http/message/HeaderValueFormatter;->formatParameters(Lorg/apache/http/util/CharArrayBuffer;[Lorg/apache/http/NameValuePair;Z)Lorg/apache/http/util/CharArrayBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .restart local p2    # "formatter":Lorg/apache/http/message/HeaderValueFormatter;
    :cond_0
    sget-object p2, Lorg/apache/http/message/BasicHeaderValueFormatter;->INSTANCE:Lorg/apache/http/message/BasicHeaderValueFormatter;

    goto :goto_0
.end method


.method protected doFormatValue(Lorg/apache/http/util/CharArrayBuffer;Ljava/lang/String;Z)V
    .locals 5
    .param p1, "buffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "quote"    # Z

    .prologue
    const/16 v4, 0x22

    .line 373
    move v2, p3

    .line 374
    .local v2, "quoteFlag":Z
    if-nez v2, :cond_0

    .line 375
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    if-nez v2, :cond_0

    .line 376
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v3}, Lorg/apache/http/message/BasicHeaderValueFormatter;->isSeparator(C)Z

    move-result v2

    .line 375
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 380
    .end local v1    # "i":I
    :cond_0
    if-eqz v2, :cond_1

    .line 381
    invoke-virtual {p1, v4}, Lorg/apache/http/util/CharArrayBuffer;->append(C)V

    .line 383
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 384
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 385
    .local v0, "ch":C
    invoke-virtual {p0, v0}, Lorg/apache/http/message/BasicHeaderValueFormatter;->isUnsafe(C)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 386
    const/16 v3, 0x5c

    invoke-virtual {p1, v3}, Lorg/apache/http/util/CharArrayBuffer;->append(C)V

    .line 388
    :cond_2
    invoke-virtual {p1, v0}, Lorg/apache/http/util/CharArrayBuffer;->append(C)V

    .line 383
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 390
    .end local v0    # "ch":C
    :cond_3
    if-eqz v2, :cond_4

    .line 391
    invoke-virtual {p1, v4}, Lorg/apache/http/util/CharArrayBuffer;->append(C)V

    .line 393
    :cond_4
    return-void
.end method

.method protected estimateElementsLen([Lorg/apache/http/HeaderElement;)I
    .locals 7
    .param p1, "elems"    # [Lorg/apache/http/HeaderElement;

    .prologue
    .line 129
    if-eqz p1, :cond_0

    array-length v5, p1

    const/4 v6, 0x1

    if-ge v5, v6, :cond_2

    .line 130
    :cond_0
    const/4 v4, 0x0

    .line 138
    :cond_1
    return v4

    .line 133
    :cond_2
    array-length v5, p1

    add-int/lit8 v5, v5, -0x1

    mul-int/lit8 v4, v5, 0x2

    .line 134
    .local v4, "result":I
    move-object v0, p1

    .local v0, "arr$":[Lorg/apache/http/HeaderElement;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 135
    .local v1, "elem":Lorg/apache/http/HeaderElement;
    invoke-virtual {p0, v1}, Lorg/apache/http/message/BasicHeaderValueFormatter;->estimateHeaderElementLen(Lorg/apache/http/HeaderElement;)I

    move-result v5

    add-int/2addr v4, v5

    .line 134
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected estimateHeaderElementLen(Lorg/apache/http/HeaderElement;)I
    .locals 5
    .param p1, "elem"    # Lorg/apache/http/HeaderElement;

    .prologue
    .line 203
    if-nez p1, :cond_1

    .line 204
    const/4 v2, 0x0

    .line 222
    :cond_0
    return v2

    .line 207
    :cond_1
    invoke-interface {p1}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    .line 208
    .local v2, "result":I
    invoke-interface {p1}, Lorg/apache/http/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 209
    .local v3, "value":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 211
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x3

    add-int/2addr v2, v4

    .line 214
    :cond_2
    invoke-interface {p1}, Lorg/apache/http/HeaderElement;->getParameterCount()I

    move-result v1

    .line 215
    .local v1, "parcnt":I
    if-lez v1, :cond_0

    .line 216
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 217
    invoke-interface {p1, v0}, Lorg/apache/http/HeaderElement;->getParameter(I)Lorg/apache/http/NameValuePair;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/http/message/BasicHeaderValueFormatter;->estimateNameValuePairLen(Lorg/apache/http/NameValuePair;)I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    .line 216
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected estimateNameValuePairLen(Lorg/apache/http/NameValuePair;)I
    .locals 3
    .param p1, "nvp"    # Lorg/apache/http/NameValuePair;

    .prologue
    .line 345
    if-nez p1, :cond_1

    .line 346
    const/4 v0, 0x0

    .line 355
    :cond_0
    :goto_0
    return v0

    .line 349
    :cond_1
    invoke-interface {p1}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 350
    .local v0, "result":I
    invoke-interface {p1}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 351
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 353
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    add-int/2addr v0, v2

    goto :goto_0
.end method

.method protected estimateParametersLen([Lorg/apache/http/NameValuePair;)I
    .locals 7
    .param p1, "nvps"    # [Lorg/apache/http/NameValuePair;

    .prologue
    .line 280
    if-eqz p1, :cond_0

    array-length v5, p1

    const/4 v6, 0x1

    if-ge v5, v6, :cond_2

    .line 281
    :cond_0
    const/4 v4, 0x0

    .line 289
    :cond_1
    return v4

    .line 284
    :cond_2
    array-length v5, p1

    add-int/lit8 v5, v5, -0x1

    mul-int/lit8 v4, v5, 0x2

    .line 285
    .local v4, "result":I
    move-object v0, p1

    .local v0, "arr$":[Lorg/apache/http/NameValuePair;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 286
    .local v3, "nvp":Lorg/apache/http/NameValuePair;
    invoke-virtual {p0, v3}, Lorg/apache/http/message/BasicHeaderValueFormatter;->estimateNameValuePairLen(Lorg/apache/http/NameValuePair;)I

    move-result v5

    add-int/2addr v4, v5

    .line 285
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public formatElements(Lorg/apache/http/util/CharArrayBuffer;[Lorg/apache/http/HeaderElement;Z)Lorg/apache/http/util/CharArrayBuffer;
    .locals 4
    .param p1, "charBuffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "elems"    # [Lorg/apache/http/HeaderElement;
    .param p3, "quote"    # Z

    .prologue
    .line 101
    const-string v3, "Header element array"

    invoke-static {p2, v3}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 102
    invoke-virtual {p0, p2}, Lorg/apache/http/message/BasicHeaderValueFormatter;->estimateElementsLen([Lorg/apache/http/HeaderElement;)I

    move-result v2

    .line 103
    .local v2, "len":I
    move-object v0, p1

    .line 104
    .local v0, "buffer":Lorg/apache/http/util/CharArrayBuffer;
    if-nez v0, :cond_1

    .line 105
    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    .end local v0    # "buffer":Lorg/apache/http/util/CharArrayBuffer;
    invoke-direct {v0, v2}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 110
    .restart local v0    # "buffer":Lorg/apache/http/util/CharArrayBuffer;
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, p2

    if-ge v1, v3, :cond_2

    .line 111
    if-lez v1, :cond_0

    .line 112
    const-string v3, ", "

    invoke-virtual {v0, v3}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 114
    :cond_0
    aget-object v3, p2, v1

    invoke-virtual {p0, v0, v3, p3}, Lorg/apache/http/message/BasicHeaderValueFormatter;->formatHeaderElement(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/HeaderElement;Z)Lorg/apache/http/util/CharArrayBuffer;

    .line 110
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 107
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0, v2}, Lorg/apache/http/util/CharArrayBuffer;->ensureCapacity(I)V

    goto :goto_0

    .line 117
    .restart local v1    # "i":I
    :cond_2
    return-object v0
.end method

.method public formatHeaderElement(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/HeaderElement;Z)Lorg/apache/http/util/CharArrayBuffer;
    .locals 6
    .param p1, "charBuffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "elem"    # Lorg/apache/http/HeaderElement;
    .param p3, "quote"    # Z

    .prologue
    .line 167
    const-string v5, "Header element"

    invoke-static {p2, v5}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 168
    invoke-virtual {p0, p2}, Lorg/apache/http/message/BasicHeaderValueFormatter;->estimateHeaderElementLen(Lorg/apache/http/HeaderElement;)I

    move-result v2

    .line 169
    .local v2, "len":I
    move-object v0, p1

    .line 170
    .local v0, "buffer":Lorg/apache/http/util/CharArrayBuffer;
    if-nez v0, :cond_1

    .line 171
    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    .end local v0    # "buffer":Lorg/apache/http/util/CharArrayBuffer;
    invoke-direct {v0, v2}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 176
    .restart local v0    # "buffer":Lorg/apache/http/util/CharArrayBuffer;
    :goto_0
    invoke-interface {p2}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 177
    invoke-interface {p2}, Lorg/apache/http/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 178
    .local v4, "value":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 179
    const/16 v5, 0x3d

    invoke-virtual {v0, v5}, Lorg/apache/http/util/CharArrayBuffer;->append(C)V

    .line 180
    invoke-virtual {p0, v0, v4, p3}, Lorg/apache/http/message/BasicHeaderValueFormatter;->doFormatValue(Lorg/apache/http/util/CharArrayBuffer;Ljava/lang/String;Z)V

    .line 183
    :cond_0
    invoke-interface {p2}, Lorg/apache/http/HeaderElement;->getParameterCount()I

    move-result v3

    .line 184
    .local v3, "parcnt":I
    if-lez v3, :cond_2

    .line 185
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_2

    .line 186
    const-string v5, "; "

    invoke-virtual {v0, v5}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 187
    invoke-interface {p2, v1}, Lorg/apache/http/HeaderElement;->getParameter(I)Lorg/apache/http/NameValuePair;

    move-result-object v5

    invoke-virtual {p0, v0, v5, p3}, Lorg/apache/http/message/BasicHeaderValueFormatter;->formatNameValuePair(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/NameValuePair;Z)Lorg/apache/http/util/CharArrayBuffer;

    .line 185
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 173
    .end local v1    # "i":I
    .end local v3    # "parcnt":I
    .end local v4    # "value":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0, v2}, Lorg/apache/http/util/CharArrayBuffer;->ensureCapacity(I)V

    goto :goto_0

    .line 191
    .restart local v3    # "parcnt":I
    .restart local v4    # "value":Ljava/lang/String;
    :cond_2
    return-object v0
.end method

.method public formatNameValuePair(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/NameValuePair;Z)Lorg/apache/http/util/CharArrayBuffer;
    .locals 4
    .param p1, "charBuffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "nvp"    # Lorg/apache/http/NameValuePair;
    .param p3, "quote"    # Z

    .prologue
    .line 317
    const-string v3, "Name / value pair"

    invoke-static {p2, v3}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 318
    invoke-virtual {p0, p2}, Lorg/apache/http/message/BasicHeaderValueFormatter;->estimateNameValuePairLen(Lorg/apache/http/NameValuePair;)I

    move-result v1

    .line 319
    .local v1, "len":I
    move-object v0, p1

    .line 320
    .local v0, "buffer":Lorg/apache/http/util/CharArrayBuffer;
    if-nez v0, :cond_1

    .line 321
    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    .end local v0    # "buffer":Lorg/apache/http/util/CharArrayBuffer;
    invoke-direct {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 326
    .restart local v0    # "buffer":Lorg/apache/http/util/CharArrayBuffer;
    :goto_0
    invoke-interface {p2}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 327
    invoke-interface {p2}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 328
    .local v2, "value":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 329
    const/16 v3, 0x3d

    invoke-virtual {v0, v3}, Lorg/apache/http/util/CharArrayBuffer;->append(C)V

    .line 330
    invoke-virtual {p0, v0, v2, p3}, Lorg/apache/http/message/BasicHeaderValueFormatter;->doFormatValue(Lorg/apache/http/util/CharArrayBuffer;Ljava/lang/String;Z)V

    .line 333
    :cond_0
    return-object v0

    .line 323
    .end local v2    # "value":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;->ensureCapacity(I)V

    goto :goto_0
.end method

.method public formatParameters(Lorg/apache/http/util/CharArrayBuffer;[Lorg/apache/http/NameValuePair;Z)Lorg/apache/http/util/CharArrayBuffer;
    .locals 4
    .param p1, "charBuffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "nvps"    # [Lorg/apache/http/NameValuePair;
    .param p3, "quote"    # Z

    .prologue
    .line 252
    const-string v3, "Header parameter array"

    invoke-static {p2, v3}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 253
    invoke-virtual {p0, p2}, Lorg/apache/http/message/BasicHeaderValueFormatter;->estimateParametersLen([Lorg/apache/http/NameValuePair;)I

    move-result v2

    .line 254
    .local v2, "len":I
    move-object v0, p1

    .line 255
    .local v0, "buffer":Lorg/apache/http/util/CharArrayBuffer;
    if-nez v0, :cond_1

    .line 256
    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    .end local v0    # "buffer":Lorg/apache/http/util/CharArrayBuffer;
    invoke-direct {v0, v2}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 261
    .restart local v0    # "buffer":Lorg/apache/http/util/CharArrayBuffer;
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, p2

    if-ge v1, v3, :cond_2

    .line 262
    if-lez v1, :cond_0

    .line 263
    const-string v3, "; "

    invoke-virtual {v0, v3}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 265
    :cond_0
    aget-object v3, p2, v1

    invoke-virtual {p0, v0, v3, p3}, Lorg/apache/http/message/BasicHeaderValueFormatter;->formatNameValuePair(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/NameValuePair;Z)Lorg/apache/http/util/CharArrayBuffer;

    .line 261
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 258
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0, v2}, Lorg/apache/http/util/CharArrayBuffer;->ensureCapacity(I)V

    goto :goto_0

    .line 268
    .restart local v1    # "i":I
    :cond_2
    return-object v0
.end method

.method protected isSeparator(C)Z
    .locals 1
    .param p1, "ch"    # C

    .prologue
    .line 405
    const-string v0, " ;,:@()<>\\\"/[]?={}\t"

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isUnsafe(C)Z
    .locals 1
    .param p1, "ch"    # C

    .prologue
    .line 418
    const-string v0, "\"\\"

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
