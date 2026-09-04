.class Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxFragment$6;
.super Ljava/lang/Object;
.source "EditBoxFragment.java"

.implements Ljava/lang/Runnable;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxFragment;->showEngineList()V
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
    .line 257
    iput-object p1, p0, Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxFragment$6;->this$0:Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public run()V
    .locals 3

    .prologue
    .line 260
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxFragment$6;->this$0:Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxFragment;

    invoke-virtual {v0}, Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u641c\u7d22\u5f15\u64ce"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 261
    return-void
.end method
