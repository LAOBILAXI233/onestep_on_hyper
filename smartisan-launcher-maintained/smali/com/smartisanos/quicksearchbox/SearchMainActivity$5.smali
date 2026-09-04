.class Lcom/smartisanos/quicksearchbox/SearchMainActivity$5;
.super Ljava/lang/Object;
.source "SearchMainActivity.java"

.implements Ljava/lang/Runnable;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/quicksearchbox/SearchMainActivity;->hideSoftKeyBoard(Landroid/view/View;)V
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
    .line 311
    iput-object p1, p0, Lcom/smartisanos/quicksearchbox/SearchMainActivity$5;->this$0:Lcom/smartisanos/quicksearchbox/SearchMainActivity;

    iput-object p2, p0, Lcom/smartisanos/quicksearchbox/SearchMainActivity$5;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public run()V
    .locals 3

    .prologue
    .line 314
    iget-object v1, p0, Lcom/smartisanos/quicksearchbox/SearchMainActivity$5;->this$0:Lcom/smartisanos/quicksearchbox/SearchMainActivity;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/smartisanos/quicksearchbox/SearchMainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 315
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 316
    iget-object v1, p0, Lcom/smartisanos/quicksearchbox/SearchMainActivity$5;->val$view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 318
    :cond_0
    return-void
.end method
