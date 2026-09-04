.class public final Lorg/apache/http/util/LangUtils;
.super Ljava/lang/Object;
.source "LangUtils.java"


.field public static final HASH_OFFSET:I = 0x25

.field public static final HASH_SEED:I = 0x11


.method private constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method public static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "obj1"    # Ljava/lang/Object;
    .param p1, "obj2"    # Ljava/lang/Object;

    .prologue
    .line 66
    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static equals([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 5
    .param p0, "a1"    # [Ljava/lang/Object;
    .param p1, "a2"    # [Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 85
    if-nez p0, :cond_2

    .line 86
    if-nez p1, :cond_1

    .line 96
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 86
    goto :goto_0

    .line 88
    :cond_2
    if-eqz p1, :cond_4

    array-length v3, p0

    array-length v4, p1

    if-ne v3, v4, :cond_4

    .line 89
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, p0

    if-ge v0, v3, :cond_0

    .line 90
    aget-object v3, p0, v0

    aget-object v4, p1, v0

    invoke-static {v3, v4}, Lorg/apache/http/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    move v1, v2

    .line 91
    goto :goto_0

    .line 89
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    :cond_4
    move v1, v2

    .line 96
    goto :goto_0
.end method

.method public static hashCode(II)I
    .locals 1
    .param p0, "seed"    # I
    .param p1, "hashcode"    # I

    .prologue
    .line 47
    mul-int/lit8 v0, p0, 0x25

    add-int/2addr v0, p1

    return v0
.end method

.method public static hashCode(ILjava/lang/Object;)I
    .locals 1
    .param p0, "seed"    # I
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 55
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    invoke-static {p0, v0}, Lorg/apache/http/util/LangUtils;->hashCode(II)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hashCode(IZ)I
    .locals 1
    .param p0, "seed"    # I
    .param p1, "b"    # Z

    .prologue
    .line 51
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, v0}, Lorg/apache/http/util/LangUtils;->hashCode(II)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
