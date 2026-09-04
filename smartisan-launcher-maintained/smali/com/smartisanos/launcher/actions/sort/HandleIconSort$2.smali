.class Lcom/smartisanos/launcher/actions/sort/HandleIconSort$2;
.super Lcom/smartisanos/smengine/Event;
.source "HandleIconSort.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->buildNextPage(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/actions/sort/HandleIconSort;

.field final synthetic val$pageIndex:I


.method constructor <init>(Lcom/smartisanos/launcher/actions/sort/HandleIconSort;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/actions/sort/HandleIconSort;
    .param p2, "type"    # I

    .prologue
    .line 602
    iput-object p1, p0, Lcom/smartisanos/launcher/actions/sort/HandleIconSort$2;->this$0:Lcom/smartisanos/launcher/actions/sort/HandleIconSort;

    iput p3, p0, Lcom/smartisanos/launcher/actions/sort/HandleIconSort$2;->val$pageIndex:I

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/Event;-><init>(I)V

    return-void
.end method


.method public run()V
    .locals 3

    .prologue
    .line 605
    iget-object v0, p0, Lcom/smartisanos/launcher/actions/sort/HandleIconSort$2;->this$0:Lcom/smartisanos/launcher/actions/sort/HandleIconSort;

    iget v1, p0, Lcom/smartisanos/launcher/actions/sort/HandleIconSort$2;->val$pageIndex:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->access$002(Lcom/smartisanos/launcher/actions/sort/HandleIconSort;I)I

    .line 606
    iget-object v0, p0, Lcom/smartisanos/launcher/actions/sort/HandleIconSort$2;->this$0:Lcom/smartisanos/launcher/actions/sort/HandleIconSort;

    invoke-static {v0}, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->access$000(Lcom/smartisanos/launcher/actions/sort/HandleIconSort;)I

    move-result v0

    iget-object v1, p0, Lcom/smartisanos/launcher/actions/sort/HandleIconSort$2;->this$0:Lcom/smartisanos/launcher/actions/sort/HandleIconSort;

    invoke-static {v1}, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->access$100(Lcom/smartisanos/launcher/actions/sort/HandleIconSort;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-gt v0, v1, :cond_0

    .line 607
    iget-object v0, p0, Lcom/smartisanos/launcher/actions/sort/HandleIconSort$2;->this$0:Lcom/smartisanos/launcher/actions/sort/HandleIconSort;

    iget-object v1, p0, Lcom/smartisanos/launcher/actions/sort/HandleIconSort$2;->this$0:Lcom/smartisanos/launcher/actions/sort/HandleIconSort;

    invoke-static {v1}, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->access$000(Lcom/smartisanos/launcher/actions/sort/HandleIconSort;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->access$200(Lcom/smartisanos/launcher/actions/sort/HandleIconSort;I)V

    .line 618
    :goto_0
    return-void

    .line 609
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/actions/sort/HandleIconSort$2;->this$0:Lcom/smartisanos/launcher/actions/sort/HandleIconSort;

    invoke-static {v0}, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->access$300(Lcom/smartisanos/launcher/actions/sort/HandleIconSort;)Lcom/smartisanos/launcher/actions/sort/SortResult;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 610
    invoke-static {}, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->access$400()Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    const-string v1, "DEBUG"

    const-string v2, "clean sortResult"

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    iget-object v0, p0, Lcom/smartisanos/launcher/actions/sort/HandleIconSort$2;->this$0:Lcom/smartisanos/launcher/actions/sort/HandleIconSort;

    invoke-static {v0}, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->access$300(Lcom/smartisanos/launcher/actions/sort/HandleIconSort;)Lcom/smartisanos/launcher/actions/sort/SortResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/actions/sort/SortResult;->clear()V

    .line 612
    iget-object v0, p0, Lcom/smartisanos/launcher/actions/sort/HandleIconSort$2;->this$0:Lcom/smartisanos/launcher/actions/sort/HandleIconSort;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->access$302(Lcom/smartisanos/launcher/actions/sort/HandleIconSort;Lcom/smartisanos/launcher/actions/sort/SortResult;)Lcom/smartisanos/launcher/actions/sort/SortResult;

    .line 614
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/actions/sort/HandleIconSort$2;->this$0:Lcom/smartisanos/launcher/actions/sort/HandleIconSort;

    invoke-static {v0}, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->access$500(Lcom/smartisanos/launcher/actions/sort/HandleIconSort;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 615
    iget-object v0, p0, Lcom/smartisanos/launcher/actions/sort/HandleIconSort$2;->this$0:Lcom/smartisanos/launcher/actions/sort/HandleIconSort;

    invoke-static {v0}, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->access$600(Lcom/smartisanos/launcher/actions/sort/HandleIconSort;)V

    .line 616
    iget-object v0, p0, Lcom/smartisanos/launcher/actions/sort/HandleIconSort$2;->this$0:Lcom/smartisanos/launcher/actions/sort/HandleIconSort;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->handleMsgForSortAnimEnd(I)V

    goto :goto_0
.end method
