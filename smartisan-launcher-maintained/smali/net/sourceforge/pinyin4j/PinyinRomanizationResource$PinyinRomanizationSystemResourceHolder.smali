.class Lnet/sourceforge/pinyin4j/PinyinRomanizationResource$PinyinRomanizationSystemResourceHolder;
.super Ljava/lang/Object;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sourceforge/pinyin4j/PinyinRomanizationResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PinyinRomanizationSystemResourceHolder"
.end annotation


.field static final theInstance:Lnet/sourceforge/pinyin4j/PinyinRomanizationResource;


.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lnet/sourceforge/pinyin4j/PinyinRomanizationResource;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnet/sourceforge/pinyin4j/PinyinRomanizationResource;-><init>(Lnet/sourceforge/pinyin4j/PinyinRomanizationResource$1;)V

    sput-object v0, Lnet/sourceforge/pinyin4j/PinyinRomanizationResource$PinyinRomanizationSystemResourceHolder;->theInstance:Lnet/sourceforge/pinyin4j/PinyinRomanizationResource;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
