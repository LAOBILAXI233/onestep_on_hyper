.class public Lorg/apache/http/message/BasicListHeaderIterator;
.super Ljava/lang/Object;
.source "BasicListHeaderIterator.java"

.implements Lorg/apache/http/HeaderIterator;


.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


.field protected final allHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/Header;",
            ">;"
        }
    .end annotation
.end field

.field protected currentIndex:I

.field protected headerName:Ljava/lang/String;

.field protected lastIndex:I


.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/Header;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "headers":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/Header;>;"
    const/4 v1, -0x1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const-string v0, "Header list"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lorg/apache/http/message/BasicListHeaderIterator;->allHeaders:Ljava/util/List;

    .line 87
    iput-object p2, p0, Lorg/apache/http/message/BasicListHeaderIterator;->headerName:Ljava/lang/String;

    .line 88
    invoke-virtual {p0, v1}, Lorg/apache/http/message/BasicListHeaderIterator;->findNext(I)I

    move-result v0

    iput v0, p0, Lorg/apache/http/message/BasicListHeaderIterator;->currentIndex:I

    .line 89
    iput v1, p0, Lorg/apache/http/message/BasicListHeaderIterator;->lastIndex:I

    .line 90
    return-void
.end method


.method protected filterHeader(I)Z
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 127
    iget-object v1, p0, Lorg/apache/http/message/BasicListHeaderIterator;->headerName:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 128
    const/4 v1, 0x1

    .line 134
    :goto_0
    return v1

    .line 132
    :cond_0
    iget-object v1, p0, Lorg/apache/http/message/BasicListHeaderIterator;->allHeaders:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/Header;

    invoke-interface {v1}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/http/message/BasicListHeaderIterator;->headerName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method protected findNext(I)I
    .locals 5
    .param p1, "pos"    # I

    .prologue
    const/4 v3, -0x1

    .line 103
    move v1, p1

    .line 104
    .local v1, "from":I
    if-ge v1, v3, :cond_1

    .line 114
    :cond_0
    :goto_0
    return v3

    .line 108
    :cond_1
    iget-object v4, p0, Lorg/apache/http/message/BasicListHeaderIterator;->allHeaders:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .line 109
    .local v2, "to":I
    const/4 v0, 0x0

    .line 110
    .local v0, "found":Z
    :goto_1
    if-nez v0, :cond_2

    if-ge v1, v2, :cond_2

    .line 111
    add-int/lit8 v1, v1, 0x1

    .line 112
    invoke-virtual {p0, v1}, Lorg/apache/http/message/BasicListHeaderIterator;->filterHeader(I)Z

    move-result v0

    goto :goto_1

    .line 114
    :cond_2
    if-eqz v0, :cond_0

    move v3, v1

    goto :goto_0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lorg/apache/http/message/BasicListHeaderIterator;->currentIndex:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .prologue
    .line 176
    invoke-virtual {p0}, Lorg/apache/http/message/BasicListHeaderIterator;->nextHeader()Lorg/apache/http/Header;

    move-result-object v0

    return-object v0
.end method

.method public nextHeader()Lorg/apache/http/Header;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .prologue
    .line 154
    iget v0, p0, Lorg/apache/http/message/BasicListHeaderIterator;->currentIndex:I

    .line 155
    .local v0, "current":I
    if-gez v0, :cond_0

    .line 156
    new-instance v1, Ljava/util/NoSuchElementException;

    const-string v2, "Iteration already finished."

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 159
    :cond_0
    iput v0, p0, Lorg/apache/http/message/BasicListHeaderIterator;->lastIndex:I

    .line 160
    invoke-virtual {p0, v0}, Lorg/apache/http/message/BasicListHeaderIterator;->findNext(I)I

    move-result v1

    iput v1, p0, Lorg/apache/http/message/BasicListHeaderIterator;->currentIndex:I

    .line 162
    iget-object v1, p0, Lorg/apache/http/message/BasicListHeaderIterator;->allHeaders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/Header;

    return-object v1
.end method

.method public remove()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 185
    iget v0, p0, Lorg/apache/http/message/BasicListHeaderIterator;->lastIndex:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "No header to remove"

    invoke-static {v0, v1}, Lorg/apache/http/util/Asserts;->check(ZLjava/lang/String;)V

    .line 186
    iget-object v0, p0, Lorg/apache/http/message/BasicListHeaderIterator;->allHeaders:Ljava/util/List;

    iget v1, p0, Lorg/apache/http/message/BasicListHeaderIterator;->lastIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 187
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/http/message/BasicListHeaderIterator;->lastIndex:I

    .line 188
    iget v0, p0, Lorg/apache/http/message/BasicListHeaderIterator;->currentIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/http/message/BasicListHeaderIterator;->currentIndex:I

    .line 189
    return-void

    .line 185
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
