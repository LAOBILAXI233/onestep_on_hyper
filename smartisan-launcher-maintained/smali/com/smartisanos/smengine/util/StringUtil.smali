.class public Lcom/smartisanos/smengine/util/StringUtil;
.super Ljava/lang/Object;
.source "StringUtil.java"


.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static floatToStringWithFactorLength(Ljava/lang/Float;I)Ljava/lang/String;
    .locals 6
    .param p0, "f"    # Ljava/lang/Float;
    .param p1, "len"    # I

    .prologue
    .line 8
    invoke-virtual {p0}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v2

    .line 9
    .local v2, "str":Ljava/lang/String;
    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 10
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 11
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v5, v0, 0x1

    sub-int v1, v4, v5

    .line 12
    .local v1, "lastLen":I
    if-lez v1, :cond_0

    .line 13
    if-ge p1, v1, :cond_1

    .line 14
    add-int/lit8 v4, p1, 0x1

    add-int/2addr v0, v4

    .line 18
    :goto_0
    const/4 v4, 0x0

    invoke-virtual {v2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .local v3, "subStr":Ljava/lang/String;
    move-object v2, v3

    .line 24
    .end local v1    # "lastLen":I
    .end local v2    # "str":Ljava/lang/String;
    .end local v3    # "subStr":Ljava/lang/String;
    :cond_0
    return-object v2

    .line 16
    .restart local v1    # "lastLen":I
    .restart local v2    # "str":Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0
.end method
