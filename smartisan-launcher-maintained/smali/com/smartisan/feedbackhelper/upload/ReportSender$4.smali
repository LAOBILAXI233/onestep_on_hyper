.class Lcom/smartisan/feedbackhelper/upload/ReportSender$4;
.super Ljava/lang/Object;
.source "ReportSender.java"

.implements Lcom/android/volley/Response$Listener;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisan/feedbackhelper/upload/ReportSender;->putFile(Lcom/android/volley/RequestQueue;Ljava/lang/String;Lcom/smartisan/feedbackhelper/utils/ComplainReport;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


.field final synthetic this$0:Lcom/smartisan/feedbackhelper/upload/ReportSender;

.field final synthetic val$report:Lcom/smartisan/feedbackhelper/utils/ComplainReport;


.method constructor <init>(Lcom/smartisan/feedbackhelper/upload/ReportSender;Lcom/smartisan/feedbackhelper/utils/ComplainReport;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisan/feedbackhelper/upload/ReportSender;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/smartisan/feedbackhelper/upload/ReportSender$4;->this$0:Lcom/smartisan/feedbackhelper/upload/ReportSender;

    iput-object p2, p0, Lcom/smartisan/feedbackhelper/upload/ReportSender$4;->val$report:Lcom/smartisan/feedbackhelper/utils/ComplainReport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 154
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/smartisan/feedbackhelper/upload/ReportSender$4;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 3
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/upload/ReportSender$4;->this$0:Lcom/smartisan/feedbackhelper/upload/ReportSender;

    iget-object v0, v0, Lcom/smartisan/feedbackhelper/upload/ReportSender;->TAG:Ljava/lang/String;

    const-string v1, "File response"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/upload/ReportSender$4;->this$0:Lcom/smartisan/feedbackhelper/upload/ReportSender;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/smartisan/feedbackhelper/upload/ReportSender$4;->val$report:Lcom/smartisan/feedbackhelper/utils/ComplainReport;

    invoke-static {v0, v1, v2}, Lcom/smartisan/feedbackhelper/upload/ReportSender;->access$300(Lcom/smartisan/feedbackhelper/upload/ReportSender;ILcom/smartisan/feedbackhelper/utils/ComplainReport;)V

    .line 159
    return-void
.end method
