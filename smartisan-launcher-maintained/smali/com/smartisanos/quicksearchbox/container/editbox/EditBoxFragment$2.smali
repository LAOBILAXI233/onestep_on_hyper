.class Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxFragment$2;
.super Ljava/lang/Object;
.source "EditBoxFragment.java"

.implements Landroid/view/View$OnFocusChangeListener;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxFragment;


.method constructor <init>(Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxFragment;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxFragment$2;->this$0:Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 109
    if-eqz p2, :cond_0

    .line 110
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxFragment$2;->this$0:Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxFragment;

    invoke-virtual {v0}, Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxFragment;->clearKeyWordEditor()V

    .line 111
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxFragment$2;->this$0:Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxFragment;

    invoke-virtual {v0}, Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/quicksearchbox/SearchMainActivity;

    invoke-virtual {v0}, Lcom/smartisanos/quicksearchbox/SearchMainActivity;->consumeNextEditorFocusKeyboardSuppressed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxFragment$2;->this$0:Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxFragment;->showKeyBoard(Z)V

    .line 113
    :cond_0
    return-void
.end method
