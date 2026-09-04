.class public Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;
.super Ljava/lang/Object;
.source "BeanPropertyMap.java"

.implements Ljava/lang/Iterable;
.implements Ljava/io/Serializable;


.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


.field private static final serialVersionUID:J = 0x2L


.field protected final _caseInsensitive:Z

.field private _hashArea:[Ljava/lang/Object;

.field private _hashMask:I

.field private _propsInOrder:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

.field private _size:I

.field private _spillCount:I


.method protected constructor <init>(Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;Z)V
    .locals 2
    .param p1, "base"    # Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;
    .param p2, "caseInsensitive"    # Z

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-boolean p2, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_caseInsensitive:Z

    .line 74
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_propsInOrder:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    iget-object v1, p1, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_propsInOrder:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_propsInOrder:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 75
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_propsInOrder:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->init(Ljava/util/Collection;)V

    .line 76
    return-void
.end method

.method public constructor <init>(ZLjava/util/Collection;)V
    .locals 1
    .param p1, "caseInsensitive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Collection",
            "<",
            "Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p2, "props":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-boolean p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_caseInsensitive:Z

    .line 61
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    invoke-interface {p2, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_propsInOrder:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 62
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->init(Ljava/util/Collection;)V

    .line 63
    return-void
.end method

.method private final _find2(Ljava/lang/String;ILjava/lang/Object;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "slot"    # I
    .param p3, "match"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 392
    if-nez p3, :cond_1

    .line 411
    :cond_0
    :goto_0
    return-object v4

    .line 396
    :cond_1
    iget v5, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashMask:I

    add-int/lit8 v1, v5, 0x1

    .line 397
    .local v1, "hashSize":I
    shr-int/lit8 v5, p2, 0x1

    add-int/2addr v5, v1

    shl-int/lit8 v3, v5, 0x1

    .line 398
    .local v3, "ix":I
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    aget-object p3, v5, v3

    .line 399
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 400
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    add-int/lit8 v5, v3, 0x1

    aget-object v4, v4, v5

    check-cast v4, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    goto :goto_0

    .line 402
    :cond_2
    if-eqz p3, :cond_0

    .line 403
    shr-int/lit8 v5, v1, 0x1

    add-int/2addr v5, v1

    shl-int/lit8 v2, v5, 0x1

    .line 404
    .local v2, "i":I
    iget v5, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_spillCount:I

    add-int v0, v2, v5

    .local v0, "end":I
    :goto_1
    if-ge v2, v0, :cond_0

    .line 405
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    aget-object p3, v5, v2

    .line 406
    if-eq p3, p1, :cond_3

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 407
    :cond_3
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    add-int/lit8 v5, v2, 0x1

    aget-object v4, v4, v5

    check-cast v4, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    goto :goto_0

    .line 404
    :cond_4
    add-int/lit8 v2, v2, 0x2

    goto :goto_1
.end method

.method private final _findFromOrdered(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)I
    .locals 5
    .param p1, "prop"    # Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .prologue
    .line 583
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_propsInOrder:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    array-length v0, v2

    .local v0, "end":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 584
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_propsInOrder:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    aget-object v2, v2, v1

    if-ne v2, p1, :cond_0

    .line 585
    return v1

    .line 583
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 588
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal state: property \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' missing from _propsInOrder"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private final _findIndexInHash(Ljava/lang/String;)I
    .locals 6
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 559
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashCode(Ljava/lang/String;)I

    move-result v4

    .line 560
    .local v4, "slot":I
    shl-int/lit8 v3, v4, 0x1

    .line 563
    .local v3, "ix":I
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    aget-object v5, v5, v3

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 564
    add-int/lit8 v5, v3, 0x1

    .line 579
    :goto_0
    return v5

    .line 567
    :cond_0
    iget v5, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashMask:I

    add-int/lit8 v1, v5, 0x1

    .line 568
    .local v1, "hashSize":I
    shr-int/lit8 v5, v4, 0x1

    add-int/2addr v5, v1

    shl-int/lit8 v3, v5, 0x1

    .line 569
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    aget-object v5, v5, v3

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 570
    add-int/lit8 v5, v3, 0x1

    goto :goto_0

    .line 573
    :cond_1
    shr-int/lit8 v5, v1, 0x1

    add-int/2addr v5, v1

    shl-int/lit8 v2, v5, 0x1

    .line 574
    .local v2, "i":I
    iget v5, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_spillCount:I

    add-int v0, v2, v5

    .local v0, "end":I
    :goto_1
    if-ge v2, v0, :cond_3

    .line 575
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    aget-object v5, v5, v2

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 576
    add-int/lit8 v5, v2, 0x1

    goto :goto_0

    .line 574
    :cond_2
    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    .line 579
    :cond_3
    const/4 v5, -0x1

    goto :goto_0
.end method

.method private final _hashCode(Ljava/lang/String;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 602
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashMask:I

    and-int/2addr v0, v1

    return v0
.end method

.method public static construct(Ljava/util/Collection;Z)Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;
    .locals 1
    .param p1, "caseInsensitive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;",
            ">;Z)",
            "Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;"
        }
    .end annotation

    .prologue
    .line 161
    .local p0, "props":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;>;"
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;

    invoke-direct {v0, p1, p0}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;-><init>(ZLjava/util/Collection;)V

    return-object v0
.end method

.method private static final findSize(I)I
    .locals 3
    .param p0, "size"    # I

    .prologue
    .line 143
    const/4 v2, 0x5

    if-gt p0, v2, :cond_1

    .line 144
    const/16 v1, 0x8

    .line 154
    :cond_0
    :goto_0
    return v1

    .line 146
    :cond_1
    const/16 v2, 0xc

    if-gt p0, v2, :cond_2

    .line 147
    const/16 v1, 0x10

    goto :goto_0

    .line 149
    :cond_2
    shr-int/lit8 v2, p0, 0x2

    add-int v0, p0, v2

    .line 150
    .local v0, "needed":I
    const/16 v1, 0x20

    .line 151
    .local v1, "result":I
    :goto_1
    if-ge v1, v0, :cond_0

    .line 152
    add-int/2addr v1, v1

    goto :goto_1
.end method

.method private properties()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;",
            ">;"
        }
    .end annotation

    .prologue
    .line 316
    new-instance v2, Ljava/util/ArrayList;

    iget v4, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_size:I

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 317
    .local v2, "p":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;>;"
    const/4 v1, 0x1

    .local v1, "i":I
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    array-length v0, v4

    .local v0, "end":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 318
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    aget-object v3, v4, v1

    check-cast v3, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 319
    .local v3, "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    if-eqz v3, :cond_0

    .line 320
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    :cond_0
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 323
    .end local v3    # "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    :cond_1
    return-object v2
.end method


.method protected _rename(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Lcom/fasterxml/jackson/databind/util/NameTransformer;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .locals 5
    .param p1, "prop"    # Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .param p2, "xf"    # Lcom/fasterxml/jackson/databind/util/NameTransformer;

    .prologue
    .line 506
    if-nez p1, :cond_0

    move-object v3, p1

    .line 520
    .end local p1    # "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .local v3, "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    :goto_0
    return-object v3

    .line 509
    .end local v3    # "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .restart local p1    # "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/fasterxml/jackson/databind/util/NameTransformer;->transform(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 510
    .local v2, "newName":Ljava/lang/String;
    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->withSimpleName(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object p1

    .line 511
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getValueDeserializer()Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v0

    .line 512
    .local v0, "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    if-eqz v0, :cond_1

    .line 514
    invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->unwrappingDeserializer(Lcom/fasterxml/jackson/databind/util/NameTransformer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v1

    .line 516
    .local v1, "newDeser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<Ljava/lang/Object;>;"
    if-eq v1, v0, :cond_1

    .line 517
    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->withValueDeserializer(Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object p1

    .end local v1    # "newDeser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<Ljava/lang/Object;>;"
    :cond_1
    move-object v3, p1

    .line 520
    .end local p1    # "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .restart local v3    # "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    goto :goto_0
.end method

.method public assignIndexes()Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;
    .locals 6

    .prologue
    .line 227
    const/4 v2, 0x0

    .line 228
    .local v2, "index":I
    const/4 v1, 0x1

    .local v1, "i":I
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    array-length v0, v5

    .local v0, "end":I
    move v3, v2

    .end local v2    # "index":I
    .local v3, "index":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 229
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    aget-object v4, v5, v1

    check-cast v4, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 230
    .local v4, "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    if-eqz v4, :cond_1

    .line 231
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "index":I
    .restart local v2    # "index":I
    invoke-virtual {v4, v3}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->assignIndex(I)V

    .line 228
    :goto_1
    add-int/lit8 v1, v1, 0x2

    move v3, v2

    .end local v2    # "index":I
    .restart local v3    # "index":I
    goto :goto_0

    .line 234
    .end local v4    # "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    :cond_0
    return-object p0

    .restart local v4    # "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    :cond_1
    move v2, v3

    .end local v3    # "index":I
    .restart local v2    # "index":I
    goto :goto_1
.end method

.method public find(I)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 359
    const/4 v1, 0x1

    .local v1, "i":I
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    array-length v0, v3

    .local v0, "end":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 360
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    aget-object v2, v3, v1

    check-cast v2, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 361
    .local v2, "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getPropertyIndex()I

    move-result v3

    if-ne p1, v3, :cond_0

    .line 365
    .end local v2    # "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    :goto_1
    return-object v2

    .line 359
    .restart local v2    # "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    :cond_0
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 365
    .end local v2    # "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public find(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 370
    if-nez p1, :cond_0

    .line 371
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Can not pass null property name"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 373
    :cond_0
    iget-boolean v3, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_caseInsensitive:Z

    if-eqz v3, :cond_1

    .line 374
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 378
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    iget v4, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashMask:I

    and-int v2, v3, v4

    .line 382
    .local v2, "slot":I
    shl-int/lit8 v0, v2, 0x1

    .line 383
    .local v0, "ix":I
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    aget-object v1, v3, v0

    .line 384
    .local v1, "match":Ljava/lang/Object;
    if-eq v1, p1, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 385
    :cond_2
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    add-int/lit8 v4, v0, 0x1

    aget-object v3, v3, v4

    check-cast v3, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 387
    :goto_0
    return-object v3

    :cond_3
    invoke-direct {p0, p1, v2, v1}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_find2(Ljava/lang/String;ILjava/lang/Object;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v3

    goto :goto_0
.end method

.method public findDeserializeAndSet(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 3
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p3, "bean"    # Ljava/lang/Object;
    .param p4, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 464
    invoke-virtual {p0, p4}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->find(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v1

    .line 465
    .local v1, "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    if-nez v1, :cond_0

    .line 466
    const/4 v2, 0x0

    .line 473
    :goto_0
    return v2

    .line 469
    :cond_0
    :try_start_0
    invoke-virtual {v1, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->deserializeAndSet(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 473
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 470
    :catch_0
    move-exception v0

    .line 471
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0, p3, p4, p2}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)V

    goto :goto_1
.end method

.method public getPropertiesInInsertionOrder()[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_propsInOrder:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    return-object v0
.end method

.method protected final getPropertyName(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)Ljava/lang/String;
    .locals 1
    .param p1, "prop"    # Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .prologue
    .line 349
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_caseInsensitive:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected init(Ljava/util/Collection;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p1, "props":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;>;"
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v9

    iput v9, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_size:I

    .line 97
    iget v9, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_size:I

    invoke-static {v9}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->findSize(I)I

    move-result v1

    .line 98
    .local v1, "hashSize":I
    add-int/lit8 v9, v1, -0x1

    iput v9, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashMask:I

    .line 101
    shr-int/lit8 v9, v1, 0x1

    add-int/2addr v9, v1

    mul-int/lit8 v0, v9, 0x2

    .line 102
    .local v0, "alloc":I
    new-array v2, v0, [Ljava/lang/Object;

    .line 103
    .local v2, "hashed":[Ljava/lang/Object;
    const/4 v8, 0x0

    .line 105
    .local v8, "spillCount":I
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 107
    .local v6, "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    if-eqz v6, :cond_0

    .line 111
    invoke-virtual {p0, v6}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->getPropertyName(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)Ljava/lang/String;

    move-result-object v5

    .line 112
    .local v5, "key":Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashCode(Ljava/lang/String;)I

    move-result v7

    .line 113
    .local v7, "slot":I
    shl-int/lit8 v4, v7, 0x1

    .line 116
    .local v4, "ix":I
    aget-object v9, v2, v4

    if-eqz v9, :cond_1

    .line 118
    shr-int/lit8 v9, v7, 0x1

    add-int/2addr v9, v1

    shl-int/lit8 v4, v9, 0x1

    .line 119
    aget-object v9, v2, v4

    if-eqz v9, :cond_1

    .line 121
    shr-int/lit8 v9, v1, 0x1

    add-int/2addr v9, v1

    shl-int/lit8 v9, v9, 0x1

    add-int v4, v9, v8

    .line 122
    add-int/lit8 v8, v8, 0x2

    .line 123
    array-length v9, v2

    if-lt v4, v9, :cond_1

    .line 124
    array-length v9, v2

    add-int/lit8 v9, v9, 0x4

    invoke-static {v2, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    .line 129
    :cond_1
    aput-object v5, v2, v4

    .line 130
    add-int/lit8 v9, v4, 0x1

    aput-object v6, v2, v9

    goto :goto_0

    .line 137
    .end local v4    # "ix":I
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .end local v7    # "slot":I
    :cond_2
    iput-object v2, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    .line 138
    iput v8, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_spillCount:I

    .line 139
    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;",
            ">;"
        }
    .end annotation

    .prologue
    .line 331
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->properties()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V
    .locals 9
    .param p1, "propToRm"    # Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .prologue
    .line 427
    new-instance v5, Ljava/util/ArrayList;

    iget v6, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_size:I

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 428
    .local v5, "props":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;>;"
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->getPropertyName(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)Ljava/lang/String;

    move-result-object v3

    .line 429
    .local v3, "key":Ljava/lang/String;
    const/4 v1, 0x0

    .line 431
    .local v1, "found":Z
    const/4 v2, 0x1

    .local v2, "i":I
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    array-length v0, v6

    .local v0, "end":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 432
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    aget-object v4, v6, v2

    check-cast v4, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 433
    .local v4, "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    if-nez v4, :cond_0

    .line 431
    :goto_1
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 436
    :cond_0
    if-nez v1, :cond_1

    .line 437
    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 438
    if-eqz v1, :cond_1

    .line 440
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_propsInOrder:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    invoke-direct {p0, v4}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_findFromOrdered(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)I

    move-result v7

    const/4 v8, 0x0

    aput-object v8, v6, v7

    goto :goto_1

    .line 444
    :cond_1
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 446
    .end local v4    # "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    :cond_2
    if-nez v1, :cond_3

    .line 447
    new-instance v6, Ljava/util/NoSuchElementException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No entry \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' found, can\'t remove"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 449
    :cond_3
    invoke-virtual {p0, v5}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->init(Ljava/util/Collection;)V

    .line 450
    return-void
.end method

.method public renameAll(Lcom/fasterxml/jackson/databind/util/NameTransformer;)Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;
    .locals 6
    .param p1, "transformer"    # Lcom/fasterxml/jackson/databind/util/NameTransformer;

    .prologue
    .line 243
    if-eqz p1, :cond_0

    sget-object v4, Lcom/fasterxml/jackson/databind/util/NameTransformer;->NOP:Lcom/fasterxml/jackson/databind/util/NameTransformer;

    if-ne p1, v4, :cond_1

    .line 261
    .end local p0    # "this":Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;
    :cond_0
    :goto_0
    return-object p0

    .line 247
    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;
    :cond_1
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_propsInOrder:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    array-length v1, v4

    .line 248
    .local v1, "len":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 250
    .local v2, "newProps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 251
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_propsInOrder:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    aget-object v3, v4, v0

    .line 254
    .local v3, "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    if-nez v3, :cond_2

    .line 255
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 258
    :cond_2
    invoke-virtual {p0, v3, p1}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_rename(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Lcom/fasterxml/jackson/databind/util/NameTransformer;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 261
    .end local v3    # "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    :cond_3
    new-instance v4, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;

    iget-boolean v5, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_caseInsensitive:Z

    invoke-direct {v4, v5, v2}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;-><init>(ZLjava/util/Collection;)V

    move-object p0, v4

    goto :goto_0
.end method

.method public replace(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V
    .locals 6
    .param p1, "newProp"    # Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .prologue
    .line 301
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->getPropertyName(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)Ljava/lang/String;

    move-result-object v1

    .line 302
    .local v1, "key":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_findIndexInHash(Ljava/lang/String;)I

    move-result v0

    .line 304
    .local v0, "ix":I
    if-ltz v0, :cond_0

    .line 305
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    aget-object v2, v3, v0

    check-cast v2, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 306
    .local v2, "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    aput-object p1, v3, v0

    .line 308
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_propsInOrder:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    invoke-direct {p0, v2}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_findFromOrdered(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)I

    move-result v4

    aput-object p1, v3, v4

    .line 309
    return-void

    .line 312
    .end local v2    # "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    :cond_0
    new-instance v3, Ljava/util/NoSuchElementException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No entry \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' found, can\'t replace"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public size()I
    .locals 1

    .prologue
    .line 420
    iget v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_size:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 479
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 480
    .local v4, "sb":Ljava/lang/StringBuilder;
    const-string v5, "Properties=["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    const/4 v0, 0x0

    .line 483
    .local v0, "count":I
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 484
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 485
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 486
    .local v3, "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "count":I
    .local v1, "count":I
    if-lez v0, :cond_0

    .line 487
    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    :cond_0
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    const/16 v5, 0x28

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 491
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 492
    const/16 v5, 0x29

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v1

    .line 493
    .end local v1    # "count":I
    .restart local v0    # "count":I
    goto :goto_0

    .line 494
    .end local v3    # "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    :cond_1
    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 495
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public withCaseInsensitivity(Z)Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;
    .locals 1
    .param p1, "state"    # Z

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_caseInsensitive:Z

    if-ne v0, p1, :cond_0

    .line 89
    .end local p0    # "this":Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;-><init>(Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;Z)V

    move-object p0, v0

    goto :goto_0
.end method

.method public withProperty(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;
    .locals 10
    .param p1, "newProp"    # Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .prologue
    .line 174
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->getPropertyName(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)Ljava/lang/String;

    move-result-object v4

    .line 176
    .local v4, "key":Ljava/lang/String;
    const/4 v2, 0x1

    .local v2, "i":I
    iget-object v8, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    array-length v0, v8

    .local v0, "end":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 177
    iget-object v8, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    aget-object v6, v8, v2

    check-cast v6, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 178
    .local v6, "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 179
    iget-object v8, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    aput-object p1, v8, v2

    .line 180
    iget-object v8, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_propsInOrder:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    invoke-direct {p0, v6}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_findFromOrdered(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)I

    move-result v9

    aput-object p1, v8, v9

    .line 221
    .end local v6    # "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    :goto_1
    return-object p0

    .line 176
    .restart local v6    # "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    :cond_0
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 185
    .end local v6    # "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    :cond_1
    invoke-direct {p0, v4}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashCode(Ljava/lang/String;)I

    move-result v7

    .line 186
    .local v7, "slot":I
    iget v8, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashMask:I

    add-int/lit8 v1, v8, 0x1

    .line 187
    .local v1, "hashSize":I
    shl-int/lit8 v3, v7, 0x1

    .line 190
    .local v3, "ix":I
    iget-object v8, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    aget-object v8, v8, v3

    if-eqz v8, :cond_2

    .line 192
    shr-int/lit8 v8, v7, 0x1

    add-int/2addr v8, v1

    shl-int/lit8 v3, v8, 0x1

    .line 193
    iget-object v8, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    aget-object v8, v8, v3

    if-eqz v8, :cond_2

    .line 195
    shr-int/lit8 v8, v1, 0x1

    add-int/2addr v8, v1

    shl-int/lit8 v8, v8, 0x1

    iget v9, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_spillCount:I

    add-int v3, v8, v9

    .line 196
    iget v8, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_spillCount:I

    add-int/lit8 v8, v8, 0x2

    iput v8, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_spillCount:I

    .line 197
    iget-object v8, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    array-length v8, v8

    if-lt v3, v8, :cond_2

    .line 198
    iget-object v8, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    iget-object v9, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    array-length v9, v9

    add-int/lit8 v9, v9, 0x4

    invoke-static {v8, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v8

    iput-object v8, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    .line 212
    :cond_2
    iget-object v8, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    aput-object v4, v8, v3

    .line 213
    iget-object v8, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    add-int/lit8 v9, v3, 0x1

    aput-object p1, v8, v9

    .line 215
    iget-object v8, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_propsInOrder:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    array-length v5, v8

    .line 216
    .local v5, "last":I
    iget-object v8, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_propsInOrder:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    add-int/lit8 v9, v5, 0x1

    invoke-static {v8, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    iput-object v8, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_propsInOrder:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 217
    iget-object v8, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_propsInOrder:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    aput-object p1, v8, v5

    goto :goto_1
.end method

.method public withoutProperties(Ljava/util/Collection;)Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;"
        }
    .end annotation

    .prologue
    .line 273
    .local p1, "toExclude":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 291
    .end local p0    # "this":Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;
    :goto_0
    return-object p0

    .line 276
    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;
    :cond_0
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_propsInOrder:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    array-length v1, v4

    .line 277
    .local v1, "len":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 279
    .local v2, "newProps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 280
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_propsInOrder:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    aget-object v3, v4, v0

    .line 284
    .local v3, "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    if-eqz v3, :cond_1

    .line 285
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 286
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 291
    .end local v3    # "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    :cond_2
    new-instance v4, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;

    iget-boolean v5, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_caseInsensitive:Z

    invoke-direct {v4, v5, v2}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;-><init>(ZLjava/util/Collection;)V

    move-object p0, v4

    goto :goto_0
.end method

.method protected wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "bean"    # Ljava/lang/Object;
    .param p3, "fieldName"    # Ljava/lang/String;
    .param p4, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 527
    :goto_0
    instance-of v1, p1, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 528
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_0

    .line 531
    :cond_0
    instance-of v1, p1, Ljava/lang/Error;

    if-eqz v1, :cond_1

    .line 532
    check-cast p1, Ljava/lang/Error;

    .end local p1    # "t":Ljava/lang/Throwable;
    throw p1

    .line 535
    .restart local p1    # "t":Ljava/lang/Throwable;
    :cond_1
    if-eqz p4, :cond_2

    sget-object v1, Lcom/fasterxml/jackson/databind/DeserializationFeature;->WRAP_EXCEPTIONS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p4, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    const/4 v0, 0x1

    .line 537
    .local v0, "wrap":Z
    :goto_1
    instance-of v1, p1, Ljava/io/IOException;

    if-eqz v1, :cond_5

    .line 538
    if-eqz v0, :cond_3

    instance-of v1, p1, Lcom/fasterxml/jackson/core/JsonProcessingException;

    if-nez v1, :cond_6

    .line 539
    :cond_3
    check-cast p1, Ljava/io/IOException;

    .end local p1    # "t":Ljava/lang/Throwable;
    throw p1

    .line 535
    .end local v0    # "wrap":Z
    .restart local p1    # "t":Ljava/lang/Throwable;
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 541
    .restart local v0    # "wrap":Z
    :cond_5
    if-nez v0, :cond_6

    .line 542
    instance-of v1, p1, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_6

    .line 543
    check-cast p1, Ljava/lang/RuntimeException;

    .end local p1    # "t":Ljava/lang/Throwable;
    throw p1

    .line 546
    .restart local p1    # "t":Ljava/lang/Throwable;
    :cond_6
    invoke-static {p1, p2, p3}, Lcom/fasterxml/jackson/databind/JsonMappingException;->wrapWithPath(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v1

    throw v1
.end method
