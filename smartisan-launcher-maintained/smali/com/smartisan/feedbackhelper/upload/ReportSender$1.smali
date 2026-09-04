.class Lcom/smartisan/feedbackhelper/upload/ReportSender$1;
.super Ljava/lang/Object;
.source "ReportSender.java"

.implements Lcom/android/volley/Response$Listener;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisan/feedbackhelper/upload/ReportSender;->postData(Lcom/android/volley/RequestQueue;Ljava/lang/String;Lcom/smartisan/feedbackhelper/utils/ComplainReport;)V
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
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


.field final synthetic this$0:Lcom/smartisan/feedbackhelper/upload/ReportSender;

.field final synthetic val$report:Lcom/smartisan/feedbackhelper/utils/ComplainReport;


.method constructor <init>(Lcom/smartisan/feedbackhelper/upload/ReportSender;Lcom/smartisan/feedbackhelper/utils/ComplainReport;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisan/feedbackhelper/upload/ReportSender;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/smartisan/feedbackhelper/upload/ReportSender$1;->this$0:Lcom/smartisan/feedbackhelper/upload/ReportSender;

    iput-object p2, p0, Lcom/smartisan/feedbackhelper/upload/ReportSender$1;->val$report:Lcom/smartisan/feedbackhelper/utils/ComplainReport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 101
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/smartisan/feedbackhelper/upload/ReportSender$1;->onResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "obj"    # Lorg/json/JSONObject;

    .prologue
    .line 105
    :try_start_0
    iget-object v3, p0, Lcom/smartisan/feedbackhelper/upload/ReportSender$1;->this$0:Lcom/smartisan/feedbackhelper/upload/ReportSender;

    iget-object v3, v3, Lcom/smartisan/feedbackhelper/upload/ReportSender;->TAG:Ljava/lang/String;

    const-string v4, "Struct Data response"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v3, p0, Lcom/smartisan/feedbackhelper/upload/ReportSender$1;->this$0:Lcom/smartisan/feedbackhelper/upload/ReportSender;

    iget-object v4, p0, Lcom/smartisan/feedbackhelper/upload/ReportSender$1;->val$report:Lcom/smartisan/feedbackhelper/utils/ComplainReport;

    invoke-static {v3, v4, p1}, Lcom/smartisan/feedbackhelper/upload/ReportSender;->access$000(Lcom/smartisan/feedbackhelper/upload/ReportSender;Lcom/smartisan/feedbackhelper/utils/ComplainReport;Lorg/json/JSONObject;)I

    move-result v2

    .line 107
    .local v2, "tid":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/smartisan/feedbackhelper/upload/ReportSender$1;->this$0:Lcom/smartisan/feedbackhelper/upload/ReportSender;

    invoke-static {v4}, Lcom/smartisan/feedbackhelper/upload/ReportSender;->access$100(Lcom/smartisan/feedbackhelper/upload/ReportSender;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 108
    .local v1, "fileUploadUrl":Ljava/lang/String;
    iget-object v3, p0, Lcom/smartisan/feedbackhelper/upload/ReportSender$1;->this$0:Lcom/smartisan/feedbackhelper/upload/ReportSender;

    sget-object v4, Lcom/smartisan/feedbackhelper/upload/ReportSender;->fileQueue:Lcom/android/volley/RequestQueue;

    iget-object v5, p0, Lcom/smartisan/feedbackhelper/upload/ReportSender$1;->val$report:Lcom/smartisan/feedbackhelper/utils/ComplainReport;

    invoke-static {v3, v4, v1, v5}, Lcom/smartisan/feedbackhelper/upload/ReportSender;->access$200(Lcom/smartisan/feedbackhelper/upload/ReportSender;Lcom/android/volley/RequestQueue;Ljava/lang/String;Lcom/smartisan/feedbackhelper/utils/ComplainReport;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .end local v1    # "fileUploadUrl":Ljava/lang/String;
    .end local v2    # "tid":I
    :goto_0
    return-void

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Lorg/json/JSONException;
    iget-object v3, p0, Lcom/smartisan/feedbackhelper/upload/ReportSender$1;->this$0:Lcom/smartisan/feedbackhelper/upload/ReportSender;

    const/4 v4, -0x1

    iget-object v5, p0, Lcom/smartisan/feedbackhelper/upload/ReportSender$1;->val$report:Lcom/smartisan/feedbackhelper/utils/ComplainReport;

    invoke-static {v3, v4, v5}, Lcom/smartisan/feedbackhelper/upload/ReportSender;->access$300(Lcom/smartisan/feedbackhelper/upload/ReportSender;ILcom/smartisan/feedbackhelper/utils/ComplainReport;)V

    goto :goto_0
.end method
