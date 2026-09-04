.class public Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$Builder;
.super Ljava/lang/Object;
.source "ExternalTypeHandler.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


.field private final _nameToPropertyIndex:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final _properties:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;",
            ">;"
        }
    .end annotation
.end field


.method public constructor <init>()V
    .locals 1

    .prologue
    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 297
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$Builder;->_properties:Ljava/util/ArrayList;

    .line 298
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$Builder;->_nameToPropertyIndex:Ljava/util/HashMap;

    return-void
.end method


.method public addExternal(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;)V
    .locals 3
    .param p1, "property"    # Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .param p2, "typeDeser"    # Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    .prologue
    .line 302
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$Builder;->_properties:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 303
    .local v0, "index":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$Builder;->_properties:Ljava/util/ArrayList;

    new-instance v2, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;

    invoke-direct {v2, p1, p2}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;-><init>(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$Builder;->_nameToPropertyIndex:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$Builder;->_nameToPropertyIndex:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;->getPropertyName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    return-void
.end method

.method public build()Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 333
    new-instance v1, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$Builder;->_properties:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$Builder;->_properties:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$Builder;->_nameToPropertyIndex:Ljava/util/HashMap;

    invoke-direct {v1, v0, v2, v3, v3}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;-><init>([Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;Ljava/util/HashMap;[Ljava/lang/String;[Lcom/fasterxml/jackson/databind/util/TokenBuffer;)V

    return-object v1
.end method

.method public build(Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;)Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;
    .locals 9
    .param p1, "otherProps"    # Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;

    .prologue
    const/4 v8, 0x0

    .line 317
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$Builder;->_properties:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 318
    .local v3, "len":I
    new-array v1, v3, [Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;

    .line 319
    .local v1, "extProps":[Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 320
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$Builder;->_properties:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;

    .line 321
    .local v0, "extProp":Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;->getTypePropertyName()Ljava/lang/String;

    move-result-object v5

    .line 322
    .local v5, "typePropId":Ljava/lang/String;
    invoke-virtual {p1, v5}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->find(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v4

    .line 323
    .local v4, "typeProp":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    if-eqz v4, :cond_0

    .line 324
    invoke-virtual {v0, v4}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;->linkTypeProperty(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V

    .line 326
    :cond_0
    aput-object v0, v1, v2

    .line 319
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 328
    .end local v0    # "extProp":Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;
    .end local v4    # "typeProp":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .end local v5    # "typePropId":Ljava/lang/String;
    :cond_1
    new-instance v6, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;

    iget-object v7, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$Builder;->_nameToPropertyIndex:Ljava/util/HashMap;

    invoke-direct {v6, v1, v7, v8, v8}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;-><init>([Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;Ljava/util/HashMap;[Ljava/lang/String;[Lcom/fasterxml/jackson/databind/util/TokenBuffer;)V

    return-object v6
.end method
