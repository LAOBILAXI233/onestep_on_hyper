.class Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment$4;
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
    .line 236
    iput-object p1, p0, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment$4;->this$0:Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "paramView"    # Landroid/view/View;

    .prologue
    .line 239
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment$4;->this$0:Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;

    invoke-virtual {v0}, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;->checkDescription()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment$4;->this$0:Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;

    invoke-virtual {v0}, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;->showDialog()V

    .line 244
    :goto_0
    return-void

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment$4;->this$0:Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;

    invoke-static {v0}, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;->access$100(Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/smartisan/feedbackhelper/FeedbackActivity;

    invoke-virtual {v0}, Lcom/smartisan/feedbackhelper/FeedbackActivity;->finish()V

    goto :goto_0
.end method
