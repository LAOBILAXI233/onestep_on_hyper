.class Lorg/apache/commons/codec/digest/B64;
.super Ljava/lang/Object;
.source "B64.java"


.field static final B64T:Ljava/lang/String; = "./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"


.method constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static b64from24bit(BBBILjava/lang/StringBuilder;)V
    .locals 6
    .param p0, "b2"    # B
    .param p1, "b1"    # B
    .param p2, "b0"    # B
    .param p3, "outLen"    # I
    .param p4, "buffer"    # Ljava/lang/StringBuilder;

    .prologue
    .line 57
    shl-int/lit8 v3, p0, 0x10

    const v4, 0xffffff

    and-int/2addr v3, v4

    shl-int/lit8 v4, p1, 0x8

    const v5, 0xffff

    and-int/2addr v4, v5

    or-int/2addr v3, v4

    and-int/lit16 v4, p2, 0xff

    or-int v2, v3, v4

    .line 59
    .local v2, "w":I
    move v0, p3

    .local v0, "n":I
    move v1, v0

    .line 60
    .end local v0    # "n":I
    .local v1, "n":I
    :goto_0
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "n":I
    .restart local v0    # "n":I
    if-lez v1, :cond_0

    .line 61
    const-string v3, "./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"

    and-int/lit8 v4, v2, 0x3f

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 62
    shr-int/lit8 v2, v2, 0x6

    move v1, v0

    .end local v0    # "n":I
    .restart local v1    # "n":I
    goto :goto_0

    .line 64
    .end local v1    # "n":I
    .restart local v0    # "n":I
    :cond_0
    return-void
.end method

.method static getRandomSalt(I)Ljava/lang/String;
    .locals 5
    .param p0, "num"    # I

    .prologue
    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .local v1, "saltString":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-gt v0, p0, :cond_0

    .line 75
    const-string v2, "./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"

    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    const-string v4, "./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
