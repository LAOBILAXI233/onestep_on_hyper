.class Lcom/smartisanos/launcher/view/Page$SortByIndex;
.super Ljava/lang/Object;
.source "Page.java"

.implements Ljava/util/Comparator;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/view/Page;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SortByIndex"
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/view/Page;


.method constructor <init>(Lcom/smartisanos/launcher/view/Page;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/Page;

    .prologue
    .line 1056
    iput-object p1, p0, Lcom/smartisanos/launcher/view/Page$SortByIndex;->this$0:Lcom/smartisanos/launcher/view/Page;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 8
    .param p1, "obj1"    # Ljava/lang/Object;
    .param p2, "obj2"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v5, -0x1

    .line 1059
    invoke-static {p1}, Lcom/smartisanos/launcher/view/Cell;->sIsInstanceFromCell(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {p2}, Lcom/smartisanos/launcher/view/Cell;->sIsInstanceFromCell(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v2, p1

    .line 1060
    check-cast v2, Lcom/smartisanos/launcher/view/Cell;

    .line 1061
    .local v2, "pc1":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Cell;->getRowIndex()I

    move-result v6

    iget-object v7, p0, Lcom/smartisanos/launcher/view/Page$SortByIndex;->this$0:Lcom/smartisanos/launcher/view/Page;

    iget-object v7, v7, Lcom/smartisanos/launcher/view/Page;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v7, v7, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_col_num:I

    mul-int/2addr v6, v7

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Cell;->getColIndex()I

    move-result v7

    add-int v0, v6, v7

    .local v0, "index1":I
    move-object v3, p2

    .line 1062
    check-cast v3, Lcom/smartisanos/launcher/view/Cell;

    .line 1063
    .local v3, "pc2":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Cell;->getRowIndex()I

    move-result v6

    iget-object v7, p0, Lcom/smartisanos/launcher/view/Page$SortByIndex;->this$0:Lcom/smartisanos/launcher/view/Page;

    iget-object v7, v7, Lcom/smartisanos/launcher/view/Page;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v7, v7, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_col_num:I

    mul-int/2addr v6, v7

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Cell;->getColIndex()I

    move-result v7

    add-int v1, v6, v7

    .line 1065
    .local v1, "index2":I
    if-le v0, v1, :cond_1

    .line 1077
    .end local v0    # "index1":I
    .end local v1    # "index2":I
    .end local v2    # "pc1":Lcom/smartisanos/launcher/view/Cell;
    .end local v3    # "pc2":Lcom/smartisanos/launcher/view/Cell;
    :cond_0
    :goto_0
    return v4

    .restart local v0    # "index1":I
    .restart local v1    # "index2":I
    .restart local v2    # "pc1":Lcom/smartisanos/launcher/view/Cell;
    .restart local v3    # "pc2":Lcom/smartisanos/launcher/view/Cell;
    :cond_1
    move v4, v5

    .line 1068
    goto :goto_0

    .line 1071
    .end local v0    # "index1":I
    .end local v1    # "index2":I
    .end local v2    # "pc1":Lcom/smartisanos/launcher/view/Cell;
    .end local v3    # "pc2":Lcom/smartisanos/launcher/view/Cell;
    :cond_2
    invoke-static {p1}, Lcom/smartisanos/launcher/view/Cell;->sIsInstanceFromCell(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1074
    invoke-static {p2}, Lcom/smartisanos/launcher/view/Cell;->sIsInstanceFromCell(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    move v4, v5

    .line 1075
    goto :goto_0

    .line 1077
    :cond_3
    const/4 v4, 0x0

    goto :goto_0
.end method
