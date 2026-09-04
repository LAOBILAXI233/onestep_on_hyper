.class public Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;
.super Ljava/lang/Object;
.source "ExternalTypeHandler.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;,
        Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$Builder;
    }
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

.field private final _properties:[Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;

.field private final _tokens:[Lcom/fasterxml/jackson/databind/util/TokenBuffer;

.field private final _typeIds:[Ljava/lang/String;


.method protected constructor <init>(Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;)V
    .locals 2
    .param p1, "h"    # Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iget-object v1, p1, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_properties:[Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;

    iput-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_properties:[Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;

    .line 40
    iget-object v1, p1, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_nameToPropertyIndex:Ljava/util/HashMap;

    iput-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_nameToPropertyIndex:Ljava/util/HashMap;

    .line 41
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_properties:[Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;

    array-length v0, v1

    .line 42
    .local v0, "len":I
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_typeIds:[Ljava/lang/String;

    .line 43
    new-array v1, v0, [Lcom/fasterxml/jackson/databind/util/TokenBuffer;

    iput-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_tokens:[Lcom/fasterxml/jackson/databind/util/TokenBuffer;

    .line 44
    return-void
.end method

.method protected constructor <init>([Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;Ljava/util/HashMap;[Ljava/lang/String;[Lcom/fasterxml/jackson/databind/util/TokenBuffer;)V
    .locals 0
    .param p1, "properties"    # [Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;
    .param p3, "typeIds"    # [Ljava/lang/String;
    .param p4, "tokens"    # [Lcom/fasterxml/jackson/databind/util/TokenBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;[",
            "Ljava/lang/String;",
            "[",
            "Lcom/fasterxml/jackson/databind/util/TokenBuffer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 30
    .local p2, "nameToPropertyIndex":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_properties:[Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;

    .line 32
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_nameToPropertyIndex:Ljava/util/HashMap;

    .line 33
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_typeIds:[Ljava/lang/String;

    .line 34
    iput-object p4, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_tokens:[Lcom/fasterxml/jackson/databind/util/TokenBuffer;

    .line 35
    return-void
.end method


.method protected final _deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;ILjava/lang/String;)Ljava/lang/Object;
    .locals 5
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p3, "index"    # I
    .param p4, "typeId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 245
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_tokens:[Lcom/fasterxml/jackson/databind/util/TokenBuffer;

    aget-object v4, v4, p3

    invoke-virtual {v4, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->asParser(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v2

    .line 246
    .local v2, "p2":Lcom/fasterxml/jackson/core/JsonParser;
    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    .line 248
    .local v3, "t":Lcom/fasterxml/jackson/core/JsonToken;
    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v3, v4, :cond_0

    .line 249
    const/4 v4, 0x0

    .line 260
    :goto_0
    return-object v4

    .line 251
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;

    invoke-direct {v0, p1, p2}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)V

    .line 252
    .local v0, "merged":Lcom/fasterxml/jackson/databind/util/TokenBuffer;
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeStartArray()V

    .line 253
    invoke-virtual {v0, p4}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeString(Ljava/lang/String;)V

    .line 254
    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->copyCurrentStructure(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 255
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeEndArray()V

    .line 258
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->asParser(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v1

    .line 259
    .local v1, "mp":Lcom/fasterxml/jackson/core/JsonParser;
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 260
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_properties:[Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;

    aget-object v4, v4, p3

    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;->getProperty()Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v4

    invoke-virtual {v4, v1, p2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0
.end method

.method protected final _deserializeAndSet(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;ILjava/lang/String;)V
    .locals 6
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p3, "bean"    # Ljava/lang/Object;
    .param p4, "index"    # I
    .param p5, "typeId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 270
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_tokens:[Lcom/fasterxml/jackson/databind/util/TokenBuffer;

    aget-object v4, v4, p4

    invoke-virtual {v4, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->asParser(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v2

    .line 271
    .local v2, "p2":Lcom/fasterxml/jackson/core/JsonParser;
    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    .line 273
    .local v3, "t":Lcom/fasterxml/jackson/core/JsonToken;
    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v3, v4, :cond_0

    .line 274
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_properties:[Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;

    aget-object v4, v4, p4

    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;->getProperty()Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, p3, v5}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 287
    :goto_0
    return-void

    .line 277
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;

    invoke-direct {v0, p1, p2}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)V

    .line 278
    .local v0, "merged":Lcom/fasterxml/jackson/databind/util/TokenBuffer;
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeStartArray()V

    .line 279
    invoke-virtual {v0, p5}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeString(Ljava/lang/String;)V

    .line 281
    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->copyCurrentStructure(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 282
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeEndArray()V

    .line 284
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->asParser(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v1

    .line 285
    .local v1, "mp":Lcom/fasterxml/jackson/core/JsonParser;
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 286
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_properties:[Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;

    aget-object v4, v4, p4

    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;->getProperty()Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v4

    invoke-virtual {v4, v1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->deserializeAndSet(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public complete(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;)Ljava/lang/Object;
    .locals 15
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p3, "buffer"    # Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;
    .param p4, "creator"    # Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 190
    iget-object v11, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_properties:[Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;

    array-length v6, v11

    .line 191
    .local v6, "len":I
    new-array v10, v6, [Ljava/lang/Object;

    .line 192
    .local v10, "values":[Ljava/lang/Object;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v6, :cond_5

    .line 193
    iget-object v11, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_typeIds:[Ljava/lang/String;

    aget-object v8, v11, v5

    .line 194
    .local v8, "typeId":Ljava/lang/String;
    iget-object v11, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_properties:[Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;

    aget-object v4, v11, v5

    .line 196
    .local v4, "extProp":Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;
    if-nez v8, :cond_4

    .line 198
    iget-object v11, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_tokens:[Lcom/fasterxml/jackson/databind/util/TokenBuffer;

    aget-object v11, v11, v5

    if-nez v11, :cond_1

    .line 192
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 203
    :cond_1
    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;->hasDefaultType()Z

    move-result v11

    if-nez v11, :cond_3

    .line 204
    const-string v11, "Missing external type id property \'%s\'"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;->getTypePropertyName()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportMappingException(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 214
    :cond_2
    :goto_2
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {p0, v0, v1, v5, v8}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    aput-object v11, v10, v5

    .line 216
    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;->getProperty()Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v7

    .line 218
    .local v7, "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getCreatorIndex()I

    move-result v11

    if-ltz v11, :cond_0

    .line 219
    aget-object v11, v10, v5

    move-object/from16 v0, p3

    invoke-virtual {v0, v7, v11}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->assignParameter(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Ljava/lang/Object;)Z

    .line 222
    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;->getTypeProperty()Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v9

    .line 224
    .local v9, "typeProp":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getCreatorIndex()I

    move-result v11

    if-ltz v11, :cond_0

    .line 225
    move-object/from16 v0, p3

    invoke-virtual {v0, v9, v8}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->assignParameter(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Ljava/lang/Object;)Z

    goto :goto_1

    .line 207
    .end local v7    # "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .end local v9    # "typeProp":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    :cond_3
    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;->getDefaultTypeId()Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    .line 209
    :cond_4
    iget-object v11, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_tokens:[Lcom/fasterxml/jackson/databind/util/TokenBuffer;

    aget-object v11, v11, v5

    if-nez v11, :cond_2

    .line 210
    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;->getProperty()Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v7

    .line 211
    .restart local v7    # "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    const-string v11, "Missing property \'%s\' for external type id \'%s\'"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    iget-object v14, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_properties:[Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;

    aget-object v14, v14, v5

    invoke-virtual {v14}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;->getTypePropertyName()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportMappingException(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 230
    .end local v4    # "extProp":Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;
    .end local v7    # "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .end local v8    # "typeId":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p4

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;->build(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;)Ljava/lang/Object;

    move-result-object v3

    .line 232
    .local v3, "bean":Ljava/lang/Object;
    const/4 v5, 0x0

    :goto_3
    if-ge v5, v6, :cond_7

    .line 233
    iget-object v11, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_properties:[Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;

    aget-object v11, v11, v5

    invoke-virtual {v11}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;->getProperty()Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v7

    .line 234
    .restart local v7    # "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getCreatorIndex()I

    move-result v11

    if-gez v11, :cond_6

    .line 235
    aget-object v11, v10, v5

    invoke-virtual {v7, v3, v11}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 232
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 238
    .end local v7    # "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    :cond_7
    return-object v3
.end method

.method public complete(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p3, "bean"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    const/4 v5, 0x0

    .local v5, "i":I
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_properties:[Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;

    array-length v9, v1

    .local v9, "len":I
    :goto_0
    if-ge v5, v9, :cond_6

    .line 138
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_typeIds:[Ljava/lang/String;

    aget-object v6, v1, v5

    .line 139
    .local v6, "typeId":Ljava/lang/String;
    if-nez v6, :cond_4

    .line 140
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_tokens:[Lcom/fasterxml/jackson/databind/util/TokenBuffer;

    aget-object v13, v1, v5

    .line 143
    .local v13, "tokens":Lcom/fasterxml/jackson/databind/util/TokenBuffer;
    if-nez v13, :cond_0

    .line 137
    .end local v13    # "tokens":Lcom/fasterxml/jackson/databind/util/TokenBuffer;
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 148
    .restart local v13    # "tokens":Lcom/fasterxml/jackson/databind/util/TokenBuffer;
    :cond_0
    invoke-virtual {v13}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->firstToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v12

    .line 149
    .local v12, "t":Lcom/fasterxml/jackson/core/JsonToken;
    if-eqz v12, :cond_2

    invoke-virtual {v12}, Lcom/fasterxml/jackson/core/JsonToken;->isScalarValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 150
    invoke-virtual {v13, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->asParser(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v7

    .line 151
    .local v7, "buffered":Lcom/fasterxml/jackson/core/JsonParser;
    invoke-virtual {v7}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 152
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_properties:[Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;

    aget-object v1, v1, v5

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;->getProperty()Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v8

    .line 153
    .local v8, "extProp":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    invoke-virtual {v8}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-static {v7, v0, v1}, Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;->deserializeIfNatural(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v11

    .line 154
    .local v11, "result":Ljava/lang/Object;
    if-eqz v11, :cond_1

    .line 155
    move-object/from16 v0, p3

    invoke-virtual {v8, v0, v11}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 159
    :cond_1
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_properties:[Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;

    aget-object v1, v1, v5

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;->hasDefaultType()Z

    move-result v1

    if-nez v1, :cond_3

    .line 160
    const-string v1, "Missing external type id property \'%s\'"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_properties:[Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;->getTypePropertyName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportMappingException(Ljava/lang/String;[Ljava/lang/Object;)V

    .end local v7    # "buffered":Lcom/fasterxml/jackson/core/JsonParser;
    .end local v8    # "extProp":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .end local v11    # "result":Ljava/lang/Object;
    .end local v12    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    .end local v13    # "tokens":Lcom/fasterxml/jackson/databind/util/TokenBuffer;
    :cond_2
    :goto_2
    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    .line 176
    invoke-virtual/range {v1 .. v6}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_deserializeAndSet(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;ILjava/lang/String;)V

    goto :goto_1

    .line 163
    .restart local v7    # "buffered":Lcom/fasterxml/jackson/core/JsonParser;
    .restart local v8    # "extProp":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .restart local v11    # "result":Ljava/lang/Object;
    .restart local v12    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    .restart local v13    # "tokens":Lcom/fasterxml/jackson/databind/util/TokenBuffer;
    :cond_3
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_properties:[Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;

    aget-object v1, v1, v5

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;->getDefaultTypeId()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 166
    .end local v7    # "buffered":Lcom/fasterxml/jackson/core/JsonParser;
    .end local v8    # "extProp":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .end local v11    # "result":Ljava/lang/Object;
    .end local v12    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    .end local v13    # "tokens":Lcom/fasterxml/jackson/databind/util/TokenBuffer;
    :cond_4
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_tokens:[Lcom/fasterxml/jackson/databind/util/TokenBuffer;

    aget-object v1, v1, v5

    if-nez v1, :cond_2

    .line 167
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_properties:[Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;

    aget-object v1, v1, v5

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;->getProperty()Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v10

    .line 169
    .local v10, "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    invoke-virtual {v10}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->isRequired()Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v1, Lcom/fasterxml/jackson/databind/DeserializationFeature;->FAIL_ON_MISSING_EXTERNAL_TYPE_ID_PROPERTY:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 171
    :cond_5
    const-string v1, "Missing property \'%s\' for external type id \'%s\'"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v10}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_properties:[Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;->getTypePropertyName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportMappingException(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    .end local v6    # "typeId":Ljava/lang/String;
    .end local v10    # "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    :cond_6
    return-object p3
.end method

.method public handlePropertyValue(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 10
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p3, "propName"    # Ljava/lang/String;
    .param p4, "bean"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_nameToPropertyIndex:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 99
    .local v6, "I":Ljava/lang/Integer;
    if-nez v6, :cond_0

    .line 100
    const/4 v0, 0x0

    .line 126
    :goto_0
    return v0

    .line 102
    :cond_0
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 103
    .local v4, "index":I
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_properties:[Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;

    aget-object v8, v0, v4

    .line 105
    .local v8, "prop":Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;
    invoke-virtual {v8, p3}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;->hasTypePropertyName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 106
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_typeIds:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 107
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    .line 108
    if-eqz p4, :cond_2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_tokens:[Lcom/fasterxml/jackson/databind/util/TokenBuffer;

    aget-object v0, v0, v4

    if-eqz v0, :cond_2

    const/4 v7, 0x1

    .line 119
    .local v7, "canDeserialize":Z
    :goto_1
    if-eqz v7, :cond_1

    .line 120
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_typeIds:[Ljava/lang/String;

    aget-object v5, v0, v4

    .line 122
    .local v5, "typeId":Ljava/lang/String;
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_typeIds:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v1, v0, v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    .line 123
    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_deserializeAndSet(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;ILjava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_tokens:[Lcom/fasterxml/jackson/databind/util/TokenBuffer;

    const/4 v1, 0x0

    aput-object v1, v0, v4

    .line 126
    .end local v5    # "typeId":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 108
    .end local v7    # "canDeserialize":Z
    :cond_2
    const/4 v7, 0x0

    goto :goto_1

    .line 111
    :cond_3
    new-instance v9, Lcom/fasterxml/jackson/databind/util/TokenBuffer;

    invoke-direct {v9, p1, p2}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)V

    .line 112
    .local v9, "tokens":Lcom/fasterxml/jackson/databind/util/TokenBuffer;
    invoke-virtual {v9, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->copyCurrentStructure(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 113
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_tokens:[Lcom/fasterxml/jackson/databind/util/TokenBuffer;

    aput-object v9, v0, v4

    .line 114
    if-eqz p4, :cond_4

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_typeIds:[Ljava/lang/String;

    aget-object v0, v0, v4

    if-eqz v0, :cond_4

    const/4 v7, 0x1

    .restart local v7    # "canDeserialize":Z
    :goto_2
    goto :goto_1

    .end local v7    # "canDeserialize":Z
    :cond_4
    const/4 v7, 0x0

    goto :goto_2
.end method

.method public handleTypePropertyValue(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 10
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p3, "propName"    # Ljava/lang/String;
    .param p4, "bean"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v0, 0x0

    .line 64
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_nameToPropertyIndex:Ljava/util/HashMap;

    invoke-virtual {v1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 65
    .local v6, "I":Ljava/lang/Integer;
    if-nez v6, :cond_1

    .line 84
    :cond_0
    :goto_0
    return v0

    .line 68
    :cond_1
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 69
    .local v4, "index":I
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_properties:[Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;

    aget-object v8, v1, v4

    .line 70
    .local v8, "prop":Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;
    invoke-virtual {v8, p3}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;->hasTypePropertyName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v5

    .line 75
    .local v5, "typeId":Ljava/lang/String;
    if-eqz p4, :cond_2

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_tokens:[Lcom/fasterxml/jackson/databind/util/TokenBuffer;

    aget-object v1, v1, v4

    if-eqz v1, :cond_2

    move v7, v9

    .line 77
    .local v7, "canDeserialize":Z
    :goto_1
    if-eqz v7, :cond_3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    .line 78
    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_deserializeAndSet(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;ILjava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_tokens:[Lcom/fasterxml/jackson/databind/util/TokenBuffer;

    const/4 v1, 0x0

    aput-object v1, v0, v4

    :goto_2
    move v0, v9

    .line 84
    goto :goto_0

    .end local v7    # "canDeserialize":Z
    :cond_2
    move v7, v0

    .line 75
    goto :goto_1

    .line 82
    .restart local v7    # "canDeserialize":Z
    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_typeIds:[Ljava/lang/String;

    aput-object v5, v0, v4

    goto :goto_2
.end method

.method public start()Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;

    invoke-direct {v0, p0}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;-><init>(Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;)V

    return-object v0
.end method
