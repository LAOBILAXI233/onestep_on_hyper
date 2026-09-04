.class public Lcom/hp/hpl/sparta/xpath/XPath;
.super Ljava/lang/Object;


.field private static final ASSERTION:I

.field private static cache_:Ljava/util/Hashtable;


.field private absolute_:Z

.field private steps_:Ljava/util/Stack;

.field private string_:Ljava/lang/String;


.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/hp/hpl/sparta/xpath/XPath;->cache_:Ljava/util/Hashtable;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/xpath/XPathException;
        }
    .end annotation

    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, p1, v0}, Lcom/hp/hpl/sparta/xpath/XPath;-><init>(Ljava/lang/String;Ljava/io/Reader;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/io/Reader;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/xpath/XPathException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v6, 0x2f

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/hp/hpl/sparta/xpath/XPath;->steps_:Ljava/util/Stack;

    :try_start_0
    iput-object p1, p0, Lcom/hp/hpl/sparta/xpath/XPath;->string_:Ljava/lang/String;

    new-instance v3, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;

    invoke-direct {v3, p2}, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;-><init>(Ljava/io/Reader;)V

    const/16 v0, 0x2f

    invoke-virtual {v3, v0}, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->ordinaryChar(C)V

    const/16 v0, 0x2e

    invoke-virtual {v3, v0}, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->ordinaryChar(C)V

    const/16 v0, 0x3a

    const/16 v4, 0x3a

    invoke-virtual {v3, v0, v4}, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->wordChars(CC)V

    const/16 v0, 0x5f

    const/16 v4, 0x5f

    invoke-virtual {v3, v0, v4}, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->wordChars(CC)V

    invoke-virtual {v3}, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->nextToken()I

    move-result v0

    if-ne v0, v6, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hp/hpl/sparta/xpath/XPath;->absolute_:Z

    invoke-virtual {v3}, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->nextToken()I

    move-result v0

    if-ne v0, v6, :cond_0

    invoke-virtual {v3}, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->nextToken()I

    move v0, v1

    :goto_0
    iget-object v4, p0, Lcom/hp/hpl/sparta/xpath/XPath;->steps_:Ljava/util/Stack;

    new-instance v5, Lcom/hp/hpl/sparta/xpath/Step;

    invoke-direct {v5, p0, v0, v3}, Lcom/hp/hpl/sparta/xpath/Step;-><init>(Lcom/hp/hpl/sparta/xpath/XPath;ZLcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;)V

    invoke-virtual {v4, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    iget v0, v3, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->ttype:I

    if-eq v0, v6, :cond_2

    iget v0, v3, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->ttype:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    new-instance v0, Lcom/hp/hpl/sparta/xpath/XPathException;

    const-string v1, "at end of XPATH expression"

    const-string v2, "end of expression"

    invoke-direct {v0, p0, v1, v3, v2}, Lcom/hp/hpl/sparta/xpath/XPathException;-><init>(Lcom/hp/hpl/sparta/xpath/XPath;Ljava/lang/String;Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/hp/hpl/sparta/xpath/XPathException;

    invoke-direct {v1, p0, v0}, Lcom/hp/hpl/sparta/xpath/XPathException;-><init>(Lcom/hp/hpl/sparta/xpath/XPath;Ljava/lang/Exception;)V

    throw v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/hp/hpl/sparta/xpath/XPath;->absolute_:Z

    move v0, v2

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->nextToken()I

    move-result v0

    if-ne v0, v6, :cond_3

    invoke-virtual {v3}, Lcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;->nextToken()I

    move v0, v1

    :goto_2
    iget-object v4, p0, Lcom/hp/hpl/sparta/xpath/XPath;->steps_:Ljava/util/Stack;

    new-instance v5, Lcom/hp/hpl/sparta/xpath/Step;

    invoke-direct {v5, p0, v0, v3}, Lcom/hp/hpl/sparta/xpath/Step;-><init>(Lcom/hp/hpl/sparta/xpath/XPath;ZLcom/hp/hpl/sparta/xpath/SimpleStreamTokenizer;)V

    invoke-virtual {v4, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    return-void
.end method

.method private constructor <init>(Z[Lcom/hp/hpl/sparta/xpath/Step;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/hp/hpl/sparta/xpath/XPath;->steps_:Ljava/util/Stack;

    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-lt v0, v1, :cond_0

    iput-boolean p1, p0, Lcom/hp/hpl/sparta/xpath/XPath;->absolute_:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hp/hpl/sparta/xpath/XPath;->string_:Ljava/lang/String;

    return-void

    :cond_0
    iget-object v1, p0, Lcom/hp/hpl/sparta/xpath/XPath;->steps_:Ljava/util/Stack;

    aget-object v2, p2, v0

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private generateString()Ljava/lang/String;
    .locals 5

    const/16 v4, 0x2f

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/hp/hpl/sparta/xpath/XPath;->steps_:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hp/hpl/sparta/xpath/Step;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/hp/hpl/sparta/xpath/XPath;->absolute_:Z

    if-eqz v1, :cond_2

    :cond_1
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Lcom/hp/hpl/sparta/xpath/Step;->isMultiLevel()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_2
    invoke-virtual {v0}, Lcom/hp/hpl/sparta/xpath/Step;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    move v1, v0

    goto :goto_0
.end method

.method public static get(Ljava/lang/String;)Lcom/hp/hpl/sparta/xpath/XPath;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/xpath/XPathException;
        }
    .end annotation

    sget-object v1, Lcom/hp/hpl/sparta/xpath/XPath;->cache_:Ljava/util/Hashtable;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/hp/hpl/sparta/xpath/XPath;->cache_:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hp/hpl/sparta/xpath/XPath;

    if-nez v0, :cond_0

    new-instance v0, Lcom/hp/hpl/sparta/xpath/XPath;

    invoke-direct {v0, p0}, Lcom/hp/hpl/sparta/xpath/XPath;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/hp/hpl/sparta/xpath/XPath;->cache_:Ljava/util/Hashtable;

    invoke-virtual {v2, p0, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static get(Z[Lcom/hp/hpl/sparta/xpath/Step;)Lcom/hp/hpl/sparta/xpath/XPath;
    .locals 4

    new-instance v1, Lcom/hp/hpl/sparta/xpath/XPath;

    invoke-direct {v1, p0, p1}, Lcom/hp/hpl/sparta/xpath/XPath;-><init>(Z[Lcom/hp/hpl/sparta/xpath/Step;)V

    invoke-virtual {v1}, Lcom/hp/hpl/sparta/xpath/XPath;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/hp/hpl/sparta/xpath/XPath;->cache_:Ljava/util/Hashtable;

    monitor-enter v3

    :try_start_0
    sget-object v0, Lcom/hp/hpl/sparta/xpath/XPath;->cache_:Ljava/util/Hashtable;

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hp/hpl/sparta/xpath/XPath;

    if-nez v0, :cond_0

    sget-object v0, Lcom/hp/hpl/sparta/xpath/XPath;->cache_:Ljava/util/Hashtable;

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v3

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static isStringValue(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/xpath/XPathException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lcom/hp/hpl/sparta/xpath/XPath;->get(Ljava/lang/String;)Lcom/hp/hpl/sparta/xpath/XPath;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hp/hpl/sparta/xpath/XPath;->isStringValue()Z

    move-result v0

    return v0
.end method


.method public clone()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/hp/hpl/sparta/xpath/XPath;->steps_:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v2, v0, [Lcom/hp/hpl/sparta/xpath/Step;

    iget-object v0, p0, Lcom/hp/hpl/sparta/xpath/XPath;->steps_:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, v2

    if-lt v1, v0, :cond_0

    new-instance v0, Lcom/hp/hpl/sparta/xpath/XPath;

    iget-boolean v1, p0, Lcom/hp/hpl/sparta/xpath/XPath;->absolute_:Z

    invoke-direct {v0, v1, v2}, Lcom/hp/hpl/sparta/xpath/XPath;-><init>(Z[Lcom/hp/hpl/sparta/xpath/Step;)V

    return-object v0

    :cond_0
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hp/hpl/sparta/xpath/Step;

    aput-object v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public getIndexingAttrName()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/xpath/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lcom/hp/hpl/sparta/xpath/XPath;->steps_:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hp/hpl/sparta/xpath/Step;

    invoke-virtual {v0}, Lcom/hp/hpl/sparta/xpath/Step;->getPredicate()Lcom/hp/hpl/sparta/xpath/BooleanExpr;

    move-result-object v0

    instance-of v1, v0, Lcom/hp/hpl/sparta/xpath/AttrExistsExpr;

    if-nez v1, :cond_0

    new-instance v0, Lcom/hp/hpl/sparta/xpath/XPathException;

    const-string v1, "has no indexing attribute name (must end with predicate of the form [@attrName]"

    invoke-direct {v0, p0, v1}, Lcom/hp/hpl/sparta/xpath/XPathException;-><init>(Lcom/hp/hpl/sparta/xpath/XPath;Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast v0, Lcom/hp/hpl/sparta/xpath/AttrExistsExpr;

    invoke-virtual {v0}, Lcom/hp/hpl/sparta/xpath/AttrExpr;->getAttrName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIndexingAttrNameOfEquals()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/xpath/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lcom/hp/hpl/sparta/xpath/XPath;->steps_:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hp/hpl/sparta/xpath/Step;

    invoke-virtual {v0}, Lcom/hp/hpl/sparta/xpath/Step;->getPredicate()Lcom/hp/hpl/sparta/xpath/BooleanExpr;

    move-result-object v0

    instance-of v1, v0, Lcom/hp/hpl/sparta/xpath/AttrEqualsExpr;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/hp/hpl/sparta/xpath/AttrEqualsExpr;

    invoke-virtual {v0}, Lcom/hp/hpl/sparta/xpath/AttrExpr;->getAttrName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSteps()Ljava/util/Enumeration;
    .locals 1

    iget-object v0, p0, Lcom/hp/hpl/sparta/xpath/XPath;->steps_:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public isAbsolute()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hp/hpl/sparta/xpath/XPath;->absolute_:Z

    return v0
.end method

.method public isStringValue()Z
    .locals 1

    iget-object v0, p0, Lcom/hp/hpl/sparta/xpath/XPath;->steps_:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hp/hpl/sparta/xpath/Step;

    invoke-virtual {v0}, Lcom/hp/hpl/sparta/xpath/Step;->isStringValue()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hp/hpl/sparta/xpath/XPath;->string_:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/hp/hpl/sparta/xpath/XPath;->generateString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hp/hpl/sparta/xpath/XPath;->string_:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/hp/hpl/sparta/xpath/XPath;->string_:Ljava/lang/String;

    return-object v0
.end method
