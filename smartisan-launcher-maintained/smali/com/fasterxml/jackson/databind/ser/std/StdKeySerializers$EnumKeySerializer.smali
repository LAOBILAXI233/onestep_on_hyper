.class public Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializers$EnumKeySerializer;
.super Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;
.source "StdKeySerializers.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EnumKeySerializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/ser/std/StdSerializer",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


.field protected final _values:Lcom/fasterxml/jackson/databind/util/EnumValues;


.method protected constructor <init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/util/EnumValues;)V
    .locals 1
    .param p2, "values"    # Lcom/fasterxml/jackson/databind/util/EnumValues;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/util/EnumValues;",
            ")V"
        }
    .end annotation

    .prologue
    .line 234
    .local p1, "enumType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;-><init>(Ljava/lang/Class;Z)V

    .line 235
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializers$EnumKeySerializer;->_values:Lcom/fasterxml/jackson/databind/util/EnumValues;

    .line 236
    return-void
.end method

.method public static construct(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/util/EnumValues;)Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializers$EnumKeySerializer;
    .locals 1
    .param p1, "enumValues"    # Lcom/fasterxml/jackson/databind/util/EnumValues;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/util/EnumValues;",
            ")",
            "Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializers$EnumKeySerializer;"
        }
    .end annotation

    .prologue
    .line 241
    .local p0, "enumType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializers$EnumKeySerializer;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializers$EnumKeySerializer;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/util/EnumValues;)V

    return-object v0
.end method


.method public serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "serializers"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 248
    sget-object v1, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_ENUMS_USING_TO_STRING:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {p3, v1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 249
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 254
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 252
    check-cast v0, Ljava/lang/Enum;

    .line 253
    .local v0, "en":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializers$EnumKeySerializer;->_values:Lcom/fasterxml/jackson/databind/util/EnumValues;

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/util/EnumValues;->serializedValueFor(Ljava/lang/Enum;)Lcom/fasterxml/jackson/core/SerializableString;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Lcom/fasterxml/jackson/core/SerializableString;)V

    goto :goto_0
.end method
