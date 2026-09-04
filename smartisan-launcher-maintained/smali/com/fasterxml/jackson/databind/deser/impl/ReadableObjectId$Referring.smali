.class public abstract Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId$Referring;
.super Ljava/lang/Object;
.source "ReadableObjectId.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Referring"
.end annotation


.field private final _beanType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final _reference:Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;


.method public constructor <init>(Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;Lcom/fasterxml/jackson/databind/JavaType;)V
    .locals 1
    .param p1, "ref"    # Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;
    .param p2, "beanType"    # Lcom/fasterxml/jackson/databind/JavaType;

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId$Referring;->_reference:Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;

    .line 139
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId$Referring;->_beanType:Ljava/lang/Class;

    .line 140
    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;Ljava/lang/Class;)V
    .locals 0
    .param p1, "ref"    # Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 132
    .local p2, "beanType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId$Referring;->_reference:Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;

    .line 134
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId$Referring;->_beanType:Ljava/lang/Class;

    .line 135
    return-void
.end method


.method public getBeanType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 143
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId$Referring;->_beanType:Ljava/lang/Class;

    return-object v0
.end method

.method public getLocation()Lcom/fasterxml/jackson/core/JsonLocation;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId$Referring;->_reference:Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;->getLocation()Lcom/fasterxml/jackson/core/JsonLocation;

    move-result-object v0

    return-object v0
.end method

.method public abstract handleResolvedForwardReference(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public hasId(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "id"    # Ljava/lang/Object;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId$Referring;->_reference:Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;->getUnresolvedId()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
