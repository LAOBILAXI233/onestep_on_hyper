.class Lorg/apache/commons/codec/language/ColognePhonetic$CologneInputBuffer;
.super Lorg/apache/commons/codec/language/ColognePhonetic$CologneBuffer;
.source "ColognePhonetic.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/codec/language/ColognePhonetic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CologneInputBuffer"
.end annotation


.field final synthetic this$0:Lorg/apache/commons/codec/language/ColognePhonetic;


.method public constructor <init>(Lorg/apache/commons/codec/language/ColognePhonetic;[C)V
    .locals 0
    .param p2, "data"    # [C

    .prologue
    .line 247
    iput-object p1, p0, Lorg/apache/commons/codec/language/ColognePhonetic$CologneInputBuffer;->this$0:Lorg/apache/commons/codec/language/ColognePhonetic;

    .line 248
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/codec/language/ColognePhonetic$CologneBuffer;-><init>(Lorg/apache/commons/codec/language/ColognePhonetic;[C)V

    .line 249
    return-void
.end method


.method public addLeft(C)V
    .locals 2
    .param p1, "ch"    # C

    .prologue
    .line 252
    iget v0, p0, Lorg/apache/commons/codec/language/ColognePhonetic$CologneInputBuffer;->length:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/codec/language/ColognePhonetic$CologneInputBuffer;->length:I

    .line 253
    iget-object v0, p0, Lorg/apache/commons/codec/language/ColognePhonetic$CologneInputBuffer;->data:[C

    invoke-virtual {p0}, Lorg/apache/commons/codec/language/ColognePhonetic$CologneInputBuffer;->getNextPos()I

    move-result v1

    aput-char p1, v0, v1

    .line 254
    return-void
.end method

.method protected copyData(II)[C
    .locals 4
    .param p1, "start"    # I
    .param p2, "length"    # I

    .prologue
    .line 258
    new-array v0, p2, [C

    .line 259
    .local v0, "newData":[C
    iget-object v1, p0, Lorg/apache/commons/codec/language/ColognePhonetic$CologneInputBuffer;->data:[C

    iget-object v2, p0, Lorg/apache/commons/codec/language/ColognePhonetic$CologneInputBuffer;->data:[C

    array-length v2, v2

    iget v3, p0, Lorg/apache/commons/codec/language/ColognePhonetic$CologneInputBuffer;->length:I

    sub-int/2addr v2, v3

    add-int/2addr v2, p1

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 260
    return-object v0
.end method

.method public getNextChar()C
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Lorg/apache/commons/codec/language/ColognePhonetic$CologneInputBuffer;->data:[C

    invoke-virtual {p0}, Lorg/apache/commons/codec/language/ColognePhonetic$CologneInputBuffer;->getNextPos()I

    move-result v1

    aget-char v0, v0, v1

    return v0
.end method

.method protected getNextPos()I
    .locals 2

    .prologue
    .line 268
    iget-object v0, p0, Lorg/apache/commons/codec/language/ColognePhonetic$CologneInputBuffer;->data:[C

    array-length v0, v0

    iget v1, p0, Lorg/apache/commons/codec/language/ColognePhonetic$CologneInputBuffer;->length:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public removeNext()C
    .locals 2

    .prologue
    .line 272
    invoke-virtual {p0}, Lorg/apache/commons/codec/language/ColognePhonetic$CologneInputBuffer;->getNextChar()C

    move-result v0

    .line 273
    .local v0, "ch":C
    iget v1, p0, Lorg/apache/commons/codec/language/ColognePhonetic$CologneInputBuffer;->length:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/commons/codec/language/ColognePhonetic$CologneInputBuffer;->length:I

    .line 274
    return v0
.end method
