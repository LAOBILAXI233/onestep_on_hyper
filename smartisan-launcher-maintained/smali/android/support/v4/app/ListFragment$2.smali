.class Landroid/support/v4/app/ListFragment$2;
.super Ljava/lang/Object;
.source "ListFragment.java"

.implements Landroid/widget/AdapterView$OnItemClickListener;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/ListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Landroid/support/v4/app/ListFragment;


.method constructor <init>(Landroid/support/v4/app/ListFragment;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v4/app/ListFragment;

    .prologue
    .line 57
    iput-object p1, p0, Landroid/support/v4/app/ListFragment$2;->this$0:Landroid/support/v4/app/ListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "v"    # Landroid/view/View;
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
    .line 60
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Landroid/support/v4/app/ListFragment$2;->this$0:Landroid/support/v4/app/ListFragment;

    move-object v1, p1

    check-cast v1, Landroid/widget/ListView;

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/ListFragment;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 61
    return-void
.end method
