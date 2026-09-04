.class Lcom/smartisanos/home/settings/AboutUsActivity$2;
.super Ljava/lang/Object;
.source "AboutUsActivity.java"

.implements Landroid/view/View$OnClickListener;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/home/settings/AboutUsActivity;->openCopyDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/home/settings/AboutUsActivity;


.method constructor <init>(Lcom/smartisanos/home/settings/AboutUsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/home/settings/AboutUsActivity;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/smartisanos/home/settings/AboutUsActivity$2;->this$0:Lcom/smartisanos/home/settings/AboutUsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/smartisanos/home/settings/AboutUsActivity$2;->this$0:Lcom/smartisanos/home/settings/AboutUsActivity;

    invoke-static {v0}, Lcom/smartisanos/home/settings/AboutUsActivity;->access$000(Lcom/smartisanos/home/settings/AboutUsActivity;)Lcom/smartisanos/home/widget/sys/CopyActionMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/home/widget/sys/CopyActionMenu;->dismiss()V

    .line 88
    return-void
.end method
