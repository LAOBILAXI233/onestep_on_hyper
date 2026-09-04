.class Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxFragment$7;
.super Ljava/lang/Object;
.source "EditBoxFragment.java"

.implements Landroid/widget/TextView$OnEditorActionListener;


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

    iput-object p1, p0, Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxFragment$7;->this$0:Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    const/4 v0, 0x3

    if-ne p2, v0, :cond_check_done

    goto :goto_open

    :cond_check_done
    const/4 v0, 0x6

    if-ne p2, v0, :cond_check_key

    goto :goto_open

    :cond_check_key
    if-eqz p3, :cond_false

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x42

    if-ne v0, v1, :cond_false

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eqz v0, :goto_open

    :cond_false
    const/4 v0, 0x0

    return v0

    :goto_open
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxFragment$7;->this$0:Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxFragment;

    invoke-virtual {v0}, Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v1, v0, Lcom/smartisanos/quicksearchbox/SearchMainActivity;

    if-eqz v1, :cond_false

    check-cast v0, Lcom/smartisanos/quicksearchbox/SearchMainActivity;

    invoke-virtual {v0}, Lcom/smartisanos/quicksearchbox/SearchMainActivity;->openFirstSearchResult()Z

    move-result v0

    return v0
.end method
