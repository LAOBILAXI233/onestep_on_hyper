.class Lsmartisanos/app/MenuDialog$2;
.super Ljava/lang/Object;
.source "MenuDialog.java"

.implements Landroid/view/View$OnClickListener;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsmartisanos/app/MenuDialog;->setPositiveButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lsmartisanos/app/MenuDialog;

.field final synthetic val$listener:Landroid/view/View$OnClickListener;


.method constructor <init>(Lsmartisanos/app/MenuDialog;Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lsmartisanos/app/MenuDialog$2;->this$0:Lsmartisanos/app/MenuDialog;

    iput-object p2, p0, Lsmartisanos/app/MenuDialog$2;->val$listener:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 162
    iget-object v0, p0, Lsmartisanos/app/MenuDialog$2;->this$0:Lsmartisanos/app/MenuDialog;

    invoke-virtual {v0}, Lsmartisanos/app/MenuDialog;->dismiss()V

    .line 163
    iget-object v0, p0, Lsmartisanos/app/MenuDialog$2;->val$listener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 164
    return-void
.end method
