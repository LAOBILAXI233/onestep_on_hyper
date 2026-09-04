.class public Lcom/hp/hpl/sparta/Document$Index;
.super Ljava/lang/Object;

.implements Lcom/hp/hpl/sparta/Document$Observer;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hp/hpl/sparta/Document;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Index"
.end annotation


.field private final attrName_:Ljava/lang/String;

.field private transient dict_:Lcom/hp/hpl/sparta/Sparta$Cache;

.field private final this$0:Lcom/hp/hpl/sparta/Document;

.field private final xpath_:Lcom/hp/hpl/sparta/xpath/XPath;


.method constructor <init>(Lcom/hp/hpl/sparta/Document;Lcom/hp/hpl/sparta/xpath/XPath;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/xpath/XPathException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hp/hpl/sparta/Document$Index;->this$0:Lcom/hp/hpl/sparta/Document;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hp/hpl/sparta/Document$Index;->dict_:Lcom/hp/hpl/sparta/Sparta$Cache;

    invoke-virtual {p2}, Lcom/hp/hpl/sparta/xpath/XPath;->getIndexingAttrName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hp/hpl/sparta/Document$Index;->attrName_:Ljava/lang/String;

    iput-object p2, p0, Lcom/hp/hpl/sparta/Document$Index;->xpath_:Lcom/hp/hpl/sparta/xpath/XPath;

    invoke-virtual {p1, p0}, Lcom/hp/hpl/sparta/Document;->addObserver(Lcom/hp/hpl/sparta/Document$Observer;)V

    return-void
.end method

.method private regenerate()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/hp/hpl/sparta/Sparta;->newCache()Lcom/hp/hpl/sparta/Sparta$Cache;

    move-result-object v0

    iput-object v0, p0, Lcom/hp/hpl/sparta/Document$Index;->dict_:Lcom/hp/hpl/sparta/Sparta$Cache;

    iget-object v0, p0, Lcom/hp/hpl/sparta/Document$Index;->this$0:Lcom/hp/hpl/sparta/Document;

    iget-object v1, p0, Lcom/hp/hpl/sparta/Document$Index;->xpath_:Lcom/hp/hpl/sparta/xpath/XPath;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/hp/hpl/sparta/Document;->visitor(Lcom/hp/hpl/sparta/xpath/XPath;Z)Lcom/hp/hpl/sparta/XPathVisitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hp/hpl/sparta/XPathVisitor;->getResultEnumeration()Ljava/util/Enumeration;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hp/hpl/sparta/Element;

    iget-object v1, p0, Lcom/hp/hpl/sparta/Document$Index;->attrName_:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/hp/hpl/sparta/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/hp/hpl/sparta/Document$Index;->dict_:Lcom/hp/hpl/sparta/Sparta$Cache;

    invoke-interface {v1, v3}, Lcom/hp/hpl/sparta/Sparta$Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Vector;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/Vector;

    const/4 v4, 0x1

    invoke-direct {v1, v4}, Ljava/util/Vector;-><init>(I)V

    iget-object v4, p0, Lcom/hp/hpl/sparta/Document$Index;->dict_:Lcom/hp/hpl/sparta/Sparta$Cache;

    invoke-interface {v4, v3, v1}, Lcom/hp/hpl/sparta/Sparta$Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/hp/hpl/sparta/xpath/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/hp/hpl/sparta/ParseException;

    const-string v2, "XPath problem"

    invoke-direct {v1, v2, v0}, Lcom/hp/hpl/sparta/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


.method public declared-synchronized get(Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/hp/hpl/sparta/Document$Index;->dict_:Lcom/hp/hpl/sparta/Sparta$Cache;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/hp/hpl/sparta/Document$Index;->regenerate()V

    :cond_0
    iget-object v0, p0, Lcom/hp/hpl/sparta/Document$Index;->dict_:Lcom/hp/hpl/sparta/Sparta$Cache;

    invoke-interface {v0, p1}, Lcom/hp/hpl/sparta/Sparta$Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    if-nez v0, :cond_1

    sget-object v0, Lcom/hp/hpl/sparta/Document;->EMPTY:Ljava/util/Enumeration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized size()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/hp/hpl/sparta/Document$Index;->dict_:Lcom/hp/hpl/sparta/Sparta$Cache;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/hp/hpl/sparta/Document$Index;->regenerate()V

    :cond_0
    iget-object v0, p0, Lcom/hp/hpl/sparta/Document$Index;->dict_:Lcom/hp/hpl/sparta/Sparta$Cache;

    invoke-interface {v0}, Lcom/hp/hpl/sparta/Sparta$Cache;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized update(Lcom/hp/hpl/sparta/Document;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/hp/hpl/sparta/Document$Index;->dict_:Lcom/hp/hpl/sparta/Sparta$Cache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
