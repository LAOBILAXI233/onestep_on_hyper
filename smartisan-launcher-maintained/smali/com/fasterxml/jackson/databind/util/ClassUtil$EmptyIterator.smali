.class final Lcom/fasterxml/jackson/databind/util/ClassUtil$EmptyIterator;
.super Ljava/lang/Object;
.source "ClassUtil.java"

.implements Ljava/util/Iterator;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/util/ClassUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EmptyIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27
    .local p0, "this":Lcom/fasterxml/jackson/databind/util/ClassUtil$EmptyIterator;, "Lcom/fasterxml/jackson/databind/util/ClassUtil$EmptyIterator<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/fasterxml/jackson/databind/util/ClassUtil$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/fasterxml/jackson/databind/util/ClassUtil$1;

    .prologue
    .line 27
    .local p0, "this":Lcom/fasterxml/jackson/databind/util/ClassUtil$EmptyIterator;, "Lcom/fasterxml/jackson/databind/util/ClassUtil$EmptyIterator<TT;>;"
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/util/ClassUtil$EmptyIterator;-><init>()V

    return-void
.end method


.method public hasNext()Z
    .locals 1

    .prologue
    .line 28
    .local p0, "this":Lcom/fasterxml/jackson/databind/util/ClassUtil$EmptyIterator;, "Lcom/fasterxml/jackson/databind/util/ClassUtil$EmptyIterator<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 29
    .local p0, "this":Lcom/fasterxml/jackson/databind/util/ClassUtil$EmptyIterator;, "Lcom/fasterxml/jackson/databind/util/ClassUtil$EmptyIterator<TT;>;"
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 30
    .local p0, "this":Lcom/fasterxml/jackson/databind/util/ClassUtil$EmptyIterator;, "Lcom/fasterxml/jackson/databind/util/ClassUtil$EmptyIterator<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
