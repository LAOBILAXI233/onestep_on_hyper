.class Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxFragment$3;
.super Ljava/lang/Object;
.source "EditBoxFragment.java"

.implements Landroid/view/View$OnClickListener;


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
    .line 115
    iput-object p1, p0, Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxFragment$3;->this$0:Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxFragment$3;->this$0:Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxFragment;->showKeyBoard(Z)V

    .line 119
    return-void
.end method
