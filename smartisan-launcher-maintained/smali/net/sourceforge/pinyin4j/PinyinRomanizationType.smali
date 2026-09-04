.class Lnet/sourceforge/pinyin4j/PinyinRomanizationType;
.super Ljava/lang/Object;


.field static final GWOYEU_ROMATZYH:Lnet/sourceforge/pinyin4j/PinyinRomanizationType;

.field static final HANYU_PINYIN:Lnet/sourceforge/pinyin4j/PinyinRomanizationType;

.field static final MPS2_PINYIN:Lnet/sourceforge/pinyin4j/PinyinRomanizationType;

.field static final TONGYONG_PINYIN:Lnet/sourceforge/pinyin4j/PinyinRomanizationType;

.field static final WADEGILES_PINYIN:Lnet/sourceforge/pinyin4j/PinyinRomanizationType;

.field static final YALE_PINYIN:Lnet/sourceforge/pinyin4j/PinyinRomanizationType;


.field protected tagName:Ljava/lang/String;


.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lnet/sourceforge/pinyin4j/PinyinRomanizationType;

    const-string v1, "Hanyu"

    invoke-direct {v0, v1}, Lnet/sourceforge/pinyin4j/PinyinRomanizationType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/sourceforge/pinyin4j/PinyinRomanizationType;->HANYU_PINYIN:Lnet/sourceforge/pinyin4j/PinyinRomanizationType;

    new-instance v0, Lnet/sourceforge/pinyin4j/PinyinRomanizationType;

    const-string v1, "Wade"

    invoke-direct {v0, v1}, Lnet/sourceforge/pinyin4j/PinyinRomanizationType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/sourceforge/pinyin4j/PinyinRomanizationType;->WADEGILES_PINYIN:Lnet/sourceforge/pinyin4j/PinyinRomanizationType;

    new-instance v0, Lnet/sourceforge/pinyin4j/PinyinRomanizationType;

    const-string v1, "MPSII"

    invoke-direct {v0, v1}, Lnet/sourceforge/pinyin4j/PinyinRomanizationType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/sourceforge/pinyin4j/PinyinRomanizationType;->MPS2_PINYIN:Lnet/sourceforge/pinyin4j/PinyinRomanizationType;

    new-instance v0, Lnet/sourceforge/pinyin4j/PinyinRomanizationType;

    const-string v1, "Yale"

    invoke-direct {v0, v1}, Lnet/sourceforge/pinyin4j/PinyinRomanizationType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/sourceforge/pinyin4j/PinyinRomanizationType;->YALE_PINYIN:Lnet/sourceforge/pinyin4j/PinyinRomanizationType;

    new-instance v0, Lnet/sourceforge/pinyin4j/PinyinRomanizationType;

    const-string v1, "Tongyong"

    invoke-direct {v0, v1}, Lnet/sourceforge/pinyin4j/PinyinRomanizationType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/sourceforge/pinyin4j/PinyinRomanizationType;->TONGYONG_PINYIN:Lnet/sourceforge/pinyin4j/PinyinRomanizationType;

    new-instance v0, Lnet/sourceforge/pinyin4j/PinyinRomanizationType;

    const-string v1, "Gwoyeu"

    invoke-direct {v0, v1}, Lnet/sourceforge/pinyin4j/PinyinRomanizationType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/sourceforge/pinyin4j/PinyinRomanizationType;->GWOYEU_ROMATZYH:Lnet/sourceforge/pinyin4j/PinyinRomanizationType;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lnet/sourceforge/pinyin4j/PinyinRomanizationType;->setTagName(Ljava/lang/String;)V

    return-void
.end method


.method getTagName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/pinyin4j/PinyinRomanizationType;->tagName:Ljava/lang/String;

    return-object v0
.end method

.method protected setTagName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/sourceforge/pinyin4j/PinyinRomanizationType;->tagName:Ljava/lang/String;

    return-void
.end method
