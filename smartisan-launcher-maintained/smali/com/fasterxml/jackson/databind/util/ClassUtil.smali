.class public final Lcom/fasterxml/jackson/databind/util/ClassUtil;
.super Ljava/lang/Object;
.source "ClassUtil.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/databind/util/ClassUtil$1;,
        Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;,
        Lcom/fasterxml/jackson/databind/util/ClassUtil$ClassMetadata;,
        Lcom/fasterxml/jackson/databind/util/ClassUtil$EnumTypeLocator;,
        Lcom/fasterxml/jackson/databind/util/ClassUtil$EmptyIterator;
    }
.end annotation


.field private static final CLS_OBJECT:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final EMPTY_ITERATOR:Lcom/fasterxml/jackson/databind/util/ClassUtil$EmptyIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/util/ClassUtil$EmptyIterator",
            "<*>;"
        }
    .end annotation
.end field

.field private static final sCached:Lcom/fasterxml/jackson/databind/util/LRUMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/util/LRUMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/util/ClassUtil$ClassMetadata;",
            ">;"
        }
    .end annotation
.end field


.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0x30

    .line 15
    const-class v0, Ljava/lang/Object;

    sput-object v0, Lcom/fasterxml/jackson/databind/util/ClassUtil;->CLS_OBJECT:Ljava/lang/Class;

    .line 33
    new-instance v0, Lcom/fasterxml/jackson/databind/util/ClassUtil$EmptyIterator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/util/ClassUtil$EmptyIterator;-><init>(Lcom/fasterxml/jackson/databind/util/ClassUtil$1;)V

    sput-object v0, Lcom/fasterxml/jackson/databind/util/ClassUtil;->EMPTY_ITERATOR:Lcom/fasterxml/jackson/databind/util/ClassUtil$EmptyIterator;

    .line 369
    new-instance v0, Lcom/fasterxml/jackson/databind/util/LRUMap;

    invoke-direct {v0, v2, v2}, Lcom/fasterxml/jackson/databind/util/LRUMap;-><init>(II)V

    sput-object v0, Lcom/fasterxml/jackson/databind/util/ClassUtil;->sCached:Lcom/fasterxml/jackson/databind/util/LRUMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1250
    return-void
.end method

.method private static _addRawSuperTypes(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Collection;Z)V
    .locals 6
    .param p3, "addClassItself"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Class",
            "<*>;>;Z)V"
        }
    .end annotation

    .prologue
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "endBefore":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "result":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Class<*>;>;"
    const/4 v5, 0x1

    .line 149
    if-eq p0, p1, :cond_0

    if-eqz p0, :cond_0

    const-class v4, Ljava/lang/Object;

    if-ne p0, v4, :cond_1

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    if-eqz p3, :cond_2

    .line 151
    invoke-interface {p2, p0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 154
    invoke-interface {p2, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 156
    :cond_2
    invoke-static {p0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->_interfaces(Ljava/lang/Class;)[Ljava/lang/Class;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/Class;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v3, :cond_3

    aget-object v2, v0, v1

    .line 157
    .local v2, "intCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v2, p1, p2, v5}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->_addRawSuperTypes(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Collection;Z)V

    .line 156
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 159
    .end local v2    # "intCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4, p1, p2, v5}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->_addRawSuperTypes(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Collection;Z)V

    goto :goto_0
.end method

.method private static _addSuperTypes(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;Ljava/util/Collection;Z)V
    .locals 5
    .param p0, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p3, "addClassItself"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Collection",
            "<",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p1, "endBefore":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "result":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/fasterxml/jackson/databind/JavaType;>;"
    const/4 v4, 0x1

    .line 131
    if-nez p0, :cond_1

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    .line 135
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eq v0, p1, :cond_0

    const-class v3, Ljava/lang/Object;

    if-eq v0, v3, :cond_0

    .line 136
    if-eqz p3, :cond_2

    .line 137
    invoke-interface {p2, p0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 140
    invoke-interface {p2, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 142
    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/JavaType;->getInterfaces()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fasterxml/jackson/databind/JavaType;

    .line 143
    .local v2, "intCls":Lcom/fasterxml/jackson/databind/JavaType;
    invoke-static {v2, p1, p2, v4}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->_addSuperTypes(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;Ljava/util/Collection;Z)V

    goto :goto_1

    .line 145
    .end local v2    # "intCls":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/JavaType;->getSuperClass()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v3

    invoke-static {v3, p1, p2, v4}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->_addSuperTypes(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;Ljava/util/Collection;Z)V

    goto :goto_0
.end method

.method private static _getMetadata(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/util/ClassUtil$ClassMetadata;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/util/ClassUtil$ClassMetadata;"
        }
    .end annotation

    .prologue
    .line 453
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v2, Lcom/fasterxml/jackson/databind/util/ClassUtil;->sCached:Lcom/fasterxml/jackson/databind/util/LRUMap;

    invoke-virtual {v2, p0}, Lcom/fasterxml/jackson/databind/util/LRUMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/util/ClassUtil$ClassMetadata;

    .line 454
    .local v0, "md":Lcom/fasterxml/jackson/databind/util/ClassUtil$ClassMetadata;
    if-nez v0, :cond_0

    .line 455
    new-instance v0, Lcom/fasterxml/jackson/databind/util/ClassUtil$ClassMetadata;

    .end local v0    # "md":Lcom/fasterxml/jackson/databind/util/ClassUtil$ClassMetadata;
    invoke-direct {v0, p0}, Lcom/fasterxml/jackson/databind/util/ClassUtil$ClassMetadata;-><init>(Ljava/lang/Class;)V

    .line 458
    .restart local v0    # "md":Lcom/fasterxml/jackson/databind/util/ClassUtil$ClassMetadata;
    sget-object v2, Lcom/fasterxml/jackson/databind/util/ClassUtil;->sCached:Lcom/fasterxml/jackson/databind/util/LRUMap;

    invoke-virtual {v2, p0, v0}, Lcom/fasterxml/jackson/databind/util/LRUMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/util/ClassUtil$ClassMetadata;

    .line 459
    .local v1, "old":Lcom/fasterxml/jackson/databind/util/ClassUtil$ClassMetadata;
    if-eqz v1, :cond_0

    .line 460
    move-object v0, v1

    .line 463
    .end local v1    # "old":Lcom/fasterxml/jackson/databind/util/ClassUtil$ClassMetadata;
    :cond_0
    return-object v0
.end method

.method private static _interfaces(Ljava/lang/Class;)[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 448
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->_getMetadata(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/util/ClassUtil$ClassMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/util/ClassUtil$ClassMetadata;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/fasterxml/jackson/databind/util/ClassUtil;->CLS_OBJECT:Ljava/lang/Class;

    return-object v0
.end method

.method public static canBeABeanType(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 175
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isAnnotation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    const-string v0, "annotation"

    .line 189
    :goto_0
    return-object v0

    .line 178
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    const-string v0, "array"

    goto :goto_0

    .line 181
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 182
    const-string v0, "enum"

    goto :goto_0

    .line 184
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 185
    const-string v0, "primitive"

    goto :goto_0

    .line 189
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static checkAndFixAccess(Ljava/lang/reflect/Member;)V
    .locals 1
    .param p0, "member"    # Ljava/lang/reflect/Member;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 838
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->checkAndFixAccess(Ljava/lang/reflect/Member;Z)V

    .line 839
    return-void
.end method

.method public static checkAndFixAccess(Ljava/lang/reflect/Member;Z)V
    .locals 6
    .param p0, "member"    # Ljava/lang/reflect/Member;
    .param p1, "force"    # Z

    .prologue
    .line 855
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/AccessibleObject;

    .line 863
    .local v0, "ao":Ljava/lang/reflect/AccessibleObject;
    if-nez p1, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p0}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 866
    :cond_0
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 879
    :cond_1
    return-void

    .line 868
    :catch_0
    move-exception v2

    .line 873
    .local v2, "se":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v3

    if-nez v3, :cond_1

    .line 874
    invoke-interface {p0}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    .line 875
    .local v1, "declClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can not access "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (from class "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; failed to set access: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static closeOnFailAndThrowAsIAE(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/io/Closeable;Ljava/lang/Exception;)V
    .locals 2
    .param p0, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p1, "toClose"    # Ljava/io/Closeable;
    .param p2, "fail"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 631
    if-eqz p0, :cond_0

    .line 632
    sget-object v1, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->AUTO_CLOSE_JSON_CONTENT:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->disable(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Lcom/fasterxml/jackson/core/JsonGenerator;

    .line 634
    :try_start_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 639
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 641
    :try_start_1
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 646
    :cond_1
    :goto_1
    instance-of v1, p2, Ljava/io/IOException;

    if-eqz v1, :cond_2

    .line 647
    check-cast p2, Ljava/io/IOException;

    .end local p2    # "fail":Ljava/lang/Exception;
    throw p2

    .line 635
    .restart local p2    # "fail":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 636
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p2, v0}, Ljava/lang/Exception;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 642
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 643
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {p2, v0}, Ljava/lang/Exception;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 649
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    instance-of v1, p2, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_3

    .line 650
    check-cast p2, Ljava/lang/RuntimeException;

    .end local p2    # "fail":Ljava/lang/Exception;
    throw p2

    .line 652
    .restart local p2    # "fail":Ljava/lang/Exception;
    :cond_3
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static closeOnFailAndThrowAsIAE(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Exception;)V
    .locals 2
    .param p0, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p1, "fail"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 603
    sget-object v1, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->AUTO_CLOSE_JSON_CONTENT:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->disable(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Lcom/fasterxml/jackson/core/JsonGenerator;

    .line 605
    :try_start_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 609
    :goto_0
    instance-of v1, p1, Ljava/io/IOException;

    if-eqz v1, :cond_0

    .line 610
    check-cast p1, Ljava/io/IOException;

    .end local p1    # "fail":Ljava/lang/Exception;
    throw p1

    .line 606
    .restart local p1    # "fail":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 607
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p1, v0}, Ljava/lang/Exception;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 612
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    instance-of v1, p1, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_1

    .line 613
    check-cast p1, Ljava/lang/RuntimeException;

    .end local p1    # "fail":Ljava/lang/Exception;
    throw p1

    .line 615
    .restart local p1    # "fail":Ljava/lang/Exception;
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static createInstance(Ljava/lang/Class;Z)Ljava/lang/Object;
    .locals 5
    .param p1, "canFixAccess"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;Z)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 677
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0, p1}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->findConstructor(Ljava/lang/Class;Z)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 678
    .local v0, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    if-nez v0, :cond_0

    .line 679
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has no default (no arg) constructor"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 682
    :cond_0
    const/4 v2, 0x0

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 685
    :goto_0
    return-object v2

    .line 683
    :catch_0
    move-exception v1

    .line 684
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to instantiate class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", problem: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->unwrapAndThrowAsIAE(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 685
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static defaultValue(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 723
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_0

    .line 724
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 745
    :goto_0
    return-object v0

    .line 726
    :cond_0
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_1

    .line 727
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 729
    :cond_1
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_2

    .line 730
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 732
    :cond_2
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_3

    .line 733
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    .line 735
    :cond_3
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_4

    .line 736
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    .line 738
    :cond_4
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_5

    .line 739
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto :goto_0

    .line 741
    :cond_5
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_6

    .line 742
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    goto :goto_0

    .line 744
    :cond_6
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_7

    .line 745
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    goto :goto_0

    .line 747
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a primitive type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static emptyIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 48
    sget-object v0, Lcom/fasterxml/jackson/databind/util/ClassUtil;->EMPTY_ITERATOR:Lcom/fasterxml/jackson/databind/util/ClassUtil$EmptyIterator;

    return-object v0
.end method

.method public static findClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 5
    .param p0, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 322
    const/16 v3, 0x2e

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_8

    .line 323
    const-string v3, "int"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 345
    :goto_0
    return-object v3

    .line 324
    :cond_0
    const-string v3, "long"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 325
    :cond_1
    const-string v3, "float"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 326
    :cond_2
    const-string v3, "double"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 327
    :cond_3
    const-string v3, "boolean"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 328
    :cond_4
    const-string v3, "byte"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 329
    :cond_5
    const-string v3, "char"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 330
    :cond_6
    const-string v3, "short"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 331
    :cond_7
    const-string v3, "void"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 334
    :cond_8
    const/4 v2, 0x0

    .line 335
    .local v2, "prob":Ljava/lang/Throwable;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 337
    .local v1, "loader":Ljava/lang/ClassLoader;
    if-eqz v1, :cond_9

    .line 339
    const/4 v3, 0x1

    :try_start_0
    invoke-static {p0, v3, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 340
    :catch_0
    move-exception v0

    .line 341
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    .line 345
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_9
    :try_start_1
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    goto :goto_0

    .line 346
    :catch_1
    move-exception v0

    .line 347
    .restart local v0    # "e":Ljava/lang/Exception;
    if-nez v2, :cond_a

    .line 348
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    .line 351
    :cond_a
    instance-of v3, v2, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_b

    .line 352
    check-cast v2, Ljava/lang/RuntimeException;

    .end local v2    # "prob":Ljava/lang/Throwable;
    throw v2

    .line 354
    .restart local v2    # "prob":Ljava/lang/Throwable;
    :cond_b
    new-instance v3, Ljava/lang/ClassNotFoundException;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static findClassAnnotations(Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/lang/annotation/Annotation;"
        }
    .end annotation

    .prologue
    .line 403
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->_getMetadata(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/util/ClassUtil$ClassMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/util/ClassUtil$ClassMetadata;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public static findConstructor(Ljava/lang/Class;Z)Ljava/lang/reflect/Constructor;
    .locals 5
    .param p1, "canFixAccess"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;Z)",
            "Ljava/lang/reflect/Constructor",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 693
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v2, 0x0

    :try_start_0
    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {p0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 694
    .local v0, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    if-eqz p1, :cond_1

    .line 695
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->checkAndFixAccess(Ljava/lang/reflect/Member;)V

    .line 708
    .end local v0    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    :cond_0
    :goto_0
    return-object v0

    .line 698
    .restart local v0    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    :cond_1
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 699
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Default constructor for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not accessible (non-public?): not allowed to try modify access via Reflection: can not instantiate type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 703
    .end local v0    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    :catch_0
    move-exception v2

    .line 708
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 705
    :catch_1
    move-exception v1

    .line 706
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to find default constructor of class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", problem: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->unwrapAndThrowAsIAE(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static findEnumType(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Enum",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 945
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Enum;

    if-eq v0, v1, :cond_0

    .line 946
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    .line 948
    :cond_0
    return-object p0
.end method

.method public static findEnumType(Ljava/lang/Enum;)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum",
            "<*>;)",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Enum",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 928
    .local p0, "en":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 929
    .local v0, "ec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/Enum;

    if-eq v1, v2, :cond_0

    .line 930
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 932
    :cond_0
    return-object v0
.end method

.method public static findEnumType(Ljava/util/EnumMap;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap",
            "<**>;)",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Enum",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 911
    .local p0, "m":Ljava/util/EnumMap;, "Ljava/util/EnumMap<**>;"
    invoke-virtual {p0}, Ljava/util/EnumMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 912
    invoke-virtual {p0}, Ljava/util/EnumMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->findEnumType(Ljava/lang/Enum;)Ljava/lang/Class;

    move-result-object v0

    .line 915
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/databind/util/ClassUtil$EnumTypeLocator;->instance:Lcom/fasterxml/jackson/databind/util/ClassUtil$EnumTypeLocator;

    invoke-virtual {v0, p0}, Lcom/fasterxml/jackson/databind/util/ClassUtil$EnumTypeLocator;->enumTypeFor(Ljava/util/EnumMap;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0
.end method

.method public static findEnumType(Ljava/util/EnumSet;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<*>;)",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Enum",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 896
    .local p0, "s":Ljava/util/EnumSet;, "Ljava/util/EnumSet<*>;"
    invoke-virtual {p0}, Ljava/util/EnumSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 897
    invoke-virtual {p0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->findEnumType(Ljava/lang/Enum;)Ljava/lang/Class;

    move-result-object v0

    .line 900
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/databind/util/ClassUtil$EnumTypeLocator;->instance:Lcom/fasterxml/jackson/databind/util/ClassUtil$EnumTypeLocator;

    invoke-virtual {v0, p0}, Lcom/fasterxml/jackson/databind/util/ClassUtil$EnumTypeLocator;->enumTypeFor(Ljava/util/EnumSet;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0
.end method

.method public static findFirstAnnotatedEnumValue(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Enum;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Enum",
            "<*>;>;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/lang/Enum",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 964
    .local p0, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Enum<*>;>;"
    .local p1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->getDeclaredFields(Ljava/lang/Class;)[Ljava/lang/reflect/Field;

    move-result-object v5

    .line 965
    .local v5, "fields":[Ljava/lang/reflect/Field;
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/reflect/Field;
    array-length v8, v0

    .local v8, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    move v7, v6

    .end local v0    # "arr$":[Ljava/lang/reflect/Field;
    .end local v6    # "i$":I
    .end local v8    # "len$":I
    .local v7, "i$":I
    :goto_0
    if-ge v7, v8, :cond_2

    aget-object v4, v0, v7

    .line 966
    .local v4, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->isEnumConstant()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 967
    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    .line 968
    .local v2, "defaultValueAnnotation":Ljava/lang/annotation/Annotation;
    if-eqz v2, :cond_1

    .line 969
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v10

    .line 970
    .local v10, "name":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Enum;

    .local v1, "arr$":[Ljava/lang/Enum;
    array-length v9, v1

    .local v9, "len$":I
    const/4 v6, 0x0

    .end local v7    # "i$":I
    .restart local v6    # "i$":I
    :goto_1
    if-ge v6, v9, :cond_1

    aget-object v3, v1, v6

    .line 971
    .local v3, "enumValue":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 978
    .end local v1    # "arr$":[Ljava/lang/Enum;
    .end local v2    # "defaultValueAnnotation":Ljava/lang/annotation/Annotation;
    .end local v3    # "enumValue":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    .end local v4    # "field":Ljava/lang/reflect/Field;
    .end local v6    # "i$":I
    .end local v9    # "len$":I
    .end local v10    # "name":Ljava/lang/String;
    :goto_2
    return-object v3

    .line 970
    .restart local v1    # "arr$":[Ljava/lang/Enum;
    .restart local v2    # "defaultValueAnnotation":Ljava/lang/annotation/Annotation;
    .restart local v3    # "enumValue":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    .restart local v4    # "field":Ljava/lang/reflect/Field;
    .restart local v6    # "i$":I
    .restart local v9    # "len$":I
    .restart local v10    # "name":Ljava/lang/String;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 965
    .end local v1    # "arr$":[Ljava/lang/Enum;
    .end local v2    # "defaultValueAnnotation":Ljava/lang/annotation/Annotation;
    .end local v3    # "enumValue":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    .end local v6    # "i$":I
    .end local v9    # "len$":I
    .end local v10    # "name":Ljava/lang/String;
    :cond_1
    add-int/lit8 v6, v7, 0x1

    .restart local v6    # "i$":I
    move v7, v6

    .end local v6    # "i$":I
    .restart local v7    # "i$":I
    goto :goto_0

    .line 978
    .end local v4    # "field":Ljava/lang/reflect/Field;
    :cond_2
    const/4 v3, 0x0

    goto :goto_2
.end method

.method public static findRawSuperTypes(Ljava/lang/Class;Ljava/lang/Class;Z)Ljava/util/List;
    .locals 2
    .param p2, "addClassItself"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 85
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "endBefore":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p0, :cond_0

    if-eq p0, p1, :cond_0

    const-class v1, Ljava/lang/Object;

    if-ne p0, v1, :cond_1

    .line 86
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 90
    :goto_0
    return-object v0

    .line 88
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 89
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    invoke-static {p0, p1, v0, p2}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->_addRawSuperTypes(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Collection;Z)V

    goto :goto_0
.end method

.method public static findSuperClasses(Ljava/lang/Class;Ljava/lang/Class;Z)Ljava/util/List;
    .locals 1
    .param p2, "addClassItself"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 102
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "endBefore":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 103
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    if-eqz p0, :cond_1

    if-eq p0, p1, :cond_1

    .line 104
    if-eqz p2, :cond_0

    .line 105
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 108
    if-ne p0, p1, :cond_2

    .line 114
    :cond_1
    return-object v0

    .line 111
    :cond_2
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static findSuperTypes(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;Z)Ljava/util/List;
    .locals 2
    .param p0, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p2, "addClassItself"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Ljava/lang/Class",
            "<*>;Z)",
            "Ljava/util/List",
            "<",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    .local p1, "endBefore":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/JavaType;->hasRawClass(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/JavaType;->hasRawClass(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 74
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 78
    :goto_0
    return-object v0

    .line 76
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 77
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/JavaType;>;"
    invoke-static {p0, p1, v0, p2}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->_addSuperTypes(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;Ljava/util/Collection;Z)V

    goto :goto_0
.end method

.method public static findSuperTypes(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 119
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "endBefore":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {p0, p1, v0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->findSuperTypes(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static findSuperTypes(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 124
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "endBefore":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->_addRawSuperTypes(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Collection;Z)V

    .line 125
    return-object p2
.end method

.method public static getClassDescription(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "classOrInstance"    # Ljava/lang/Object;

    .prologue
    .line 301
    if-nez p0, :cond_0

    .line 302
    const-string v1, "unknown"

    .line 306
    .end local p0    # "classOrInstance":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 304
    .restart local p0    # "classOrInstance":Ljava/lang/Object;
    :cond_0
    instance-of v1, p0, Ljava/lang/Class;

    if-eqz v1, :cond_1

    check-cast p0, Ljava/lang/Class;

    .end local p0    # "classOrInstance":Ljava/lang/Object;
    move-object v0, p0

    .line 306
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local p0    # "classOrInstance":Ljava/lang/Object;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .end local p0    # "classOrInstance":Ljava/lang/Object;
    move-result-object v1

    goto :goto_0

    .line 304
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local p0    # "classOrInstance":Ljava/lang/Object;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_1
.end method

.method public static getConstructors(Ljava/lang/Class;)[Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)[",
            "Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;"
        }
    .end annotation

    .prologue
    .line 410
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->_getMetadata(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/util/ClassUtil$ClassMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/util/ClassUtil$ClassMetadata;->getConstructors()[Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;

    move-result-object v0

    return-object v0
.end method

.method public static getDeclaredFields(Ljava/lang/Class;)[Ljava/lang/reflect/Field;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .prologue
    .line 389
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->_getMetadata(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/util/ClassUtil$ClassMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/util/ClassUtil$ClassMetadata;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    return-object v0
.end method

.method public static getDeclaredMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 396
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->_getMetadata(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/util/ClassUtil$ClassMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/util/ClassUtil$ClassMetadata;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method public static getDeclaringClass(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 421
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->isObjectOrPrimitive(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0
.end method

.method public static getEnclosingClass(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 443
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->isObjectOrPrimitive(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0
.end method

.method public static getGenericInterfaces(Ljava/lang/Class;)[Ljava/lang/reflect/Type;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .prologue
    .line 435
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->_getMetadata(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/util/ClassUtil$ClassMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/util/ClassUtil$ClassMetadata;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public static getGenericSuperclass(Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .prologue
    .line 428
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public static getOuterClass(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 229
    :try_start_0
    invoke-static {p0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->hasEnclosingMethod(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 236
    :cond_0
    :goto_0
    return-object v0

    .line 232
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 233
    invoke-static {p0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->getEnclosingClass(Ljava/lang/Class;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 235
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getPackageName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 375
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->_getMetadata(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/util/ClassUtil$ClassMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/util/ClassUtil$ClassMetadata;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 1
    .param p0, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 507
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 508
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_0

    .line 510
    :cond_0
    return-object p0
.end method

.method public static hasEnclosingMethod(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 382
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->_getMetadata(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/util/ClassUtil$ClassMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/util/ClassUtil$ClassMetadata;->hasEnclosingMethod()Z

    move-result v0

    return v0
.end method

.method public static hasGetterSignature(Ljava/lang/reflect/Method;)Z
    .locals 4
    .param p0, "m"    # Ljava/lang/reflect/Method;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 479
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 492
    :cond_0
    :goto_0
    return v1

    .line 483
    :cond_1
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 484
    .local v0, "pts":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-eqz v0, :cond_2

    array-length v2, v0

    if-nez v2, :cond_0

    .line 488
    :cond_2
    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_0

    .line 492
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isBogusClass(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 1003
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Ljava/lang/Void;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_0

    const-class v0, Lcom/fasterxml/jackson/databind/annotation/NoClass;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCollectionMapOrArray(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x1

    .line 282
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 285
    :cond_0
    :goto_0
    return v0

    .line 283
    :cond_1
    const-class v1, Ljava/util/Collection;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 284
    const-class v1, Ljava/util/Map;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 285
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isConcrete(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 270
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    .line 271
    .local v0, "mod":I
    and-int/lit16 v1, v0, 0x600

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isConcrete(Ljava/lang/reflect/Member;)Z
    .locals 2
    .param p0, "member"    # Ljava/lang/reflect/Member;

    .prologue
    .line 276
    invoke-interface {p0}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v0

    .line 277
    .local v0, "mod":I
    and-int/lit16 v1, v0, 0x600

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isJacksonStdImpl(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 999
    .local p0, "implClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lcom/fasterxml/jackson/databind/annotation/JacksonStdImpl;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isJacksonStdImpl(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "impl"    # Ljava/lang/Object;

    .prologue
    .line 995
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->isJacksonStdImpl(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLocalType(Ljava/lang/Class;Z)Ljava/lang/String;
    .locals 1
    .param p1, "allowNonStatic"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 200
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-static {p0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->hasEnclosingMethod(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    const-string v0, "local/anonymous"

    .line 218
    :goto_0
    return-object v0

    .line 208
    :cond_0
    if-nez p1, :cond_1

    .line 209
    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 210
    invoke-static {p0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->getEnclosingClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 211
    const-string v0, "non-static member class"
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 217
    :catch_0
    move-exception v0

    .line 218
    :cond_1
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 216
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static isNonStaticInnerClass(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 1008
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->getEnclosingClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isObjectOrPrimitive(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 1016
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lcom/fasterxml/jackson/databind/util/ClassUtil;->CLS_OBJECT:Ljava/lang/Class;

    if-eq p0, v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isProxyType(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 254
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 256
    .local v0, "name":Ljava/lang/String;
    const-string v1, "net.sf.cglib.proxy."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "org.hibernate.proxy."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 258
    :cond_0
    const/4 v1, 0x1

    .line 261
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static primitiveType(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 791
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 819
    .end local p0    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-object p0

    .line 795
    .restart local p0    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    const-class v0, Ljava/lang/Integer;

    if-ne p0, v0, :cond_1

    .line 796
    sget-object p0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 798
    :cond_1
    const-class v0, Ljava/lang/Long;

    if-ne p0, v0, :cond_2

    .line 799
    sget-object p0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 801
    :cond_2
    const-class v0, Ljava/lang/Boolean;

    if-ne p0, v0, :cond_3

    .line 802
    sget-object p0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 804
    :cond_3
    const-class v0, Ljava/lang/Double;

    if-ne p0, v0, :cond_4

    .line 805
    sget-object p0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 807
    :cond_4
    const-class v0, Ljava/lang/Float;

    if-ne p0, v0, :cond_5

    .line 808
    sget-object p0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 810
    :cond_5
    const-class v0, Ljava/lang/Byte;

    if-ne p0, v0, :cond_6

    .line 811
    sget-object p0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 813
    :cond_6
    const-class v0, Ljava/lang/Short;

    if-ne p0, v0, :cond_7

    .line 814
    sget-object p0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 816
    :cond_7
    const-class v0, Ljava/lang/Character;

    if-ne p0, v0, :cond_8

    .line 817
    sget-object p0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 819
    :cond_8
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static throwAsIAE(Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 549
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->throwAsIAE(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 550
    return-void
.end method

.method public static throwAsIAE(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1
    .param p0, "t"    # Ljava/lang/Throwable;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 559
    instance-of v0, p0, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_0

    .line 560
    check-cast p0, Ljava/lang/RuntimeException;

    .end local p0    # "t":Ljava/lang/Throwable;
    throw p0

    .line 562
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_0
    instance-of v0, p0, Ljava/lang/Error;

    if-eqz v0, :cond_1

    .line 563
    check-cast p0, Ljava/lang/Error;

    .end local p0    # "t":Ljava/lang/Throwable;
    throw p0

    .line 565
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static throwRootCause(Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 521
    invoke-static {p0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    .line 522
    instance-of v0, p0, Ljava/lang/Exception;

    if-eqz v0, :cond_0

    .line 523
    check-cast p0, Ljava/lang/Exception;

    .end local p0    # "t":Ljava/lang/Throwable;
    throw p0

    .line 525
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_0
    check-cast p0, Ljava/lang/Error;

    .end local p0    # "t":Ljava/lang/Throwable;
    throw p0
.end method

.method public static throwRootCauseIfIOE(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 1
    .param p0, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 536
    invoke-static {p0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    .line 537
    instance-of v0, p0, Ljava/io/IOException;

    if-eqz v0, :cond_0

    .line 538
    check-cast p0, Ljava/io/IOException;

    .end local p0    # "t":Ljava/lang/Throwable;
    throw p0

    .line 540
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_0
    return-object p0
.end method

.method public static unwrapAndThrowAsIAE(Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 575
    invoke-static {p0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->throwAsIAE(Ljava/lang/Throwable;)V

    .line 576
    return-void
.end method

.method public static unwrapAndThrowAsIAE(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1
    .param p0, "t"    # Ljava/lang/Throwable;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 585
    invoke-static {p0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->throwAsIAE(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 586
    return-void
.end method

.method public static wrapperType(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 756
    .local p0, "primitiveType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_0

    .line 757
    const-class v0, Ljava/lang/Integer;

    .line 778
    :goto_0
    return-object v0

    .line 759
    :cond_0
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_1

    .line 760
    const-class v0, Ljava/lang/Long;

    goto :goto_0

    .line 762
    :cond_1
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_2

    .line 763
    const-class v0, Ljava/lang/Boolean;

    goto :goto_0

    .line 765
    :cond_2
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_3

    .line 766
    const-class v0, Ljava/lang/Double;

    goto :goto_0

    .line 768
    :cond_3
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_4

    .line 769
    const-class v0, Ljava/lang/Float;

    goto :goto_0

    .line 771
    :cond_4
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_5

    .line 772
    const-class v0, Ljava/lang/Byte;

    goto :goto_0

    .line 774
    :cond_5
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_6

    .line 775
    const-class v0, Ljava/lang/Short;

    goto :goto_0

    .line 777
    :cond_6
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_7

    .line 778
    const-class v0, Ljava/lang/Character;

    goto :goto_0

    .line 780
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a primitive type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
