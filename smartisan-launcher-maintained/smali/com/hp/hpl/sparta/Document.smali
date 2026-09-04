.class public Lcom/hp/hpl/sparta/Document;
.super Lcom/hp/hpl/sparta/Node;


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hp/hpl/sparta/Document$Observer;,
        Lcom/hp/hpl/sparta/Document$Index;
    }
.end annotation


.field private static final DEBUG:Z

.field static final EMPTY:Ljava/util/Enumeration;

.field private static final ONE:Ljava/lang/Integer;


.field private final indexible_:Ljava/util/Hashtable;

.field private indices_:Lcom/hp/hpl/sparta/Sparta$Cache;

.field private observers_:Ljava/util/Vector;

.field private rootElement_:Lcom/hp/hpl/sparta/Element;

.field private systemId_:Ljava/lang/String;


.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/hp/hpl/sparta/Document;->ONE:Ljava/lang/Integer;

    new-instance v0, Lcom/hp/hpl/sparta/EmptyEnumeration;

    invoke-direct {v0}, Lcom/hp/hpl/sparta/EmptyEnumeration;-><init>()V

    sput-object v0, Lcom/hp/hpl/sparta/Document;->EMPTY:Ljava/util/Enumeration;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/hp/hpl/sparta/Node;-><init>()V

    iput-object v0, p0, Lcom/hp/hpl/sparta/Document;->rootElement_:Lcom/hp/hpl/sparta/Element;

    invoke-static {}, Lcom/hp/hpl/sparta/Sparta;->newCache()Lcom/hp/hpl/sparta/Sparta$Cache;

    move-result-object v1

    iput-object v1, p0, Lcom/hp/hpl/sparta/Document;->indices_:Lcom/hp/hpl/sparta/Sparta$Cache;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/hp/hpl/sparta/Document;->observers_:Ljava/util/Vector;

    check-cast v0, Ljava/util/Hashtable;

    iput-object v0, p0, Lcom/hp/hpl/sparta/Document;->indexible_:Ljava/util/Hashtable;

    const-string v0, "MEMORY"

    iput-object v0, p0, Lcom/hp/hpl/sparta/Document;->systemId_:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/hp/hpl/sparta/Node;-><init>()V

    iput-object v0, p0, Lcom/hp/hpl/sparta/Document;->rootElement_:Lcom/hp/hpl/sparta/Element;

    invoke-static {}, Lcom/hp/hpl/sparta/Sparta;->newCache()Lcom/hp/hpl/sparta/Sparta$Cache;

    move-result-object v1

    iput-object v1, p0, Lcom/hp/hpl/sparta/Document;->indices_:Lcom/hp/hpl/sparta/Sparta$Cache;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/hp/hpl/sparta/Document;->observers_:Ljava/util/Vector;

    check-cast v0, Ljava/util/Hashtable;

    iput-object v0, p0, Lcom/hp/hpl/sparta/Document;->indexible_:Ljava/util/Hashtable;

    iput-object p1, p0, Lcom/hp/hpl/sparta/Document;->systemId_:Ljava/lang/String;

    return-void
.end method

.method private visitor(Ljava/lang/String;Z)Lcom/hp/hpl/sparta/XPathVisitor;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/xpath/XPathException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-static {p1}, Lcom/hp/hpl/sparta/xpath/XPath;->get(Ljava/lang/String;)Lcom/hp/hpl/sparta/xpath/XPath;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/hp/hpl/sparta/Document;->visitor(Lcom/hp/hpl/sparta/xpath/XPath;Z)Lcom/hp/hpl/sparta/XPathVisitor;

    move-result-object v0

    return-object v0
.end method


.method public addObserver(Lcom/hp/hpl/sparta/Document$Observer;)V
    .locals 1

    iget-object v0, p0, Lcom/hp/hpl/sparta/Document;->observers_:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    new-instance v1, Lcom/hp/hpl/sparta/Document;

    iget-object v0, p0, Lcom/hp/hpl/sparta/Document;->systemId_:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/hp/hpl/sparta/Document;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hp/hpl/sparta/Document;->rootElement_:Lcom/hp/hpl/sparta/Element;

    invoke-virtual {v0}, Lcom/hp/hpl/sparta/Element;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hp/hpl/sparta/Element;

    iput-object v0, v1, Lcom/hp/hpl/sparta/Document;->rootElement_:Lcom/hp/hpl/sparta/Element;

    return-object v1
.end method

.method protected computeHashCode()I
    .locals 1

    iget-object v0, p0, Lcom/hp/hpl/sparta/Document;->rootElement_:Lcom/hp/hpl/sparta/Element;

    invoke-virtual {v0}, Lcom/hp/hpl/sparta/Node;->hashCode()I

    move-result v0

    return v0
.end method

.method public deleteObserver(Lcom/hp/hpl/sparta/Document$Observer;)V
    .locals 1

    iget-object v0, p0, Lcom/hp/hpl/sparta/Document;->observers_:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcom/hp/hpl/sparta/Document;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/hp/hpl/sparta/Document;

    iget-object v0, p0, Lcom/hp/hpl/sparta/Document;->rootElement_:Lcom/hp/hpl/sparta/Element;

    iget-object v1, p1, Lcom/hp/hpl/sparta/Document;->rootElement_:Lcom/hp/hpl/sparta/Element;

    invoke-virtual {v0, v1}, Lcom/hp/hpl/sparta/Element;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getDocumentElement()Lcom/hp/hpl/sparta/Element;
    .locals 1

    iget-object v0, p0, Lcom/hp/hpl/sparta/Document;->rootElement_:Lcom/hp/hpl/sparta/Element;

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hp/hpl/sparta/Document;->systemId_:Ljava/lang/String;

    return-object v0
.end method

.method monitor(Lcom/hp/hpl/sparta/xpath/XPath;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/xpath/XPathException;
        }
    .end annotation

    return-void
.end method

.method notifyObservers()V
    .locals 2

    iget-object v0, p0, Lcom/hp/hpl/sparta/Document;->observers_:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hp/hpl/sparta/Document$Observer;

    invoke-interface {v0, p0}, Lcom/hp/hpl/sparta/Document$Observer;->update(Lcom/hp/hpl/sparta/Document;)V

    goto :goto_0
.end method

.method public setDocumentElement(Lcom/hp/hpl/sparta/Element;)V
    .locals 1

    iput-object p1, p0, Lcom/hp/hpl/sparta/Document;->rootElement_:Lcom/hp/hpl/sparta/Element;

    iget-object v0, p0, Lcom/hp/hpl/sparta/Document;->rootElement_:Lcom/hp/hpl/sparta/Element;

    invoke-virtual {v0, p0}, Lcom/hp/hpl/sparta/Node;->setOwnerDocument(Lcom/hp/hpl/sparta/Document;)V

    invoke-virtual {p0}, Lcom/hp/hpl/sparta/Document;->notifyObservers()V

    return-void
.end method

.method public setSystemId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hp/hpl/sparta/Document;->systemId_:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/hp/hpl/sparta/Document;->notifyObservers()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hp/hpl/sparta/Document;->systemId_:Ljava/lang/String;

    return-object v0
.end method

.method public toString(Ljava/io/Writer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/hp/hpl/sparta/Document;->rootElement_:Lcom/hp/hpl/sparta/Element;

    invoke-virtual {v0, p1}, Lcom/hp/hpl/sparta/Element;->toString(Ljava/io/Writer;)V

    return-void
.end method

.method public toXml(Ljava/io/Writer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "<?xml version=\"1.0\" ?>\n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hp/hpl/sparta/Document;->rootElement_:Lcom/hp/hpl/sparta/Element;

    invoke-virtual {v0, p1}, Lcom/hp/hpl/sparta/Element;->toXml(Ljava/io/Writer;)V

    return-void
.end method

.method visitor(Lcom/hp/hpl/sparta/xpath/XPath;Z)Lcom/hp/hpl/sparta/XPathVisitor;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/xpath/XPathException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/hp/hpl/sparta/xpath/XPath;->isStringValue()Z

    move-result v0

    if-eq v0, p2, :cond_1

    if-eqz p2, :cond_0

    const-string v0, "evaluates to element not string"

    :goto_0
    new-instance v1, Lcom/hp/hpl/sparta/xpath/XPathException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\" evaluates to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Lcom/hp/hpl/sparta/xpath/XPathException;-><init>(Lcom/hp/hpl/sparta/xpath/XPath;Ljava/lang/String;)V

    throw v1

    :cond_0
    const-string v0, "evaluates to string not element"

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/hp/hpl/sparta/XPathVisitor;

    invoke-direct {v0, p0, p1}, Lcom/hp/hpl/sparta/XPathVisitor;-><init>(Lcom/hp/hpl/sparta/Document;Lcom/hp/hpl/sparta/xpath/XPath;)V

    return-object v0
.end method

.method public xpathEnsure(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/hp/hpl/sparta/Document;->xpathSelectElement(Ljava/lang/String;)Lcom/hp/hpl/sparta/Element;

    move-result-object v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, Lcom/hp/hpl/sparta/xpath/XPath;->get(Ljava/lang/String;)Lcom/hp/hpl/sparta/xpath/XPath;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hp/hpl/sparta/xpath/XPath;->getSteps()Ljava/util/Enumeration;

    move-result-object v4

    move v2, v1

    :goto_1
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v3}, Lcom/hp/hpl/sparta/xpath/XPath;->getSteps()Ljava/util/Enumeration;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hp/hpl/sparta/xpath/Step;

    add-int/lit8 v2, v2, -0x1

    new-array v4, v2, [Lcom/hp/hpl/sparta/xpath/Step;

    move v2, v1

    :goto_2
    array-length v1, v4

    if-lt v2, v1, :cond_3

    iget-object v1, p0, Lcom/hp/hpl/sparta/Document;->rootElement_:Lcom/hp/hpl/sparta/Element;

    if-nez v1, :cond_4

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, p1}, Lcom/hp/hpl/sparta/Node;->makeMatching(Lcom/hp/hpl/sparta/Element;Lcom/hp/hpl/sparta/xpath/Step;Ljava/lang/String;)Lcom/hp/hpl/sparta/Element;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hp/hpl/sparta/Document;->setDocumentElement(Lcom/hp/hpl/sparta/Element;)V

    :cond_1
    array-length v0, v4

    if-nez v0, :cond_5

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_3
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hp/hpl/sparta/xpath/Step;

    aput-object v1, v4, v2

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    :cond_4
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/hp/hpl/sparta/Document;->xpathSelectElement(Ljava/lang/String;)Lcom/hp/hpl/sparta/Element;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v1, Lcom/hp/hpl/sparta/ParseException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Existing root element <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/hp/hpl/sparta/Document;->rootElement_:Lcom/hp/hpl/sparta/Element;

    invoke-virtual {v3}, Lcom/hp/hpl/sparta/Element;->getTagName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "...> does not match first step \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "\" of \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/hp/hpl/sparta/ParseException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Lcom/hp/hpl/sparta/xpath/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/hp/hpl/sparta/ParseException;

    invoke-direct {v1, p1, v0}, Lcom/hp/hpl/sparta/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_5
    :try_start_1
    iget-object v0, p0, Lcom/hp/hpl/sparta/Document;->rootElement_:Lcom/hp/hpl/sparta/Element;

    const/4 v1, 0x0

    invoke-static {v1, v4}, Lcom/hp/hpl/sparta/xpath/XPath;->get(Z[Lcom/hp/hpl/sparta/xpath/Step;)Lcom/hp/hpl/sparta/xpath/XPath;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hp/hpl/sparta/xpath/XPath;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hp/hpl/sparta/Element;->xpathEnsure(Ljava/lang/String;)Z
    :try_end_1
    .catch Lcom/hp/hpl/sparta/xpath/XPathException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto/16 :goto_0
.end method

.method public xpathGetIndex(Ljava/lang/String;)Lcom/hp/hpl/sparta/Document$Index;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/hp/hpl/sparta/Document;->indices_:Lcom/hp/hpl/sparta/Sparta$Cache;

    invoke-interface {v0, p1}, Lcom/hp/hpl/sparta/Sparta$Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hp/hpl/sparta/Document$Index;

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/hp/hpl/sparta/xpath/XPath;->get(Ljava/lang/String;)Lcom/hp/hpl/sparta/xpath/XPath;

    move-result-object v1

    new-instance v0, Lcom/hp/hpl/sparta/Document$Index;

    invoke-direct {v0, p0, v1}, Lcom/hp/hpl/sparta/Document$Index;-><init>(Lcom/hp/hpl/sparta/Document;Lcom/hp/hpl/sparta/xpath/XPath;)V

    iget-object v1, p0, Lcom/hp/hpl/sparta/Document;->indices_:Lcom/hp/hpl/sparta/Sparta$Cache;

    invoke-interface {v1, p1, v0}, Lcom/hp/hpl/sparta/Sparta$Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/hp/hpl/sparta/xpath/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/hp/hpl/sparta/ParseException;

    const-string v2, "XPath problem"

    invoke-direct {v1, v2, v0}, Lcom/hp/hpl/sparta/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public xpathHasIndex(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/hp/hpl/sparta/Document;->indices_:Lcom/hp/hpl/sparta/Sparta$Cache;

    invoke-interface {v0, p1}, Lcom/hp/hpl/sparta/Sparta$Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public xpathSelectElement(Ljava/lang/String;)Lcom/hp/hpl/sparta/Element;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-static {p1}, Lcom/hp/hpl/sparta/xpath/XPath;->get(Ljava/lang/String;)Lcom/hp/hpl/sparta/xpath/XPath;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hp/hpl/sparta/Document;->monitor(Lcom/hp/hpl/sparta/xpath/XPath;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/hp/hpl/sparta/Document;->visitor(Lcom/hp/hpl/sparta/xpath/XPath;Z)Lcom/hp/hpl/sparta/XPathVisitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hp/hpl/sparta/XPathVisitor;->getFirstResultElement()Lcom/hp/hpl/sparta/Element;
    :try_end_0
    .catch Lcom/hp/hpl/sparta/xpath/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/hp/hpl/sparta/ParseException;

    const-string v2, "XPath problem"

    invoke-direct {v1, v2, v0}, Lcom/hp/hpl/sparta/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public xpathSelectElements(Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-static {p1}, Lcom/hp/hpl/sparta/xpath/XPath;->get(Ljava/lang/String;)Lcom/hp/hpl/sparta/xpath/XPath;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hp/hpl/sparta/Document;->monitor(Lcom/hp/hpl/sparta/xpath/XPath;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/hp/hpl/sparta/Document;->visitor(Lcom/hp/hpl/sparta/xpath/XPath;Z)Lcom/hp/hpl/sparta/XPathVisitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hp/hpl/sparta/XPathVisitor;->getResultEnumeration()Ljava/util/Enumeration;
    :try_end_0
    .catch Lcom/hp/hpl/sparta/xpath/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/hp/hpl/sparta/ParseException;

    const-string v2, "XPath problem"

    invoke-direct {v1, v2, v0}, Lcom/hp/hpl/sparta/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public xpathSelectString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;
        }
    .end annotation

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/hp/hpl/sparta/Document;->visitor(Ljava/lang/String;Z)Lcom/hp/hpl/sparta/XPathVisitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hp/hpl/sparta/XPathVisitor;->getFirstResultString()Ljava/lang/String;
    :try_end_0
    .catch Lcom/hp/hpl/sparta/xpath/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/hp/hpl/sparta/ParseException;

    const-string v2, "XPath problem"

    invoke-direct {v1, v2, v0}, Lcom/hp/hpl/sparta/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public xpathSelectStrings(Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;
        }
    .end annotation

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/hp/hpl/sparta/Document;->visitor(Ljava/lang/String;Z)Lcom/hp/hpl/sparta/XPathVisitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hp/hpl/sparta/XPathVisitor;->getResultEnumeration()Ljava/util/Enumeration;
    :try_end_0
    .catch Lcom/hp/hpl/sparta/xpath/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/hp/hpl/sparta/ParseException;

    const-string v2, "XPath problem"

    invoke-direct {v1, v2, v0}, Lcom/hp/hpl/sparta/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
