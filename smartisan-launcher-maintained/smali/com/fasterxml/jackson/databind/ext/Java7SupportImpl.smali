.class public Lcom/fasterxml/jackson/databind/ext/Java7SupportImpl;
.super Lcom/fasterxml/jackson/databind/ext/Java7Support;
.source "Java7SupportImpl.java"


.field private final _bogus:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/ext/Java7Support;-><init>()V

    .line 24
    const-class v0, Ljava/beans/Transient;

    .line 25
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Ljava/beans/ConstructorProperties;

    .line 26
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ext/Java7SupportImpl;->_bogus:Ljava/lang/Class;

    .line 27
    return-void
.end method


.method public findConstructorName(Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;)Lcom/fasterxml/jackson/databind/PropertyName;
    .locals 5
    .param p1, "p"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    .prologue
    .line 73
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;->getOwner()Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    move-result-object v0

    .line 74
    .local v0, "ctor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    if-eqz v0, :cond_0

    .line 75
    const-class v4, Ljava/beans/ConstructorProperties;

    invoke-virtual {v0, v4}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Ljava/beans/ConstructorProperties;

    .line 76
    .local v3, "props":Ljava/beans/ConstructorProperties;
    if-eqz v3, :cond_0

    .line 77
    invoke-interface {v3}, Ljava/beans/ConstructorProperties;->value()[Ljava/lang/String;

    move-result-object v2

    .line 78
    .local v2, "names":[Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;->getIndex()I

    move-result v1

    .line 79
    .local v1, "ix":I
    array-length v4, v2

    if-ge v1, v4, :cond_0

    .line 80
    aget-object v4, v2, v1

    invoke-static {v4}, Lcom/fasterxml/jackson/databind/PropertyName;->construct(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v4

    .line 84
    .end local v1    # "ix":I
    .end local v2    # "names":[Ljava/lang/String;
    .end local v3    # "props":Ljava/beans/ConstructorProperties;
    :goto_0
    return-object v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public findTransient(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "a"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .prologue
    .line 52
    const-class v1, Ljava/beans/Transient;

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Ljava/beans/Transient;

    .line 53
    .local v0, "t":Ljava/beans/Transient;
    if-eqz v0, :cond_0

    .line 54
    invoke-interface {v0}, Ljava/beans/Transient;->value()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 56
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getClassJavaNioFilePath()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 31
    const-class v0, Ljava/nio/file/Path;

    return-object v0
.end method

.method public getDeserializerForJavaNioFilePath(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 36
    .local p1, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Ljava/nio/file/Path;

    if-ne p1, v0, :cond_0

    .line 37
    new-instance v0, Lcom/fasterxml/jackson/databind/ext/NioPathDeserializer;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/ext/NioPathDeserializer;-><init>()V

    .line 39
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSerializerForJavaNioFilePath(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 44
    .local p1, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Ljava/nio/file/Path;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    new-instance v0, Lcom/fasterxml/jackson/databind/ext/NioPathSerializer;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/ext/NioPathSerializer;-><init>()V

    .line 47
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCreatorAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "a"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .prologue
    .line 61
    const-class v1, Ljava/beans/ConstructorProperties;

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Ljava/beans/ConstructorProperties;

    .line 64
    .local v0, "props":Ljava/beans/ConstructorProperties;
    if-eqz v0, :cond_0

    .line 65
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 67
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
