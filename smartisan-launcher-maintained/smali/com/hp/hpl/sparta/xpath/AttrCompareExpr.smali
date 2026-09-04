.class public abstract Lcom/hp/hpl/sparta/xpath/AttrCompareExpr;
.super Lcom/hp/hpl/sparta/xpath/AttrExpr;


.field private final attrValue_:Ljava/lang/String;


.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/hp/hpl/sparta/xpath/AttrExpr;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/hp/hpl/sparta/Sparta;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hp/hpl/sparta/xpath/AttrCompareExpr;->attrValue_:Ljava/lang/String;

    return-void
.end method


.method public getAttrValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hp/hpl/sparta/xpath/AttrCompareExpr;->attrValue_:Ljava/lang/String;

    return-object v0
.end method

.method protected toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-super {p0}, Lcom/hp/hpl/sparta/xpath/AttrExpr;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/hp/hpl/sparta/xpath/AttrCompareExpr;->attrValue_:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\']"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
