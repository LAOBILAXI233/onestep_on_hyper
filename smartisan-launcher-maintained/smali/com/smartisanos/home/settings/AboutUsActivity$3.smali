.class Lcom/smartisanos/home/settings/AboutUsActivity$3;
.super Ljava/lang/Object;
.source "AboutUsActivity.java"

.implements Landroid/view/View$OnClickListener;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/home/settings/AboutUsActivity;->createActionDialog(Z)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/home/settings/AboutUsActivity;

.field final synthetic val$copyText:Ljava/lang/String;


.method constructor <init>(Lcom/smartisanos/home/settings/AboutUsActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/home/settings/AboutUsActivity;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/smartisanos/home/settings/AboutUsActivity$3;->this$0:Lcom/smartisanos/home/settings/AboutUsActivity;

    iput-object p2, p0, Lcom/smartisanos/home/settings/AboutUsActivity$3;->val$copyText:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 107
    iget-object v3, p0, Lcom/smartisanos/home/settings/AboutUsActivity$3;->this$0:Lcom/smartisanos/home/settings/AboutUsActivity;

    const-string v4, "clipboard"

    invoke-virtual {v3, v4}, Lcom/smartisanos/home/settings/AboutUsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 108
    .local v0, "cbManager":Landroid/content/ClipboardManager;
    const-string v3, "Notes"

    iget-object v4, p0, Lcom/smartisanos/home/settings/AboutUsActivity$3;->val$copyText:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    .line 109
    .local v1, "clip":Landroid/content/ClipData;
    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 111
    iget-object v3, p0, Lcom/smartisanos/home/settings/AboutUsActivity$3;->this$0:Lcom/smartisanos/home/settings/AboutUsActivity;

    invoke-virtual {v3}, Lcom/smartisanos/home/settings/AboutUsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08005f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 112
    .local v2, "toastTxt":Ljava/lang/String;
    iget-object v3, p0, Lcom/smartisanos/home/settings/AboutUsActivity$3;->this$0:Lcom/smartisanos/home/settings/AboutUsActivity;

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 113
    return-void
.end method
