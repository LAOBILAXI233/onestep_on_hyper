.class public abstract Lcom/fasterxml/jackson/databind/introspect/ConcreteBeanPropertyBase;
.super Ljava/lang/Object;
.source "ConcreteBeanPropertyBase.java"

.implements Lcom/fasterxml/jackson/databind/BeanProperty;
.implements Ljava/io/Serializable;


.field private static final serialVersionUID:J = 0x1L


.field protected final _metadata:Lcom/fasterxml/jackson/databind/PropertyMetadata;

.field protected transient _propertyFormat:Lcom/fasterxml/jackson/annotation/JsonFormat$Value;


.method protected constructor <init>(Lcom/fasterxml/jackson/databind/PropertyMetadata;)V
    .locals 0
    .param p1, "md"    # Lcom/fasterxml/jackson/databind/PropertyMetadata;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    if-nez p1, :cond_0

    sget-object p1, Lcom/fasterxml/jackson/databind/PropertyMetadata;->STD_REQUIRED_OR_OPTIONAL:Lcom/fasterxml/jackson/databind/PropertyMetadata;

    .end local p1    # "md":Lcom/fasterxml/jackson/databind/PropertyMetadata;
    :cond_0
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/ConcreteBeanPropertyBase;->_metadata:Lcom/fasterxml/jackson/databind/PropertyMetadata;

    .line 37
    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/introspect/ConcreteBeanPropertyBase;)V
    .locals 1
    .param p1, "src"    # Lcom/fasterxml/jackson/databind/introspect/ConcreteBeanPropertyBase;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/introspect/ConcreteBeanPropertyBase;->_metadata:Lcom/fasterxml/jackson/databind/PropertyMetadata;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/ConcreteBeanPropertyBase;->_metadata:Lcom/fasterxml/jackson/databind/PropertyMetadata;

    .line 41
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/introspect/ConcreteBeanPropertyBase;->_propertyFormat:Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/ConcreteBeanPropertyBase;->_propertyFormat:Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    .line 42
    return-void
.end method


.method public final findFormatOverrides(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    .locals 2
    .param p1, "intr"    # Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 56
    const/4 v0, 0x0

    .line 57
    .local v0, "f":Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    if-eqz p1, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/ConcreteBeanPropertyBase;->getMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v1

    .line 59
    .local v1, "member":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    if-eqz v1, :cond_0

    .line 60
    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findFormat(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    move-result-object v0

    .line 63
    .end local v1    # "member":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    :cond_0
    if-nez v0, :cond_1

    .line 64
    sget-object v0, Lcom/fasterxml/jackson/databind/introspect/ConcreteBeanPropertyBase;->EMPTY_FORMAT:Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    .line 66
    :cond_1
    return-object v0
.end method

.method public findPropertyFormat(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Ljava/lang/Class;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/annotation/JsonFormat$Value;"
        }
    .end annotation

    .prologue
    .line 74
    .local p1, "config":Lcom/fasterxml/jackson/databind/cfg/MapperConfig;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<*>;"
    .local p2, "baseType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/ConcreteBeanPropertyBase;->_propertyFormat:Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    .line 75
    .local v2, "v":Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    if-nez v2, :cond_1

    .line 76
    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getDefaultPropertyFormat(Ljava/lang/Class;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    move-result-object v3

    .line 77
    .local v3, "v1":Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    const/4 v4, 0x0

    .line 78
    .local v4, "v2":Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v0

    .line 79
    .local v0, "intr":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/ConcreteBeanPropertyBase;->getMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v1

    .line 81
    .local v1, "member":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    if-eqz v1, :cond_0

    .line 82
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findFormat(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    move-result-object v4

    .line 85
    .end local v1    # "member":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    :cond_0
    if-nez v3, :cond_3

    .line 86
    if-nez v4, :cond_2

    sget-object v2, Lcom/fasterxml/jackson/databind/introspect/ConcreteBeanPropertyBase;->EMPTY_FORMAT:Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    .line 90
    :goto_0
    iput-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/ConcreteBeanPropertyBase;->_propertyFormat:Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    .line 92
    .end local v0    # "intr":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .end local v3    # "v1":Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    .end local v4    # "v2":Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    :cond_1
    return-object v2

    .restart local v0    # "intr":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .restart local v3    # "v1":Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    .restart local v4    # "v2":Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    :cond_2
    move-object v2, v4

    .line 86
    goto :goto_0

    .line 88
    :cond_3
    if-nez v4, :cond_4

    move-object v2, v3

    :goto_1
    goto :goto_0

    :cond_4
    invoke-virtual {v3, v4}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->withOverrides(Lcom/fasterxml/jackson/annotation/JsonFormat$Value;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    move-result-object v2

    goto :goto_1
.end method

.method public findPropertyInclusion(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Ljava/lang/Class;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/annotation/JsonInclude$Value;"
        }
    .end annotation

    .prologue
    .line 98
    .local p1, "config":Lcom/fasterxml/jackson/databind/cfg/MapperConfig;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<*>;"
    .local p2, "baseType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getDefaultPropertyInclusion(Ljava/lang/Class;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    move-result-object v3

    .line 99
    .local v3, "v0":Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v0

    .line 100
    .local v0, "intr":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/ConcreteBeanPropertyBase;->getMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v1

    .line 101
    .local v1, "member":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 108
    .end local v3    # "v0":Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    :cond_0
    :goto_0
    return-object v3

    .line 104
    .restart local v3    # "v0":Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    :cond_1
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findPropertyInclusion(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    move-result-object v2

    .line 105
    .local v2, "v":Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    if-eqz v2, :cond_0

    .line 108
    invoke-virtual {v3, v2}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->withOverrides(Lcom/fasterxml/jackson/annotation/JsonInclude$Value;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    move-result-object v3

    goto :goto_0
.end method

.method public getMetadata()Lcom/fasterxml/jackson/databind/PropertyMetadata;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/ConcreteBeanPropertyBase;->_metadata:Lcom/fasterxml/jackson/databind/PropertyMetadata;

    return-object v0
.end method

.method public isRequired()Z
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/ConcreteBeanPropertyBase;->_metadata:Lcom/fasterxml/jackson/databind/PropertyMetadata;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/PropertyMetadata;->isRequired()Z

    move-result v0

    return v0
.end method

.method public isVirtual()Z
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    return v0
.end method
