.class public Lcom/hp/hpl/sparta/xpath/ElementTest;
.super Lcom/hp/hpl/sparta/xpath/NodeTest;


.field private final tagName_:Ljava/lang/String;


.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/hp/hpl/sparta/xpath/NodeTest;-><init>()V

    invoke-static {p1}, Lcom/hp/hpl/sparta/Sparta;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hp/hpl/sparta/xpath/ElementTest;->tagName_:Ljava/lang/String;

    return-void
.end method


.method public accept(Lcom/hp/hpl/sparta/xpath/Visitor;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/hp/hpl/sparta/xpath/NodeTestVisitor;->visit(Lcom/hp/hpl/sparta/xpath/ElementTest;)V

    return-void
.end method

.method public getTagName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hp/hpl/sparta/xpath/ElementTest;->tagName_:Ljava/lang/String;

    return-object v0
.end method

.method public isStringValue()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hp/hpl/sparta/xpath/ElementTest;->tagName_:Ljava/lang/String;

    return-object v0
.end method
