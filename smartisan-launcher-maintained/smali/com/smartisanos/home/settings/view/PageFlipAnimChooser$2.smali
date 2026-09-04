.class Lcom/smartisanos/home/settings/view/PageFlipAnimChooser$2;
.super Ljava/lang/Object;
.source "PageFlipAnimChooser.java"

.implements Landroid/widget/AdapterView$OnItemClickListener;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/home/settings/view/PageFlipAnimChooser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/home/settings/view/PageFlipAnimChooser;


.method constructor <init>(Lcom/smartisanos/home/settings/view/PageFlipAnimChooser;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/home/settings/view/PageFlipAnimChooser;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/smartisanos/home/settings/view/PageFlipAnimChooser$2;->this$0:Lcom/smartisanos/home/settings/view/PageFlipAnimChooser;

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
    .line 73
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const-wide/16 v2, -0x1

    cmp-long v1, p4, v2

    if-nez v1, :cond_0

    .line 80
    :goto_0
    return-void

    .line 77
    :cond_0
    add-int/lit8 v1, p3, -0x1

    invoke-static {v1}, Lcom/smartisanos/home/settings/view/PageFlipAnimChooser;->getValueFromPosition(I)I

    move-result v0

    .line 78
    .local v0, "animType":I
    const-string v1, "launcher_page_animation"

    iget-object v2, p0, Lcom/smartisanos/home/settings/view/PageFlipAnimChooser$2;->this$0:Lcom/smartisanos/home/settings/view/PageFlipAnimChooser;

    invoke-static {v1, v0, v2}, Lcom/smartisanos/launcher/data/LauncherSettings;->updateAndNotice(Ljava/lang/String;ILandroid/content/Context;)V

    .line 79
    iget-object v1, p0, Lcom/smartisanos/home/settings/view/PageFlipAnimChooser$2;->this$0:Lcom/smartisanos/home/settings/view/PageFlipAnimChooser;

    invoke-virtual {v1}, Lcom/smartisanos/home/settings/view/PageFlipAnimChooser;->finish()V

    goto :goto_0
.end method
