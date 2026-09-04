.class final Lorg/apache/commons/codec/language/bm/PhoneticEngine$RulesApplication;
.super Ljava/lang/Object;
.source "PhoneticEngine.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/codec/language/bm/PhoneticEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RulesApplication"
.end annotation


.field private final finalRules:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/codec/language/bm/Rule;",
            ">;>;"
        }
    .end annotation
.end field

.field private found:Z

.field private i:I

.field private final input:Ljava/lang/CharSequence;

.field private final maxPhonemes:I

.field private phonemeBuilder:Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;


.method public constructor <init>(Ljava/util/Map;Ljava/lang/CharSequence;Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;II)V
    .locals 2
    .param p2, "input"    # Ljava/lang/CharSequence;
    .param p3, "phonemeBuilder"    # Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;
    .param p4, "i"    # I
    .param p5, "maxPhonemes"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/codec/language/bm/Rule;",
            ">;>;",
            "Ljava/lang/CharSequence;",
            "Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 180
    .local p1, "finalRules":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lorg/apache/commons/codec/language/bm/Rule;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    if-nez p1, :cond_0

    .line 182
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The finalRules argument must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/codec/language/bm/PhoneticEngine$RulesApplication;->finalRules:Ljava/util/Map;

    .line 185
    iput-object p3, p0, Lorg/apache/commons/codec/language/bm/PhoneticEngine$RulesApplication;->phonemeBuilder:Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;

    .line 186
    iput-object p2, p0, Lorg/apache/commons/codec/language/bm/PhoneticEngine$RulesApplication;->input:Ljava/lang/CharSequence;

    .line 187
    iput p4, p0, Lorg/apache/commons/codec/language/bm/PhoneticEngine$RulesApplication;->i:I

    .line 188
    iput p5, p0, Lorg/apache/commons/codec/language/bm/PhoneticEngine$RulesApplication;->maxPhonemes:I

    .line 189
    return-void
.end method


.method public getI()I
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Lorg/apache/commons/codec/language/bm/PhoneticEngine$RulesApplication;->i:I

    return v0
.end method

.method public getPhonemeBuilder()Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lorg/apache/commons/codec/language/bm/PhoneticEngine$RulesApplication;->phonemeBuilder:Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;

    return-object v0
.end method

.method public invoke()Lorg/apache/commons/codec/language/bm/PhoneticEngine$RulesApplication;
    .locals 9

    .prologue
    .line 207
    const/4 v5, 0x0

    iput-boolean v5, p0, Lorg/apache/commons/codec/language/bm/PhoneticEngine$RulesApplication;->found:Z

    .line 208
    const/4 v2, 0x1

    .line 209
    .local v2, "patternLength":I
    iget-object v5, p0, Lorg/apache/commons/codec/language/bm/PhoneticEngine$RulesApplication;->finalRules:Ljava/util/Map;

    iget-object v6, p0, Lorg/apache/commons/codec/language/bm/PhoneticEngine$RulesApplication;->input:Ljava/lang/CharSequence;

    iget v7, p0, Lorg/apache/commons/codec/language/bm/PhoneticEngine$RulesApplication;->i:I

    iget v8, p0, Lorg/apache/commons/codec/language/bm/PhoneticEngine$RulesApplication;->i:I

    add-int/2addr v8, v2

    invoke-interface {v6, v7, v8}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 210
    .local v4, "rules":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/codec/language/bm/Rule;>;"
    if-eqz v4, :cond_1

    .line 211
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/codec/language/bm/Rule;

    .line 212
    .local v3, "rule":Lorg/apache/commons/codec/language/bm/Rule;
    invoke-virtual {v3}, Lorg/apache/commons/codec/language/bm/Rule;->getPattern()Ljava/lang/String;

    move-result-object v1

    .line 213
    .local v1, "pattern":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 214
    iget-object v5, p0, Lorg/apache/commons/codec/language/bm/PhoneticEngine$RulesApplication;->input:Ljava/lang/CharSequence;

    iget v6, p0, Lorg/apache/commons/codec/language/bm/PhoneticEngine$RulesApplication;->i:I

    invoke-virtual {v3, v5, v6}, Lorg/apache/commons/codec/language/bm/Rule;->patternAndContextMatches(Ljava/lang/CharSequence;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 215
    iget-object v5, p0, Lorg/apache/commons/codec/language/bm/PhoneticEngine$RulesApplication;->phonemeBuilder:Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;

    invoke-virtual {v3}, Lorg/apache/commons/codec/language/bm/Rule;->getPhoneme()Lorg/apache/commons/codec/language/bm/Rule$PhonemeExpr;

    move-result-object v6

    iget v7, p0, Lorg/apache/commons/codec/language/bm/PhoneticEngine$RulesApplication;->maxPhonemes:I

    invoke-virtual {v5, v6, v7}, Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;->apply(Lorg/apache/commons/codec/language/bm/Rule$PhonemeExpr;I)V

    .line 216
    const/4 v5, 0x1

    iput-boolean v5, p0, Lorg/apache/commons/codec/language/bm/PhoneticEngine$RulesApplication;->found:Z

    .line 222
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "pattern":Ljava/lang/String;
    .end local v3    # "rule":Lorg/apache/commons/codec/language/bm/Rule;
    :cond_1
    iget-boolean v5, p0, Lorg/apache/commons/codec/language/bm/PhoneticEngine$RulesApplication;->found:Z

    if-nez v5, :cond_2

    .line 223
    const/4 v2, 0x1

    .line 226
    :cond_2
    iget v5, p0, Lorg/apache/commons/codec/language/bm/PhoneticEngine$RulesApplication;->i:I

    add-int/2addr v5, v2

    iput v5, p0, Lorg/apache/commons/codec/language/bm/PhoneticEngine$RulesApplication;->i:I

    .line 227
    return-object p0
.end method

.method public isFound()Z
    .locals 1

    .prologue
    .line 231
    iget-boolean v0, p0, Lorg/apache/commons/codec/language/bm/PhoneticEngine$RulesApplication;->found:Z

    return v0
.end method
