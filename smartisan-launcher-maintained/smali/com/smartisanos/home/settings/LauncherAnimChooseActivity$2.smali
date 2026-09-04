.class Lcom/smartisanos/home/settings/LauncherAnimChooseActivity$2;
.super Ljava/lang/Object;
.source "LauncherAnimChooseActivity.java"

.implements Landroid/widget/AdapterView$OnItemClickListener;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/home/settings/LauncherAnimChooseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/home/settings/LauncherAnimChooseActivity;


.method constructor <init>(Lcom/smartisanos/home/settings/LauncherAnimChooseActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/home/settings/LauncherAnimChooseActivity;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/smartisanos/home/settings/LauncherAnimChooseActivity$2;->this$0:Lcom/smartisanos/home/settings/LauncherAnimChooseActivity;

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
    .line 78
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    if-ltz p3, :cond_0

    iget-object v1, p0, Lcom/smartisanos/home/settings/LauncherAnimChooseActivity$2;->this$0:Lcom/smartisanos/home/settings/LauncherAnimChooseActivity;

    invoke-static {v1}, Lcom/smartisanos/home/settings/LauncherAnimChooseActivity;->access$000(Lcom/smartisanos/home/settings/LauncherAnimChooseActivity;)Lcom/smartisanos/home/settings/LauncherAnimChooseActivity$ThemeChooserAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/home/settings/LauncherAnimChooseActivity$ThemeChooserAdapter;->getCount()I

    move-result v1

    if-ge p3, v1, :cond_0

    const/16 v2, 0x8

    if-ne v1, v2, :cond_real

    const/4 v2, 0x7

    if-eq p3, v2, :cond_0

    :cond_real
    .line 79
    invoke-static {p3}, Lcom/smartisanos/launcher/data/Utils;->getValueFromPosition(I)I

    move-result v0

    .line 80
    .local v0, "currentAnimValue":I
    const-string v1, "launcher_page_animation"

    iget-object v2, p0, Lcom/smartisanos/home/settings/LauncherAnimChooseActivity$2;->this$0:Lcom/smartisanos/home/settings/LauncherAnimChooseActivity;

    invoke-static {v1, v0, v2}, Lcom/smartisanos/launcher/data/LauncherSettings;->updateAndNotice(Ljava/lang/String;ILandroid/content/Context;)V

    .line 81
    iget-object v1, p0, Lcom/smartisanos/home/settings/LauncherAnimChooseActivity$2;->this$0:Lcom/smartisanos/home/settings/LauncherAnimChooseActivity;

    invoke-static {v1, p3}, Lcom/smartisanos/home/settings/LauncherAnimChooseActivity;->access$102(Lcom/smartisanos/home/settings/LauncherAnimChooseActivity;I)I

    .line 82
    iget-object v1, p0, Lcom/smartisanos/home/settings/LauncherAnimChooseActivity$2;->this$0:Lcom/smartisanos/home/settings/LauncherAnimChooseActivity;

    invoke-static {v1}, Lcom/smartisanos/home/settings/LauncherAnimChooseActivity;->access$000(Lcom/smartisanos/home/settings/LauncherAnimChooseActivity;)Lcom/smartisanos/home/settings/LauncherAnimChooseActivity$ThemeChooserAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/home/settings/LauncherAnimChooseActivity$ThemeChooserAdapter;->notifyDataSetChanged()V

    .line 88
    .end local v0    # "currentAnimValue":I
    :cond_0
    return-void
.end method
