.class Lcom/smartisan/feedbackhelper/upload/ReportSender$5;
.super Ljava/lang/Object;
.source "ReportSender.java"

.implements Lcom/android/volley/Response$ErrorListener;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisan/feedbackhelper/upload/ReportSender;->putFile(Lcom/android/volley/RequestQueue;Ljava/lang/String;Lcom/smartisan/feedbackhelper/utils/ComplainReport;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisan/feedbackhelper/upload/ReportSender;

.field final synthetic val$report:Lcom/smartisan/feedbackhelper/utils/ComplainReport;


.method constructor <init>(Lcom/smartisan/feedbackhelper/upload/ReportSender;Lcom/smartisan/feedbackhelper/utils/ComplainReport;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisan/feedbackhelper/upload/ReportSender;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/smartisan/feedbackhelper/upload/ReportSender$5;->this$0:Lcom/smartisan/feedbackhelper/upload/ReportSender;

    iput-object p2, p0, Lcom/smartisan/feedbackhelper/upload/ReportSender$5;->val$report:Lcom/smartisan/feedbackhelper/utils/ComplainReport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 4
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 165
    if-eqz p1, :cond_1

    .line 166
    iget-object v0, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/upload/ReportSender$5;->this$0:Lcom/smartisan/feedbackhelper/upload/ReportSender;

    iget-object v0, v0, Lcom/smartisan/feedbackhelper/upload/ReportSender;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    iget-object v3, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    iget-object v3, v3, Lcom/android/volley/NetworkResponse;->data:[B

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/upload/ReportSender$5;->this$0:Lcom/smartisan/feedbackhelper/upload/ReportSender;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/smartisan/feedbackhelper/upload/ReportSender$5;->val$report:Lcom/smartisan/feedbackhelper/utils/ComplainReport;

    invoke-static {v0, v1, v2}, Lcom/smartisan/feedbackhelper/upload/ReportSender;->access$300(Lcom/smartisan/feedbackhelper/upload/ReportSender;ILcom/smartisan/feedbackhelper/utils/ComplainReport;)V

    .line 171
    :cond_1
    return-void
.end method
