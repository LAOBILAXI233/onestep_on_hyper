.class public final Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector$StdTypeConstructor;
.super Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
.source "CreatorCollector.java"

.implements Ljava/io/Serializable;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "StdTypeConstructor"
.end annotation


.field public static final TYPE_ARRAY_LIST:I = 0x1

.field public static final TYPE_HASH_MAP:I = 0x2

.field public static final TYPE_LINKED_HASH_MAP:I = 0x3

.field private static final serialVersionUID:J = 0x1L


.field private final _base:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

.field private final _type:I


.method public constructor <init>(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;I)V
    .locals 1
    .param p1, "base"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .param p2, "t"    # I

    .prologue
    .line 394
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;-><init>(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)V

    .line 395
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector$StdTypeConstructor;->_base:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    .line 396
    iput p2, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector$StdTypeConstructor;->_type:I

    .line 397
    return-void
.end method

.method public static tryToOptimize(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .locals 3
    .param p0, "src"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    .prologue
    .line 401
    if-eqz p0, :cond_1

    .line 402
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    .line 403
    .local v0, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Ljava/util/List;

    if-eq v0, v1, :cond_0

    const-class v1, Ljava/util/ArrayList;

    if-ne v0, v1, :cond_2

    .line 404
    :cond_0
    new-instance v1, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector$StdTypeConstructor;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector$StdTypeConstructor;-><init>(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;I)V

    move-object p0, v1

    .line 413
    .end local p0    # "src":Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    :cond_1
    :goto_0
    return-object p0

    .line 406
    .restart local p0    # "src":Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    :cond_2
    const-class v1, Ljava/util/LinkedHashMap;

    if-ne v0, v1, :cond_3

    .line 407
    new-instance v1, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector$StdTypeConstructor;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector$StdTypeConstructor;-><init>(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;I)V

    move-object p0, v1

    goto :goto_0

    .line 409
    :cond_3
    const-class v1, Ljava/util/HashMap;

    if-ne v0, v1, :cond_1

    .line 410
    new-instance v1, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector$StdTypeConstructor;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector$StdTypeConstructor;-><init>(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;I)V

    move-object p0, v1

    goto :goto_0
.end method


.method protected final _construct()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 417
    iget v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector$StdTypeConstructor;->_type:I

    packed-switch v0, :pswitch_data_0

    .line 425
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector$StdTypeConstructor;->_type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 419
    :pswitch_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 423
    :goto_0
    return-object v0

    .line 421
    :pswitch_1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    goto :goto_0

    .line 423
    :pswitch_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    .line 417
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 451
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector$StdTypeConstructor;->_construct()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public call([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 456
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector$StdTypeConstructor;->_construct()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public call1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 461
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector$StdTypeConstructor;->_construct()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 518
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAnnotated()Ljava/lang/reflect/AnnotatedElement;
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector$StdTypeConstructor;->_base:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->getAnnotated()Ljava/lang/reflect/AnnotatedElement;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaringClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 466
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector$StdTypeConstructor;->_base:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getGenericParameterType(I)Ljava/lang/reflect/Type;
    .locals 1
    .param p1, "index"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 446
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector$StdTypeConstructor;->_base:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->getGenericParameterType(I)Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public getMember()Ljava/lang/reflect/Member;
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector$StdTypeConstructor;->_base:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->getMember()Ljava/lang/reflect/Member;

    move-result-object v0

    return-object v0
.end method

.method protected getModifiers()I
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector$StdTypeConstructor;->_base:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->getMember()Ljava/lang/reflect/Member;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector$StdTypeConstructor;->_base:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParameterCount()I
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector$StdTypeConstructor;->_base:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->getParameterCount()I

    move-result v0

    return v0
.end method

.method public getParameterType(I)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 440
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector$StdTypeConstructor;->_base:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->getParameterType(I)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public getRawParameterType(I)Ljava/lang/Class;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 435
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector$StdTypeConstructor;->_base:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->getRawParameterType(I)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getRawType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 513
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector$StdTypeConstructor;->_base:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->getRawType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector$StdTypeConstructor;->_base:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "pojo"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 483
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 523
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector$StdTypeConstructor;->_base:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->hashCode()I

    move-result v0

    return v0
.end method

.method public setValue(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p1, "pojo"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 477
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector$StdTypeConstructor;->_base:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withAnnotations(Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)Lcom/fasterxml/jackson/databind/introspect/Annotated;
    .locals 1
    .param p1, "fallback"    # Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    .prologue
    .line 488
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
