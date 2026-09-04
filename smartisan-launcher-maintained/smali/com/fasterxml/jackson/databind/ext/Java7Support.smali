.class public abstract Lcom/fasterxml/jackson/databind/ext/Java7Support;
.super Ljava/lang/Object;
.source "Java7Support.java"


.field private static final IMPL:Lcom/fasterxml/jackson/databind/ext/Java7Support;


.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 21
    const/4 v2, 0x0

    .line 23
    .local v2, "impl":Lcom/fasterxml/jackson/databind/ext/Java7Support;
    :try_start_0
    const-string v4, "com.fasterxml.jackson.databind.ext.Java7SupportImpl"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 24
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/fasterxml/jackson/databind/ext/Java7Support;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    sput-object v2, Lcom/fasterxml/jackson/databind/ext/Java7Support;->IMPL:Lcom/fasterxml/jackson/databind/ext/Java7Support;

    .line 31
    return-void

    .line 25
    :catch_0
    move-exception v3

    .line 27
    .local v3, "t":Ljava/lang/Throwable;
    const-class v4, Lcom/fasterxml/jackson/databind/ext/Java7Support;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v4

    const-string v5, "Unable to load JDK7 types (annotations, java.nio.file.Path): no Java7 support added"

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static instance()Lcom/fasterxml/jackson/databind/ext/Java7Support;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/fasterxml/jackson/databind/ext/Java7Support;->IMPL:Lcom/fasterxml/jackson/databind/ext/Java7Support;

    return-object v0
.end method


.method public abstract findConstructorName(Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;)Lcom/fasterxml/jackson/databind/PropertyName;
.end method

.method public abstract findTransient(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Boolean;
.end method

.method public abstract getClassJavaNioFilePath()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract getDeserializerForJavaNioFilePath(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract getSerializerForJavaNioFilePath(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract hasCreatorAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Boolean;
.end method
