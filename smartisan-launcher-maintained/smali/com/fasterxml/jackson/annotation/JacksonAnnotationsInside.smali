.class public interface abstract annotation Lcom/fasterxml/jackson/annotation/JacksonAnnotationsInside;
.super Ljava/lang/Object;
.source "JacksonAnnotationsInside.java"

.implements Ljava/lang/annotation/Annotation;


.annotation runtime Lcom/fasterxml/jackson/annotation/JacksonAnnotation;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->ANNOTATION_TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation
