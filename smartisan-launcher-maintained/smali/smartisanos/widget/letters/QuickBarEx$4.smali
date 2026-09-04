.class Lsmartisanos/widget/letters/QuickBarEx$4;
.super Ljava/lang/Object;
.source "QuickBarEx.java"

.implements Landroid/widget/AdapterView$OnItemLongClickListener;


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
    .line 394
    iput-object p1, p0, Lsmartisanos/widget/letters/QuickBarEx$4;->this$0:Lsmartisanos/widget/letters/QuickBarEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
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
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v0, 0x1

    .line 397
    iget-object v1, p0, Lsmartisanos/widget/letters/QuickBarEx$4;->this$0:Lsmartisanos/widget/letters/QuickBarEx;

    invoke-static {v1}, Lsmartisanos/widget/letters/QuickBarEx;->access$100(Lsmartisanos/widget/letters/QuickBarEx;)Lsmartisanos/widget/letters/QuickBarEx$AlphabetsAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lsmartisanos/widget/letters/QuickBarEx$AlphabetsAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lsmartisanos/widget/letters/AlphabetsConfig;->isSymbol(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 398
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lsmartisanos/widget/letters/AlphabetsConfig;->surnameTypeSupportedByLanguage(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 399
    iget-object v1, p0, Lsmartisanos/widget/letters/QuickBarEx$4;->this$0:Lsmartisanos/widget/letters/QuickBarEx;

    invoke-static {v1, p2, p3}, Lsmartisanos/widget/letters/QuickBarEx;->access$500(Lsmartisanos/widget/letters/QuickBarEx;Landroid/view/View;I)V

    .line 403
    :goto_0
    iget-object v1, p0, Lsmartisanos/widget/letters/QuickBarEx$4;->this$0:Lsmartisanos/widget/letters/QuickBarEx;

    invoke-static {v1, v0}, Lsmartisanos/widget/letters/QuickBarEx;->access$702(Lsmartisanos/widget/letters/QuickBarEx;Z)Z

    .line 406
    :goto_1
    return v0

    .line 401
    :cond_0
    iget-object v1, p0, Lsmartisanos/widget/letters/QuickBarEx$4;->this$0:Lsmartisanos/widget/letters/QuickBarEx;

    invoke-static {v1, p2, p3}, Lsmartisanos/widget/letters/QuickBarEx;->access$600(Lsmartisanos/widget/letters/QuickBarEx;Landroid/view/View;I)V

    goto :goto_0

    .line 406
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
