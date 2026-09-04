.class final Lcom/fasterxml/jackson/databind/introspect/AnnotatedField$Serialization;
.super Ljava/lang/Object;
.source "AnnotatedField.java"

.implements Ljava/io/Serializable;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Serialization"
.end annotation


.field private static final serialVersionUID:J = 0x1L


.field protected clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field protected name:Ljava/lang/String;


.method public constructor <init>(Ljava/lang/reflect/Field;)V
    .locals 1
    .param p1, "f"    # Ljava/lang/reflect/Field;

    .prologue
    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField$Serialization;->clazz:Ljava/lang/Class;

    .line 196
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField$Serialization;->name:Ljava/lang/String;

    .line 198
    return-void
.end method
