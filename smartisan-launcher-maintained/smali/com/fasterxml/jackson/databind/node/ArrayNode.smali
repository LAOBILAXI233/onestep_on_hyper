.class public Lcom/fasterxml/jackson/databind/node/ArrayNode;
.super Lcom/fasterxml/jackson/databind/node/ContainerNode;
.source "ArrayNode.java"


.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/node/ContainerNode",
        "<",
        "Lcom/fasterxml/jackson/databind/node/ArrayNode;",
        ">;"
    }
.end annotation


.field private final _children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fasterxml/jackson/databind/JsonNode;",
            ">;"
        }
    .end annotation
.end field


.method public constructor <init>(Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;)V
    .locals 1
    .param p1, "nf"    # Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/node/ContainerNode;-><init>(Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;)V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_children:Ljava/util/List;

    .line 31
    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;I)V
    .locals 1
    .param p1, "nf"    # Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;
    .param p2, "capacity"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/node/ContainerNode;-><init>(Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;)V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_children:Ljava/util/List;

    .line 39
    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;Ljava/util/List;)V
    .locals 0
    .param p1, "nf"    # Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;",
            "Ljava/util/List",
            "<",
            "Lcom/fasterxml/jackson/databind/JsonNode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p2, "children":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/JsonNode;>;"
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/node/ContainerNode;-><init>(Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;)V

    .line 46
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_children:Ljava/util/List;

    .line 47
    return-void
.end method


.method protected _add(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;
    .locals 1
    .param p1, "node"    # Lcom/fasterxml/jackson/databind/JsonNode;

    .prologue
    .line 832
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 833
    return-object p0
.end method

.method protected _at(Lcom/fasterxml/jackson/core/JsonPointer;)Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 1
    .param p1, "ptr"    # Lcom/fasterxml/jackson/core/JsonPointer;

    .prologue
    .line 51
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonPointer;->getMatchingIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->get(I)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    return-object v0
.end method

.method protected _childrenEqual(Lcom/fasterxml/jackson/databind/node/ArrayNode;)Z
    .locals 2
    .param p1, "other"    # Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .prologue
    .line 802
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_children:Ljava/util/List;

    iget-object v1, p1, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_children:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected _insert(ILcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;
    .locals 2
    .param p1, "index"    # I
    .param p2, "node"    # Lcom/fasterxml/jackson/databind/JsonNode;

    .prologue
    .line 838
    if-gez p1, :cond_0

    .line 839
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_children:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 845
    :goto_0
    return-object p0

    .line 840
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 841
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_children:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 843
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_children:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public add(D)Lcom/fasterxml/jackson/databind/node/ArrayNode;
    .locals 1
    .param p1, "v"    # D

    .prologue
    .line 495
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->numberNode(D)Lcom/fasterxml/jackson/databind/node/NumericNode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_add(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v0

    return-object v0
.end method

.method public add(F)Lcom/fasterxml/jackson/databind/node/ArrayNode;
    .locals 1
    .param p1, "v"    # F

    .prologue
    .line 473
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->numberNode(F)Lcom/fasterxml/jackson/databind/node/NumericNode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_add(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v0

    return-object v0
.end method

.method public add(I)Lcom/fasterxml/jackson/databind/node/ArrayNode;
    .locals 1
    .param p1, "v"    # I

    .prologue
    .line 430
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->numberNode(I)Lcom/fasterxml/jackson/databind/node/NumericNode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_add(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 431
    return-object p0
.end method

.method public add(J)Lcom/fasterxml/jackson/databind/node/ArrayNode;
    .locals 1
    .param p1, "v"    # J

    .prologue
    .line 452
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->numberNode(J)Lcom/fasterxml/jackson/databind/node/NumericNode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_add(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v0

    return-object v0
.end method

.method public add(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;
    .locals 0
    .param p1, "value"    # Lcom/fasterxml/jackson/databind/JsonNode;

    .prologue
    .line 271
    if-nez p1, :cond_0

    .line 272
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->nullNode()Lcom/fasterxml/jackson/databind/node/NullNode;

    move-result-object p1

    .line 274
    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_add(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 275
    return-object p0
.end method

.method public add(Ljava/lang/Boolean;)Lcom/fasterxml/jackson/databind/node/ArrayNode;
    .locals 1
    .param p1, "value"    # Ljava/lang/Boolean;

    .prologue
    .line 551
    if-nez p1, :cond_0

    .line 552
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->addNull()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v0

    .line 554
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->booleanNode(Z)Lcom/fasterxml/jackson/databind/node/BooleanNode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_add(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v0

    goto :goto_0
.end method

.method public add(Ljava/lang/Double;)Lcom/fasterxml/jackson/databind/node/ArrayNode;
    .locals 2
    .param p1, "value"    # Ljava/lang/Double;

    .prologue
    .line 505
    if-nez p1, :cond_0

    .line 506
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->addNull()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v0

    .line 508
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->numberNode(D)Lcom/fasterxml/jackson/databind/node/NumericNode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_add(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v0

    goto :goto_0
.end method

.method public add(Ljava/lang/Float;)Lcom/fasterxml/jackson/databind/node/ArrayNode;
    .locals 1
    .param p1, "value"    # Ljava/lang/Float;

    .prologue
    .line 483
    if-nez p1, :cond_0

    .line 484
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->addNull()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v0

    .line 486
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->numberNode(F)Lcom/fasterxml/jackson/databind/node/NumericNode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_add(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v0

    goto :goto_0
.end method

.method public add(Ljava/lang/Integer;)Lcom/fasterxml/jackson/databind/node/ArrayNode;
    .locals 1
    .param p1, "value"    # Ljava/lang/Integer;

    .prologue
    .line 441
    if-nez p1, :cond_0

    .line 442
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->addNull()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v0

    .line 444
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->numberNode(I)Lcom/fasterxml/jackson/databind/node/NumericNode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_add(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v0

    goto :goto_0
.end method

.method public add(Ljava/lang/Long;)Lcom/fasterxml/jackson/databind/node/ArrayNode;
    .locals 2
    .param p1, "value"    # Ljava/lang/Long;

    .prologue
    .line 461
    if-nez p1, :cond_0

    .line 462
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->addNull()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v0

    .line 464
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->numberNode(J)Lcom/fasterxml/jackson/databind/node/NumericNode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_add(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v0

    goto :goto_0
.end method

.method public add(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;
    .locals 1
    .param p1, "v"    # Ljava/lang/String;

    .prologue
    .line 529
    if-nez p1, :cond_0

    .line 530
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->addNull()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v0

    .line 532
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->textNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/TextNode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_add(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v0

    goto :goto_0
.end method

.method public add(Ljava/math/BigDecimal;)Lcom/fasterxml/jackson/databind/node/ArrayNode;
    .locals 1
    .param p1, "v"    # Ljava/math/BigDecimal;

    .prologue
    .line 517
    if-nez p1, :cond_0

    .line 518
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->addNull()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v0

    .line 520
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->numberNode(Ljava/math/BigDecimal;)Lcom/fasterxml/jackson/databind/node/NumericNode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_add(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v0

    goto :goto_0
.end method

.method public add(Z)Lcom/fasterxml/jackson/databind/node/ArrayNode;
    .locals 1
    .param p1, "v"    # Z

    .prologue
    .line 541
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->booleanNode(Z)Lcom/fasterxml/jackson/databind/node/BooleanNode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_add(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v0

    return-object v0
.end method

.method public add([B)Lcom/fasterxml/jackson/databind/node/ArrayNode;
    .locals 1
    .param p1, "v"    # [B

    .prologue
    .line 564
    if-nez p1, :cond_0

    .line 565
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->addNull()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v0

    .line 567
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->binaryNode([B)Lcom/fasterxml/jackson/databind/node/BinaryNode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_add(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v0

    goto :goto_0
.end method

.method public addAll(Lcom/fasterxml/jackson/databind/node/ArrayNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;
    .locals 2
    .param p1, "other"    # Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .prologue
    .line 288
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_children:Ljava/util/List;

    iget-object v1, p1, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_children:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 289
    return-object p0
.end method

.method public addAll(Ljava/util/Collection;)Lcom/fasterxml/jackson/databind/node/ArrayNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/fasterxml/jackson/databind/JsonNode;",
            ">;)",
            "Lcom/fasterxml/jackson/databind/node/ArrayNode;"
        }
    .end annotation

    .prologue
    .line 301
    .local p1, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/fasterxml/jackson/databind/JsonNode;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 302
    return-object p0
.end method

.method public addArray()Lcom/fasterxml/jackson/databind/node/ArrayNode;
    .locals 1

    .prologue
    .line 365
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->arrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v0

    .line 366
    .local v0, "n":Lcom/fasterxml/jackson/databind/node/ArrayNode;
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_add(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 367
    return-object v0
.end method

.method public addNull()Lcom/fasterxml/jackson/databind/node/ArrayNode;
    .locals 1

    .prologue
    .line 420
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->nullNode()Lcom/fasterxml/jackson/databind/node/NullNode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_add(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 421
    return-object p0
.end method

.method public addObject()Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 1

    .prologue
    .line 378
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->objectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    .line 379
    .local v0, "n":Lcom/fasterxml/jackson/databind/node/ObjectNode;
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_add(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 380
    return-object v0
.end method

.method public addPOJO(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/node/ArrayNode;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 391
    if-nez p1, :cond_0

    .line 392
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->addNull()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 396
    :goto_0
    return-object p0

    .line 394
    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->pojoNode(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/node/ValueNode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_add(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    goto :goto_0
.end method

.method public addRawValue(Lcom/fasterxml/jackson/databind/util/RawValue;)Lcom/fasterxml/jackson/databind/node/ArrayNode;
    .locals 1
    .param p1, "raw"    # Lcom/fasterxml/jackson/databind/util/RawValue;

    .prologue
    .line 405
    if-nez p1, :cond_0

    .line 406
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->addNull()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 410
    :goto_0
    return-object p0

    .line 408
    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->rawValueNode(Lcom/fasterxml/jackson/databind/util/RawValue;)Lcom/fasterxml/jackson/databind/node/ValueNode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_add(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    goto :goto_0
.end method

.method public asToken()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->deepCopy()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v0

    return-object v0
.end method

.method public deepCopy()Lcom/fasterxml/jackson/databind/node/ArrayNode;
    .locals 5

    .prologue
    .line 59
    new-instance v2, Lcom/fasterxml/jackson/databind/node/ArrayNode;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    invoke-direct {v2, v3}, Lcom/fasterxml/jackson/databind/node/ArrayNode;-><init>(Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;)V

    .line 61
    .local v2, "ret":Lcom/fasterxml/jackson/databind/node/ArrayNode;
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_children:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 62
    .local v0, "element":Lcom/fasterxml/jackson/databind/JsonNode;
    iget-object v3, v2, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_children:Ljava/util/List;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->deepCopy()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 64
    .end local v0    # "element":Lcom/fasterxml/jackson/databind/JsonNode;
    :cond_0
    return-object v2
.end method

.method public elements()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/fasterxml/jackson/databind/JsonNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 790
    if-ne p1, p0, :cond_1

    const/4 v0, 0x1

    .line 795
    .end local p1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 791
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    if-eqz p1, :cond_0

    .line 792
    instance-of v1, p1, Lcom/fasterxml/jackson/databind/node/ArrayNode;

    if-eqz v1, :cond_0

    .line 793
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_children:Ljava/util/List;

    check-cast p1, Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v1, p1, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_children:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public equals(Ljava/util/Comparator;Lcom/fasterxml/jackson/databind/JsonNode;)Z
    .locals 8
    .param p2, "o"    # Lcom/fasterxml/jackson/databind/JsonNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<",
            "Lcom/fasterxml/jackson/databind/JsonNode;",
            ">;",
            "Lcom/fasterxml/jackson/databind/JsonNode;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/fasterxml/jackson/databind/JsonNode;>;"
    const/4 v7, 0x0

    .line 126
    instance-of v5, p2, Lcom/fasterxml/jackson/databind/node/ArrayNode;

    if-nez v5, :cond_0

    move v5, v7

    .line 141
    :goto_0
    return v5

    :cond_0
    move-object v4, p2

    .line 129
    check-cast v4, Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 130
    .local v4, "other":Lcom/fasterxml/jackson/databind/node/ArrayNode;
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_children:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    .line 131
    .local v3, "len":I
    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->size()I

    move-result v5

    if-eq v5, v3, :cond_1

    move v5, v7

    .line 132
    goto :goto_0

    .line 134
    :cond_1
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_children:Ljava/util/List;

    .line 135
    .local v1, "l1":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/JsonNode;>;"
    iget-object v2, v4, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_children:Ljava/util/List;

    .line 136
    .local v2, "l2":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/JsonNode;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v3, :cond_3

    .line 137
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-virtual {v5, p1, v6}, Lcom/fasterxml/jackson/databind/JsonNode;->equals(Ljava/util/Comparator;Lcom/fasterxml/jackson/databind/JsonNode;)Z

    move-result v5

    if-nez v5, :cond_2

    move v5, v7

    .line 138
    goto :goto_0

    .line 136
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 141
    :cond_3
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public bridge synthetic findParent(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->findParent(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    return-object v0
.end method

.method public findParent(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 4
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 218
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_children:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 219
    .local v1, "node":Lcom/fasterxml/jackson/databind/JsonNode;
    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/JsonNode;->findParent(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    .line 220
    .local v2, "parent":Lcom/fasterxml/jackson/databind/JsonNode;
    if-eqz v2, :cond_0

    .line 221
    check-cast v2, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 224
    .end local v1    # "node":Lcom/fasterxml/jackson/databind/JsonNode;
    .end local v2    # "parent":Lcom/fasterxml/jackson/databind/JsonNode;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public findParents(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/fasterxml/jackson/databind/JsonNode;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/fasterxml/jackson/databind/JsonNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 230
    .local p2, "foundSoFar":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/JsonNode;>;"
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_children:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 231
    .local v1, "node":Lcom/fasterxml/jackson/databind/JsonNode;
    invoke-virtual {v1, p1, p2}, Lcom/fasterxml/jackson/databind/JsonNode;->findParents(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 232
    goto :goto_0

    .line 233
    .end local v1    # "node":Lcom/fasterxml/jackson/databind/JsonNode;
    :cond_0
    return-object p2
.end method

.method public findValue(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 4
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 188
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_children:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 189
    .local v1, "node":Lcom/fasterxml/jackson/databind/JsonNode;
    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/JsonNode;->findValue(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    .line 190
    .local v2, "value":Lcom/fasterxml/jackson/databind/JsonNode;
    if-eqz v2, :cond_0

    .line 194
    .end local v1    # "node":Lcom/fasterxml/jackson/databind/JsonNode;
    .end local v2    # "value":Lcom/fasterxml/jackson/databind/JsonNode;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public findValues(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/fasterxml/jackson/databind/JsonNode;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/fasterxml/jackson/databind/JsonNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 200
    .local p2, "foundSoFar":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/JsonNode;>;"
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_children:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 201
    .local v1, "node":Lcom/fasterxml/jackson/databind/JsonNode;
    invoke-virtual {v1, p1, p2}, Lcom/fasterxml/jackson/databind/JsonNode;->findValues(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 202
    goto :goto_0

    .line 203
    .end local v1    # "node":Lcom/fasterxml/jackson/databind/JsonNode;
    :cond_0
    return-object p2
.end method

.method public findValuesAsText(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 209
    .local p2, "foundSoFar":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_children:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 210
    .local v1, "node":Lcom/fasterxml/jackson/databind/JsonNode;
    invoke-virtual {v1, p1, p2}, Lcom/fasterxml/jackson/databind/JsonNode;->findValuesAsText(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 211
    goto :goto_0

    .line 212
    .end local v1    # "node":Lcom/fasterxml/jackson/databind/JsonNode;
    :cond_0
    return-object p2
.end method

.method public bridge synthetic get(I)Lcom/fasterxml/jackson/core/TreeNode;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->get(I)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/String;)Lcom/fasterxml/jackson/core/TreeNode;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    return-object v0
.end method

.method public get(I)Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 103
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 106
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 110
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNodeType()Lcom/fasterxml/jackson/databind/node/JsonNodeType;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/fasterxml/jackson/databind/node/JsonNodeType;->ARRAY:Lcom/fasterxml/jackson/databind/node/JsonNodeType;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 807
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    return v0
.end method

.method public insert(ID)Lcom/fasterxml/jackson/databind/node/ArrayNode;
    .locals 2
    .param p1, "index"    # I
    .param p2, "v"    # D

    .prologue
    .line 702
    invoke-virtual {p0, p2, p3}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->numberNode(D)Lcom/fasterxml/jackson/databind/node/NumericNode;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_insert(ILcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v0

    return-object v0
.end method

.method public insert(IF)Lcom/fasterxml/jackson/databind/node/ArrayNode;
    .locals 1
    .param p1, "index"    # I
    .param p2, "v"    # F

    .prologue
    .line 679
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->numberNode(F)Lcom/fasterxml/jackson/databind/node/NumericNode;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_insert(ILcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v0

    return-object v0
.end method

.method public insert(II)Lcom/fasterxml/jackson/databind/node/ArrayNode;
    .locals 1
    .param p1, "index"    # I
    .param p2, "v"    # I

    .prologue
    .line 630
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->numberNode(I)Lcom/fasterxml/jackson/databind/node/NumericNode;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_insert(ILcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 631
    return-object p0
.end method

.method public insert(IJ)Lcom/fasterxml/jackson/databind/node/ArrayNode;
    .locals 2
    .param p1, "index"    # I
    .param p2, "v"    # J

    .prologue
    .line 656
    invoke-virtual {p0, p2, p3}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->numberNode(J)Lcom/fasterxml/jackson/databind/node/NumericNode;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_insert(ILcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v0

    return-object v0
.end method

.method public insert(ILcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;
    .locals 0
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/fasterxml/jackson/databind/JsonNode;

    .prologue
    .line 316
    if-nez p2, :cond_0

    .line 317
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->nullNode()Lcom/fasterxml/jackson/databind/node/NullNode;

    move-result-object p2

    .line 319
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_insert(ILcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 320
    return-object p0
.end method

.method public insert(ILjava/lang/Boolean;)Lcom/fasterxml/jackson/databind/node/ArrayNode;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/Boolean;

    .prologue
    .line 761
    if-nez p2, :cond_0

    .line 762
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->insertNull(I)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v0

    .line 764
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->booleanNode(Z)Lcom/fasterxml/jackson/databind/node/BooleanNode;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_insert(ILcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v0

    goto :goto_0
.end method

.method public insert(ILjava/lang/Double;)Lcom/fasterxml/jackson/databind/node/ArrayNode;
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/Double;

    .prologue
    .line 712
    if-nez p2, :cond_0

    .line 713
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->insertNull(I)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v0

    .line 715
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->numberNode(D)Lcom/fasterxml/jackson/databind/node/NumericNode;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_insert(ILcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v0

    goto :goto_0
.end method

.method public insert(ILjava/lang/Float;)Lcom/fasterxml/jackson/databind/node/ArrayNode;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/Float;

    .prologue
    .line 689
    if-nez p2, :cond_0

    .line 690
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->insertNull(I)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v0

    .line 692
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->numberNode(F)Lcom/fasterxml/jackson/databind/node/NumericNode;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_insert(ILcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v0

    goto :goto_0
.end method

.method public insert(ILjava/lang/Integer;)Lcom/fasterxml/jackson/databind/node/ArrayNode;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/Integer;

    .prologue
    .line 641
    if-nez p2, :cond_0

    .line 642
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->insertNull(I)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 646
    :goto_0
    return-object p0

    .line 644
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->numberNode(I)Lcom/fasterxml/jackson/databind/node/NumericNode;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_insert(ILcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    goto :goto_0
.end method

.method public insert(ILjava/lang/Long;)Lcom/fasterxml/jackson/databind/node/ArrayNode;
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/Long;

    .prologue
    .line 666
    if-nez p2, :cond_0

    .line 667
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->insertNull(I)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v0

    .line 669
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->numberNode(J)Lcom/fasterxml/jackson/databind/node/NumericNode;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_insert(ILcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v0

    goto :goto_0
.end method

.method public insert(ILjava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;
    .locals 1
    .param p1, "index"    # I
    .param p2, "v"    # Ljava/lang/String;

    .prologue
    .line 738
    if-nez p2, :cond_0

    .line 739
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->insertNull(I)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v0

    .line 741
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->textNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/TextNode;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_insert(ILcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v0

    goto :goto_0
.end method

.method public insert(ILjava/math/BigDecimal;)Lcom/fasterxml/jackson/databind/node/ArrayNode;
    .locals 1
    .param p1, "index"    # I
    .param p2, "v"    # Ljava/math/BigDecimal;

    .prologue
    .line 725
    if-nez p2, :cond_0

    .line 726
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->insertNull(I)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v0

    .line 728
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->numberNode(Ljava/math/BigDecimal;)Lcom/fasterxml/jackson/databind/node/NumericNode;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_insert(ILcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v0

    goto :goto_0
.end method

.method public insert(IZ)Lcom/fasterxml/jackson/databind/node/ArrayNode;
    .locals 1
    .param p1, "index"    # I
    .param p2, "v"    # Z

    .prologue
    .line 751
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->booleanNode(Z)Lcom/fasterxml/jackson/databind/node/BooleanNode;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_insert(ILcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v0

    return-object v0
.end method

.method public insert(I[B)Lcom/fasterxml/jackson/databind/node/ArrayNode;
    .locals 1
    .param p1, "index"    # I
    .param p2, "v"    # [B

    .prologue
    .line 775
    if-nez p2, :cond_0

    .line 776
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->insertNull(I)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v0

    .line 778
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->binaryNode([B)Lcom/fasterxml/jackson/databind/node/BinaryNode;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_insert(ILcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v0

    goto :goto_0
.end method

.method public insertArray(I)Lcom/fasterxml/jackson/databind/node/ArrayNode;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 578
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->arrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v0

    .line 579
    .local v0, "n":Lcom/fasterxml/jackson/databind/node/ArrayNode;
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_insert(ILcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 580
    return-object v0
.end method

.method public insertNull(I)Lcom/fasterxml/jackson/databind/node/ArrayNode;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 619
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->nullNode()Lcom/fasterxml/jackson/databind/node/NullNode;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_insert(ILcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 620
    return-object p0
.end method

.method public insertObject(I)Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 592
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->objectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    .line 593
    .local v0, "n":Lcom/fasterxml/jackson/databind/node/ObjectNode;
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_insert(ILcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 594
    return-object v0
.end method

.method public insertPOJO(ILjava/lang/Object;)Lcom/fasterxml/jackson/databind/node/ArrayNode;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 605
    if-nez p2, :cond_0

    .line 606
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->insertNull(I)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v0

    .line 608
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->pojoNode(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/node/ValueNode;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_insert(ILcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v0

    goto :goto_0
.end method

.method public isEmpty(Lcom/fasterxml/jackson/databind/SerializerProvider;)Z
    .locals 1
    .param p1, "serializers"    # Lcom/fasterxml/jackson/databind/SerializerProvider;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic path(I)Lcom/fasterxml/jackson/core/TreeNode;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->path(I)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic path(Ljava/lang/String;)Lcom/fasterxml/jackson/core/TreeNode;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->path(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    return-object v0
.end method

.method public path(I)Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 117
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 120
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/fasterxml/jackson/databind/node/MissingNode;->getInstance()Lcom/fasterxml/jackson/databind/node/MissingNode;

    move-result-object v0

    goto :goto_0
.end method

.method public path(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 113
    invoke-static {}, Lcom/fasterxml/jackson/databind/node/MissingNode;->getInstance()Lcom/fasterxml/jackson/databind/node/MissingNode;

    move-result-object v0

    return-object v0
.end method

.method public remove(I)Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 332
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 335
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeAll()Lcom/fasterxml/jackson/databind/node/ArrayNode;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 348
    return-object p0
.end method

.method public bridge synthetic removeAll()Lcom/fasterxml/jackson/databind/node/ContainerNode;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->removeAll()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 5
    .param p1, "f"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p2, "provider"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 153
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_children:Ljava/util/List;

    .line 154
    .local v0, "c":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/JsonNode;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 155
    .local v3, "size":I
    invoke-virtual {p1, v3}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartArray(I)V

    .line 156
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 158
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 159
    .local v2, "n":Lcom/fasterxml/jackson/databind/JsonNode;
    instance-of v4, v2, Lcom/fasterxml/jackson/databind/node/BaseJsonNode;

    if-eqz v4, :cond_0

    .line 160
    check-cast v2, Lcom/fasterxml/jackson/databind/node/BaseJsonNode;

    .end local v2    # "n":Lcom/fasterxml/jackson/databind/JsonNode;
    invoke-virtual {v2, p1, p2}, Lcom/fasterxml/jackson/databind/node/BaseJsonNode;->serialize(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    .line 156
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 162
    .restart local v2    # "n":Lcom/fasterxml/jackson/databind/JsonNode;
    :cond_0
    invoke-interface {v2, p1, p2}, Lcom/fasterxml/jackson/databind/JsonSerializable;->serialize(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    goto :goto_1

    .line 165
    .end local v2    # "n":Lcom/fasterxml/jackson/databind/JsonNode;
    :cond_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndArray()V

    .line 166
    return-void
.end method

.method public serializeWithType(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V
    .locals 3
    .param p1, "jg"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p2, "provider"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .param p3, "typeSer"    # Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 172
    invoke-virtual {p3, p0, p1}, Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;->writeTypePrefixForArray(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 173
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_children:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 174
    .local v1, "n":Lcom/fasterxml/jackson/databind/JsonNode;
    check-cast v1, Lcom/fasterxml/jackson/databind/node/BaseJsonNode;

    .end local v1    # "n":Lcom/fasterxml/jackson/databind/JsonNode;
    invoke-virtual {v1, p1, p2}, Lcom/fasterxml/jackson/databind/node/BaseJsonNode;->serialize(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    goto :goto_0

    .line 176
    :cond_0
    invoke-virtual {p3, p0, p1}, Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;->writeTypeSuffixForArray(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 177
    return-void
.end method

.method public set(ILcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/fasterxml/jackson/databind/JsonNode;

    .prologue
    .line 255
    if-nez p2, :cond_0

    .line 256
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->nullNode()Lcom/fasterxml/jackson/databind/node/NullNode;

    move-result-object p2

    .line 258
    :cond_0
    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_2

    .line 259
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", array size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 261
    :cond_2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_children:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 813
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->size()I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, 0x10

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 814
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/16 v3, 0x5b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 815
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_children:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "len":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 816
    if-lez v0, :cond_0

    .line 817
    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 819
    :cond_0
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_children:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/JsonNode;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 815
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 821
    :cond_1
    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 822
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
