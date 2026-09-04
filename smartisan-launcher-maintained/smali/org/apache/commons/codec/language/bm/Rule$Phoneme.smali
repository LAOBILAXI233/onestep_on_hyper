.class public final Lorg/apache/commons/codec/language/bm/Rule$Phoneme;
.super Ljava/lang/Object;
.source "Rule.java"

.implements Lorg/apache/commons/codec/language/bm/Rule$PhonemeExpr;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/codec/language/bm/Rule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Phoneme"
.end annotation


.field public static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lorg/apache/commons/codec/language/bm/Rule$Phoneme;",
            ">;"
        }
    .end annotation
.end field


.field private final languages:Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;

.field private final phonemeText:Ljava/lang/StringBuilder;


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    new-instance v0, Lorg/apache/commons/codec/language/bm/Rule$Phoneme$1;

    invoke-direct {v0}, Lorg/apache/commons/codec/language/bm/Rule$Phoneme$1;-><init>()V

    sput-object v0, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;->COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;)V
    .locals 1
    .param p1, "phonemeText"    # Ljava/lang/CharSequence;
    .param p2, "languages"    # Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;->phonemeText:Ljava/lang/StringBuilder;

    .line 111
    iput-object p2, p0, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;->languages:Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;

    .line 112
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/codec/language/bm/Rule$Phoneme;Lorg/apache/commons/codec/language/bm/Rule$Phoneme;)V
    .locals 2
    .param p1, "phonemeLeft"    # Lorg/apache/commons/codec/language/bm/Rule$Phoneme;
    .param p2, "phonemeRight"    # Lorg/apache/commons/codec/language/bm/Rule$Phoneme;

    .prologue
    .line 115
    iget-object v0, p1, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;->phonemeText:Ljava/lang/StringBuilder;

    iget-object v1, p1, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;->languages:Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;-><init>(Ljava/lang/CharSequence;Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;)V

    .line 116
    iget-object v0, p0, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;->phonemeText:Ljava/lang/StringBuilder;

    iget-object v1, p2, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;->phonemeText:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 117
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/codec/language/bm/Rule$Phoneme;Lorg/apache/commons/codec/language/bm/Rule$Phoneme;Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;)V
    .locals 2
    .param p1, "phonemeLeft"    # Lorg/apache/commons/codec/language/bm/Rule$Phoneme;
    .param p2, "phonemeRight"    # Lorg/apache/commons/codec/language/bm/Rule$Phoneme;
    .param p3, "languages"    # Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;

    .prologue
    .line 120
    iget-object v0, p1, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;->phonemeText:Ljava/lang/StringBuilder;

    invoke-direct {p0, v0, p3}, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;-><init>(Ljava/lang/CharSequence;Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;)V

    .line 121
    iget-object v0, p0, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;->phonemeText:Ljava/lang/StringBuilder;

    iget-object v1, p2, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;->phonemeText:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 122
    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/codec/language/bm/Rule$Phoneme;)Ljava/lang/StringBuilder;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/codec/language/bm/Rule$Phoneme;

    .prologue
    .line 84
    iget-object v0, p0, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;->phonemeText:Ljava/lang/StringBuilder;

    return-object v0
.end method


.method public append(Ljava/lang/CharSequence;)Lorg/apache/commons/codec/language/bm/Rule$Phoneme;
    .locals 1
    .param p1, "str"    # Ljava/lang/CharSequence;

    .prologue
    .line 125
    iget-object v0, p0, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;->phonemeText:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 126
    return-object p0
.end method

.method public getLanguages()Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;->languages:Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;

    return-object v0
.end method

.method public getPhonemeText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;->phonemeText:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public getPhonemes()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/commons/codec/language/bm/Rule$Phoneme;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public join(Lorg/apache/commons/codec/language/bm/Rule$Phoneme;)Lorg/apache/commons/codec/language/bm/Rule$Phoneme;
    .locals 4
    .param p1, "right"    # Lorg/apache/commons/codec/language/bm/Rule$Phoneme;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 147
    new-instance v0, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;->phonemeText:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;->phonemeText:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;->languages:Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;

    iget-object v3, p1, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;->languages:Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;

    invoke-virtual {v2, v3}, Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;->restrictTo(Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;)Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;-><init>(Ljava/lang/CharSequence;Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;)V

    return-object v0
.end method
