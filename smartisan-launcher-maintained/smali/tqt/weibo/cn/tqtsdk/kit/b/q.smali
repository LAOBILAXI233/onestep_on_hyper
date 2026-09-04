.class public Ltqt/weibo/cn/tqtsdk/kit/b/q;
.super Ljava/lang/Object;
.source "StringUtils.java"


.method public static a(I)Ljava/lang/String;
    .locals 6

    .prologue
    .line 24
    const-string v0, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 25
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 26
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 27
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    .line 28
    invoke-virtual {v2, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    .line 29
    const-string v5, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 27
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
