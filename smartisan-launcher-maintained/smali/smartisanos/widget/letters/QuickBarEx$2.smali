.class Lsmartisanos/widget/letters/QuickBarEx$2;
.super Ljava/lang/Object;
.source "QuickBarEx.java"

.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 368
    iput-object p1, p0, Lsmartisanos/widget/letters/QuickBarEx$2;->this$0:Lsmartisanos/widget/letters/QuickBarEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 371
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lsmartisanos/widget/letters/QuickBarEx$2;->this$0:Lsmartisanos/widget/letters/QuickBarEx;

    invoke-static {v0}, Lsmartisanos/widget/letters/QuickBarEx;->access$100(Lsmartisanos/widget/letters/QuickBarEx;)Lsmartisanos/widget/letters/QuickBarEx$AlphabetsAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lsmartisanos/widget/letters/QuickBarEx$AlphabetsAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsmartisanos/widget/letters/AlphabetsConfig;->isSymbol(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 372
    iget-object v0, p0, Lsmartisanos/widget/letters/QuickBarEx$2;->this$0:Lsmartisanos/widget/letters/QuickBarEx;

    invoke-static {v0}, Lsmartisanos/widget/letters/QuickBarEx;->access$000(Lsmartisanos/widget/letters/QuickBarEx;)Lsmartisanos/widget/letters/QuickBarEx$QBListener;

    move-result-object v0

    iget-object v1, p0, Lsmartisanos/widget/letters/QuickBarEx$2;->this$0:Lsmartisanos/widget/letters/QuickBarEx;

    invoke-static {v1}, Lsmartisanos/widget/letters/QuickBarEx;->access$100(Lsmartisanos/widget/letters/QuickBarEx;)Lsmartisanos/widget/letters/QuickBarEx$AlphabetsAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lsmartisanos/widget/letters/QuickBarEx$AlphabetsAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lsmartisanos/widget/letters/QuickBarEx;->LETTER_CHANGED_CLICK:I

    invoke-interface {v0, v1, v2}, Lsmartisanos/widget/letters/QuickBarEx$QBListener;->onLetterChanged(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lsmartisanos/widget/letters/QuickBarEx$2;->this$0:Lsmartisanos/widget/letters/QuickBarEx;

    invoke-virtual {v0}, Lsmartisanos/widget/letters/QuickBarEx;->invalidate()V

    .line 376
    :cond_0
    iget-object v0, p0, Lsmartisanos/widget/letters/QuickBarEx$2;->this$0:Lsmartisanos/widget/letters/QuickBarEx;

    invoke-static {v0}, Lsmartisanos/widget/letters/QuickBarEx;->access$200(Lsmartisanos/widget/letters/QuickBarEx;)V

    .line 377
    return-void
.end method
