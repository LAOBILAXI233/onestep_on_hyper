.class Lsmartisanos/widget/letters/QuickBarEx$9;
.super Ljava/lang/Object;
.source "QuickBarEx.java"

.implements Lsmartisanos/widget/SurnameGridView$OnPressChangeListener;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsmartisanos/widget/letters/QuickBarEx;->showGridPopupWindow(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lsmartisanos/widget/letters/QuickBarEx;


.method constructor <init>(Lsmartisanos/widget/letters/QuickBarEx;)V
    .locals 0

    .prologue
    .line 974
    iput-object p1, p0, Lsmartisanos/widget/letters/QuickBarEx$9;->this$0:Lsmartisanos/widget/letters/QuickBarEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onTouched(I)V
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 978
    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    .line 979
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lsmartisanos/widget/letters/QuickBarEx$9$1;

    invoke-direct {v3, p0}, Lsmartisanos/widget/letters/QuickBarEx$9$1;-><init>(Lsmartisanos/widget/letters/QuickBarEx$9;)V

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 993
    :cond_0
    :goto_0
    return-void

    .line 986
    :cond_1
    iget-object v2, p0, Lsmartisanos/widget/letters/QuickBarEx$9;->this$0:Lsmartisanos/widget/letters/QuickBarEx;

    invoke-static {v2}, Lsmartisanos/widget/letters/QuickBarEx;->access$1700(Lsmartisanos/widget/letters/QuickBarEx;)Lsmartisanos/widget/SurnameGridView;

    move-result-object v2

    iget-object v3, p0, Lsmartisanos/widget/letters/QuickBarEx$9;->this$0:Lsmartisanos/widget/letters/QuickBarEx;

    invoke-static {v3}, Lsmartisanos/widget/letters/QuickBarEx;->access$1700(Lsmartisanos/widget/letters/QuickBarEx;)Lsmartisanos/widget/SurnameGridView;

    move-result-object v3

    invoke-virtual {v3}, Lsmartisanos/widget/SurnameGridView;->getFirstVisiblePosition()I

    move-result v3

    sub-int v3, p1, v3

    invoke-virtual {v2, v3}, Lsmartisanos/widget/SurnameGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 987
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 988
    iget-object v2, p0, Lsmartisanos/widget/letters/QuickBarEx$9;->this$0:Lsmartisanos/widget/letters/QuickBarEx;

    invoke-static {v2}, Lsmartisanos/widget/letters/QuickBarEx;->access$1700(Lsmartisanos/widget/letters/QuickBarEx;)Lsmartisanos/widget/SurnameGridView;

    move-result-object v2

    invoke-virtual {v2}, Lsmartisanos/widget/SurnameGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 989
    .local v1, "surname":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 990
    iget-object v2, p0, Lsmartisanos/widget/letters/QuickBarEx$9;->this$0:Lsmartisanos/widget/letters/QuickBarEx;

    invoke-static {v2, v0}, Lsmartisanos/widget/letters/QuickBarEx;->access$1600(Lsmartisanos/widget/letters/QuickBarEx;Landroid/view/View;)V

    goto :goto_0
.end method
