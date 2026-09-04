.class final Lorg/apache/commons/codec/language/bm/Rule$7;
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


.field final synthetic val$bContent:Ljava/lang/String;

.field final synthetic val$shouldMatch:Z


.method constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 538
    iput-object p1, p0, Lorg/apache/commons/codec/language/bm/Rule$7;->val$bContent:Ljava/lang/String;

    iput-boolean p2, p0, Lorg/apache/commons/codec/language/bm/Rule$7;->val$shouldMatch:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public isMatch(Ljava/lang/CharSequence;)Z
    .locals 4
    .param p1, "input"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 541
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ne v2, v0, :cond_0

    iget-object v2, p0, Lorg/apache/commons/codec/language/bm/Rule$7;->val$bContent:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v2, v3}, Lorg/apache/commons/codec/language/bm/Rule;->access$300(Ljava/lang/CharSequence;C)Z

    move-result v2

    iget-boolean v3, p0, Lorg/apache/commons/codec/language/bm/Rule$7;->val$shouldMatch:Z

    if-ne v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
