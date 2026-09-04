.class public Lnet/sourceforge/pinyin4j/format/HanyuPinyinVCharType;
.super Ljava/lang/Object;


.field public static final WITH_U_AND_COLON:Lnet/sourceforge/pinyin4j/format/HanyuPinyinVCharType;

.field public static final WITH_U_UNICODE:Lnet/sourceforge/pinyin4j/format/HanyuPinyinVCharType;

.field public static final WITH_V:Lnet/sourceforge/pinyin4j/format/HanyuPinyinVCharType;


.field protected name:Ljava/lang/String;


.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lnet/sourceforge/pinyin4j/format/HanyuPinyinVCharType;

    const-string v1, "WITH_U_AND_COLON"

    invoke-direct {v0, v1}, Lnet/sourceforge/pinyin4j/format/HanyuPinyinVCharType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/sourceforge/pinyin4j/format/HanyuPinyinVCharType;->WITH_U_AND_COLON:Lnet/sourceforge/pinyin4j/format/HanyuPinyinVCharType;

    new-instance v0, Lnet/sourceforge/pinyin4j/format/HanyuPinyinVCharType;

    const-string v1, "WITH_V"

    invoke-direct {v0, v1}, Lnet/sourceforge/pinyin4j/format/HanyuPinyinVCharType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/sourceforge/pinyin4j/format/HanyuPinyinVCharType;->WITH_V:Lnet/sourceforge/pinyin4j/format/HanyuPinyinVCharType;

    new-instance v0, Lnet/sourceforge/pinyin4j/format/HanyuPinyinVCharType;

    const-string v1, "WITH_U_UNICODE"

    invoke-direct {v0, v1}, Lnet/sourceforge/pinyin4j/format/HanyuPinyinVCharType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/sourceforge/pinyin4j/format/HanyuPinyinVCharType;->WITH_U_UNICODE:Lnet/sourceforge/pinyin4j/format/HanyuPinyinVCharType;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lnet/sourceforge/pinyin4j/format/HanyuPinyinVCharType;->setName(Ljava/lang/String;)V

    return-void
.end method


.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/pinyin4j/format/HanyuPinyinVCharType;->name:Ljava/lang/String;

    return-object v0
.end method

.method protected setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/sourceforge/pinyin4j/format/HanyuPinyinVCharType;->name:Ljava/lang/String;

    return-void
.end method
