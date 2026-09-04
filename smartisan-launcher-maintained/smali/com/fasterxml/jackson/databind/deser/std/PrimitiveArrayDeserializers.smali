.class public abstract Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers;
.super Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;
.source "PrimitiveArrayDeserializers.java"

.implements Lcom/fasterxml/jackson/databind/deser/ContextualDeserializer;


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$DoubleDeser;,
        Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$FloatDeser;,
        Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$LongDeser;,
        Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$IntDeser;,
        Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$ShortDeser;,
        Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$ByteDeser;,
        Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$BooleanDeser;,
        Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$CharDeser;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer",
        "<TT;>;",
        "Lcom/fasterxml/jackson/databind/deser/ContextualDeserializer;"
    }
.end annotation


.field protected final _unwrapSingle:Ljava/lang/Boolean;


.method protected constructor <init>(Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers;Ljava/lang/Boolean;)V
    .locals 1
    .param p2, "unwrapSingle"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers",
            "<*>;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers;, "Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers<TT;>;"
    .local p1, "base":Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers;, "Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers<*>;"
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers;->_valueClass:Ljava/lang/Class;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;-><init>(Ljava/lang/Class;)V

    .line 41
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers;->_unwrapSingle:Ljava/lang/Boolean;

    .line 42
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, "this":Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers;, "Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers<TT;>;"
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;-><init>(Ljava/lang/Class;)V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers;->_unwrapSingle:Ljava/lang/Boolean;

    .line 33
    return-void
.end method

.method public static forType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_0

    .line 48
    sget-object v0, Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$IntDeser;->instance:Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$IntDeser;

    .line 70
    :goto_0
    return-object v0

    .line 50
    :cond_0
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_1

    .line 51
    sget-object v0, Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$LongDeser;->instance:Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$LongDeser;

    goto :goto_0

    .line 54
    :cond_1
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_2

    .line 55
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$ByteDeser;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$ByteDeser;-><init>()V

    goto :goto_0

    .line 57
    :cond_2
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_3

    .line 58
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$ShortDeser;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$ShortDeser;-><init>()V

    goto :goto_0

    .line 60
    :cond_3
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_4

    .line 61
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$FloatDeser;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$FloatDeser;-><init>()V

    goto :goto_0

    .line 63
    :cond_4
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_5

    .line 64
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$DoubleDeser;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$DoubleDeser;-><init>()V

    goto :goto_0

    .line 66
    :cond_5
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_6

    .line 67
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$BooleanDeser;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$BooleanDeser;-><init>()V

    goto :goto_0

    .line 69
    :cond_6
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_7

    .line 70
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$CharDeser;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$CharDeser;-><init>()V

    goto :goto_0

    .line 72
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method


.method public createContextual(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 3
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "property"    # Lcom/fasterxml/jackson/databind/BeanProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/BeanProperty;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 84
    .local p0, "this":Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers;, "Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers<TT;>;"
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers;->_valueClass:Ljava/lang/Class;

    sget-object v2, Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;->ACCEPT_SINGLE_VALUE_AS_ARRAY:Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;

    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers;->findFormatFeature(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanProperty;Ljava/lang/Class;Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;)Ljava/lang/Boolean;

    move-result-object v0

    .line 86
    .local v0, "unwrapSingle":Ljava/lang/Boolean;
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers;->_unwrapSingle:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_0

    .line 89
    .end local p0    # "this":Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers;, "Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers<TT;>;"
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers;, "Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers<TT;>;"
    :cond_0
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers;->withResolved(Ljava/lang/Boolean;)Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers;

    move-result-object p0

    goto :goto_0
.end method

.method public deserializeWithType(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;)Ljava/lang/Object;
    .locals 1
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p3, "typeDeserializer"    # Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    .local p0, "this":Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers;, "Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers<TT;>;"
    invoke-virtual {p3, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;->deserializeTypedFromArray(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected handleNonArray(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 3
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    .local p0, "this":Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers;, "Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers<TT;>;"
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/core/JsonParser;->hasToken(Lcom/fasterxml/jackson/core/JsonToken;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/fasterxml/jackson/databind/DeserializationFeature;->ACCEPT_EMPTY_STRING_AS_NULL_OBJECT:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p2, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 109
    const/4 v1, 0x0

    .line 118
    :goto_0
    return-object v1

    .line 112
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers;->_unwrapSingle:Ljava/lang/Boolean;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers;->_unwrapSingle:Ljava/lang/Boolean;

    if-nez v1, :cond_2

    sget-object v1, Lcom/fasterxml/jackson/databind/DeserializationFeature;->ACCEPT_SINGLE_VALUE_AS_ARRAY:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p2, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 115
    .local v0, "canWrap":Z
    :goto_1
    if-eqz v0, :cond_3

    .line 116
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers;->handleSingleElementUnwrapped(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 112
    .end local v0    # "canWrap":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 118
    .restart local v0    # "canWrap":Z
    :cond_3
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers;->_valueClass:Ljava/lang/Class;

    invoke-virtual {p2, v1, p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleUnexpectedToken(Ljava/lang/Class;Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method protected abstract handleSingleElementUnwrapped(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract withResolved(Ljava/lang/Boolean;)Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")",
            "Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers",
            "<*>;"
        }
    .end annotation
.end method
