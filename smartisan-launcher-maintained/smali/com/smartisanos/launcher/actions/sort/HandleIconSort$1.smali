.class final Lcom/smartisanos/launcher/actions/sort/HandleIconSort$1;
.super Lcom/smartisanos/smengine/Event;
.source "HandleIconSort.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->handleEventSortIcon(Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


.field final synthetic val$sortResult:Lcom/smartisanos/launcher/actions/sort/SortResult;


.method constructor <init>(ILcom/smartisanos/launcher/actions/sort/SortResult;)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 241
    iput-object p2, p0, Lcom/smartisanos/launcher/actions/sort/HandleIconSort$1;->val$sortResult:Lcom/smartisanos/launcher/actions/sort/SortResult;

    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/Event;-><init>(I)V

    return-void
.end method


.method public run()V
    .locals 3

    .prologue
    .line 244
    invoke-static {}, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->getInstance()Lcom/smartisanos/launcher/actions/sort/HandleIconSort;

    move-result-object v0

    .line 245
    .local v0, "sortAction":Lcom/smartisanos/launcher/actions/sort/HandleIconSort;
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/smartisanos/launcher/actions/sort/HandleIconSort$1;->val$sortResult:Lcom/smartisanos/launcher/actions/sort/SortResult;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/actions/sort/SortResult;->cloneData()Lcom/smartisanos/launcher/actions/sort/SortResult;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->handleMsgSortAnimBegin(ILcom/smartisanos/launcher/actions/sort/SortResult;)V

    .line 246
    return-void
.end method
