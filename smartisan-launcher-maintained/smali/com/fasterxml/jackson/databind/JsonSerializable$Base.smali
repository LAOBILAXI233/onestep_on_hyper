.class public abstract Lcom/fasterxml/jackson/databind/JsonSerializable$Base;
.super Ljava/lang/Object;
.source "JsonSerializable.java"

.implements Lcom/fasterxml/jackson/databind/JsonSerializable;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/JsonSerializable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Base"
.end annotation


.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public isEmpty(Lcom/fasterxml/jackson/databind/SerializerProvider;)Z
    .locals 1
    .param p1, "serializers"    # Lcom/fasterxml/jackson/databind/SerializerProvider;

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method
