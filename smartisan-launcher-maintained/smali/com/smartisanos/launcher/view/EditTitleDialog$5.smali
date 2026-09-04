.class Lcom/smartisanos/launcher/view/EditTitleDialog$5;
.super Ljava/lang/Object;
.source "EditTitleDialog.java"

.implements Landroid/content/DialogInterface$OnClickListener;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/EditTitleDialog;->show(Lcom/smartisanos/launcher/view/Page;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/view/EditTitleDialog;

.field final synthetic val$editText:Landroid/widget/EditText;

.field final synthetic val$page:Lcom/smartisanos/launcher/view/Page;


.method constructor <init>(Lcom/smartisanos/launcher/view/EditTitleDialog;Landroid/widget/EditText;Lcom/smartisanos/launcher/view/Page;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/EditTitleDialog;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/smartisanos/launcher/view/EditTitleDialog$5;->this$0:Lcom/smartisanos/launcher/view/EditTitleDialog;

    iput-object p2, p0, Lcom/smartisanos/launcher/view/EditTitleDialog$5;->val$editText:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/smartisanos/launcher/view/EditTitleDialog$5;->val$page:Lcom/smartisanos/launcher/view/Page;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 79
    iget-object v1, p0, Lcom/smartisanos/launcher/view/EditTitleDialog$5;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "input":Ljava/lang/String;
    new-instance v1, Lcom/smartisanos/launcher/view/EditTitleDialog$5$1;

    const/16 v2, 0x64

    invoke-direct {v1, p0, v2, v0}, Lcom/smartisanos/launcher/view/EditTitleDialog$5$1;-><init>(Lcom/smartisanos/launcher/view/EditTitleDialog$5;ILjava/lang/String;)V

    const/4 v2, 0x0

    .line 92
    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/view/EditTitleDialog$5$1;->send(F)V

    .line 93
    iget-object v1, p0, Lcom/smartisanos/launcher/view/EditTitleDialog$5;->this$0:Lcom/smartisanos/launcher/view/EditTitleDialog;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/EditTitleDialog;->dismiss()V

    .line 94
    return-void
.end method
