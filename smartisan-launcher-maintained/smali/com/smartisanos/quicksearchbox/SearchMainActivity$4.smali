.class Lcom/smartisanos/quicksearchbox/SearchMainActivity$4;
.super Ljava/lang/Object;
.source "SearchMainActivity.java"

.implements Ljava/lang/Runnable;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/quicksearchbox/SearchMainActivity;->showSoftKeyBoard(ZLandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/quicksearchbox/SearchMainActivity;

.field final synthetic val$view:Landroid/view/View;


.method constructor <init>(Lcom/smartisanos/quicksearchbox/SearchMainActivity;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/quicksearchbox/SearchMainActivity;

    .prologue
    .line 287
    iput-object p1, p0, Lcom/smartisanos/quicksearchbox/SearchMainActivity$4;->this$0:Lcom/smartisanos/quicksearchbox/SearchMainActivity;

    iput-object p2, p0, Lcom/smartisanos/quicksearchbox/SearchMainActivity$4;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public run()V
    .locals 3

    .prologue
    .line 290
    iget-object v1, p0, Lcom/smartisanos/quicksearchbox/SearchMainActivity$4;->this$0:Lcom/smartisanos/quicksearchbox/SearchMainActivity;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/smartisanos/quicksearchbox/SearchMainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 291
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 292
    iget-object v1, p0, Lcom/smartisanos/quicksearchbox/SearchMainActivity$4;->val$view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_has_focus

    iget-object v1, p0, Lcom/smartisanos/quicksearchbox/SearchMainActivity$4;->this$0:Lcom/smartisanos/quicksearchbox/SearchMainActivity;

    invoke-virtual {v1}, Lcom/smartisanos/quicksearchbox/SearchMainActivity;->suppressNextEditorFocusKeyboard()V

    :cond_has_focus
    iget-object v1, p0, Lcom/smartisanos/quicksearchbox/SearchMainActivity$4;->val$view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 293
    iget-object v1, p0, Lcom/smartisanos/quicksearchbox/SearchMainActivity$4;->val$view:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 295
    :cond_0
    return-void
.end method
