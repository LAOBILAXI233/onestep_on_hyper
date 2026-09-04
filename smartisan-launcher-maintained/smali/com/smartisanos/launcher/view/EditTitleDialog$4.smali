.class Lcom/smartisanos/launcher/view/EditTitleDialog$4;
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


.method constructor <init>(Lcom/smartisanos/launcher/view/EditTitleDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/EditTitleDialog;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/smartisanos/launcher/view/EditTitleDialog$4;->this$0:Lcom/smartisanos/launcher/view/EditTitleDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 98
    iget-object v0, p0, Lcom/smartisanos/launcher/view/EditTitleDialog$4;->this$0:Lcom/smartisanos/launcher/view/EditTitleDialog;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/EditTitleDialog;->dismiss()V

    .line 99
    return-void
.end method
