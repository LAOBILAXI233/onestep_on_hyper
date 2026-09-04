.class Lcom/smartisanos/launcher/view/EditTitleDialog$1;
.super Ljava/lang/Object;
.source "EditTitleDialog.java"

.implements Landroid/widget/AdapterView$OnItemClickListener;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/EditTitleDialog;->show(Lcom/smartisanos/launcher/view/Page;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/view/EditTitleDialog;

.field final synthetic val$editText:Landroid/widget/EditText;


.method constructor <init>(Lcom/smartisanos/launcher/view/EditTitleDialog;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/EditTitleDialog;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/smartisanos/launcher/view/EditTitleDialog$1;->this$0:Lcom/smartisanos/launcher/view/EditTitleDialog;

    iput-object p2, p0, Lcom/smartisanos/launcher/view/EditTitleDialog$1;->val$editText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 67
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    .line 68
    .local v0, "textView":Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, "title":Ljava/lang/String;
    iget-object v2, p0, Lcom/smartisanos/launcher/view/EditTitleDialog$1;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v2, p0, Lcom/smartisanos/launcher/view/EditTitleDialog$1;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 71
    return-void
.end method
