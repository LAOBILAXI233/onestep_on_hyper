.class Lnet/sourceforge/pinyin4j/PinyinFormatter;
.super Ljava/lang/Object;


.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertToneNumber2ToneMark(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const/16 v6, 0x65

    const/16 v5, 0x61

    const/16 v7, 0x24

    const/4 v9, 0x0

    const/4 v4, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[a-z]*[1-5]?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "[a-z]*[1-5]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v8

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const-string v3, "ou"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v4, v1, :cond_1

    move v2, v5

    :goto_0
    if-eq v7, v2, :cond_0

    if-eq v4, v1, :cond_0

    const-string v3, "aeiouv"

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v3, v8, -0x1

    mul-int/lit8 v2, v2, 0x5

    add-int/2addr v2, v3

    const-string v3, "\u0101\u00e1\u0103\u00e0a\u0113\u00e9\u0115\u00e8e\u012b\u00ed\u012d\u00eci\u014d\u00f3\u014f\u00f2o\u016b\u00fa\u016d\u00f9u\u01d6\u01d8\u01da\u01dc\u00fc"

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "v"

    const-string v6, "\u00fc"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "v"

    const-string v2, "\u00fc"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    if-eq v4, v2, :cond_2

    move v1, v2

    move v2, v6

    goto :goto_0

    :cond_2
    if-eq v4, v3, :cond_3

    const-string v1, "ou"

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    move v2, v1

    move v1, v3

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_2
    if-ltz v1, :cond_6

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    const-string v3, "[aeiouv]"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    goto :goto_0

    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_5
    const-string v1, "v"

    const-string v2, "\u00fc"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_6
    move v1, v4

    move v2, v7

    goto/16 :goto_0
.end method

.method static formatHanyuPinyin(Ljava/lang/String;Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/pinyin4j/format/exception/BadHanyuPinyinOutputFormatCombination;
        }
    .end annotation

    sget-object v0, Lnet/sourceforge/pinyin4j/format/HanyuPinyinToneType;->WITH_TONE_MARK:Lnet/sourceforge/pinyin4j/format/HanyuPinyinToneType;

    invoke-virtual {p1}, Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;->getToneType()Lnet/sourceforge/pinyin4j/format/HanyuPinyinToneType;

    move-result-object v1

    if-ne v0, v1, :cond_1

    sget-object v0, Lnet/sourceforge/pinyin4j/format/HanyuPinyinVCharType;->WITH_V:Lnet/sourceforge/pinyin4j/format/HanyuPinyinVCharType;

    invoke-virtual {p1}, Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;->getVCharType()Lnet/sourceforge/pinyin4j/format/HanyuPinyinVCharType;

    move-result-object v1

    if-eq v0, v1, :cond_0

    sget-object v0, Lnet/sourceforge/pinyin4j/format/HanyuPinyinVCharType;->WITH_U_AND_COLON:Lnet/sourceforge/pinyin4j/format/HanyuPinyinVCharType;

    invoke-virtual {p1}, Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;->getVCharType()Lnet/sourceforge/pinyin4j/format/HanyuPinyinVCharType;

    move-result-object v1

    if-ne v0, v1, :cond_1

    :cond_0
    new-instance v0, Lnet/sourceforge/pinyin4j/format/exception/BadHanyuPinyinOutputFormatCombination;

    const-string v1, "tone marks cannot be added to v or u:"

    invoke-direct {v0, v1}, Lnet/sourceforge/pinyin4j/format/exception/BadHanyuPinyinOutputFormatCombination;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object v0, Lnet/sourceforge/pinyin4j/format/HanyuPinyinToneType;->WITHOUT_TONE:Lnet/sourceforge/pinyin4j/format/HanyuPinyinToneType;

    invoke-virtual {p1}, Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;->getToneType()Lnet/sourceforge/pinyin4j/format/HanyuPinyinToneType;

    move-result-object v1

    if-ne v0, v1, :cond_5

    const-string v0, "[1-5]"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_2
    :goto_0
    sget-object v0, Lnet/sourceforge/pinyin4j/format/HanyuPinyinVCharType;->WITH_V:Lnet/sourceforge/pinyin4j/format/HanyuPinyinVCharType;

    invoke-virtual {p1}, Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;->getVCharType()Lnet/sourceforge/pinyin4j/format/HanyuPinyinVCharType;

    move-result-object v1

    if-ne v0, v1, :cond_6

    const-string v0, "u:"

    const-string v1, "v"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_3
    :goto_1
    sget-object v0, Lnet/sourceforge/pinyin4j/format/HanyuPinyinCaseType;->UPPERCASE:Lnet/sourceforge/pinyin4j/format/HanyuPinyinCaseType;

    invoke-virtual {p1}, Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;->getCaseType()Lnet/sourceforge/pinyin4j/format/HanyuPinyinCaseType;

    move-result-object v1

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    :cond_4
    return-object p0

    :cond_5
    sget-object v0, Lnet/sourceforge/pinyin4j/format/HanyuPinyinToneType;->WITH_TONE_MARK:Lnet/sourceforge/pinyin4j/format/HanyuPinyinToneType;

    invoke-virtual {p1}, Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;->getToneType()Lnet/sourceforge/pinyin4j/format/HanyuPinyinToneType;

    move-result-object v1

    if-ne v0, v1, :cond_2

    const-string v0, "u:"

    const-string v1, "v"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/sourceforge/pinyin4j/PinyinFormatter;->convertToneNumber2ToneMark(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_6
    sget-object v0, Lnet/sourceforge/pinyin4j/format/HanyuPinyinVCharType;->WITH_U_UNICODE:Lnet/sourceforge/pinyin4j/format/HanyuPinyinVCharType;

    invoke-virtual {p1}, Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;->getVCharType()Lnet/sourceforge/pinyin4j/format/HanyuPinyinVCharType;

    move-result-object v1

    if-ne v0, v1, :cond_3

    const-string v0, "u:"

    const-string v1, "\u00fc"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1
.end method
