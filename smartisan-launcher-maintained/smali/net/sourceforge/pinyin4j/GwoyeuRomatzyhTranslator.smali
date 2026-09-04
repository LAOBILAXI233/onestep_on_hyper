.class Lnet/sourceforge/pinyin4j/GwoyeuRomatzyhTranslator;
.super Ljava/lang/Object;


.field private static tones:[Ljava/lang/String;


.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_I"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_II"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "_III"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "_IV"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "_V"

    aput-object v2, v0, v1

    sput-object v0, Lnet/sourceforge/pinyin4j/GwoyeuRomatzyhTranslator;->tones:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static convertHanyuPinyinToGwoyeuRomatzyh(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-static {p0}, Lnet/sourceforge/pinyin4j/TextHelper;->extractPinyinString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lnet/sourceforge/pinyin4j/TextHelper;->extractToneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    :try_start_0
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "//"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    sget-object v4, Lnet/sourceforge/pinyin4j/PinyinRomanizationType;->HANYU_PINYIN:Lnet/sourceforge/pinyin4j/PinyinRomanizationType;

    invoke-virtual {v4}, Lnet/sourceforge/pinyin4j/PinyinRomanizationType;->getTagName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "[text()=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "\']"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lnet/sourceforge/pinyin4j/GwoyeuRomatzyhResource;->getInstance()Lnet/sourceforge/pinyin4j/GwoyeuRomatzyhResource;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sourceforge/pinyin4j/GwoyeuRomatzyhResource;->getPinyinToGwoyeuMappingDoc()Lcom/hp/hpl/sparta/Document;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/hp/hpl/sparta/Document;->xpathSelectElement(Ljava/lang/String;)Lcom/hp/hpl/sparta/Element;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "../"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    sget-object v4, Lnet/sourceforge/pinyin4j/PinyinRomanizationType;->GWOYEU_ROMATZYH:Lnet/sourceforge/pinyin4j/PinyinRomanizationType;

    invoke-virtual {v4}, Lnet/sourceforge/pinyin4j/PinyinRomanizationType;->getTagName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    sget-object v4, Lnet/sourceforge/pinyin4j/GwoyeuRomatzyhTranslator;->tones:[Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v4, v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "/text()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/hp/hpl/sparta/Element;->xpathSelectString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/hp/hpl/sparta/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lcom/hp/hpl/sparta/ParseException;->printStackTrace()V

    goto :goto_0
.end method
