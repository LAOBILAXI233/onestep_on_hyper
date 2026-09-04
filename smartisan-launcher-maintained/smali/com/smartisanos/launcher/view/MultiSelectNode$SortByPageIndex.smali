.class Lcom/smartisanos/launcher/view/MultiSelectNode$SortByPageIndex;
.super Ljava/lang/Object;
.source "MultiSelectNode.java"

.implements Ljava/util/Comparator;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/view/MultiSelectNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SortByPageIndex"
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/view/MultiSelectNode;


.method constructor <init>(Lcom/smartisanos/launcher/view/MultiSelectNode;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/MultiSelectNode;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/smartisanos/launcher/view/MultiSelectNode$SortByPageIndex;->this$0:Lcom/smartisanos/launcher/view/MultiSelectNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 12
    .param p1, "obj1"    # Ljava/lang/Object;
    .param p2, "obj2"    # Ljava/lang/Object;

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x1

    .line 165
    invoke-static {p1}, Lcom/smartisanos/launcher/view/Cell;->sIsInstanceFromCell(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-static {p2}, Lcom/smartisanos/launcher/view/Cell;->sIsInstanceFromCell(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    move-object v6, p1

    .line 166
    check-cast v6, Lcom/smartisanos/launcher/view/Cell;

    .line 167
    .local v6, "pc1":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/Cell;->getPreParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/Page;

    .line 168
    .local v2, "p1":Lcom/smartisanos/launcher/view/Page;
    iget-object v10, p0, Lcom/smartisanos/launcher/view/MultiSelectNode$SortByPageIndex;->this$0:Lcom/smartisanos/launcher/view/MultiSelectNode;

    iget-object v10, v10, Lcom/smartisanos/launcher/view/MultiSelectNode;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v10, v2}, Lcom/smartisanos/launcher/view/PageView;->getPageIndex(Lcom/smartisanos/launcher/view/Page;)I

    move-result v3

    .line 169
    .local v3, "p1index":I
    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/Cell;->getRowIndex()I

    move-result v10

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/Cell;->getColIndex()I

    move-result v11

    invoke-static {v10, v11}, Lcom/smartisanos/launcher/view/Page;->getCellIndex(II)I

    move-result v0

    .local v0, "index1":I
    move-object v7, p2

    .line 171
    check-cast v7, Lcom/smartisanos/launcher/view/Cell;

    .line 172
    .local v7, "pc2":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/Cell;->getPreParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/view/Page;

    .line 173
    .local v4, "p2":Lcom/smartisanos/launcher/view/Page;
    iget-object v10, p0, Lcom/smartisanos/launcher/view/MultiSelectNode$SortByPageIndex;->this$0:Lcom/smartisanos/launcher/view/MultiSelectNode;

    iget-object v10, v10, Lcom/smartisanos/launcher/view/MultiSelectNode;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v10, v4}, Lcom/smartisanos/launcher/view/PageView;->getPageIndex(Lcom/smartisanos/launcher/view/Page;)I

    move-result v5

    .line 174
    .local v5, "p2index":I
    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/Cell;->getRowIndex()I

    move-result v10

    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/Cell;->getColIndex()I

    move-result v11

    invoke-static {v10, v11}, Lcom/smartisanos/launcher/view/Page;->getCellIndex(II)I

    move-result v1

    .line 176
    .local v1, "index2":I
    if-ge v3, v5, :cond_1

    .line 188
    .end local v0    # "index1":I
    .end local v1    # "index2":I
    .end local v2    # "p1":Lcom/smartisanos/launcher/view/Page;
    .end local v3    # "p1index":I
    .end local v4    # "p2":Lcom/smartisanos/launcher/view/Page;
    .end local v5    # "p2index":I
    .end local v6    # "pc1":Lcom/smartisanos/launcher/view/Cell;
    .end local v7    # "pc2":Lcom/smartisanos/launcher/view/Cell;
    :cond_0
    :goto_0
    return v8

    .line 178
    .restart local v0    # "index1":I
    .restart local v1    # "index2":I
    .restart local v2    # "p1":Lcom/smartisanos/launcher/view/Page;
    .restart local v3    # "p1index":I
    .restart local v4    # "p2":Lcom/smartisanos/launcher/view/Page;
    .restart local v5    # "p2index":I
    .restart local v6    # "pc1":Lcom/smartisanos/launcher/view/Cell;
    .restart local v7    # "pc2":Lcom/smartisanos/launcher/view/Cell;
    :cond_1
    if-le v3, v5, :cond_2

    move v8, v9

    .line 179
    goto :goto_0

    .line 181
    :cond_2
    if-lt v0, v1, :cond_0

    move v8, v9

    .line 184
    goto :goto_0

    .line 188
    .end local v0    # "index1":I
    .end local v1    # "index2":I
    .end local v2    # "p1":Lcom/smartisanos/launcher/view/Page;
    .end local v3    # "p1index":I
    .end local v4    # "p2":Lcom/smartisanos/launcher/view/Page;
    .end local v5    # "p2index":I
    .end local v6    # "pc1":Lcom/smartisanos/launcher/view/Cell;
    .end local v7    # "pc2":Lcom/smartisanos/launcher/view/Cell;
    :cond_3
    const/4 v8, 0x0

    goto :goto_0
.end method
