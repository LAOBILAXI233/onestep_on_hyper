.class public abstract Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;
.super Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;
.source "BeanSerializerBase.java"

.implements Lcom/fasterxml/jackson/databind/ser/ContextualSerializer;
.implements Lcom/fasterxml/jackson/databind/ser/ResolvableSerializer;
.implements Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitable;
.implements Lcom/fasterxml/jackson/databind/jsonschema/SchemaAware;


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/ser/std/StdSerializer",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Lcom/fasterxml/jackson/databind/ser/ContextualSerializer;",
        "Lcom/fasterxml/jackson/databind/ser/ResolvableSerializer;",
        "Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitable;",
        "Lcom/fasterxml/jackson/databind/jsonschema/SchemaAware;"
    }
.end annotation


.field protected static final NAME_FOR_OBJECT_REF:Lcom/fasterxml/jackson/databind/PropertyName;

.field protected static final NO_PROPS:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;


.field protected final _anyGetterWriter:Lcom/fasterxml/jackson/databind/ser/AnyGetterWriter;

.field protected final _filteredProps:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

.field protected final _objectIdWriter:Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;

.field protected final _propertyFilterId:Ljava/lang/Object;

.field protected final _props:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

.field protected final _serializationShape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

.field protected final _typeId:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;


.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    new-instance v0, Lcom/fasterxml/jackson/databind/PropertyName;

    const-string v1, "#object-ref"

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/PropertyName;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->NAME_FOR_OBJECT_REF:Lcom/fasterxml/jackson/databind/PropertyName;

    .line 41
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    sput-object v0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->NO_PROPS:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;)V
    .locals 3
    .param p1, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p2, "builder"    # Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;
    .param p3, "properties"    # [Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    .param p4, "filteredProperties"    # [Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .prologue
    const/4 v1, 0x0

    .line 105
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;)V

    .line 106
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_props:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .line 107
    iput-object p4, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_filteredProps:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .line 108
    if-nez p2, :cond_0

    .line 109
    iput-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_typeId:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    .line 110
    iput-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_anyGetterWriter:Lcom/fasterxml/jackson/databind/ser/AnyGetterWriter;

    .line 111
    iput-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_propertyFilterId:Ljava/lang/Object;

    .line 112
    iput-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_objectIdWriter:Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;

    .line 113
    iput-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_serializationShape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    .line 122
    :goto_0
    return-void

    .line 115
    :cond_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->getTypeId()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v2

    iput-object v2, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_typeId:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    .line 116
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->getAnyGetter()Lcom/fasterxml/jackson/databind/ser/AnyGetterWriter;

    move-result-object v2

    iput-object v2, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_anyGetterWriter:Lcom/fasterxml/jackson/databind/ser/AnyGetterWriter;

    .line 117
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->getFilterId()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_propertyFilterId:Ljava/lang/Object;

    .line 118
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->getObjectIdWriter()Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;

    move-result-object v2

    iput-object v2, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_objectIdWriter:Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;

    .line 119
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->getBeanDescription()Lcom/fasterxml/jackson/databind/BeanDescription;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/fasterxml/jackson/databind/BeanDescription;->findExpectedFormat(Lcom/fasterxml/jackson/annotation/JsonFormat$Value;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    move-result-object v0

    .line 120
    .local v0, "format":Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    if-nez v0, :cond_1

    :goto_1
    iput-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_serializationShape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->getShape()Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    move-result-object v1

    goto :goto_1
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;)V
    .locals 2
    .param p1, "src"    # Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;

    .prologue
    .line 249
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_props:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    iget-object v1, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_filteredProps:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    invoke-direct {p0, p1, v0, v1}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;-><init>(Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;)V

    .line 250
    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;)V
    .locals 1
    .param p1, "src"    # Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;
    .param p2, "objectIdWriter"    # Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;

    .prologue
    .line 141
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_propertyFilterId:Ljava/lang/Object;

    invoke-direct {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;-><init>(Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;Ljava/lang/Object;)V

    .line 142
    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;Ljava/lang/Object;)V
    .locals 1
    .param p1, "src"    # Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;
    .param p2, "objectIdWriter"    # Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;
    .param p3, "filterId"    # Ljava/lang/Object;

    .prologue
    .line 150
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_handledType:Ljava/lang/Class;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;-><init>(Ljava/lang/Class;)V

    .line 151
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_props:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_props:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .line 152
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_filteredProps:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_filteredProps:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .line 154
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_typeId:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_typeId:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    .line 155
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_anyGetterWriter:Lcom/fasterxml/jackson/databind/ser/AnyGetterWriter;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_anyGetterWriter:Lcom/fasterxml/jackson/databind/ser/AnyGetterWriter;

    .line 156
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_objectIdWriter:Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;

    .line 157
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_propertyFilterId:Ljava/lang/Object;

    .line 158
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_serializationShape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_serializationShape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    .line 159
    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;Lcom/fasterxml/jackson/databind/util/NameTransformer;)V
    .locals 2
    .param p1, "src"    # Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;
    .param p2, "unwrapper"    # Lcom/fasterxml/jackson/databind/util/NameTransformer;

    .prologue
    .line 257
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_props:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    invoke-static {v0, p2}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->rename([Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;Lcom/fasterxml/jackson/databind/util/NameTransformer;)[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    move-result-object v0

    iget-object v1, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_filteredProps:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    invoke-static {v1, p2}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->rename([Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;Lcom/fasterxml/jackson/databind/util/NameTransformer;)[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;-><init>(Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;)V

    .line 258
    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;Ljava/util/Set;)V
    .locals 9
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
    .local p2, "toIgnore":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 169
    iget-object v7, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_handledType:Ljava/lang/Class;

    invoke-direct {p0, v7}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;-><init>(Ljava/lang/Class;)V

    .line 171
    iget-object v5, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_props:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .line 172
    .local v5, "propsIn":[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    iget-object v1, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_filteredProps:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .line 173
    .local v1, "fpropsIn":[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    array-length v4, v5

    .line 175
    .local v4, "len":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 176
    .local v6, "propsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;>;"
    if-nez v1, :cond_1

    move-object v2, v8

    .line 178
    .local v2, "fpropsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;>;"
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v4, :cond_3

    .line 179
    aget-object v0, v5, v3

    .line 181
    .local v0, "bpw":Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    if-eqz p2, :cond_2

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p2, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 178
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 176
    .end local v0    # "bpw":Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    .end local v2    # "fpropsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;>;"
    .end local v3    # "i":I
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0

    .line 184
    .restart local v0    # "bpw":Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    .restart local v2    # "fpropsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;>;"
    .restart local v3    # "i":I
    :cond_2
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    if-eqz v1, :cond_0

    .line 186
    aget-object v7, v1, v3

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 189
    .end local v0    # "bpw":Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    :cond_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    iput-object v7, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_props:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .line 190
    if-nez v2, :cond_4

    :goto_3
    iput-object v8, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_filteredProps:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .line 192
    iget-object v7, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_typeId:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    iput-object v7, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_typeId:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    .line 193
    iget-object v7, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_anyGetterWriter:Lcom/fasterxml/jackson/databind/ser/AnyGetterWriter;

    iput-object v7, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_anyGetterWriter:Lcom/fasterxml/jackson/databind/ser/AnyGetterWriter;

    .line 194
    iget-object v7, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_objectIdWriter:Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;

    iput-object v7, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_objectIdWriter:Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;

    .line 195
    iget-object v7, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_propertyFilterId:Ljava/lang/Object;

    iput-object v7, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_propertyFilterId:Ljava/lang/Object;

    .line 196
    iget-object v7, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_serializationShape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    iput-object v7, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_serializationShape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    .line 197
    return-void

    .line 190
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    move-object v8, v7

    goto :goto_3
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;)V
    .locals 1
    .param p1, "src"    # Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;
    .param p2, "properties"    # [Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    .param p3, "filteredProperties"    # [Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .prologue
    .line 127
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_handledType:Ljava/lang/Class;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;-><init>(Ljava/lang/Class;)V

    .line 128
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_props:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .line 129
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_filteredProps:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .line 131
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_typeId:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_typeId:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    .line 132
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_anyGetterWriter:Lcom/fasterxml/jackson/databind/ser/AnyGetterWriter;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_anyGetterWriter:Lcom/fasterxml/jackson/databind/ser/AnyGetterWriter;

    .line 133
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_objectIdWriter:Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_objectIdWriter:Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;

    .line 134
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_propertyFilterId:Ljava/lang/Object;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_propertyFilterId:Ljava/lang/Object;

    .line 135
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_serializationShape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_serializationShape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    .line 136
    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;[Ljava/lang/String;)V
    .locals 1
    .param p1, "src"    # Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;
    .param p2, "toIgnore"    # [Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 164
    invoke-static {p2}, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->arrayToSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;-><init>(Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;Ljava/util/Set;)V

    .line 165
    return-void
.end method

.method private static final rename([Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;Lcom/fasterxml/jackson/databind/util/NameTransformer;)[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    .locals 5
    .param p0, "props"    # [Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    .param p1, "transformer"    # Lcom/fasterxml/jackson/databind/util/NameTransformer;

    .prologue
    .line 263
    if-eqz p0, :cond_0

    array-length v4, p0

    if-eqz v4, :cond_0

    if-eqz p1, :cond_0

    sget-object v4, Lcom/fasterxml/jackson/databind/util/NameTransformer;->NOP:Lcom/fasterxml/jackson/databind/util/NameTransformer;

    if-ne p1, v4, :cond_2

    :cond_0
    move-object v3, p0

    .line 274
    :cond_1
    return-object v3

    .line 266
    :cond_2
    array-length v2, p0

    .line 267
    .local v2, "len":I
    new-array v3, v2, [Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .line 268
    .local v3, "result":[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 269
    aget-object v0, p0, v1

    .line 270
    .local v0, "bpw":Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    if-eqz v0, :cond_3

    .line 271
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->rename(Lcom/fasterxml/jackson/databind/util/NameTransformer;)Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    move-result-object v4

    aput-object v4, v3, v1

    .line 268
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


.method protected final _customTypeId(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "bean"    # Ljava/lang/Object;

    .prologue
    .line 663
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_typeId:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 664
    .local v0, "typeId":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 665
    const-string v0, ""

    .line 667
    .end local v0    # "typeId":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "typeId":Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected _serializeObjectId(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/ser/impl/WritableObjectId;)V
    .locals 3
    .param p1, "bean"    # Ljava/lang/Object;
    .param p2, "gen"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "provider"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .param p4, "typeSer"    # Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
    .param p5, "objectId"    # Lcom/fasterxml/jackson/databind/ser/impl/WritableObjectId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 641
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_objectIdWriter:Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;

    .line 642
    .local v1, "w":Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_typeId:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    if-nez v2, :cond_0

    const/4 v0, 0x0

    .line 643
    .local v0, "typeStr":Ljava/lang/String;
    :goto_0
    if-nez v0, :cond_1

    .line 644
    invoke-virtual {p4, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;->writeTypePrefixForObject(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 648
    :goto_1
    invoke-virtual {p5, p2, p3, v1}, Lcom/fasterxml/jackson/databind/ser/impl/WritableObjectId;->writeAsField(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;)V

    .line 649
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_propertyFilterId:Ljava/lang/Object;

    if-eqz v2, :cond_2

    .line 650
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->serializeFieldsFiltered(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    .line 654
    :goto_2
    if-nez v0, :cond_3

    .line 655
    invoke-virtual {p4, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;->writeTypeSuffixForObject(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 659
    :goto_3
    return-void

    .line 642
    .end local v0    # "typeStr":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_customTypeId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 646
    .restart local v0    # "typeStr":Ljava/lang/String;
    :cond_1
    invoke-virtual {p4, p1, p2, v0}, Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;->writeCustomTypePrefixForObject(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/String;)V

    goto :goto_1

    .line 652
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->serializeFields(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    goto :goto_2

    .line 657
    :cond_3
    invoke-virtual {p4, p1, p2, v0}, Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;->writeCustomTypeSuffixForObject(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/String;)V

    goto :goto_3
.end method

.method protected final _serializeWithObjectId(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V
    .locals 8
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
    .line 622
    iget-object v7, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_objectIdWriter:Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;

    .line 623
    .local v7, "w":Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;
    iget-object v0, v7, Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;->generator:Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;

    invoke-virtual {p3, p1, v0}, Lcom/fasterxml/jackson/databind/SerializerProvider;->findObjectId(Ljava/lang/Object;Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;)Lcom/fasterxml/jackson/databind/ser/impl/WritableObjectId;

    move-result-object v5

    .line 625
    .local v5, "objectId":Lcom/fasterxml/jackson/databind/ser/impl/WritableObjectId;
    invoke-virtual {v5, p2, p3, v7}, Lcom/fasterxml/jackson/databind/ser/impl/WritableObjectId;->writeAsId(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 636
    :goto_0
    return-void

    .line 629
    :cond_0
    invoke-virtual {v5, p1}, Lcom/fasterxml/jackson/databind/ser/impl/WritableObjectId;->generateId(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 630
    .local v6, "id":Ljava/lang/Object;
    iget-boolean v0, v7, Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;->alwaysAsId:Z

    if-eqz v0, :cond_1

    .line 631
    iget-object v0, v7, Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;->serializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    invoke-virtual {v0, v6, p2, p3}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    goto :goto_0

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 635
    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_serializeObjectId(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/ser/impl/WritableObjectId;)V

    goto :goto_0
.end method

.method protected final _serializeWithObjectId(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Z)V
    .locals 4
    .param p1, "bean"    # Ljava/lang/Object;
    .param p2, "gen"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "provider"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .param p4, "startEndObject"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 593
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_objectIdWriter:Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;

    .line 594
    .local v2, "w":Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;
    iget-object v3, v2, Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;->generator:Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;

    invoke-virtual {p3, p1, v3}, Lcom/fasterxml/jackson/databind/SerializerProvider;->findObjectId(Ljava/lang/Object;Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;)Lcom/fasterxml/jackson/databind/ser/impl/WritableObjectId;

    move-result-object v1

    .line 596
    .local v1, "objectId":Lcom/fasterxml/jackson/databind/ser/impl/WritableObjectId;
    invoke-virtual {v1, p2, p3, v2}, Lcom/fasterxml/jackson/databind/ser/impl/WritableObjectId;->writeAsId(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 617
    :cond_0
    :goto_0
    return-void

    .line 600
    :cond_1
    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/ser/impl/WritableObjectId;->generateId(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 601
    .local v0, "id":Ljava/lang/Object;
    iget-boolean v3, v2, Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;->alwaysAsId:Z

    if-eqz v3, :cond_2

    .line 602
    iget-object v3, v2, Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;->serializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    invoke-virtual {v3, v0, p2, p3}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    goto :goto_0

    .line 605
    :cond_2
    if-eqz p4, :cond_3

    .line 606
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject(Ljava/lang/Object;)V

    .line 608
    :cond_3
    invoke-virtual {v1, p2, p3, v2}, Lcom/fasterxml/jackson/databind/ser/impl/WritableObjectId;->writeAsField(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;)V

    .line 609
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_propertyFilterId:Ljava/lang/Object;

    if-eqz v3, :cond_4

    .line 610
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->serializeFieldsFiltered(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    .line 614
    :goto_1
    if-eqz p4, :cond_0

    .line 615
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 612
    :cond_4
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->serializeFields(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    goto :goto_1
.end method

.method public acceptJsonFormatVisitor(Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;Lcom/fasterxml/jackson/databind/JavaType;)V
    .locals 10
    .param p1, "visitor"    # Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;
    .param p2, "typeHint"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 806
    if-nez p1, :cond_1

    .line 837
    :cond_0
    return-void

    .line 809
    :cond_1
    invoke-interface {p1, p2}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;->expectObjectFormat(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonObjectFormatVisitor;

    move-result-object v3

    .line 810
    .local v3, "objectVisitor":Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonObjectFormatVisitor;
    if-eqz v3, :cond_0

    .line 813
    invoke-interface {p1}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;->getProvider()Lcom/fasterxml/jackson/databind/SerializerProvider;

    move-result-object v6

    .line 814
    .local v6, "provider":Lcom/fasterxml/jackson/databind/SerializerProvider;
    iget-object v8, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_propertyFilterId:Ljava/lang/Object;

    if-eqz v8, :cond_2

    .line 815
    invoke-interface {p1}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;->getProvider()Lcom/fasterxml/jackson/databind/SerializerProvider;

    move-result-object v8

    iget-object v9, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_propertyFilterId:Ljava/lang/Object;

    invoke-virtual {p0, v8, v9, v7}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->findPropertyFilter(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/Object;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/ser/PropertyFilter;

    move-result-object v1

    .line 817
    .local v1, "filter":Lcom/fasterxml/jackson/databind/ser/PropertyFilter;
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v8, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_props:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    array-length v0, v8

    .local v0, "end":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 818
    iget-object v8, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_props:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    aget-object v8, v8, v2

    invoke-interface {v1, v8, v3, v6}, Lcom/fasterxml/jackson/databind/ser/PropertyFilter;->depositSchemaProperty(Lcom/fasterxml/jackson/databind/ser/PropertyWriter;Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonObjectFormatVisitor;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    .line 817
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 821
    .end local v0    # "end":I
    .end local v1    # "filter":Lcom/fasterxml/jackson/databind/ser/PropertyFilter;
    .end local v2    # "i":I
    :cond_2
    iget-object v8, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_filteredProps:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    if-eqz v8, :cond_3

    if-nez v6, :cond_5

    .line 824
    .local v7, "view":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    :goto_1
    if-eqz v7, :cond_6

    .line 825
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_filteredProps:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .line 830
    .local v5, "props":[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    :goto_2
    const/4 v2, 0x0

    .restart local v2    # "i":I
    array-length v0, v5

    .restart local v0    # "end":I
    :goto_3
    if-ge v2, v0, :cond_0

    .line 831
    aget-object v4, v5, v2

    .line 832
    .local v4, "prop":Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    if-eqz v4, :cond_4

    .line 833
    invoke-virtual {v4, v3, v6}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->depositSchemaProperty(Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonObjectFormatVisitor;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    .line 830
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 821
    .end local v0    # "end":I
    .end local v2    # "i":I
    .end local v4    # "prop":Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    .end local v5    # "props":[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    .end local v7    # "view":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_5
    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getActiveView()Ljava/lang/Class;

    move-result-object v7

    goto :goto_1

    .line 827
    .restart local v7    # "view":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_6
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_props:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .restart local v5    # "props":[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    goto :goto_2
.end method

.method protected abstract asArraySerializer()Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;
.end method

.method public createContextual(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 33
    .param p1, "provider"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
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
    .line 401
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v18

    .line 402
    .local v18, "intr":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    if-eqz p2, :cond_0

    if-nez v18, :cond_b

    :cond_0
    const/4 v4, 0x0

    .line 404
    .local v4, "accessor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v5

    .line 408
    .local v5, "config":Lcom/fasterxml/jackson/databind/SerializationConfig;
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->handledType()Ljava/lang/Class;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->findFormatOverrides(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/BeanProperty;Ljava/lang/Class;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    move-result-object v9

    .line 409
    .local v9, "format":Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    const/16 v26, 0x0

    .line 410
    .local v26, "shape":Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;
    if-eqz v9, :cond_1

    invoke-virtual {v9}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->hasShape()Z

    move-result v28

    if-eqz v28, :cond_1

    .line 411
    invoke-virtual {v9}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->getShape()Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    move-result-object v26

    .line 413
    sget-object v28, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->ANY:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_serializationShape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    move-object/from16 v28, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    if-eq v0, v1, :cond_1

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_handledType:Ljava/lang/Class;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Class;->isEnum()Z

    move-result v28

    if-eqz v28, :cond_1

    .line 415
    sget-object v28, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase$1;->$SwitchMap$com$fasterxml$jackson$annotation$JsonFormat$Shape:[I

    invoke-virtual/range {v26 .. v26}, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->ordinal()I

    move-result v29

    aget v28, v28, v29

    packed-switch v28, :pswitch_data_0

    .line 430
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_objectIdWriter:Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;

    move-object/from16 v22, v0

    .line 431
    .local v22, "oiw":Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;
    const/16 v16, 0x0

    .line 432
    .local v16, "ignoredProps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/16 v20, 0x0

    .line 435
    .local v20, "newFilterId":Ljava/lang/Object;
    if-eqz v4, :cond_5

    .line 436
    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findPropertyIgnorals(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    move-result-object v15

    .line 437
    .local v15, "ignorals":Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;
    if-eqz v15, :cond_2

    .line 438
    invoke-virtual {v15}, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->findIgnoredForSerialization()Ljava/util/Set;

    move-result-object v16

    .line 440
    :cond_2
    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findObjectIdInfo(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;

    move-result-object v21

    .line 441
    .local v21, "objectIdInfo":Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;
    if-nez v21, :cond_c

    .line 443
    if-eqz v22, :cond_3

    .line 444
    new-instance v28, Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;

    sget-object v29, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->NAME_FOR_OBJECT_REF:Lcom/fasterxml/jackson/databind/PropertyName;

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    invoke-direct/range {v28 .. v32}, Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;-><init>(Lcom/fasterxml/jackson/databind/PropertyName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-virtual {v0, v4, v1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findObjectReferenceInfo(Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;)Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;

    move-result-object v21

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_objectIdWriter:Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;

    move-object/from16 v28, v0

    invoke-virtual/range {v21 .. v21}, Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;->getAlwaysAsId()Z

    move-result v29

    invoke-virtual/range {v28 .. v29}, Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;->withAlwaysAsId(Z)Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;

    move-result-object v22

    .line 499
    :cond_3
    :goto_1
    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findFilterId(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;

    move-result-object v8

    .line 500
    .local v8, "filterId":Ljava/lang/Object;
    if-eqz v8, :cond_5

    .line 502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_propertyFilterId:Ljava/lang/Object;

    move-object/from16 v28, v0

    if-eqz v28, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_propertyFilterId:Ljava/lang/Object;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_5

    .line 503
    :cond_4
    move-object/from16 v20, v8

    .line 508
    .end local v8    # "filterId":Ljava/lang/Object;
    .end local v15    # "ignorals":Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;
    .end local v20    # "newFilterId":Ljava/lang/Object;
    .end local v21    # "objectIdInfo":Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;
    :cond_5
    move-object/from16 v6, p0

    .line 509
    .local v6, "contextual":Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;
    if-eqz v22, :cond_6

    .line 510
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;->idType:Lcom/fasterxml/jackson/databind/JavaType;

    move-object/from16 v28, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->findValueSerializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v25

    .line 511
    .local v25, "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<*>;"
    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;->withSerializer(Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;

    move-result-object v22

    .line 512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_objectIdWriter:Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;

    move-object/from16 v28, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    if-eq v0, v1, :cond_6

    .line 513
    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->withObjectIdWriter(Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;)Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;

    move-result-object v6

    .line 517
    .end local v25    # "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<*>;"
    :cond_6
    if-eqz v16, :cond_7

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->isEmpty()Z

    move-result v28

    if-nez v28, :cond_7

    .line 518
    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->withIgnorals(Ljava/util/Set;)Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;

    move-result-object v6

    .line 520
    :cond_7
    if-eqz v20, :cond_8

    .line 521
    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->withFilterId(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;

    move-result-object v6

    .line 523
    :cond_8
    if-nez v26, :cond_9

    .line 524
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_serializationShape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    move-object/from16 v26, v0

    .line 526
    :cond_9
    sget-object v28, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->ARRAY:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_a

    .line 527
    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->asArraySerializer()Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;

    move-result-object v6

    .line 529
    .end local v6    # "contextual":Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;
    .end local v16    # "ignoredProps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v22    # "oiw":Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;
    :cond_a
    :goto_2
    return-object v6

    .line 402
    .end local v4    # "accessor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .end local v5    # "config":Lcom/fasterxml/jackson/databind/SerializationConfig;
    .end local v9    # "format":Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    .end local v26    # "shape":Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;
    :cond_b
    invoke-interface/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/BeanProperty;->getMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v4

    goto/16 :goto_0

    .line 421
    .restart local v4    # "accessor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .restart local v5    # "config":Lcom/fasterxml/jackson/databind/SerializationConfig;
    .restart local v9    # "format":Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    .restart local v26    # "shape":Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_handledType:Ljava/lang/Class;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Lcom/fasterxml/jackson/databind/SerializationConfig;->introspectClassAnnotations(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/BeanDescription;

    move-result-object v7

    .line 422
    .local v7, "desc":Lcom/fasterxml/jackson/databind/BeanDescription;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_handledType:Ljava/lang/Class;

    move-object/from16 v28, v0

    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-static {v0, v1, v7, v9}, Lcom/fasterxml/jackson/databind/ser/std/EnumSerializer;->construct(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/annotation/JsonFormat$Value;)Lcom/fasterxml/jackson/databind/ser/std/EnumSerializer;

    move-result-object v25

    .line 424
    .restart local v25    # "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<*>;"
    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->handlePrimaryContextualization(Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v6

    goto :goto_2

    .line 455
    .end local v7    # "desc":Lcom/fasterxml/jackson/databind/BeanDescription;
    .end local v25    # "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<*>;"
    .restart local v15    # "ignorals":Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;
    .restart local v16    # "ignoredProps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v20    # "newFilterId":Ljava/lang/Object;
    .restart local v21    # "objectIdInfo":Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;
    .restart local v22    # "oiw":Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;
    :cond_c
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v4, v1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findObjectReferenceInfo(Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;)Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;

    move-result-object v21

    .line 457
    invoke-virtual/range {v21 .. v21}, Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;->getGeneratorType()Ljava/lang/Class;

    move-result-object v17

    .line 458
    .local v17, "implClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->constructType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v27

    .line 459
    .local v27, "type":Lcom/fasterxml/jackson/databind/JavaType;
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v28

    const-class v29, Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->findTypeParameters(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)[Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v28

    const/16 v29, 0x0

    aget-object v14, v28, v29

    .line 461
    .local v14, "idType":Lcom/fasterxml/jackson/databind/JavaType;
    const-class v28, Lcom/fasterxml/jackson/annotation/ObjectIdGenerators$PropertyGenerator;

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_10

    .line 462
    invoke-virtual/range {v21 .. v21}, Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;->getPropertyName()Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/fasterxml/jackson/databind/PropertyName;->getSimpleName()Ljava/lang/String;

    move-result-object v24

    .line 463
    .local v24, "propName":Ljava/lang/String;
    const/4 v13, 0x0

    .line 465
    .local v13, "idProp":Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    const/4 v12, 0x0

    .local v12, "i":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_props:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v19, v0

    .line 466
    .local v19, "len":I
    :goto_3
    move/from16 v0, v19

    if-ne v12, v0, :cond_d

    .line 467
    new-instance v28, Ljava/lang/IllegalArgumentException;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Invalid Object Id definition for "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_handledType:Ljava/lang/Class;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ": can not find property with name \'"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "\'"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v28

    .line 470
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_props:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    move-object/from16 v28, v0

    aget-object v23, v28, v12

    .line 471
    .local v23, "prop":Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    invoke-virtual/range {v23 .. v23}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->getName()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_f

    .line 472
    move-object/from16 v13, v23

    .line 476
    if-lez v12, :cond_e

    .line 477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_props:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_props:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v29

    move-object/from16 v2, v30

    move/from16 v3, v31

    invoke-static {v0, v1, v2, v3, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_props:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aput-object v13, v28, v29

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_filteredProps:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    move-object/from16 v28, v0

    if-eqz v28, :cond_e

    .line 480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_filteredProps:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    move-object/from16 v28, v0

    aget-object v10, v28, v12

    .line 481
    .local v10, "fp":Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_filteredProps:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_filteredProps:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v29

    move-object/from16 v2, v30

    move/from16 v3, v31

    invoke-static {v0, v1, v2, v3, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_filteredProps:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aput-object v10, v28, v29

    .line 488
    .end local v10    # "fp":Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    :cond_e
    invoke-virtual {v13}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v14

    .line 489
    new-instance v11, Lcom/fasterxml/jackson/databind/ser/impl/PropertyBasedObjectIdGenerator;

    move-object/from16 v0, v21

    invoke-direct {v11, v0, v13}, Lcom/fasterxml/jackson/databind/ser/impl/PropertyBasedObjectIdGenerator;-><init>(Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;)V

    .line 490
    .local v11, "gen":Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;, "Lcom/fasterxml/jackson/annotation/ObjectIdGenerator<*>;"
    const/16 v28, 0x0

    check-cast v28, Lcom/fasterxml/jackson/databind/PropertyName;

    invoke-virtual/range {v21 .. v21}, Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;->getAlwaysAsId()Z

    move-result v29

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-static {v14, v0, v11, v1}, Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;->construct(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;Z)Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;

    move-result-object v22

    .line 491
    goto/16 :goto_1

    .line 465
    .end local v11    # "gen":Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;, "Lcom/fasterxml/jackson/annotation/ObjectIdGenerator<*>;"
    :cond_f
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_3

    .line 492
    .end local v12    # "i":I
    .end local v13    # "idProp":Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    .end local v19    # "len":I
    .end local v23    # "prop":Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    .end local v24    # "propName":Ljava/lang/String;
    :cond_10
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v4, v1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->objectIdGeneratorInstance(Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;)Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;

    move-result-object v11

    .line 493
    .restart local v11    # "gen":Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;, "Lcom/fasterxml/jackson/annotation/ObjectIdGenerator<*>;"
    invoke-virtual/range {v21 .. v21}, Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;->getPropertyName()Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v28

    invoke-virtual/range {v21 .. v21}, Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;->getAlwaysAsId()Z

    move-result v29

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-static {v14, v0, v11, v1}, Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;->construct(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;Z)Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;

    move-result-object v22

    goto/16 :goto_1

    .line 415
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected findConvertingSerializer(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 7
    .param p1, "provider"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .param p2, "prop"    # Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializerProvider;",
            "Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 377
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v3

    .line 378
    .local v3, "intr":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    if-eqz v3, :cond_0

    .line 379
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->getMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v4

    .line 380
    .local v4, "m":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    if-eqz v4, :cond_0

    .line 381
    invoke-virtual {v3, v4}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findSerializationConverter(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;

    move-result-object v1

    .line 382
    .local v1, "convDef":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 383
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->getMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v6

    invoke-virtual {p1, v6, v1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->converterInstance(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/util/Converter;

    move-result-object v0

    .line 384
    .local v0, "conv":Lcom/fasterxml/jackson/databind/util/Converter;, "Lcom/fasterxml/jackson/databind/util/Converter<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v6

    invoke-interface {v0, v6}, Lcom/fasterxml/jackson/databind/util/Converter;->getOutputType(Lcom/fasterxml/jackson/databind/type/TypeFactory;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    .line 386
    .local v2, "delegateType":Lcom/fasterxml/jackson/databind/JavaType;
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JavaType;->isJavaLangObject()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 388
    .local v5, "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<*>;"
    :goto_0
    new-instance v6, Lcom/fasterxml/jackson/databind/ser/std/StdDelegatingSerializer;

    invoke-direct {v6, v0, v2, v5}, Lcom/fasterxml/jackson/databind/ser/std/StdDelegatingSerializer;-><init>(Lcom/fasterxml/jackson/databind/util/Converter;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonSerializer;)V

    move-object v5, v6

    .line 392
    .end local v0    # "conv":Lcom/fasterxml/jackson/databind/util/Converter;, "Lcom/fasterxml/jackson/databind/util/Converter<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v1    # "convDef":Ljava/lang/Object;
    .end local v2    # "delegateType":Lcom/fasterxml/jackson/databind/JavaType;
    .end local v4    # "m":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .end local v5    # "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<*>;"
    :cond_0
    return-object v5

    .line 386
    .restart local v0    # "conv":Lcom/fasterxml/jackson/databind/util/Converter;, "Lcom/fasterxml/jackson/databind/util/Converter<Ljava/lang/Object;Ljava/lang/Object;>;"
    .restart local v1    # "convDef":Ljava/lang/Object;
    .restart local v2    # "delegateType":Lcom/fasterxml/jackson/databind/JavaType;
    .restart local v4    # "m":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    :cond_1
    invoke-virtual {p1, v2, p2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->findValueSerializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v5

    goto :goto_0
.end method

.method public getSchema(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 9
    .param p1, "provider"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .param p2, "typeHint"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 767
    const-string v7, "object"

    const/4 v8, 0x1

    invoke-virtual {p0, v7, v8}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->createSchemaNode(Ljava/lang/String;Z)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v4

    .line 770
    .local v4, "o":Lcom/fasterxml/jackson/databind/node/ObjectNode;
    iget-object v7, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_handledType:Ljava/lang/Class;

    const-class v8, Lcom/fasterxml/jackson/databind/jsonschema/JsonSerializableSchema;

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/jsonschema/JsonSerializableSchema;

    .line 771
    .local v0, "ann":Lcom/fasterxml/jackson/databind/jsonschema/JsonSerializableSchema;
    if-eqz v0, :cond_0

    .line 772
    invoke-interface {v0}, Lcom/fasterxml/jackson/databind/jsonschema/JsonSerializableSchema;->id()Ljava/lang/String;

    move-result-object v3

    .line 773
    .local v3, "id":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 774
    const-string v7, "id"

    invoke-virtual {v4, v7, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 780
    .end local v3    # "id":Ljava/lang/String;
    :cond_0
    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->objectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v6

    .line 782
    .local v6, "propertiesNode":Lcom/fasterxml/jackson/databind/node/ObjectNode;
    iget-object v7, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_propertyFilterId:Ljava/lang/Object;

    if-eqz v7, :cond_1

    .line 783
    iget-object v7, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_propertyFilterId:Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {p0, p1, v7, v8}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->findPropertyFilter(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/Object;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/ser/PropertyFilter;

    move-result-object v1

    .line 788
    .local v1, "filter":Lcom/fasterxml/jackson/databind/ser/PropertyFilter;
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v7, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_props:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    array-length v7, v7

    if-ge v2, v7, :cond_3

    .line 789
    iget-object v7, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_props:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    aget-object v5, v7, v2

    .line 790
    .local v5, "prop":Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    if-nez v1, :cond_2

    .line 791
    invoke-virtual {v5, v6, p1}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->depositSchemaProperty(Lcom/fasterxml/jackson/databind/node/ObjectNode;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    .line 788
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 785
    .end local v1    # "filter":Lcom/fasterxml/jackson/databind/ser/PropertyFilter;
    .end local v2    # "i":I
    .end local v5    # "prop":Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "filter":Lcom/fasterxml/jackson/databind/ser/PropertyFilter;
    goto :goto_0

    .line 793
    .restart local v2    # "i":I
    .restart local v5    # "prop":Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    :cond_2
    invoke-interface {v1, v5, v6, p1}, Lcom/fasterxml/jackson/databind/ser/PropertyFilter;->depositSchemaProperty(Lcom/fasterxml/jackson/databind/ser/PropertyWriter;Lcom/fasterxml/jackson/databind/node/ObjectNode;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    goto :goto_2

    .line 797
    .end local v5    # "prop":Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    :cond_3
    const-string v7, "properties"

    invoke-virtual {v4, v7, v6}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->set(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 798
    return-object v4
.end method

.method public properties()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/fasterxml/jackson/databind/ser/PropertyWriter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 540
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_props:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public resolve(Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 11
    .param p1, "provider"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 291
    iget-object v10, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_filteredProps:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    if-nez v10, :cond_2

    const/4 v0, 0x0

    .line 292
    .local v0, "filteredCount":I
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v10, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_props:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    array-length v2, v10

    .local v2, "len":I
    :goto_1
    if-ge v1, v2, :cond_7

    .line 293
    iget-object v10, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_props:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    aget-object v4, v10, v1

    .line 295
    .local v4, "prop":Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->willSuppressNulls()Z

    move-result v10

    if-nez v10, :cond_0

    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->hasNullSerializer()Z

    move-result v10

    if-nez v10, :cond_0

    .line 296
    invoke-virtual {p1, v4}, Lcom/fasterxml/jackson/databind/SerializerProvider;->findNullValueSerializer(Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v3

    .line 297
    .local v3, "nullSer":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    if-eqz v3, :cond_0

    .line 298
    invoke-virtual {v4, v3}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->assignNullSerializer(Lcom/fasterxml/jackson/databind/JsonSerializer;)V

    .line 300
    if-ge v1, v0, :cond_0

    .line 301
    iget-object v10, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_filteredProps:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    aget-object v9, v10, v1

    .line 302
    .local v9, "w2":Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    if-eqz v9, :cond_0

    .line 303
    invoke-virtual {v9, v3}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->assignNullSerializer(Lcom/fasterxml/jackson/databind/JsonSerializer;)V

    .line 309
    .end local v3    # "nullSer":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    .end local v9    # "w2":Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    :cond_0
    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->hasSerializer()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 292
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 291
    .end local v0    # "filteredCount":I
    .end local v1    # "i":I
    .end local v2    # "len":I
    .end local v4    # "prop":Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    :cond_2
    iget-object v10, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_filteredProps:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    array-length v0, v10

    goto :goto_0

    .line 313
    .restart local v0    # "filteredCount":I
    .restart local v1    # "i":I
    .restart local v2    # "len":I
    .restart local v4    # "prop":Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    :cond_3
    invoke-virtual {p0, p1, v4}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->findConvertingSerializer(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v5

    .line 314
    .local v5, "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    if-nez v5, :cond_6

    .line 316
    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->getSerializationType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v7

    .line 320
    .local v7, "type":Lcom/fasterxml/jackson/databind/JavaType;
    if-nez v7, :cond_5

    .line 324
    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v7

    .line 325
    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/JavaType;->isFinal()Z

    move-result v10

    if-nez v10, :cond_5

    .line 326
    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/JavaType;->isContainerType()Z

    move-result v10

    if-nez v10, :cond_4

    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/JavaType;->containedTypeCount()I

    move-result v10

    if-lez v10, :cond_1

    .line 327
    :cond_4
    invoke-virtual {v4, v7}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->setNonTrivialBaseType(Lcom/fasterxml/jackson/databind/JavaType;)V

    goto :goto_2

    .line 332
    :cond_5
    invoke-virtual {p1, v7, v4}, Lcom/fasterxml/jackson/databind/SerializerProvider;->findValueSerializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v5

    .line 336
    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/JavaType;->isContainerType()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 337
    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/JavaType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v10

    invoke-virtual {v10}, Lcom/fasterxml/jackson/databind/JavaType;->getTypeHandler()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    .line 338
    .local v8, "typeSer":Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
    if-eqz v8, :cond_6

    .line 340
    instance-of v10, v5, Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;

    if-eqz v10, :cond_6

    .line 343
    check-cast v5, Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;

    .end local v5    # "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    invoke-virtual {v5, v8}, Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;->withValueTypeSerializer(Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;

    move-result-object v6

    .line 344
    .local v6, "ser2":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    move-object v5, v6

    .line 349
    .end local v6    # "ser2":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    .end local v7    # "type":Lcom/fasterxml/jackson/databind/JavaType;
    .end local v8    # "typeSer":Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
    .restart local v5    # "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    :cond_6
    invoke-virtual {v4, v5}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->assignSerializer(Lcom/fasterxml/jackson/databind/JsonSerializer;)V

    .line 351
    if-ge v1, v0, :cond_1

    .line 352
    iget-object v10, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_filteredProps:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    aget-object v9, v10, v1

    .line 353
    .restart local v9    # "w2":Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    if-eqz v9, :cond_1

    .line 354
    invoke-virtual {v9, v5}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->assignSerializer(Lcom/fasterxml/jackson/databind/JsonSerializer;)V

    goto :goto_2

    .line 360
    .end local v4    # "prop":Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    .end local v5    # "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    .end local v9    # "w2":Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    :cond_7
    iget-object v10, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_anyGetterWriter:Lcom/fasterxml/jackson/databind/ser/AnyGetterWriter;

    if-eqz v10, :cond_8

    .line 362
    iget-object v10, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_anyGetterWriter:Lcom/fasterxml/jackson/databind/ser/AnyGetterWriter;

    invoke-virtual {v10, p1}, Lcom/fasterxml/jackson/databind/ser/AnyGetterWriter;->resolve(Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    .line 364
    :cond_8
    return-void
.end method

.method public abstract serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected serializeFields(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
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
    .line 680
    iget-object v7, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_filteredProps:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    if-eqz v7, :cond_1

    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getActiveView()Ljava/lang/Class;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 681
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_filteredProps:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .line 685
    .local v6, "props":[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    :goto_0
    const/4 v1, 0x0

    .line 687
    .local v1, "i":I
    :try_start_0
    array-length v2, v6

    .local v2, "len":I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 688
    aget-object v5, v6, v1

    .line 689
    .local v5, "prop":Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    if-eqz v5, :cond_0

    .line 690
    invoke-virtual {v5, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->serializeAsField(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_1

    .line 687
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 683
    .end local v1    # "i":I
    .end local v2    # "len":I
    .end local v5    # "prop":Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    .end local v6    # "props":[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    :cond_1
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_props:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .restart local v6    # "props":[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    goto :goto_0

    .line 693
    .restart local v1    # "i":I
    .restart local v2    # "len":I
    :cond_2
    :try_start_1
    iget-object v7, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_anyGetterWriter:Lcom/fasterxml/jackson/databind/ser/AnyGetterWriter;

    if-eqz v7, :cond_3

    .line 694
    iget-object v7, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_anyGetterWriter:Lcom/fasterxml/jackson/databind/ser/AnyGetterWriter;

    invoke-virtual {v7, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/AnyGetterWriter;->getAndSerialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/StackOverflowError; {:try_start_1 .. :try_end_1} :catch_1

    .line 712
    .end local v2    # "len":I
    :cond_3
    :goto_2
    return-void

    .line 696
    :catch_0
    move-exception v0

    .line 697
    .local v0, "e":Ljava/lang/Exception;
    array-length v7, v6

    if-ne v1, v7, :cond_4

    const-string v4, "[anySetter]"

    .line 698
    .local v4, "name":Ljava/lang/String;
    :goto_3
    invoke-virtual {p0, p3, v0, p1, v4}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->wrapAndThrow(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 697
    .end local v4    # "name":Ljava/lang/String;
    :cond_4
    aget-object v7, v6, v1

    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->getName()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 699
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 706
    .local v0, "e":Ljava/lang/StackOverflowError;
    new-instance v3, Lcom/fasterxml/jackson/databind/JsonMappingException;

    const-string v7, "Infinite recursion (StackOverflowError)"

    invoke-direct {v3, p2, v7, v0}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/io/Closeable;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 708
    .local v3, "mapE":Lcom/fasterxml/jackson/databind/JsonMappingException;
    array-length v7, v6

    if-ne v1, v7, :cond_5

    const-string v4, "[anySetter]"

    .line 709
    .restart local v4    # "name":Ljava/lang/String;
    :goto_4
    new-instance v7, Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;

    invoke-direct {v7, p1, v4}, Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Lcom/fasterxml/jackson/databind/JsonMappingException;->prependPath(Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;)V

    .line 710
    throw v3

    .line 708
    .end local v4    # "name":Ljava/lang/String;
    :cond_5
    aget-object v7, v6, v1

    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->getName()Ljava/lang/String;

    move-result-object v4

    goto :goto_4
.end method

.method protected serializeFieldsFiltered(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 9
    .param p1, "bean"    # Ljava/lang/Object;
    .param p2, "gen"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "provider"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 727
    iget-object v8, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_filteredProps:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    if-eqz v8, :cond_1

    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getActiveView()Ljava/lang/Class;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 728
    iget-object v7, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_filteredProps:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .line 732
    .local v7, "props":[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    :goto_0
    iget-object v8, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_propertyFilterId:Ljava/lang/Object;

    invoke-virtual {p0, p3, v8, p1}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->findPropertyFilter(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/Object;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/ser/PropertyFilter;

    move-result-object v1

    .line 734
    .local v1, "filter":Lcom/fasterxml/jackson/databind/ser/PropertyFilter;
    if-nez v1, :cond_2

    .line 735
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->serializeFields(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    .line 760
    :cond_0
    :goto_1
    return-void

    .line 730
    .end local v1    # "filter":Lcom/fasterxml/jackson/databind/ser/PropertyFilter;
    .end local v7    # "props":[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    :cond_1
    iget-object v7, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_props:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .restart local v7    # "props":[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    goto :goto_0

    .line 738
    .restart local v1    # "filter":Lcom/fasterxml/jackson/databind/ser/PropertyFilter;
    :cond_2
    const/4 v2, 0x0

    .line 740
    .local v2, "i":I
    :try_start_0
    array-length v3, v7

    .local v3, "len":I
    :goto_2
    if-ge v2, v3, :cond_4

    .line 741
    aget-object v6, v7, v2

    .line 742
    .local v6, "prop":Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    if-eqz v6, :cond_3

    .line 743
    invoke-interface {v1, p1, p2, p3, v6}, Lcom/fasterxml/jackson/databind/ser/PropertyFilter;->serializeAsField(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/ser/PropertyWriter;)V

    .line 740
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 746
    .end local v6    # "prop":Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    :cond_4
    iget-object v8, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_anyGetterWriter:Lcom/fasterxml/jackson/databind/ser/AnyGetterWriter;

    if-eqz v8, :cond_0

    .line 747
    iget-object v8, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_anyGetterWriter:Lcom/fasterxml/jackson/databind/ser/AnyGetterWriter;

    invoke-virtual {v8, p1, p2, p3, v1}, Lcom/fasterxml/jackson/databind/ser/AnyGetterWriter;->getAndFilter(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/ser/PropertyFilter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 749
    .end local v3    # "len":I
    :catch_0
    move-exception v0

    .line 750
    .local v0, "e":Ljava/lang/Exception;
    array-length v8, v7

    if-ne v2, v8, :cond_5

    const-string v5, "[anySetter]"

    .line 751
    .local v5, "name":Ljava/lang/String;
    :goto_3
    invoke-virtual {p0, p3, v0, p1, v5}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->wrapAndThrow(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 750
    .end local v5    # "name":Ljava/lang/String;
    :cond_5
    aget-object v8, v7, v2

    invoke-virtual {v8}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->getName()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 752
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 755
    .local v0, "e":Ljava/lang/StackOverflowError;
    new-instance v4, Lcom/fasterxml/jackson/databind/JsonMappingException;

    const-string v8, "Infinite recursion (StackOverflowError)"

    invoke-direct {v4, p2, v8, v0}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/io/Closeable;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 756
    .local v4, "mapE":Lcom/fasterxml/jackson/databind/JsonMappingException;
    array-length v8, v7

    if-ne v2, v8, :cond_6

    const-string v5, "[anySetter]"

    .line 757
    .restart local v5    # "name":Ljava/lang/String;
    :goto_4
    new-instance v8, Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;

    invoke-direct {v8, p1, v5}, Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Lcom/fasterxml/jackson/databind/JsonMappingException;->prependPath(Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;)V

    .line 758
    throw v4

    .line 756
    .end local v5    # "name":Ljava/lang/String;
    :cond_6
    aget-object v8, v7, v2

    invoke-virtual {v8}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->getName()Ljava/lang/String;

    move-result-object v5

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
    .line 565
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_objectIdWriter:Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;

    if-eqz v1, :cond_0

    .line 566
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->setCurrentValue(Ljava/lang/Object;)V

    .line 567
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_serializeWithObjectId(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V

    .line 588
    :goto_0
    return-void

    .line 571
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_typeId:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 572
    .local v0, "typeStr":Ljava/lang/String;
    :goto_1
    if-nez v0, :cond_2

    .line 573
    invoke-virtual {p4, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;->writeTypePrefixForObject(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 577
    :goto_2
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->setCurrentValue(Ljava/lang/Object;)V

    .line 578
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_propertyFilterId:Ljava/lang/Object;

    if-eqz v1, :cond_3

    .line 579
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->serializeFieldsFiltered(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    .line 583
    :goto_3
    if-nez v0, :cond_4

    .line 584
    invoke-virtual {p4, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;->writeTypeSuffixForObject(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    goto :goto_0

    .line 571
    .end local v0    # "typeStr":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_customTypeId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 575
    .restart local v0    # "typeStr":Ljava/lang/String;
    :cond_2
    invoke-virtual {p4, p1, p2, v0}, Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;->writeCustomTypePrefixForObject(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/String;)V

    goto :goto_2

    .line 581
    :cond_3
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->serializeFields(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    goto :goto_3

    .line 586
    :cond_4
    invoke-virtual {p4, p1, p2, v0}, Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;->writeCustomTypeSuffixForObject(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public usesObjectId()Z
    .locals 1

    .prologue
    .line 551
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_objectIdWriter:Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic withFilterId(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->withFilterId(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;

    move-result-object v0

    return-object v0
.end method

.method public abstract withFilterId(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;
.end method

.method protected abstract withIgnorals(Ljava/util/Set;)Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;"
        }
    .end annotation
.end method

.method protected withIgnorals([Ljava/lang/String;)Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;
    .locals 1
    .param p1, "toIgnore"    # [Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 223
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->arrayToSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->withIgnorals(Ljava/util/Set;)Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;

    move-result-object v0

    return-object v0
.end method

.method public abstract withObjectIdWriter(Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;)Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;
.end method
