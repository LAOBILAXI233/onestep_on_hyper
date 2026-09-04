.class Lcom/smartisan/feedbackhelper/FeedbackActivity$2;
.super Ljava/lang/Object;
.source "FeedbackActivity.java"

.implements Ljava/lang/Runnable;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisan/feedbackhelper/FeedbackActivity;->sendReport()V
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
    .line 310
    iput-object p1, p0, Lcom/smartisan/feedbackhelper/FeedbackActivity$2;->this$0:Lcom/smartisan/feedbackhelper/FeedbackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public run()V
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/FeedbackActivity$2;->this$0:Lcom/smartisan/feedbackhelper/FeedbackActivity;

    invoke-virtual {v0}, Lcom/smartisan/feedbackhelper/FeedbackActivity;->uploadManualReport()V

    .line 314
    return-void
.end method
