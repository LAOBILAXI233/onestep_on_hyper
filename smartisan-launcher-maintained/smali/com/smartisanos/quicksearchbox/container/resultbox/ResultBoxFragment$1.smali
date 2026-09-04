.class Lcom/smartisanos/quicksearchbox/container/resultbox/ResultBoxFragment$1;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "ResultBoxFragment.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/quicksearchbox/container/resultbox/ResultBoxFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/quicksearchbox/container/resultbox/ResultBoxFragment;


.method constructor <init>(Lcom/smartisanos/quicksearchbox/container/resultbox/ResultBoxFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/quicksearchbox/container/resultbox/ResultBoxFragment;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/smartisanos/quicksearchbox/container/resultbox/ResultBoxFragment$1;->this$0:Lcom/smartisanos/quicksearchbox/container/resultbox/ResultBoxFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 1
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "newState"    # I

    .prologue
    .line 69
    if-eqz p2, :cond_0

    .line 70
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/container/resultbox/ResultBoxFragment$1;->this$0:Lcom/smartisanos/quicksearchbox/container/resultbox/ResultBoxFragment;

    invoke-static {v0}, Lcom/smartisanos/quicksearchbox/container/resultbox/ResultBoxFragment;->access$000(Lcom/smartisanos/quicksearchbox/container/resultbox/ResultBoxFragment;)Lcom/smartisanos/quicksearchbox/SearchMainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/quicksearchbox/SearchMainActivity;->isT9KeyBoardShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/container/resultbox/ResultBoxFragment$1;->this$0:Lcom/smartisanos/quicksearchbox/container/resultbox/ResultBoxFragment;

    invoke-static {v0}, Lcom/smartisanos/quicksearchbox/container/resultbox/ResultBoxFragment;->access$000(Lcom/smartisanos/quicksearchbox/container/resultbox/ResultBoxFragment;)Lcom/smartisanos/quicksearchbox/SearchMainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/quicksearchbox/SearchMainActivity;->hideT9KeyBoard()V

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/container/resultbox/ResultBoxFragment$1;->this$0:Lcom/smartisanos/quicksearchbox/container/resultbox/ResultBoxFragment;

    invoke-static {v0}, Lcom/smartisanos/quicksearchbox/container/resultbox/ResultBoxFragment;->access$000(Lcom/smartisanos/quicksearchbox/container/resultbox/ResultBoxFragment;)Lcom/smartisanos/quicksearchbox/SearchMainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/quicksearchbox/SearchMainActivity;->hideSoftKeyBoard()V

    goto :goto_0
.end method
