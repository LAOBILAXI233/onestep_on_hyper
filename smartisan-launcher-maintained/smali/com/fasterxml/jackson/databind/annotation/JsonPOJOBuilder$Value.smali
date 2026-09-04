.class public Lcom/fasterxml/jackson/databind/annotation/JsonPOJOBuilder$Value;
.super Ljava/lang/Object;
.source "JsonPOJOBuilder.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/annotation/JsonPOJOBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Value"
.end annotation


.field public final buildMethodName:Ljava/lang/String;

.field public final withPrefix:Ljava/lang/String;


.method public constructor <init>(Lcom/fasterxml/jackson/databind/annotation/JsonPOJOBuilder;)V
    .locals 1
    .param p1, "ann"    # Lcom/fasterxml/jackson/databind/annotation/JsonPOJOBuilder;

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-interface {p1}, Lcom/fasterxml/jackson/databind/annotation/JsonPOJOBuilder;->buildMethodName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/annotation/JsonPOJOBuilder$Value;->buildMethodName:Ljava/lang/String;

    .line 79
    invoke-interface {p1}, Lcom/fasterxml/jackson/databind/annotation/JsonPOJOBuilder;->withPrefix()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/annotation/JsonPOJOBuilder$Value;->withPrefix:Ljava/lang/String;

    .line 80
    return-void
.end method
