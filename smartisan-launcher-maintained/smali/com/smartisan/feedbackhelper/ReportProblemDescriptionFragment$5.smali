.class Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment$5;
.super Ljava/lang/Object;
.source "ReportProblemDescriptionFragment.java"

.implements Landroid/view/View$OnClickListener;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;


.method constructor <init>(Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;

    .prologue
    .line 247
    iput-object p1, p0, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment$5;->this$0:Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "paramView"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 250
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment$5;->this$0:Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;

    invoke-static {v0}, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;->access$200(Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment$5;->this$0:Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;

    invoke-static {v0}, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;->access$100(Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;)Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/smartisan/feedbackhelper/FeedbackActivity;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment$5;->this$0:Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;

    iget-object v0, v0, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 255
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment$5;->this$0:Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;

    iget-object v0, v0, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;->mEmailText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 256
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment$5;->this$0:Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;

    invoke-static {v0}, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;->access$100(Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/smartisan/feedbackhelper/FeedbackActivity;

    invoke-virtual {v0}, Lcom/smartisan/feedbackhelper/FeedbackActivity;->sendReport()V

    goto :goto_0
.end method
