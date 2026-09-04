.class public Lcom/fasterxml/jackson/databind/ser/impl/BeanAsArraySerializer;
.super Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;
.source "BeanAsArraySerializer.java"


.field private static final serialVersionUID:J = 0x1L


.field protected final _defaultSerializer:Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;


.method public constructor <init>(Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;)V
    .locals 1
    .param p1, "src"    # Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;

    .prologue
    .line 62
    const/4 v0, 0x0

    check-cast v0, Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;

    invoke-direct {p0, p1, v0}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;-><init>(Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;)V

    .line 63
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/impl/BeanAsArraySerializer;->_defaultSerializer:Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;

    .line 64
    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;Ljava/lang/Object;)V
    .locals 0
    .param p1, "src"    # Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;
    .param p2, "oiw"    # Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;
    .param p3, "filterId"    # Ljava/lang/Object;

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;-><init>(Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;Ljava/lang/Object;)V

    .line 74
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/impl/BeanAsArraySerializer;->_defaultSerializer:Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;

    .line 75
    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;Ljava/util/Set;)V
    .locals 0
    .param p1, "src"    # Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p2, "toIgnore":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;-><init>(Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;Ljava/util/Set;)V

    .line 68
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/impl/BeanAsArraySerializer;->_defaultSerializer:Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;

    .line 69
    return-void
.end method

.method private hasSingleElement(Lcom/fasterxml/jackson/databind/SerializerProvider;)Z
    .locals 3
    .param p1, "provider"    # Lcom/fasterxml/jackson/databind/SerializerProvider;

    .prologue
    const/4 v1, 0x1

    .line 184
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/impl/BeanAsArraySerializer;->_filteredProps:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getActiveView()Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 185
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/BeanAsArraySerializer;->_filteredProps:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .line 189
    .local v0, "props":[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    :goto_0
    array-length v2, v0

    if-ne v2, v1, :cond_1

    :goto_1
    return v1

    .line 187
    .end local v0    # "props":[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/BeanAsArraySerializer;->_props:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .restart local v0    # "props":[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    goto :goto_0

    .line 189
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method


.method protected asArraySerializer()Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;
    .locals 0

    .prologue
    .line 115
    return-object p0
.end method

.method public isUnwrappingSerializer()Z
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public final serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 1
    .param p1, "bean"    # Ljava/lang/Object;
    .param p2, "gen"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "provider"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 160
    sget-object v0, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {p3, v0}, Lcom/fasterxml/jackson/databind/SerializerProvider;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p3}, Lcom/fasterxml/jackson/databind/ser/impl/BeanAsArraySerializer;->hasSingleElement(Lcom/fasterxml/jackson/databind/SerializerProvider;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/impl/BeanAsArraySerializer;->serializeAsArray(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    .line 174
    :goto_0
    return-void

    .line 169
    :cond_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartArray()V

    .line 171
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->setCurrentValue(Ljava/lang/Object;)V

    .line 172
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/impl/BeanAsArraySerializer;->serializeAsArray(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    .line 173
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndArray()V

    goto :goto_0
.end method

.method protected final serializeAsArray(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 8
    .param p1, "bean"    # Ljava/lang/Object;
    .param p2, "gen"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "provider"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 196
    iget-object v7, p0, Lcom/fasterxml/jackson/databind/ser/impl/BeanAsArraySerializer;->_filteredProps:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    if-eqz v7, :cond_0

    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getActiveView()Ljava/lang/Class;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 197
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/ser/impl/BeanAsArraySerializer;->_filteredProps:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .line 202
    .local v6, "props":[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    :goto_0
    const/4 v1, 0x0

    .line 204
    .local v1, "i":I
    :try_start_0
    array-length v2, v6

    .local v2, "len":I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 205
    aget-object v5, v6, v1

    .line 206
    .local v5, "prop":Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    if-nez v5, :cond_1

    .line 207
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNull()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_1

    .line 204
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 199
    .end local v1    # "i":I
    .end local v2    # "len":I
    .end local v5    # "prop":Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    .end local v6    # "props":[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    :cond_0
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/ser/impl/BeanAsArraySerializer;->_props:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .restart local v6    # "props":[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    goto :goto_0

    .line 209
    .restart local v1    # "i":I
    .restart local v2    # "len":I
    .restart local v5    # "prop":Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    :cond_1
    :try_start_1
    invoke-virtual {v5, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->serializeAsElement(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/StackOverflowError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 216
    .end local v2    # "len":I
    .end local v5    # "prop":Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Ljava/lang/Exception;
    array-length v7, v6

    if-ne v1, v7, :cond_3

    const-string v4, "[anySetter]"

    .line 218
    .local v4, "name":Ljava/lang/String;
    :goto_3
    invoke-virtual {p0, p3, v0, p1, v4}, Lcom/fasterxml/jackson/databind/ser/impl/BeanAsArraySerializer;->wrapAndThrow(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "name":Ljava/lang/String;
    :cond_2
    return-void

    .line 217
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_3
    aget-object v7, v6, v1

    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->getName()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 219
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 220
    .local v0, "e":Ljava/lang/StackOverflowError;
    const-string v7, "Infinite recursion (StackOverflowError)"

    invoke-static {p2, v7, v0}, Lcom/fasterxml/jackson/databind/JsonMappingException;->from(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/String;Ljava/lang/Throwable;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v3

    .line 221
    .local v3, "mapE":Lcom/fasterxml/jackson/databind/JsonMappingException;
    array-length v7, v6

    if-ne v1, v7, :cond_4

    const-string v4, "[anySetter]"

    .line 222
    .restart local v4    # "name":Ljava/lang/String;
    :goto_4
    new-instance v7, Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;

    invoke-direct {v7, p1, v4}, Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Lcom/fasterxml/jackson/databind/JsonMappingException;->prependPath(Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;)V

    .line 223
    throw v3

    .line 221
    .end local v4    # "name":Ljava/lang/String;
    :cond_4
    aget-object v7, v6, v1

    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->getName()Ljava/lang/String;

    move-result-object v4

    goto :goto_4
.end method

.method public serializeWithType(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V
    .locals 2
    .param p1, "bean"    # Ljava/lang/Object;
    .param p2, "gen"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "provider"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .param p4, "typeSer"    # Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/impl/BeanAsArraySerializer;->_objectIdWriter:Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;

    if-eqz v1, :cond_0

    .line 134
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/databind/ser/impl/BeanAsArraySerializer;->_serializeWithObjectId(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V

    .line 149
    :goto_0
    return-void

    .line 137
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/impl/BeanAsArraySerializer;->_typeId:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 138
    .local v0, "typeStr":Ljava/lang/String;
    :goto_1
    if-nez v0, :cond_2

    .line 139
    invoke-virtual {p4, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;->writeTypePrefixForArray(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 143
    :goto_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/impl/BeanAsArraySerializer;->serializeAsArray(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    .line 144
    if-nez v0, :cond_3

    .line 145
    invoke-virtual {p4, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;->writeTypeSuffixForArray(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    goto :goto_0

    .line 137
    .end local v0    # "typeStr":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/impl/BeanAsArraySerializer;->_customTypeId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 141
    .restart local v0    # "typeStr":Ljava/lang/String;
    :cond_2
    invoke-virtual {p4, p1, p2, v0}, Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;->writeCustomTypePrefixForArray(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/String;)V

    goto :goto_2

    .line 147
    :cond_3
    invoke-virtual {p4, p1, p2, v0}, Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;->writeCustomTypeSuffixForArray(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BeanAsArraySerializer for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ser/impl/BeanAsArraySerializer;->handledType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unwrappingSerializer(Lcom/fasterxml/jackson/databind/util/NameTransformer;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 1
    .param p1, "transformer"    # Lcom/fasterxml/jackson/databind/util/NameTransformer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/util/NameTransformer;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/BeanAsArraySerializer;->_defaultSerializer:Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->unwrappingSerializer(Lcom/fasterxml/jackson/databind/util/NameTransformer;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic withFilterId(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/impl/BeanAsArraySerializer;->withFilterId(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;

    move-result-object v0

    return-object v0
.end method

.method public withFilterId(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;
    .locals 2
    .param p1, "filterId"    # Ljava/lang/Object;

    .prologue
    .line 104
    new-instance v0, Lcom/fasterxml/jackson/databind/ser/impl/BeanAsArraySerializer;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/impl/BeanAsArraySerializer;->_objectIdWriter:Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;

    invoke-direct {v0, p0, v1, p1}, Lcom/fasterxml/jackson/databind/ser/impl/BeanAsArraySerializer;-><init>(Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected withIgnorals(Ljava/util/Set;)Lcom/fasterxml/jackson/databind/ser/impl/BeanAsArraySerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/fasterxml/jackson/databind/ser/impl/BeanAsArraySerializer;"
        }
    .end annotation

    .prologue
    .line 109
    .local p1, "toIgnore":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Lcom/fasterxml/jackson/databind/ser/impl/BeanAsArraySerializer;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/ser/impl/BeanAsArraySerializer;-><init>(Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;Ljava/util/Set;)V

    return-object v0
.end method

.method protected bridge synthetic withIgnorals(Ljava/util/Set;)Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;
    .locals 1
    .param p1, "x0"    # Ljava/util/Set;

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/impl/BeanAsArraySerializer;->withIgnorals(Ljava/util/Set;)Lcom/fasterxml/jackson/databind/ser/impl/BeanAsArraySerializer;

    move-result-object v0

    return-object v0
.end method

.method public withObjectIdWriter(Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;)Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;
    .locals 1
    .param p1, "objectIdWriter"    # Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/BeanAsArraySerializer;->_defaultSerializer:Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->withObjectIdWriter(Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;)Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;

    move-result-object v0

    return-object v0
.end method
