.class Lsmartisanos/app/MenuDialogListAdapter$1;
.super Ljava/lang/Object;
.source "MenuDialogListAdapter.java"

.implements Landroid/view/View$OnClickListener;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsmartisanos/app/MenuDialogListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lsmartisanos/app/MenuDialogListAdapter;

.field final synthetic val$button:Landroid/widget/TextView;

.field final synthetic val$position:I


.method constructor <init>(Lsmartisanos/app/MenuDialogListAdapter;ILandroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lsmartisanos/app/MenuDialogListAdapter$1;->this$0:Lsmartisanos/app/MenuDialogListAdapter;

    iput p2, p0, Lsmartisanos/app/MenuDialogListAdapter$1;->val$position:I

    iput-object p3, p0, Lsmartisanos/app/MenuDialogListAdapter$1;->val$button:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 68
    iget-object v0, p0, Lsmartisanos/app/MenuDialogListAdapter$1;->this$0:Lsmartisanos/app/MenuDialogListAdapter;

    invoke-static {v0}, Lsmartisanos/app/MenuDialogListAdapter;->access$000(Lsmartisanos/app/MenuDialogListAdapter;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lsmartisanos/app/MenuDialogListAdapter$1;->this$0:Lsmartisanos/app/MenuDialogListAdapter;

    invoke-static {v0}, Lsmartisanos/app/MenuDialogListAdapter;->access$000(Lsmartisanos/app/MenuDialogListAdapter;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 71
    :cond_0
    iget-object v0, p0, Lsmartisanos/app/MenuDialogListAdapter$1;->this$0:Lsmartisanos/app/MenuDialogListAdapter;

    invoke-static {v0}, Lsmartisanos/app/MenuDialogListAdapter;->access$100(Lsmartisanos/app/MenuDialogListAdapter;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lsmartisanos/app/MenuDialogListAdapter$1;->val$position:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnClickListener;

    iget-object v1, p0, Lsmartisanos/app/MenuDialogListAdapter$1;->val$button:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 72
    return-void
.end method
