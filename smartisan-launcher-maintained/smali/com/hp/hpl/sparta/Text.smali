.class public Lcom/hp/hpl/sparta/Text;
.super Lcom/hp/hpl/sparta/Node;


.field private text_:Ljava/lang/StringBuffer;


.method public constructor <init>(C)V
    .locals 1

    invoke-direct {p0}, Lcom/hp/hpl/sparta/Node;-><init>()V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/hp/hpl/sparta/Text;->text_:Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/hp/hpl/sparta/Text;->text_:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/hp/hpl/sparta/Node;-><init>()V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/hp/hpl/sparta/Text;->text_:Ljava/lang/StringBuffer;

    return-void
.end method


.method public appendData(C)V
    .locals 1

    iget-object v0, p0, Lcom/hp/hpl/sparta/Text;->text_:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/hp/hpl/sparta/Node;->notifyObservers()V

    return-void
.end method

.method public appendData(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/hp/hpl/sparta/Text;->text_:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/hp/hpl/sparta/Node;->notifyObservers()V

    return-void
.end method

.method public appendData([CII)V
    .locals 1

    iget-object v0, p0, Lcom/hp/hpl/sparta/Text;->text_:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/hp/hpl/sparta/Node;->notifyObservers()V

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/hp/hpl/sparta/Text;

    iget-object v1, p0, Lcom/hp/hpl/sparta/Text;->text_:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/hp/hpl/sparta/Text;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method protected computeHashCode()I
    .locals 1

    iget-object v0, p0, Lcom/hp/hpl/sparta/Text;->text_:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcom/hp/hpl/sparta/Text;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/hp/hpl/sparta/Text;

    iget-object v0, p0, Lcom/hp/hpl/sparta/Text;->text_:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/hp/hpl/sparta/Text;->text_:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hp/hpl/sparta/Text;->text_:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setData(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/hp/hpl/sparta/Text;->text_:Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/hp/hpl/sparta/Node;->notifyObservers()V

    return-void
.end method

.method toString(Ljava/io/Writer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/hp/hpl/sparta/Text;->text_:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method toXml(Ljava/io/Writer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/hp/hpl/sparta/Text;->text_:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x32

    if-ge v1, v2, :cond_0

    invoke-static {p1, v0}, Lcom/hp/hpl/sparta/Node;->htmlEncode(Ljava/io/Writer;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "<![CDATA["

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "]]>"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public xpathSelectElement(Ljava/lang/String;)Lcom/hp/hpl/sparta/Element;
    .locals 2

    new-instance v0, Ljava/lang/Error;

    const-string v1, "Sorry, not implemented"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public xpathSelectElements(Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 2

    new-instance v0, Ljava/lang/Error;

    const-string v1, "Sorry, not implemented"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public xpathSelectString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/Error;

    const-string v1, "Sorry, not implemented"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public xpathSelectStrings(Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 2

    new-instance v0, Ljava/lang/Error;

    const-string v1, "Sorry, not implemented"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method
