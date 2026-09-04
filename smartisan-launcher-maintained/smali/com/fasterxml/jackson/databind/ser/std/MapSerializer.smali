.class public Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;
.super Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;
.source "MapSerializer.java"

.implements Lcom/fasterxml/jackson/databind/ser/ContextualSerializer;


.annotation runtime Lcom/fasterxml/jackson/databind/annotation/JacksonStdImpl;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/ser/ContainerSerializer",
        "<",
        "Ljava/util/Map",
        "<**>;>;",
        "Lcom/fasterxml/jackson/databind/ser/ContextualSerializer;"
    }
.end annotation


.field protected static final UNSPECIFIED_TYPE:Lcom/fasterxml/jackson/databind/JavaType;

.field private static final serialVersionUID:J = 0x1L


.field protected _dynamicValueSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

.field protected final _filterId:Ljava/lang/Object;

.field protected final _ignoredEntries:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected _keySerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected final _keyType:Lcom/fasterxml/jackson/databind/JavaType;

.field protected final _property:Lcom/fasterxml/jackson/databind/BeanProperty;

.field protected final _sortKeys:Z

.field protected final _suppressableValue:Ljava/lang/Object;

.field protected _valueSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected final _valueType:Lcom/fasterxml/jackson/databind/JavaType;

.field protected final _valueTypeIsStatic:Z

.field protected final _valueTypeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    invoke-static {}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->unknownType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->UNSPECIFIED_TYPE:Lcom/fasterxml/jackson/databind/JavaType;

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;Ljava/util/Set;)V
    .locals 2
    .param p1, "src"    # Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;
    .param p2, "property"    # Lcom/fasterxml/jackson/databind/BeanProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;",
            "Lcom/fasterxml/jackson/databind/BeanProperty;",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<*>;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 157
    .local p3, "keySerializer":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<*>;"
    .local p4, "valueSerializer":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<*>;"
    .local p5, "ignoredEntries":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-class v0, Ljava/util/Map;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;-><init>(Ljava/lang/Class;Z)V

    .line 158
    if-eqz p5, :cond_0

    invoke-interface {p5}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 p5, 0x0

    .end local p5    # "ignoredEntries":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    iput-object p5, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_ignoredEntries:Ljava/util/Set;

    .line 160
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_keyType:Lcom/fasterxml/jackson/databind/JavaType;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_keyType:Lcom/fasterxml/jackson/databind/JavaType;

    .line 161
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    .line 162
    iget-boolean v0, p1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueTypeIsStatic:Z

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueTypeIsStatic:Z

    .line 163
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueTypeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueTypeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    .line 164
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_keySerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 165
    iput-object p4, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 166
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_dynamicValueSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_dynamicValueSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    .line 167
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;

    .line 168
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_filterId:Ljava/lang/Object;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_filterId:Ljava/lang/Object;

    .line 169
    iget-boolean v0, p1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_sortKeys:Z

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_sortKeys:Z

    .line 170
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_suppressableValue:Ljava/lang/Object;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_suppressableValue:Ljava/lang/Object;

    .line 171
    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V
    .locals 1
    .param p1, "src"    # Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;
    .param p2, "vts"    # Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 175
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_suppressableValue:Ljava/lang/Object;

    invoke-direct {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;-><init>(Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Ljava/lang/Object;)V

    .line 176
    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Ljava/lang/Object;)V
    .locals 2
    .param p1, "src"    # Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;
    .param p2, "vts"    # Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
    .param p3, "suppressableValue"    # Ljava/lang/Object;

    .prologue
    .line 184
    const-class v0, Ljava/util/Map;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;-><init>(Ljava/lang/Class;Z)V

    .line 185
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_ignoredEntries:Ljava/util/Set;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_ignoredEntries:Ljava/util/Set;

    .line 186
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_keyType:Lcom/fasterxml/jackson/databind/JavaType;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_keyType:Lcom/fasterxml/jackson/databind/JavaType;

    .line 187
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    .line 188
    iget-boolean v0, p1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueTypeIsStatic:Z

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueTypeIsStatic:Z

    .line 189
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueTypeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    .line 190
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_keySerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_keySerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 191
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 192
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_dynamicValueSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_dynamicValueSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    .line 193
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;

    .line 194
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_filterId:Ljava/lang/Object;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_filterId:Ljava/lang/Object;

    .line 195
    iget-boolean v0, p1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_sortKeys:Z

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_sortKeys:Z

    .line 197
    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_ABSENT:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    if-ne p3, v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->isReferenceType()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p3, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_EMPTY:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .line 201
    .end local p3    # "suppressableValue":Ljava/lang/Object;
    :cond_0
    :goto_0
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_suppressableValue:Ljava/lang/Object;

    .line 202
    return-void

    .line 198
    .restart local p3    # "suppressableValue":Ljava/lang/Object;
    :cond_1
    sget-object p3, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_NULL:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    goto :goto_0
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;Ljava/lang/Object;Z)V
    .locals 2
    .param p1, "src"    # Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;
    .param p2, "filterId"    # Ljava/lang/Object;
    .param p3, "sortKeys"    # Z

    .prologue
    .line 206
    const-class v0, Ljava/util/Map;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;-><init>(Ljava/lang/Class;Z)V

    .line 207
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_ignoredEntries:Ljava/util/Set;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_ignoredEntries:Ljava/util/Set;

    .line 208
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_keyType:Lcom/fasterxml/jackson/databind/JavaType;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_keyType:Lcom/fasterxml/jackson/databind/JavaType;

    .line 209
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    .line 210
    iget-boolean v0, p1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueTypeIsStatic:Z

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueTypeIsStatic:Z

    .line 211
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueTypeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueTypeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    .line 212
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_keySerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_keySerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 213
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 214
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_dynamicValueSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_dynamicValueSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    .line 215
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;

    .line 216
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_filterId:Ljava/lang/Object;

    .line 217
    iput-boolean p3, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_sortKeys:Z

    .line 218
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_suppressableValue:Ljava/lang/Object;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_suppressableValue:Ljava/lang/Object;

    .line 219
    return-void
.end method

.method protected constructor <init>(Ljava/util/Set;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;)V
    .locals 3
    .param p2, "keyType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p3, "valueType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p4, "valueTypeIsStatic"    # Z
    .param p5, "vts"    # Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Z",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p1, "ignoredEntries":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p6, "keySerializer":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<*>;"
    .local p7, "valueSerializer":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<*>;"
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 127
    const-class v1, Ljava/util/Map;

    invoke-direct {p0, v1, v2}, Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;-><init>(Ljava/lang/Class;Z)V

    .line 128
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move-object p1, v0

    .end local p1    # "ignoredEntries":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_ignoredEntries:Ljava/util/Set;

    .line 130
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_keyType:Lcom/fasterxml/jackson/databind/JavaType;

    .line 131
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    .line 132
    iput-boolean p4, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueTypeIsStatic:Z

    .line 133
    iput-object p5, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueTypeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    .line 134
    iput-object p6, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_keySerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 135
    iput-object p7, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 136
    invoke-static {}, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;->emptyForProperties()Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_dynamicValueSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    .line 137
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;

    .line 138
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_filterId:Ljava/lang/Object;

    .line 139
    iput-boolean v2, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_sortKeys:Z

    .line 140
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_suppressableValue:Ljava/lang/Object;

    .line 141
    return-void
.end method

.method public static construct(Ljava/util/Set;Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;
    .locals 8
    .param p1, "mapType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p2, "staticValueType"    # Z
    .param p3, "vts"    # Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
    .param p6, "filterId"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Z",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;"
        }
    .end annotation

    .prologue
    .line 295
    .local p0, "ignoredEntries":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p4, "keySerializer":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    .local p5, "valueSerializer":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    if-nez p1, :cond_2

    .line 296
    sget-object v3, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->UNSPECIFIED_TYPE:Lcom/fasterxml/jackson/databind/JavaType;

    .local v3, "valueType":Lcom/fasterxml/jackson/databind/JavaType;
    move-object v2, v3

    .line 302
    .local v2, "keyType":Lcom/fasterxml/jackson/databind/JavaType;
    :goto_0
    if-nez p2, :cond_4

    .line 303
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/JavaType;->isFinal()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 p2, 0x1

    .line 310
    :cond_0
    :goto_1
    new-instance v0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;

    move-object v1, p0

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;-><init>(Ljava/util/Set;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;)V

    .line 312
    .local v0, "ser":Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;
    if-eqz p6, :cond_1

    .line 313
    invoke-virtual {v0, p6}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->withFilterId(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;

    move-result-object v0

    .line 315
    :cond_1
    return-object v0

    .line 298
    .end local v0    # "ser":Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;
    .end local v2    # "keyType":Lcom/fasterxml/jackson/databind/JavaType;
    .end local v3    # "valueType":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getKeyType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    .line 299
    .restart local v2    # "keyType":Lcom/fasterxml/jackson/databind/JavaType;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v3

    .restart local v3    # "valueType":Lcom/fasterxml/jackson/databind/JavaType;
    goto :goto_0

    .line 303
    :cond_3
    const/4 p2, 0x0

    goto :goto_1

    .line 306
    :cond_4
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v1

    const-class v4, Ljava/lang/Object;

    if-ne v1, v4, :cond_0

    .line 307
    const/4 p2, 0x0

    goto :goto_1
.end method

.method public static construct([Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;
    .locals 7
    .param p0, "ignoredList"    # [Ljava/lang/String;
    .param p1, "mapType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p2, "staticValueType"    # Z
    .param p3, "vts"    # Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
    .param p6, "filterId"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Z",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 279
    .local p4, "keySerializer":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    .local p5, "valueSerializer":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    if-eqz p0, :cond_0

    array-length v1, p0

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .local v0, "ignoredEntries":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_0
    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 281
    invoke-static/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->construct(Ljava/util/Set;Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;

    move-result-object v1

    return-object v1

    .line 279
    .end local v0    # "ignoredEntries":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    invoke-static {p0}, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->arrayToSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    goto :goto_0
.end method


.method protected _ensureOverride()V
    .locals 3

    .prologue
    .line 147
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;

    if-eq v0, v1, :cond_0

    .line 148
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing override in class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_0
    return-void
.end method

.method protected final _findAndAddDynamic(Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/SerializerProvider;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 2
    .param p1, "map"    # Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;
    .param p2, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p3, "provider"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/SerializerProvider;",
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
    .line 939
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;

    invoke-virtual {p1, p2, p3, v1}, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;->findAndAddSecondarySerializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$SerializerAndMapResult;

    move-result-object v0

    .line 940
    .local v0, "result":Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$SerializerAndMapResult;
    iget-object v1, v0, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$SerializerAndMapResult;->map:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    if-eq p1, v1, :cond_0

    .line 941
    iget-object v1, v0, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$SerializerAndMapResult;->map:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    iput-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_dynamicValueSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    .line 943
    :cond_0
    iget-object v1, v0, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$SerializerAndMapResult;->serializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    return-object v1
.end method

.method protected final _findAndAddDynamic(Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/SerializerProvider;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 2
    .param p1, "map"    # Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;
    .param p3, "provider"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/SerializerProvider;",
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
    .line 928
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;

    invoke-virtual {p1, p2, p3, v1}, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;->findAndAddSecondarySerializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$SerializerAndMapResult;

    move-result-object v0

    .line 930
    .local v0, "result":Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$SerializerAndMapResult;
    iget-object v1, v0, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$SerializerAndMapResult;->map:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    if-eq p1, v1, :cond_0

    .line 931
    iget-object v1, v0, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$SerializerAndMapResult;->map:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    iput-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_dynamicValueSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    .line 933
    :cond_0
    iget-object v1, v0, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$SerializerAndMapResult;->serializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    return-object v1
.end method

.method protected _orderEntries(Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;)",
            "Ljava/util/Map",
            "<**>;"
        }
    .end annotation

    .prologue
    .line 949
    .local p1, "input":Ljava/util/Map;, "Ljava/util/Map<**>;"
    instance-of v0, p1, Ljava/util/SortedMap;

    if-eqz v0, :cond_0

    .line 952
    .end local p1    # "input":Ljava/util/Map;, "Ljava/util/Map<**>;"
    :goto_0
    return-object p1

    .restart local p1    # "input":Ljava/util/Map;, "Ljava/util/Map<**>;"
    :cond_0
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, p1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    move-object p1, v0

    goto :goto_0
.end method

.method public bridge synthetic _withValueTypeSerializer(Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;
    .locals 1
    .param p1, "x0"    # Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_withValueTypeSerializer(Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;

    move-result-object v0

    return-object v0
.end method

.method public _withValueTypeSerializer(Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;
    .locals 2
    .param p1, "vts"    # Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    .prologue
    .line 223
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueTypeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    if-ne v0, p1, :cond_0

    .line 227
    .end local p0    # "this":Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;
    :goto_0
    return-object p0

    .line 226
    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_ensureOverride()V

    .line 227
    new-instance v0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;-><init>(Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Ljava/lang/Object;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public acceptJsonFormatVisitor(Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;Lcom/fasterxml/jackson/databind/JavaType;)V
    .locals 5
    .param p1, "visitor"    # Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;
    .param p2, "typeHint"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 907
    if-nez p1, :cond_2

    const/4 v0, 0x0

    .line 908
    .local v0, "v2":Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonMapFormatVisitor;
    :goto_0
    if-eqz v0, :cond_1

    .line 909
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_keySerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_keyType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-interface {v0, v2, v3}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonMapFormatVisitor;->keyFormat(Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitable;Lcom/fasterxml/jackson/databind/JavaType;)V

    .line 910
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 911
    .local v1, "valueSer":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<*>;"
    if-nez v1, :cond_0

    .line 912
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_dynamicValueSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-interface {p1}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;->getProvider()Lcom/fasterxml/jackson/databind/SerializerProvider;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_findAndAddDynamic(Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/SerializerProvider;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v1

    .line 915
    :cond_0
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-interface {v0, v1, v2}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonMapFormatVisitor;->valueFormat(Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitable;Lcom/fasterxml/jackson/databind/JavaType;)V

    .line 917
    .end local v1    # "valueSer":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<*>;"
    :cond_1
    return-void

    .line 907
    .end local v0    # "v2":Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonMapFormatVisitor;
    :cond_2
    invoke-interface {p1, p2}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;->expectMapFormat(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonMapFormatVisitor;

    move-result-object v0

    goto :goto_0
.end method

.method public createContextual(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 25
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
    .line 329
    const/4 v6, 0x0

    .line 330
    .local v6, "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<*>;"
    const/4 v5, 0x0

    .line 331
    .local v5, "keySer":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<*>;"
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v17

    .line 332
    .local v17, "intr":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    if-nez p2, :cond_6

    const/16 v21, 0x0

    .line 333
    .local v21, "propertyAcc":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_suppressableValue:Ljava/lang/Object;

    move-object/from16 v24, v0

    .line 336
    .local v24, "suppressableValue":Ljava/lang/Object;
    if-eqz v21, :cond_1

    if-eqz v17, :cond_1

    .line 337
    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findKeySerializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;

    move-result-object v22

    .line 338
    .local v22, "serDef":Ljava/lang/Object;
    if-eqz v22, :cond_0

    .line 339
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->serializerInstance(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v5

    .line 341
    :cond_0
    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findContentSerializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;

    move-result-object v22

    .line 342
    if-eqz v22, :cond_1

    .line 343
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->serializerInstance(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v6

    .line 347
    .end local v22    # "serDef":Ljava/lang/Object;
    :cond_1
    const-class v3, Ljava/util/Map;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->findIncludeOverrides(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/BeanProperty;Ljava/lang/Class;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    move-result-object v16

    .line 348
    .local v16, "inclV":Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    invoke-virtual/range {v16 .. v16}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->getContentInclusion()Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    move-result-object v15

    .line 349
    .local v15, "incl":Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
    if-eqz v15, :cond_2

    sget-object v3, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->USE_DEFAULTS:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    if-eq v15, v3, :cond_2

    .line 350
    move-object/from16 v24, v15

    .line 352
    .end local v24    # "suppressableValue":Ljava/lang/Object;
    :cond_2
    if-nez v6, :cond_3

    .line 353
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 356
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v6}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->findConvertingContentSerializer(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v6

    .line 357
    if-nez v6, :cond_7

    .line 361
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueTypeIsStatic:Z

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/JavaType;->isJavaLangObject()Z

    move-result v3

    if-nez v3, :cond_4

    .line 362
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v3, v1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->findValueSerializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v6

    .line 367
    :cond_4
    :goto_1
    if-nez v5, :cond_5

    .line 368
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_keySerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 370
    :cond_5
    if-nez v5, :cond_8

    .line 371
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_keyType:Lcom/fasterxml/jackson/databind/JavaType;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v3, v1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->findKeySerializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v5

    .line 375
    :goto_2
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_ignoredEntries:Ljava/util/Set;

    .line 376
    .local v7, "ignored":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 377
    .local v8, "sortKeys":Z
    if-eqz v17, :cond_b

    if-eqz v21, :cond_b

    .line 378
    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findPropertyIgnorals(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    move-result-object v14

    .line 379
    .local v14, "ignorals":Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;
    if-eqz v14, :cond_a

    .line 380
    invoke-virtual {v14}, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->findIgnoredForSerialization()Ljava/util/Set;

    move-result-object v20

    .line 381
    .local v20, "newIgnored":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v20, :cond_a

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_a

    .line 382
    if-nez v7, :cond_9

    new-instance v7, Ljava/util/HashSet;

    .end local v7    # "ignored":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 383
    .restart local v7    # "ignored":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_3
    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .line 384
    .local v23, "str":Ljava/lang/String;
    move-object/from16 v0, v23

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 332
    .end local v7    # "ignored":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v8    # "sortKeys":Z
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v14    # "ignorals":Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;
    .end local v15    # "incl":Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
    .end local v16    # "inclV":Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    .end local v20    # "newIgnored":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v21    # "propertyAcc":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .end local v23    # "str":Ljava/lang/String;
    :cond_6
    invoke-interface/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/BeanProperty;->getMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v21

    goto/16 :goto_0

    .line 365
    .restart local v15    # "incl":Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
    .restart local v16    # "inclV":Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    .restart local v21    # "propertyAcc":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    :cond_7
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v6, v1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->handleSecondaryContextualization(Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v6

    goto :goto_1

    .line 373
    :cond_8
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v5, v1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->handleSecondaryContextualization(Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v5

    goto :goto_2

    .line 382
    .restart local v7    # "ignored":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v8    # "sortKeys":Z
    .restart local v14    # "ignorals":Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;
    .restart local v20    # "newIgnored":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_9
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v7, v3

    goto :goto_3

    .line 388
    .end local v20    # "newIgnored":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_a
    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findSerializationSortAlphabetically(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Boolean;

    move-result-object v10

    .line 389
    .local v10, "b":Ljava/lang/Boolean;
    if-eqz v10, :cond_f

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_f

    const/4 v8, 0x1

    .line 391
    .end local v10    # "b":Ljava/lang/Boolean;
    .end local v14    # "ignorals":Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;
    :cond_b
    :goto_5
    const-class v3, Ljava/util/Map;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->findFormatOverrides(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/BeanProperty;Ljava/lang/Class;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    move-result-object v12

    .line 392
    .local v12, "format":Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    if-eqz v12, :cond_c

    .line 393
    sget-object v3, Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;->WRITE_SORTED_MAP_ENTRIES:Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;

    invoke-virtual {v12, v3}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->getFeature(Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;)Ljava/lang/Boolean;

    move-result-object v9

    .line 394
    .local v9, "B":Ljava/lang/Boolean;
    if-eqz v9, :cond_c

    .line 395
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .end local v9    # "B":Ljava/lang/Boolean;
    :cond_c
    move-object/from16 v3, p0

    move-object/from16 v4, p2

    .line 398
    invoke-virtual/range {v3 .. v8}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->withResolved(Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;Ljava/util/Set;Z)Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;

    move-result-object v19

    .line 399
    .local v19, "mser":Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_suppressableValue:Ljava/lang/Object;

    move-object/from16 v0, v24

    if-eq v0, v3, :cond_d

    .line 400
    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->withContentInclusion(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;

    move-result-object v19

    .line 404
    :cond_d
    if-eqz p2, :cond_e

    .line 405
    invoke-interface/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/BeanProperty;->getMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v18

    .line 406
    .local v18, "m":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    if-eqz v18, :cond_e

    .line 407
    invoke-virtual/range {v17 .. v18}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findFilterId(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;

    move-result-object v11

    .line 408
    .local v11, "filterId":Ljava/lang/Object;
    if-eqz v11, :cond_e

    .line 409
    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->withFilterId(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;

    move-result-object v19

    .line 413
    .end local v11    # "filterId":Ljava/lang/Object;
    .end local v18    # "m":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    :cond_e
    return-object v19

    .line 389
    .end local v12    # "format":Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    .end local v19    # "mser":Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;
    .restart local v10    # "b":Ljava/lang/Boolean;
    .restart local v14    # "ignorals":Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;
    :cond_f
    const/4 v8, 0x0

    goto :goto_5
.end method

.method public getContentSerializer()Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 429
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    return-object v0
.end method

.method public getContentType()Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    return-object v0
.end method

.method public getKeySerializer()Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 502
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_keySerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    return-object v0
.end method

.method public getSchema(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 2
    .param p1, "provider"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .param p2, "typeHint"    # Ljava/lang/reflect/Type;

    .prologue
    .line 900
    const-string v0, "object"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->createSchemaNode(Ljava/lang/String;Z)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic hasSingleElement(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 30
    check-cast p1, Ljava/util/Map;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->hasSingleElement(Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method public hasSingleElement(Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;)Z"
        }
    .end annotation

    .prologue
    .local p1, "value":Ljava/util/Map;, "Ljava/util/Map<**>;"
    const/4 v0, 0x1

    .line 482
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic isEmpty(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 30
    check-cast p2, Ljava/util/Map;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->isEmpty(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method public isEmpty(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/util/Map;)Z
    .locals 10
    .param p1, "prov"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializerProvider;",
            "Ljava/util/Map",
            "<**>;)Z"
        }
    .end annotation

    .prologue
    .local p2, "value":Ljava/util/Map;, "Ljava/util/Map<**>;"
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 435
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2

    :cond_0
    move v7, v8

    .line 477
    :cond_1
    :goto_0
    return v7

    .line 440
    :cond_2
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_suppressableValue:Ljava/lang/Object;

    .line 442
    .local v5, "supp":Ljava/lang/Object;
    if-eqz v5, :cond_1

    sget-object v9, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->ALWAYS:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    if-eq v5, v9, :cond_1

    .line 445
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 446
    .local v6, "valueSer":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    if-eqz v6, :cond_5

    .line 447
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 448
    .local v2, "elemValue":Ljava/lang/Object;
    if-eqz v2, :cond_3

    invoke-virtual {v6, p1, v2}, Lcom/fasterxml/jackson/databind/JsonSerializer;->isEmpty(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    goto :goto_0

    .end local v2    # "elemValue":Ljava/lang/Object;
    :cond_4
    move v7, v8

    .line 452
    goto :goto_0

    .line 455
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_5
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_dynamicValueSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    .line 456
    .local v4, "serializers":Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 457
    .restart local v2    # "elemValue":Ljava/lang/Object;
    if-eqz v2, :cond_6

    .line 460
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 463
    .local v0, "cc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v4, v0}, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;->serializerFor(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v6

    .line 464
    if-nez v6, :cond_7

    .line 466
    :try_start_0
    invoke-virtual {p0, v4, v0, p1}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_findAndAddDynamic(Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/SerializerProvider;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    :try_end_0
    .catch Lcom/fasterxml/jackson/databind/JsonMappingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 471
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_dynamicValueSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    .line 473
    :cond_7
    invoke-virtual {v6, p1, v2}, Lcom/fasterxml/jackson/databind/JsonSerializer;->isEmpty(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    goto :goto_0

    .line 467
    :catch_0
    move-exception v1

    .line 469
    .local v1, "e":Lcom/fasterxml/jackson/databind/JsonMappingException;
    goto :goto_0

    .end local v0    # "cc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "e":Lcom/fasterxml/jackson/databind/JsonMappingException;
    .end local v2    # "elemValue":Ljava/lang/Object;
    :cond_8
    move v7, v8

    .line 477
    goto :goto_0
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "x2"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30
    check-cast p1, Ljava/util/Map;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->serialize(Ljava/util/Map;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    return-void
.end method

.method public serialize(Ljava/util/Map;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 6
    .param p2, "gen"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "provider"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;",
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

    .prologue
    .line 515
    .local p1, "value":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject(Ljava/lang/Object;)V

    .line 516
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 517
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_suppressableValue:Ljava/lang/Object;

    .line 518
    .local v5, "suppressableValue":Ljava/lang/Object;
    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->ALWAYS:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    if-ne v5, v0, :cond_4

    .line 519
    const/4 v5, 0x0

    .line 525
    .end local v5    # "suppressableValue":Ljava/lang/Object;
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_sortKeys:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/fasterxml/jackson/databind/SerializationFeature;->ORDER_MAP_ENTRIES_BY_KEYS:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {p3, v0}, Lcom/fasterxml/jackson/databind/SerializerProvider;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 526
    :cond_1
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_orderEntries(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    .line 528
    :cond_2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_filterId:Ljava/lang/Object;

    if-eqz v0, :cond_5

    .line 529
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_filterId:Ljava/lang/Object;

    invoke-virtual {p0, p3, v0, p1}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->findPropertyFilter(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/Object;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/ser/PropertyFilter;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->serializeFilteredFields(Ljava/util/Map;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/ser/PropertyFilter;Ljava/lang/Object;)V

    .line 539
    :cond_3
    :goto_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 540
    return-void

    .line 520
    .restart local v5    # "suppressableValue":Ljava/lang/Object;
    :cond_4
    if-nez v5, :cond_0

    .line 521
    sget-object v0, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_NULL_MAP_VALUES:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {p3, v0}, Lcom/fasterxml/jackson/databind/SerializerProvider;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 522
    sget-object v5, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_NULL:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .local v5, "suppressableValue":Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
    goto :goto_0

    .line 531
    .end local v5    # "suppressableValue":Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
    :cond_5
    if-eqz v5, :cond_6

    .line 532
    invoke-virtual {p0, p1, p2, p3, v5}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->serializeOptionalFields(Ljava/util/Map;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/Object;)V

    goto :goto_1

    .line 533
    :cond_6
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    if-eqz v0, :cond_7

    .line 534
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->serializeFieldsUsing(Ljava/util/Map;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/JsonSerializer;)V

    goto :goto_1

    .line 536
    :cond_7
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->serializeFields(Ljava/util/Map;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    goto :goto_1
.end method

.method public serializeFields(Ljava/util/Map;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 17
    .param p2, "gen"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "provider"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;",
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

    .prologue
    .line 591
    .local p1, "value":Ljava/util/Map;, "Ljava/util/Map<**>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueTypeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    if-eqz v15, :cond_1

    .line 592
    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v15}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->serializeTypedFields(Ljava/util/Map;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/Object;)V

    .line 640
    :cond_0
    return-void

    .line 595
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_keySerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 596
    .local v11, "keySerializer":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_ignoredEntries:Ljava/util/Set;

    .line 598
    .local v8, "ignored":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_dynamicValueSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    .line 600
    .local v13, "serializers":Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 601
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    .line 603
    .local v14, "valueElem":Ljava/lang/Object;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    .line 605
    .local v10, "keyElem":Ljava/lang/Object;
    if-nez v10, :cond_3

    .line 606
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_keyType:Lcom/fasterxml/jackson/databind/JavaType;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;

    move-object/from16 v16, v0

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->findNullKeySerializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v15

    const/16 v16, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v15, v0, v1, v2}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    .line 614
    :goto_1
    if-nez v14, :cond_5

    .line 615
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->defaultSerializeNull(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    goto :goto_0

    .line 609
    :cond_3
    if-eqz v8, :cond_4

    invoke-interface {v8, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_2

    .line 610
    :cond_4
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v11, v10, v0, v1}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    goto :goto_1

    .line 618
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 619
    .local v12, "serializer":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    if-nez v12, :cond_6

    .line 620
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 621
    .local v4, "cc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v13, v4}, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;->serializerFor(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v12

    .line 622
    if-nez v12, :cond_6

    .line 623
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v15}, Lcom/fasterxml/jackson/databind/JavaType;->hasGenericTypes()Z

    move-result v15

    if-eqz v15, :cond_7

    .line 624
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    move-object/from16 v0, p3

    invoke-virtual {v0, v15, v4}, Lcom/fasterxml/jackson/databind/SerializerProvider;->constructSpecializedType(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v15

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v13, v15, v1}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_findAndAddDynamic(Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/SerializerProvider;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v12

    .line 629
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_dynamicValueSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    .line 633
    .end local v4    # "cc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_6
    :try_start_0
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v12, v14, v0, v1}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 634
    :catch_0
    move-exception v5

    .line 636
    .local v5, "e":Ljava/lang/Exception;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 637
    .local v9, "keyDesc":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v5, v2, v9}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->wrapAndThrow(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 627
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v9    # "keyDesc":Ljava/lang/String;
    .restart local v4    # "cc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v13, v4, v1}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_findAndAddDynamic(Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/SerializerProvider;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v12

    goto :goto_2
.end method

.method public serializeFieldsUsing(Ljava/util/Map;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/JsonSerializer;)V
    .locals 11
    .param p2, "gen"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "provider"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;",
            "Lcom/fasterxml/jackson/core/JsonGenerator;",
            "Lcom/fasterxml/jackson/databind/SerializerProvider;",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 717
    .local p1, "value":Ljava/util/Map;, "Ljava/util/Map<**>;"
    .local p4, "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_keySerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 718
    .local v6, "keySerializer":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_ignoredEntries:Ljava/util/Set;

    .line 719
    .local v3, "ignored":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueTypeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    .line 721
    .local v7, "typeSer":Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 722
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    .line 723
    .local v5, "keyElem":Ljava/lang/Object;
    if-eqz v3, :cond_1

    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 725
    :cond_1
    if-nez v5, :cond_2

    .line 726
    iget-object v9, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_keyType:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v10, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;

    invoke-virtual {p3, v9, v10}, Lcom/fasterxml/jackson/databind/SerializerProvider;->findNullKeySerializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10, p2, p3}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    .line 730
    :goto_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    .line 731
    .local v8, "valueElem":Ljava/lang/Object;
    if-nez v8, :cond_3

    .line 732
    invoke-virtual {p3, p2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->defaultSerializeNull(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    goto :goto_0

    .line 728
    .end local v8    # "valueElem":Ljava/lang/Object;
    :cond_2
    invoke-virtual {v6, v5, p2, p3}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    goto :goto_1

    .line 735
    .restart local v8    # "valueElem":Ljava/lang/Object;
    :cond_3
    if-nez v7, :cond_4

    .line 736
    :try_start_0
    invoke-virtual {p4, v8, p2, p3}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 740
    :catch_0
    move-exception v0

    .line 741
    .local v0, "e":Ljava/lang/Exception;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 742
    .local v4, "keyDesc":Ljava/lang/String;
    invoke-virtual {p0, p3, v0, p1, v4}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->wrapAndThrow(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 738
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "keyDesc":Ljava/lang/String;
    :cond_4
    :try_start_1
    invoke-virtual {p4, v8, p2, p3, v7}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serializeWithType(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 746
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v5    # "keyElem":Ljava/lang/Object;
    .end local v8    # "valueElem":Ljava/lang/Object;
    :cond_5
    return-void
.end method

.method public serializeFilteredFields(Ljava/util/Map;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/ser/PropertyFilter;)V
    .locals 6
    .param p2, "gen"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "provider"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .param p4, "filter"    # Lcom/fasterxml/jackson/databind/ser/PropertyFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;",
            "Lcom/fasterxml/jackson/core/JsonGenerator;",
            "Lcom/fasterxml/jackson/databind/SerializerProvider;",
            "Lcom/fasterxml/jackson/databind/ser/PropertyFilter;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 820
    .local p1, "value":Ljava/util/Map;, "Ljava/util/Map<**>;"
    sget-object v0, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_NULL_MAP_VALUES:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {p3, v0}, Lcom/fasterxml/jackson/databind/SerializerProvider;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v5, 0x0

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->serializeFilteredFields(Ljava/util/Map;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/ser/PropertyFilter;Ljava/lang/Object;)V

    .line 822
    return-void

    .line 820
    :cond_0
    sget-object v5, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_NULL:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    goto :goto_0
.end method

.method public serializeFilteredFields(Ljava/util/Map;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/ser/PropertyFilter;Ljava/lang/Object;)V
    .locals 17
    .param p2, "gen"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "provider"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .param p4, "filter"    # Lcom/fasterxml/jackson/databind/ser/PropertyFilter;
    .param p5, "suppressableValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;",
            "Lcom/fasterxml/jackson/core/JsonGenerator;",
            "Lcom/fasterxml/jackson/databind/SerializerProvider;",
            "Lcom/fasterxml/jackson/databind/ser/PropertyFilter;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 759
    .local p1, "value":Ljava/util/Map;, "Ljava/util/Map<**>;"
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_ignoredEntries:Ljava/util/Set;

    .line 761
    .local v7, "ignored":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_dynamicValueSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    .line 762
    .local v12, "serializers":Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;
    new-instance v11, Lcom/fasterxml/jackson/databind/ser/std/MapProperty;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueTypeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v11, v15, v0}, Lcom/fasterxml/jackson/databind/ser/std/MapProperty;-><init>(Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/BeanProperty;)V

    .line 764
    .local v11, "prop":Lcom/fasterxml/jackson/databind/ser/std/MapProperty;
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 766
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    .line 767
    .local v9, "keyElem":Ljava/lang/Object;
    if-eqz v7, :cond_1

    invoke-interface {v7, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 770
    :cond_1
    if-nez v9, :cond_3

    .line 771
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_keyType:Lcom/fasterxml/jackson/databind/JavaType;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;

    move-object/from16 v16, v0

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->findNullKeySerializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v10

    .line 776
    .local v10, "keySerializer":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    :goto_1
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    .line 780
    .local v13, "valueElem":Ljava/lang/Object;
    if-nez v13, :cond_4

    .line 781
    if-nez p5, :cond_0

    .line 784
    invoke-virtual/range {p3 .. p3}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getDefaultNullValueSerializer()Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v14

    .line 807
    .local v14, "valueSer":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    :cond_2
    invoke-virtual {v11, v9, v10, v14}, Lcom/fasterxml/jackson/databind/ser/std/MapProperty;->reset(Ljava/lang/Object;Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;)V

    .line 809
    :try_start_0
    move-object/from16 v0, p4

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-interface {v0, v13, v1, v2, v11}, Lcom/fasterxml/jackson/databind/ser/PropertyFilter;->serializeAsField(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/ser/PropertyWriter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 810
    :catch_0
    move-exception v4

    .line 811
    .local v4, "e":Ljava/lang/Exception;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 812
    .local v8, "keyDesc":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v4, v2, v8}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->wrapAndThrow(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 773
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v8    # "keyDesc":Ljava/lang/String;
    .end local v10    # "keySerializer":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    .end local v13    # "valueElem":Ljava/lang/Object;
    .end local v14    # "valueSer":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    :cond_3
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_keySerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    .restart local v10    # "keySerializer":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    goto :goto_1

    .line 786
    .restart local v13    # "valueElem":Ljava/lang/Object;
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 787
    .restart local v14    # "valueSer":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    if-nez v14, :cond_5

    .line 788
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 789
    .local v3, "cc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v12, v3}, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;->serializerFor(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v14

    .line 790
    if-nez v14, :cond_5

    .line 791
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v15}, Lcom/fasterxml/jackson/databind/JavaType;->hasGenericTypes()Z

    move-result v15

    if-eqz v15, :cond_6

    .line 792
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    move-object/from16 v0, p3

    invoke-virtual {v0, v15, v3}, Lcom/fasterxml/jackson/databind/SerializerProvider;->constructSpecializedType(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v15

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v12, v15, v1}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_findAndAddDynamic(Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/SerializerProvider;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v14

    .line 797
    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_dynamicValueSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    .line 801
    .end local v3    # "cc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_5
    sget-object v15, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_EMPTY:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    move-object/from16 v0, p5

    if-ne v0, v15, :cond_2

    move-object/from16 v0, p3

    invoke-virtual {v14, v0, v13}, Lcom/fasterxml/jackson/databind/JsonSerializer;->isEmpty(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    goto/16 :goto_0

    .line 795
    .restart local v3    # "cc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v12, v3, v1}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_findAndAddDynamic(Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/SerializerProvider;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v14

    goto :goto_2

    .line 815
    .end local v3    # "cc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v9    # "keyElem":Ljava/lang/Object;
    .end local v10    # "keySerializer":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    .end local v13    # "valueElem":Ljava/lang/Object;
    .end local v14    # "valueSer":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    :cond_7
    return-void
.end method

.method public serializeOptionalFields(Ljava/util/Map;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/Object;)V
    .locals 15
    .param p2, "gen"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "provider"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .param p4, "suppressableValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;",
            "Lcom/fasterxml/jackson/core/JsonGenerator;",
            "Lcom/fasterxml/jackson/databind/SerializerProvider;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 650
    .local p1, "value":Ljava/util/Map;, "Ljava/util/Map<**>;"
    iget-object v13, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueTypeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    if-eqz v13, :cond_1

    .line 651
    invoke-virtual/range {p0 .. p4}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->serializeTypedFields(Ljava/util/Map;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/Object;)V

    .line 706
    :cond_0
    return-void

    .line 654
    :cond_1
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_ignoredEntries:Ljava/util/Set;

    .line 655
    .local v6, "ignored":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v10, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_dynamicValueSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    .line 657
    .local v10, "serializers":Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 659
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    .line 661
    .local v8, "keyElem":Ljava/lang/Object;
    if-nez v8, :cond_4

    .line 662
    iget-object v13, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_keyType:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v14, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;

    move-object/from16 v0, p3

    invoke-virtual {v0, v13, v14}, Lcom/fasterxml/jackson/databind/SerializerProvider;->findNullKeySerializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v9

    .line 669
    .local v9, "keySerializer":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    :goto_1
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    .line 671
    .local v11, "valueElem":Ljava/lang/Object;
    if-nez v11, :cond_6

    .line 672
    if-nez p4, :cond_2

    .line 675
    invoke-virtual/range {p3 .. p3}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getDefaultNullValueSerializer()Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v12

    .line 699
    .local v12, "valueSer":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    :cond_3
    :try_start_0
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v9, v8, v0, v1}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    .line 700
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v12, v11, v0, v1}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 701
    :catch_0
    move-exception v3

    .line 702
    .local v3, "e":Ljava/lang/Exception;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 703
    .local v7, "keyDesc":Ljava/lang/String;
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-virtual {p0, v0, v3, v1, v7}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->wrapAndThrow(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 664
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v7    # "keyDesc":Ljava/lang/String;
    .end local v9    # "keySerializer":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    .end local v11    # "valueElem":Ljava/lang/Object;
    .end local v12    # "valueSer":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    :cond_4
    if-eqz v6, :cond_5

    invoke-interface {v6, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 665
    :cond_5
    iget-object v9, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_keySerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    .restart local v9    # "keySerializer":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    goto :goto_1

    .line 677
    .restart local v11    # "valueElem":Ljava/lang/Object;
    :cond_6
    iget-object v12, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 678
    .restart local v12    # "valueSer":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    if-nez v12, :cond_7

    .line 679
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 680
    .local v2, "cc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v10, v2}, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;->serializerFor(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v12

    .line 681
    if-nez v12, :cond_7

    .line 682
    iget-object v13, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v13}, Lcom/fasterxml/jackson/databind/JavaType;->hasGenericTypes()Z

    move-result v13

    if-eqz v13, :cond_8

    .line 683
    iget-object v13, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    move-object/from16 v0, p3

    invoke-virtual {v0, v13, v2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->constructSpecializedType(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-virtual {p0, v10, v13, v0}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_findAndAddDynamic(Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/SerializerProvider;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v12

    .line 688
    :goto_2
    iget-object v10, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_dynamicValueSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    .line 692
    .end local v2    # "cc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_7
    sget-object v13, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_EMPTY:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    move-object/from16 v0, p4

    if-ne v0, v13, :cond_3

    move-object/from16 v0, p3

    invoke-virtual {v12, v0, v11}, Lcom/fasterxml/jackson/databind/JsonSerializer;->isEmpty(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    goto/16 :goto_0

    .line 686
    .restart local v2    # "cc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_8
    move-object/from16 v0, p3

    invoke-virtual {p0, v10, v2, v0}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_findAndAddDynamic(Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/SerializerProvider;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v12

    goto :goto_2
.end method

.method protected serializeTypedFields(Ljava/util/Map;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 1
    .param p2, "gen"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "provider"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;",
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 885
    .local p1, "value":Ljava/util/Map;, "Ljava/util/Map<**>;"
    sget-object v0, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_NULL_MAP_VALUES:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {p3, v0}, Lcom/fasterxml/jackson/databind/SerializerProvider;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->serializeTypedFields(Ljava/util/Map;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/Object;)V

    .line 887
    return-void

    .line 885
    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_NULL:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    goto :goto_0
.end method

.method public serializeTypedFields(Ljava/util/Map;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/Object;)V
    .locals 15
    .param p2, "gen"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "provider"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .param p4, "suppressableValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;",
            "Lcom/fasterxml/jackson/core/JsonGenerator;",
            "Lcom/fasterxml/jackson/databind/SerializerProvider;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 831
    .local p1, "value":Ljava/util/Map;, "Ljava/util/Map<**>;"
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_ignoredEntries:Ljava/util/Set;

    .line 832
    .local v6, "ignored":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v10, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_dynamicValueSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    .line 834
    .local v10, "serializers":Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 835
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    .line 837
    .local v8, "keyElem":Ljava/lang/Object;
    if-nez v8, :cond_2

    .line 838
    iget-object v13, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_keyType:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v14, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;

    move-object/from16 v0, p3

    invoke-virtual {v0, v13, v14}, Lcom/fasterxml/jackson/databind/SerializerProvider;->findNullKeySerializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v9

    .line 844
    .local v9, "keySerializer":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    :goto_1
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    .line 848
    .local v11, "valueElem":Ljava/lang/Object;
    if-nez v11, :cond_4

    .line 849
    if-nez p4, :cond_0

    .line 852
    invoke-virtual/range {p3 .. p3}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getDefaultNullValueSerializer()Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v12

    .line 872
    .local v12, "valueSer":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    :cond_1
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v9, v8, v0, v1}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    .line 874
    :try_start_0
    iget-object v13, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueTypeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v12, v11, v0, v1, v13}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serializeWithType(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 875
    :catch_0
    move-exception v3

    .line 876
    .local v3, "e":Ljava/lang/Exception;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 877
    .local v7, "keyDesc":Ljava/lang/String;
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-virtual {p0, v0, v3, v1, v7}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->wrapAndThrow(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 841
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v7    # "keyDesc":Ljava/lang/String;
    .end local v9    # "keySerializer":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    .end local v11    # "valueElem":Ljava/lang/Object;
    .end local v12    # "valueSer":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    :cond_2
    if-eqz v6, :cond_3

    invoke-interface {v6, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 842
    :cond_3
    iget-object v9, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_keySerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    .restart local v9    # "keySerializer":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    goto :goto_1

    .line 854
    .restart local v11    # "valueElem":Ljava/lang/Object;
    :cond_4
    iget-object v12, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 855
    .restart local v12    # "valueSer":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 856
    .local v2, "cc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v10, v2}, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;->serializerFor(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v12

    .line 857
    if-nez v12, :cond_5

    .line 858
    iget-object v13, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v13}, Lcom/fasterxml/jackson/databind/JavaType;->hasGenericTypes()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 859
    iget-object v13, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    move-object/from16 v0, p3

    invoke-virtual {v0, v13, v2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->constructSpecializedType(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-virtual {p0, v10, v13, v0}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_findAndAddDynamic(Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/SerializerProvider;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v12

    .line 864
    :goto_2
    iget-object v10, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_dynamicValueSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    .line 867
    :cond_5
    sget-object v13, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_EMPTY:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    move-object/from16 v0, p4

    if-ne v0, v13, :cond_1

    move-object/from16 v0, p3

    invoke-virtual {v12, v0, v11}, Lcom/fasterxml/jackson/databind/JsonSerializer;->isEmpty(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    goto/16 :goto_0

    .line 862
    :cond_6
    move-object/from16 v0, p3

    invoke-virtual {p0, v10, v2, v0}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_findAndAddDynamic(Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/SerializerProvider;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v12

    goto :goto_2

    .line 880
    .end local v2    # "cc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v8    # "keyElem":Ljava/lang/Object;
    .end local v9    # "keySerializer":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    .end local v11    # "valueElem":Ljava/lang/Object;
    .end local v12    # "valueSer":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    :cond_7
    return-void
.end method

.method public bridge synthetic serializeWithType(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "x2"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .param p4, "x3"    # Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30
    check-cast p1, Ljava/util/Map;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->serializeWithType(Ljava/util/Map;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V

    return-void
.end method

.method public serializeWithType(Ljava/util/Map;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V
    .locals 6
    .param p2, "gen"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "provider"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .param p4, "typeSer"    # Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;",
            "Lcom/fasterxml/jackson/core/JsonGenerator;",
            "Lcom/fasterxml/jackson/databind/SerializerProvider;",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 547
    .local p1, "value":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-virtual {p4, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;->writeTypePrefixForObject(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 549
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->setCurrentValue(Ljava/lang/Object;)V

    .line 550
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 551
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_suppressableValue:Ljava/lang/Object;

    .line 552
    .local v5, "suppressableValue":Ljava/lang/Object;
    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->ALWAYS:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    if-ne v5, v0, :cond_4

    .line 553
    const/4 v5, 0x0

    .line 559
    .end local v5    # "suppressableValue":Ljava/lang/Object;
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_sortKeys:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/fasterxml/jackson/databind/SerializationFeature;->ORDER_MAP_ENTRIES_BY_KEYS:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {p3, v0}, Lcom/fasterxml/jackson/databind/SerializerProvider;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 560
    :cond_1
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_orderEntries(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    .line 562
    :cond_2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_filterId:Ljava/lang/Object;

    if-eqz v0, :cond_5

    .line 563
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_filterId:Ljava/lang/Object;

    invoke-virtual {p0, p3, v0, p1}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->findPropertyFilter(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/Object;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/ser/PropertyFilter;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->serializeFilteredFields(Ljava/util/Map;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/ser/PropertyFilter;Ljava/lang/Object;)V

    .line 573
    :cond_3
    :goto_1
    invoke-virtual {p4, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;->writeTypeSuffixForObject(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 574
    return-void

    .line 554
    .restart local v5    # "suppressableValue":Ljava/lang/Object;
    :cond_4
    if-nez v5, :cond_0

    .line 555
    sget-object v0, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_NULL_MAP_VALUES:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {p3, v0}, Lcom/fasterxml/jackson/databind/SerializerProvider;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 556
    sget-object v5, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_NULL:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .local v5, "suppressableValue":Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
    goto :goto_0

    .line 565
    .end local v5    # "suppressableValue":Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
    :cond_5
    if-eqz v5, :cond_6

    .line 566
    invoke-virtual {p0, p1, p2, p3, v5}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->serializeOptionalFields(Ljava/util/Map;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/Object;)V

    goto :goto_1

    .line 567
    :cond_6
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    if-eqz v0, :cond_7

    .line 568
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->serializeFieldsUsing(Ljava/util/Map;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/JsonSerializer;)V

    goto :goto_1

    .line 570
    :cond_7
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->serializeFields(Ljava/util/Map;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    goto :goto_1
.end method

.method public withContentInclusion(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;
    .locals 2
    .param p1, "suppressableValue"    # Ljava/lang/Object;

    .prologue
    .line 261
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_suppressableValue:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    .line 265
    .end local p0    # "this":Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;
    :goto_0
    return-object p0

    .line 264
    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_ensureOverride()V

    .line 265
    new-instance v0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueTypeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    invoke-direct {v0, p0, v1, p1}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;-><init>(Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Ljava/lang/Object;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public bridge synthetic withFilterId(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->withFilterId(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;

    move-result-object v0

    return-object v0
.end method

.method public withFilterId(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;
    .locals 2
    .param p1, "filterId"    # Ljava/lang/Object;

    .prologue
    .line 247
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_filterId:Ljava/lang/Object;

    if-ne v0, p1, :cond_0

    .line 251
    .end local p0    # "this":Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;
    :goto_0
    return-object p0

    .line 250
    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_ensureOverride()V

    .line 251
    new-instance v0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;

    iget-boolean v1, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_sortKeys:Z

    invoke-direct {v0, p0, p1, v1}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;-><init>(Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;Ljava/lang/Object;Z)V

    move-object p0, v0

    goto :goto_0
.end method

.method public withResolved(Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;Ljava/util/Set;Z)Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;
    .locals 7
    .param p1, "property"    # Lcom/fasterxml/jackson/databind/BeanProperty;
    .param p5, "sortKeys"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/BeanProperty;",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<*>;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;"
        }
    .end annotation

    .prologue
    .line 237
    .local p2, "keySerializer":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<*>;"
    .local p3, "valueSerializer":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<*>;"
    .local p4, "ignored":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_ensureOverride()V

    .line 238
    new-instance v0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;-><init>(Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;Ljava/util/Set;)V

    .line 239
    .local v0, "ser":Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;
    iget-boolean v1, v0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_sortKeys:Z

    if-eq p5, v1, :cond_0

    .line 240
    new-instance v6, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_filterId:Ljava/lang/Object;

    invoke-direct {v6, v0, v1, p5}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;-><init>(Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;Ljava/lang/Object;Z)V

    .end local v0    # "ser":Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;
    .local v6, "ser":Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;
    move-object v0, v6

    .line 242
    .end local v6    # "ser":Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;
    .restart local v0    # "ser":Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;
    :cond_0
    return-object v0
.end method
