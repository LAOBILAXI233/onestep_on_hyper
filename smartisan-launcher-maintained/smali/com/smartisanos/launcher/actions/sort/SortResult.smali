.class public Lcom/smartisanos/launcher/actions/sort/SortResult;
.super Ljava/lang/Object;
.source "SortResult.java"


.field private static final DBG:Z = true

.field private static final log:Lcom/smartisanos/launcher/LOG;


.field private itemDataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/smartisanos/launcher/data/PageInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/launcher/data/ItemInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private pageOrder:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/launcher/data/PageInfo;",
            ">;"
        }
    .end annotation
.end field


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/smartisanos/launcher/actions/sort/SortResult;

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/actions/sort/SortResult;->log:Lcom/smartisanos/launcher/LOG;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object v0, p0, Lcom/smartisanos/launcher/actions/sort/SortResult;->pageOrder:Ljava/util/List;

    .line 18
    iput-object v0, p0, Lcom/smartisanos/launcher/actions/sort/SortResult;->itemDataMap:Ljava/util/Map;

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/launcher/data/PageInfo;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/smartisanos/launcher/data/PageInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/launcher/data/ItemInfo;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p1, "pageOrderList":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/PageInfo;>;"
    .local p2, "dataMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/smartisanos/launcher/data/PageInfo;Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;>;"
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object v0, p0, Lcom/smartisanos/launcher/actions/sort/SortResult;->pageOrder:Ljava/util/List;

    .line 18
    iput-object v0, p0, Lcom/smartisanos/launcher/actions/sort/SortResult;->itemDataMap:Ljava/util/Map;

    .line 23
    iput-object p1, p0, Lcom/smartisanos/launcher/actions/sort/SortResult;->pageOrder:Ljava/util/List;

    .line 24
    iput-object p2, p0, Lcom/smartisanos/launcher/actions/sort/SortResult;->itemDataMap:Ljava/util/Map;

    .line 25
    invoke-direct {p0}, Lcom/smartisanos/launcher/actions/sort/SortResult;->formatIndex()V

    .line 27
    iget-object v0, p0, Lcom/smartisanos/launcher/actions/sort/SortResult;->pageOrder:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartisanos/launcher/actions/sort/SortResult;->pageOrder:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 28
    :cond_0
    sget-object v0, Lcom/smartisanos/launcher/actions/sort/SortResult;->log:Lcom/smartisanos/launcher/LOG;

    const-string v1, "SortResult pageOrder is null"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 30
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/actions/sort/SortResult;->itemDataMap:Ljava/util/Map;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/smartisanos/launcher/actions/sort/SortResult;->itemDataMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 31
    :cond_2
    sget-object v0, Lcom/smartisanos/launcher/actions/sort/SortResult;->log:Lcom/smartisanos/launcher/LOG;

    const-string v1, "SortResult itemDataMap is null"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 35
    :cond_3
    return-void
.end method

.method private formatIndex()V
    .locals 8

    .prologue
    .line 51
    iget-object v7, p0, Lcom/smartisanos/launcher/actions/sort/SortResult;->pageOrder:Ljava/util/List;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/smartisanos/launcher/actions/sort/SortResult;->itemDataMap:Ljava/util/Map;

    if-nez v7, :cond_1

    .line 65
    :cond_0
    return-void

    .line 54
    :cond_1
    iget-object v7, p0, Lcom/smartisanos/launcher/actions/sort/SortResult;->pageOrder:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    .line 55
    .local v4, "pageCount":I
    const/4 v5, 0x0

    .local v5, "pageIndex":I
    :goto_0
    if-ge v5, v4, :cond_0

    .line 56
    iget-object v7, p0, Lcom/smartisanos/launcher/actions/sort/SortResult;->pageOrder:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/smartisanos/launcher/data/PageInfo;

    .line 57
    .local v6, "pageInfo":Lcom/smartisanos/launcher/data/PageInfo;
    iget-object v7, p0, Lcom/smartisanos/launcher/actions/sort/SortResult;->itemDataMap:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 58
    .local v3, "items":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 59
    .local v2, "itemCount":I
    const/4 v0, 0x0

    .local v0, "cellIndex":I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 60
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 61
    .local v1, "item":Lcom/smartisanos/launcher/data/ItemInfo;
    iput v5, v1, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    .line 62
    iput v0, v1, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    .line 59
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 55
    .end local v1    # "item":Lcom/smartisanos/launcher/data/ItemInfo;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method private setCloneData(Ljava/util/List;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/launcher/data/PageInfo;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/smartisanos/launcher/data/PageInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/launcher/data/ItemInfo;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p1, "pageOrderList":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/PageInfo;>;"
    .local p2, "dataMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/smartisanos/launcher/data/PageInfo;Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;>;"
    iput-object p1, p0, Lcom/smartisanos/launcher/actions/sort/SortResult;->pageOrder:Ljava/util/List;

    .line 41
    iput-object p2, p0, Lcom/smartisanos/launcher/actions/sort/SortResult;->itemDataMap:Ljava/util/Map;

    .line 42
    return-void
.end method


.method public clear()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/smartisanos/launcher/actions/sort/SortResult;->pageOrder:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/smartisanos/launcher/actions/sort/SortResult;->pageOrder:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/actions/sort/SortResult;->itemDataMap:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/smartisanos/launcher/actions/sort/SortResult;->itemDataMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 81
    :cond_1
    return-void
.end method

.method public cloneData()Lcom/smartisanos/launcher/actions/sort/SortResult;
    .locals 3

    .prologue
    .line 45
    new-instance v0, Lcom/smartisanos/launcher/actions/sort/SortResult;

    invoke-direct {v0}, Lcom/smartisanos/launcher/actions/sort/SortResult;-><init>()V

    .line 46
    .local v0, "sr":Lcom/smartisanos/launcher/actions/sort/SortResult;
    iget-object v1, p0, Lcom/smartisanos/launcher/actions/sort/SortResult;->pageOrder:Ljava/util/List;

    iget-object v2, p0, Lcom/smartisanos/launcher/actions/sort/SortResult;->itemDataMap:Ljava/util/Map;

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/launcher/actions/sort/SortResult;->setCloneData(Ljava/util/List;Ljava/util/Map;)V

    .line 47
    return-object v0
.end method

.method public debug()V
    .locals 10

    .prologue
    .line 84
    iget-object v7, p0, Lcom/smartisanos/launcher/actions/sort/SortResult;->pageOrder:Ljava/util/List;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/smartisanos/launcher/actions/sort/SortResult;->itemDataMap:Ljava/util/Map;

    if-nez v7, :cond_1

    .line 98
    :cond_0
    return-void

    .line 87
    :cond_1
    iget-object v7, p0, Lcom/smartisanos/launcher/actions/sort/SortResult;->pageOrder:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    .line 88
    .local v6, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v6, :cond_0

    .line 89
    iget-object v7, p0, Lcom/smartisanos/launcher/actions/sort/SortResult;->pageOrder:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/launcher/data/PageInfo;

    .line 90
    .local v5, "pageInfo":Lcom/smartisanos/launcher/data/PageInfo;
    sget-object v7, Lcom/smartisanos/launcher/actions/sort/SortResult;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SortResult page "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Lcom/smartisanos/launcher/data/PageInfo;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 91
    iget-object v7, p0, Lcom/smartisanos/launcher/actions/sort/SortResult;->itemDataMap:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 92
    .local v3, "items":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 93
    .local v4, "length":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_1
    if-ge v1, v4, :cond_2

    .line 94
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 95
    .local v2, "item":Lcom/smartisanos/launcher/data/ItemInfo;
    sget-object v7, Lcom/smartisanos/launcher/actions/sort/SortResult;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SortResult item "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Lcom/smartisanos/launcher/data/ItemInfo;->toSimpleInfo()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 93
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 88
    .end local v2    # "item":Lcom/smartisanos/launcher/data/ItemInfo;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getDataMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/smartisanos/launcher/data/PageInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/launcher/data/ItemInfo;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lcom/smartisanos/launcher/actions/sort/SortResult;->itemDataMap:Ljava/util/Map;

    return-object v0
.end method

.method public getPageOrder()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/launcher/data/PageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lcom/smartisanos/launcher/actions/sort/SortResult;->pageOrder:Ljava/util/List;

    return-object v0
.end method
