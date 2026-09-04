.class Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter$2;
.super Ljava/lang/Object;
.source "ScreenShotsAdapter.java"

.implements Landroid/view/View$OnClickListener;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter;


.method constructor <init>(Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter$2;->this$0:Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 66
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 67
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/smartisan/feedbackhelper/FeedbackActivity;->mSelectIndex:I

    .line 68
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter$2;->this$0:Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter;

    invoke-static {v0}, Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter;->access$100(Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter;)Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x3e8

    const-string v2, "image/*"

    invoke-static {v0, v1, v2, v3}, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;->selectPicture(Landroid/content/Context;ILjava/lang/String;Z)V

    .line 69
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter$2;->this$0:Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter;

    iget-object v0, v0, Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter$2$1;

    invoke-direct {v1, p0, p1}, Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter$2$1;-><init>(Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter$2;Landroid/view/View;)V

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 75
    return-void
.end method
