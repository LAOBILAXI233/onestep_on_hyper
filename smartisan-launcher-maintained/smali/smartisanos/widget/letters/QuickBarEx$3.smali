.class Lsmartisanos/widget/letters/QuickBarEx$3;
.super Ljava/lang/Object;
.source "QuickBarEx.java"

.implements Landroid/view/View$OnTouchListener;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsmartisanos/widget/letters/QuickBarEx;->initGridView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lsmartisanos/widget/letters/QuickBarEx;


.method constructor <init>(Lsmartisanos/widget/letters/QuickBarEx;)V
    .locals 0

    .prologue
    .line 381
    iput-object p1, p0, Lsmartisanos/widget/letters/QuickBarEx$3;->this$0:Lsmartisanos/widget/letters/QuickBarEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 384
    iget-object v0, p0, Lsmartisanos/widget/letters/QuickBarEx$3;->this$0:Lsmartisanos/widget/letters/QuickBarEx;

    invoke-static {v0}, Lsmartisanos/widget/letters/QuickBarEx;->access$300(Lsmartisanos/widget/letters/QuickBarEx;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 385
    iget-object v0, p0, Lsmartisanos/widget/letters/QuickBarEx$3;->this$0:Lsmartisanos/widget/letters/QuickBarEx;

    invoke-static {v0}, Lsmartisanos/widget/letters/QuickBarEx;->access$400(Lsmartisanos/widget/letters/QuickBarEx;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsmartisanos/widget/letters/QuickBarEx$3;->this$0:Lsmartisanos/widget/letters/QuickBarEx;

    invoke-static {v0}, Lsmartisanos/widget/letters/QuickBarEx;->access$400(Lsmartisanos/widget/letters/QuickBarEx;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lsmartisanos/widget/letters/QuickBarEx$3;->this$0:Lsmartisanos/widget/letters/QuickBarEx;

    invoke-static {v0}, Lsmartisanos/widget/letters/QuickBarEx;->access$400(Lsmartisanos/widget/letters/QuickBarEx;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 387
    const/4 v0, 0x1

    .line 390
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
