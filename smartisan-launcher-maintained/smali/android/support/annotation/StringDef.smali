.class public interface abstract annotation Landroid/support/annotation/StringDef;
.super Ljava/lang/Object;
.source "StringDef.java"

.implements Ljava/lang/annotation/Annotation;


.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Landroid/support/annotation/StringDef;
        value = {}
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->ANNOTATION_TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation


.method public abstract value()[Ljava/lang/String;
.end method
