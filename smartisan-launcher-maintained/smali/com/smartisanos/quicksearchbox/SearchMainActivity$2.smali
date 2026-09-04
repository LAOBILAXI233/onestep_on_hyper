.class Lcom/smartisanos/quicksearchbox/SearchMainActivity$2;
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
    .line 172
    iput-object p1, p0, Lcom/smartisanos/quicksearchbox/SearchMainActivity$2;->this$0:Lcom/smartisanos/quicksearchbox/SearchMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v3, 0x7f0f00a8

    .line 175
    invoke-static {}, Lcom/smartisanos/quicksearchbox/util/Util;->isT9Shown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/SearchMainActivity$2;->this$0:Lcom/smartisanos/quicksearchbox/SearchMainActivity;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/smartisanos/quicksearchbox/SearchMainActivity$2;->this$0:Lcom/smartisanos/quicksearchbox/SearchMainActivity;

    invoke-virtual {v2, v3}, Lcom/smartisanos/quicksearchbox/SearchMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/quicksearchbox/SearchMainActivity;->showSoftKeyBoard(ZLandroid/view/View;)V

    .line 180
    :goto_0
    return-void

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/SearchMainActivity$2;->this$0:Lcom/smartisanos/quicksearchbox/SearchMainActivity;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/smartisanos/quicksearchbox/SearchMainActivity$2;->this$0:Lcom/smartisanos/quicksearchbox/SearchMainActivity;

    invoke-virtual {v2, v3}, Lcom/smartisanos/quicksearchbox/SearchMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/quicksearchbox/SearchMainActivity;->showSoftKeyBoard(ZLandroid/view/View;)V

    goto :goto_0
.end method
