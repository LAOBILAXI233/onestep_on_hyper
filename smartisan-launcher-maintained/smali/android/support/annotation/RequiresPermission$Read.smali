.class public interface abstract annotation Landroid/support/annotation/RequiresPermission$Read;
.super Ljava/lang/Object;
.source "RequiresPermission.java"

.implements Ljava/lang/annotation/Annotation;


.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Landroid/support/annotation/RequiresPermission$Read;
        value = .subannotation Landroid/support/annotation/RequiresPermission;
        .end subannotation
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/annotation/RequiresPermission;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "Read"
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->PARAMETER:Ljava/lang/annotation/ElementType;
    }
.end annotation


.method public abstract value()Landroid/support/annotation/RequiresPermission;
.end method
