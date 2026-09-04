.class final Lcom/fasterxml/jackson/databind/type/TypeBindings$AsKey;
.super Ljava/lang/Object;
.source "TypeBindings.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/type/TypeBindings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AsKey"
.end annotation


.field private final _hash:I

.field private final _params:[Lcom/fasterxml/jackson/databind/JavaType;

.field private final _raw:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


.method public constructor <init>(Ljava/lang/Class;[Lcom/fasterxml/jackson/databind/JavaType;I)V
    .locals 0
    .param p2, "params"    # [Lcom/fasterxml/jackson/databind/JavaType;
    .param p3, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 436
    .local p1, "raw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 437
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings$AsKey;->_raw:Ljava/lang/Class;

    .line 438
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings$AsKey;->_params:[Lcom/fasterxml/jackson/databind/JavaType;

    .line 439
    iput p3, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings$AsKey;->_hash:I

    .line 440
    return-void
.end method


.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 447
    if-ne p1, p0, :cond_1

    .line 465
    :cond_0
    :goto_0
    return v4

    .line 448
    :cond_1
    if-nez p1, :cond_2

    move v4, v5

    goto :goto_0

    .line 449
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    if-eq v6, v7, :cond_3

    move v4, v5

    goto :goto_0

    :cond_3
    move-object v2, p1

    .line 450
    check-cast v2, Lcom/fasterxml/jackson/databind/type/TypeBindings$AsKey;

    .line 452
    .local v2, "other":Lcom/fasterxml/jackson/databind/type/TypeBindings$AsKey;
    iget v6, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings$AsKey;->_hash:I

    iget v7, v2, Lcom/fasterxml/jackson/databind/type/TypeBindings$AsKey;->_hash:I

    if-ne v6, v7, :cond_5

    iget-object v6, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings$AsKey;->_raw:Ljava/lang/Class;

    iget-object v7, v2, Lcom/fasterxml/jackson/databind/type/TypeBindings$AsKey;->_raw:Ljava/lang/Class;

    if-ne v6, v7, :cond_5

    .line 453
    iget-object v3, v2, Lcom/fasterxml/jackson/databind/type/TypeBindings$AsKey;->_params:[Lcom/fasterxml/jackson/databind/JavaType;

    .line 454
    .local v3, "otherParams":[Lcom/fasterxml/jackson/databind/JavaType;
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings$AsKey;->_params:[Lcom/fasterxml/jackson/databind/JavaType;

    array-length v1, v6

    .line 456
    .local v1, "len":I
    array-length v6, v3

    if-ne v1, v6, :cond_5

    .line 457
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 458
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings$AsKey;->_params:[Lcom/fasterxml/jackson/databind/JavaType;

    aget-object v6, v6, v0

    aget-object v7, v3, v0

    invoke-virtual {v6, v7}, Lcom/fasterxml/jackson/databind/JavaType;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    move v4, v5

    .line 459
    goto :goto_0

    .line 457
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "len":I
    .end local v3    # "otherParams":[Lcom/fasterxml/jackson/databind/JavaType;
    :cond_5
    move v4, v5

    .line 465
    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 443
    iget v0, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings$AsKey;->_hash:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 470
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings$AsKey;->_raw:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
