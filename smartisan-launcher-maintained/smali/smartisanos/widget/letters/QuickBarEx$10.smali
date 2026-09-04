.class Lsmartisanos/widget/letters/QuickBarEx$10;
.super Ljava/lang/Object;
.source "QuickBarEx.java"

.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 996
    iput-object p1, p0, Lsmartisanos/widget/letters/QuickBarEx$10;->this$0:Lsmartisanos/widget/letters/QuickBarEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 999
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1000
    .local v0, "surname":Ljava/lang/String;
    iget-object v1, p0, Lsmartisanos/widget/letters/QuickBarEx$10;->this$0:Lsmartisanos/widget/letters/QuickBarEx;

    invoke-static {v1}, Lsmartisanos/widget/letters/QuickBarEx;->access$1300(Lsmartisanos/widget/letters/QuickBarEx;)Lsmartisanos/widget/letters/QuickBarEx$SurnameListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lsmartisanos/widget/letters/QuickBarEx$SurnameListener;->onSurnameClicked(Ljava/lang/String;)V

    .line 1001
    iget-object v1, p0, Lsmartisanos/widget/letters/QuickBarEx$10;->this$0:Lsmartisanos/widget/letters/QuickBarEx;

    invoke-virtual {v1}, Lsmartisanos/widget/letters/QuickBarEx;->hideLetterGrid()V

    .line 1002
    return-void
.end method
