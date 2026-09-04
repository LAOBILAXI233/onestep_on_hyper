.class Lsmartisanos/app/MenuDialog$1;
.super Ljava/lang/Object;
.source "MenuDialog.java"

.implements Landroid/view/View$OnClickListener;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsmartisanos/app/MenuDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lsmartisanos/app/MenuDialog;


.method constructor <init>(Lsmartisanos/app/MenuDialog;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lsmartisanos/app/MenuDialog$1;->this$0:Lsmartisanos/app/MenuDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 97
    iget-object v0, p0, Lsmartisanos/app/MenuDialog$1;->this$0:Lsmartisanos/app/MenuDialog;

    invoke-virtual {v0}, Lsmartisanos/app/MenuDialog;->dismiss()V

    .line 98
    return-void
.end method
