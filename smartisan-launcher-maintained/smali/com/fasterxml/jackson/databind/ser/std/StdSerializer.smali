.class public abstract Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;
.super Lcom/fasterxml/jackson/databind/JsonSerializer;
.source "StdSerializer.java"

.implements Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitable;
.implements Lcom/fasterxml/jackson/databind/jsonschema/SchemaAware;
.implements Ljava/io/Serializable;


.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/fasterxml/jackson/databind/JsonSerializer",
        "<TT;>;",
        "Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitable;",
        "Lcom/fasterxml/jackson/databind/jsonschema/SchemaAware;",
        "Ljava/io/Serializable;"
    }
.end annotation


.field private static final CONVERTING_CONTENT_CONVERTER_LOCK:Ljava/lang/Object;

.field private static final serialVersionUID:J = 0x1L


.field protected final _handledType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;->CONVERTING_CONTENT_CONVERTER_LOCK:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/JavaType;)V
    .locals 1
    .param p1, "type"    # Lcom/fasterxml/jackson/databind/JavaType;

    .prologue
    .line 64
    .local p0, "this":Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;, "Lcom/fasterxml/jackson/databind/ser/std/StdSerializer<TT;>;"
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/JsonSerializer;-><init>()V

    .line 65
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;->_handledType:Ljava/lang/Class;

    .line 66
    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/ser/std/StdSerializer",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p0, "this":Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;, "Lcom/fasterxml/jackson/databind/ser/std/StdSerializer<TT;>;"
    .local p1, "src":Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;, "Lcom/fasterxml/jackson/databind/ser/std/StdSerializer<*>;"
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/JsonSerializer;-><init>()V

    .line 82
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;->_handledType:Ljava/lang/Class;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;->_handledType:Ljava/lang/Class;

    .line 83
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "this":Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;, "Lcom/fasterxml/jackson/databind/ser/std/StdSerializer<TT;>;"
    .local p1, "t":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/JsonSerializer;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;->_handledType:Ljava/lang/Class;

    .line 61
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;Z)V
    .locals 0
    .param p2, "dummy"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, "this":Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;, "Lcom/fasterxml/jackson/databind/ser/std/StdSerializer<TT;>;"
    .local p1, "t":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/JsonSerializer;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;->_handledType:Ljava/lang/Class;

    .line 75
    return-void
.end method


.method public acceptJsonFormatVisitor(Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;Lcom/fasterxml/jackson/databind/JavaType;)V
    .locals 0
    .param p1, "visitor"    # Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;
    .param p2, "typeHint"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 118
    .local p0, "this":Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;, "Lcom/fasterxml/jackson/databind/ser/std/StdSerializer<TT;>;"
    invoke-interface {p1, p2}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;->expectAnyFormat(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonAnyFormatVisitor;

    .line 119
    return-void
.end method

.method protected createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 1

    .prologue
    .line 153
    .local p0, "this":Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;, "Lcom/fasterxml/jackson/databind/ser/std/StdSerializer<TT;>;"
    sget-object v0, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->instance:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->objectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    return-object v0
.end method

.method protected createSchemaNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 158
    .local p0, "this":Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;, "Lcom/fasterxml/jackson/databind/ser/std/StdSerializer<TT;>;"
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    .line 159
    .local v0, "schema":Lcom/fasterxml/jackson/databind/node/ObjectNode;
    const-string v1, "type"

    invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 160
    return-object v0
.end method

.method protected createSchemaNode(Ljava/lang/String;Z)Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 3
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "isOptional"    # Z

    .prologue
    .line 165
    .local p0, "this":Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;, "Lcom/fasterxml/jackson/databind/ser/std/StdSerializer<TT;>;"
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;->createSchemaNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    .line 166
    .local v0, "schema":Lcom/fasterxml/jackson/databind/node/ObjectNode;
    if-nez p2, :cond_0

    .line 167
    const-string v2, "required"

    if-nez p2, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v2, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Z)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 169
    :cond_0
    return-object v0

    .line 167
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected findAnnotatedContentSerializer(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 4
    .param p1, "serializers"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .param p2, "property"    # Lcom/fasterxml/jackson/databind/BeanProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializerProvider;",
            "Lcom/fasterxml/jackson/databind/BeanProperty;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 508
    .local p0, "this":Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;, "Lcom/fasterxml/jackson/databind/ser/std/StdSerializer<TT;>;"
    if-eqz p2, :cond_0

    .line 510
    invoke-interface {p2}, Lcom/fasterxml/jackson/databind/BeanProperty;->getMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v1

    .line 511
    .local v1, "m":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v0

    .line 512
    .local v0, "intr":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    if-eqz v1, :cond_0

    .line 513
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findContentSerializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;

    move-result-object v2

    .line 514
    .local v2, "serDef":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 515
    invoke-virtual {p1, v1, v2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->serializerInstance(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v3

    .line 519
    .end local v0    # "intr":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .end local v1    # "m":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .end local v2    # "serDef":Ljava/lang/Object;
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected findConvertingContentSerializer(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 9
    .param p1, "provider"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .param p2, "prop"    # Lcom/fasterxml/jackson/databind/BeanProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializerProvider;",
            "Lcom/fasterxml/jackson/databind/BeanProperty;",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;, "Lcom/fasterxml/jackson/databind/ser/std/StdSerializer<TT;>;"
    .local p3, "existingSerializer":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<*>;"
    const/4 v8, 0x0

    .line 396
    sget-object v6, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;->CONVERTING_CONTENT_CONVERTER_LOCK:Ljava/lang/Object;

    invoke-virtual {p1, v6}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 397
    .local v5, "ob":Ljava/lang/Object;
    if-eqz v5, :cond_0

    .line 398
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v5, v6, :cond_0

    move-object v6, p3

    .line 425
    :goto_0
    return-object v6

    .line 403
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v3

    .line 404
    .local v3, "intr":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    if-eqz v3, :cond_2

    if-eqz p2, :cond_2

    .line 405
    invoke-interface {p2}, Lcom/fasterxml/jackson/databind/BeanProperty;->getMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v4

    .line 406
    .local v4, "m":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    if-eqz v4, :cond_2

    .line 407
    sget-object v6, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;->CONVERTING_CONTENT_CONVERTER_LOCK:Ljava/lang/Object;

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v6, v7}, Lcom/fasterxml/jackson/databind/SerializerProvider;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/SerializerProvider;

    .line 410
    :try_start_0
    invoke-virtual {v3, v4}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findSerializationContentConverter(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 412
    .local v1, "convDef":Ljava/lang/Object;
    sget-object v6, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;->CONVERTING_CONTENT_CONVERTER_LOCK:Ljava/lang/Object;

    invoke-virtual {p1, v6, v8}, Lcom/fasterxml/jackson/databind/SerializerProvider;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/SerializerProvider;

    .line 414
    if-eqz v1, :cond_2

    .line 415
    invoke-interface {p2}, Lcom/fasterxml/jackson/databind/BeanProperty;->getMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v6

    invoke-virtual {p1, v6, v1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->converterInstance(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/util/Converter;

    move-result-object v0

    .line 416
    .local v0, "conv":Lcom/fasterxml/jackson/databind/util/Converter;, "Lcom/fasterxml/jackson/databind/util/Converter<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v6

    invoke-interface {v0, v6}, Lcom/fasterxml/jackson/databind/util/Converter;->getOutputType(Lcom/fasterxml/jackson/databind/type/TypeFactory;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    .line 418
    .local v2, "delegateType":Lcom/fasterxml/jackson/databind/JavaType;
    if-nez p3, :cond_1

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JavaType;->isJavaLangObject()Z

    move-result v6

    if-nez v6, :cond_1

    .line 419
    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->findValueSerializer(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object p3

    .line 421
    :cond_1
    new-instance v6, Lcom/fasterxml/jackson/databind/ser/std/StdDelegatingSerializer;

    invoke-direct {v6, v0, v2, p3}, Lcom/fasterxml/jackson/databind/ser/std/StdDelegatingSerializer;-><init>(Lcom/fasterxml/jackson/databind/util/Converter;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonSerializer;)V

    goto :goto_0

    .line 412
    .end local v0    # "conv":Lcom/fasterxml/jackson/databind/util/Converter;, "Lcom/fasterxml/jackson/databind/util/Converter<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v1    # "convDef":Ljava/lang/Object;
    .end local v2    # "delegateType":Lcom/fasterxml/jackson/databind/JavaType;
    :catchall_0
    move-exception v6

    sget-object v7, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;->CONVERTING_CONTENT_CONVERTER_LOCK:Ljava/lang/Object;

    invoke-virtual {p1, v7, v8}, Lcom/fasterxml/jackson/databind/SerializerProvider;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/SerializerProvider;

    throw v6

    .end local v4    # "m":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    :cond_2
    move-object v6, p3

    .line 425
    goto :goto_0
.end method

.method protected findFormatFeature(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/BeanProperty;Ljava/lang/Class;Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "provider"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .param p2, "prop"    # Lcom/fasterxml/jackson/databind/BeanProperty;
    .param p4, "feat"    # Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializerProvider;",
            "Lcom/fasterxml/jackson/databind/BeanProperty;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;",
            ")",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .prologue
    .line 479
    .local p0, "this":Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;, "Lcom/fasterxml/jackson/databind/ser/std/StdSerializer<TT;>;"
    .local p3, "typeForDefaults":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;->findFormatOverrides(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/BeanProperty;Ljava/lang/Class;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    move-result-object v0

    .line 480
    .local v0, "format":Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    if-eqz v0, :cond_0

    .line 481
    invoke-virtual {v0, p4}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->getFeature(Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;)Ljava/lang/Boolean;

    move-result-object v1

    .line 483
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected findFormatOverrides(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/BeanProperty;Ljava/lang/Class;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    .locals 1
    .param p1, "provider"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .param p2, "prop"    # Lcom/fasterxml/jackson/databind/BeanProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializerProvider;",
            "Lcom/fasterxml/jackson/databind/BeanProperty;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/annotation/JsonFormat$Value;"
        }
    .end annotation

    .prologue
    .line 460
    .local p0, "this":Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;, "Lcom/fasterxml/jackson/databind/ser/std/StdSerializer<TT;>;"
    .local p3, "typeForDefaults":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p2, :cond_0

    .line 461
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    invoke-interface {p2, v0, p3}, Lcom/fasterxml/jackson/databind/BeanProperty;->findPropertyFormat(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Ljava/lang/Class;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    move-result-object v0

    .line 464
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1, p3}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getDefaultPropertyFormat(Ljava/lang/Class;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    move-result-object v0

    goto :goto_0
.end method

.method protected findIncludeOverrides(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/BeanProperty;Ljava/lang/Class;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    .locals 1
    .param p1, "provider"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .param p2, "prop"    # Lcom/fasterxml/jackson/databind/BeanProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializerProvider;",
            "Lcom/fasterxml/jackson/databind/BeanProperty;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/annotation/JsonInclude$Value;"
        }
    .end annotation

    .prologue
    .line 492
    .local p0, "this":Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;, "Lcom/fasterxml/jackson/databind/ser/std/StdSerializer<TT;>;"
    .local p3, "typeForDefaults":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p2, :cond_0

    .line 493
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    invoke-interface {p2, v0, p3}, Lcom/fasterxml/jackson/databind/BeanProperty;->findPropertyInclusion(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Ljava/lang/Class;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    move-result-object v0

    .line 496
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1, p3}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getDefaultPropertyInclusion(Ljava/lang/Class;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    move-result-object v0

    goto :goto_0
.end method

.method protected findPropertyFilter(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/Object;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/ser/PropertyFilter;
    .locals 3
    .param p1, "provider"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .param p2, "filterId"    # Ljava/lang/Object;
    .param p3, "valueToFilter"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 438
    .local p0, "this":Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;, "Lcom/fasterxml/jackson/databind/ser/std/StdSerializer<TT;>;"
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getFilterProvider()Lcom/fasterxml/jackson/databind/ser/FilterProvider;

    move-result-object v0

    .line 440
    .local v0, "filters":Lcom/fasterxml/jackson/databind/ser/FilterProvider;
    if-nez v0, :cond_0

    .line 441
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not resolve PropertyFilter with id \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'; no FilterProvider configured"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/fasterxml/jackson/databind/JsonMappingException;->from(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v1

    throw v1

    .line 445
    :cond_0
    invoke-virtual {v0, p2, p3}, Lcom/fasterxml/jackson/databind/ser/FilterProvider;->findPropertyFilter(Ljava/lang/Object;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/ser/PropertyFilter;

    move-result-object v1

    return-object v1
.end method

.method public getSchema(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 1
    .param p1, "provider"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .param p2, "typeHint"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 128
    .local p0, "this":Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;, "Lcom/fasterxml/jackson/databind/ser/std/StdSerializer<TT;>;"
    const-string v0, "string"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;->createSchemaNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    return-object v0
.end method

.method public getSchema(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/reflect/Type;Z)Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 3
    .param p1, "provider"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .param p2, "typeHint"    # Ljava/lang/reflect/Type;
    .param p3, "isOptional"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 139
    .local p0, "this":Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;, "Lcom/fasterxml/jackson/databind/ser/std/StdSerializer<TT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;->getSchema(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 140
    .local v0, "schema":Lcom/fasterxml/jackson/databind/node/ObjectNode;
    if-nez p3, :cond_0

    .line 141
    const-string v2, "required"

    if-nez p3, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v2, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Z)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 143
    :cond_0
    return-object v0

    .line 141
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public handledType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 92
    .local p0, "this":Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;, "Lcom/fasterxml/jackson/databind/ser/std/StdSerializer<TT;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;->_handledType:Ljava/lang/Class;

    return-object v0
.end method

.method protected isDefaultSerializer(Lcom/fasterxml/jackson/databind/JsonSerializer;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 535
    .local p0, "this":Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;, "Lcom/fasterxml/jackson/databind/ser/std/StdSerializer<TT;>;"
    .local p1, "serializer":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<*>;"
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->isJacksonStdImpl(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public abstract serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/fasterxml/jackson/core/JsonGenerator;",
            "Lcom/fasterxml/jackson/databind/SerializerProvider;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected visitArrayFormat(Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/JavaType;)V
    .locals 1
    .param p1, "visitor"    # Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;
    .param p2, "typeHint"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p4, "itemType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 273
    .local p0, "this":Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;, "Lcom/fasterxml/jackson/databind/ser/std/StdSerializer<TT;>;"
    .local p3, "itemSerializer":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<*>;"
    if-eqz p1, :cond_0

    .line 274
    invoke-interface {p1, p2}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;->expectArrayFormat(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonArrayFormatVisitor;

    move-result-object v0

    .line 275
    .local v0, "v2":Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonArrayFormatVisitor;
    if-eqz v0, :cond_0

    .line 276
    if-eqz p3, :cond_0

    .line 277
    invoke-interface {v0, p3, p4}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonArrayFormatVisitor;->itemsFormat(Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitable;Lcom/fasterxml/jackson/databind/JavaType;)V

    .line 281
    .end local v0    # "v2":Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonArrayFormatVisitor;
    :cond_0
    return-void
.end method

.method protected visitArrayFormat(Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;)V
    .locals 1
    .param p1, "visitor"    # Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;
    .param p2, "typeHint"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p3, "itemType"    # Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 290
    .local p0, "this":Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;, "Lcom/fasterxml/jackson/databind/ser/std/StdSerializer<TT;>;"
    if-eqz p1, :cond_0

    .line 291
    invoke-interface {p1, p2}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;->expectArrayFormat(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonArrayFormatVisitor;

    move-result-object v0

    .line 292
    .local v0, "v2":Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonArrayFormatVisitor;
    if-eqz v0, :cond_0

    .line 293
    invoke-interface {v0, p3}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonArrayFormatVisitor;->itemsFormat(Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;)V

    .line 296
    .end local v0    # "v2":Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonArrayFormatVisitor;
    :cond_0
    return-void
.end method

.method protected visitFloatFormat(Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/core/JsonParser$NumberType;)V
    .locals 1
    .param p1, "visitor"    # Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;
    .param p2, "typeHint"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p3, "numberType"    # Lcom/fasterxml/jackson/core/JsonParser$NumberType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 258
    .local p0, "this":Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;, "Lcom/fasterxml/jackson/databind/ser/std/StdSerializer<TT;>;"
    if-eqz p1, :cond_0

    .line 259
    invoke-interface {p1, p2}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;->expectNumberFormat(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonNumberFormatVisitor;

    move-result-object v0

    .line 260
    .local v0, "v2":Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonNumberFormatVisitor;
    if-eqz v0, :cond_0

    .line 261
    invoke-interface {v0, p3}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonNumberFormatVisitor;->numberType(Lcom/fasterxml/jackson/core/JsonParser$NumberType;)V

    .line 264
    .end local v0    # "v2":Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonNumberFormatVisitor;
    :cond_0
    return-void
.end method

.method protected visitIntFormat(Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/core/JsonParser$NumberType;)V
    .locals 1
    .param p1, "visitor"    # Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;
    .param p2, "typeHint"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p3, "numberType"    # Lcom/fasterxml/jackson/core/JsonParser$NumberType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 214
    .local p0, "this":Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;, "Lcom/fasterxml/jackson/databind/ser/std/StdSerializer<TT;>;"
    if-eqz p1, :cond_0

    .line 215
    invoke-interface {p1, p2}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;->expectIntegerFormat(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonIntegerFormatVisitor;

    move-result-object v0

    .line 216
    .local v0, "v2":Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonIntegerFormatVisitor;
    if-eqz v0, :cond_0

    .line 217
    if-eqz p3, :cond_0

    .line 218
    invoke-interface {v0, p3}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonIntegerFormatVisitor;->numberType(Lcom/fasterxml/jackson/core/JsonParser$NumberType;)V

    .line 222
    .end local v0    # "v2":Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonIntegerFormatVisitor;
    :cond_0
    return-void
.end method

.method protected visitIntFormat(Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/core/JsonParser$NumberType;Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;)V
    .locals 1
    .param p1, "visitor"    # Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;
    .param p2, "typeHint"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p3, "numberType"    # Lcom/fasterxml/jackson/core/JsonParser$NumberType;
    .param p4, "format"    # Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 235
    .local p0, "this":Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;, "Lcom/fasterxml/jackson/databind/ser/std/StdSerializer<TT;>;"
    if-eqz p1, :cond_1

    .line 236
    invoke-interface {p1, p2}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;->expectIntegerFormat(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonIntegerFormatVisitor;

    move-result-object v0

    .line 237
    .local v0, "v2":Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonIntegerFormatVisitor;
    if-eqz v0, :cond_1

    .line 238
    if-eqz p3, :cond_0

    .line 239
    invoke-interface {v0, p3}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonIntegerFormatVisitor;->numberType(Lcom/fasterxml/jackson/core/JsonParser$NumberType;)V

    .line 241
    :cond_0
    if-eqz p4, :cond_1

    .line 242
    invoke-interface {v0, p4}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonIntegerFormatVisitor;->format(Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;)V

    .line 246
    .end local v0    # "v2":Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonIntegerFormatVisitor;
    :cond_1
    return-void
.end method

.method protected visitStringFormat(Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;Lcom/fasterxml/jackson/databind/JavaType;)V
    .locals 0
    .param p1, "visitor"    # Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;
    .param p2, "typeHint"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 180
    .local p0, "this":Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;, "Lcom/fasterxml/jackson/databind/ser/std/StdSerializer<TT;>;"
    if-eqz p1, :cond_0

    .line 181
    invoke-interface {p1, p2}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;->expectStringFormat(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonStringFormatVisitor;

    .line 183
    :cond_0
    return-void
.end method

.method protected visitStringFormat(Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;)V
    .locals 1
    .param p1, "visitor"    # Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;
    .param p2, "typeHint"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p3, "format"    # Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 196
    .local p0, "this":Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;, "Lcom/fasterxml/jackson/databind/ser/std/StdSerializer<TT;>;"
    if-eqz p1, :cond_0

    .line 197
    invoke-interface {p1, p2}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;->expectStringFormat(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonStringFormatVisitor;

    move-result-object v0

    .line 198
    .local v0, "v2":Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonStringFormatVisitor;
    if-eqz v0, :cond_0

    .line 199
    invoke-interface {v0, p3}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonStringFormatVisitor;->format(Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;)V

    .line 202
    .end local v0    # "v2":Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonStringFormatVisitor;
    :cond_0
    return-void
.end method

.method public wrapAndThrow(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/Throwable;Ljava/lang/Object;I)V
    .locals 2
    .param p1, "provider"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .param p2, "t"    # Ljava/lang/Throwable;
    .param p3, "bean"    # Ljava/lang/Object;
    .param p4, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 350
    .local p0, "this":Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;, "Lcom/fasterxml/jackson/databind/ser/std/StdSerializer<TT;>;"
    :goto_0
    instance-of v1, p2, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 351
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    goto :goto_0

    .line 354
    :cond_0
    instance-of v1, p2, Ljava/lang/Error;

    if-eqz v1, :cond_1

    .line 355
    check-cast p2, Ljava/lang/Error;

    .end local p2    # "t":Ljava/lang/Throwable;
    throw p2

    .line 358
    .restart local p2    # "t":Ljava/lang/Throwable;
    :cond_1
    if-eqz p1, :cond_2

    sget-object v1, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRAP_EXCEPTIONS:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    const/4 v0, 0x1

    .line 359
    .local v0, "wrap":Z
    :goto_1
    instance-of v1, p2, Ljava/io/IOException;

    if-eqz v1, :cond_5

    .line 360
    if-eqz v0, :cond_3

    instance-of v1, p2, Lcom/fasterxml/jackson/databind/JsonMappingException;

    if-nez v1, :cond_6

    .line 361
    :cond_3
    check-cast p2, Ljava/io/IOException;

    .end local p2    # "t":Ljava/lang/Throwable;
    throw p2

    .line 358
    .end local v0    # "wrap":Z
    .restart local p2    # "t":Ljava/lang/Throwable;
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 363
    .restart local v0    # "wrap":Z
    :cond_5
    if-nez v0, :cond_6

    .line 364
    instance-of v1, p2, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_6

    .line 365
    check-cast p2, Ljava/lang/RuntimeException;

    .end local p2    # "t":Ljava/lang/Throwable;
    throw p2

    .line 369
    .restart local p2    # "t":Ljava/lang/Throwable;
    :cond_6
    invoke-static {p2, p3, p4}, Lcom/fasterxml/jackson/databind/JsonMappingException;->wrapWithPath(Ljava/lang/Throwable;Ljava/lang/Object;I)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v1

    throw v1
.end method

.method public wrapAndThrow(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2
    .param p1, "provider"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .param p2, "t"    # Ljava/lang/Throwable;
    .param p3, "bean"    # Ljava/lang/Object;
    .param p4, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 324
    .local p0, "this":Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;, "Lcom/fasterxml/jackson/databind/ser/std/StdSerializer<TT;>;"
    :goto_0
    instance-of v1, p2, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 325
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    goto :goto_0

    .line 328
    :cond_0
    instance-of v1, p2, Ljava/lang/Error;

    if-eqz v1, :cond_1

    .line 329
    check-cast p2, Ljava/lang/Error;

    .end local p2    # "t":Ljava/lang/Throwable;
    throw p2

    .line 332
    .restart local p2    # "t":Ljava/lang/Throwable;
    :cond_1
    if-eqz p1, :cond_2

    sget-object v1, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRAP_EXCEPTIONS:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    const/4 v0, 0x1

    .line 333
    .local v0, "wrap":Z
    :goto_1
    instance-of v1, p2, Ljava/io/IOException;

    if-eqz v1, :cond_5

    .line 334
    if-eqz v0, :cond_3

    instance-of v1, p2, Lcom/fasterxml/jackson/databind/JsonMappingException;

    if-nez v1, :cond_6

    .line 335
    :cond_3
    check-cast p2, Ljava/io/IOException;

    .end local p2    # "t":Ljava/lang/Throwable;
    throw p2

    .line 332
    .end local v0    # "wrap":Z
    .restart local p2    # "t":Ljava/lang/Throwable;
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 337
    .restart local v0    # "wrap":Z
    :cond_5
    if-nez v0, :cond_6

    .line 338
    instance-of v1, p2, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_6

    .line 339
    check-cast p2, Ljava/lang/RuntimeException;

    .end local p2    # "t":Ljava/lang/Throwable;
    throw p2

    .line 343
    .restart local p2    # "t":Ljava/lang/Throwable;
    :cond_6
    invoke-static {p2, p3, p4}, Lcom/fasterxml/jackson/databind/JsonMappingException;->wrapWithPath(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v1

    throw v1
.end method
