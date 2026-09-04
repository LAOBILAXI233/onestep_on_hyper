.class final Lorg/apache/commons/codec/language/bm/Rule$3;
.super Ljava/lang/Object;
.source "Rule.java"

.implements Lorg/apache/commons/codec/language/bm/Rule$RPattern;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/codec/language/bm/Rule;->pattern(Ljava/lang/String;)Lorg/apache/commons/codec/language/bm/Rule$RPattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


.method constructor <init>()V
    .locals 0

    .prologue
    .line 487
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public isMatch(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p1, "input"    # Ljava/lang/CharSequence;

    .prologue
    .line 490
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
