.class Lcom/hp/hpl/sparta/Node$1;
.super Ljava/lang/Object;

.implements Lcom/hp/hpl/sparta/xpath/BooleanExprVisitor;


.field private final this$0:Lcom/hp/hpl/sparta/Node;

.field private final val$msgContext:Ljava/lang/String;

.field private final val$newChild:Lcom/hp/hpl/sparta/Element;

.field private final val$parent:Lcom/hp/hpl/sparta/Element;

.field private final val$tagName:Ljava/lang/String;


.method constructor <init>(Lcom/hp/hpl/sparta/Node;Lcom/hp/hpl/sparta/Element;Lcom/hp/hpl/sparta/Element;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/xpath/XPathException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hp/hpl/sparta/Node$1;->this$0:Lcom/hp/hpl/sparta/Node;

    iput-object p2, p0, Lcom/hp/hpl/sparta/Node$1;->val$newChild:Lcom/hp/hpl/sparta/Element;

    iput-object p3, p0, Lcom/hp/hpl/sparta/Node$1;->val$parent:Lcom/hp/hpl/sparta/Element;

    iput-object p4, p0, Lcom/hp/hpl/sparta/Node$1;->val$msgContext:Ljava/lang/String;

    iput-object p5, p0, Lcom/hp/hpl/sparta/Node$1;->val$tagName:Ljava/lang/String;

    return-void
.end method


.method public visit(Lcom/hp/hpl/sparta/xpath/AttrEqualsExpr;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/xpath/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lcom/hp/hpl/sparta/Node$1;->val$newChild:Lcom/hp/hpl/sparta/Element;

    invoke-virtual {p1}, Lcom/hp/hpl/sparta/xpath/AttrExpr;->getAttrName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/hp/hpl/sparta/xpath/AttrCompareExpr;->getAttrValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/hp/hpl/sparta/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public visit(Lcom/hp/hpl/sparta/xpath/AttrExistsExpr;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/xpath/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lcom/hp/hpl/sparta/Node$1;->val$newChild:Lcom/hp/hpl/sparta/Element;

    invoke-virtual {p1}, Lcom/hp/hpl/sparta/xpath/AttrExpr;->getAttrName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "something"

    invoke-virtual {v0, v1, v2}, Lcom/hp/hpl/sparta/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public visit(Lcom/hp/hpl/sparta/xpath/AttrGreaterExpr;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/xpath/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lcom/hp/hpl/sparta/Node$1;->val$newChild:Lcom/hp/hpl/sparta/Element;

    invoke-virtual {p1}, Lcom/hp/hpl/sparta/xpath/AttrExpr;->getAttrName()Ljava/lang/String;

    move-result-object v1

    const-wide v2, 0x7fffffffffffffffL

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/hp/hpl/sparta/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public visit(Lcom/hp/hpl/sparta/xpath/AttrLessExpr;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/xpath/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lcom/hp/hpl/sparta/Node$1;->val$newChild:Lcom/hp/hpl/sparta/Element;

    invoke-virtual {p1}, Lcom/hp/hpl/sparta/xpath/AttrExpr;->getAttrName()Ljava/lang/String;

    move-result-object v1

    const-wide/high16 v2, -0x8000000000000000L

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/hp/hpl/sparta/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public visit(Lcom/hp/hpl/sparta/xpath/AttrNotEqualsExpr;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/xpath/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lcom/hp/hpl/sparta/Node$1;->val$newChild:Lcom/hp/hpl/sparta/Element;

    invoke-virtual {p1}, Lcom/hp/hpl/sparta/xpath/AttrExpr;->getAttrName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p1}, Lcom/hp/hpl/sparta/xpath/AttrCompareExpr;->getAttrValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/hp/hpl/sparta/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public visit(Lcom/hp/hpl/sparta/xpath/PositionEqualsExpr;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/xpath/XPathException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p1}, Lcom/hp/hpl/sparta/xpath/PositionEqualsExpr;->getPosition()I

    move-result v1

    iget-object v2, p0, Lcom/hp/hpl/sparta/Node$1;->val$parent:Lcom/hp/hpl/sparta/Element;

    if-nez v2, :cond_1

    if-eq v1, v0, :cond_1

    new-instance v0, Lcom/hp/hpl/sparta/xpath/XPathException;

    iget-object v1, p0, Lcom/hp/hpl/sparta/Node$1;->val$msgContext:Ljava/lang/String;

    invoke-static {v1}, Lcom/hp/hpl/sparta/xpath/XPath;->get(Ljava/lang/String;)Lcom/hp/hpl/sparta/xpath/XPath;

    move-result-object v1

    const-string v2, "Position of root node must be 1"

    invoke-direct {v0, v1, v2}, Lcom/hp/hpl/sparta/xpath/XPathException;-><init>(Lcom/hp/hpl/sparta/xpath/XPath;Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v2, p0, Lcom/hp/hpl/sparta/Node$1;->val$parent:Lcom/hp/hpl/sparta/Element;

    new-instance v3, Lcom/hp/hpl/sparta/Element;

    iget-object v4, p0, Lcom/hp/hpl/sparta/Node$1;->val$tagName:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/hp/hpl/sparta/Element;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/hp/hpl/sparta/Element;->appendChild(Lcom/hp/hpl/sparta/Node;)V

    add-int/lit8 v0, v0, 0x1

    :cond_1
    if-lt v0, v1, :cond_0

    return-void
.end method

.method public visit(Lcom/hp/hpl/sparta/xpath/TextEqualsExpr;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/xpath/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lcom/hp/hpl/sparta/Node$1;->val$newChild:Lcom/hp/hpl/sparta/Element;

    new-instance v1, Lcom/hp/hpl/sparta/Text;

    invoke-virtual {p1}, Lcom/hp/hpl/sparta/xpath/TextCompareExpr;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/hp/hpl/sparta/Text;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hp/hpl/sparta/Element;->appendChild(Lcom/hp/hpl/sparta/Node;)V

    return-void
.end method

.method public visit(Lcom/hp/hpl/sparta/xpath/TextExistsExpr;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/xpath/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lcom/hp/hpl/sparta/Node$1;->val$newChild:Lcom/hp/hpl/sparta/Element;

    new-instance v1, Lcom/hp/hpl/sparta/Text;

    const-string v2, "something"

    invoke-direct {v1, v2}, Lcom/hp/hpl/sparta/Text;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hp/hpl/sparta/Element;->appendChild(Lcom/hp/hpl/sparta/Node;)V

    return-void
.end method

.method public visit(Lcom/hp/hpl/sparta/xpath/TextNotEqualsExpr;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/xpath/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lcom/hp/hpl/sparta/Node$1;->val$newChild:Lcom/hp/hpl/sparta/Element;

    new-instance v1, Lcom/hp/hpl/sparta/Text;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p1}, Lcom/hp/hpl/sparta/xpath/TextCompareExpr;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/hp/hpl/sparta/Text;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hp/hpl/sparta/Element;->appendChild(Lcom/hp/hpl/sparta/Node;)V

    return-void
.end method

.method public visit(Lcom/hp/hpl/sparta/xpath/TrueExpr;)V
    .locals 0

    return-void
.end method
