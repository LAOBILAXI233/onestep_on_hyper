.class Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxFragment$5;
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
    .line 135
    iput-object p1, p0, Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxFragment$5;->this$0:Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxFragment$5;->this$0:Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxFragment;

    invoke-virtual {v0}, Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxFragment;->showEngineList()V

    .line 139
    return-void
.end method
