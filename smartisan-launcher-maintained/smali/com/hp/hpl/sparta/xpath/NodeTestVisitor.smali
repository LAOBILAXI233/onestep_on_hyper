.class public interface abstract Lcom/hp/hpl/sparta/xpath/NodeTestVisitor;
.super Ljava/lang/Object;


.method public abstract visit(Lcom/hp/hpl/sparta/xpath/AllElementTest;)V
.end method

.method public abstract visit(Lcom/hp/hpl/sparta/xpath/AttrTest;)V
.end method

.method public abstract visit(Lcom/hp/hpl/sparta/xpath/ElementTest;)V
.end method

.method public abstract visit(Lcom/hp/hpl/sparta/xpath/ParentNodeTest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/xpath/XPathException;
        }
    .end annotation
.end method

.method public abstract visit(Lcom/hp/hpl/sparta/xpath/TextTest;)V
.end method

.method public abstract visit(Lcom/hp/hpl/sparta/xpath/ThisNodeTest;)V
.end method
