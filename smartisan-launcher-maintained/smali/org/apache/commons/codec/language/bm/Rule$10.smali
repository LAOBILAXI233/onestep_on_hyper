.class final Lorg/apache/commons/codec/language/bm/Rule$10;
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


.field pattern:Ljava/util/regex/Pattern;

.field final synthetic val$regex:Ljava/lang/String;


.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 566
    iput-object p1, p0, Lorg/apache/commons/codec/language/bm/Rule$10;->val$regex:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 567
    iget-object v0, p0, Lorg/apache/commons/codec/language/bm/Rule$10;->val$regex:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/codec/language/bm/Rule$10;->pattern:Ljava/util/regex/Pattern;

    return-void
.end method


.method public isMatch(Ljava/lang/CharSequence;)Z
    .locals 2
    .param p1, "input"    # Ljava/lang/CharSequence;

    .prologue
    .line 571
    iget-object v1, p0, Lorg/apache/commons/codec/language/bm/Rule$10;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 572
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    return v1
.end method
