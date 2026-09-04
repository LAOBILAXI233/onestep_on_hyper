.class Lsmartisanos/widget/letters/QuickBarEx$8;
.super Ljava/lang/Object;
.source "QuickBarEx.java"

.implements Landroid/view/View$OnTouchListener;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsmartisanos/widget/letters/QuickBarEx;->showFlowPopupWindow(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lsmartisanos/widget/letters/QuickBarEx;

.field final synthetic val$surnameView:Landroid/widget/TextView;


.method constructor <init>(Lsmartisanos/widget/letters/QuickBarEx;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 793
    iput-object p1, p0, Lsmartisanos/widget/letters/QuickBarEx$8;->this$0:Lsmartisanos/widget/letters/QuickBarEx;

    iput-object p2, p0, Lsmartisanos/widget/letters/QuickBarEx$8;->val$surnameView:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 796
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 797
    :cond_0
    iget-object v0, p0, Lsmartisanos/widget/letters/QuickBarEx$8;->this$0:Lsmartisanos/widget/letters/QuickBarEx;

    invoke-static {v0}, Lsmartisanos/widget/letters/QuickBarEx;->access$1400(Lsmartisanos/widget/letters/QuickBarEx;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lsmartisanos/widget/letters/QuickBarEx$8;->this$0:Lsmartisanos/widget/letters/QuickBarEx;

    invoke-static {v0}, Lsmartisanos/widget/letters/QuickBarEx;->access$1500(Lsmartisanos/widget/letters/QuickBarEx;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lsmartisanos/widget/letters/QuickBarEx$8;->val$surnameView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lsmartisanos/widget/letters/QuickBarEx$8;->this$0:Lsmartisanos/widget/letters/QuickBarEx;

    invoke-static {v1}, Lsmartisanos/widget/letters/QuickBarEx;->access$1500(Lsmartisanos/widget/letters/QuickBarEx;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 799
    iget-object v0, p0, Lsmartisanos/widget/letters/QuickBarEx$8;->this$0:Lsmartisanos/widget/letters/QuickBarEx;

    invoke-static {v0}, Lsmartisanos/widget/letters/QuickBarEx;->access$1400(Lsmartisanos/widget/letters/QuickBarEx;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 801
    :cond_1
    iget-object v0, p0, Lsmartisanos/widget/letters/QuickBarEx$8;->val$surnameView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 802
    iget-object v0, p0, Lsmartisanos/widget/letters/QuickBarEx$8;->this$0:Lsmartisanos/widget/letters/QuickBarEx;

    invoke-static {v0, p1}, Lsmartisanos/widget/letters/QuickBarEx;->access$1600(Lsmartisanos/widget/letters/QuickBarEx;Landroid/view/View;)V

    .line 807
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 804
    :cond_2
    iget-object v0, p0, Lsmartisanos/widget/letters/QuickBarEx$8;->this$0:Lsmartisanos/widget/letters/QuickBarEx;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lsmartisanos/widget/letters/QuickBarEx;->access$1600(Lsmartisanos/widget/letters/QuickBarEx;Landroid/view/View;)V

    goto :goto_0
.end method
