.class Lcom/smartisan/feedbackhelper/upload/ReportSender$2;
.super Ljava/lang/Object;
.source "ReportSender.java"

.implements Lcom/android/volley/Response$ErrorListener;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisan/feedbackhelper/upload/ReportSender;->postData(Lcom/android/volley/RequestQueue;Ljava/lang/String;Lcom/smartisan/feedbackhelper/utils/ComplainReport;)V
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
    .line 113
    iput-object p1, p0, Lcom/smartisan/feedbackhelper/upload/ReportSender$2;->this$0:Lcom/smartisan/feedbackhelper/upload/ReportSender;

    iput-object p2, p0, Lcom/smartisan/feedbackhelper/upload/ReportSender$2;->val$report:Lcom/smartisan/feedbackhelper/utils/ComplainReport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 3
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/upload/ReportSender$2;->this$0:Lcom/smartisan/feedbackhelper/upload/ReportSender;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/smartisan/feedbackhelper/upload/ReportSender$2;->val$report:Lcom/smartisan/feedbackhelper/utils/ComplainReport;

    invoke-static {v0, v1, v2}, Lcom/smartisan/feedbackhelper/upload/ReportSender;->access$300(Lcom/smartisan/feedbackhelper/upload/ReportSender;ILcom/smartisan/feedbackhelper/utils/ComplainReport;)V

    .line 117
    return-void
.end method
