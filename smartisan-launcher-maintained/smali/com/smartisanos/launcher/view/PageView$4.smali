.class Lcom/smartisanos/launcher/view/PageView$4;
.super Lcom/smartisanos/smengine/Animation$AnimationListener;
.source "PageView.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/PageView;->cleanEmptyPageForMultiPageMode(F)Lcom/smartisanos/smengine/AnimationTimeLine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/view/PageView;

.field final synthetic val$emptyScreenList:Ljava/util/ArrayList;


.method constructor <init>(Lcom/smartisanos/launcher/view/PageView;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/PageView;

    .prologue
    .line 2257
    iput-object p1, p0, Lcom/smartisanos/launcher/view/PageView$4;->this$0:Lcom/smartisanos/launcher/view/PageView;

    iput-object p2, p0, Lcom/smartisanos/launcher/view/PageView$4;->val$emptyScreenList:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    return-void
.end method


.method public onComplete()V
    .locals 7

    .prologue
    .line 2261
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/smartisanos/launcher/view/PageView$4;->val$emptyScreenList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 2262
    sget-boolean v4, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/smartisanos/launcher/view/PageView;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "### remove index = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/smartisanos/launcher/view/PageView$4;->val$emptyScreenList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 2263
    :cond_0
    iget-object v5, p0, Lcom/smartisanos/launcher/view/PageView$4;->this$0:Lcom/smartisanos/launcher/view/PageView;

    iget-object v4, p0, Lcom/smartisanos/launcher/view/PageView$4;->val$emptyScreenList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/smartisanos/launcher/view/PageView;->removeScreen(I)V

    .line 2261
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2267
    :cond_1
    iget-object v4, p0, Lcom/smartisanos/launcher/view/PageView$4;->this$0:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/PageView;->getScreenIndex()I

    move-result v3

    .line 2268
    .local v3, "screenIndex":I
    iget-object v4, p0, Lcom/smartisanos/launcher/view/PageView$4;->this$0:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/PageView;->getPageFactor()I

    move-result v4

    mul-int v1, v3, v4

    .line 2269
    .local v1, "firstPageIndexInGroup":I
    iget-object v4, p0, Lcom/smartisanos/launcher/view/PageView$4;->this$0:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v4, v1}, Lcom/smartisanos/launcher/view/PageView;->getPageByIndex(I)Lcom/smartisanos/launcher/view/Page;

    move-result-object v0

    .line 2270
    .local v0, "firstPageInGroup":Lcom/smartisanos/launcher/view/Page;
    iget-object v4, p0, Lcom/smartisanos/launcher/view/PageView$4;->this$0:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v4, v0}, Lcom/smartisanos/launcher/view/PageView;->resetPagesTranslate(Lcom/smartisanos/launcher/view/Page;)V

    .line 2271
    return-void
.end method
