.class public Lcom/smartisanos/quicksearchbox/pinyinsearch/util/QwertyUtil;
.super Ljava/lang/Object;
.source "QwertyUtil.java"


.annotation build Landroid/annotation/SuppressLint;
    value = {
        "DefaultLocale"
    }
.end annotation


.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findPinyinUnits(Ljava/util/List;IILjava/lang/String;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)Z
    .locals 16
    .param p1, "pinyinUnitIndex"    # I
    .param p2, "qwertyPinyinUnitIndex"    # I
    .param p3, "baseData"    # Ljava/lang/String;
    .param p4, "searchBuffer"    # Ljava/lang/StringBuffer;
    .param p5, "matchKeyword"    # Ljava/lang/StringBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinUnit;",
            ">;II",
            "Ljava/lang/String;",
            "Ljava/lang/StringBuffer;",
            "Ljava/lang/StringBuffer;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 88
    .local p0, "pinyinUnits":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinUnit;>;"
    if-eqz p0, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    if-nez p5, :cond_1

    .line 89
    :cond_0
    const/4 v1, 0x0

    .line 208
    :goto_0
    return v1

    .line 92
    :cond_1
    invoke-virtual/range {p4 .. p4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    .line 93
    .local v13, "search":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_2

    .line 94
    const/4 v1, 0x1

    goto :goto_0

    .line 97
    :cond_2
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v1

    move/from16 v0, p1

    if-lt v0, v1, :cond_3

    .line 98
    const/4 v1, 0x0

    goto :goto_0

    .line 100
    :cond_3
    invoke-interface/range {p0 .. p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinUnit;

    .line 102
    .local v12, "pyUnit":Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinUnit;
    invoke-virtual {v12}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinUnit;->getPinyinBaseUnitIndex()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    move/from16 v0, p2

    if-lt v0, v1, :cond_4

    .line 103
    const/4 v1, 0x0

    goto :goto_0

    .line 106
    :cond_4
    invoke-virtual {v12}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinUnit;->getPinyinBaseUnitIndex()Ljava/util/List;

    move-result-object v1

    move/from16 v0, p2

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinBaseUnit;

    .line 108
    .local v11, "pinyinBaseUnit":Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinBaseUnit;
    invoke-virtual {v12}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinUnit;->isPinyin()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 110
    invoke-virtual {v11}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinBaseUnit;->getPinyin()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 111
    const/4 v1, 0x0

    const/4 v2, 0x1

    move-object/from16 v0, p4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 112
    invoke-virtual {v12}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinUnit;->getStartPosition()I

    move-result v1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 113
    add-int/lit8 v2, p1, 0x1

    const/4 v3, 0x0

    move-object/from16 v1, p0

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-static/range {v1 .. v6}, Lcom/smartisanos/quicksearchbox/pinyinsearch/util/QwertyUtil;->findPinyinUnits(Ljava/util/List;IILjava/lang/String;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)Z

    move-result v7

    .line 114
    .local v7, "found":Z
    const/4 v1, 0x1

    if-ne v1, v7, :cond_5

    .line 115
    const/4 v1, 0x1

    goto :goto_0

    .line 117
    :cond_5
    const/4 v1, 0x0

    invoke-virtual {v11}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinBaseUnit;->getPinyin()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move-object/from16 v0, p4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 118
    invoke-virtual/range {p5 .. p5}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 123
    .end local v7    # "found":Z
    :cond_6
    invoke-virtual {v11}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinBaseUnit;->getPinyin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 125
    invoke-virtual {v12}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinUnit;->getStartPosition()I

    move-result v1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 126
    const/4 v1, 0x0

    invoke-virtual/range {p4 .. p4}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    move-object/from16 v0, p4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 127
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 129
    :cond_7
    invoke-virtual {v11}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinBaseUnit;->getPinyin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 131
    const/4 v1, 0x0

    invoke-virtual {v11}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinBaseUnit;->getPinyin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    move-object/from16 v0, p4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 132
    invoke-virtual {v12}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinUnit;->getStartPosition()I

    move-result v1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 133
    add-int/lit8 v2, p1, 0x1

    const/4 v3, 0x0

    move-object/from16 v1, p0

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-static/range {v1 .. v6}, Lcom/smartisanos/quicksearchbox/pinyinsearch/util/QwertyUtil;->findPinyinUnits(Ljava/util/List;IILjava/lang/String;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)Z

    move-result v7

    .line 134
    .restart local v7    # "found":Z
    const/4 v1, 0x1

    if-ne v1, v7, :cond_8

    .line 135
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 137
    :cond_8
    const/4 v1, 0x0

    invoke-virtual {v11}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinBaseUnit;->getPinyin()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 138
    invoke-virtual/range {p5 .. p5}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 208
    :cond_9
    :goto_1
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 141
    .end local v7    # "found":Z
    :cond_a
    add-int/lit8 v3, p2, 0x1

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-static/range {v1 .. v6}, Lcom/smartisanos/quicksearchbox/pinyinsearch/util/QwertyUtil;->findPinyinUnits(Ljava/util/List;IILjava/lang/String;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)Z

    move-result v7

    .line 142
    .restart local v7    # "found":Z
    const/4 v1, 0x1

    if-ne v7, v1, :cond_9

    .line 143
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 148
    .end local v7    # "found":Z
    :cond_b
    invoke-virtual {v11}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinBaseUnit;->getPinyin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 150
    const/4 v14, 0x0

    .line 151
    .local v14, "startIndex":I
    invoke-virtual {v12}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinUnit;->getStartPosition()I

    move-result v1

    add-int/2addr v1, v14

    invoke-virtual {v12}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinUnit;->getStartPosition()I

    move-result v2

    add-int/2addr v2, v14

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 152
    const/4 v1, 0x0

    invoke-virtual/range {p4 .. p4}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    move-object/from16 v0, p4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 153
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 154
    .end local v14    # "startIndex":I
    :cond_c
    invoke-virtual {v11}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinBaseUnit;->getPinyin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 156
    const/4 v14, 0x0

    .line 157
    .restart local v14    # "startIndex":I
    const/4 v1, 0x0

    invoke-virtual {v11}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinBaseUnit;->getPinyin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    move-object/from16 v0, p4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 158
    invoke-virtual {v12}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinUnit;->getStartPosition()I

    move-result v1

    add-int/2addr v1, v14

    invoke-virtual {v12}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinUnit;->getStartPosition()I

    move-result v2

    add-int/2addr v2, v14

    invoke-virtual {v11}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinBaseUnit;->getPinyin()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 159
    add-int/lit8 v2, p1, 0x1

    const/4 v3, 0x0

    move-object/from16 v1, p0

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-static/range {v1 .. v6}, Lcom/smartisanos/quicksearchbox/pinyinsearch/util/QwertyUtil;->findPinyinUnits(Ljava/util/List;IILjava/lang/String;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)Z

    move-result v7

    .line 160
    .restart local v7    # "found":Z
    const/4 v1, 0x1

    if-ne v1, v7, :cond_d

    .line 161
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 163
    :cond_d
    const/4 v1, 0x0

    invoke-virtual {v11}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinBaseUnit;->getPinyin()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 164
    invoke-virtual/range {p5 .. p5}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {v11}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinBaseUnit;->getPinyin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual/range {p5 .. p5}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    move-object/from16 v0, p5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 166
    .end local v7    # "found":Z
    .end local v14    # "startIndex":I
    :cond_e
    invoke-virtual/range {p5 .. p5}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-gtz v1, :cond_13

    .line 167
    invoke-virtual {v11}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinBaseUnit;->getPinyin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 168
    invoke-virtual {v11}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinBaseUnit;->getPinyin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 169
    .local v9, "index":I
    invoke-virtual {v12}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinUnit;->getStartPosition()I

    move-result v1

    add-int/2addr v1, v9

    invoke-virtual {v12}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinUnit;->getStartPosition()I

    move-result v2

    add-int/2addr v2, v9

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 170
    const/4 v1, 0x0

    invoke-virtual/range {p4 .. p4}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    move-object/from16 v0, p4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 171
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 176
    .end local v9    # "index":I
    :cond_f
    invoke-virtual {v11}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinBaseUnit;->getPinyin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    .line 177
    .local v10, "numLength":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    if-ge v8, v10, :cond_12

    .line 178
    invoke-virtual {v11}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinBaseUnit;->getPinyin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    .line 179
    .local v15, "subStr":Ljava/lang/String;
    invoke-virtual {v13, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 180
    const/4 v1, 0x0

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v2

    move-object/from16 v0, p4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 181
    invoke-virtual {v12}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinUnit;->getStartPosition()I

    move-result v1

    add-int/2addr v1, v8

    invoke-virtual {v12}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinUnit;->getStartPosition()I

    move-result v2

    add-int/2addr v2, v8

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 182
    add-int/lit8 v2, p1, 0x1

    const/4 v3, 0x0

    move-object/from16 v1, p0

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-static/range {v1 .. v6}, Lcom/smartisanos/quicksearchbox/pinyinsearch/util/QwertyUtil;->findPinyinUnits(Ljava/util/List;IILjava/lang/String;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)Z

    move-result v7

    .line 183
    .restart local v7    # "found":Z
    const/4 v1, 0x1

    if-ne v1, v7, :cond_10

    .line 184
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 186
    :cond_10
    const/4 v1, 0x0

    invoke-virtual {v11}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinBaseUnit;->getPinyin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 187
    invoke-virtual/range {p5 .. p5}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual/range {p5 .. p5}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    move-object/from16 v0, p5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 177
    .end local v7    # "found":Z
    :cond_11
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 195
    .end local v15    # "subStr":Ljava/lang/String;
    :cond_12
    add-int/lit8 v3, p2, 0x1

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-static/range {v1 .. v6}, Lcom/smartisanos/quicksearchbox/pinyinsearch/util/QwertyUtil;->findPinyinUnits(Ljava/util/List;IILjava/lang/String;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)Z

    move-result v7

    .line 196
    .restart local v7    # "found":Z
    const/4 v1, 0x1

    if-ne v1, v7, :cond_9

    .line 197
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 202
    .end local v7    # "found":Z
    .end local v8    # "i":I
    .end local v10    # "numLength":I
    :cond_13
    add-int/lit8 v3, p2, 0x1

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-static/range {v1 .. v6}, Lcom/smartisanos/quicksearchbox/pinyinsearch/util/QwertyUtil;->findPinyinUnits(Ljava/util/List;IILjava/lang/String;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)Z

    move-result v7

    .line 203
    .restart local v7    # "found":Z
    const/4 v1, 0x1

    if-ne v1, v7, :cond_9

    .line 204
    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method public static match(Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;Ljava/lang/String;)Z
    .locals 12
    .param p0, "pinyinSearchUnit"    # Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;
    .param p1, "keyword"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 40
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move v0, v11

    .line 72
    :goto_0
    return v0

    .line 44
    :cond_1
    invoke-virtual {p0}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;->getBaseData()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;->getMatchKeyword()Ljava/lang/StringBuffer;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_2
    move v0, v11

    .line 45
    goto :goto_0

    .line 48
    :cond_3
    invoke-virtual {p0}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;->getMatchKeyword()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;->getMatchKeyword()Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    invoke-virtual {v0, v11, v3}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 51
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    .line 52
    .local v9, "searchLowerCase":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;->getBaseData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 53
    .local v7, "index":I
    const/4 v0, -0x1

    if-le v7, v0, :cond_4

    .line 54
    invoke-virtual {p0}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;->getMatchKeyword()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;->getBaseData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v7

    invoke-virtual {v3, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v10

    .line 55
    goto :goto_0

    .line 59
    :cond_4
    invoke-virtual {p0}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;->getPinyinUnits()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    .line 60
    .local v8, "pinyinUnitsLength":I
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 61
    .local v4, "searchBuffer":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v8, :cond_6

    .line 62
    const/4 v2, 0x0

    .line 63
    .local v2, "j":I
    invoke-virtual {p0}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;->getMatchKeyword()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;->getMatchKeyword()Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    invoke-virtual {v0, v11, v3}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 64
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    invoke-virtual {v4, v11, v0}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 65
    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 66
    invoke-virtual {p0}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;->getPinyinUnits()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;->getBaseData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;->getMatchKeyword()Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/smartisanos/quicksearchbox/pinyinsearch/util/QwertyUtil;->findPinyinUnits(Ljava/util/List;IILjava/lang/String;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)Z

    move-result v6

    .line 67
    .local v6, "found":Z
    if-ne v10, v6, :cond_5

    move v0, v10

    .line 68
    goto/16 :goto_0

    .line 61
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v2    # "j":I
    .end local v6    # "found":Z
    :cond_6
    move v0, v11

    .line 72
    goto/16 :goto_0
.end method
