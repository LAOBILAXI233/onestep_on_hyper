.class public abstract Lcom/hp/hpl/sparta/xpath/NodeTest;
.super Ljava/lang/Object;


.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public abstract accept(Lcom/hp/hpl/sparta/xpath/Visitor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/xpath/XPathException;
        }
    .end annotation
.end method

.method public abstract isStringValue()Z
.end method
