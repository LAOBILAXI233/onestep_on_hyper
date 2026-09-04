.class public Lcom/hp/hpl/sparta/xpath/AttrGreaterExpr;
.super Lcom/hp/hpl/sparta/xpath/AttrRelationalExpr;


.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/hp/hpl/sparta/xpath/AttrRelationalExpr;-><init>(Ljava/lang/String;I)V

    return-void
.end method


.method public accept(Lcom/hp/hpl/sparta/xpath/BooleanExprVisitor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/xpath/XPathException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/hp/hpl/sparta/xpath/BooleanExprVisitor;->visit(Lcom/hp/hpl/sparta/xpath/AttrGreaterExpr;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, ">"

    invoke-virtual {p0, v0}, Lcom/hp/hpl/sparta/xpath/AttrRelationalExpr;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
