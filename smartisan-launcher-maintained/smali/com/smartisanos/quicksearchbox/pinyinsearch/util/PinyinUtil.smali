.class public Lcom/smartisanos/quicksearchbox/pinyinsearch/util/PinyinUtil;
.super Ljava/lang/Object;
.source "PinyinUtil.java"


.annotation build Landroid/annotation/SuppressLint;
    value = {
        "DefaultLocale"
    }
.end annotation


.field private static format:Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;

.field private static mToken_divide:Ljava/lang/String;

.field private static mToken_nonpinyin_t9:Ljava/lang/String;

.field private static mToken_pinyin_t9:Ljava/lang/String;


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;

    invoke-direct {v0}, Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;-><init>()V

    sput-object v0, Lcom/smartisanos/quicksearchbox/pinyinsearch/util/PinyinUtil;->format:Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;

    .line 38
    const-string v0, "\u222b"

    sput-object v0, Lcom/smartisanos/quicksearchbox/pinyinsearch/util/PinyinUtil;->mToken_divide:Ljava/lang/String;

    .line 39
    const-string v0, "\u00a7"

    sput-object v0, Lcom/smartisanos/quicksearchbox/pinyinsearch/util/PinyinUtil;->mToken_pinyin_t9:Ljava/lang/String;

    .line 40
    const-string v0, "\u222e"

    sput-object v0, Lcom/smartisanos/quicksearchbox/pinyinsearch/util/PinyinUtil;->mToken_nonpinyin_t9:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addPinyinUnit(Ljava/util/List;Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinUnit;ZLjava/lang/String;[Ljava/lang/String;I)V
    .locals 0
    .param p1, "pyUnit"    # Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinUnit;
    .param p2, "pinyin"    # Z
    .param p3, "originalString"    # Ljava/lang/String;
    .param p4, "string"    # [Ljava/lang/String;
    .param p5, "startPosition"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinUnit;",
            ">;",
            "Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinUnit;",
            "Z",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 242
    .local p0, "pinyinUnit":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinUnit;>;"
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 247
    :cond_1
    invoke-static {p1, p2, p3, p4, p5}, Lcom/smartisanos/quicksearchbox/pinyinsearch/util/PinyinUtil;->initPinyinUnit(Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinUnit;ZLjava/lang/String;[Ljava/lang/String;I)V

    .line 248
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static getFirstCharacter(Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;)Ljava/lang/String;
    .locals 5
    .param p0, "pinyinSearchUnit"    # Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;

    .prologue
    const/4 v4, 0x0

    .line 163
    if-nez p0, :cond_1

    .line 186
    :cond_0
    const/4 v3, 0x0

    :goto_0
    return-object v3

    .line 167
    :cond_1
    invoke-virtual {p0}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;->getPinyinUnits()Ljava/util/List;

    move-result-object v2

    .line 168
    .local v2, "pinyinUnit":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinUnit;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 172
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinUnit;

    invoke-virtual {v3}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinUnit;->getPinyinBaseUnitIndex()Ljava/util/List;

    move-result-object v1

    .line 173
    .local v1, "pinyinBaseUnit":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinBaseUnit;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 177
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinBaseUnit;

    invoke-virtual {v3}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinBaseUnit;->getOriginalString()Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, "originalString":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 182
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static getFirstLetter(Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;)Ljava/lang/String;
    .locals 5
    .param p0, "pinyinSearchUnit"    # Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;

    .prologue
    const/4 v4, 0x0

    .line 126
    if-nez p0, :cond_1

    .line 149
    :cond_0
    const/4 v3, 0x0

    :goto_0
    return-object v3

    .line 130
    :cond_1
    invoke-virtual {p0}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;->getPinyinUnits()Ljava/util/List;

    move-result-object v2

    .line 131
    .local v2, "pinyinUnit":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinUnit;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 135
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinUnit;

    invoke-virtual {v3}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinUnit;->getPinyinBaseUnitIndex()Ljava/util/List;

    move-result-object v1

    .line 136
    .local v1, "pinyinBaseUnit":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinBaseUnit;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 140
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinBaseUnit;

    invoke-virtual {v3}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinBaseUnit;->getPinyin()Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, "pinyin":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 145
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static getSortKey(Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;)Ljava/lang/String;
    .locals 7
    .param p0, "pinyinSearchUnit"    # Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;

    .prologue
    const/4 v6, 0x0

    .line 196
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 197
    .local v2, "sortKeyBuffer":Ljava/lang/StringBuffer;
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    invoke-virtual {v2, v6, v4}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 198
    const-string v3, " "

    .line 200
    .local v3, "splitSymbol":Ljava/lang/String;
    if-nez p0, :cond_1

    .line 220
    :cond_0
    const/4 v4, 0x0

    :goto_0
    return-object v4

    .line 203
    :cond_1
    invoke-virtual {p0}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;->getPinyinUnits()Ljava/util/List;

    move-result-object v0

    .line 204
    .local v0, "pinyinUnit":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinUnit;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 208
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinUnit;

    .line 209
    .local v1, "pu":Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinUnit;
    invoke-virtual {v1}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinUnit;->isPinyin()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 210
    invoke-virtual {v1}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinUnit;->getPinyinBaseUnitIndex()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinBaseUnit;

    invoke-virtual {v4}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinBaseUnit;->getPinyin()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 211
    invoke-virtual {v1}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinUnit;->getPinyinBaseUnitIndex()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinBaseUnit;

    invoke-virtual {v4}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinBaseUnit;->getOriginalString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 213
    :cond_2
    invoke-virtual {v1}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinUnit;->getPinyinBaseUnitIndex()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinBaseUnit;

    invoke-virtual {v4}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinBaseUnit;->getOriginalString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 217
    .end local v1    # "pu":Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinUnit;
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static getTokens()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 43
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/smartisanos/quicksearchbox/pinyinsearch/util/PinyinUtil;->mToken_divide:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/smartisanos/quicksearchbox/pinyinsearch/util/PinyinUtil;->mToken_pinyin_t9:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/smartisanos/quicksearchbox/pinyinsearch/util/PinyinUtil;->mToken_nonpinyin_t9:Ljava/lang/String;

    aput-object v2, v0, v1

    return-object v0
.end method

.method private static initPinyinBaseUnit(Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinBaseUnit;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "pinyinBaseUnit"    # Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinBaseUnit;
    .param p1, "originalString"    # Ljava/lang/String;
    .param p2, "pinyin"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 298
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 317
    :cond_0
    :goto_0
    return-void

    .line 303
    :cond_1
    invoke-virtual {p0, p1}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinBaseUnit;->setOriginalString(Ljava/lang/String;)V

    .line 304
    invoke-virtual {p0, p2}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinBaseUnit;->setPinyin(Ljava/lang/String;)V

    .line 305
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    .line 306
    .local v3, "pinyinLength":I
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 307
    .local v2, "numBuffer":Ljava/lang/StringBuffer;
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    invoke-virtual {v2, v5, v4}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 309
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_2

    .line 310
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/smartisanos/quicksearchbox/pinyinsearch/util/T9Util;->getT9Number(C)C

    move-result v0

    .line 311
    .local v0, "ch":C
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 309
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 314
    .end local v0    # "ch":C
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinBaseUnit;->setNumber(Ljava/lang/String;)V

    .line 315
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    invoke-virtual {v2, v5, v4}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method private static initPinyinUnit(Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinUnit;ZLjava/lang/String;[Ljava/lang/String;I)V
    .locals 8
    .param p0, "pinyinUnit"    # Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinUnit;
    .param p1, "pinyin"    # Z
    .param p2, "originalString"    # Ljava/lang/String;
    .param p3, "string"    # [Ljava/lang/String;
    .param p4, "startPosition"    # I

    .prologue
    .line 255
    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 295
    :cond_0
    return-void

    .line 259
    :cond_1
    const/4 v1, 0x0

    .line 260
    .local v1, "i":I
    const/4 v2, 0x0

    .line 261
    .local v2, "j":I
    const/4 v3, 0x0

    .line 262
    .local v3, "k":I
    array-length v5, p3

    .line 263
    .local v5, "strLength":I
    invoke-virtual {p0, p1}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinUnit;->setPinyin(Z)V

    .line 264
    invoke-virtual {p0, p4}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinUnit;->setStartPosition(I)V

    .line 266
    const/4 v4, 0x0

    .line 268
    .local v4, "pinyinBaseUnit":Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinBaseUnit;
    if-nez p1, :cond_2

    .line 269
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v5, :cond_0

    .line 270
    new-instance v4, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinBaseUnit;

    .end local v4    # "pinyinBaseUnit":Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinBaseUnit;
    invoke-direct {v4}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinBaseUnit;-><init>()V

    .line 271
    .restart local v4    # "pinyinBaseUnit":Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinBaseUnit;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/smartisanos/quicksearchbox/pinyinsearch/util/PinyinUtil;->mToken_nonpinyin_t9:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, p3, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, p2, v6}, Lcom/smartisanos/quicksearchbox/pinyinsearch/util/PinyinUtil;->initPinyinBaseUnit(Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinBaseUnit;Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    invoke-virtual {p0}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinUnit;->getPinyinBaseUnitIndex()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 277
    :cond_2
    new-instance v4, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinBaseUnit;

    .end local v4    # "pinyinBaseUnit":Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinBaseUnit;
    invoke-direct {v4}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinBaseUnit;-><init>()V

    .line 278
    .restart local v4    # "pinyinBaseUnit":Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinBaseUnit;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/smartisanos/quicksearchbox/pinyinsearch/util/PinyinUtil;->mToken_pinyin_t9:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v7, p3, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, p2, v6}, Lcom/smartisanos/quicksearchbox/pinyinsearch/util/PinyinUtil;->initPinyinBaseUnit(Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinBaseUnit;Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    invoke-virtual {p0}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinUnit;->getPinyinBaseUnitIndex()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    const/4 v2, 0x1

    :goto_1
    if-ge v2, v5, :cond_0

    .line 281
    invoke-virtual {p0}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinUnit;->getPinyinBaseUnitIndex()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    .line 282
    .local v0, "curStringIndexlength":I
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v0, :cond_3

    .line 283
    invoke-virtual {p0}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinUnit;->getPinyinBaseUnitIndex()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinBaseUnit;

    invoke-virtual {v6}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinBaseUnit;->getPinyin()Ljava/lang/String;

    move-result-object v6

    aget-object v7, p3, v2

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 288
    :cond_3
    if-ne v3, v0, :cond_4

    .line 289
    new-instance v4, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinBaseUnit;

    .end local v4    # "pinyinBaseUnit":Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinBaseUnit;
    invoke-direct {v4}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinBaseUnit;-><init>()V

    .line 290
    .restart local v4    # "pinyinBaseUnit":Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinBaseUnit;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/smartisanos/quicksearchbox/pinyinsearch/util/PinyinUtil;->mToken_pinyin_t9:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, p3, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, p2, v6}, Lcom/smartisanos/quicksearchbox/pinyinsearch/util/PinyinUtil;->initPinyinBaseUnit(Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinBaseUnit;Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    invoke-virtual {p0}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinUnit;->getPinyinBaseUnitIndex()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 282
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method public static isKanji(C)Z
    .locals 3
    .param p0, "chr"    # C

    .prologue
    .line 230
    const/4 v1, 0x0

    .line 232
    .local v1, "pinyinStr":[Ljava/lang/String;
    :try_start_0
    sget-object v2, Lcom/smartisanos/quicksearchbox/pinyinsearch/util/PinyinUtil;->format:Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;

    invoke-static {p0, v2}, Lnet/sourceforge/pinyin4j/PinyinHelper;->toHanyuPinyinStringArray(CLnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;)[Ljava/lang/String;
    :try_end_0
    .catch Lnet/sourceforge/pinyin4j/format/exception/BadHanyuPinyinOutputFormatCombination; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 237
    :goto_0
    if-nez v1, :cond_0

    const/4 v2, 0x0

    :goto_1
    return v2

    .line 233
    :catch_0
    move-exception v0

    .line 234
    .local v0, "e":Lnet/sourceforge/pinyin4j/format/exception/BadHanyuPinyinOutputFormatCombination;
    invoke-virtual {v0}, Lnet/sourceforge/pinyin4j/format/exception/BadHanyuPinyinOutputFormatCombination;->printStackTrace()V

    goto :goto_0

    .line 237
    .end local v0    # "e":Lnet/sourceforge/pinyin4j/format/exception/BadHanyuPinyinOutputFormatCombination;
    :cond_0
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public static parse(Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;)V
    .locals 21
    .param p0, "pinyinSearchUnit"    # Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;

    .prologue
    .line 52
    if-eqz p0, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;->getBaseData()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;->getPinyinUnits()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;->getBaseData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    .line 58
    .local v14, "chineseStr":Ljava/lang/String;
    sget-object v1, Lcom/smartisanos/quicksearchbox/pinyinsearch/util/PinyinUtil;->format:Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;

    if-nez v1, :cond_2

    .line 59
    new-instance v1, Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;

    invoke-direct {v1}, Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;-><init>()V

    sput-object v1, Lcom/smartisanos/quicksearchbox/pinyinsearch/util/PinyinUtil;->format:Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;

    .line 62
    :cond_2
    sget-object v1, Lcom/smartisanos/quicksearchbox/pinyinsearch/util/PinyinUtil;->format:Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;

    sget-object v3, Lnet/sourceforge/pinyin4j/format/HanyuPinyinToneType;->WITHOUT_TONE:Lnet/sourceforge/pinyin4j/format/HanyuPinyinToneType;

    invoke-virtual {v1, v3}, Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;->setToneType(Lnet/sourceforge/pinyin4j/format/HanyuPinyinToneType;)V

    .line 64
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v15

    .line 65
    .local v15, "chineseStringLength":I
    new-instance v19, Ljava/lang/StringBuffer;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuffer;-><init>()V

    .line 66
    .local v19, "nonPinyinString":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .line 67
    .local v2, "pyUnit":Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinUnit;
    const/16 v20, 0x0

    .line 69
    .local v20, "originalString":Ljava/lang/String;
    const/4 v11, 0x0

    .line 70
    .local v11, "pinyinStr":[Ljava/lang/String;
    const/16 v18, 0x1

    .line 71
    .local v18, "lastChineseCharacters":Z
    const/4 v6, -0x1

    .line 73
    .local v6, "startPosition":I
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_1
    move/from16 v0, v17

    if-ge v0, v15, :cond_6

    .line 74
    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->charAt(I)C

    move-result v13

    .line 76
    .local v13, "ch":C
    :try_start_0
    sget-object v1, Lcom/smartisanos/quicksearchbox/pinyinsearch/util/PinyinUtil;->format:Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;

    invoke-static {v13, v1}, Lnet/sourceforge/pinyin4j/PinyinHelper;->toHanyuPinyinStringArray(CLnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;)[Ljava/lang/String;
    :try_end_0
    .catch Lnet/sourceforge/pinyin4j/format/exception/BadHanyuPinyinOutputFormatCombination; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 81
    :goto_2
    if-nez v11, :cond_4

    .line 82
    const/4 v1, 0x1

    move/from16 v0, v18

    if-ne v1, v0, :cond_3

    .line 83
    new-instance v2, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinUnit;

    .end local v2    # "pyUnit":Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinUnit;
    invoke-direct {v2}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinUnit;-><init>()V

    .line 84
    .restart local v2    # "pyUnit":Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinUnit;
    const/16 v18, 0x0

    .line 85
    move/from16 v6, v17

    .line 86
    const/4 v1, 0x0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v1, v3}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 88
    :cond_3
    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 73
    :goto_3
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 77
    :catch_0
    move-exception v16

    .line 78
    .local v16, "e":Lnet/sourceforge/pinyin4j/format/exception/BadHanyuPinyinOutputFormatCombination;
    invoke-virtual/range {v16 .. v16}, Lnet/sourceforge/pinyin4j/format/exception/BadHanyuPinyinOutputFormatCombination;->printStackTrace()V

    goto :goto_2

    .line 90
    .end local v16    # "e":Lnet/sourceforge/pinyin4j/format/exception/BadHanyuPinyinOutputFormatCombination;
    :cond_4
    if-nez v18, :cond_5

    .line 92
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v20

    .line 93
    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v1

    .line 94
    .local v5, "str":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;->getPinyinUnits()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/smartisanos/quicksearchbox/pinyinsearch/util/PinyinUtil;->mToken_nonpinyin_t9:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static/range {v1 .. v6}, Lcom/smartisanos/quicksearchbox/pinyinsearch/util/PinyinUtil;->addPinyinUnit(Ljava/util/List;Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinUnit;ZLjava/lang/String;[Ljava/lang/String;I)V

    .line 95
    const/4 v1, 0x0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v1, v3}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 96
    const/16 v18, 0x1

    .line 100
    .end local v5    # "str":[Ljava/lang/String;
    :cond_5
    new-instance v2, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinUnit;

    .end local v2    # "pyUnit":Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinUnit;
    invoke-direct {v2}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinUnit;-><init>()V

    .line 101
    .restart local v2    # "pyUnit":Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinUnit;
    move/from16 v6, v17

    .line 102
    invoke-static {v13}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v20

    .line 103
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;->getPinyinUnits()Ljava/util/List;

    move-result-object v7

    const/4 v9, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/smartisanos/quicksearchbox/pinyinsearch/util/PinyinUtil;->mToken_pinyin_t9:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v20

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v8, v2

    move v12, v6

    invoke-static/range {v7 .. v12}, Lcom/smartisanos/quicksearchbox/pinyinsearch/util/PinyinUtil;->addPinyinUnit(Ljava/util/List;Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinUnit;ZLjava/lang/String;[Ljava/lang/String;I)V

    goto :goto_3

    .line 107
    .end local v13    # "ch":C
    :cond_6
    if-nez v18, :cond_0

    .line 109
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v20

    .line 110
    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v1

    .line 111
    .restart local v5    # "str":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;->getPinyinUnits()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/smartisanos/quicksearchbox/pinyinsearch/util/PinyinUtil;->mToken_nonpinyin_t9:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static/range {v1 .. v6}, Lcom/smartisanos/quicksearchbox/pinyinsearch/util/PinyinUtil;->addPinyinUnit(Ljava/util/List;Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinUnit;ZLjava/lang/String;[Ljava/lang/String;I)V

    .line 112
    const/4 v1, 0x0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v1, v3}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 113
    const/16 v18, 0x1

    goto/16 :goto_0
.end method
