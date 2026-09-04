.class public Lnet/sourceforge/pinyin4j/format/HanyuPinyinToneType;
.super Ljava/lang/Object;


.field public static final WITHOUT_TONE:Lnet/sourceforge/pinyin4j/format/HanyuPinyinToneType;

.field public static final WITH_TONE_MARK:Lnet/sourceforge/pinyin4j/format/HanyuPinyinToneType;

.field public static final WITH_TONE_NUMBER:Lnet/sourceforge/pinyin4j/format/HanyuPinyinToneType;


.field protected name:Ljava/lang/String;


.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lnet/sourceforge/pinyin4j/format/HanyuPinyinToneType;

    const-string v1, "WITH_TONE_NUMBER"

    invoke-direct {v0, v1}, Lnet/sourceforge/pinyin4j/format/HanyuPinyinToneType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/sourceforge/pinyin4j/format/HanyuPinyinToneType;->WITH_TONE_NUMBER:Lnet/sourceforge/pinyin4j/format/HanyuPinyinToneType;

    new-instance v0, Lnet/sourceforge/pinyin4j/format/HanyuPinyinToneType;

    const-string v1, "WITHOUT_TONE"

    invoke-direct {v0, v1}, Lnet/sourceforge/pinyin4j/format/HanyuPinyinToneType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/sourceforge/pinyin4j/format/HanyuPinyinToneType;->WITHOUT_TONE:Lnet/sourceforge/pinyin4j/format/HanyuPinyinToneType;

    new-instance v0, Lnet/sourceforge/pinyin4j/format/HanyuPinyinToneType;

    const-string v1, "WITH_TONE_MARK"

    invoke-direct {v0, v1}, Lnet/sourceforge/pinyin4j/format/HanyuPinyinToneType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/sourceforge/pinyin4j/format/HanyuPinyinToneType;->WITH_TONE_MARK:Lnet/sourceforge/pinyin4j/format/HanyuPinyinToneType;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lnet/sourceforge/pinyin4j/format/HanyuPinyinToneType;->setName(Ljava/lang/String;)V

    return-void
.end method


.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/pinyin4j/format/HanyuPinyinToneType;->name:Ljava/lang/String;

    return-object v0
.end method

.method protected setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/sourceforge/pinyin4j/format/HanyuPinyinToneType;->name:Ljava/lang/String;

    return-void
.end method
