.class public interface abstract annotation Lcom/smartisanos/home/net/ActionType;
.super Ljava/lang/Object;
.source "ActionType.java"

.implements Ljava/lang/annotation/Annotation;


.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;
    }
.end annotation


.method public abstract name()Ljava/lang/String;
.end method
