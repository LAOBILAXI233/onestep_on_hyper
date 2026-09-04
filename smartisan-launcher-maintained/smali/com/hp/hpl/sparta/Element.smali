.class public Lcom/hp/hpl/sparta/Element;
.super Lcom/hp/hpl/sparta/Node;


.field private static final DEBUG:Z


.field private attributeNames_:Ljava/util/Vector;

.field private attributes_:Ljava/util/Hashtable;

.field private firstChild_:Lcom/hp/hpl/sparta/Node;

.field private lastChild_:Lcom/hp/hpl/sparta/Node;

.field private tagName_:Ljava/lang/String;


.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/hp/hpl/sparta/Node;-><init>()V

    iput-object v0, p0, Lcom/hp/hpl/sparta/Element;->firstChild_:Lcom/hp/hpl/sparta/Node;

    iput-object v0, p0, Lcom/hp/hpl/sparta/Element;->lastChild_:Lcom/hp/hpl/sparta/Node;

    iput-object v0, p0, Lcom/hp/hpl/sparta/Element;->attributes_:Ljava/util/Hashtable;

    iput-object v0, p0, Lcom/hp/hpl/sparta/Element;->attributeNames_:Ljava/util/Vector;

    iput-object v0, p0, Lcom/hp/hpl/sparta/Element;->tagName_:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/hp/hpl/sparta/Node;-><init>()V

    iput-object v0, p0, Lcom/hp/hpl/sparta/Element;->firstChild_:Lcom/hp/hpl/sparta/Node;

    iput-object v0, p0, Lcom/hp/hpl/sparta/Element;->lastChild_:Lcom/hp/hpl/sparta/Node;

    iput-object v0, p0, Lcom/hp/hpl/sparta/Element;->attributes_:Ljava/util/Hashtable;

    iput-object v0, p0, Lcom/hp/hpl/sparta/Element;->attributeNames_:Ljava/util/Vector;

    iput-object v0, p0, Lcom/hp/hpl/sparta/Element;->tagName_:Ljava/lang/String;

    invoke-static {p1}, Lcom/hp/hpl/sparta/Sparta;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hp/hpl/sparta/Element;->tagName_:Ljava/lang/String;

    return-void
.end method

.method private checkInvariant()V
    .locals 0

    return-void
.end method

.method private removeChildNoChecking(Lcom/hp/hpl/sparta/Node;)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/hp/hpl/sparta/Element;->firstChild_:Lcom/hp/hpl/sparta/Node;

    move v2, v0

    :goto_0
    if-nez v1, :cond_0

    :goto_1
    return v0

    :cond_0
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v0, p0, Lcom/hp/hpl/sparta/Element;->firstChild_:Lcom/hp/hpl/sparta/Node;

    if-ne v0, v1, :cond_1

    invoke-virtual {v1}, Lcom/hp/hpl/sparta/Node;->getNextSibling()Lcom/hp/hpl/sparta/Node;

    move-result-object v0

    iput-object v0, p0, Lcom/hp/hpl/sparta/Element;->firstChild_:Lcom/hp/hpl/sparta/Node;

    :cond_1
    iget-object v0, p0, Lcom/hp/hpl/sparta/Element;->lastChild_:Lcom/hp/hpl/sparta/Node;

    if-ne v0, v1, :cond_2

    invoke-virtual {v1}, Lcom/hp/hpl/sparta/Node;->getPreviousSibling()Lcom/hp/hpl/sparta/Node;

    move-result-object v0

    iput-object v0, p0, Lcom/hp/hpl/sparta/Element;->lastChild_:Lcom/hp/hpl/sparta/Node;

    :cond_2
    invoke-virtual {v1}, Lcom/hp/hpl/sparta/Node;->removeFromLinkedList()V

    invoke-virtual {v1, v4}, Lcom/hp/hpl/sparta/Node;->setParentNode(Lcom/hp/hpl/sparta/Element;)V

    invoke-virtual {v1, v4}, Lcom/hp/hpl/sparta/Node;->setOwnerDocument(Lcom/hp/hpl/sparta/Document;)V

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1}, Lcom/hp/hpl/sparta/Node;->getNextSibling()Lcom/hp/hpl/sparta/Node;

    move-result-object v1

    goto :goto_0
.end method

.method private replaceChild_(Lcom/hp/hpl/sparta/Node;Lcom/hp/hpl/sparta/Node;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/DOMException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/hp/hpl/sparta/Element;->firstChild_:Lcom/hp/hpl/sparta/Node;

    :goto_0
    if-nez v0, :cond_0

    new-instance v0, Lcom/hp/hpl/sparta/DOMException;

    const/16 v1, 0x8

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Cannot find "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/hp/hpl/sparta/DOMException;-><init>(SLjava/lang/String;)V

    throw v0

    :cond_0
    if-ne v0, p2, :cond_3

    iget-object v0, p0, Lcom/hp/hpl/sparta/Element;->firstChild_:Lcom/hp/hpl/sparta/Node;

    if-ne v0, p2, :cond_1

    iput-object p1, p0, Lcom/hp/hpl/sparta/Element;->firstChild_:Lcom/hp/hpl/sparta/Node;

    :cond_1
    iget-object v0, p0, Lcom/hp/hpl/sparta/Element;->lastChild_:Lcom/hp/hpl/sparta/Node;

    if-ne v0, p2, :cond_2

    iput-object p1, p0, Lcom/hp/hpl/sparta/Element;->lastChild_:Lcom/hp/hpl/sparta/Node;

    :cond_2
    invoke-virtual {p2, p1}, Lcom/hp/hpl/sparta/Node;->replaceInLinkedList(Lcom/hp/hpl/sparta/Node;)V

    invoke-virtual {p1, p0}, Lcom/hp/hpl/sparta/Node;->setParentNode(Lcom/hp/hpl/sparta/Element;)V

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/hp/hpl/sparta/Node;->setParentNode(Lcom/hp/hpl/sparta/Element;)V

    return-void

    :cond_3
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Lcom/hp/hpl/sparta/Node;->getNextSibling()Lcom/hp/hpl/sparta/Node;

    move-result-object v0

    goto :goto_0
.end method

.method private visitor(Ljava/lang/String;Z)Lcom/hp/hpl/sparta/XPathVisitor;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/xpath/XPathException;
        }
    .end annotation

    invoke-static {p1}, Lcom/hp/hpl/sparta/xpath/XPath;->get(Ljava/lang/String;)Lcom/hp/hpl/sparta/xpath/XPath;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hp/hpl/sparta/xpath/XPath;->isStringValue()Z

    move-result v0

    if-eq v0, p2, :cond_1

    if-eqz p2, :cond_0

    const-string v0, "evaluates to element not string"

    :goto_0
    new-instance v2, Lcom/hp/hpl/sparta/xpath/XPathException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\" evaluates to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lcom/hp/hpl/sparta/xpath/XPathException;-><init>(Lcom/hp/hpl/sparta/xpath/XPath;Ljava/lang/String;)V

    throw v2

    :cond_0
    const-string v0, "evaluates to string not element"

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/hp/hpl/sparta/XPathVisitor;

    invoke-direct {v0, p0, v1}, Lcom/hp/hpl/sparta/XPathVisitor;-><init>(Lcom/hp/hpl/sparta/Element;Lcom/hp/hpl/sparta/xpath/XPath;)V

    return-object v0
.end method


.method public appendChild(Lcom/hp/hpl/sparta/Node;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/hp/hpl/sparta/Element;->canHaveAsDescendent(Lcom/hp/hpl/sparta/Node;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/hp/hpl/sparta/Node;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hp/hpl/sparta/Element;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/hp/hpl/sparta/Element;->appendChildNoChecking(Lcom/hp/hpl/sparta/Node;)V

    invoke-virtual {p0}, Lcom/hp/hpl/sparta/Node;->notifyObservers()V

    return-void

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method appendChildNoChecking(Lcom/hp/hpl/sparta/Node;)V
    .locals 1

    invoke-virtual {p1}, Lcom/hp/hpl/sparta/Node;->getParentNode()Lcom/hp/hpl/sparta/Element;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {v0, p1}, Lcom/hp/hpl/sparta/Element;->removeChildNoChecking(Lcom/hp/hpl/sparta/Node;)Z

    :cond_0
    iget-object v0, p0, Lcom/hp/hpl/sparta/Element;->lastChild_:Lcom/hp/hpl/sparta/Node;

    invoke-virtual {p1, v0}, Lcom/hp/hpl/sparta/Node;->insertAtEndOfLinkedList(Lcom/hp/hpl/sparta/Node;)V

    iget-object v0, p0, Lcom/hp/hpl/sparta/Element;->firstChild_:Lcom/hp/hpl/sparta/Node;

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/hp/hpl/sparta/Element;->firstChild_:Lcom/hp/hpl/sparta/Node;

    :cond_1
    invoke-virtual {p1, p0}, Lcom/hp/hpl/sparta/Node;->setParentNode(Lcom/hp/hpl/sparta/Element;)V

    iput-object p1, p0, Lcom/hp/hpl/sparta/Element;->lastChild_:Lcom/hp/hpl/sparta/Node;

    invoke-virtual {p0}, Lcom/hp/hpl/sparta/Node;->getOwnerDocument()Lcom/hp/hpl/sparta/Document;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/hp/hpl/sparta/Node;->setOwnerDocument(Lcom/hp/hpl/sparta/Document;)V

    return-void
.end method

.method canHaveAsDescendent(Lcom/hp/hpl/sparta/Node;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/hp/hpl/sparta/Node;->getParentNode()Lcom/hp/hpl/sparta/Element;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Lcom/hp/hpl/sparta/Element;->canHaveAsDescendent(Lcom/hp/hpl/sparta/Node;)Z

    move-result v0

    goto :goto_0
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/hp/hpl/sparta/Element;->cloneElement(Z)Lcom/hp/hpl/sparta/Element;

    move-result-object v0

    return-object v0
.end method

.method public cloneElement(Z)Lcom/hp/hpl/sparta/Element;
    .locals 4

    new-instance v2, Lcom/hp/hpl/sparta/Element;

    iget-object v0, p0, Lcom/hp/hpl/sparta/Element;->tagName_:Ljava/lang/String;

    invoke-direct {v2, v0}, Lcom/hp/hpl/sparta/Element;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hp/hpl/sparta/Element;->attributeNames_:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hp/hpl/sparta/Element;->attributeNames_:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/hp/hpl/sparta/Element;->firstChild_:Lcom/hp/hpl/sparta/Node;

    move-object v1, v0

    :goto_1
    if-nez v1, :cond_3

    :cond_1
    return-object v2

    :cond_2
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/hp/hpl/sparta/Element;->attributes_:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lcom/hp/hpl/sparta/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lcom/hp/hpl/sparta/Node;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hp/hpl/sparta/Node;

    invoke-virtual {v2, v0}, Lcom/hp/hpl/sparta/Element;->appendChild(Lcom/hp/hpl/sparta/Node;)V

    invoke-virtual {v1}, Lcom/hp/hpl/sparta/Node;->getNextSibling()Lcom/hp/hpl/sparta/Node;

    move-result-object v0

    move-object v1, v0

    goto :goto_1
.end method

.method public cloneShallow()Lcom/hp/hpl/sparta/Element;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/hp/hpl/sparta/Element;->cloneElement(Z)Lcom/hp/hpl/sparta/Element;

    move-result-object v0

    return-object v0
.end method

.method protected computeHashCode()I
    .locals 4

    iget-object v0, p0, Lcom/hp/hpl/sparta/Element;->tagName_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/hp/hpl/sparta/Element;->attributes_:Ljava/util/Hashtable;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/hp/hpl/sparta/Element;->attributes_:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_1
    iget-object v0, p0, Lcom/hp/hpl/sparta/Element;->firstChild_:Lcom/hp/hpl/sparta/Node;

    :goto_2
    if-nez v0, :cond_1

    return v1

    :cond_0
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v1, v3

    iget-object v3, p0, Lcom/hp/hpl/sparta/Element;->attributes_:Ljava/util/Hashtable;

    invoke-virtual {v3, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    :cond_1
    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {v0}, Lcom/hp/hpl/sparta/Node;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0}, Lcom/hp/hpl/sparta/Node;->getNextSibling()Lcom/hp/hpl/sparta/Node;

    move-result-object v0

    goto :goto_2

    :cond_2
    move v1, v0

    goto :goto_1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_1

    move v2, v3

    :cond_0
    :goto_0
    return v2

    :cond_1
    instance-of v0, p1, Lcom/hp/hpl/sparta/Element;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/hp/hpl/sparta/Element;

    iget-object v0, p0, Lcom/hp/hpl/sparta/Element;->tagName_:Ljava/lang/String;

    iget-object v1, p1, Lcom/hp/hpl/sparta/Element;->tagName_:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hp/hpl/sparta/Element;->attributes_:Ljava/util/Hashtable;

    if-nez v0, :cond_4

    move v0, v2

    :goto_1
    iget-object v1, p1, Lcom/hp/hpl/sparta/Element;->attributes_:Ljava/util/Hashtable;

    if-nez v1, :cond_5

    move v1, v2

    :goto_2
    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/hp/hpl/sparta/Element;->attributes_:Ljava/util/Hashtable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/hp/hpl/sparta/Element;->attributes_:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_3
    iget-object v1, p0, Lcom/hp/hpl/sparta/Element;->firstChild_:Lcom/hp/hpl/sparta/Node;

    iget-object v0, p1, Lcom/hp/hpl/sparta/Element;->firstChild_:Lcom/hp/hpl/sparta/Node;

    :goto_3
    if-nez v1, :cond_7

    move v2, v3

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/hp/hpl/sparta/Element;->attributes_:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    goto :goto_1

    :cond_5
    iget-object v1, p1, Lcom/hp/hpl/sparta/Element;->attributes_:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v1

    goto :goto_2

    :cond_6
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/hp/hpl/sparta/Element;->attributes_:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v5, p1, Lcom/hp/hpl/sparta/Element;->attributes_:Ljava/util/Hashtable;

    invoke-virtual {v5, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_7
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Lcom/hp/hpl/sparta/Node;->getNextSibling()Lcom/hp/hpl/sparta/Node;

    move-result-object v1

    invoke-virtual {v0}, Lcom/hp/hpl/sparta/Node;->getNextSibling()Lcom/hp/hpl/sparta/Node;

    move-result-object v0

    goto :goto_3
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hp/hpl/sparta/Element;->attributes_:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/hp/hpl/sparta/Element;->attributes_:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getAttributeNames()Ljava/util/Enumeration;
    .locals 1

    iget-object v0, p0, Lcom/hp/hpl/sparta/Element;->attributeNames_:Ljava/util/Vector;

    if-nez v0, :cond_0

    sget-object v0, Lcom/hp/hpl/sparta/Document;->EMPTY:Ljava/util/Enumeration;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/hp/hpl/sparta/Element;->attributeNames_:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    goto :goto_0
.end method

.method public getFirstChild()Lcom/hp/hpl/sparta/Node;
    .locals 1

    iget-object v0, p0, Lcom/hp/hpl/sparta/Element;->firstChild_:Lcom/hp/hpl/sparta/Node;

    return-object v0
.end method

.method public getLastChild()Lcom/hp/hpl/sparta/Node;
    .locals 1

    iget-object v0, p0, Lcom/hp/hpl/sparta/Element;->lastChild_:Lcom/hp/hpl/sparta/Node;

    return-object v0
.end method

.method public getTagName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hp/hpl/sparta/Element;->tagName_:Ljava/lang/String;

    return-object v0
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/hp/hpl/sparta/Element;->attributes_:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/hp/hpl/sparta/Element;->attributes_:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/hp/hpl/sparta/Element;->attributeNames_:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/hp/hpl/sparta/Node;->notifyObservers()V

    goto :goto_0
.end method

.method public removeChild(Lcom/hp/hpl/sparta/Node;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/DOMException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/hp/hpl/sparta/Element;->removeChildNoChecking(Lcom/hp/hpl/sparta/Node;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/hp/hpl/sparta/DOMException;

    const/16 v1, 0x8

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Cannot find "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/hp/hpl/sparta/DOMException;-><init>(SLjava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/hp/hpl/sparta/Node;->notifyObservers()V

    return-void
.end method

.method public replaceChild(Lcom/hp/hpl/sparta/Element;Lcom/hp/hpl/sparta/Node;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/DOMException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/hp/hpl/sparta/Element;->replaceChild_(Lcom/hp/hpl/sparta/Node;Lcom/hp/hpl/sparta/Node;)V

    invoke-virtual {p0}, Lcom/hp/hpl/sparta/Node;->notifyObservers()V

    return-void
.end method

.method public replaceChild(Lcom/hp/hpl/sparta/Text;Lcom/hp/hpl/sparta/Node;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/DOMException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/hp/hpl/sparta/Element;->replaceChild_(Lcom/hp/hpl/sparta/Node;Lcom/hp/hpl/sparta/Node;)V

    invoke-virtual {p0}, Lcom/hp/hpl/sparta/Node;->notifyObservers()V

    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/hp/hpl/sparta/Element;->attributes_:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/hp/hpl/sparta/Element;->attributes_:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/hp/hpl/sparta/Element;->attributeNames_:Ljava/util/Vector;

    :cond_0
    iget-object v0, p0, Lcom/hp/hpl/sparta/Element;->attributes_:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/hp/hpl/sparta/Element;->attributeNames_:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/hp/hpl/sparta/Element;->attributes_:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/hp/hpl/sparta/Node;->notifyObservers()V

    return-void
.end method

.method public setTagName(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/hp/hpl/sparta/Sparta;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hp/hpl/sparta/Element;->tagName_:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/hp/hpl/sparta/Element;->firstChild_:Lcom/hp/hpl/sparta/Node;

    :goto_0
    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/hp/hpl/sparta/Node;->toString(Ljava/io/Writer;)V

    invoke-virtual {v0}, Lcom/hp/hpl/sparta/Node;->getNextSibling()Lcom/hp/hpl/sparta/Node;

    move-result-object v0

    goto :goto_0
.end method

.method public toXml(Ljava/io/Writer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/hp/hpl/sparta/Element;->tagName_:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hp/hpl/sparta/Element;->attributeNames_:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hp/hpl/sparta/Element;->attributeNames_:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/hp/hpl/sparta/Element;->firstChild_:Lcom/hp/hpl/sparta/Node;

    if-nez v0, :cond_2

    const-string v0, "/>"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_1
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/hp/hpl/sparta/Element;->attributes_:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, "=\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-static {p1, v1}, Lcom/hp/hpl/sparta/Node;->htmlEncode(Ljava/io/Writer;Ljava/lang/String;)V

    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, ">"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hp/hpl/sparta/Element;->firstChild_:Lcom/hp/hpl/sparta/Node;

    :goto_2
    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "</"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/hp/hpl/sparta/Element;->tagName_:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v0, p1}, Lcom/hp/hpl/sparta/Node;->toXml(Ljava/io/Writer;)V

    invoke-virtual {v0}, Lcom/hp/hpl/sparta/Node;->getNextSibling()Lcom/hp/hpl/sparta/Node;

    move-result-object v0

    goto :goto_2
.end method

.method public xpathEnsure(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/hp/hpl/sparta/Element;->xpathSelectElement(Ljava/lang/String;)Lcom/hp/hpl/sparta/Element;

    move-result-object v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, Lcom/hp/hpl/sparta/xpath/XPath;->get(Ljava/lang/String;)Lcom/hp/hpl/sparta/xpath/XPath;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hp/hpl/sparta/xpath/XPath;->getSteps()Ljava/util/Enumeration;

    move-result-object v3

    move v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-nez v4, :cond_1

    add-int/lit8 v1, v1, -0x1

    new-array v3, v1, [Lcom/hp/hpl/sparta/xpath/Step;

    invoke-virtual {v2}, Lcom/hp/hpl/sparta/xpath/XPath;->getSteps()Ljava/util/Enumeration;

    move-result-object v4

    move v1, v0

    :goto_2
    array-length v0, v3

    if-lt v1, v0, :cond_2

    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hp/hpl/sparta/xpath/Step;

    array-length v1, v3

    if-nez v1, :cond_3

    move-object v1, p0

    :goto_3
    invoke-virtual {p0, v1, v0, p1}, Lcom/hp/hpl/sparta/Node;->makeMatching(Lcom/hp/hpl/sparta/Element;Lcom/hp/hpl/sparta/xpath/Step;Ljava/lang/String;)Lcom/hp/hpl/sparta/Element;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/hp/hpl/sparta/Element;->appendChildNoChecking(Lcom/hp/hpl/sparta/Node;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hp/hpl/sparta/xpath/Step;

    aput-object v0, v3, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Lcom/hp/hpl/sparta/xpath/XPath;->isAbsolute()Z

    move-result v1

    invoke-static {v1, v3}, Lcom/hp/hpl/sparta/xpath/XPath;->get(Z[Lcom/hp/hpl/sparta/xpath/Step;)Lcom/hp/hpl/sparta/xpath/XPath;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hp/hpl/sparta/xpath/XPath;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/hp/hpl/sparta/Element;->xpathEnsure(Ljava/lang/String;)Z

    invoke-virtual {p0, v1}, Lcom/hp/hpl/sparta/Element;->xpathSelectElement(Ljava/lang/String;)Lcom/hp/hpl/sparta/Element;
    :try_end_0
    .catch Lcom/hp/hpl/sparta/xpath/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_3

    :catch_0
    move-exception v0

    new-instance v1, Lcom/hp/hpl/sparta/ParseException;

    invoke-direct {v1, p1, v0}, Lcom/hp/hpl/sparta/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
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
    invoke-direct {p0, p1, v0}, Lcom/hp/hpl/sparta/Element;->visitor(Ljava/lang/String;Z)Lcom/hp/hpl/sparta/XPathVisitor;

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
    invoke-direct {p0, p1, v0}, Lcom/hp/hpl/sparta/Element;->visitor(Ljava/lang/String;Z)Lcom/hp/hpl/sparta/XPathVisitor;

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
    invoke-direct {p0, p1, v0}, Lcom/hp/hpl/sparta/Element;->visitor(Ljava/lang/String;Z)Lcom/hp/hpl/sparta/XPathVisitor;

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
    invoke-direct {p0, p1, v0}, Lcom/hp/hpl/sparta/Element;->visitor(Ljava/lang/String;Z)Lcom/hp/hpl/sparta/XPathVisitor;

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
