.class Landroid/support/v7/widget/SearchView$10;
.super Ljava/lang/Object;
.source "SearchView.java"

.implements Landroid/widget/AdapterView$OnItemClickListener;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Landroid/support/v7/widget/SearchView;


.method constructor <init>(Landroid/support/v7/widget/SearchView;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v7/widget/SearchView;

    .prologue
    .line 1449
    iput-object p1, p0, Landroid/support/v7/widget/SearchView$10;->this$0:Landroid/support/v7/widget/SearchView;

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
    .line 1457
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Landroid/support/v7/widget/SearchView$10;->this$0:Landroid/support/v7/widget/SearchView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p3, v1, v2}, Landroid/support/v7/widget/SearchView;->onItemClicked(IILjava/lang/String;)Z

    .line 1458
    return-void
.end method
