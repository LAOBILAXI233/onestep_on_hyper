.class Lsmartisanos/widget/RQuickBar$5;
.super Ljava/lang/Object;
.source "RQuickBar.java"

.implements Landroid/widget/AdapterView$OnItemClickListener;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsmartisanos/widget/RQuickBar;->showPopupWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lsmartisanos/widget/RQuickBar;


.method constructor <init>(Lsmartisanos/widget/RQuickBar;)V
    .locals 0

    .prologue
    .line 1033
    iput-object p1, p0, Lsmartisanos/widget/RQuickBar$5;->this$0:Lsmartisanos/widget/RQuickBar;

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
    .line 1036
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1037
    .local v0, "surname":Ljava/lang/String;
    iget-object v1, p0, Lsmartisanos/widget/RQuickBar$5;->this$0:Lsmartisanos/widget/RQuickBar;

    invoke-static {v1}, Lsmartisanos/widget/RQuickBar;->access$700(Lsmartisanos/widget/RQuickBar;)Lsmartisanos/widget/RQuickBar$SurnameListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lsmartisanos/widget/RQuickBar$SurnameListener;->onSurnameClicked(Ljava/lang/String;)V

    .line 1038
    iget-object v1, p0, Lsmartisanos/widget/RQuickBar$5;->this$0:Lsmartisanos/widget/RQuickBar;

    invoke-virtual {v1}, Lsmartisanos/widget/RQuickBar;->hideLetterGrid()V

    .line 1039
    return-void
.end method
