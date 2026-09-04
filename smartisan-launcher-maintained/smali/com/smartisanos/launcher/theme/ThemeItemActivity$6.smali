.class Lcom/smartisanos/launcher/theme/ThemeItemActivity$6;
.super Ljava/lang/Object;
.source "ThemeItemActivity.java"

.implements Landroid/view/View$OnClickListener;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/theme/ThemeItemActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;


.method constructor <init>(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    .prologue
    .line 514
    iput-object p1, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$6;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 517
    invoke-static {}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    const-string v1, "backButtonOnClickListener begin !"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 518
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$6;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    invoke-static {v0}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->access$1200(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 519
    invoke-static {}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    const-string v1, "mIsBackClicked true"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 526
    :goto_0
    return-void

    .line 522
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$6;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->access$1302(Lcom/smartisanos/launcher/theme/ThemeItemActivity;Z)Z

    .line 523
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$6;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    invoke-static {v0}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->access$200(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)Lcom/smartisanos/launcher/theme/ThemeItemActivity$BottomTitle;

    move-result-object v0

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$BottomTitle;->applyButton:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 524
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$6;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    invoke-static {v0}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->access$200(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)Lcom/smartisanos/launcher/theme/ThemeItemActivity$BottomTitle;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/theme/ThemeItemActivity$BottomTitle;->updateBackButtonEnableState(Z)V

    .line 525
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$6;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    invoke-static {v0}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->access$1400(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)V

    goto :goto_0
.end method
