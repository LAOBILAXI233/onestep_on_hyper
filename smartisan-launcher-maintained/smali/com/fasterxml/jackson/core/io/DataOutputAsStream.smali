.class public Lcom/fasterxml/jackson/core/io/DataOutputAsStream;
.super Ljava/io/OutputStream;
.source "DataOutputAsStream.java"


.field protected final _output:Ljava/io/DataOutput;


.method public constructor <init>(Ljava/io/DataOutput;)V
    .locals 0
    .param p1, "out"    # Ljava/io/DataOutput;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/fasterxml/jackson/core/io/DataOutputAsStream;->_output:Ljava/io/DataOutput;

    .line 18
    return-void
.end method


.method public write(I)V
    .locals 1
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 22
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/DataOutputAsStream;->_output:Ljava/io/DataOutput;

    invoke-interface {v0, p1}, Ljava/io/DataOutput;->write(I)V

    .line 23
    return-void
.end method

.method public write([B)V
    .locals 3
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/DataOutputAsStream;->_output:Ljava/io/DataOutput;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-interface {v0, p1, v1, v2}, Ljava/io/DataOutput;->write([BII)V

    .line 28
    return-void
.end method

.method public write([BII)V
    .locals 1
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/DataOutputAsStream;->_output:Ljava/io/DataOutput;

    invoke-interface {v0, p1, p2, p3}, Ljava/io/DataOutput;->write([BII)V

    .line 33
    return-void
.end method
