.class public Lcom/smartisanos/quicksearchbox/util/IndexUtil;
.super Ljava/lang/Object;
.source "IndexUtil.java"


.field private static final mTokens:[Ljava/lang/String;

.field private static final tokens_divide:I = 0x0

.field private static final tokens_nonpinyin:I = 0x2

.field private static final tokens_pinyinandt9:I = 0x1


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    invoke-static {}, Lcom/smartisanos/quicksearchbox/pinyinsearch/util/PinyinUtil;->getTokens()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/quicksearchbox/util/IndexUtil;->mTokens:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parsePinYinUnit(Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;)[Ljava/lang/String;
    .locals 10
    .param p0, "pinyinSearchUnit"    # Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 85
    invoke-static {p0}, Lcom/smartisanos/quicksearchbox/pinyinsearch/util/PinyinUtil;->parse(Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;)V

    .line 86
    const/4 v3, 0x3

    new-array v2, v3, [Ljava/lang/String;

    sget-object v3, Lcom/smartisanos/quicksearchbox/util/IndexUtil;->mTokens:[Ljava/lang/String;

    aget-object v3, v3, v7

    aput-object v3, v2, v7

    sget-object v3, Lcom/smartisanos/quicksearchbox/util/IndexUtil;->mTokens:[Ljava/lang/String;

    aget-object v3, v3, v7

    aput-object v3, v2, v8

    sget-object v3, Lcom/smartisanos/quicksearchbox/util/IndexUtil;->mTokens:[Ljava/lang/String;

    aget-object v3, v3, v7

    aput-object v3, v2, v9

    .line 87
    .local v2, "qwertyAndT9AndOrigin":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;->getPinyinUnits()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinUnit;

    .line 88
    .local v1, "pinyinUnit":Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinUnit;
    invoke-virtual {v1}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinUnit;->getPinyinBaseUnitIndex()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinBaseUnit;

    .line 89
    .local v0, "pinyinBaseUnit":Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinBaseUnit;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v2, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinBaseUnit;->getPinyin()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v7

    .line 90
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v2, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinBaseUnit;->getNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v8

    .line 91
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v2, v9

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinBaseUnit;->getOriginalString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v9

    goto :goto_1

    .line 93
    .end local v0    # "pinyinBaseUnit":Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinBaseUnit;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v2, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/smartisanos/quicksearchbox/util/IndexUtil;->mTokens:[Ljava/lang/String;

    aget-object v5, v5, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v7

    .line 94
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v2, v8

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/smartisanos/quicksearchbox/util/IndexUtil;->mTokens:[Ljava/lang/String;

    aget-object v5, v5, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v8

    .line 95
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v2, v9

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/smartisanos/quicksearchbox/util/IndexUtil;->mTokens:[Ljava/lang/String;

    aget-object v5, v5, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v9

    goto/16 :goto_0

    .line 97
    .end local v1    # "pinyinUnit":Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinUnit;
    :cond_1
    return-object v2
.end method

.method public static unParsePinyinUnit(Ljava/lang/String;[Ljava/lang/String;)Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;
    .locals 21
    .param p0, "displayName"    # Ljava/lang/String;
    .param p1, "index"    # [Ljava/lang/String;

    .prologue
    .line 29
    new-instance v6, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;-><init>(Ljava/lang/String;)V

    .line 33
    .local v6, "pinyinSearchUnit":Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;
    const/16 v16, 0x0

    aget-object v16, p1, v16

    sget-object v17, Lcom/smartisanos/quicksearchbox/util/IndexUtil;->mTokens:[Ljava/lang/String;

    const/16 v18, 0x0

    aget-object v17, v17, v18

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 34
    .local v3, "originIndex":[Ljava/lang/String;
    const/16 v16, 0x1

    aget-object v16, p1, v16

    sget-object v17, Lcom/smartisanos/quicksearchbox/util/IndexUtil;->mTokens:[Ljava/lang/String;

    const/16 v18, 0x0

    aget-object v17, v17, v18

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 35
    .local v9, "qwertyIndex":[Ljava/lang/String;
    const/16 v16, 0x2

    aget-object v16, p1, v16

    sget-object v17, Lcom/smartisanos/quicksearchbox/util/IndexUtil;->mTokens:[Ljava/lang/String;

    const/16 v18, 0x0

    aget-object v17, v17, v18

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 37
    .local v13, "t9Index":[Ljava/lang/String;
    invoke-virtual {v6}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;->getPinyinUnits()Ljava/util/List;

    move-result-object v8

    .line 38
    .local v8, "pinyinUnitList":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinUnit;>;"
    const/4 v12, -0x1

    .line 39
    .local v12, "startPosition":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v0, v3

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v1, v0, :cond_2

    .line 43
    new-instance v7, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinUnit;

    invoke-direct {v7}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinUnit;-><init>()V

    .line 44
    .local v7, "pinyinUnit":Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinUnit;
    aget-object v16, v3, v1

    sget-object v17, Lcom/smartisanos/quicksearchbox/util/IndexUtil;->mTokens:[Ljava/lang/String;

    const/16 v18, 0x1

    aget-object v17, v17, v18

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 46
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinUnit;->setPinyin(Z)V

    .line 47
    aget-object v16, v3, v1

    sget-object v17, Lcom/smartisanos/quicksearchbox/util/IndexUtil;->mTokens:[Ljava/lang/String;

    const/16 v18, 0x1

    aget-object v17, v17, v18

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 48
    .local v5, "originPinyins":[Ljava/lang/String;
    aget-object v16, v9, v1

    sget-object v17, Lcom/smartisanos/quicksearchbox/util/IndexUtil;->mTokens:[Ljava/lang/String;

    const/16 v18, 0x1

    aget-object v17, v17, v18

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 49
    .local v11, "qwertypinyins":[Ljava/lang/String;
    aget-object v16, v13, v1

    sget-object v17, Lcom/smartisanos/quicksearchbox/util/IndexUtil;->mTokens:[Ljava/lang/String;

    const/16 v18, 0x1

    aget-object v17, v17, v18

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 51
    .local v15, "t9pinyins":[Ljava/lang/String;
    add-int/lit8 v12, v12, 0x1

    .line 52
    invoke-virtual {v7, v12}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinUnit;->setStartPosition(I)V

    .line 54
    const/4 v2, 0x1

    .local v2, "j":I
    :goto_1
    array-length v0, v5

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v2, v0, :cond_1

    .line 56
    invoke-virtual {v7}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinUnit;->getPinyinBaseUnitIndex()Ljava/util/List;

    move-result-object v16

    new-instance v17, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinBaseUnit;

    aget-object v18, v5, v2

    aget-object v19, v11, v2

    aget-object v20, v15, v2

    invoke-direct/range {v17 .. v20}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinBaseUnit;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 58
    .end local v2    # "j":I
    .end local v5    # "originPinyins":[Ljava/lang/String;
    .end local v11    # "qwertypinyins":[Ljava/lang/String;
    .end local v15    # "t9pinyins":[Ljava/lang/String;
    :cond_0
    aget-object v16, v3, v1

    sget-object v17, Lcom/smartisanos/quicksearchbox/util/IndexUtil;->mTokens:[Ljava/lang/String;

    const/16 v18, 0x2

    aget-object v17, v17, v18

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 60
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinUnit;->setPinyin(Z)V

    .line 61
    aget-object v16, v3, v1

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 62
    .local v4, "originNonpinyins":Ljava/lang/String;
    aget-object v16, v9, v1

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 63
    .local v10, "qwertynonpinyins":Ljava/lang/String;
    aget-object v16, v13, v1

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 65
    .local v14, "t9nonpinyins":Ljava/lang/String;
    add-int/lit8 v12, v12, 0x1

    .line 66
    invoke-virtual {v7, v12}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinUnit;->setStartPosition(I)V

    .line 67
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    add-int v12, v12, v16

    .line 70
    invoke-virtual {v7}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinUnit;->getPinyinBaseUnitIndex()Ljava/util/List;

    move-result-object v16

    new-instance v17, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinBaseUnit;

    move-object/from16 v0, v17

    invoke-direct {v0, v4, v10, v14}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinBaseUnit;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    .end local v4    # "originNonpinyins":Ljava/lang/String;
    .end local v10    # "qwertynonpinyins":Ljava/lang/String;
    .end local v14    # "t9nonpinyins":Ljava/lang/String;
    :cond_1
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 74
    .end local v7    # "pinyinUnit":Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinUnit;
    :cond_2
    invoke-virtual {v6, v8}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;->setPinyinUnits(Ljava/util/List;)V

    .line 75
    return-object v6
.end method
