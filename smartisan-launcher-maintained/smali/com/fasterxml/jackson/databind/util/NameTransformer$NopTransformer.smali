.class public final Lcom/fasterxml/jackson/databind/util/NameTransformer$NopTransformer;
.super Lcom/fasterxml/jackson/databind/util/NameTransformer;
.source "NameTransformer.java"

.implements Ljava/io/Serializable;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/util/NameTransformer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "NopTransformer"
.end annotation


.field private static final serialVersionUID:J = 0x1L


.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/util/NameTransformer;-><init>()V

    return-void
.end method


.method public reverse(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "transformed"    # Ljava/lang/String;

    .prologue
    .line 29
    return-object p1
.end method

.method public transform(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 24
    return-object p1
.end method
