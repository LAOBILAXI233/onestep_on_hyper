.class final Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer$CollectionReferring;
.super Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId$Referring;
.source "CollectionDeserializer.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CollectionReferring"
.end annotation


.field private final _parent:Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer$CollectionReferringAccumulator;

.field public final next:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


.method constructor <init>(Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer$CollectionReferringAccumulator;Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;Ljava/lang/Class;)V
    .locals 1
    .param p1, "parent"    # Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer$CollectionReferringAccumulator;
    .param p2, "reference"    # Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer$CollectionReferringAccumulator;",
            "Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 418
    .local p3, "contentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p2, p3}, Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId$Referring;-><init>(Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;Ljava/lang/Class;)V

    .line 413
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer$CollectionReferring;->next:Ljava/util/List;

    .line 419
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer$CollectionReferring;->_parent:Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer$CollectionReferringAccumulator;

    .line 420
    return-void
.end method


.method public handleResolvedForwardReference(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 424
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer$CollectionReferring;->_parent:Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer$CollectionReferringAccumulator;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer$CollectionReferringAccumulator;->resolveForwardReference(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 425
    return-void
.end method
