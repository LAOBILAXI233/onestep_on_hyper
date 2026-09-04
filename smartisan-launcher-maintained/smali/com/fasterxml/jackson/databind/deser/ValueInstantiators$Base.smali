.class public Lcom/fasterxml/jackson/databind/deser/ValueInstantiators$Base;
.super Ljava/lang/Object;
.source "ValueInstantiators.java"

.implements Lcom/fasterxml/jackson/databind/deser/ValueInstantiators;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/deser/ValueInstantiators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Base"
.end annotation


.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public findValueInstantiator(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;)Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
    .locals 0
    .param p1, "config"    # Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .param p2, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .param p3, "defaultInstantiator"    # Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    .prologue
    .line 44
    return-object p3
.end method
