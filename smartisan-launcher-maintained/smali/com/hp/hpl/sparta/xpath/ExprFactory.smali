.class public Lcom/hp/hpl/sparta/xpath/ExprFactory;
.super Ljava/lang/Object;


.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createExpr(Lcom/hp/hpl/sparta/xpath/XPath;Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;)Lcom/hp/hpl/sparta/xpath/BooleanExpr;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/xpath/XPathException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v6, 0x3d

    const/4 v5, -0x2

    const/16 v4, 0x27

    const/16 v3, 0x22

    iget v0, p1, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->ttype:I

    sparse-switch v0, :sswitch_data_0

    new-instance v0, Lcom/hp/hpl/sparta/xpath/XPathException;

    const-string v1, "at beginning of expression"

    const-string v2, "@, number, or text()"

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/hp/hpl/sparta/xpath/XPathException;-><init>(Lcom/hp/hpl/sparta/xpath/XPath;Ljava/lang/String;Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;Ljava/lang/String;)V

    throw v0

    :sswitch_0
    iget v1, p1, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->nval:I

    invoke-virtual {p1}, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->nextToken()I

    new-instance v0, Lcom/hp/hpl/sparta/xpath/PositionEqualsExpr;

    invoke-direct {v0, v1}, Lcom/hp/hpl/sparta/xpath/PositionEqualsExpr;-><init>(I)V

    :goto_0
    return-object v0

    :sswitch_1
    invoke-virtual {p1}, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->nextToken()I

    move-result v0

    const/4 v1, -0x3

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/hp/hpl/sparta/xpath/XPathException;

    const-string v1, "after @"

    const-string v2, "name"

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/hp/hpl/sparta/xpath/XPathException;-><init>(Lcom/hp/hpl/sparta/xpath/XPath;Ljava/lang/String;Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v2, p1, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->sval:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->nextToken()I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    new-instance v0, Lcom/hp/hpl/sparta/xpath/AttrExistsExpr;

    invoke-direct {v0, v2}, Lcom/hp/hpl/sparta/xpath/AttrExistsExpr;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->nextToken()I

    iget v0, p1, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->ttype:I

    if-eq v0, v3, :cond_1

    iget v0, p1, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->ttype:I

    if-eq v0, v4, :cond_1

    new-instance v0, Lcom/hp/hpl/sparta/xpath/XPathException;

    const-string v1, "right hand side of equals"

    const-string v2, "quoted string"

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/hp/hpl/sparta/xpath/XPathException;-><init>(Lcom/hp/hpl/sparta/xpath/XPath;Ljava/lang/String;Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v1, p1, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->sval:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->nextToken()I

    new-instance v0, Lcom/hp/hpl/sparta/xpath/AttrEqualsExpr;

    invoke-direct {v0, v2, v1}, Lcom/hp/hpl/sparta/xpath/AttrEqualsExpr;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->nextToken()I

    iget v0, p1, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->ttype:I

    if-eq v0, v3, :cond_2

    iget v0, p1, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->ttype:I

    if-ne v0, v4, :cond_3

    :cond_2
    iget-object v0, p1, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->sval:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_1
    invoke-virtual {p1}, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->nextToken()I

    new-instance v1, Lcom/hp/hpl/sparta/xpath/AttrLessExpr;

    invoke-direct {v1, v2, v0}, Lcom/hp/hpl/sparta/xpath/AttrLessExpr;-><init>(Ljava/lang/String;I)V

    move-object v0, v1

    goto :goto_0

    :cond_3
    iget v0, p1, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->ttype:I

    if-ne v0, v5, :cond_4

    iget v0, p1, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->nval:I

    goto :goto_1

    :cond_4
    new-instance v0, Lcom/hp/hpl/sparta/xpath/XPathException;

    const-string v1, "right hand side of less-than"

    const-string v2, "quoted string or number"

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/hp/hpl/sparta/xpath/XPathException;-><init>(Lcom/hp/hpl/sparta/xpath/XPath;Ljava/lang/String;Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;Ljava/lang/String;)V

    throw v0

    :sswitch_4
    invoke-virtual {p1}, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->nextToken()I

    iget v0, p1, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->ttype:I

    if-eq v0, v3, :cond_5

    iget v0, p1, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->ttype:I

    if-ne v0, v4, :cond_6

    :cond_5
    iget-object v0, p1, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->sval:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_2
    invoke-virtual {p1}, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->nextToken()I

    new-instance v1, Lcom/hp/hpl/sparta/xpath/AttrGreaterExpr;

    invoke-direct {v1, v2, v0}, Lcom/hp/hpl/sparta/xpath/AttrGreaterExpr;-><init>(Ljava/lang/String;I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_6
    iget v0, p1, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->ttype:I

    if-ne v0, v5, :cond_7

    iget v0, p1, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->nval:I

    goto :goto_2

    :cond_7
    new-instance v0, Lcom/hp/hpl/sparta/xpath/XPathException;

    const-string v1, "right hand side of greater-than"

    const-string v2, "quoted string or number"

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/hp/hpl/sparta/xpath/XPathException;-><init>(Lcom/hp/hpl/sparta/xpath/XPath;Ljava/lang/String;Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;Ljava/lang/String;)V

    throw v0

    :sswitch_5
    invoke-virtual {p1}, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->nextToken()I

    iget v0, p1, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->ttype:I

    if-eq v0, v6, :cond_8

    new-instance v0, Lcom/hp/hpl/sparta/xpath/XPathException;

    const-string v1, "after !"

    const-string v2, "="

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/hp/hpl/sparta/xpath/XPathException;-><init>(Lcom/hp/hpl/sparta/xpath/XPath;Ljava/lang/String;Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;Ljava/lang/String;)V

    throw v0

    :cond_8
    invoke-virtual {p1}, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->nextToken()I

    iget v0, p1, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->ttype:I

    if-eq v0, v3, :cond_9

    iget v0, p1, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->ttype:I

    if-eq v0, v4, :cond_9

    new-instance v0, Lcom/hp/hpl/sparta/xpath/XPathException;

    const-string v1, "right hand side of !="

    const-string v2, "quoted string"

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/hp/hpl/sparta/xpath/XPathException;-><init>(Lcom/hp/hpl/sparta/xpath/XPath;Ljava/lang/String;Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;Ljava/lang/String;)V

    throw v0

    :cond_9
    iget-object v1, p1, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->sval:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->nextToken()I

    new-instance v0, Lcom/hp/hpl/sparta/xpath/AttrNotEqualsExpr;

    invoke-direct {v0, v2, v1}, Lcom/hp/hpl/sparta/xpath/AttrNotEqualsExpr;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_6
    iget-object v0, p1, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->sval:Ljava/lang/String;

    const-string v1, "text"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    new-instance v0, Lcom/hp/hpl/sparta/xpath/XPathException;

    const-string v1, "at beginning of expression"

    const-string v2, "text()"

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/hp/hpl/sparta/xpath/XPathException;-><init>(Lcom/hp/hpl/sparta/xpath/XPath;Ljava/lang/String;Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-virtual {p1}, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->nextToken()I

    move-result v0

    const/16 v1, 0x28

    if-eq v0, v1, :cond_b

    new-instance v0, Lcom/hp/hpl/sparta/xpath/XPathException;

    const-string v1, "after text"

    const-string v2, "("

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/hp/hpl/sparta/xpath/XPathException;-><init>(Lcom/hp/hpl/sparta/xpath/XPath;Ljava/lang/String;Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;Ljava/lang/String;)V

    throw v0

    :cond_b
    invoke-virtual {p1}, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->nextToken()I

    move-result v0

    const/16 v1, 0x29

    if-eq v0, v1, :cond_c

    new-instance v0, Lcom/hp/hpl/sparta/xpath/XPathException;

    const-string v1, "after text("

    const-string v2, ")"

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/hp/hpl/sparta/xpath/XPathException;-><init>(Lcom/hp/hpl/sparta/xpath/XPath;Ljava/lang/String;Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;Ljava/lang/String;)V

    throw v0

    :cond_c
    invoke-virtual {p1}, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->nextToken()I

    move-result v0

    sparse-switch v0, :sswitch_data_2

    sget-object v0, Lcom/hp/hpl/sparta/xpath/TextExistsExpr;->INSTANCE:Lcom/hp/hpl/sparta/xpath/TextExistsExpr;

    goto/16 :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->nextToken()I

    iget v0, p1, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->ttype:I

    if-eq v0, v3, :cond_d

    iget v0, p1, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->ttype:I

    if-eq v0, v4, :cond_d

    new-instance v0, Lcom/hp/hpl/sparta/xpath/XPathException;

    const-string v1, "right hand side of equals"

    const-string v2, "quoted string"

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/hp/hpl/sparta/xpath/XPathException;-><init>(Lcom/hp/hpl/sparta/xpath/XPath;Ljava/lang/String;Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;Ljava/lang/String;)V

    throw v0

    :cond_d
    iget-object v1, p1, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->sval:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->nextToken()I

    new-instance v0, Lcom/hp/hpl/sparta/xpath/TextEqualsExpr;

    invoke-direct {v0, v1}, Lcom/hp/hpl/sparta/xpath/TextEqualsExpr;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->nextToken()I

    iget v0, p1, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->ttype:I

    if-eq v0, v6, :cond_e

    new-instance v0, Lcom/hp/hpl/sparta/xpath/XPathException;

    const-string v1, "after !"

    const-string v2, "="

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/hp/hpl/sparta/xpath/XPathException;-><init>(Lcom/hp/hpl/sparta/xpath/XPath;Ljava/lang/String;Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;Ljava/lang/String;)V

    throw v0

    :cond_e
    invoke-virtual {p1}, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->nextToken()I

    iget v0, p1, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->ttype:I

    if-eq v0, v3, :cond_f

    iget v0, p1, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->ttype:I

    if-eq v0, v4, :cond_f

    new-instance v0, Lcom/hp/hpl/sparta/xpath/XPathException;

    const-string v1, "right hand side of !="

    const-string v2, "quoted string"

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/hp/hpl/sparta/xpath/XPathException;-><init>(Lcom/hp/hpl/sparta/xpath/XPath;Ljava/lang/String;Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;Ljava/lang/String;)V

    throw v0

    :cond_f
    iget-object v1, p1, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->sval:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->nextToken()I

    new-instance v0, Lcom/hp/hpl/sparta/xpath/TextNotEqualsExpr;

    invoke-direct {v0, v1}, Lcom/hp/hpl/sparta/xpath/TextNotEqualsExpr;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x3 -> :sswitch_6
        -0x2 -> :sswitch_0
        0x40 -> :sswitch_1
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x21 -> :sswitch_5
        0x3c -> :sswitch_3
        0x3d -> :sswitch_2
        0x3e -> :sswitch_4
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x21 -> :sswitch_8
        0x3d -> :sswitch_7
    .end sparse-switch
.end method
