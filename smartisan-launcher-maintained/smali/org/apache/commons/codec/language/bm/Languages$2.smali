.class final Lorg/apache/commons/codec/language/bm/Languages$2;
.super Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;
.source "Languages.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/codec/language/bm/Languages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


.method constructor <init>()V
    .locals 0

    .prologue
    .line 228
    invoke-direct {p0}, Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;-><init>()V

    return-void
.end method


.method public contains(Ljava/lang/String;)Z
    .locals 1
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 231
    const/4 v0, 0x1

    return v0
.end method

.method public getAny()Ljava/lang/String;
    .locals 2

    .prologue
    .line 236
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Can\'t fetch any language from the any language set."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 241
    const/4 v0, 0x0

    return v0
.end method

.method public isSingleton()Z
    .locals 1

    .prologue
    .line 246
    const/4 v0, 0x0

    return v0
.end method

.method public restrictTo(Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;)Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;
    .locals 0
    .param p1, "other"    # Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;

    .prologue
    .line 251
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 256
    const-string v0, "ANY_LANGUAGE"

    return-object v0
.end method
