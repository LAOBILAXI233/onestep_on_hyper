.class public abstract Lcom/fasterxml/jackson/core/io/InputDecorator;
.super Ljava/lang/Object;
.source "InputDecorator.java"

.implements Ljava/io/Serializable;


.field private static final serialVersionUID:J = 0x1L


.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public decorate(Lcom/fasterxml/jackson/core/io/IOContext;Ljava/io/DataInput;)Ljava/io/DataInput;
    .locals 1
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/core/io/IOContext;
    .param p2, "input"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract decorate(Lcom/fasterxml/jackson/core/io/IOContext;Ljava/io/InputStream;)Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract decorate(Lcom/fasterxml/jackson/core/io/IOContext;[BII)Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract decorate(Lcom/fasterxml/jackson/core/io/IOContext;Ljava/io/Reader;)Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
