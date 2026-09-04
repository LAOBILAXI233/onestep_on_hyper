.class public abstract Lcom/hp/hpl/sparta/xpath/AttrExpr;
.super Lcom/hp/hpl/sparta/xpath/BooleanExpr;


.field private final attrName_:Ljava/lang/String;


.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/hp/hpl/sparta/xpath/BooleanExpr;-><init>()V

    iput-object p1, p0, Lcom/hp/hpl/sparta/xpath/AttrExpr;->attrName_:Ljava/lang/String;

    return-void
.end method


.method public getAttrName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hp/hpl/sparta/xpath/AttrExpr;->attrName_:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/hp/hpl/sparta/xpath/AttrExpr;->attrName_:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
