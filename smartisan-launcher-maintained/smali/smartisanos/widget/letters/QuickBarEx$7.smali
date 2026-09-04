.class Lsmartisanos/widget/letters/QuickBarEx$7;
.super Ljava/lang/Object;
.source "QuickBarEx.java"

.implements Landroid/view/View$OnClickListener;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsmartisanos/widget/letters/QuickBarEx;->showFlowPopupWindow(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lsmartisanos/widget/letters/QuickBarEx;


.method constructor <init>(Lsmartisanos/widget/letters/QuickBarEx;)V
    .locals 0

    .prologue
    .line 785
    iput-object p1, p0, Lsmartisanos/widget/letters/QuickBarEx$7;->this$0:Lsmartisanos/widget/letters/QuickBarEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 788
    check-cast p1, Landroid/widget/TextView;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 789
    .local v0, "surname":Ljava/lang/String;
    iget-object v1, p0, Lsmartisanos/widget/letters/QuickBarEx$7;->this$0:Lsmartisanos/widget/letters/QuickBarEx;

    invoke-static {v1}, Lsmartisanos/widget/letters/QuickBarEx;->access$1300(Lsmartisanos/widget/letters/QuickBarEx;)Lsmartisanos/widget/letters/QuickBarEx$SurnameListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lsmartisanos/widget/letters/QuickBarEx$SurnameListener;->onSurnameClicked(Ljava/lang/String;)V

    .line 790
    iget-object v1, p0, Lsmartisanos/widget/letters/QuickBarEx$7;->this$0:Lsmartisanos/widget/letters/QuickBarEx;

    invoke-virtual {v1}, Lsmartisanos/widget/letters/QuickBarEx;->hideLetterGrid()V

    .line 791
    return-void
.end method
