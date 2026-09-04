.class public abstract Lcom/fasterxml/jackson/databind/introspect/Annotated;
.super Ljava/lang/Object;
.source "Annotated.java"


.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public abstract annotations()Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method protected abstract getAllAnnotations()Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
.end method

.method public abstract getAnnotated()Ljava/lang/reflect/AnnotatedElement;
.end method

.method public abstract getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TA;>;)TA;"
        }
    .end annotation
.end method

.method public getGenericType()Ljava/lang/reflect/Type;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->getRawType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getModifiers()I
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getRawType()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract getType()Lcom/fasterxml/jackson/databind/JavaType;
.end method

.method public final getType(Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1
    .param p1, "bogus"    # Lcom/fasterxml/jackson/databind/type/TypeBindings;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public abstract hasAnnotation(Ljava/lang/Class;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation
.end method

.method public abstract hasOneOf([Ljava/lang/Class;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract hashCode()I
.end method

.method public final isPublic()Z
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    return v0
.end method

.method public abstract toString()Ljava/lang/String;
.end method

.method public abstract withAnnotations(Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)Lcom/fasterxml/jackson/databind/introspect/Annotated;
.end method

.method public final withFallBackAnnotationsFrom(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/introspect/Annotated;
    .locals 2
    .param p1, "annotated"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->getAllAnnotations()Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v0

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->getAllAnnotations()Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;->merge(Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->withAnnotations(Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)Lcom/fasterxml/jackson/databind/introspect/Annotated;

    move-result-object v0

    return-object v0
.end method
