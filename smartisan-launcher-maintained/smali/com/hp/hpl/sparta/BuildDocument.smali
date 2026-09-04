.class Lcom/hp/hpl/sparta/BuildDocument;
.super Ljava/lang/Object;

.implements Lcom/hp/hpl/sparta/DocumentSource;
.implements Lcom/hp/hpl/sparta/ParseHandler;


.field private currentElement_:Lcom/hp/hpl/sparta/Element;

.field private final doc_:Lcom/hp/hpl/sparta/Document;

.field private final log_:Lcom/hp/hpl/sparta/ParseLog;

.field private parseSource_:Lcom/hp/hpl/sparta/ParseSource;


.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/BuildDocument;-><init>(Lcom/hp/hpl/sparta/ParseLog;)V

    return-void
.end method

.method public constructor <init>(Lcom/hp/hpl/sparta/ParseLog;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/hp/hpl/sparta/BuildDocument;->currentElement_:Lcom/hp/hpl/sparta/Element;

    new-instance v0, Lcom/hp/hpl/sparta/Document;

    invoke-direct {v0}, Lcom/hp/hpl/sparta/Document;-><init>()V

    iput-object v0, p0, Lcom/hp/hpl/sparta/BuildDocument;->doc_:Lcom/hp/hpl/sparta/Document;

    iput-object v1, p0, Lcom/hp/hpl/sparta/BuildDocument;->parseSource_:Lcom/hp/hpl/sparta/ParseSource;

    if-nez p1, :cond_0

    sget-object p1, Lcom/hp/hpl/sparta/ParseSource;->DEFAULT_LOG:Lcom/hp/hpl/sparta/ParseLog;

    :cond_0
    iput-object p1, p0, Lcom/hp/hpl/sparta/BuildDocument;->log_:Lcom/hp/hpl/sparta/ParseLog;

    return-void
.end method


.method public characters([CII)V
    .locals 3

    iget-object v0, p0, Lcom/hp/hpl/sparta/BuildDocument;->currentElement_:Lcom/hp/hpl/sparta/Element;

    invoke-virtual {v0}, Lcom/hp/hpl/sparta/Element;->getLastChild()Lcom/hp/hpl/sparta/Node;

    move-result-object v1

    instance-of v1, v1, Lcom/hp/hpl/sparta/Text;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/hp/hpl/sparta/Element;->getLastChild()Lcom/hp/hpl/sparta/Node;

    move-result-object v0

    check-cast v0, Lcom/hp/hpl/sparta/Text;

    invoke-virtual {v0, p1, p2, p3}, Lcom/hp/hpl/sparta/Text;->appendData([CII)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/hp/hpl/sparta/Text;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {v1, v2}, Lcom/hp/hpl/sparta/Text;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hp/hpl/sparta/Element;->appendChildNoChecking(Lcom/hp/hpl/sparta/Node;)V

    goto :goto_0
.end method

.method public endDocument()V
    .locals 0

    return-void
.end method

.method public endElement(Lcom/hp/hpl/sparta/Element;)V
    .locals 1

    iget-object v0, p0, Lcom/hp/hpl/sparta/BuildDocument;->currentElement_:Lcom/hp/hpl/sparta/Element;

    invoke-virtual {v0}, Lcom/hp/hpl/sparta/Node;->getParentNode()Lcom/hp/hpl/sparta/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/hp/hpl/sparta/BuildDocument;->currentElement_:Lcom/hp/hpl/sparta/Element;

    return-void
.end method

.method public getDocument()Lcom/hp/hpl/sparta/Document;
    .locals 1

    iget-object v0, p0, Lcom/hp/hpl/sparta/BuildDocument;->doc_:Lcom/hp/hpl/sparta/Document;

    return-object v0
.end method

.method public getLineNumber()I
    .locals 1

    iget-object v0, p0, Lcom/hp/hpl/sparta/BuildDocument;->parseSource_:Lcom/hp/hpl/sparta/ParseSource;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hp/hpl/sparta/BuildDocument;->parseSource_:Lcom/hp/hpl/sparta/ParseSource;

    invoke-interface {v0}, Lcom/hp/hpl/sparta/ParseSource;->getLineNumber()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getParseSource()Lcom/hp/hpl/sparta/ParseSource;
    .locals 1

    iget-object v0, p0, Lcom/hp/hpl/sparta/BuildDocument;->parseSource_:Lcom/hp/hpl/sparta/ParseSource;

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hp/hpl/sparta/BuildDocument;->parseSource_:Lcom/hp/hpl/sparta/ParseSource;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hp/hpl/sparta/BuildDocument;->parseSource_:Lcom/hp/hpl/sparta/ParseSource;

    invoke-interface {v0}, Lcom/hp/hpl/sparta/ParseSource;->getSystemId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setParseSource(Lcom/hp/hpl/sparta/ParseSource;)V
    .locals 2

    iput-object p1, p0, Lcom/hp/hpl/sparta/BuildDocument;->parseSource_:Lcom/hp/hpl/sparta/ParseSource;

    iget-object v0, p0, Lcom/hp/hpl/sparta/BuildDocument;->doc_:Lcom/hp/hpl/sparta/Document;

    invoke-interface {p1}, Lcom/hp/hpl/sparta/ParseSource;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hp/hpl/sparta/Document;->setSystemId(Ljava/lang/String;)V

    return-void
.end method

.method public startDocument()V
    .locals 0

    return-void
.end method

.method public startElement(Lcom/hp/hpl/sparta/Element;)V
    .locals 1

    iget-object v0, p0, Lcom/hp/hpl/sparta/BuildDocument;->currentElement_:Lcom/hp/hpl/sparta/Element;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hp/hpl/sparta/BuildDocument;->doc_:Lcom/hp/hpl/sparta/Document;

    invoke-virtual {v0, p1}, Lcom/hp/hpl/sparta/Document;->setDocumentElement(Lcom/hp/hpl/sparta/Element;)V

    :goto_0
    iput-object p1, p0, Lcom/hp/hpl/sparta/BuildDocument;->currentElement_:Lcom/hp/hpl/sparta/Element;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/hp/hpl/sparta/BuildDocument;->currentElement_:Lcom/hp/hpl/sparta/Element;

    invoke-virtual {v0, p1}, Lcom/hp/hpl/sparta/Element;->appendChild(Lcom/hp/hpl/sparta/Node;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/hp/hpl/sparta/BuildDocument;->parseSource_:Lcom/hp/hpl/sparta/ParseSource;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "BuildDoc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/hp/hpl/sparta/BuildDocument;->parseSource_:Lcom/hp/hpl/sparta/ParseSource;

    invoke-interface {v1}, Lcom/hp/hpl/sparta/ParseSource;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
