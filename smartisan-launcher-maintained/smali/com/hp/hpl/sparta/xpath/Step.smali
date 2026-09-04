.class public Lcom/hp/hpl/sparta/xpath/Step;
.super Ljava/lang/Object;


.field public static DOT:Lcom/hp/hpl/sparta/xpath/Step;


.field private final multiLevel_:Z

.field private final nodeTest_:Lcom/hp/hpl/sparta/xpath/NodeTest;

.field private final predicate_:Lcom/hp/hpl/sparta/xpath/BooleanExpr;


.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/hp/hpl/sparta/xpath/Step;

    sget-object v1, Lcom/hp/hpl/sparta/xpath/ThisNodeTest;->INSTANCE:Lcom/hp/hpl/sparta/xpath/ThisNodeTest;

    sget-object v2, Lcom/hp/hpl/sparta/xpath/TrueExpr;->INSTANCE:Lcom/hp/hpl/sparta/xpath/TrueExpr;

    invoke-direct {v0, v1, v2}, Lcom/hp/hpl/sparta/xpath/Step;-><init>(Lcom/hp/hpl/sparta/xpath/NodeTest;Lcom/hp/hpl/sparta/xpath/BooleanExpr;)V

    sput-object v0, Lcom/hp/hpl/sparta/xpath/Step;->DOT:Lcom/hp/hpl/sparta/xpath/Step;

    return-void
.end method

.method constructor <init>(Lcom/hp/hpl/sparta/xpath/NodeTest;Lcom/hp/hpl/sparta/xpath/BooleanExpr;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hp/hpl/sparta/xpath/Step;->nodeTest_:Lcom/hp/hpl/sparta/xpath/NodeTest;

    iput-object p2, p0, Lcom/hp/hpl/sparta/xpath/Step;->predicate_:Lcom/hp/hpl/sparta/xpath/BooleanExpr;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hp/hpl/sparta/xpath/Step;->multiLevel_:Z

    return-void
.end method

.method constructor <init>(Lcom/hp/hpl/sparta/xpath/XPath;ZLcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/xpath/XPathException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/hp/hpl/sparta/xpath/Step;->multiLevel_:Z

    iget v0, p3, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->ttype:I

    sparse-switch v0, :sswitch_data_0

    new-instance v0, Lcom/hp/hpl/sparta/xpath/XPathException;

    const-string v1, "at begininning of step"

    const-string v2, "\'.\' or \'*\' or name"

    invoke-direct {v0, p1, v1, p3, v2}, Lcom/hp/hpl/sparta/xpath/XPathException;-><init>(Lcom/hp/hpl/sparta/xpath/XPath;Ljava/lang/String;Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;Ljava/lang/String;)V

    throw v0

    :sswitch_0
    invoke-virtual {p3}, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->nextToken()I

    move-result v0

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/hp/hpl/sparta/xpath/ParentNodeTest;->INSTANCE:Lcom/hp/hpl/sparta/xpath/ParentNodeTest;

    iput-object v0, p0, Lcom/hp/hpl/sparta/xpath/Step;->nodeTest_:Lcom/hp/hpl/sparta/xpath/NodeTest;

    :goto_0
    invoke-virtual {p3}, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->nextToken()I

    move-result v0

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_6

    invoke-virtual {p3}, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->nextToken()I

    invoke-static {p1, p3}, Lcom/hp/hpl/sparta/xpath/ExprFactory;->createExpr(Lcom/hp/hpl/sparta/xpath/XPath;Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;)Lcom/hp/hpl/sparta/xpath/BooleanExpr;

    move-result-object v0

    iput-object v0, p0, Lcom/hp/hpl/sparta/xpath/Step;->predicate_:Lcom/hp/hpl/sparta/xpath/BooleanExpr;

    iget v0, p3, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->ttype:I

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_5

    new-instance v0, Lcom/hp/hpl/sparta/xpath/XPathException;

    const-string v1, "after predicate expression"

    const-string v2, "]"

    invoke-direct {v0, p1, v1, p3, v2}, Lcom/hp/hpl/sparta/xpath/XPathException;-><init>(Lcom/hp/hpl/sparta/xpath/XPath;Ljava/lang/String;Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p3}, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->pushBack()V

    sget-object v0, Lcom/hp/hpl/sparta/xpath/ThisNodeTest;->INSTANCE:Lcom/hp/hpl/sparta/xpath/ThisNodeTest;

    iput-object v0, p0, Lcom/hp/hpl/sparta/xpath/Step;->nodeTest_:Lcom/hp/hpl/sparta/xpath/NodeTest;

    goto :goto_0

    :sswitch_1
    sget-object v0, Lcom/hp/hpl/sparta/xpath/AllElementTest;->INSTANCE:Lcom/hp/hpl/sparta/xpath/AllElementTest;

    iput-object v0, p0, Lcom/hp/hpl/sparta/xpath/Step;->nodeTest_:Lcom/hp/hpl/sparta/xpath/NodeTest;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p3}, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->nextToken()I

    move-result v0

    const/4 v1, -0x3

    if-eq v0, v1, :cond_1

    new-instance v0, Lcom/hp/hpl/sparta/xpath/XPathException;

    const-string v1, "after @ in node test"

    const-string v2, "name"

    invoke-direct {v0, p1, v1, p3, v2}, Lcom/hp/hpl/sparta/xpath/XPathException;-><init>(Lcom/hp/hpl/sparta/xpath/XPath;Ljava/lang/String;Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/hp/hpl/sparta/xpath/AttrTest;

    iget-object v1, p3, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->sval:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/hp/hpl/sparta/xpath/AttrTest;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/hp/hpl/sparta/xpath/Step;->nodeTest_:Lcom/hp/hpl/sparta/xpath/NodeTest;

    goto :goto_0

    :sswitch_3
    iget-object v0, p3, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->sval:Ljava/lang/String;

    const-string v1, "text"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p3}, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->nextToken()I

    move-result v0

    const/16 v1, 0x28

    if-ne v0, v1, :cond_2

    invoke-virtual {p3}, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->nextToken()I

    move-result v0

    const/16 v1, 0x29

    if-eq v0, v1, :cond_3

    :cond_2
    new-instance v0, Lcom/hp/hpl/sparta/xpath/XPathException;

    const-string v1, "after text"

    const-string v2, "()"

    invoke-direct {v0, p1, v1, p3, v2}, Lcom/hp/hpl/sparta/xpath/XPathException;-><init>(Lcom/hp/hpl/sparta/xpath/XPath;Ljava/lang/String;Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;Ljava/lang/String;)V

    throw v0

    :cond_3
    sget-object v0, Lcom/hp/hpl/sparta/xpath/TextTest;->INSTANCE:Lcom/hp/hpl/sparta/xpath/TextTest;

    iput-object v0, p0, Lcom/hp/hpl/sparta/xpath/Step;->nodeTest_:Lcom/hp/hpl/sparta/xpath/NodeTest;

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/hp/hpl/sparta/xpath/ElementTest;

    iget-object v1, p3, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->sval:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/hp/hpl/sparta/xpath/ElementTest;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/hp/hpl/sparta/xpath/Step;->nodeTest_:Lcom/hp/hpl/sparta/xpath/NodeTest;

    goto :goto_0

    :cond_5
    invoke-virtual {p3}, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->nextToken()I

    :goto_1
    return-void

    :cond_6
    sget-object v0, Lcom/hp/hpl/sparta/xpath/TrueExpr;->INSTANCE:Lcom/hp/hpl/sparta/xpath/TrueExpr;

    iput-object v0, p0, Lcom/hp/hpl/sparta/xpath/Step;->predicate_:Lcom/hp/hpl/sparta/xpath/BooleanExpr;

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3 -> :sswitch_3
        0x2a -> :sswitch_1
        0x2e -> :sswitch_0
        0x40 -> :sswitch_2
    .end sparse-switch
.end method


.method public getNodeTest()Lcom/hp/hpl/sparta/xpath/NodeTest;
    .locals 1

    iget-object v0, p0, Lcom/hp/hpl/sparta/xpath/Step;->nodeTest_:Lcom/hp/hpl/sparta/xpath/NodeTest;

    return-object v0
.end method

.method public getPredicate()Lcom/hp/hpl/sparta/xpath/BooleanExpr;
    .locals 1

    iget-object v0, p0, Lcom/hp/hpl/sparta/xpath/Step;->predicate_:Lcom/hp/hpl/sparta/xpath/BooleanExpr;

    return-object v0
.end method

.method public isMultiLevel()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hp/hpl/sparta/xpath/Step;->multiLevel_:Z

    return v0
.end method

.method public isStringValue()Z
    .locals 1

    iget-object v0, p0, Lcom/hp/hpl/sparta/xpath/Step;->nodeTest_:Lcom/hp/hpl/sparta/xpath/NodeTest;

    invoke-virtual {v0}, Lcom/hp/hpl/sparta/xpath/NodeTest;->isStringValue()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lcom/hp/hpl/sparta/xpath/Step;->nodeTest_:Lcom/hp/hpl/sparta/xpath/NodeTest;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/hp/hpl/sparta/xpath/Step;->predicate_:Lcom/hp/hpl/sparta/xpath/BooleanExpr;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
