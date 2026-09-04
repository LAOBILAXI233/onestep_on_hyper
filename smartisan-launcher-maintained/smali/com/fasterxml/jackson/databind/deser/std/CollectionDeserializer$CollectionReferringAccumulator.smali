.class public final Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer$CollectionReferringAccumulator;
.super Ljava/lang/Object;
.source "CollectionDeserializer.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CollectionReferringAccumulator"
.end annotation


.field private _accumulator:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer$CollectionReferring;",
            ">;"
        }
    .end annotation
.end field

.field private final _elementType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final _result:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


.method public constructor <init>(Ljava/lang/Class;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 361
    .local p1, "elementType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "result":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 359
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer$CollectionReferringAccumulator;->_accumulator:Ljava/util/List;

    .line 362
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer$CollectionReferringAccumulator;->_elementType:Ljava/lang/Class;

    .line 363
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer$CollectionReferringAccumulator;->_result:Ljava/util/Collection;

    .line 364
    return-void
.end method


.method public add(Ljava/lang/Object;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 368
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer$CollectionReferringAccumulator;->_accumulator:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 369
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer$CollectionReferringAccumulator;->_result:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 374
    :goto_0
    return-void

    .line 371
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer$CollectionReferringAccumulator;->_accumulator:Ljava/util/List;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer$CollectionReferringAccumulator;->_accumulator:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer$CollectionReferring;

    .line 372
    .local v0, "ref":Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer$CollectionReferring;
    iget-object v1, v0, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer$CollectionReferring;->next:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public handleUnresolvedReference(Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;)Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId$Referring;
    .locals 2
    .param p1, "reference"    # Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;

    .prologue
    .line 378
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer$CollectionReferring;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer$CollectionReferringAccumulator;->_elementType:Ljava/lang/Class;

    invoke-direct {v0, p0, p1, v1}, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer$CollectionReferring;-><init>(Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer$CollectionReferringAccumulator;Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;Ljava/lang/Class;)V

    .line 379
    .local v0, "id":Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer$CollectionReferring;
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer$CollectionReferringAccumulator;->_accumulator:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 380
    return-object v0
.end method

.method public resolveForwardReference(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 385
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer$CollectionReferringAccumulator;->_accumulator:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 389
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer$CollectionReferring;>;"
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer$CollectionReferringAccumulator;->_result:Ljava/util/Collection;

    .line 390
    .local v1, "previous":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 391
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer$CollectionReferring;

    .line 392
    .local v2, "ref":Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer$CollectionReferring;
    invoke-virtual {v2, p1}, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer$CollectionReferring;->hasId(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 393
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 394
    invoke-interface {v1, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 395
    iget-object v3, v2, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer$CollectionReferring;->next:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 396
    return-void

    .line 398
    :cond_0
    iget-object v1, v2, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer$CollectionReferring;->next:Ljava/util/List;

    .line 399
    goto :goto_0

    .line 401
    .end local v2    # "ref":Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer$CollectionReferring;
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Trying to resolve a forward reference with id ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] that wasn\'t previously seen as unresolved."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
