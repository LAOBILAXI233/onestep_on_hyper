.class Lcom/smartisanos/quicksearchbox/SearchMainActivity$3;
.super Ljava/lang/Object;
.source "SearchMainActivity.java"

.implements Landroid/view/View$OnClickListener;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/quicksearchbox/SearchMainActivity;->initBottomPannel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/quicksearchbox/SearchMainActivity;


.method constructor <init>(Lcom/smartisanos/quicksearchbox/SearchMainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/quicksearchbox/SearchMainActivity;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/smartisanos/quicksearchbox/SearchMainActivity$3;->this$0:Lcom/smartisanos/quicksearchbox/SearchMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 187
    invoke-static {}, Lcom/smartisanos/quicksearchbox/util/Util;->isT9Shown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/SearchMainActivity$3;->this$0:Lcom/smartisanos/quicksearchbox/SearchMainActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/quicksearchbox/SearchMainActivity;->showT9KeyBoard(Z)V

    .line 192
    :goto_0
    return-void

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/SearchMainActivity$3;->this$0:Lcom/smartisanos/quicksearchbox/SearchMainActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/quicksearchbox/SearchMainActivity;->showT9KeyBoard(Z)V

    goto :goto_0
.end method
