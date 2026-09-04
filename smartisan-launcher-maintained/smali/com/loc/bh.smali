.class public Lcom/loc/bh;
.super Ljava/lang/Object;
.source "Utils.java"


.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "\\."

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const-string v1, "\\."

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v1, v2

    array-length v4, v3

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v0, v2, v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    aget-object v5, v3, v1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v0, v5

    if-nez v0, :cond_0

    aget-object v0, v2, v1

    aget-object v5, v3, v1

    invoke-virtual {v0, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    :goto_1
    return v0

    :cond_1
    array-length v0, v2

    array-length v1, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sub-int/2addr v0, v1

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "Utils"

    const-string v2, "compareVersion"

    invoke-static {v0, v1, v2}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    goto :goto_1
.end method
