.class public Lcom/fasterxml/jackson/databind/BeanProperty$Std;
.super Ljava/lang/Object;
.source "BeanProperty.java"

.implements Lcom/fasterxml/jackson/databind/BeanProperty;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/BeanProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Std"
.end annotation


.field protected final _contextAnnotations:Lcom/fasterxml/jackson/databind/util/Annotations;

.field protected final _member:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

.field protected final _metadata:Lcom/fasterxml/jackson/databind/PropertyMetadata;

.field protected final _name:Lcom/fasterxml/jackson/databind/PropertyName;

.field protected final _type:Lcom/fasterxml/jackson/databind/JavaType;

.field protected final _wrapperName:Lcom/fasterxml/jackson/databind/PropertyName;


.method public constructor <init>(Lcom/fasterxml/jackson/databind/BeanProperty$Std;Lcom/fasterxml/jackson/databind/JavaType;)V
    .locals 7
    .param p1, "base"    # Lcom/fasterxml/jackson/databind/BeanProperty$Std;
    .param p2, "newType"    # Lcom/fasterxml/jackson/databind/JavaType;

    .prologue
    .line 236
    iget-object v1, p1, Lcom/fasterxml/jackson/databind/BeanProperty$Std;->_name:Lcom/fasterxml/jackson/databind/PropertyName;

    iget-object v3, p1, Lcom/fasterxml/jackson/databind/BeanProperty$Std;->_wrapperName:Lcom/fasterxml/jackson/databind/PropertyName;

    iget-object v4, p1, Lcom/fasterxml/jackson/databind/BeanProperty$Std;->_contextAnnotations:Lcom/fasterxml/jackson/databind/util/Annotations;

    iget-object v5, p1, Lcom/fasterxml/jackson/databind/BeanProperty$Std;->_member:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    iget-object v6, p1, Lcom/fasterxml/jackson/databind/BeanProperty$Std;->_metadata:Lcom/fasterxml/jackson/databind/PropertyMetadata;

    move-object v0, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/BeanProperty$Std;-><init>(Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/util/Annotations;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/PropertyMetadata;)V

    .line 237
    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/util/Annotations;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/PropertyMetadata;)V
    .locals 0
    .param p1, "name"    # Lcom/fasterxml/jackson/databind/PropertyName;
    .param p2, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p3, "wrapperName"    # Lcom/fasterxml/jackson/databind/PropertyName;
    .param p4, "contextAnnotations"    # Lcom/fasterxml/jackson/databind/util/Annotations;
    .param p5, "member"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .param p6, "metadata"    # Lcom/fasterxml/jackson/databind/PropertyMetadata;

    .prologue
    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/BeanProperty$Std;->_name:Lcom/fasterxml/jackson/databind/PropertyName;

    .line 225
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/BeanProperty$Std;->_type:Lcom/fasterxml/jackson/databind/JavaType;

    .line 226
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/BeanProperty$Std;->_wrapperName:Lcom/fasterxml/jackson/databind/PropertyName;

    .line 227
    iput-object p6, p0, Lcom/fasterxml/jackson/databind/BeanProperty$Std;->_metadata:Lcom/fasterxml/jackson/databind/PropertyMetadata;

    .line 228
    iput-object p5, p0, Lcom/fasterxml/jackson/databind/BeanProperty$Std;->_member:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    .line 229
    iput-object p4, p0, Lcom/fasterxml/jackson/databind/BeanProperty$Std;->_contextAnnotations:Lcom/fasterxml/jackson/databind/util/Annotations;

    .line 230
    return-void
.end method


.method public depositSchemaProperty(Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonObjectFormatVisitor;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 3
    .param p1, "objectVisitor"    # Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonObjectFormatVisitor;
    .param p2, "provider"    # Lcom/fasterxml/jackson/databind/SerializerProvider;

    .prologue
    .line 314
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Instances of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " should not get visited"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public findFormatOverrides(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    .locals 2
    .param p1, "intr"    # Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 256
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/BeanProperty$Std;->_member:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 257
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/BeanProperty$Std;->_member:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findFormat(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    move-result-object v0

    .line 258
    .local v0, "v":Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    if-eqz v0, :cond_0

    .line 262
    .end local v0    # "v":Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/databind/BeanProperty$Std;->EMPTY_FORMAT:Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    goto :goto_0
.end method

.method public findPropertyFormat(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Ljava/lang/Class;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    .locals 4
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
    .line 267
    .local p1, "config":Lcom/fasterxml/jackson/databind/cfg/MapperConfig;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<*>;"
    .local p2, "baseType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getDefaultPropertyFormat(Ljava/lang/Class;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    move-result-object v2

    .line 268
    .local v2, "v0":Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v0

    .line 269
    .local v0, "intr":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/BeanProperty$Std;->_member:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    if-nez v3, :cond_1

    .line 276
    .end local v2    # "v0":Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    :cond_0
    :goto_0
    return-object v2

    .line 272
    .restart local v2    # "v0":Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    :cond_1
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/BeanProperty$Std;->_member:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    invoke-virtual {v0, v3}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findFormat(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    move-result-object v1

    .line 273
    .local v1, "v":Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    if-eqz v1, :cond_0

    .line 276
    invoke-virtual {v2, v1}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->withOverrides(Lcom/fasterxml/jackson/annotation/JsonFormat$Value;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    move-result-object v2

    goto :goto_0
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
    .line 282
    .local p1, "config":Lcom/fasterxml/jackson/databind/cfg/MapperConfig;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<*>;"
    .local p2, "baseType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getDefaultPropertyInclusion(Ljava/lang/Class;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    move-result-object v2

    .line 283
    .local v2, "v0":Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v0

    .line 284
    .local v0, "intr":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/BeanProperty$Std;->_member:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    if-nez v3, :cond_1

    .line 291
    .end local v2    # "v0":Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    :cond_0
    :goto_0
    return-object v2

    .line 287
    .restart local v2    # "v0":Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    :cond_1
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/BeanProperty$Std;->_member:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    invoke-virtual {v0, v3}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findPropertyInclusion(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    move-result-object v1

    .line 288
    .local v1, "v":Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    if-eqz v1, :cond_0

    .line 291
    invoke-virtual {v2, v1}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->withOverrides(Lcom/fasterxml/jackson/annotation/JsonInclude$Value;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    move-result-object v2

    goto :goto_0
.end method

.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TA;>;)TA;"
        }
    .end annotation

    .prologue
    .line 245
    .local p1, "acls":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/BeanProperty$Std;->_member:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/BeanProperty$Std;->_member:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    goto :goto_0
.end method

.method public getContextAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TA;>;)TA;"
        }
    .end annotation

    .prologue
    .line 250
    .local p1, "acls":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/BeanProperty$Std;->_contextAnnotations:Lcom/fasterxml/jackson/databind/util/Annotations;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/BeanProperty$Std;->_contextAnnotations:Lcom/fasterxml/jackson/databind/util/Annotations;

    invoke-interface {v0, p1}, Lcom/fasterxml/jackson/databind/util/Annotations;->get(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    goto :goto_0
.end method

.method public getFullName()Lcom/fasterxml/jackson/databind/PropertyName;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/BeanProperty$Std;->_name:Lcom/fasterxml/jackson/databind/PropertyName;

    return-object v0
.end method

.method public getMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/BeanProperty$Std;->_member:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    return-object v0
.end method

.method public getMetadata()Lcom/fasterxml/jackson/databind/PropertyMetadata;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/BeanProperty$Std;->_metadata:Lcom/fasterxml/jackson/databind/PropertyMetadata;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/BeanProperty$Std;->_name:Lcom/fasterxml/jackson/databind/PropertyName;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/PropertyName;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/BeanProperty$Std;->_type:Lcom/fasterxml/jackson/databind/JavaType;

    return-object v0
.end method

.method public getWrapperName()Lcom/fasterxml/jackson/databind/PropertyName;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/BeanProperty$Std;->_wrapperName:Lcom/fasterxml/jackson/databind/PropertyName;

    return-object v0
.end method

.method public isRequired()Z
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/BeanProperty$Std;->_metadata:Lcom/fasterxml/jackson/databind/PropertyMetadata;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/PropertyMetadata;->isRequired()Z

    move-result v0

    return v0
.end method

.method public isVirtual()Z
    .locals 1

    .prologue
    .line 303
    const/4 v0, 0x0

    return v0
.end method

.method public withType(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/BeanProperty$Std;
    .locals 1
    .param p1, "type"    # Lcom/fasterxml/jackson/databind/JavaType;

    .prologue
    .line 240
    new-instance v0, Lcom/fasterxml/jackson/databind/BeanProperty$Std;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/BeanProperty$Std;-><init>(Lcom/fasterxml/jackson/databind/BeanProperty$Std;Lcom/fasterxml/jackson/databind/JavaType;)V

    return-object v0
.end method
