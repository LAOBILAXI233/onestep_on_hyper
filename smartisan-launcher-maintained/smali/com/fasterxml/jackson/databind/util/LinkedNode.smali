.class public final Lcom/fasterxml/jackson/databind/util/LinkedNode;
.super Ljava/lang/Object;
.source "LinkedNode.java"


.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


.field private next:Lcom/fasterxml/jackson/databind/util/LinkedNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/util/LinkedNode",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


.method public constructor <init>(Ljava/lang/Object;Lcom/fasterxml/jackson/databind/util/LinkedNode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/fasterxml/jackson/databind/util/LinkedNode",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 15
    .local p0, "this":Lcom/fasterxml/jackson/databind/util/LinkedNode;, "Lcom/fasterxml/jackson/databind/util/LinkedNode<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    .local p2, "next":Lcom/fasterxml/jackson/databind/util/LinkedNode;, "Lcom/fasterxml/jackson/databind/util/LinkedNode<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/LinkedNode;->value:Ljava/lang/Object;

    .line 17
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/util/LinkedNode;->next:Lcom/fasterxml/jackson/databind/util/LinkedNode;

    .line 18
    return-void
.end method

.method public static contains(Lcom/fasterxml/jackson/databind/util/LinkedNode;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ST:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fasterxml/jackson/databind/util/LinkedNode",
            "<TST;>;TST;)Z"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "node":Lcom/fasterxml/jackson/databind/util/LinkedNode;, "Lcom/fasterxml/jackson/databind/util/LinkedNode<TST;>;"
    .local p1, "value":Ljava/lang/Object;, "TST;"
    :goto_0
    if-eqz p0, :cond_1

    .line 45
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/LinkedNode;->value()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 46
    const/4 v0, 0x1

    .line 50
    :goto_1
    return v0

    .line 48
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/LinkedNode;->next()Lcom/fasterxml/jackson/databind/util/LinkedNode;

    move-result-object p0

    goto :goto_0

    .line 50
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


.method public linkNext(Lcom/fasterxml/jackson/databind/util/LinkedNode;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/util/LinkedNode",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p0, "this":Lcom/fasterxml/jackson/databind/util/LinkedNode;, "Lcom/fasterxml/jackson/databind/util/LinkedNode<TT;>;"
    .local p1, "n":Lcom/fasterxml/jackson/databind/util/LinkedNode;, "Lcom/fasterxml/jackson/databind/util/LinkedNode<TT;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/LinkedNode;->next:Lcom/fasterxml/jackson/databind/util/LinkedNode;

    if-eqz v0, :cond_0

    .line 23
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 25
    :cond_0
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/LinkedNode;->next:Lcom/fasterxml/jackson/databind/util/LinkedNode;

    .line 26
    return-void
.end method

.method public next()Lcom/fasterxml/jackson/databind/util/LinkedNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fasterxml/jackson/databind/util/LinkedNode",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 28
    .local p0, "this":Lcom/fasterxml/jackson/databind/util/LinkedNode;, "Lcom/fasterxml/jackson/databind/util/LinkedNode<TT;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/LinkedNode;->next:Lcom/fasterxml/jackson/databind/util/LinkedNode;

    return-object v0
.end method

.method public value()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "this":Lcom/fasterxml/jackson/databind/util/LinkedNode;, "Lcom/fasterxml/jackson/databind/util/LinkedNode<TT;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/LinkedNode;->value:Ljava/lang/Object;

    return-object v0
.end method
