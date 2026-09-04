.class public Lcom/fasterxml/jackson/databind/deser/ValueInstantiator$Base;
.super Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
.source "ValueInstantiator.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Base"
.end annotation


.field protected final _valueType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


.method public constructor <init>(Lcom/fasterxml/jackson/databind/JavaType;)V
    .locals 1
    .param p1, "type"    # Lcom/fasterxml/jackson/databind/JavaType;

    .prologue
    .line 389
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;-><init>()V

    .line 390
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator$Base;->_valueType:Ljava/lang/Class;

    .line 391
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 385
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;-><init>()V

    .line 386
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator$Base;->_valueType:Ljava/lang/Class;

    .line 387
    return-void
.end method


.method public getValueClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 400
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator$Base;->_valueType:Ljava/lang/Class;

    return-object v0
.end method

.method public getValueTypeDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator$Base;->_valueType:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
