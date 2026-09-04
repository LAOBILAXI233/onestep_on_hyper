.class public abstract Lcom/fasterxml/jackson/databind/type/TypeBase;
.super Lcom/fasterxml/jackson/databind/JavaType;
.source "TypeBase.java"

.implements Lcom/fasterxml/jackson/databind/JsonSerializable;


.field private static final NO_BINDINGS:Lcom/fasterxml/jackson/databind/type/TypeBindings;

.field private static final NO_TYPES:[Lcom/fasterxml/jackson/databind/JavaType;

.field private static final serialVersionUID:J = 0x1L


.field protected final _bindings:Lcom/fasterxml/jackson/databind/type/TypeBindings;

.field volatile transient _canonicalName:Ljava/lang/String;

.field protected final _superClass:Lcom/fasterxml/jackson/databind/JavaType;

.field protected final _superInterfaces:[Lcom/fasterxml/jackson/databind/JavaType;


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    invoke-static {}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->emptyBindings()Lcom/fasterxml/jackson/databind/type/TypeBindings;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/databind/type/TypeBase;->NO_BINDINGS:Lcom/fasterxml/jackson/databind/type/TypeBindings;

    .line 18
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/fasterxml/jackson/databind/JavaType;

    sput-object v0, Lcom/fasterxml/jackson/databind/type/TypeBase;->NO_TYPES:[Lcom/fasterxml/jackson/databind/JavaType;

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/type/TypeBase;)V
    .locals 1
    .param p1, "base"    # Lcom/fasterxml/jackson/databind/type/TypeBase;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/JavaType;-><init>(Lcom/fasterxml/jackson/databind/JavaType;)V

    .line 58
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/type/TypeBase;->_superClass:Lcom/fasterxml/jackson/databind/JavaType;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeBase;->_superClass:Lcom/fasterxml/jackson/databind/JavaType;

    .line 59
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/type/TypeBase;->_superInterfaces:[Lcom/fasterxml/jackson/databind/JavaType;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeBase;->_superInterfaces:[Lcom/fasterxml/jackson/databind/JavaType;

    .line 60
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/type/TypeBase;->_bindings:Lcom/fasterxml/jackson/databind/type/TypeBindings;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeBase;->_bindings:Lcom/fasterxml/jackson/databind/type/TypeBindings;

    .line 61
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;ILjava/lang/Object;Ljava/lang/Object;Z)V
    .locals 6
    .param p2, "bindings"    # Lcom/fasterxml/jackson/databind/type/TypeBindings;
    .param p3, "superClass"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p4, "superInts"    # [Lcom/fasterxml/jackson/databind/JavaType;
    .param p5, "hash"    # I
    .param p6, "valueHandler"    # Ljava/lang/Object;
    .param p7, "typeHandler"    # Ljava/lang/Object;
    .param p8, "asStatic"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/type/TypeBindings;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "[",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "I",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, "raw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v0, p0

    move-object v1, p1

    move v2, p5

    move-object v3, p6

    move-object v4, p7

    move v5, p8

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/JavaType;-><init>(Ljava/lang/Class;ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 46
    if-nez p2, :cond_0

    sget-object p2, Lcom/fasterxml/jackson/databind/type/TypeBase;->NO_BINDINGS:Lcom/fasterxml/jackson/databind/type/TypeBindings;

    .end local p2    # "bindings":Lcom/fasterxml/jackson/databind/type/TypeBindings;
    :cond_0
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/type/TypeBase;->_bindings:Lcom/fasterxml/jackson/databind/type/TypeBindings;

    .line 47
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/type/TypeBase;->_superClass:Lcom/fasterxml/jackson/databind/JavaType;

    .line 48
    iput-object p4, p0, Lcom/fasterxml/jackson/databind/type/TypeBase;->_superInterfaces:[Lcom/fasterxml/jackson/databind/JavaType;

    .line 49
    return-void
.end method

.method protected static _bogusSuperClass(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    .prologue
    .line 248
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 249
    .local v0, "parent":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_0

    .line 250
    const/4 v1, 0x0

    .line 252
    :goto_0
    return-object v1

    :cond_0
    invoke-static {}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->unknownType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    goto :goto_0
.end method

.method protected static _classSignature(Ljava/lang/Class;Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;
    .locals 7
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "trailingSemicolon"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/StringBuilder;",
            "Z)",
            "Ljava/lang/StringBuilder;"
        }
    .end annotation

    .prologue
    .line 194
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 195
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v4, :cond_1

    .line 196
    const/16 v4, 0x5a

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 235
    :cond_0
    :goto_0
    return-object p1

    .line 197
    :cond_1
    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v4, :cond_2

    .line 198
    const/16 v4, 0x42

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 200
    :cond_2
    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v4, :cond_3

    .line 201
    const/16 v4, 0x53

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 203
    :cond_3
    sget-object v4, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v4, :cond_4

    .line 204
    const/16 v4, 0x43

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 206
    :cond_4
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v4, :cond_5

    .line 207
    const/16 v4, 0x49

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 209
    :cond_5
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v4, :cond_6

    .line 210
    const/16 v4, 0x4a

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 212
    :cond_6
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v4, :cond_7

    .line 213
    const/16 v4, 0x46

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 215
    :cond_7
    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v4, :cond_8

    .line 216
    const/16 v4, 0x44

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 218
    :cond_8
    sget-object v4, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p0, v4, :cond_9

    .line 219
    const/16 v4, 0x56

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 221
    :cond_9
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unrecognized primitive type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 224
    :cond_a
    const/16 v4, 0x4c

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 225
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 226
    .local v3, "name":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, "len":I
    :goto_1
    if-ge v1, v2, :cond_c

    .line 227
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 228
    .local v0, "c":C
    const/16 v4, 0x2e

    if-ne v0, v4, :cond_b

    const/16 v0, 0x2f

    .line 229
    :cond_b
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 226
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 231
    .end local v0    # "c":C
    :cond_c
    if-eqz p2, :cond_0

    .line 232
    const/16 v4, 0x3b

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method


.method protected buildCanonicalName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeBase;->_class:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic containedType(I)Lcom/fasterxml/jackson/core/type/ResolvedType;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 11
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/type/TypeBase;->containedType(I)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public containedType(I)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 95
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeBase;->_bindings:Lcom/fasterxml/jackson/databind/type/TypeBindings;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->getBoundType(I)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public containedTypeCount()I
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeBase;->_bindings:Lcom/fasterxml/jackson/databind/type/TypeBindings;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->size()I

    move-result v0

    return v0
.end method

.method public containedTypeName(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeBase;->_bindings:Lcom/fasterxml/jackson/databind/type/TypeBindings;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->getBoundName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final findSuperType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    .prologue
    .line 126
    .local p1, "rawTarget":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/TypeBase;->_class:Ljava/lang/Class;

    if-ne p1, v3, :cond_1

    move-object v2, p0

    .line 145
    :cond_0
    :goto_0
    return-object v2

    .line 130
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/TypeBase;->_superInterfaces:[Lcom/fasterxml/jackson/databind/JavaType;

    if-eqz v3, :cond_2

    .line 131
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/TypeBase;->_superInterfaces:[Lcom/fasterxml/jackson/databind/JavaType;

    array-length v0, v3

    .local v0, "count":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 132
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/TypeBase;->_superInterfaces:[Lcom/fasterxml/jackson/databind/JavaType;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1}, Lcom/fasterxml/jackson/databind/JavaType;->findSuperType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    .line 133
    .local v2, "type":Lcom/fasterxml/jackson/databind/JavaType;
    if-nez v2, :cond_0

    .line 131
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 139
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "type":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_2
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/TypeBase;->_superClass:Lcom/fasterxml/jackson/databind/JavaType;

    if-eqz v3, :cond_3

    .line 140
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/TypeBase;->_superClass:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v3, p1}, Lcom/fasterxml/jackson/databind/JavaType;->findSuperType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    .line 141
    .restart local v2    # "type":Lcom/fasterxml/jackson/databind/JavaType;
    if-nez v2, :cond_0

    .line 145
    .end local v2    # "type":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public findTypeParameters(Ljava/lang/Class;)[Lcom/fasterxml/jackson/databind/JavaType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)[",
            "Lcom/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    .prologue
    .line 151
    .local p1, "expType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/type/TypeBase;->findSuperType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    .line 152
    .local v0, "match":Lcom/fasterxml/jackson/databind/JavaType;
    if-nez v0, :cond_0

    .line 153
    sget-object v1, Lcom/fasterxml/jackson/databind/type/TypeBase;->NO_TYPES:[Lcom/fasterxml/jackson/databind/JavaType;

    .line 155
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getBindings()Lcom/fasterxml/jackson/databind/type/TypeBindings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->typeParameterArray()[Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    goto :goto_0
.end method

.method public getBindings()Lcom/fasterxml/jackson/databind/type/TypeBindings;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeBase;->_bindings:Lcom/fasterxml/jackson/databind/type/TypeBindings;

    return-object v0
.end method

.method public abstract getErasedSignature(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
.end method

.method public abstract getGenericSignature(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
.end method

.method public getInterfaces()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeBase;->_superInterfaces:[Lcom/fasterxml/jackson/databind/JavaType;

    if-nez v0, :cond_0

    .line 112
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 120
    :goto_0
    return-object v0

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeBase;->_superInterfaces:[Lcom/fasterxml/jackson/databind/JavaType;

    array-length v0, v0

    packed-switch v0, :pswitch_data_0

    .line 120
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeBase;->_superInterfaces:[Lcom/fasterxml/jackson/databind/JavaType;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 116
    :pswitch_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 118
    :pswitch_1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeBase;->_superInterfaces:[Lcom/fasterxml/jackson/databind/JavaType;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 114
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getSuperClass()Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeBase;->_superClass:Lcom/fasterxml/jackson/databind/JavaType;

    return-object v0
.end method

.method public serialize(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 1
    .param p1, "gen"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p2, "provider"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/type/TypeBase;->toCanonical()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 179
    return-void
.end method

.method public serializeWithType(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V
    .locals 0
    .param p1, "gen"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p2, "provider"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .param p3, "typeSer"    # Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 169
    invoke-virtual {p3, p0, p1}, Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;->writeTypePrefixForScalar(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 170
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/type/TypeBase;->serialize(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    .line 171
    invoke-virtual {p3, p0, p1}, Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;->writeTypeSuffixForScalar(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 172
    return-void
.end method

.method public toCanonical()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeBase;->_canonicalName:Ljava/lang/String;

    .line 67
    .local v0, "str":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/type/TypeBase;->buildCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 70
    :cond_0
    return-object v0
.end method
