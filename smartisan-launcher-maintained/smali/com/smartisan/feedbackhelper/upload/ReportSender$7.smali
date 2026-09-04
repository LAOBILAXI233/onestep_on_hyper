.class Lcom/smartisan/feedbackhelper/upload/ReportSender$7;
.super Landroid/os/Handler;
.source "ReportSender.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisan/feedbackhelper/upload/ReportSender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field private count:I

.field final synthetic this$0:Lcom/smartisan/feedbackhelper/upload/ReportSender;


.method constructor <init>(Lcom/smartisan/feedbackhelper/upload/ReportSender;)V
    .locals 1
    .param p1, "this$0"    # Lcom/smartisan/feedbackhelper/upload/ReportSender;

    .prologue
    .line 218
    iput-object p1, p0, Lcom/smartisan/feedbackhelper/upload/ReportSender$7;->this$0:Lcom/smartisan/feedbackhelper/upload/ReportSender;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 219
    const/4 v0, 0x1

    iput v0, p0, Lcom/smartisan/feedbackhelper/upload/ReportSender$7;->count:I

    return-void
.end method


.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 221
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 236
    :goto_0
    :pswitch_0
    return-void

    .line 223
    :pswitch_1
    iget v0, p0, Lcom/smartisan/feedbackhelper/upload/ReportSender$7;->count:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 224
    iget-object v1, p0, Lcom/smartisan/feedbackhelper/upload/ReportSender$7;->this$0:Lcom/smartisan/feedbackhelper/upload/ReportSender;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;

    invoke-virtual {v1, v0}, Lcom/smartisan/feedbackhelper/upload/ReportSender;->sendReport(Lcom/smartisan/feedbackhelper/utils/ComplainReport;)V

    .line 229
    :goto_1
    iget v0, p0, Lcom/smartisan/feedbackhelper/upload/ReportSender$7;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/smartisan/feedbackhelper/upload/ReportSender$7;->count:I

    goto :goto_0

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/upload/ReportSender$7;->this$0:Lcom/smartisan/feedbackhelper/upload/ReportSender;

    invoke-static {v0}, Lcom/smartisan/feedbackhelper/upload/ReportSender;->access$600(Lcom/smartisan/feedbackhelper/upload/ReportSender;)Lcom/smartisan/feedbackhelper/upload/UploadWorker;

    move-result-object v0

    sget-object v1, Lcom/smartisan/feedbackhelper/upload/UploadWorker$Result;->FAILED:Lcom/smartisan/feedbackhelper/upload/UploadWorker$Result;

    invoke-virtual {v0, v1}, Lcom/smartisan/feedbackhelper/upload/UploadWorker;->onUploadFinished(Lcom/smartisan/feedbackhelper/upload/UploadWorker$Result;)V

    .line 227
    const/4 v0, 0x0

    iput v0, p0, Lcom/smartisan/feedbackhelper/upload/ReportSender$7;->count:I

    goto :goto_1

    .line 232
    :pswitch_2
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/upload/ReportSender$7;->this$0:Lcom/smartisan/feedbackhelper/upload/ReportSender;

    invoke-static {v0}, Lcom/smartisan/feedbackhelper/upload/ReportSender;->access$600(Lcom/smartisan/feedbackhelper/upload/ReportSender;)Lcom/smartisan/feedbackhelper/upload/UploadWorker;

    move-result-object v0

    sget-object v1, Lcom/smartisan/feedbackhelper/upload/UploadWorker$Result;->SUCCESSFUL:Lcom/smartisan/feedbackhelper/upload/UploadWorker$Result;

    invoke-virtual {v0, v1}, Lcom/smartisan/feedbackhelper/upload/UploadWorker;->onUploadFinished(Lcom/smartisan/feedbackhelper/upload/UploadWorker$Result;)V

    .line 233
    const/4 v0, 0x1

    iput v0, p0, Lcom/smartisan/feedbackhelper/upload/ReportSender$7;->count:I

    goto :goto_0

    .line 221
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
