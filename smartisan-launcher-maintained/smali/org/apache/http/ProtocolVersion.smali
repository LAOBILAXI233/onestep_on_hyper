.class public Lorg/apache/http/ProtocolVersion;
.super Ljava/lang/Object;
.source "ProtocolVersion.java"

.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


.field private static final serialVersionUID:J = 0x7c37246eac22717cL


.field protected final major:I

.field protected final minor:I

.field protected final protocol:Ljava/lang/String;


.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p1, "protocol"    # Ljava/lang/String;
    .param p2, "major"    # I
    .param p3, "minor"    # I

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const-string v0, "Protocol name"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/http/ProtocolVersion;->protocol:Ljava/lang/String;

    .line 72
    const-string v0, "Protocol minor version"

    invoke-static {p2, v0}, Lorg/apache/http/util/Args;->notNegative(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/apache/http/ProtocolVersion;->major:I

    .line 73
    const-string v0, "Protocol minor version"

    invoke-static {p3, v0}, Lorg/apache/http/util/Args;->notNegative(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/apache/http/ProtocolVersion;->minor:I

    .line 74
    return-void
.end method


.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 261
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public compareToVersion(Lorg/apache/http/ProtocolVersion;)I
    .locals 5
    .param p1, "that"    # Lorg/apache/http/ProtocolVersion;

    .prologue
    .line 202
    const-string v1, "Protocol version"

    invoke-static {p1, v1}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 203
    iget-object v1, p0, Lorg/apache/http/ProtocolVersion;->protocol:Ljava/lang/String;

    iget-object v2, p1, Lorg/apache/http/ProtocolVersion;->protocol:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "Versions for different protocols cannot be compared: %s %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Lorg/apache/http/util/Args;->check(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 205
    invoke-virtual {p0}, Lorg/apache/http/ProtocolVersion;->getMajor()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/http/ProtocolVersion;->getMajor()I

    move-result v2

    sub-int v0, v1, v2

    .line 206
    .local v0, "delta":I
    if-nez v0, :cond_0

    .line 207
    invoke-virtual {p0}, Lorg/apache/http/ProtocolVersion;->getMinor()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/http/ProtocolVersion;->getMinor()I

    move-result v2

    sub-int v0, v1, v2

    .line 209
    :cond_0
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 156
    if-ne p0, p1, :cond_1

    .line 164
    :cond_0
    :goto_0
    return v1

    .line 159
    :cond_1
    instance-of v3, p1, Lorg/apache/http/ProtocolVersion;

    if-nez v3, :cond_2

    move v1, v2

    .line 160
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 162
    check-cast v0, Lorg/apache/http/ProtocolVersion;

    .line 164
    .local v0, "that":Lorg/apache/http/ProtocolVersion;
    iget-object v3, p0, Lorg/apache/http/ProtocolVersion;->protocol:Ljava/lang/String;

    iget-object v4, v0, Lorg/apache/http/ProtocolVersion;->protocol:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Lorg/apache/http/ProtocolVersion;->major:I

    iget v4, v0, Lorg/apache/http/ProtocolVersion;->major:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lorg/apache/http/ProtocolVersion;->minor:I

    iget v4, v0, Lorg/apache/http/ProtocolVersion;->minor:I

    if-eq v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public forVersion(II)Lorg/apache/http/ProtocolVersion;
    .locals 2
    .param p1, "major"    # I
    .param p2, "minor"    # I

    .prologue
    .line 121
    iget v0, p0, Lorg/apache/http/ProtocolVersion;->major:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lorg/apache/http/ProtocolVersion;->minor:I

    if-ne p2, v0, :cond_0

    .line 126
    .end local p0    # "this":Lorg/apache/http/ProtocolVersion;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/apache/http/ProtocolVersion;
    :cond_0
    new-instance v0, Lorg/apache/http/ProtocolVersion;

    iget-object v1, p0, Lorg/apache/http/ProtocolVersion;->protocol:Ljava/lang/String;

    invoke-direct {v0, v1, p1, p2}, Lorg/apache/http/ProtocolVersion;-><init>(Ljava/lang/String;II)V

    move-object p0, v0

    goto :goto_0
.end method

.method public final getMajor()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lorg/apache/http/ProtocolVersion;->major:I

    return v0
.end method

.method public final getMinor()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lorg/apache/http/ProtocolVersion;->minor:I

    return v0
.end method

.method public final getProtocol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lorg/apache/http/ProtocolVersion;->protocol:Ljava/lang/String;

    return-object v0
.end method

.method public final greaterEquals(Lorg/apache/http/ProtocolVersion;)Z
    .locals 1
    .param p1, "version"    # Lorg/apache/http/ProtocolVersion;

    .prologue
    .line 224
    invoke-virtual {p0, p1}, Lorg/apache/http/ProtocolVersion;->isComparable(Lorg/apache/http/ProtocolVersion;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/http/ProtocolVersion;->compareToVersion(Lorg/apache/http/ProtocolVersion;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .line 137
    iget-object v0, p0, Lorg/apache/http/ProtocolVersion;->protocol:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget v1, p0, Lorg/apache/http/ProtocolVersion;->major:I

    const v2, 0x186a0

    mul-int/2addr v1, v2

    xor-int/2addr v0, v1

    iget v1, p0, Lorg/apache/http/ProtocolVersion;->minor:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public isComparable(Lorg/apache/http/ProtocolVersion;)Z
    .locals 2
    .param p1, "that"    # Lorg/apache/http/ProtocolVersion;

    .prologue
    .line 181
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/apache/http/ProtocolVersion;->protocol:Ljava/lang/String;

    iget-object v1, p1, Lorg/apache/http/ProtocolVersion;->protocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final lessEquals(Lorg/apache/http/ProtocolVersion;)Z
    .locals 1
    .param p1, "version"    # Lorg/apache/http/ProtocolVersion;

    .prologue
    .line 239
    invoke-virtual {p0, p1}, Lorg/apache/http/ProtocolVersion;->isComparable(Lorg/apache/http/ProtocolVersion;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/http/ProtocolVersion;->compareToVersion(Lorg/apache/http/ProtocolVersion;)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 251
    .local v0, "buffer":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/apache/http/ProtocolVersion;->protocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 253
    iget v1, p0, Lorg/apache/http/ProtocolVersion;->major:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 255
    iget v1, p0, Lorg/apache/http/ProtocolVersion;->minor:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
