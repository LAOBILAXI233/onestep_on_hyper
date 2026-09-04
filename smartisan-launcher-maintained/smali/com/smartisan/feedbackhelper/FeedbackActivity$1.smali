.class Lcom/smartisan/feedbackhelper/FeedbackActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "FeedbackActivity.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisan/feedbackhelper/FeedbackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisan/feedbackhelper/FeedbackActivity;


.method constructor <init>(Lcom/smartisan/feedbackhelper/FeedbackActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisan/feedbackhelper/FeedbackActivity;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/smartisan/feedbackhelper/FeedbackActivity$1;->this$0:Lcom/smartisan/feedbackhelper/FeedbackActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 100
    const/4 v0, 0x0

    .line 101
    .local v0, "sendStatus":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 102
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 104
    :cond_0
    iget-object v1, p0, Lcom/smartisan/feedbackhelper/FeedbackActivity$1;->this$0:Lcom/smartisan/feedbackhelper/FeedbackActivity;

    invoke-static {v1}, Lcom/smartisan/feedbackhelper/FeedbackActivity;->access$000(Lcom/smartisan/feedbackhelper/FeedbackActivity;)Lcom/smartisan/feedbackhelper/utils/AsyncDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisan/feedbackhelper/utils/AsyncDialog;->clearPendingProgressDialog()V

    .line 105
    const-string v1, "smartisan.intent.action.BUGREPORT.REPORT_UPLOAD_SUCCESS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 106
    iget-object v1, p0, Lcom/smartisan/feedbackhelper/FeedbackActivity$1;->this$0:Lcom/smartisan/feedbackhelper/FeedbackActivity;

    invoke-static {v1}, Lcom/smartisan/feedbackhelper/FeedbackActivity;->access$100(Lcom/smartisan/feedbackhelper/FeedbackActivity;)Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;->cleanFormData()V

    .line 107
    iget-object v1, p0, Lcom/smartisan/feedbackhelper/FeedbackActivity$1;->this$0:Lcom/smartisan/feedbackhelper/FeedbackActivity;

    invoke-virtual {v1}, Lcom/smartisan/feedbackhelper/FeedbackActivity;->finish()V

    .line 109
    :cond_1
    return-void
.end method
