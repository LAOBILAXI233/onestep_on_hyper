.class public abstract Lcom/fasterxml/jackson/databind/ser/PropertyWriter;
.super Lcom/fasterxml/jackson/databind/introspect/ConcreteBeanPropertyBase;
.source "PropertyWriter.java"

.implements Ljava/io/Serializable;


.field private static final serialVersionUID:J = 0x1L


.method protected constructor <init>(Lcom/fasterxml/jackson/databind/PropertyMetadata;)V
    .locals 0
    .param p1, "md"    # Lcom/fasterxml/jackson/databind/PropertyMetadata;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/ConcreteBeanPropertyBase;-><init>(Lcom/fasterxml/jackson/databind/PropertyMetadata;)V

    .line 28
    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;)V
    .locals 1
    .param p1, "propDef"    # Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;

    .prologue
    .line 31
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->getMetadata()Lcom/fasterxml/jackson/databind/PropertyMetadata;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/ConcreteBeanPropertyBase;-><init>(Lcom/fasterxml/jackson/databind/PropertyMetadata;)V

    .line 32
    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/ser/PropertyWriter;)V
    .locals 0
    .param p1, "base"    # Lcom/fasterxml/jackson/databind/ser/PropertyWriter;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/ConcreteBeanPropertyBase;-><init>(Lcom/fasterxml/jackson/databind/introspect/ConcreteBeanPropertyBase;)V

    .line 36
    return-void
.end method


.method public abstract depositSchemaProperty(Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonObjectFormatVisitor;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation
.end method

.method public abstract depositSchemaProperty(Lcom/fasterxml/jackson/databind/node/ObjectNode;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public findAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TA;>;)TA;"
        }
    .end annotation

    .prologue
    .line 71
    .local p1, "acls":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/PropertyWriter;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 72
    .local v0, "ann":Ljava/lang/annotation/Annotation;, "TA;"
    if-nez v0, :cond_0

    .line 73
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/PropertyWriter;->getContextAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 75
    :cond_0
    return-object v0
.end method

.method public abstract getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TA;>;)TA;"
        }
    .end annotation
.end method

.method public abstract getContextAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TA;>;)TA;"
        }
    .end annotation
.end method

.method public abstract getFullName()Lcom/fasterxml/jackson/databind/PropertyName;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract serializeAsElement(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract serializeAsField(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract serializeAsOmittedField(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract serializeAsPlaceholder(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
