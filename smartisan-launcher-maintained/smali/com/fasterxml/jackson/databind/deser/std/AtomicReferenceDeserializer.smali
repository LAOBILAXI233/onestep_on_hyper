.class public Lcom/fasterxml/jackson/databind/deser/std/AtomicReferenceDeserializer;
.super Lcom/fasterxml/jackson/databind/deser/std/ReferenceTypeDeserializer;
.source "AtomicReferenceDeserializer.java"


.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/deser/std/ReferenceTypeDeserializer",
        "<",
        "Ljava/util/concurrent/atomic/AtomicReference",
        "<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


.field private static final serialVersionUID:J = 0x1L


.method public constructor <init>(Lcom/fasterxml/jackson/databind/JavaType;)V
    .locals 1
    .param p1, "fullType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, p1, v0, v0}, Lcom/fasterxml/jackson/databind/deser/std/AtomicReferenceDeserializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;)V
    .locals 0
    .param p1, "fullType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p2, "typeDeser"    # Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p3, "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/std/ReferenceTypeDeserializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;)V

    .line 28
    return-void
.end method


.method public bridge synthetic getNullValue(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/fasterxml/jackson/databind/DeserializationContext;

    .prologue
    .line 8
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/AtomicReferenceDeserializer;->getNullValue(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    return-object v0
.end method

.method public getNullValue(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            ")",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    return-object v0
.end method

.method public bridge synthetic referenceValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 8
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/AtomicReferenceDeserializer;->referenceValue(Ljava/lang/Object;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    return-object v0
.end method

.method public referenceValue(Ljava/lang/Object;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .param p1, "contents"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public withResolved(Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/deser/std/AtomicReferenceDeserializer;
    .locals 2
    .param p1, "typeDeser"    # Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/deser/std/AtomicReferenceDeserializer;"
        }
    .end annotation

    .prologue
    .line 38
    .local p2, "valueDeser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/AtomicReferenceDeserializer;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/AtomicReferenceDeserializer;->_fullType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-direct {v0, v1, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/AtomicReferenceDeserializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;)V

    return-object v0
.end method

.method public bridge synthetic withResolved(Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/deser/std/ReferenceTypeDeserializer;
    .locals 1
    .param p1, "x0"    # Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    .param p2, "x1"    # Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .prologue
    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/AtomicReferenceDeserializer;->withResolved(Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/deser/std/AtomicReferenceDeserializer;

    move-result-object v0

    return-object v0
.end method
