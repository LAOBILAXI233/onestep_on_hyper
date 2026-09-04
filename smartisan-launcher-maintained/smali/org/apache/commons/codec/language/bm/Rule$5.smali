.class final Lorg/apache/commons/codec/language/bm/Rule$5;
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


.field final synthetic val$content:Ljava/lang/String;


.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 506
    iput-object p1, p0, Lorg/apache/commons/codec/language/bm/Rule$5;->val$content:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public isMatch(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p1, "input"    # Ljava/lang/CharSequence;

    .prologue
    .line 509
    iget-object v0, p0, Lorg/apache/commons/codec/language/bm/Rule$5;->val$content:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/apache/commons/codec/language/bm/Rule;->access$100(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method
