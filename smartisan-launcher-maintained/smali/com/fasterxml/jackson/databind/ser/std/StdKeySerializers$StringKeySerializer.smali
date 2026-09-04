.class public Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializers$StringKeySerializer;
.super Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;
.source "StdKeySerializers.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StringKeySerializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/ser/std/StdSerializer",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


.method public constructor <init>()V
    .locals 2

    .prologue
    .line 216
    const-class v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;-><init>(Ljava/lang/Class;Z)V

    return-void
.end method


.method public serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "provider"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 220
    check-cast p1, Ljava/lang/String;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 221
    return-void
.end method
