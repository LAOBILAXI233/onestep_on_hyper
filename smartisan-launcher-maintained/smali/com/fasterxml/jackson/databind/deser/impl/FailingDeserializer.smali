.class public Lcom/fasterxml/jackson/databind/deser/impl/FailingDeserializer;
.super Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;
.source "FailingDeserializer.java"


.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


.field private static final serialVersionUID:J = 0x1L


.field protected final _message:Ljava/lang/String;


.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "m"    # Ljava/lang/String;

    .prologue
    .line 21
    const-class v0, Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;-><init>(Ljava/lang/Class;)V

    .line 22
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/FailingDeserializer;->_message:Ljava/lang/String;

    .line 23
    return-void
.end method


.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 2
    .param p1, "jp"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/FailingDeserializer;->_message:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p2, v0, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportMappingException(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    const/4 v0, 0x0

    return-object v0
.end method
